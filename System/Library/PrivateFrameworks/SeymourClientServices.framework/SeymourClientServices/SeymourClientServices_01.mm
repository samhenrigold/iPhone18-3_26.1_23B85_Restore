uint64_t dispatch thunk of SummaryShelfLockupDescriptorsCaching.query()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265B566A8;

  return v7(a1, a2);
}

uint64_t sub_265B566AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035958, &qword_265B78FD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_265B5A09C(a3, v25 - v10);
  v12 = sub_265B77230();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_265B408F0(v11);
  }

  else
  {
    sub_265B77220();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_265B771C0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_265B77050() + 32;
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

      sub_265B408F0(a3);

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

  sub_265B408F0(a3);
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

uint64_t SummaryShelfLockupDescriptorsCache.init(catalogClient:contentAvailabilityClient:eventHub:networkEvaluator:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035958, &qword_265B78FD0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19 - v13;
  swift_defaultActor_initialize();
  type metadata accessor for SummaryShelfLockupDescriptorsCache.State(0);
  swift_storeEnumTagMultiPayload();
  sub_265B41D44(a1, v6 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_catalogClient);
  sub_265B41D44(a2, v6 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_contentAvailabilityClient);
  v15 = (v6 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_eventHub);
  *v15 = a3;
  v15[1] = a4;
  sub_265B41D44(a5, v6 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_networkEvaluator);
  sub_265B76CC0();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  *(v6 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_subscriptionToken) = sub_265B76CB0();
  v16 = sub_265B77230();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v6;

  sub_265B566AC(0, 0, v14, &unk_265B78FE8, v17);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t sub_265B56B98()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_265B56C54, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_265B56C54()
{
  sub_265B5734C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265B56CC0(uint64_t a1, uint64_t a2)
{
  v2[8] = a2;
  v2[9] = type metadata accessor for SummaryShelfLockupDescriptorsCache.State(0);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265B56D54, 0, 0);
}

uint64_t sub_265B56D54()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_265B56E18, Strong, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_265B56E18()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_state;
  swift_beginAccess();
  sub_265B43BBC(v2 + v3, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v8 = v0[10];

      sub_265B422F4(v8);
      goto LABEL_9;
    }

    v5 = v0[10];

    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AA8, &qword_265B78FF8) + 48);
    v7 = sub_265B76390();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_265B422F4(v0[10]);
LABEL_6:
    sub_265B57540();
  }

LABEL_9:

  v9 = v0[1];

  return v9();
}

uint64_t sub_265B56F68(uint64_t a1, uint64_t a2)
{
  v2[8] = a2;
  v2[9] = type metadata accessor for SummaryShelfLockupDescriptorsCache.State(0);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265B56FFC, 0, 0);
}

uint64_t sub_265B56FFC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_265B570C0, Strong, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_265B570C0()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_state;
  swift_beginAccess();
  sub_265B43BBC(v2 + v3, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (EnumCaseMultiPayload)
  {
LABEL_5:
    sub_265B422F4(v0[10]);
    goto LABEL_6;
  }

  v5 = v0[10];

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AA8, &qword_265B78FF8) + 48);
  v7 = sub_265B76390();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
LABEL_6:
  sub_265B57540();
LABEL_7:

  v8 = v0[1];

  return v8();
}

uint64_t sub_265B571F4(uint64_t a1, uint64_t a2)
{
  v2[8] = a2;
  v2[9] = type metadata accessor for SummaryShelfLockupDescriptorsCache.State(0);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265B57288, 0, 0);
}

uint64_t sub_265B57288()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_265B5A10C, Strong, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_265B5734C()
{
  v1 = v0;
  v2 = type metadata accessor for SummaryShelfLockupDescriptorsCache.State(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_networkEvaluator), *(v0 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_networkEvaluator + 24));
  sub_265B76CA0();
  v5 = sub_265B76530();
  v7 = v6;
  if (v5 == sub_265B76530() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_265B77580();

    if (v10)
    {
      return result;
    }

    v12 = OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_state;
    swift_beginAccess();
    sub_265B43BBC(v1 + v12, v4);
    result = swift_getEnumCaseMultiPayload();
    if (result > 1)
    {
      if (result != 2)
      {
        return result;
      }

      sub_265B422F4(v4);
      return sub_265B57540();
    }

    if (!result)
    {

      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AA8, &qword_265B78FF8) + 48);
      v14 = sub_265B76390();
      (*(*(v14 - 8) + 8))(&v4[v13], v14);
      return sub_265B57540();
    }

    return sub_265B422F4(v4);
  }
}

uint64_t sub_265B57540()
{
  v26 = sub_265B76390();
  v1 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SummaryShelfLockupDescriptorsCache.State(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = (&v25 - v8);
  v10 = sub_265B76F60();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265B76E50();
  sub_265B76F40();
  (*(v11 + 8))(v13, v10);
  v14 = OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_state;
  swift_beginAccess();
  sub_265B43BBC(v0 + v14, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v16 = *v9;
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AA8, &qword_265B78FF8);
      v18 = *(v17 + 48);
      sub_265B76380();
      v19 = *(v17 + 48);
      *v7 = v16;
      v20 = v26;
      (*(v1 + 16))(&v7[v19], v3, v26);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_265B43E60(v7, v0 + v14);
      swift_endAccess();
      sub_265B57900(v3);
      v21 = *(v1 + 8);
      v21(v3, v20);
      return (v21)(v9 + v18, v20);
    }
  }

  else
  {
    sub_265B422F4(v9);
  }

  sub_265B76380();
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AA8, &qword_265B78FF8) + 48);
  *v7 = MEMORY[0x277D84F90];
  v24 = v26;
  (*(v1 + 16))(&v7[v23], v3, v26);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_265B43E60(v7, v0 + v14);
  swift_endAccess();
  sub_265B57900(v3);
  return (*(v1 + 8))(v3, v24);
}

uint64_t sub_265B57900(uint64_t a1)
{
  v2 = v1;
  v4 = sub_265B76390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035958, &qword_265B78FD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  v10 = sub_265B76F60();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265B76E50();
  sub_265B76F40();
  (*(v11 + 8))(v13, v10);
  v14 = sub_265B77230();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  (*(v5 + 16))(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v15 = sub_265B58DFC();
  v16 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = v2;
  *(v17 + 3) = v15;
  *(v17 + 4) = v2;
  (*(v5 + 32))(&v17[v16], &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  swift_retain_n();
  sub_265B566AC(0, 0, v9, &unk_265B790F8, v17);
}

uint64_t sub_265B57BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A10, &qword_265B79100);
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v8 = sub_265B76F60();
  v5[23] = v8;
  v5[24] = *(v8 - 8);
  v5[25] = swift_task_alloc();
  v5[26] = type metadata accessor for SummaryShelfLockupDescriptorsCache.State(0);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v9 = sub_265B76390();
  v5[30] = v9;
  v5[31] = *(v9 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AC8, &qword_265B79108);
  v5[34] = v10;
  v5[35] = *(v10 - 8);
  v5[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265B57E14, a4, 0);
}

uint64_t sub_265B57E14()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 136) + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_catalogClient), *(*(v0 + 136) + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_catalogClient + 24));
  sub_265B76C00();

  return MEMORY[0x2822009F8](sub_265B57EB0, 0, 0);
}

uint64_t sub_265B57EB0()
{
  v1 = v0[36];
  v2 = swift_task_alloc();
  v0[37] = v2;
  *(v2 + 16) = "SeymourClientServices/SummaryShelfLockupDescriptorsCache.swift";
  *(v2 + 24) = 62;
  *(v2 + 32) = 2;
  *(v2 + 40) = 125;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[38] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AB0, &qword_265B79000);
  *v3 = v0;
  v3[1] = sub_265B42FC8;

  return MEMORY[0x2822008A0](v0 + 14, 0, 0, 0xD000000000000013, 0x8000000265B7A290, sub_265B59E2C, v2, v4);
}

uint64_t sub_265B57FD4()
{
  v1 = v0[17];
  (*(v0[35] + 8))(v0[36], v0[34]);

  return MEMORY[0x2822009F8](sub_265B58050, v1, 0);
}

uint64_t sub_265B58050()
{
  v1 = v0[28];
  v2 = v0[17];
  v3 = OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_state;
  swift_beginAccess();
  sub_265B43BBC(v2 + v3, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = v0[39];
  if (EnumCaseMultiPayload)
  {
    v6 = v0[28];

    sub_265B422F4(v6);
  }

  else
  {
    v7 = v0[31];
    v8 = v0[32];
    v9 = v0[30];
    v10 = v0[28];
    v11 = *v10;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AA8, &qword_265B78FF8);
    (*(v7 + 32))(v8, &v10[*(v12 + 48)], v9);
    v13 = v5;
    v14 = sub_265B76360();
    v15 = v0[39];
    if (v14)
    {
      v16 = v0[27];
      v17 = v0[24];
      v18 = v0[25];
      v19 = v0[23];
      sub_265B76E50();
      sub_265B76F40();
      (*(v17 + 8))(v18, v19);
      *v16 = v15;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      v20 = v15;
      sub_265B43E60(v16, v2 + v3);
      swift_endAccess();
      v21 = *(v11 + 16);
      if (v21)
      {
        v22 = v0[20];
        v25 = *(v22 + 16);
        v23 = v22 + 16;
        v24 = v25;
        v26 = v11 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
        v27 = *(v23 + 56);
        do
        {
          v28 = v0[39];
          v29 = v0[21];
          v30 = v0[19];
          v24(v29, v26, v30);
          v0[15] = v28;
          v31 = v28;
          sub_265B771D0();
          (*(v23 - 8))(v29, v30);
          v26 += v27;
          --v21;
        }

        while (v21);
      }

      v35 = v0[39];
      v37 = v0[31];
      v36 = v0[32];
      v38 = v0[30];
      swift_getObjectType();
      sub_265B43ED8();
      sub_265B76C70();

      (*(v37 + 8))(v36, v38);
    }

    else
    {
      v32 = v0[31];
      v33 = v0[32];
      v34 = v0[30];

      (*(v32 + 8))(v33, v34);
    }
  }

  v39 = v0[1];

  return v39();
}

uint64_t SummaryShelfLockupDescriptorsCache.deinit()
{
  sub_265B422F4(v0 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_state);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_catalogClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_contentAvailabilityClient));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_networkEvaluator));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SummaryShelfLockupDescriptorsCache.fetch()()
{
  v1[7] = v0;
  v2 = sub_265B76390();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = type metadata accessor for SummaryShelfLockupDescriptorsCache.State(0);
  v1[12] = swift_task_alloc();
  v3 = sub_265B76F60();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265B585C0, v0, 0);
}

uint64_t sub_265B585C0(uint64_t a1)
{
  v3 = v1[14];
  v2 = v1[15];
  v5 = v1[12];
  v4 = v1[13];
  v6 = v1[7];
  sub_265B76E50();
  sub_265B76F40();
  (*(v3 + 8))(v2, v4);
  v7 = OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_state;
  swift_beginAccess();
  sub_265B43BBC(v6 + v7, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v29 = v1[7];
      v30 = sub_265B58DFC();
      v31 = swift_task_alloc();
      v1[16] = v31;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AB0, &qword_265B79000);
      *v31 = v1;
      v31[1] = sub_265B58938;
      v24 = v1[7];
      v20 = sub_265B592E0;
      v21 = v1 + 6;
      v22 = v29;
      v23 = v30;
      goto LABEL_12;
    }

    swift_willThrow();

    v25 = v1[1];

    return v25();
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v9 = v1[12];
      v11 = v1[9];
      v10 = v1[10];
      v12 = v1[7];
      v13 = v1[8];
      v14 = *v9;
      v1[18] = *v9;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AA8, &qword_265B78FF8);
      (*(v11 + 32))(v10, &v9[*(v15 + 48)], v13);
      v16 = sub_265B58DFC();
      v17 = swift_task_alloc();
      v1[19] = v17;
      v17[2] = v12;
      v17[3] = v14;
      v17[4] = v10;
      v18 = swift_task_alloc();
      v1[20] = v18;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AB0, &qword_265B79000);
      *v18 = v1;
      v18[1] = sub_265B58AF0;
      v20 = sub_265B592D4;
      v21 = v1 + 5;
      v22 = v12;
      v23 = v16;
      v24 = v17;
LABEL_12:

      return MEMORY[0x2822008A0](v21, v22, v23, 0x29286863746566, 0xE700000000000000, v20, v24, v19);
    }

    v27 = *v1[12];

    v28 = v1[1];

    return v28(v27);
  }
}

uint64_t sub_265B58938()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_265B58CC4;
  }

  else
  {
    v4 = sub_265B58A64;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_265B58A64()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_265B58AF0()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_265B58D48;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_265B58C20;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_265B58C20()
{
  v1 = v0[5];
  (*(v0[9] + 8))(v0[10], v0[8]);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_265B58CC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265B58D48()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

unint64_t sub_265B58DFC()
{
  result = qword_280CEB7A8;
  if (!qword_280CEB7A8)
  {
    type metadata accessor for SummaryShelfLockupDescriptorsCache(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CEB7A8);
  }

  return result;
}

uint64_t sub_265B58E54(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v18 = type metadata accessor for SummaryShelfLockupDescriptorsCache.State(0);
  MEMORY[0x28223BE20](v18);
  v4 = (&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_265B76390();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265B76380();
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AA8, &qword_265B78FF8) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A08, &qword_265B79150);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A10, &qword_265B79100);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_265B78400;
  (*(v11 + 16))(v13 + v12, v17, v10);
  *v4 = v13;
  (*(v6 + 16))(v4 + v9, v8, v5);
  swift_storeEnumTagMultiPayload();
  v14 = OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_state;
  swift_beginAccess();
  sub_265B43E60(v4, a2 + v14);
  swift_endAccess();
  sub_265B57900(v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_265B590C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v7 = type metadata accessor for SummaryShelfLockupDescriptorsCache.State(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AA8, &qword_265B78FF8) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A08, &qword_265B79150);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A10, &qword_265B79100);
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_265B78400;
  (*(v12 + 16))(v14 + v13, a1, v11);
  v19 = a3;

  sub_265B59918(v14);
  *v9 = v19;
  v15 = sub_265B76390();
  (*(*(v15 - 8) + 16))(v9 + v10, v18, v15);
  swift_storeEnumTagMultiPayload();
  v16 = OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_state;
  swift_beginAccess();
  sub_265B43E60(v9, a2 + v16);
  return swift_endAccess();
}

uint64_t SummaryShelfLockupDescriptorsCache.query()()
{
  v1[5] = v0;
  v1[6] = type metadata accessor for SummaryShelfLockupDescriptorsCache.State(0);
  v1[7] = swift_task_alloc();
  v2 = sub_265B76F60();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265B593D8, v0, 0);
}

uint64_t sub_265B593D8(uint64_t a1)
{
  v3 = v1[9];
  v2 = v1[10];
  v5 = v1[7];
  v4 = v1[8];
  v6 = v1[5];
  sub_265B76E50();
  sub_265B76F40();
  (*(v3 + 8))(v2, v4);
  v7 = OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_state;
  swift_beginAccess();
  sub_265B43BBC(v6 + v7, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_265B59628();
      swift_allocError();
      *v16 = 0;
    }

    swift_willThrow();
    goto LABEL_11;
  }

  if (!EnumCaseMultiPayload)
  {
    v9 = v1[7];

    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AA8, &qword_265B78FF8) + 48);
    sub_265B59628();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
    v12 = sub_265B76390();
    (*(*(v12 - 8) + 8))(v9 + v10, v12);
LABEL_11:

    v17 = v1[1];

    return v17();
  }

  v13 = *v1[7];

  v14 = v1[1];

  return v14(v13);
}

unint64_t sub_265B59628()
{
  result = qword_280035AB8;
  if (!qword_280035AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035AB8);
  }

  return result;
}

uint64_t sub_265B5967C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_265B41608;

  return SummaryShelfLockupDescriptorsCache.fetch()();
}

uint64_t sub_265B5970C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_265B5A110;

  return SummaryShelfLockupDescriptorsCache.query()();
}

uint64_t sub_265B59820(uint64_t a1)
{
  v4 = *(sub_265B76390() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_265B41970;

  return sub_265B57BC4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_265B59918(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_265B4DBF4(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A10, &qword_265B79100);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_265B59A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A10, &qword_265B79100);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_265B76F60();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_265B40228(0x65uLL);
  sub_265B76E40();
  v17 = sub_265B76F50();
  v40 = sub_265B77280();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_265B77440();
    v38 = v8;
    v22 = sub_265B402B4(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_265B3E000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x26676C0C0](v29, -1, -1);
    MEMORY[0x26676C0C0](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AC8, &qword_265B79108);
  v33 = sub_265B76BD0();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_265B42C94;
  *(v34 + 24) = v32;

  v33(sub_265B42D24, v34);
}

uint64_t sub_265B59E3C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_265B4221C;

  return sub_265B56B78(a1, v1);
}

uint64_t sub_265B59ED4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_265B4221C;

  return sub_265B56CC0(a1, v1);
}

uint64_t sub_265B59F6C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_265B41970;

  return sub_265B56F68(a1, v1);
}

uint64_t sub_265B5A004(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_265B4221C;

  return sub_265B571F4(a1, v1);
}

uint64_t sub_265B5A09C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035958, &qword_265B78FD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static SummaryShelfLockupDescriptorsCacheUpdated.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_265B76CD0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

unint64_t sub_265B5A1B0()
{
  result = qword_280035AD0;
  if (!qword_280035AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035AD0);
  }

  return result;
}

uint64_t sub_265B5A204()
{
  v0 = sub_265B762E0();
  __swift_allocate_value_buffer(v0, qword_280CEBF78);
  __swift_project_value_buffer(v0, qword_280CEBF78);
  return sub_265B762A0();
}

id sub_265B5A268@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_265B762E0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v49 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v50 = &v49 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v51 = &v49 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v49 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  result = [v1 uniqueName];
  if (!result)
  {
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v18 = result;
  v19 = sub_265B77030();
  v21 = v20;

  v55 = v19;
  v56 = v21;
  v53 = 45;
  v54 = 0xE100000000000000;
  sub_265B43C20();
  v22 = sub_265B77320();

  if (!v22[2])
  {

    v28 = *(v5 + 56);
    v29 = a1;
    v30 = 1;
    return v28(v29, v30, 1, v4);
  }

  v52 = a1;
  v23 = v22[4];
  v24 = v22[5];

  if (v23 == 0xD00000000000001CLL && 0x8000000265B7A300 == v24 || (sub_265B77580() & 1) != 0 || v23 == 0xD00000000000001BLL && 0x8000000265B7A320 == v24 || (sub_265B77580() & 1) != 0)
  {
    if (qword_280CEB870 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v4, qword_280CEBF78);
    sub_265B762C0();
    sub_265B762C0();
    v25 = *(v5 + 8);
    v25(v14, v4);
    result = [v2 uniqueName];
    if (result)
    {
      v26 = result;

      sub_265B77030();

      v27 = v52;
      sub_265B762C0();

      v25(v16, v4);
      v28 = *(v5 + 56);
      v29 = v27;
LABEL_13:
      v30 = 0;
      return v28(v29, v30, 1, v4);
    }

    goto LABEL_32;
  }

  if ((v23 != 0xD000000000000027 || 0x8000000265B7A0D0 != v24) && (sub_265B77580() & 1) == 0)
  {
    v43 = v52;
    if (qword_280CEB870 != -1)
    {
      swift_once();
    }

    v44 = __swift_project_value_buffer(v4, qword_280CEBF78);
    v45 = v49;
    (*(v5 + 16))(v49, v44, v4);
    result = [v2 uniqueName];
    if (result)
    {
      v46 = result;

      sub_265B77030();

      v47 = v50;
      sub_265B762C0();

      v48 = *(v5 + 8);
      v48(v45, v4);
      sub_265B762C0();
      v48(v47, v4);
      v28 = *(v5 + 56);
      v29 = v43;
      goto LABEL_13;
    }

    goto LABEL_34;
  }

  result = [v2 uniqueName];
  v31 = v52;
  if (result)
  {
    v32 = result;

    v33 = sub_265B77030();
    v35 = v34;

    v55 = v33;
    v56 = v35;
    v53 = 45;
    v54 = 0xE100000000000000;
    v36 = sub_265B77320();

    if (v36[2] < 3uLL)
    {
      (*(v5 + 56))(v31, 1, 1, v4);
    }

    v37 = v36[5];
    v55 = v36[4];
    v56 = v37;

    MEMORY[0x26676B460](45, 0xE100000000000000);
    if (v36[2] < 3uLL)
    {
      __break(1u);
    }

    else
    {
      v38 = v36[8];
      v39 = v36[9];

      MEMORY[0x26676B460](v38, v39);

      if (qword_280CEB870 == -1)
      {
LABEL_23:
        __swift_project_value_buffer(v4, qword_280CEBF78);
        v40 = v51;
        sub_265B762C0();
        sub_265B762C0();
        v41 = *(v5 + 8);
        v41(v40, v4);
        v42 = v52;
        sub_265B762C0();

        v41(v14, v4);
        v28 = *(v5 + 56);
        v29 = v42;
        goto LABEL_13;
      }
    }

    swift_once();
    goto LABEL_23;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

id sub_265B5A98C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v3 = sub_265B762E0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v26 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  result = [v1 uniqueName];
  if (result)
  {
    v14 = result;
    v15 = sub_265B77030();
    v17 = v16;

    v30 = v15;
    v31 = v17;
    v28 = 45;
    v29 = 0xE100000000000000;
    sub_265B43C20();
    v18 = sub_265B77320();

    if (!v18[2])
    {

      v22 = 1;
      v21 = v27;
      return (*(v4 + 56))(v21, v22, 1, v3);
    }

    v20 = v18[4];
    v19 = v18[5];

    if (v20 == 0xD00000000000001CLL && 0x8000000265B7A300 == v19 || (sub_265B77580() & 1) != 0 || v20 == 0xD00000000000001BLL && 0x8000000265B7A320 == v19 || (sub_265B77580() & 1) != 0 || v20 == 0xD000000000000027 && 0x8000000265B7A0D0 == v19 || (sub_265B77580() & 1) != 0)
    {

      if (qword_280CEB870 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v3, qword_280CEBF78);
      sub_265B762C0();
      v21 = v27;
      sub_265B762C0();
      (*(v4 + 8))(v12, v3);
      goto LABEL_15;
    }

    if (qword_280CEB870 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v3, qword_280CEBF78);
    (*(v4 + 16))(v7, v23, v3);
    result = [v2 uniqueName];
    if (result)
    {
      v24 = result;

      sub_265B77030();

      sub_265B762C0();

      v25 = *(v4 + 8);
      v25(v7, v3);
      v21 = v27;
      sub_265B762C0();
      v25(v10, v3);
LABEL_15:
      v22 = 0;
      return (*(v4 + 56))(v21, v22, 1, v3);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_265B5ADDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v41 = sub_265B762E0();
  v3 = *(v41 - 8);
  v4 = MEMORY[0x28223BE20](v41);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v38 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v38 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v38 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  result = [v1 uniqueName];
  if (!result)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v18 = result;
  v19 = sub_265B77030();
  v21 = v20;

  v44 = v19;
  v45 = v21;
  v42 = 45;
  v43 = 0xE100000000000000;
  sub_265B43C20();
  v22 = sub_265B77320();

  if (!v22[2])
  {

    v32 = 1;
    v31 = v40;
    v29 = v41;
    return (*(v3 + 56))(v31, v32, 1, v29);
  }

  v38 = v8;
  v23 = v22[4];
  v24 = v22[5];

  if (v23 == 0xD00000000000001CLL && 0x8000000265B7A300 == v24 || (sub_265B77580() & 1) != 0 || v23 == 0xD00000000000001BLL && 0x8000000265B7A320 == v24 || (sub_265B77580() & 1) != 0 || v23 == 0xD000000000000027 && 0x8000000265B7A0D0 == v24 || (sub_265B77580() & 1) != 0)
  {
    if (qword_280CEB870 != -1)
    {
      swift_once();
    }

    v25 = v41;
    __swift_project_value_buffer(v41, qword_280CEBF78);
    sub_265B762C0();
    sub_265B762C0();
    v26 = v3;
    v27 = *(v3 + 8);
    v28 = v11;
    v29 = v25;
    v27(v28, v25);
    result = [v2 uniqueName];
    if (result)
    {
      v30 = result;

      sub_265B77030();

      sub_265B762C0();

      v27(v14, v25);
      v31 = v40;
      sub_265B762C0();
      v27(v16, v25);
      v32 = 0;
      v3 = v26;
      return (*(v3 + 56))(v31, v32, 1, v29);
    }

    goto LABEL_23;
  }

  v33 = v38;
  if (qword_280CEB870 != -1)
  {
    swift_once();
  }

  v29 = v41;
  v34 = __swift_project_value_buffer(v41, qword_280CEBF78);
  v35 = v39;
  (*(v3 + 16))(v39, v34, v29);
  result = [v2 uniqueName];
  if (result)
  {
    v36 = result;

    sub_265B77030();

    sub_265B762C0();

    v37 = *(v3 + 8);
    v37(v35, v29);
    v31 = v40;
    sub_265B762C0();
    v37(v33, v29);
    v32 = 0;
    return (*(v3 + 56))(v31, v32, 1, v29);
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_265B5B3EC(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_265B77390();
    v5 = v4;
    v6 = sub_265B77400();
    v8 = v7;
    v9 = MEMORY[0x26676B790](v3, v5, v6, v7);
    sub_265B5C6AC(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_265B5C6AC(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_265B77380();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_265B5BE08(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_265B5C6AC(v3, v5, v2 != 0);
  return v12;
}

void static ACHAchievement.makeWeeklyStreakAchievement(with:environmentCache:)(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_265B773A0();
    sub_265B5C6B8(0, &qword_280035A20, 0x277CE8D50);
    sub_265B4EA48();
    sub_265B77250();
    v2 = v25;
    v3 = v26;
    v4 = v27;
    v5 = v28;
    v6 = v29;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  while (v2 < 0)
  {
    if (!sub_265B773F0() || (sub_265B5C6B8(0, &qword_280035A20, 0x277CE8D50), swift_dynamicCast(), v13 = v30, v12 = v6, !v30))
    {
LABEL_26:
      sub_265B45764(v2);
      v22 = sub_265B764D0();
      sub_265B5046C();
      swift_allocError();
      (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D50D10], v22);
      swift_willThrow();
      return;
    }

LABEL_18:
    v14 = [v13 uniqueName];
    if (v14)
    {
      v15 = v14;
      v16 = sub_265B77030();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    sub_265B76D80();
    v19 = sub_265B76D50();
    if (v18)
    {
      if (v16 == v19 && v18 == v20)
      {

LABEL_28:
        sub_265B45764(v2);
        v24 = sub_265B5C02C();
        [objc_allocWithZone(MEMORY[0x277CE8CB0]) initWithTemplate:v13 relevantEarnedInstance:v24 earnedInstanceCount:v24 != 0];

        return;
      }

      v21 = sub_265B77580();

      if (v21)
      {
        goto LABEL_28;
      }
    }

    else
    {
    }

    v6 = v12;
  }

  v10 = v5;
  v11 = v6;
  if (v6)
  {
LABEL_14:
    v12 = (v11 - 1) & v11;
    v13 = *(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v13)
    {
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_26;
    }

    v11 = *(v3 + 8 * v5);
    ++v10;
    if (v11)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void static ACHAchievement.makeAchievement(for:with:progressUpdates:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a1;
  v56 = a2;
  v7 = sub_265B76F60();
  v8 = MEMORY[0x28223BE20](v7);
  v51 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v4;
  v49 = v10;
  v50 = v8;
  v53 = a4;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_265B773A0();
    sub_265B5C6B8(0, &qword_280035A20, 0x277CE8D50);
    sub_265B4EA48();
    sub_265B77250();
    a3 = v60;
    v11 = v61;
    v12 = v62;
    v13 = v63;
    v14 = v64;
  }

  else
  {
    v15 = -1 << *(a3 + 32);
    v11 = a3 + 56;
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(a3 + 56);

    v13 = 0;
  }

  v54 = v12;
  while (a3 < 0)
  {
    v23 = sub_265B773F0();
    if (!v23 || (v59 = v23, sub_265B5C6B8(0, &qword_280035A20, 0x277CE8D50), swift_dynamicCast(), v22 = v65, v20 = v13, v21 = v14, !v65))
    {
LABEL_25:
      sub_265B45764(a3);
      v31 = sub_265B764D0();
      sub_265B5046C();
      swift_allocError();
      (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D50D10], v31);
      swift_willThrow();
      return;
    }

LABEL_18:
    v57 = v13;
    v24 = [v22 uniqueName];
    if (v24)
    {
      v25 = v24;
      v58 = v22;
      v26 = sub_265B77030();
      v28 = v27;

      if (v26 == v55 && v28 == v56)
      {

LABEL_27:
        sub_265B45764(a3);
        v33 = sub_265B5B3EC(v53);
        if (v33)
        {
          v34 = v33;
          v35 = sub_265B5C24C(v55, v56, v33);
          v36 = objc_allocWithZone(MEMORY[0x277CE8CB0]);
          v37 = v58;
          v38 = [v36 initWithTemplate:v58 relevantEarnedInstance:v35 earnedInstanceCount:v35 != 0];
          v39 = [v34 progressQuantity];
          [v38 setProgress_];

          v40 = [v34 goalQuantity];
          [v38 setGoal_];
        }

        else
        {
          v41 = v51;
          sub_265B76E20();
          v42 = v56;

          v43 = sub_265B76F50();
          v44 = sub_265B77270();

          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            v46 = swift_slowAlloc();
            v65 = v46;
            *v45 = 136315138;
            *(v45 + 4) = sub_265B402B4(v55, v42, &v65);
            _os_log_impl(&dword_265B3E000, v43, v44, "No progress updates found, unable to populate progress info for %s", v45, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v46);
            MEMORY[0x26676C0C0](v46, -1, -1);
            MEMORY[0x26676C0C0](v45, -1, -1);
          }

          (*(v49 + 8))(v41, v50);
          v47 = sub_265B764D0();
          sub_265B5046C();
          swift_allocError();
          (*(*(v47 - 8) + 104))(v48, *MEMORY[0x277D50D08], v47);
          swift_willThrow();
        }

        return;
      }

      v30 = sub_265B77580();

      v22 = v58;
      if (v30)
      {
        goto LABEL_27;
      }
    }

    v13 = v20;
    v14 = v21;
  }

  v18 = v13;
  v19 = v14;
  v20 = v13;
  if (v14)
  {
LABEL_14:
    v21 = (v19 - 1) & v19;
    v22 = *(*(a3 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v22)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= ((v12 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v19 = *(v11 + 8 * v20);
    ++v18;
    if (v19)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_265B5BE08(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x26676B7C0](a1, a2, v7);
      sub_265B5C6B8(0, &qword_280035AD8, 0x277CE8CC0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_265B5C6B8(0, &qword_280035AD8, 0x277CE8CC0);
    if (sub_265B773C0() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_265B773D0();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_265B772C0();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_265B772D0();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

id sub_265B5C02C()
{
  v0 = sub_265B76F60();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_265B76920() < 1)
  {
    sub_265B76E20();
    v6 = sub_265B76F50();
    v7 = sub_265B77280();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315138;
      sub_265B76D80();
      v10 = sub_265B76D10();
      v12 = sub_265B402B4(v10, v11, &v15);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_265B3E000, v6, v7, "longestWeeklyStreak is 0, not adding an earned instance for %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x26676C0C0](v9, -1, -1);
      MEMORY[0x26676C0C0](v8, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CE8D38]) init];
    sub_265B76D80();
    sub_265B76D50();
    v5 = sub_265B77000();

    [v4 setTemplateUniqueName_];
  }

  return v4;
}

id sub_265B5C24C(uint64_t a1, uint64_t a2, void *a3)
{
  v37 = a1;
  v38 = a2;
  v4 = sub_265B76350();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v41 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_265B76410();
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_265B76280();
  v39 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a3 progressQuantity];
  if (v13)
  {
    sub_265B45A6C();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  result = [a3 goalQuantity];
  if (result)
  {
    v17 = result;
    sub_265B45A6C();
    v19 = v18;

    result = 0;
    if (v13)
    {
      if (v15 >= v19)
      {
        v20 = [objc_allocWithZone(MEMORY[0x277CE8D38]) init];
        v36 = v20;
        v21 = sub_265B77000();
        [v20 setTemplateUniqueName_];

        sub_265B763F0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A50, &qword_265B78E40);
        v22 = sub_265B76400();
        v23 = *(v22 - 8);
        v24 = v23;
        v37 = v4;
        v25 = *(v23 + 72);
        v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
        v38 = v10;
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_265B792B0;
        v28 = v27 + v26;
        v29 = *MEMORY[0x277CC9988];
        v35 = v7;
        v30 = *(v24 + 104);
        v30(v28, v29, v22);
        v30(v28 + v25, *MEMORY[0x277CC9998], v22);
        v30(v28 + 2 * v25, *MEMORY[0x277CC9968], v22);
        sub_265B54134(v27);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v31 = v41;
        sub_265B76340();
        sub_265B763B0();

        (*(v5 + 8))(v31, v37);
        (*(v40 + 8))(v9, v35);
        v32 = sub_265B76260();
        v33 = v36;
        [v36 setEarnedDateComponents_];

        (*(v39 + 8))(v12, v38);
        return v33;
      }
    }
  }

  return result;
}

uint64_t sub_265B5C6AC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_265B5C6B8(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t SeymourAchievementTemplate.toACHTemplate()()
{
  v0 = sub_265B76420();
  v2 = v1;
  v3 = objc_allocWithZone(MEMORY[0x277CE8D18]);
  v4 = sub_265B76310();
  sub_265B5C898(v0, v2);
  v5 = [v3 initWithData_];

  if (v5)
  {
    v6 = [objc_allocWithZone(MEMORY[0x277CE8D50]) initWithCodable_];
    if (v6)
    {
      v2 = v6;
    }

    else
    {
      v2 = sub_265B764D0();
      sub_265B5046C();
      swift_allocError();
      (*(*(v2 - 8) + 104))(v9, *MEMORY[0x277D50D00], v2);
      swift_willThrow();
    }
  }

  else
  {
    v7 = sub_265B764D0();
    sub_265B5046C();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D50CE8], v7);
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_265B5C898(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

Swift::Void __swiftcall ACHAchievement.updateBundleURLs()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800358A0, &qword_265B78680);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v18 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = [v0 template];
  sub_265B5A268(v10);
  v12 = sub_265B762E0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v15 = 0;
  if (v14(v10, 1, v12) != 1)
  {
    v15 = sub_265B762B0();
    (*(v13 + 8))(v10, v12);
  }

  [v1 setLocalizationBundleURL_];

  sub_265B5A98C(v8);
  if (v14(v8, 1, v12) == 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = sub_265B762B0();
    (*(v13 + 8))(v8, v12);
  }

  [v1 setResourceBundleURL_];

  sub_265B5ADDC(v5);
  if (v14(v5, 1, v12) == 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = sub_265B762B0();
    (*(v13 + 8))(v5, v12);
  }

  [v1 setPropertyListBundleURL_];

  [v1 setStickerBundleURL_];
}

unint64_t sub_265B5CB98()
{
  result = qword_280035AE0;
  if (!qword_280035AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035AE0);
  }

  return result;
}

uint64_t ACAccountStore.iTunesAccount(altDSID:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return MEMORY[0x2822009F8](sub_265B5CC10, 0, 0);
}

uint64_t sub_265B5CC10()
{
  v1 = [*(v0 + 168) ams_mediaType];
  *(v0 + 176) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 168);
    v4 = sub_265B77000();
    v5 = [v3 ams:v4 iTunesAccountWithAltDSID:v2 forMediaType:?];
    *(v0 + 184) = v5;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_265B5CE00;
    v6 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AE8, &qword_265B79398);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_265B41010;
    *(v0 + 104) = &block_descriptor_0;
    *(v0 + 112) = v6;
    [v5 resultWithCompletion_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    sub_265B4ACC0();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_265B5CE00()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_265B5CF80;
  }

  else
  {
    v2 = sub_265B5CF10;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_265B5CF10()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 144);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_265B5CF80(uint64_t a1)
{
  v2 = v1[23];
  v3 = v1[22];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_265B5CFF8(uint64_t a1)
{
  v2 = v1[21];
  v3 = v1[20];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_265B5D090()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_265B5D1AC;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AF0, &qword_265B793B0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_265B5D3FC;
  v0[13] = &block_descriptor_8;
  v0[14] = v2;
  [v1 aa:v0 + 10 primaryAppleAccountWithCompletion:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_265B5D1AC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_265B5D390;
  }

  else
  {
    v2 = sub_265B5D2BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_265B5D2BC()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_265B4ACC0();
    swift_allocError();
    *v3 = 2;
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_265B5D390(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_265B5D3FC(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035950, &unk_265B78860);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t ACAccountStore.appleAccount(altDSID:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return MEMORY[0x2822009F8](sub_265B5D4F0, 0, 0);
}

uint64_t sub_265B5D4F0()
{
  v1 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_265B5D60C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AF8, &qword_265B793C0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_265B5D994;
  v0[13] = &block_descriptor_12;
  v0[14] = v2;
  [v1 aa:v0 + 10 appleAccountsWithCompletion:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_265B5D60C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_265B5D928;
  }

  else
  {
    v2 = sub_265B5D71C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_265B5D71C()
{
  v1 = v0[18];
  if (!v1)
  {
    goto LABEL_26;
  }

  if (v1 >> 62)
  {
LABEL_24:
    v2 = sub_265B774C0();
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_25;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
LABEL_25:

LABEL_26:
    sub_265B4ACC0();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
    v17 = v0[1];

    return v17();
  }

LABEL_4:
  v3 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x26676B830](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v7 = [v4 aa_altDSID];
    if (!v7)
    {
      goto LABEL_5;
    }

    v18 = v0[19];
    v19 = v0[20];
    v8 = v7;
    v9 = sub_265B77030();
    v11 = v10;

    if (v9 == v18 && v11 == v19)
    {
      break;
    }

    v13 = sub_265B77580();

    if (v13)
    {
      goto LABEL_19;
    }

LABEL_5:

    ++v3;
    if (v6 == v2)
    {
      goto LABEL_25;
    }
  }

LABEL_19:

  v14 = v0[1];

  return v14(v5);
}

uint64_t sub_265B5D928(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_265B5D994(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035950, &unk_265B78860);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    v9 = 0;
    if (a2)
    {
      sub_265B401DC();
      v9 = sub_265B77140();
    }

    **(*(v5 + 64) + 40) = v9;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_265B5DA78(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265B5A110;

  return ACAccountStore.iTunesAccount(altDSID:)(a1, a2);
}

uint64_t sub_265B5DB20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_265B5A110;

  return ACAccountStore.primaryAppleAccount()();
}

uint64_t sub_265B5DBB0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265B5A110;

  return ACAccountStore.appleAccount(altDSID:)(a1, a2);
}

uint64_t dispatch thunk of AccountStoring.iTunesAccount(altDSID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_265B566A8;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AccountStoring.activeiTunesAccount()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265B4C6BC;

  return v7(a1, a2);
}

uint64_t dispatch thunk of AccountStoring.primaryAppleAccount()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265B566A8;

  return v7(a1, a2);
}

uint64_t dispatch thunk of AccountStoring.appleAccount(altDSID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_265B566A8;

  return v11(a1, a2, a3, a4);
}

uint64_t ACAccount.type.getter@<X0>(char *a1@<X8>)
{
  v3 = [v1 accountType];
  if (v3 && (v4 = v3, v5 = [v3 identifier], v4, v5))
  {
    v6 = sub_265B77030();
    v8 = v7;

    v9 = sub_265B77030();
    if (v8)
    {
      if (v9 == v6 && v8 == v10)
      {
      }

      else
      {
        v12 = sub_265B77580();

        if ((v12 & 1) == 0)
        {
          if (sub_265B77030() == v6 && v8 == v13)
          {

LABEL_19:
            v15 = 1;
            goto LABEL_15;
          }

          v16 = sub_265B77580();

          if (v16)
          {
            goto LABEL_19;
          }

          goto LABEL_14;
        }
      }

      v15 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    sub_265B77030();
  }

  sub_265B77030();

LABEL_14:
  v15 = 2;
LABEL_15:
  *a1 = v15;
  return result;
}

void ACAccount.init(_:)(uint64_t a1)
{
  v2 = sub_265B76770();
  MEMORY[0x28223BE20](v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  sub_265B76650();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_4:
    sub_265B77030();
    sub_265B77030();
    v9 = objc_allocWithZone(MEMORY[0x277CB8F58]);
    v10 = sub_265B77000();

    v11 = sub_265B77000();

    v8 = [v9 initWithIdentifier:v10 description:v11];

    if (!v8)
    {
      goto LABEL_25;
    }

    goto LABEL_5;
  }

  sub_265B77030();
  sub_265B77030();
  v5 = objc_allocWithZone(MEMORY[0x277CB8F58]);
  v6 = sub_265B77000();

  v7 = sub_265B77000();

  v8 = [v5 initWithIdentifier:v6 description:v7];

  if (!v8)
  {
    __break(1u);
    goto LABEL_4;
  }

LABEL_5:
  v12 = v8;
  sub_265B5E6A8(v4);
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAccountType_];

  if (v13)
  {
    v38 = v13;
    sub_265B765D0();
    if (v14)
    {
      v15 = sub_265B77000();
    }

    else
    {
      v15 = 0;
    }

    [v38 setIdentifier_];

    sub_265B76690();
    v36 = v12;
    if (v16)
    {
      v17 = sub_265B77000();
    }

    else
    {
      v17 = 0;
    }

    [v38 setUsername_];

    v18 = sub_265B5E704();
    v19 = v18;
    v20 = v18 + 64;
    v21 = 1 << *(v18 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v18 + 64);
    v24 = (v21 + 63) >> 6;

    v25 = 0;
    while (v23)
    {
      v26 = v25;
LABEL_20:
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v28 = v27 | (v26 << 6);
      v29 = (*(v19 + 48) + 16 * v28);
      v30 = *v29;
      v31 = v29[1];
      sub_265B4073C(*(v19 + 56) + 32 * v28, v40);
      v39[0] = v30;
      v39[1] = v31;
      __swift_project_boxed_opaque_existential_1(v40, v40[3]);

      v32 = sub_265B77570();
      v33 = sub_265B77000();
      [v38 setAccountProperty:v32 forKey:v33];
      swift_unknownObjectRelease();

      sub_265B54CA8(v39, &qword_280035B00, &qword_265B79448);
    }

    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v24)
      {

        v34 = sub_265B766B0();
        (*(*(v34 - 8) + 8))(v37, v34);

        return;
      }

      v23 = *(v20 + 8 * v26);
      ++v25;
      if (v23)
      {
        v25 = v26;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_265B5E6A8(uint64_t a1)
{
  v2 = sub_265B76770();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_265B5E704()
{
  v0 = sub_265B76BA0();
  v103 = *(v0 - 8);
  v104 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v101 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_265B76900();
  v101 = *(v3 - 8);
  v102 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_265B76770();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v101 - v10;
  v12 = sub_265B66028(MEMORY[0x277D84F90]);
  v13 = sub_265B77030();
  v15 = v14;
  v16 = sub_265B766A0();
  if (v17)
  {
    v18 = MEMORY[0x277D837D0];
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v111 = 0;
  }

  v109 = v16;
  v110 = v17;
  v112 = v18;
  sub_265B42BBC(&v109, &v106);
  if (v107)
  {
    sub_265B5FC9C(&v106, v108);
    sub_265B4073C(v108, &v106);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v105 = v12;
    sub_265B5FD44(&v106, v13, v15, isUniquelyReferenced_nonNull_native);

    __swift_destroy_boxed_opaque_existential_1(v108);
    v12 = v105;
  }

  else
  {

    sub_265B54CA8(&v106, &qword_280035A18, &qword_265B78DD8);
  }

  sub_265B54CA8(&v109, &qword_280035A18, &qword_265B78DD8);
  v20 = sub_265B77030();
  v22 = v21;
  v23 = sub_265B765E0();
  if (v24)
  {
    v25 = MEMORY[0x277D837D0];
  }

  else
  {
    v23 = 0;
    v25 = 0;
    v111 = 0;
  }

  v109 = v23;
  v110 = v24;
  v112 = v25;
  sub_265B42BBC(&v109, &v106);
  if (v107)
  {
    sub_265B5FC9C(&v106, v108);
    sub_265B4073C(v108, &v106);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v12;
    sub_265B5FD44(&v106, v20, v22, v26);

    __swift_destroy_boxed_opaque_existential_1(v108);
    v12 = v105;
  }

  else
  {

    sub_265B54CA8(&v106, &qword_280035A18, &qword_265B78DD8);
  }

  sub_265B54CA8(&v109, &qword_280035A18, &qword_265B78DD8);
  v27 = sub_265B77030();
  v29 = v28;
  v30 = sub_265B76670();
  if (v31)
  {
    v32 = MEMORY[0x277D837D0];
  }

  else
  {
    v30 = 0;
    v32 = 0;
    v111 = 0;
  }

  v109 = v30;
  v110 = v31;
  v112 = v32;
  sub_265B42BBC(&v109, &v106);
  if (v107)
  {
    sub_265B5FC9C(&v106, v108);
    sub_265B4073C(v108, &v106);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v12;
    sub_265B5FD44(&v106, v27, v29, v33);

    __swift_destroy_boxed_opaque_existential_1(v108);
    v12 = v105;
  }

  else
  {

    sub_265B54CA8(&v106, &qword_280035A18, &qword_265B78DD8);
  }

  sub_265B54CA8(&v109, &qword_280035A18, &qword_265B78DD8);
  v34 = sub_265B77030();
  v36 = v35;
  v37 = sub_265B76680();
  if (v38)
  {
    v39 = MEMORY[0x277D837D0];
  }

  else
  {
    v37 = 0;
    v39 = 0;
    v111 = 0;
  }

  v109 = v37;
  v110 = v38;
  v112 = v39;
  sub_265B42BBC(&v109, &v106);
  if (v107)
  {
    sub_265B5FC9C(&v106, v108);
    sub_265B4073C(v108, &v106);
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v12;
    sub_265B5FD44(&v106, v34, v36, v40);

    __swift_destroy_boxed_opaque_existential_1(v108);
    v12 = v105;
  }

  else
  {

    sub_265B54CA8(&v106, &qword_280035A18, &qword_265B78DD8);
  }

  sub_265B54CA8(&v109, &qword_280035A18, &qword_265B78DD8);
  v41 = sub_265B77030();
  v43 = v42;
  v44 = sub_265B76600();
  if (v45)
  {
    v46 = MEMORY[0x277D837D0];
  }

  else
  {
    v44 = 0;
    v46 = 0;
    v111 = 0;
  }

  v109 = v44;
  v110 = v45;
  v112 = v46;
  sub_265B42BBC(&v109, &v106);
  if (v107)
  {
    sub_265B5FC9C(&v106, v108);
    sub_265B4073C(v108, &v106);
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v12;
    sub_265B5FD44(&v106, v41, v43, v47);

    __swift_destroy_boxed_opaque_existential_1(v108);
    v12 = v105;
  }

  else
  {

    sub_265B54CA8(&v106, &qword_280035A18, &qword_265B78DD8);
  }

  sub_265B54CA8(&v109, &qword_280035A18, &qword_265B78DD8);
  v48 = sub_265B77030();
  v50 = v49;
  v51 = sub_265B76610();
  if (v52)
  {
    v53 = MEMORY[0x277D837D0];
  }

  else
  {
    v51 = 0;
    v53 = 0;
    v111 = 0;
  }

  v109 = v51;
  v110 = v52;
  v112 = v53;
  sub_265B42BBC(&v109, &v106);
  if (v107)
  {
    sub_265B5FC9C(&v106, v108);
    sub_265B4073C(v108, &v106);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v12;
    sub_265B5FD44(&v106, v48, v50, v54);

    __swift_destroy_boxed_opaque_existential_1(v108);
    v12 = v105;
  }

  else
  {

    sub_265B54CA8(&v106, &qword_280035A18, &qword_265B78DD8);
  }

  sub_265B54CA8(&v109, &qword_280035A18, &qword_265B78DD8);
  v55 = sub_265B77030();
  v57 = v56;
  v58 = sub_265B76660();
  if (v59)
  {
    v60 = MEMORY[0x277D837D0];
  }

  else
  {
    v58 = 0;
    v60 = 0;
    v111 = 0;
  }

  v109 = v58;
  v110 = v59;
  v112 = v60;
  sub_265B42BBC(&v109, &v106);
  if (v107)
  {
    sub_265B5FC9C(&v106, v108);
    sub_265B4073C(v108, &v106);
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v12;
    sub_265B5FD44(&v106, v55, v57, v61);

    __swift_destroy_boxed_opaque_existential_1(v108);
    v12 = v105;
  }

  else
  {

    sub_265B54CA8(&v106, &qword_280035A18, &qword_265B78DD8);
  }

  sub_265B54CA8(&v109, &qword_280035A18, &qword_265B78DD8);
  v62 = sub_265B77030();
  v64 = v63;
  v65 = sub_265B76630();
  if (v66)
  {
    v67 = MEMORY[0x277D837D0];
  }

  else
  {
    v65 = 0;
    v67 = 0;
    v111 = 0;
  }

  v109 = v65;
  v110 = v66;
  v112 = v67;
  sub_265B42BBC(&v109, &v106);
  if (v107)
  {
    sub_265B5FC9C(&v106, v108);
    sub_265B4073C(v108, &v106);
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v12;
    sub_265B5FD44(&v106, v62, v64, v68);

    __swift_destroy_boxed_opaque_existential_1(v108);
    v12 = v105;
  }

  else
  {

    sub_265B54CA8(&v106, &qword_280035A18, &qword_265B78DD8);
  }

  sub_265B54CA8(&v109, &qword_280035A18, &qword_265B78DD8);
  v69 = sub_265B77030();
  v71 = v70;
  v72 = sub_265B765B0();
  if (v73)
  {
    v74 = MEMORY[0x277D837D0];
  }

  else
  {
    v72 = 0;
    v74 = 0;
    v111 = 0;
  }

  v109 = v72;
  v110 = v73;
  v112 = v74;
  sub_265B42BBC(&v109, &v106);
  if (v107)
  {
    sub_265B5FC9C(&v106, v108);
    sub_265B4073C(v108, &v106);
    v75 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v12;
    sub_265B5FD44(&v106, v69, v71, v75);

    __swift_destroy_boxed_opaque_existential_1(v108);
    v12 = v105;
  }

  else
  {

    sub_265B54CA8(&v106, &qword_280035A18, &qword_265B78DD8);
  }

  sub_265B54CA8(&v109, &qword_280035A18, &qword_265B78DD8);
  v76 = sub_265B765C0();
  if (v77)
  {
    v78 = MEMORY[0x277D837D0];
  }

  else
  {
    v76 = 0;
    v78 = 0;
    v111 = 0;
  }

  v109 = v76;
  v110 = v77;
  v112 = v78;
  sub_265B42BBC(&v109, &v106);
  if (v107)
  {
    sub_265B5FC9C(&v106, v108);
    sub_265B4073C(v108, &v106);
    v79 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v12;
    sub_265B5FD44(&v106, 0xD000000000000015, 0x8000000265B7A460, v79);
    __swift_destroy_boxed_opaque_existential_1(v108);
    v12 = v105;
  }

  else
  {
    sub_265B54CA8(&v106, &qword_280035A18, &qword_265B78DD8);
  }

  sub_265B54CA8(&v109, &qword_280035A18, &qword_265B78DD8);
  v80 = sub_265B77030();
  v82 = v81;
  v83 = sub_265B76620();
  if (v84)
  {
    v85 = MEMORY[0x277D837D0];
  }

  else
  {
    v83 = 0;
    v85 = 0;
    v111 = 0;
  }

  v109 = v83;
  v110 = v84;
  v112 = v85;
  sub_265B42BBC(&v109, &v106);
  if (v107)
  {
    sub_265B5FC9C(&v106, v108);
    sub_265B4073C(v108, &v106);
    v86 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v12;
    sub_265B5FD44(&v106, v80, v82, v86);

    __swift_destroy_boxed_opaque_existential_1(v108);
    v12 = v105;
  }

  else
  {

    sub_265B54CA8(&v106, &qword_280035A18, &qword_265B78DD8);
  }

  sub_265B54CA8(&v109, &qword_280035A18, &qword_265B78DD8);
  v87 = sub_265B77030();
  v89 = v88;
  v90 = sub_265B765F0();
  if (v91)
  {
    v92 = MEMORY[0x277D837D0];
  }

  else
  {
    v90 = 0;
    v92 = 0;
    v111 = 0;
  }

  v109 = v90;
  v110 = v91;
  v112 = v92;
  sub_265B42BBC(&v109, &v106);
  if (v107)
  {
    sub_265B5FC9C(&v106, v108);
    sub_265B4073C(v108, &v106);
    v93 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v12;
    sub_265B5FD44(&v106, v87, v89, v93);

    __swift_destroy_boxed_opaque_existential_1(v108);
    v12 = v105;
  }

  else
  {

    sub_265B54CA8(&v106, &qword_280035A18, &qword_265B78DD8);
  }

  sub_265B54CA8(&v109, &qword_280035A18, &qword_265B78DD8);
  sub_265B76650();
  sub_265B60060(v11, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v95 = v101;
    v94 = v102;
    (*(v101 + 32))(v5, v9, v102);
    v96 = sub_265B60A80();
    (*(v95 + 8))(v5, v94);
  }

  else
  {
    v98 = v103;
    v97 = v104;
    (*(v103 + 32))(v2, v9, v104);
    v96 = sub_265B6CC88();
    (*(v98 + 8))(v2, v97);
  }

  sub_265B5E6A8(v11);
  v99 = swift_isUniquelyReferenced_nonNull_native();
  v109 = v12;
  sub_265B600C4(v96, sub_265B5FCF8, 0, v99, &v109);

  return v109;
}

uint64_t sub_265B5F4A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_265B77000();
  v4 = [v2 accountPropertyForKey_];

  if (v4)
  {
    sub_265B77360();
    swift_unknownObjectRelease();
    sub_265B5FC9C(&v6, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A18, &qword_265B78DD8);
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265B5F580(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = sub_265B77000();
  v8 = [v4 accountPropertyForKey_];

  if (v8)
  {
    sub_265B77360();
    swift_unknownObjectRelease();
    sub_265B5FC9C(&v10, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A18, &qword_265B78DD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265B5F658(uint64_t a1, uint64_t a2)
{
  v3 = sub_265B77000();
  v4 = [v2 accountPropertyForKey_];

  if (v4)
  {
    sub_265B77360();
    swift_unknownObjectRelease();
    sub_265B5FC9C(&v6, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A18, &qword_265B78DD8);
  sub_265B5FCAC();
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265B5F730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_265B77000();
  v5 = [v3 accountPropertyForKey_];

  if (v5)
  {
    sub_265B77360();
    swift_unknownObjectRelease();
    sub_265B5FC9C(&v9, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A18, &qword_265B78DD8);
  v6 = swift_dynamicCast();
  v7 = v9;
  if (!v6)
  {
    return 0;
  }

  return v7;
}

void RemoteBrowsingAccount.init(account:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_265B76770();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 portableCopy];
  if (!v8)
  {
    v10 = sub_265B76590();
    sub_265B5FC44();
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D51B80], v10);
    swift_willThrow();

    return;
  }

  v9 = v8;
  sub_265B603D4(v9, v7);
  if (v2)
  {

LABEL_10:
    return;
  }

  v12 = [v9 identifier];
  if (v12)
  {
    v13 = v12;
    v14 = sub_265B77030();
    v58[20] = v15;
    v58[21] = v14;

    v16 = [v9 username];
    v58[22] = a2;
    v59 = a1;
    if (v16)
    {
      v17 = v16;
      v61 = sub_265B77030();
      v60 = v18;
    }

    else
    {
      v61 = 0;
      v60 = 0;
    }

    v19 = sub_265B77030();
    v21 = sub_265B5F4A4(v19, v20);
    v58[18] = v22;
    v58[19] = v21;

    v23 = sub_265B77030();
    v25 = sub_265B5F4A4(v23, v24);
    v58[16] = v26;
    v58[17] = v25;

    v27 = sub_265B77030();
    v29 = sub_265B5F4A4(v27, v28);
    v58[14] = v30;
    v58[15] = v29;

    v31 = sub_265B77030();
    v33 = sub_265B5F4A4(v31, v32);
    v58[12] = v34;
    v58[13] = v33;

    v35 = sub_265B77030();
    v37 = sub_265B5F4A4(v35, v36);
    v58[10] = v38;
    v58[11] = v37;

    v39 = sub_265B77030();
    v41 = sub_265B5F4A4(v39, v40);
    v58[8] = v42;
    v58[9] = v41;

    v43 = sub_265B77030();
    v45 = sub_265B5F4A4(v43, v44);
    v58[6] = v46;
    v58[7] = v45;

    v47 = sub_265B77030();
    v49 = sub_265B5F4A4(v47, v48);
    v58[4] = v50;
    v58[5] = v49;

    v51 = sub_265B77030();
    v58[3] = sub_265B5F4A4(v51, v52);
    v58[2] = v53;

    v58[1] = sub_265B5F4A4(0xD000000000000015, 0x8000000265B7A460);
    v54 = sub_265B77030();
    sub_265B5F4A4(v54, v55);

    v56 = sub_265B77030();
    sub_265B5F4A4(v56, v57);

    sub_265B76640();

    goto LABEL_10;
  }

  __break(1u);
}

unint64_t sub_265B5FC44()
{
  result = qword_280035B08;
  if (!qword_280035B08)
  {
    sub_265B76590();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035B08);
  }

  return result;
}

_OWORD *sub_265B5FC9C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_265B5FCAC()
{
  result = qword_280035B30;
  if (!qword_280035B30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280035B30);
  }

  return result;
}

uint64_t sub_265B5FCF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_265B4073C((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

_OWORD *sub_265B5FD44(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_265B65E98(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_265B6DD64();
      v11 = v19;
      goto LABEL_8;
    }

    sub_265B643C0(v16, a4 & 1);
    v11 = sub_265B65E98(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_265B775A0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_265B5FC9C(a1, v22);
  }

  else
  {
    sub_265B5FE94(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_265B5FE94(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_265B5FC9C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_265B5FF00@<X0>(_OWORD *a1@<X8>)
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
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_265B4073C(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_265B5FC9C(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_265B54CA8(v21, &qword_280035B00, &qword_265B79448);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
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
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
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

uint64_t sub_265B60060(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B76770();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_265B600C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_265B5FF00(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_265B5FC9C(v44, v42);
  v14 = *a5;
  result = sub_265B65E98(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_265B643C0(v20, a4 & 1);
    result = sub_265B65E98(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_265B775A0();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_265B6DD64();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_265B5FC9C(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_265B5FC9C(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_265B5FF00(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_265B5FC9C(v44, v42);
        v32 = *a5;
        result = sub_265B65E98(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_265B643C0(v36, 1);
          result = sub_265B65E98(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_1(v31);
          sub_265B5FC9C(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_265B5FC9C(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_265B5FF00(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_265B45764(v45);
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_265B603D4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_265B76BA0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_265B76900();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  ACAccount.type.getter(&v16);
  if (v16 == 2)
  {
    v13 = sub_265B76590();
    sub_265B5FC44();
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277D51BD0], v13);
    swift_willThrow();

    return;
  }

  if (v16)
  {
    sub_265B60654(a1);
    if (v2)
    {
      return;
    }

    (*(v10 + 32))(a2, v12, v9);
  }

  else
  {
    sub_265B6BE88(a1);
    if (v2)
    {
      return;
    }

    (*(v6 + 32))(a2, v8, v5);
  }

  sub_265B76770();
  swift_storeEnumTagMultiPayload();
}

void sub_265B60654(void *a1)
{
  if (!sub_265B5F490(0x6E496E6F69676572, 0xEA00000000006F66))
  {
    sub_265B66138(MEMORY[0x277D84F90]);
  }

  v2 = sub_265B77030();
  v4 = sub_265B5F45C(v2, v3);

  if (!v4)
  {
    sub_265B6624C(MEMORY[0x277D84F90]);
  }

  sub_265B5F484(0x7453726961706572, 0xEB00000000657461);
  sub_265B5F470(0xD00000000000001ELL, 0x8000000265B7A420);
  v5 = [a1 aa_primaryEmail];
  if (v5)
  {
    v6 = v5;
    sub_265B77030();
  }

  v7 = [a1 username];
  if (v7)
  {
    v8 = v7;
    sub_265B77030();
  }

  v9 = [a1 aa_appleIDAliases];
  if (v9)
  {
    v10 = v9;
    sub_265B77140();
  }

  v11 = [a1 aa_personID];
  if (v11)
  {
    v12 = v11;
    sub_265B77030();
  }

  v13 = [a1 aa_altDSID];
  if (v13)
  {
    v14 = v13;
    sub_265B77030();
  }

  v15 = [a1 aa_firstName];
  if (v15)
  {
    v16 = v15;
    sub_265B77030();
  }

  v17 = [a1 aa_middleName];
  if (v17)
  {
    v18 = v17;
    sub_265B77030();
  }

  v19 = [a1 aa_lastName];
  if (v19)
  {
    v20 = v19;
    sub_265B77030();
  }

  v21 = [a1 aa_accountClass];
  if (v21)
  {
    v22 = v21;
    sub_265B77030();

    [a1 aa_isUsingCloudDocs];
    [a1 aa_isPrimaryEmailVerified];
    [a1 aa_isManagedAppleID];
    [a1 aa_isNotesMigrated];
    [a1 aa_isRemindersMigrated];
    [a1 aa_isSandboxAccount];
    [a1 aa_isFamilyEligible];
    [a1 aa_hasOptionalTerms];
    [a1 aa_needsToVerifyTerms];
    sub_265B767F0();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_265B60A80()
{
  v0 = sub_265B66028(MEMORY[0x277D84F90]);
  v1 = sub_265B76800();
  if (v2)
  {
    v3 = MEMORY[0x277D837D0];
  }

  else
  {
    v1 = 0;
    v3 = 0;
    v72 = 0;
  }

  v70 = v1;
  v71 = v2;
  v73 = v3;
  sub_265B42BBC(&v70, &v67);
  if (v68)
  {
    sub_265B5FC9C(&v67, v69);
    sub_265B4073C(v69, &v67);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v67, 0x457972616D697270, 0xEC0000006C69616DLL, isUniquelyReferenced_nonNull_native);
    __swift_destroy_boxed_opaque_existential_1(v69);
  }

  else
  {
    sub_265B42C2C(&v67);
  }

  sub_265B42C2C(&v70);
  v5 = sub_265B767B0();
  if (v6)
  {
    v7 = MEMORY[0x277D837D0];
  }

  else
  {
    v5 = 0;
    v7 = 0;
    v72 = 0;
  }

  v70 = v5;
  v71 = v6;
  v73 = v7;
  sub_265B42BBC(&v70, &v67);
  if (v68)
  {
    sub_265B5FC9C(&v67, v69);
    sub_265B4073C(v69, &v67);
    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v67, 0x6449656C707061, 0xE700000000000000, v8);
    __swift_destroy_boxed_opaque_existential_1(v69);
  }

  else
  {
    sub_265B42C2C(&v67);
  }

  sub_265B42C2C(&v70);
  v9 = sub_265B76850();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035B10, &qword_265B79468);
  v73 = v10;
  v70 = v9;
  sub_265B42BBC(&v70, &v67);
  if (v68)
  {
    sub_265B5FC9C(&v67, v69);
    sub_265B4073C(v69, &v67);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v67, 0x414449656C707061, 0xEE0073657361696CLL, v11);
    __swift_destroy_boxed_opaque_existential_1(v69);
  }

  else
  {
    sub_265B42C2C(&v67);
  }

  sub_265B42C2C(&v70);
  v12 = sub_265B76840();
  if (v13)
  {
    v14 = MEMORY[0x277D837D0];
  }

  else
  {
    v12 = 0;
    v14 = 0;
    v72 = 0;
  }

  v70 = v12;
  v71 = v13;
  v73 = v14;
  sub_265B42BBC(&v70, &v67);
  if (v68)
  {
    sub_265B5FC9C(&v67, v69);
    sub_265B4073C(v69, &v67);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v67, 0x44496E6F73726570, 0xE800000000000000, v15);
    __swift_destroy_boxed_opaque_existential_1(v69);
  }

  else
  {
    sub_265B42C2C(&v67);
  }

  sub_265B42C2C(&v70);
  v16 = sub_265B768D0();
  if (v17)
  {
    v18 = MEMORY[0x277D837D0];
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v72 = 0;
  }

  v70 = v16;
  v71 = v17;
  v73 = v18;
  sub_265B42BBC(&v70, &v67);
  if (v68)
  {
    sub_265B5FC9C(&v67, v69);
    sub_265B4073C(v69, &v67);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v67, 0x44495344746C61, 0xE700000000000000, v19);
    __swift_destroy_boxed_opaque_existential_1(v69);
  }

  else
  {
    sub_265B42C2C(&v67);
  }

  sub_265B42C2C(&v70);
  v20 = sub_265B768F0();
  if (v21)
  {
    v22 = MEMORY[0x277D837D0];
  }

  else
  {
    v20 = 0;
    v22 = 0;
    v72 = 0;
  }

  v70 = v20;
  v71 = v21;
  v73 = v22;
  sub_265B42BBC(&v70, &v67);
  if (v68)
  {
    sub_265B5FC9C(&v67, v69);
    sub_265B4073C(v69, &v67);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v67, 0x6D614E7473726966, 0xE900000000000065, v23);
    __swift_destroy_boxed_opaque_existential_1(v69);
  }

  else
  {
    sub_265B42C2C(&v67);
  }

  sub_265B42C2C(&v70);
  v24 = sub_265B767C0();
  if (v25)
  {
    v26 = MEMORY[0x277D837D0];
  }

  else
  {
    v24 = 0;
    v26 = 0;
    v72 = 0;
  }

  v70 = v24;
  v71 = v25;
  v73 = v26;
  sub_265B42BBC(&v70, &v67);
  if (v68)
  {
    sub_265B5FC9C(&v67, v69);
    sub_265B4073C(v69, &v67);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v67, 0x614E656C6464696DLL, 0xEA0000000000656DLL, v27);
    __swift_destroy_boxed_opaque_existential_1(v69);
  }

  else
  {
    sub_265B42C2C(&v67);
  }

  sub_265B42C2C(&v70);
  v28 = sub_265B768E0();
  if (v29)
  {
    v30 = MEMORY[0x277D837D0];
  }

  else
  {
    v28 = 0;
    v30 = 0;
    v72 = 0;
  }

  v70 = v28;
  v71 = v29;
  v73 = v30;
  sub_265B42BBC(&v70, &v67);
  if (v68)
  {
    sub_265B5FC9C(&v67, v69);
    sub_265B4073C(v69, &v67);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v67, 0x656D614E7473616CLL, 0xE800000000000000, v31);
    __swift_destroy_boxed_opaque_existential_1(v69);
  }

  else
  {
    sub_265B42C2C(&v67);
  }

  v32 = MEMORY[0x277D837D0];
  sub_265B42C2C(&v70);
  v33 = sub_265B767D0();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035B20, &qword_265B79478);
  v70 = v33;
  sub_265B42BBC(&v70, &v67);
  if (v68)
  {
    sub_265B5FC9C(&v67, v69);
    sub_265B4073C(v69, &v67);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v67, 0x6E496E6F69676572, 0xEA00000000006F66, v34);
    __swift_destroy_boxed_opaque_existential_1(v69);
  }

  else
  {
    sub_265B42C2C(&v67);
  }

  sub_265B42C2C(&v70);
  v35 = sub_265B767E0();
  v73 = v32;
  v70 = v35;
  v71 = v36;
  sub_265B42BBC(&v70, &v67);
  if (v68)
  {
    sub_265B5FC9C(&v67, v69);
    sub_265B4073C(v69, &v67);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v67, 0x43746E756F636361, 0xEC0000007373616CLL, v37);
    __swift_destroy_boxed_opaque_existential_1(v69);
  }

  else
  {
    sub_265B42C2C(&v67);
  }

  sub_265B42C2C(&v70);
  v38 = sub_265B76880();
  v39 = MEMORY[0x277D839B0];
  v73 = MEMORY[0x277D839B0];
  LOBYTE(v70) = v38 & 1;
  sub_265B42BBC(&v70, &v67);
  if (v68)
  {
    sub_265B5FC9C(&v67, v69);
    sub_265B4073C(v69, &v67);
    v40 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v67, 0x756F6C4373657375, 0xED000073636F4464, v40);
    __swift_destroy_boxed_opaque_existential_1(v69);
  }

  else
  {
    sub_265B42C2C(&v67);
  }

  sub_265B42C2C(&v70);
  v41 = sub_265B768A0();
  v73 = v39;
  LOBYTE(v70) = v41 & 1;
  sub_265B42BBC(&v70, &v67);
  if (v68)
  {
    sub_265B5FC9C(&v67, v69);
    sub_265B4073C(v69, &v67);
    v42 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v67, 0xD000000000000014, 0x8000000265B7A440, v42);
    __swift_destroy_boxed_opaque_existential_1(v69);
  }

  else
  {
    sub_265B42C2C(&v67);
  }

  sub_265B42C2C(&v70);
  v43 = sub_265B76790();
  v73 = v39;
  LOBYTE(v70) = v43 & 1;
  sub_265B42BBC(&v70, &v67);
  if (v68)
  {
    sub_265B5FC9C(&v67, v69);
    sub_265B4073C(v69, &v67);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v67, 0xD000000000000010, 0x8000000265B79E80, v44);
    __swift_destroy_boxed_opaque_existential_1(v69);
  }

  else
  {
    sub_265B42C2C(&v67);
  }

  sub_265B42C2C(&v70);
  v45 = sub_265B76810();
  v73 = v39;
  LOBYTE(v70) = v45 & 1;
  sub_265B42BBC(&v70, &v67);
  if (v68)
  {
    sub_265B5FC9C(&v67, v69);
    sub_265B4073C(v69, &v67);
    v46 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v67, 0x67694D7365746F6ELL, 0xED00006465746172, v46);
    __swift_destroy_boxed_opaque_existential_1(v69);
  }

  else
  {
    sub_265B42C2C(&v67);
  }

  sub_265B42C2C(&v70);
  v47 = sub_265B76870();
  v73 = v39;
  LOBYTE(v70) = v47 & 1;
  sub_265B42BBC(&v70, &v67);
  if (v68)
  {
    sub_265B5FC9C(&v67, v69);
    sub_265B4073C(v69, &v67);
    v48 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v67, 0xD000000000000011, 0x8000000265B7A3E0, v48);
    __swift_destroy_boxed_opaque_existential_1(v69);
  }

  else
  {
    sub_265B42C2C(&v67);
  }

  sub_265B42C2C(&v70);
  v49 = sub_265B767A0();
  v73 = v39;
  LOBYTE(v70) = v49 & 1;
  sub_265B42BBC(&v70, &v67);
  if (v68)
  {
    sub_265B5FC9C(&v67, v69);
    sub_265B4073C(v69, &v67);
    v50 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v67, 0x6F62646E61537369, 0xED00007463634178, v50);
    __swift_destroy_boxed_opaque_existential_1(v69);
  }

  else
  {
    sub_265B42C2C(&v67);
  }

  sub_265B42C2C(&v70);
  v51 = sub_265B76830();
  v73 = v39;
  LOBYTE(v70) = v51 & 1;
  sub_265B42BBC(&v70, &v67);
  if (v68)
  {
    sub_265B5FC9C(&v67, v69);
    sub_265B4073C(v69, &v67);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v67, 0x6C45796C696D6166, 0xEE00656C62696769, v52);
    __swift_destroy_boxed_opaque_existential_1(v69);
  }

  else
  {
    sub_265B42C2C(&v67);
  }

  sub_265B42C2C(&v70);
  v53 = sub_265B76820();
  v73 = v39;
  LOBYTE(v70) = v53 & 1;
  sub_265B42BBC(&v70, &v67);
  if (v68)
  {
    sub_265B5FC9C(&v67, v69);
    sub_265B4073C(v69, &v67);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v67, 0xD000000000000010, 0x8000000265B7A3C0, v54);
    __swift_destroy_boxed_opaque_existential_1(v69);
  }

  else
  {
    sub_265B42C2C(&v67);
  }

  sub_265B42C2C(&v70);
  v55 = sub_265B76860();
  v73 = v39;
  LOBYTE(v70) = v55 & 1;
  sub_265B42BBC(&v70, &v67);
  if (v68)
  {
    sub_265B5FC9C(&v67, v69);
    sub_265B4073C(v69, &v67);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v67, 0xD000000000000012, 0x8000000265B7A400, v56);
    __swift_destroy_boxed_opaque_existential_1(v69);
  }

  else
  {
    sub_265B42C2C(&v67);
  }

  sub_265B42C2C(&v70);
  v57 = sub_265B77030();
  v59 = v58;
  v60 = sub_265B768B0();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035B18, &qword_265B79470);
  v70 = v60;
  sub_265B42BBC(&v70, &v67);
  if (v68)
  {
    sub_265B5FC9C(&v67, v69);
    sub_265B4073C(v69, &v67);
    v61 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v67, v57, v59, v61);

    __swift_destroy_boxed_opaque_existential_1(v69);
  }

  else
  {

    sub_265B42C2C(&v67);
  }

  sub_265B42C2C(&v70);
  v62 = sub_265B76890();
  v73 = MEMORY[0x277D83E88];
  v70 = v62;
  sub_265B42BBC(&v70, &v67);
  if (v68)
  {
    sub_265B5FC9C(&v67, v69);
    sub_265B4073C(v69, &v67);
    v63 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v67, 0x7453726961706572, 0xEB00000000657461, v63);
    __swift_destroy_boxed_opaque_existential_1(v69);
  }

  else
  {
    sub_265B42C2C(&v67);
  }

  sub_265B42C2C(&v70);
  v64 = sub_265B768C0();
  v73 = v10;
  v70 = v64;
  sub_265B42BBC(&v70, &v67);
  if (v68)
  {
    sub_265B5FC9C(&v67, v69);
    sub_265B4073C(v69, &v67);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v67, 0xD00000000000001ELL, 0x8000000265B7A420, v65);
    __swift_destroy_boxed_opaque_existential_1(v69);
  }

  else
  {
    sub_265B42C2C(&v67);
  }

  sub_265B42C2C(&v70);
  return v0;
}

unint64_t sub_265B618DC()
{
  result = qword_280035B38;
  if (!qword_280035B38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280035B38);
  }

  return result;
}

char *sub_265B619D4(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC21SeymourClientServices17AppRecordObserver_onRecordUpdated];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v2[OBJC_IVAR____TtC21SeymourClientServices17AppRecordObserver_bundleIdentifier];
  *v6 = a1;
  *(v6 + 1) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C08, &qword_265B795C8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_265B78400;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_265B77130();

  v9 = [objc_opt_self() queryForBundleIDs_];

  *&v2[OBJC_IVAR____TtC21SeymourClientServices17AppRecordObserver_query] = v9;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for AppRecordObserver();
  v10 = objc_msgSendSuper2(&v12, sel_init);
  [*&v10[OBJC_IVAR____TtC21SeymourClientServices17AppRecordObserver_query] setObserver_];
  return v10;
}

id sub_265B61B20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppRecordObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_265B61BDC(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = a3;
  v24 = a2;
  v22 = a1;
  v3 = sub_265B76F70();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_265B76FA0();
  v7 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_265B76F80();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265B5C6B8(0, &qword_280035CA0, 0x277D85C78);
  (*(v11 + 104))(v13, *MEMORY[0x277D851B8], v10);
  v14 = sub_265B772B0();
  (*(v11 + 8))(v13, v10);
  v15 = swift_allocObject();
  v16 = v22;
  v17 = v23;
  v15[2] = v23;
  v15[3] = v16;
  v15[4] = v24;
  aBlock[4] = sub_265B6331C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_265B639B8;
  aBlock[3] = &block_descriptor_1;
  v18 = _Block_copy(aBlock);
  v19 = v17;

  sub_265B76F90();
  v26 = MEMORY[0x277D84F90];
  sub_265B63328();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035BD8, &qword_265B795B0);
  sub_265B63380();
  sub_265B77370();
  MEMORY[0x26676B680](0, v9, v6, v18);
  _Block_release(v18);

  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v25);
}

void sub_265B61F40(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_265B76F60();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265B76E50();
  sub_265B76F40();
  (*(v7 + 8))(v9, v6);
  v10 = *&a1[OBJC_IVAR____TtC21SeymourClientServices17AppRecordObserver_query];
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a1;
  aBlock[4] = sub_265B633E4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_265B62ED8;
  aBlock[3] = &block_descriptor_13;
  v12 = _Block_copy(aBlock);

  v13 = a1;

  [v10 executeQueryWithResultHandler_];
  _Block_release(v12);
}

uint64_t sub_265B62108(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *p_aBlock)
{
  v76 = a3;
  v77 = a4;
  v8 = sub_265B76F70();
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v79 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_265B76FA0();
  v80 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v78 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_265B76F60();
  v74 = *(v13 - 8);
  v75 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v72 = &v70 - v17;
  if (a1)
  {
    v73 = v11;
    aBlock = MEMORY[0x277D84F90];
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_31;
    }

    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    if (v19)
    {
      v70 = v9;
      v71 = v8;
      v20 = 0;
      v8 = p_aBlock + OBJC_IVAR____TtC21SeymourClientServices17AppRecordObserver_bundleIdentifier;
      v81 = a1 & 0xC000000000000001;
      while (1)
      {
        if (v81)
        {
          v21 = MEMORY[0x26676B830](v20, a1);
        }

        else
        {
          if (v20 >= *(v18 + 16))
          {
            goto LABEL_30;
          }

          v21 = *(a1 + 8 * v20 + 32);
        }

        v22 = v21;
        v23 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          v19 = sub_265B774C0();
          goto LABEL_4;
        }

        v9 = v19;
        v24 = a1;
        v25 = [v21 bundleID];
        v26 = sub_265B77030();
        p_aBlock = v27;

        if (v26 == *v8 && p_aBlock == *(v8 + 1))
        {

          v19 = v9;
        }

        else
        {
          v29 = sub_265B77580();

          v19 = v9;
          if ((v29 & 1) == 0)
          {

            goto LABEL_8;
          }
        }

        p_aBlock = &aBlock;
        sub_265B77470();
        sub_265B774A0();
        sub_265B774B0();
        sub_265B77480();
LABEL_8:
        a1 = v24;
        ++v20;
        if (v23 == v19)
        {
          v30 = aBlock;
          v9 = v70;
          v8 = v71;
          goto LABEL_25;
        }
      }
    }

    v30 = MEMORY[0x277D84F90];
LABEL_25:
    v50 = v72;
    sub_265B76E50();

    v51 = sub_265B76F50();
    v52 = sub_265B77280();

    v53 = os_log_type_enabled(v51, v52);
    v54 = v73;
    if (v53)
    {
      v55 = v30;
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      aBlock = v57;
      *v56 = 141558274;
      *(v56 + 4) = 1752392040;
      *(v56 + 12) = 2080;
      v58 = sub_265B5C6B8(0, &qword_280035BE8, 0x277CEC328);
      v59 = MEMORY[0x26676B530](a1, v58);
      v61 = sub_265B402B4(v59, v60, &aBlock);

      *(v56 + 14) = v61;
      _os_log_impl(&dword_265B3E000, v51, v52, "Filtering %{mask.hash}s", v56, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x26676C0C0](v57, -1, -1);
      v62 = v56;
      v30 = v55;
      v54 = v73;
      MEMORY[0x26676C0C0](v62, -1, -1);
    }

    (*(v74 + 8))(v50, v75);
    v63 = v80;
    sub_265B5C6B8(0, &qword_280035CA0, 0x277D85C78);
    v64 = sub_265B77290();
    v65 = swift_allocObject();
    v66 = v76;
    v65[2] = v30;
    v65[3] = v66;
    v65[4] = v77;
    v87 = sub_265B633FC;
    v88 = v65;
    aBlock = MEMORY[0x277D85DD0];
    v84 = 1107296256;
    v85 = sub_265B639B8;
    v86 = &block_descriptor_25;
    v67 = _Block_copy(&aBlock);

    v68 = v78;
    sub_265B76F90();
    aBlock = MEMORY[0x277D84F90];
    sub_265B63328();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035BD8, &qword_265B795B0);
    sub_265B63380();
    v69 = v79;
    sub_265B77370();
    MEMORY[0x26676B680](0, v68, v69, v67);
    _Block_release(v67);

    (*(v9 + 8))(v69, v8);
    return (*(v63 + 8))(v68, v54);
  }

  else
  {
    sub_265B76E50();
    v31 = a2;
    v32 = sub_265B76F50();
    v33 = sub_265B77270();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v73 = v11;
      v35 = v9;
      v36 = v34;
      v37 = swift_slowAlloc();
      v82 = a2;
      aBlock = v37;
      *v36 = 136446210;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280035BF0, &qword_265B795B8);
      v38 = sub_265B772E0();
      v40 = sub_265B402B4(v38, v39, &aBlock);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_265B3E000, v32, v33, "Failed to execute query: %{public}s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x26676C0C0](v37, -1, -1);
      v41 = v36;
      v9 = v35;
      v11 = v73;
      MEMORY[0x26676C0C0](v41, -1, -1);
    }

    (*(v74 + 8))(v16, v75);
    sub_265B5C6B8(0, &qword_280035CA0, 0x277D85C78);
    v42 = sub_265B77290();
    v43 = swift_allocObject();
    v44 = v77;
    v43[2] = v76;
    v43[3] = v44;
    v43[4] = a2;
    v87 = sub_265B633F0;
    v88 = v43;
    aBlock = MEMORY[0x277D85DD0];
    v84 = 1107296256;
    v85 = sub_265B639B8;
    v86 = &block_descriptor_19;
    v45 = _Block_copy(&aBlock);

    v46 = a2;

    v47 = v78;
    sub_265B76F90();
    aBlock = MEMORY[0x277D84F90];
    sub_265B63328();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035BD8, &qword_265B795B0);
    sub_265B63380();
    v48 = v79;
    sub_265B77370();
    MEMORY[0x26676B680](0, v47, v48, v45);
    _Block_release(v45);

    (*(v9 + 8))(v48, v8);
    return (*(v80 + 8))(v47, v11);
  }
}

uint64_t sub_265B629A8(void (*a1)(void *), int a2, id a3)
{
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    sub_265B63470();
    v5 = swift_allocError();
    *v6 = 5;
  }

  v9[0] = v5;
  v10 = 1;
  v7 = a3;
  a1(v9);
  return sub_265B63408(v9);
}

uint64_t sub_265B62A38(unint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v6 = sub_265B76F60();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v44[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v44[-v11];
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_11:
    sub_265B76E50();

    v33 = sub_265B76F50();
    v34 = sub_265B77280();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v49[0] = v36;
      *v35 = 141558274;
      *(v35 + 4) = 1752392040;
      *(v35 + 12) = 2080;
      v37 = sub_265B5C6B8(0, &qword_280035BE8, 0x277CEC328);
      v38 = MEMORY[0x26676B530](a1, v37);
      v48 = v6;
      v40 = v7;
      v41 = sub_265B402B4(v38, v39, v49);

      *(v35 + 14) = v41;
      _os_log_impl(&dword_265B3E000, v33, v34, "No app found from %{mask.hash}s!", v35, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x26676C0C0](v36, -1, -1);
      MEMORY[0x26676C0C0](v35, -1, -1);

      (*(v40 + 8))(v10, v48);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    sub_265B63470();
    v42 = swift_allocError();
    *v43 = 3;
    v49[0] = v42;
    v50 = 1;
    a2(v49);
    return sub_265B63408(v49);
  }

  result = sub_265B774C0();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x26676B830](0, a1);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(a1 + 32);
LABEL_6:
    v15 = v14;
    sub_265B76E50();
    v16 = v15;
    v17 = sub_265B76F50();
    v18 = sub_265B77280();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v49[0] = v46;
      *v19 = 141558274;
      *(v19 + 4) = 1752392040;
      *(v19 + 12) = 2080;
      v20 = v16;
      v47 = a3;
      v21 = v20;
      v22 = [v20 description];
      v48 = v6;
      v23 = v22;
      v24 = sub_265B77030();
      v45 = v18;
      v25 = v7;
      v26 = v24;
      v27 = a2;
      v29 = v28;

      v30 = sub_265B402B4(v26, v29, v49);
      a2 = v27;

      *(v19 + 14) = v30;
      _os_log_impl(&dword_265B3E000, v17, v45, "Found app %{mask.hash}s!", v19, 0x16u);
      v31 = v46;
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x26676C0C0](v31, -1, -1);
      MEMORY[0x26676C0C0](v19, -1, -1);

      (*(v25 + 8))(v12, v48);
    }

    else
    {

      (*(v7 + 8))(v12, v6);
    }

    v49[3] = sub_265B5C6B8(0, &qword_280035BE8, 0x277CEC328);
    v49[4] = &protocol witness table for ASDApp;
    v49[0] = v16;
    v50 = 0;
    v32 = v16;
    a2(v49);

    return sub_265B63408(v49);
  }

  __break(1u);
  return result;
}

uint64_t sub_265B62ED8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_265B5C6B8(0, &qword_280035BE8, 0x277CEC328);
    v4 = sub_265B77140();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_265B62F7C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_265B62FC0()
{
  v1 = (v0 + OBJC_IVAR____TtC21SeymourClientServices17AppRecordObserver_onRecordUpdated);
  swift_beginAccess();
  v2 = *v1;
  sub_265B469D8(*v1, v1[1]);
  return v2;
}

uint64_t sub_265B6301C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21SeymourClientServices17AppRecordObserver_onRecordUpdated);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_265B63998(v6, v7);
}

uint64_t sub_265B63120()
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280035BC0, &qword_265B795A8);

  return sub_265B76BB0();
}

void sub_265B631AC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong + OBJC_IVAR____TtC21SeymourClientServices17AppRecordObserver_onRecordUpdated;
    v5 = Strong;
    swift_beginAccess();
    v7 = *v4;
    v6 = *(v4 + 8);
    sub_265B469D8(v7, v6);

    if (v7)
    {
      v9[3] = sub_265B5C6B8(0, &qword_280035BE8, 0x277CEC328);
      v9[4] = &protocol witness table for ASDApp;
      v9[0] = a2;
      v8 = a2;
      v7(v9);
      sub_265B63998(v7, v6);
      __swift_destroy_boxed_opaque_existential_1(v9);
    }
  }
}

unint64_t sub_265B63328()
{
  result = qword_280035BD0;
  if (!qword_280035BD0)
  {
    sub_265B76F70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035BD0);
  }

  return result;
}

unint64_t sub_265B63380()
{
  result = qword_280035BE0;
  if (!qword_280035BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280035BD8, &qword_265B795B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035BE0);
  }

  return result;
}

uint64_t sub_265B63408(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C90, &qword_265B795C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_265B63470()
{
  result = qword_280035C00;
  if (!qword_280035C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035C00);
  }

  return result;
}

uint64_t sub_265B634C4(unint64_t a1)
{
  v2 = sub_265B76F70();
  v3 = *(v2 - 1);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_265B76FA0();
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v33 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v29 = v5;
    v30 = v6;
    v31 = v3;
    v32 = v2;
    v5 = 0;
    v2 = (v35 + OBJC_IVAR____TtC21SeymourClientServices17AppRecordObserver_bundleIdentifier);
    v36 = a1 & 0xC000000000000001;
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v36)
      {
        v10 = MEMORY[0x26676B830](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v10 = *(a1 + 8 * v5 + 32);
      }

      v11 = v10;
      v12 = (v5 + 1);
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        v8 = sub_265B774C0();
        goto LABEL_3;
      }

      v3 = v8;
      v13 = [v10 bundleID];
      v14 = sub_265B77030();
      v16 = v15;

      if (v14 == *v2 && v16 == v2[1])
      {

        v8 = v3;
      }

      else
      {
        v18 = sub_265B77580();

        v8 = v3;
        if ((v18 & 1) == 0)
        {

          goto LABEL_7;
        }
      }

      sub_265B77470();
      sub_265B774A0();
      sub_265B774B0();
      sub_265B77480();
LABEL_7:
      ++v5;
      if (v12 == v8)
      {
        result = aBlock[0];
        v3 = v31;
        v2 = v32;
        v5 = v29;
        v6 = v30;
        break;
      }
    }
  }

  if (result < 0 || (result & 0x4000000000000000) != 0)
  {
    v27 = result;
    v28 = sub_265B774C0();
    result = v27;
    if (v28)
    {
      goto LABEL_23;
    }

LABEL_31:
  }

  if (!*(result + 16))
  {
    goto LABEL_31;
  }

LABEL_23:
  if ((result & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x26676B830](0, result);
    goto LABEL_26;
  }

  if (*(result + 16))
  {
    v19 = *(result + 32);
LABEL_26:
    v20 = v19;

    sub_265B5C6B8(0, &qword_280035CA0, 0x277D85C78);
    v21 = sub_265B77290();
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v20;
    aBlock[4] = sub_265B63990;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_265B639B8;
    aBlock[3] = &block_descriptor_34;
    v24 = _Block_copy(aBlock);
    v25 = v20;

    v26 = v33;
    sub_265B76F90();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_265B63328();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035BD8, &qword_265B795B0);
    sub_265B63380();
    sub_265B77370();
    MEMORY[0x26676B680](0, v26, v5, v24);
    _Block_release(v24);

    (*(v3 + 8))(v5, v2);
    return (*(v34 + 8))(v26, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_265B63998(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void PersonalizationAwardProgressReference.init(fromACHProgressUpdate:modalityReferences:)(void *a1, uint64_t a2)
{
  v4 = [a1 goalQuantity];
  if (v4)
  {
    v5 = v4;
    sub_265B45A6C();
  }

  v6 = [a1 progressQuantity];
  if (v6)
  {
    v7 = v6;
    sub_265B45A6C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C10, &qword_265B795D0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000012;
  *(inited + 16) = xmmword_265B78400;
  *(inited + 40) = 0x8000000265B7A560;
  v9 = ACHAchievementProgressUpdate.modalityIdentifier(from:)(a2);
  v11 = v10;

  if (v11)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  v14 = HIBYTE(v13) & 0xF;
  v15 = v12 & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v16 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    v40 = 0;
    LOBYTE(v39) = 1;
LABEL_76:
    *(inited + 48) = v40;
    *(inited + 52) = v39 & 1;
    v41 = sub_265B66554(inited);
    swift_setDeallocating();
    sub_265B66668(inited + 32);
    sub_265B63E44(v41);

    ACHAchievementProgressUpdate.isRequired.getter();
    v42 = [a1 templateUniqueName];
    sub_265B77030();

    sub_265B76A00();
    return;
  }

  if ((v13 & 0x1000000000000000) != 0)
  {
    v20 = sub_265B654A8(v12, v13, 10);

    v39 = (v20 >> 32) & 1;
LABEL_73:
    if (v39)
    {
      v40 = 0;
    }

    else
    {
      v40 = v20;
    }

    goto LABEL_76;
  }

  if ((v13 & 0x2000000000000000) == 0)
  {
    if ((v12 & 0x1000000000000000) != 0)
    {
      v17 = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v17 = sub_265B77460();
    }

    v18 = *v17;
    if (v18 == 43)
    {
      if (v15 >= 1)
      {
        v27 = v15 - 1;
        if (v15 != 1)
        {
          LODWORD(v20) = 0;
          if (v17)
          {
            v28 = v17 + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_71;
              }

              v30 = 10 * v20;
              if ((v30 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_71;
              }

              LODWORD(v20) = v30 + v29;
              if (__CFADD__(v30, v29))
              {
                goto LABEL_71;
              }

              ++v28;
              if (!--v27)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_72;
        }

        goto LABEL_71;
      }

      goto LABEL_82;
    }

    if (v18 != 45)
    {
      if (v15)
      {
        LODWORD(v20) = 0;
        if (v17)
        {
          while (1)
          {
            v34 = *v17 - 48;
            if (v34 > 9)
            {
              goto LABEL_71;
            }

            v35 = 10 * v20;
            if ((v35 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_71;
            }

            LODWORD(v20) = v35 + v34;
            if (__CFADD__(v35, v34))
            {
              goto LABEL_71;
            }

            ++v17;
            if (!--v15)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_72;
      }

LABEL_71:
      LODWORD(v20) = 0;
      LOBYTE(v17) = 1;
      goto LABEL_72;
    }

    if (v15 >= 1)
    {
      v19 = v15 - 1;
      if (v15 != 1)
      {
        LODWORD(v20) = 0;
        if (v17)
        {
          v21 = v17 + 1;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              goto LABEL_71;
            }

            v23 = 10 * v20;
            if ((v23 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_71;
            }

            LODWORD(v20) = v23 - v22;
            if (v23 < v22)
            {
              goto LABEL_71;
            }

            ++v21;
            if (!--v19)
            {
              goto LABEL_70;
            }
          }
        }

LABEL_72:
        v44 = v17;
        LOBYTE(v39) = v17;

        goto LABEL_73;
      }

      goto LABEL_71;
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v43[0] = v12;
  v43[1] = v13 & 0xFFFFFFFFFFFFFFLL;
  if (v12 != 43)
  {
    if (v12 != 45)
    {
      if (v14)
      {
        LODWORD(v20) = 0;
        v36 = v43;
        while (1)
        {
          v37 = *v36 - 48;
          if (v37 > 9)
          {
            break;
          }

          v38 = 10 * v20;
          if ((v38 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v20) = v38 + v37;
          if (__CFADD__(v38, v37))
          {
            break;
          }

          ++v36;
          if (!--v14)
          {
LABEL_70:
            LOBYTE(v17) = 0;
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    if (v14)
    {
      v17 = (v14 - 1);
      if (v14 != 1)
      {
        LODWORD(v20) = 0;
        v24 = v43 + 1;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v20;
          if ((v26 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v20) = v26 - v25;
          if (v26 < v25)
          {
            break;
          }

          ++v24;
          if (!--v17)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    goto LABEL_81;
  }

  if (v14)
  {
    v17 = (v14 - 1);
    if (v14 != 1)
    {
      LODWORD(v20) = 0;
      v31 = v43 + 1;
      while (1)
      {
        v32 = *v31 - 48;
        if (v32 > 9)
        {
          break;
        }

        v33 = 10 * v20;
        if ((v33 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v20) = v33 + v32;
        if (__CFADD__(v33, v32))
        {
          break;
        }

        ++v31;
        if (!--v17)
        {
          goto LABEL_72;
        }
      }
    }

    goto LABEL_71;
  }

LABEL_83:
  __break(1u);
}

uint64_t sub_265B63E44(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v30 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = v10 | (v9 << 6);
        v12 = *(a1 + 56) + 8 * v11;
        if ((*(v12 + 4) & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          goto LABEL_7;
        }
      }

      v14 = (*(a1 + 48) + 16 * v11);
      v28 = v14[1];
      v29 = *v14;
      v27 = *v12;
      v15 = *(v2 + 16);
      if (*(v2 + 24) <= v15)
      {

        sub_265B64BC4(v15 + 1, 1);
        v2 = v30;
      }

      else
      {
      }

      sub_265B77600();
      sub_265B77070();
      result = sub_265B77620();
      v16 = v2 + 64;
      v17 = -1 << *(v2 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v2 + 64 + 8 * (v18 >> 6))) == 0)
      {
        break;
      }

      v20 = __clz(__rbit64((-1 << v18) & ~*(v2 + 64 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
      v21 = v28;
LABEL_24:
      *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v26 = (*(v2 + 48) + 16 * v20);
      *v26 = v29;
      v26[1] = v21;
      *(*(v2 + 56) + 4 * v20) = v27;
      ++*(v2 + 16);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v22 = 0;
    v23 = (63 - v17) >> 6;
    v21 = v28;
    while (++v19 != v23 || (v22 & 1) == 0)
    {
      v24 = v19 == v23;
      if (v19 == v23)
      {
        v19 = 0;
      }

      v22 |= v24;
      v25 = *(v16 + 8 * v19);
      if (v25 != -1)
      {
        v20 = __clz(__rbit64(~v25)) + (v19 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v13 >= v7)
      {

        return v2;
      }

      v6 = *(v3 + 8 * v13);
      ++v9;
      if (v6)
      {
        v9 = v13;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_265B64094(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359F8, &qword_265B78D70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_265B64108(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C48, &qword_265B79608);
  v33 = v4;
  result = sub_265B774E0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_265B77600();
      sub_265B77070();
      result = sub_265B77620();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_265B643C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C58, &qword_265B79618);
  v33 = v4;
  result = sub_265B774E0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_265B5FC9C(v24, v34);
      }

      else
      {
        sub_265B4073C(v24, v34);
      }

      sub_265B77600();
      sub_265B77070();
      result = sub_265B77620();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_265B5FC9C(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_265B6468C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_265B774E0();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_265B77600();
      sub_265B77070();
      result = sub_265B77620();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_265B64924(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C30, &qword_265B795F0);
  v34 = v4;
  result = sub_265B774E0();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_265B77600();
      sub_265B77070();
      result = sub_265B77620();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_265B64BC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C20, &qword_265B795E0);
  v34 = v4;
  result = sub_265B774E0();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_265B77600();
      sub_265B77070();
      result = sub_265B77620();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_265B64E64(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_265B77580())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unsigned __int8 *sub_265B64F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_265B770F0();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_265B65A24(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_265B77460();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_265B654A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_265B770F0();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_265B65A24(result, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_265B77460();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        v15 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
        v15 = 0;
LABEL_129:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if ((v50 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if ((v59 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v15 = 0;
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_265B65A24(uint64_t a1, unint64_t a2)
{
  v2 = sub_265B77100();
  v6 = sub_265B65AA4(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_265B65AA4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_265B77310();
    if (!v9 || (v10 = v9, v11 = sub_265B64094(v9, 0), v12 = sub_265B65BFC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_265B77060();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_265B77060();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_265B77460();
LABEL_4:

  return sub_265B77060();
}

unint64_t sub_265B65BFC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_265B65E1C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_265B770C0();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_265B77460();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_265B65E1C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_265B770A0();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_265B65E1C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_265B770D0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26676B490](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_265B65E98(uint64_t a1, uint64_t a2)
{
  sub_265B77600();
  sub_265B77070();
  v4 = sub_265B77620();

  return sub_265B64E64(a1, a2, v4);
}

unint64_t sub_265B65F10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C48, &qword_265B79608);
    v3 = sub_265B774F0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_265B65E98(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_265B66028(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C58, &qword_265B79618);
    v3 = sub_265B774F0();
    v4 = a1 + 32;

    while (1)
    {
      sub_265B666D0(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_265B65E98(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_265B5FC9C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_265B66138(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C38, &qword_265B795F8);
    v3 = sub_265B774F0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_265B65E98(v5, v6);
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

unint64_t sub_265B6624C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C30, &qword_265B795F0);
    v3 = sub_265B774F0();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_265B65E98(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_265B66348(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C50, &qword_265B79610);
    v3 = sub_265B774F0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_265B65E98(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_265B66460(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_265B774F0();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_265B65E98(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_265B66554(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C28, &qword_265B795E8);
    v3 = sub_265B774F0();

    for (i = (a1 + 52); ; i += 24)
    {
      v5 = *(i - 20);
      v6 = *(i - 12);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_265B65E98(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 8 * result;
      *v12 = v7;
      *(v12 + 4) = v8;
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

uint64_t sub_265B66668(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C18, &qword_265B795D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265B666D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C60, &qword_265B79620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265B66740(id *a1)
{
  v1 = [*a1 templateUniqueName];
  sub_265B77030();

  sub_265B43C20();
  v2 = sub_265B77320();

  if (v2[2])
  {
    v4 = v2[4];
    v3 = v2[5];

    sub_265B76D80();
    if (v4 == sub_265B76D00() && v3 == v5)
    {
    }

    else
    {
      v7 = sub_265B77580();

      if ((v7 & 1) == 0)
      {
        if (v4 != sub_265B76CF0() || v3 != v8)
        {
          v9 = sub_265B77580();

          return v9 & 1;
        }
      }
    }

    v9 = 1;
  }

  else
  {

    v9 = 0;
  }

  return v9 & 1;
}

void sub_265B668F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v23 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v26 = *(*(a3 + 48) + 8 * v16);
    v17 = v26;
    v18 = a4(&v26);

    if (v6)
    {
      return;
    }

    if (v18)
    {
      *(a1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_16:

        a6(a1, a2, v23, a3);
        return;
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_16;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_265B66A6C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_265B66BAC(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void *sub_265B66B08(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_265B668F8(result, a2, a3, a4, a5, sub_265B43EC4);
    v11 = v10;

    return v11;
  }

  return result;
}

void sub_265B66BAC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(*(a3 + 48) + 8 * v15);
    v17 = ACHAchievementProgressUpdate.isNextEarnable(for:)(a4);

    if (v17)
    {
      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_15:

        sub_265B43EC4(a1, a2, v21, a3);
        return;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_15;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t sub_265B66CFC()
{
  result = qword_280035AD8;
  if (!qword_280035AD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280035AD8);
  }

  return result;
}

uint64_t AppInstallError.hashValue.getter()
{
  v1 = *v0;
  sub_265B77600();
  MEMORY[0x26676B9F0](v1);
  return sub_265B77620();
}

unint64_t sub_265B66E24()
{
  result = qword_280035C70;
  if (!qword_280035C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035C70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppInstallError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppInstallError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

double static AppInstallConstants.installRequestTimeout.getter()
{
  if (qword_280035678 != -1)
  {
    swift_once();
  }

  return *&qword_280035C78;
}

uint64_t sub_265B67070@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_265B6A180;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_265B469D8(v4, v5);
}

uint64_t sub_265B67104(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_265B6A148;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_265B469D8(v3, v4);
  return sub_265B63998(v8, v9);
}

uint64_t sub_265B671C0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_265B469D8(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_265B67210(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_265B63998(v5, v6);
}

uint64_t SystemAppInstaller.__allocating_init(bundleIdentifier:installRequestProvider:recordObserverProvider:timerProvider:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v31 = a1;
  v32 = a2;
  v8 = swift_allocObject();
  v9 = a3[3];
  v29 = a3[4];
  v30 = v8;
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a3, v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = a4[3];
  v28 = a4[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a4, v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  v19 = a5[3];
  v20 = a5[4];
  v21 = __swift_mutable_project_boxed_opaque_existential_1(a5, v19);
  MEMORY[0x28223BE20](v21);
  v23 = &v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23);
  v25 = sub_265B69B98(v31, v32, v12, v17, v23, v30, v14, v9, v19, v28, v29, v20);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v25;
}

uint64_t SystemAppInstaller.init(bundleIdentifier:installRequestProvider:recordObserverProvider:timerProvider:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v30 = a2;
  v8 = a3[3];
  v28 = a3[4];
  v29 = a1;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = a4[3];
  v27 = a4[4];
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a4, v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = a5[3];
  v19 = a5[4];
  v20 = __swift_mutable_project_boxed_opaque_existential_1(a5, v18);
  MEMORY[0x28223BE20](v20);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22);
  v24 = sub_265B69B98(v29, v30, v11, v16, v22, v31, v13, v8, v18, v27, v28, v19);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v24;
}

uint64_t sub_265B677C8(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265B681F0(a1);
  }

  return result;
}

uint64_t sub_265B67828(uint64_t a1, uint64_t a2)
{
  sub_265B6A110(a2, v4);
  swift_beginAccess();
  sub_265B6A6B0(v4, a1 + 64);
  return swift_endAccess();
}

uint64_t sub_265B67890(void *a1, double a2)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 24))(v5, v6);
  if ((v7 & 1) != 0 || a2 >= 1.0)
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    v13 = 2;
    MEMORY[0x28223BE20](v7);
    sub_265B76C10();
    sub_265B69E44(v11);
    result = swift_beginAccess();
    v9 = *(v2 + 16);
    if (!v9)
    {
      return result;
    }

    a2 = 1.0;
    goto LABEL_7;
  }

  result = swift_beginAccess();
  v9 = *(v2 + 16);
  if (v9)
  {
LABEL_7:
    v10 = *(v2 + 24);

    v9(a1, a2);
    return sub_265B63998(v9, v10);
  }

  return result;
}

uint64_t sub_265B679F4@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C98, &qword_265B798B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280035C80, &unk_265B797A0);
  v9 = *(v27 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v27);
  v26 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = *(v1 + 56);
  ObjectType = swift_getObjectType();
  (*(v14 + 40))(ObjectType, v14);
  (*(v3 + 16))(v6, v8, v2);
  v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v17 = swift_allocObject();
  (*(v3 + 32))(v17 + v16, v6, v2);
  v18 = (v17 + ((v4 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_265B67D4C;
  v18[1] = 0;
  sub_265B76BB0();
  (*(v3 + 8))(v8, v2);
  v20 = v26;
  v19 = v27;
  (*(v9 + 16))(v26, v13, v27);
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = swift_allocObject();
  (*(v9 + 32))(v22 + v21, v20, v19);
  v23 = (v22 + ((v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = sub_265B67DE0;
  v23[1] = 0;
  sub_265B76BB0();
  return (*(v9 + 8))(v13, v19);
}

uint64_t sub_265B67D4C()
{
  sub_265B63470();
  v0 = swift_allocError();
  *v1 = 0;
  *(swift_allocObject() + 16) = v0;

  return sub_265B76BC0();
}

uint64_t sub_265B67DE0(void *a1)
{
  sub_265B6A560();
  if (sub_265B765A0())
  {
    return sub_265B76BE0();
  }

  *(swift_allocObject() + 16) = a1;
  v3 = a1;
  return sub_265B76BC0();
}

uint64_t sub_265B67E98(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265B67EF0();
  }

  return result;
}

uint64_t sub_265B67EF0()
{
  v1 = v0;
  v2 = sub_265B76F60();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265B76C10();
  if (v22)
  {
    return sub_265B69E44(&v19);
  }

  v17 = *(&v19 + 1);
  v7 = v19;
  v18 = v20;
  sub_265B76E50();

  v8 = sub_265B76F50();
  v9 = sub_265B77270();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v16 = v7;
    v11 = v10;
    v12 = swift_slowAlloc();
    *&v19 = v12;
    *v11 = 141558274;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_265B402B4(v1[4], v1[5], &v19);
    _os_log_impl(&dword_265B3E000, v8, v9, "Failed to get a status update for install %{mask.hash}s", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x26676C0C0](v12, -1, -1);
    MEMORY[0x26676C0C0](v11, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  __swift_project_boxed_opaque_existential_1(v1 + 25, v1[28]);
  v13 = sub_265B76DC0();
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v22 = 2;
  MEMORY[0x28223BE20](v13);
  *(&v16 - 2) = v1;
  *(&v16 - 1) = &v19;
  sub_265B76C10();
  sub_265B69E44(&v19);
  sub_265B63470();
  v14 = swift_allocError();
  *v15 = 2;
  *&v19 = v14;
  v22 = 1;
  v17(&v19);
  swift_unknownObjectRelease();

  return sub_265B63408(&v19);
}

uint64_t sub_265B681F0(void *a1)
{
  v2 = v1;
  v4 = sub_265B76F60();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[14];
  sub_265B76C10();
  sub_265B6A110(v29, &v26);
  if (v28)
  {
    if (v28 == 1)
    {
      sub_265B3FF48(&v26, v24);
      v9 = a1[3];
      v10 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v9);
      v11 = (*(v10 + 48))(v9, v10);
      if (v11)
      {
        v12 = v11;
        [v11 fractionCompleted];
        v14 = v13;
      }

      else
      {
        v20 = a1[3];
        v21 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v20);
        if ((*(v21 + 24))(v20, v21))
        {
          v14 = 1.0;
        }

        else
        {
          v14 = 0.0;
        }
      }

      sub_265B67890(v24, v14);
      __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }

  else
  {
    v23[1] = v8;
    v23[0] = *(&v26 + 1);
    v23[3] = v26;
    v23[2] = v27;
    sub_265B76E50();

    v15 = sub_265B76F50();
    v16 = sub_265B77280();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24[0] = v18;
      *v17 = 141558274;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_265B402B4(v2[4], v2[5], v24);
      _os_log_impl(&dword_265B3E000, v15, v16, "Requested install %{mask.hash}s appeared!", v17, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x26676C0C0](v18, -1, -1);
      MEMORY[0x26676C0C0](v17, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    __swift_project_boxed_opaque_existential_1(v2 + 25, v2[28]);
    sub_265B76DC0();
    v19 = sub_265B41D44(a1, v24);
    v25 = 1;
    MEMORY[0x28223BE20](v19);
    v23[-2] = v2;
    v23[-1] = v24;
    sub_265B76C10();
    sub_265B69E44(v24);
    sub_265B41D44(a1, v24);
    v25 = 0;
    (v23[0])(v24);
    sub_265B63408(v24);
    sub_265B681F0(a1);
    swift_unknownObjectRelease();
  }

  return sub_265B69E44(v29);
}

uint64_t *SystemAppInstaller.deinit()
{
  sub_265B63998(v0[2], v0[3]);

  swift_unknownObjectRelease();
  sub_265B69E44((v0 + 8));

  __swift_destroy_boxed_opaque_existential_1(v0 + 15);
  __swift_destroy_boxed_opaque_existential_1(v0 + 20);
  __swift_destroy_boxed_opaque_existential_1(v0 + 25);
  return v0;
}

uint64_t SystemAppInstaller.__deallocating_deinit()
{
  sub_265B63998(v0[2], v0[3]);

  swift_unknownObjectRelease();
  sub_265B69E44((v0 + 8));

  __swift_destroy_boxed_opaque_existential_1(v0 + 15);
  __swift_destroy_boxed_opaque_existential_1(v0 + 20);
  __swift_destroy_boxed_opaque_existential_1(v0 + 25);

  return swift_deallocClassInstance();
}

uint64_t SystemAppInstaller.requestInstall()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280035C80, &unk_265B797A0);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  v9 = sub_265B76F60();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265B76C10();
  if (v38 == 2 && (v13 = vorrq_s8(v36, v37), !(*&vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL)) | v35)))
  {
    sub_265B69E44(&v35);
    sub_265B76E50();
    sub_265B76F40();
    v17 = (*(v10 + 8))(v12, v9);
    v35 = 1;
    v36 = 0u;
    v37 = 0u;
    v38 = 2;
    MEMORY[0x28223BE20](v17);
    *(&v32 - 2) = v1;
    *(&v32 - 1) = &v35;
    sub_265B76C10();
    sub_265B69E44(&v35);
    v18 = v1[18];
    v19 = v1[19];
    __swift_project_boxed_opaque_existential_1(v1 + 15, v18);
    v20 = (*(v19 + 8))(v18, v19);
    v22 = v21;
    v23 = v1[4];
    v24 = v1[5];

    sub_265B679F4(v8);
    v25 = swift_allocObject();
    v25[2] = v20;
    v25[3] = v22;
    v25[4] = v23;
    v25[5] = v24;
    v25[6] = v2;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_265B69EFC;
    *(v26 + 24) = v25;
    v28 = v32;
    v27 = v33;
    (*(v32 + 16))(v6, v8, v33);
    v29 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v30 = swift_allocObject();
    (*(v28 + 32))(v30 + v29, v6, v27);
    v31 = (v30 + ((v4 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_265B69F0C;
    v31[1] = v26;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280035BC0, &qword_265B795A8);
    sub_265B76BB0();
    return (*(v28 + 8))(v8, v27);
  }

  else
  {
    sub_265B69E44(&v35);
    sub_265B63470();
    v14 = swift_allocError();
    *v15 = 1;
    *(swift_allocObject() + 16) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280035BC0, &qword_265B795A8);
    return sub_265B76BC0();
  }
}

uint64_t sub_265B68B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = a5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280035BC0, &qword_265B795A8);

  return sub_265B76BB0();
}

uint64_t sub_265B68C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a2;
  v36 = a7;
  v33 = a5;
  v34 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280035C80, &unk_265B797A0);
  v10 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v12 = &v32 - v11;
  v13 = sub_265B76F60();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265B76E50();
  v17 = sub_265B76F50();
  v18 = sub_265B77280();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v32 = a3;
    v20 = a4;
    v21 = v10;
    v22 = a6;
    v23 = v19;
    *v19 = 0;
    _os_log_impl(&dword_265B3E000, v17, v18, "App Record Observation started, requesting install!", v19, 2u);
    v24 = v23;
    a6 = v22;
    v10 = v21;
    a4 = v20;
    a3 = v32;
    MEMORY[0x26676C0C0](v24, -1, -1);
  }

  (*(v14 + 8))(v16, v13);
  v38[0] = v33;
  v38[1] = a6;
  (*(a4 + 8))(v38, a3, a4);
  v25 = swift_allocObject();
  v26 = v35;
  v27 = v34;
  v25[2] = v36;
  v25[3] = v27;
  v25[4] = v26;

  v28 = v37;
  v29 = sub_265B76BD0();
  v30 = swift_allocObject();
  *(v30 + 16) = sub_265B6A244;
  *(v30 + 24) = v25;

  v29(sub_265B6A250, v30);

  return (*(v10 + 8))(v12, v28);
}

uint64_t sub_265B68F38(uint64_t a1, uint64_t *a2, void (*a3)(__int128 *), uint64_t a4)
{
  v8 = sub_265B76F60();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v36 - v13;
  if (*(a1 + 8) == 1)
  {
    v37 = a3;
    v15 = *a1;
    sub_265B76E50();

    sub_265B6A2A8(v15, 1);
    v16 = sub_265B76F50();
    v17 = sub_265B77270();

    sub_265B6A2B4(v15, 1);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v36[1] = a4;
      v19 = v18;
      v20 = swift_slowAlloc();
      *&v40 = v20;
      *v19 = 141558530;
      *(v19 + 4) = 1752392040;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_265B402B4(a2[4], a2[5], &v40);
      *(v19 + 22) = 2082;
      swift_getErrorValue();
      v21 = MEMORY[0x26676B990](v38, v39);
      v23 = sub_265B402B4(v21, v22, &v40);
      v36[0] = v8;
      v24 = v23;

      *(v19 + 24) = v24;
      _os_log_impl(&dword_265B3E000, v16, v17, "Error requesting install for %{mask.hash}s: %{public}s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26676C0C0](v20, -1, -1);
      MEMORY[0x26676C0C0](v19, -1, -1);

      v25 = (*(v9 + 8))(v14, v36[0]);
    }

    else
    {

      v25 = (*(v9 + 8))(v14, v8);
    }

    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    v43 = 2;
    MEMORY[0x28223BE20](v25);
    v36[-2] = a2;
    v36[-1] = &v40;
    sub_265B76C10();
    sub_265B69E44(&v40);
    *&v40 = v15;
    v43 = 1;
    v31 = v15;
    v37(&v40);
    return sub_265B63408(&v40);
  }

  else
  {
    sub_265B76E50();

    v26 = sub_265B76F50();
    v27 = sub_265B77280();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = v8;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v40 = v30;
      *v29 = 141558274;
      *(v29 + 4) = 1752392040;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_265B402B4(a2[4], a2[5], &v40);
      _os_log_impl(&dword_265B3E000, v26, v27, "Sucessfully requested install with UUID: %{mask.hash}s", v29, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x26676C0C0](v30, -1, -1);
      MEMORY[0x26676C0C0](v29, -1, -1);

      (*(v9 + 8))(v12, v28);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    __swift_project_boxed_opaque_existential_1(a2 + 25, a2[28]);
    if (qword_280035678 != -1)
    {
      swift_once();
    }

    sub_265B6A254();
    v33 = sub_265B77290();
    swift_allocObject();
    swift_weakInit();

    v34 = sub_265B76DB0();

    *&v40 = v34;
    *(&v40 + 1) = a3;
    *&v41 = a4;
    v43 = 0;
    MEMORY[0x28223BE20](v35);
    v36[-2] = a2;
    v36[-1] = &v40;

    sub_265B76C10();
    return sub_265B69E44(&v40);
  }
}

uint64_t sub_265B69518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v13 = sub_265B76BD0();
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a1;
  v14[5] = a2;

  v13(a9, v14);
}

uint64_t sub_265B695D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280035C80, &unk_265B797A0);
  v9 = sub_265B76BD0();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a4;
  v10[5] = a5;

  v9(sub_265B6A528, v10);
}

uint64_t sub_265B696AC(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *), uint64_t a4, void (*a5)(uint64_t))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280035C80, &unk_265B797A0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - v12;
  if (a2)
  {
    a5(a1);
    v14 = sub_265B76BD0();
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;

    v14(sub_265B6A7A0, v15);

    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    v17 = a1;
    v18 = 0;
    return a3(&v17);
  }
}

void sub_265B69838(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280035C80, &unk_265B797A0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  sub_265B6A600(a1, v20);
  if (v21)
  {
    v13 = *&v20[0];
    v18 = *&v20[0];
    v19 = 1;
    v14 = *&v20[0];
    a4(&v18);
  }

  else
  {
    sub_265B3FF48(v20, &v18);
    a2(&v18);
    v15 = sub_265B76BD0();
    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    *(v16 + 24) = a5;

    v15(sub_265B6A7A0, v16);

    (*(v10 + 8))(v12, v9);
    __swift_destroy_boxed_opaque_existential_1(&v18);
  }
}
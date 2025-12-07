uint64_t sub_27058C788(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_2705D71B4();
  v19 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  v16 = a1;

  sub_2705D7194();
  if (!v5)
  {
    v6 = sub_2705D71A4();
    (*(v19 + 8))(v14, v12);
  }

  return v6;
}

uint64_t sub_27058C928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a6;
  v33 = a4;
  v34 = a2;
  v11 = sub_2705D63A4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v35 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - v15;
  v17 = swift_allocObject();
  sub_2705D6B14();
  MEMORY[0x2743A2F10]();
  swift_weakInit();

  v39 = v17;
  if (swift_weakLoadStrong())
  {

    sub_2705D7114();
    v18 = swift_allocObject();
    v19 = v33;
    v18[2] = a7;
    v18[3] = v19;
    v18[4] = a5;

    v33 = sub_2705D7084();
    v31 = a3;
    v30 = *(v12 + 16);
    v30(v16, v34, v11);
    v20 = a7;
    v32 = a7;
    v21 = *(v12 + 80);
    v34 = v7;
    v22 = swift_allocObject();
    v23 = v39;
    *(v22 + 2) = v20;
    *(v22 + 3) = v23;
    v24 = v36;
    *(v22 + 4) = v36;
    v29 = *(v12 + 32);
    v29(&v22[(v21 + 40) & ~v21], v16, v11);
    v25 = v35;
    v30(v35, v31, v11);
    v26 = swift_allocObject();
    *(v26 + 16) = v39;
    *(v26 + 24) = v24;
    v29((v26 + ((v21 + 32) & ~v21)), v25, v11);
    swift_retain_n();
    sub_27058D914(v38);
    sub_2705D7094();

    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13C8, &unk_2705E9BA0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_2705DC030;
    *(v28 + 56) = sub_2705D6F34();
    __swift_allocate_boxed_opaque_existential_1Tm((v28 + 32));
    sub_2705D6F04();
    sub_27058AAE8(v28);
  }
}

uint64_t sub_27058CCF0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2703F6C98;

  return v6(a1);
}

uint64_t sub_27058CDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a4;
  v42 = a1;
  v7 = *(a5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2705D63A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v40 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2705D6524();
  MEMORY[0x28223BE20](v13 - 8);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
  }

  else
  {
    v38 = v10;
    v39 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (qword_2807D7390 != -1)
    {
      swift_once();
    }

    v37 = qword_28081C610;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
    v14 = *(sub_2705D6574() - 8);
    v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v36 = *(v14 + 72);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2705E6EB0;
    v35 = v16 + v15;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7FB0, &qword_270610598);
    v45[0] = a3;
    v17 = AMSLogKey();
    if (v17)
    {
      v18 = v17;
      v19 = sub_2705D7564();
      v34 = v20;

      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(v45, v46);
      DynamicType = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v43[0] = DynamicType;
      sub_2705D64E4();
      sub_2704B667C(v43);
      sub_2705D6504();
      MetatypeMetadata = MEMORY[0x277D837D0];
      v43[0] = v19;
      v43[1] = v34;
    }

    else
    {
      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(v45, v46);
      v22 = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v43[0] = v22;
    }

    sub_2705D64E4();
    sub_2704B667C(v43);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v45);
    sub_2705D64C4();
    v23 = sub_2705D7A74();
    sub_2705B6DB8(v23, v16);

    v10 = v38;
    v9 = v39;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = v40;
    (*(v11 + 16))(v40, v41, v10);
    (*(v7 + 16))(v9, v42, a5);
    v26 = v9;
    v27 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v28 = *(v7 + 80);
    v29 = v12 + v28 + v27;
    v30 = v10;
    v31 = v29 & ~v28;
    v32 = swift_allocObject();
    *(v32 + 16) = a5;
    (*(v11 + 32))(v32 + v27, v25, v30);
    (*(v7 + 32))(v32 + v31, v26, a5);
    sub_2705D6B04();
  }

  return result;
}

uint64_t sub_27058D304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13C8, &unk_2705E9BA0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2705DC030;
  *(v5 + 56) = a3;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v5 + 32));
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1Tm, a2, a3);
  sub_27058AAE8(v5);
}

void sub_27058D3C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v5 = sub_2705D63A4();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v11 = sub_2705D6524();
  MEMORY[0x28223BE20](v11 - 8);
  v37[0] = a1;
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1C08, &unk_2705F2E30);
  v13 = type metadata accessor for CoreJSError();
  if (swift_dynamicCast())
  {
    v14 = v36[0];
  }

  else
  {
    objc_allocWithZone(v13);
    v15 = a1;
    v14 = sub_270565CB4(a1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
  }

  else
  {
    v33 = v5;
    if (qword_2807D7390 != -1)
    {
      swift_once();
    }

    v32 = qword_28081C610;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
    v16 = sub_2705D6574();
    OUTLINED_FUNCTION_1_1(v16);
    v31 = *(v17 + 72);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_2705E10F0;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7FB0, &qword_270610598);
    v37[0] = v34;
    v19 = AMSLogKey();
    if (v19)
    {
      v20 = v19;
      v34 = sub_2705D7564();
      v30 = v21;

      sub_2705D6514();
      sub_2705D6504();
      OUTLINED_FUNCTION_4_74();
      MetatypeMetadata = swift_getMetatypeMetadata();
      OUTLINED_FUNCTION_3_83(MetatypeMetadata);
      sub_2704B667C(v36);
      sub_2705D6504();
      v36[3] = MEMORY[0x277D837D0];
      v36[0] = v34;
      v36[1] = v30;
      sub_2705D64E4();
    }

    else
    {
      sub_2705D6514();
      sub_2705D6504();
      OUTLINED_FUNCTION_4_74();
      v23 = swift_getMetatypeMetadata();
      OUTLINED_FUNCTION_3_83(v23);
    }

    sub_2704B667C(v36);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v37);
    sub_2705D64C4();
    v38 = v13;
    v37[0] = v14;
    v24 = v14;
    sub_2705D6544();
    sub_2704B667C(v37);
    v25 = sub_2705D7A74();
    sub_2705B6DB8(v25, v18);

    v5 = v33;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(v7 + 16))(&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v5);
    v26 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v27 = swift_allocObject();
    (*(v7 + 32))(v27 + v26, &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    *(v27 + ((v9 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
    v28 = v14;
    sub_2705D6B04();
  }
}

uint64_t sub_27058D874()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13C8, &unk_2705E9BA0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2705DC030;
  v1 = sub_2705658DC();
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34D0, &qword_2705F2A80);
  *(v0 + 32) = v1;
  sub_27058AAE8(v0);
}

uint64_t sub_27058D914@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2703CACA0(0, &qword_2807CEC80, 0x277D85C78);
  result = sub_2705D7B04();
  v4 = MEMORY[0x277D225C0];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

uint64_t sub_27058D964()
{
  sub_2705D63A4();
  OUTLINED_FUNCTION_11_1();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_27058D9F4()
{
  v0 = sub_2705D63A4();
  OUTLINED_FUNCTION_1_1(v0);

  return sub_27058D874();
}

uint64_t sub_27058DA78()
{

  return swift_deallocObject();
}

uint64_t sub_27058DAD0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_27058DB08()
{

  return swift_deallocObject();
}

uint64_t sub_27058DB40(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2703F6C98;

  return sub_27058CCF0(a1, v4);
}

uint64_t sub_27058DBF4()
{
  v1 = sub_2705D63A4();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_27058DCAC(uint64_t a1)
{
  v3 = v1[2];
  v4 = *(sub_2705D63A4() - 8);
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  return sub_27058CDE8(a1, v5, v6, v7, v3);
}

uint64_t sub_27058DD30()
{
  v1 = sub_2705D63A4();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

void sub_27058DDE8(void *a1)
{
  v3 = *(sub_2705D63A4() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_27058D3C0(a1, v4, v5, v6);
}

uint64_t sub_27058DE5C()
{
  v1 = *(v0 + 16);
  sub_2705D63A4();
  OUTLINED_FUNCTION_11_1();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  (*(v2 + 8))(v0 + v3);
  (*(v4 + 8))(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_27058DF54()
{
  v1 = *(v0 + 16);
  v2 = sub_2705D63A4();
  OUTLINED_FUNCTION_1_1(v2);
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = v0 + ((v7 + *(v6 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80));

  return sub_27058D304(v0 + v7, v8, v1);
}

uint64_t OUTLINED_FUNCTION_3_83(uint64_t a1)
{
  *(v2 - 144) = a1;
  *(v2 - 168) = v1;

  return sub_2705D64E4();
}

uint64_t OUTLINED_FUNCTION_4_74()
{
  __swift_project_boxed_opaque_existential_1((v0 - 136), *(v0 - 112));

  return swift_getDynamicType();
}

uint64_t sub_27058E1D4(SEL *a1)
{
  v1 = [objc_opt_self() *a1];
  v2 = sub_2705D7564();

  return v2;
}

id sub_27058E270(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_2705D7534();

  return v5;
}

uint64_t sub_27058E2EC(SEL *a1)
{
  v2 = objc_opt_self();
  result = sub_270555784(v2, a1);
  if (!v4)
  {
    return 0x6E776F6E6B6E75;
  }

  return result;
}

id sub_27058E340()
{
  v1 = OBJC_IVAR____TtC25UnifiedMessagingKitJSCore8JSDevice____lazy_storage___fileSystemSizeResults;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7FD8, &qword_2706105C8);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for JSDevice(0);
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_27058E3D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSDevice(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for JSDevice(uint64_t a1)
{
  result = qword_2807D7FC0;
  if (!qword_2807D7FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27058E470(uint64_t a1)
{
  sub_27058E500(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_27058E500(uint64_t a1)
{
  if (!qword_2807D7FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D7FD8, &qword_2706105C8);
    v1 = sub_2705D7C14();
    if (!v2)
    {
      atomic_store(v1, &qword_2807D7FD0);
    }
  }
}

uint64_t sub_27058E564(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7FE0, qword_2706105D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27058E5CC(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;
  return v2;
}

uint64_t sub_27058E60C(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = a1;
  return v1;
}

uint64_t sub_27058E63C()
{
  OUTLINED_FUNCTION_2_2();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[7] = v5;
  v6 = sub_2705D6484();
  v1[12] = v6;
  OUTLINED_FUNCTION_1_1(v6);
  v1[13] = v7;
  v1[14] = OUTLINED_FUNCTION_16_3();
  v8 = sub_2705D6654();
  v1[15] = v8;
  OUTLINED_FUNCTION_1_1(v8);
  v1[16] = v9;
  v1[17] = OUTLINED_FUNCTION_16_3();

  return MEMORY[0x2822009F8](sub_27058E73C, v0, 0);
}

uint64_t sub_27058E73C()
{
  OUTLINED_FUNCTION_2_2();
  swift_task_alloc();
  OUTLINED_FUNCTION_34_9();
  *(v0 + 144) = v1;
  *v1 = v2;
  v1[1] = sub_27058E7DC;
  v3 = *(v0 + 136);

  return MEMORY[0x28217F228](v3);
}

uint64_t sub_27058E7DC()
{
  OUTLINED_FUNCTION_23_14();
  v2 = *v1;
  OUTLINED_FUNCTION_5_40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 152) = v0;

  v5 = *(v2 + 88);
  if (v0)
  {
    v6 = sub_27058EC44;
  }

  else
  {
    v6 = sub_27058E8FC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_27058E8FC()
{
  OUTLINED_FUNCTION_23_14();
  (*(v0[10] + 24))(v0[9]);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  swift_task_alloc();
  OUTLINED_FUNCTION_34_9();
  v0[20] = v1;
  *v1 = v2;
  v1[1] = sub_27058E9D4;

  return sub_27058ED34();
}

uint64_t sub_27058E9D4()
{
  OUTLINED_FUNCTION_23_14();
  v2 = *v1;
  OUTLINED_FUNCTION_5_40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 168) = v0;

  v5 = *(v2 + 88);
  if (v0)
  {
    v6 = sub_27058ECAC;
  }

  else
  {
    v6 = sub_27058EAF4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_27058EAF4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_2705D6424();
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_1_4();

  return v4();
}

uint64_t sub_27058EC44()
{
  OUTLINED_FUNCTION_2_2();

  OUTLINED_FUNCTION_1_4();

  return v0();
}

uint64_t sub_27058ECAC()
{
  OUTLINED_FUNCTION_2_2();
  (*(v0[16] + 8))(v0[17], v0[15]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  OUTLINED_FUNCTION_1_4();

  return v1();
}

uint64_t sub_27058ED34()
{
  OUTLINED_FUNCTION_2_2();
  v1[70] = v0;
  v1[69] = v2;
  v1[68] = v3;
  v1[67] = v4;
  v1[66] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7FE8, &qword_2706105F0);
  v1[71] = OUTLINED_FUNCTION_16_3();
  v6 = sub_2705D6F34();
  v1[72] = v6;
  OUTLINED_FUNCTION_1_1(v6);
  v1[73] = v7;
  v1[74] = OUTLINED_FUNCTION_16_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7F18, &unk_270610268);
  v1[75] = v8;
  OUTLINED_FUNCTION_1_1(v8);
  v1[76] = v9;
  v1[77] = OUTLINED_FUNCTION_16_3();
  v10 = sub_2705D6954();
  v1[78] = v10;
  OUTLINED_FUNCTION_1_1(v10);
  v1[79] = v11;
  v1[80] = OUTLINED_FUNCTION_16_3();
  v12 = sub_2705D6824();
  v1[81] = v12;
  OUTLINED_FUNCTION_1_1(v12);
  v1[82] = v13;
  v1[83] = OUTLINED_FUNCTION_16_3();

  return MEMORY[0x2822009F8](sub_27058EF10, v0, 0);
}

uint64_t sub_27058EF10()
{
  OUTLINED_FUNCTION_2_2();
  v0[84] = *(v0[70] + 112);
  sub_2705D7054();
  swift_task_alloc();
  OUTLINED_FUNCTION_34_9();
  v0[85] = v1;
  *v1 = v2;
  v1[1] = sub_27058EFC0;

  return MEMORY[0x28217F228](v0 + 64);
}

uint64_t sub_27058EFC0()
{
  OUTLINED_FUNCTION_23_14();
  v2 = *v1;
  OUTLINED_FUNCTION_5_40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 688) = v0;

  v5 = *(v2 + 560);
  if (v0)
  {
    v6 = sub_27058F4A4;
  }

  else
  {
    v6 = sub_27058F0E0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_27058F0E0()
{
  OUTLINED_FUNCTION_23_14();
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[67];
  v0[87] = v0[64];
  v0[45] = v2;
  v0[46] = *(v1 + 8);
  v0[47] = *(v1 + 16);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 42);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1Tm, v3, v2);
  sub_2705D6964();
  swift_task_alloc();
  OUTLINED_FUNCTION_34_9();
  v0[88] = v5;
  *v5 = v6;
  v5[1] = sub_27058F204;
  v7 = v0[84];
  v8 = v0[83];
  v9 = v0[80];
  v10 = v0[78];
  v11 = MEMORY[0x277D21DD0];

  return MEMORY[0x282180628](v8, v9, v7, v10, v11);
}

uint64_t sub_27058F204()
{
  OUTLINED_FUNCTION_23_14();
  v2 = *v1;
  OUTLINED_FUNCTION_5_40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 712) = v0;

  v5 = v2[80];
  v6 = v2[79];
  v7 = v2[78];
  v8 = v2[70];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = sub_27058F544;
  }

  else
  {
    v9 = sub_27058F374;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_27058F374()
{
  v1 = v0[83];
  v2 = v0[82];
  v3 = v0[81];
  v4 = v0[77];
  v5 = v0[76];
  v6 = v0[75];
  sub_2705D6814();
  sub_2705D6794();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_2705D7024();

  OUTLINED_FUNCTION_1_4();

  return v7();
}

uint64_t sub_27058F4A4()
{

  OUTLINED_FUNCTION_1_4();

  return v0();
}

uint64_t sub_27058F544()
{
  v1 = *(v0 + 712);
  *(v0 + 520) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1C08, &unk_2705F2E30);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 592);
    v4 = *(v0 + 584);
    v5 = *(v0 + 576);
    v6 = *(v0 + 568);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v5);
    (*(v4 + 32))(v3, v6, v5);
    sub_270566624();
    v7 = swift_allocError();
    (*(v4 + 16))(v8, v3, v5);
    v32 = v7;
    v31 = sub_2705D4354();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7FF0, qword_2706105F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2705EB880;
    *(v0 + 448) = 0x6E6D756C6F63;
    *(v0 + 456) = 0xE600000000000000;
    v10 = MEMORY[0x277D837D0];
    sub_2705D7CF4();
    v11 = sub_2705D6EF4();
    v12 = MEMORY[0x277D83B88];
    if (v13)
    {
      *(inited + 96) = v10;
      *(inited + 72) = 0x6E776F6E6B6E75;
      *(inited + 80) = 0xE700000000000000;
    }

    else
    {
      *(v0 + 408) = MEMORY[0x277D83B88];
      *(v0 + 384) = v11;
      sub_2703E43D4((v0 + 384), (inited + 72));
    }

    *(v0 + 464) = 1701734764;
    *(v0 + 472) = 0xE400000000000000;
    v15 = MEMORY[0x277D837D0];
    sub_2705D7CF4();
    v16 = sub_2705D6EE4();
    if (v17)
    {
      *(inited + 168) = v15;
      *(inited + 144) = 0x6E776F6E6B6E75;
      *(inited + 152) = 0xE700000000000000;
    }

    else
    {
      *(v0 + 440) = v12;
      *(v0 + 416) = v16;
      sub_2703E43D4((v0 + 416), (inited + 144));
    }

    v18 = *(v0 + 712);
    v19 = *(v0 + 592);
    v20 = *(v0 + 584);
    v30 = *(v0 + 576);
    *(v0 + 480) = 0x6567617373656DLL;
    *(v0 + 488) = 0xE700000000000000;
    sub_2705D7CF4();
    v21 = sub_2705D6F14();
    *(inited + 240) = v15;
    *(inited + 216) = v21;
    *(inited + 224) = v22;
    *(v0 + 496) = 0x5255656372756F73;
    *(v0 + 504) = 0xE90000000000004CLL;
    sub_2705D7CF4();
    v23 = sub_2705D6F24();
    *(inited + 312) = v15;
    if (v24)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0x6E776F6E6B6E75;
    }

    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0xE700000000000000;
    }

    *(inited + 288) = v25;
    *(inited + 296) = v26;
    sub_2705D7494();
    v27 = sub_2705D7454();

    [v31 ams:v27 errorByAddingUserInfo:?];

    swift_willThrow();
    (*(v20 + 8))(v19, v30);
    sub_2705D7024();
  }

  else
  {
    v14 = *(v0 + 568);
    __swift_storeEnumTagSinglePayload(v14, 1, 1, *(v0 + 576));
    sub_27058F960(v14);
    swift_willThrow();
    sub_2705D7024();
  }

  OUTLINED_FUNCTION_1_4();

  return v28();
}

uint64_t sub_27058F960(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7FE8, &qword_2706105F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27058F9C8()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_27058F9F0()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

id sub_27058FA4C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_2705D6DE4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2703CACA0(0, &qword_2807D5008, 0x277CB8F48);
  sub_2705D68B4();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore8JSFamily_accountStore] = v10;
  sub_2705D68B4();
  (*(v3 + 32))(&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore8JSFamily_bag], v5, v2);
  type metadata accessor for JSRuntime();
  sub_2705D68B4();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore8JSFamily_runtime] = v10;
  v9.receiver = v0;
  v9.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v9, sel_init);

  return v6;
}

uint64_t sub_27058FBBC(uint64_t a1)
{
  sub_2703D5404(0x746E756F636361, 0xE700000000000000, a1, &v10);
  if (v11)
  {
    type metadata accessor for JSAccount();
    if (swift_dynamicCast())
    {
      v2 = v9;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    sub_2704B667C(&v10);
    v2 = 0;
  }

  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_2703CACA0(0, &qword_2807D7F50, 0x277CD4640);
  v4 = v2;
  v5 = v1;
  v6 = sub_2705D7BC4();
  MEMORY[0x28223BE20](v6);
  v7 = sub_2705D7BD4();

  return v7;
}

uint64_t sub_27058FD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_27058FD2C, 0, 0);
}

uint64_t sub_27058FD2C()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = *&v1[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore9JSAccount_account];
    v0[5] = v2;
    v3 = v1;
    v4 = v2;
    v5 = swift_task_alloc();
    v0[6] = v5;
    *v5 = v0;
    v5[1] = sub_27058FE9C;

    return sub_270590084(v4);
  }

  else
  {
    sub_2705D6F34();
    sub_270566624();
    swift_allocError();
    sub_2705D6F04();
    swift_willThrow();
    OUTLINED_FUNCTION_1_4();

    return v7();
  }
}

uint64_t sub_27058FE9C()
{
  OUTLINED_FUNCTION_23_14();
  v3 = v2;
  OUTLINED_FUNCTION_70();
  v5 = v4;
  OUTLINED_FUNCTION_17_14();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_17_14();
  *v8 = v7;
  *(v5 + 56) = v0;

  if (v0)
  {
    v9 = sub_270590020;
  }

  else
  {

    *(v5 + 64) = v3;
    v9 = sub_27058FFBC;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_27058FFBC()
{
  OUTLINED_FUNCTION_2_2();
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);

  *v2 = v1;
  OUTLINED_FUNCTION_1_4();

  return v3();
}

uint64_t sub_270590020()
{
  OUTLINED_FUNCTION_2_2();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_1_4();

  return v2();
}

uint64_t sub_270590084(uint64_t a1)
{
  v2[69] = v1;
  v2[68] = a1;
  v2[70] = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D78F0, &qword_27060EBB8);
  v2[71] = v3;
  v2[72] = *(v3 - 8);
  v2[73] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D78E8, &qword_27060EBB0);
  v2[74] = v4;
  v2[75] = *(v4 - 8);
  v2[76] = swift_task_alloc();
  sub_2705D6524();
  v2[77] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2705901F4, 0, 0);
}

uint64_t sub_2705901F4()
{
  if (([*(v0 + 544) ams_isiCloudAccount] & 1) != 0 || (v1 = objc_msgSend(*(*(v0 + 552) + OBJC_IVAR____TtC25UnifiedMessagingKitJSCore8JSFamily_accountStore), sel_ams_iCloudAccountForAccount_, *(v0 + 544))) != 0 && (v2 = v1, v3 = objc_msgSend(v1, sel_isActive), v2, v3))
  {
    if (qword_2807D7390 != -1)
    {
      OUTLINED_FUNCTION_2_90(&qword_2807D7390);
    }

    v4 = *(v0 + 560);
    v5 = *(v0 + 552);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
    OUTLINED_FUNCTION_21_3();
    v6 = sub_2705D6574();
    OUTLINED_FUNCTION_1_1(v6);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_2705E6EB0;
    *(v0 + 424) = v4;
    *(v0 + 400) = v5;
    v8 = v5;
    v9 = sub_27058298C();
    if (v10)
    {
      v11 = v9;
      v12 = v10;
      v13 = v0 + 496;
      sub_2705D6514();
      OUTLINED_FUNCTION_12_20();
      v14 = OUTLINED_FUNCTION_52_1((v0 + 400));
      *(v0 + 488) = swift_getMetatypeMetadata();
      *(v0 + 464) = v14;
      sub_2705D64E4();
      sub_2704B667C(v0 + 464);
      sub_2705D6504();
      *(v0 + 520) = MEMORY[0x277D837D0];
      *(v0 + 496) = v11;
      *(v0 + 504) = v12;
    }

    else
    {
      v13 = v0 + 432;
      sub_2705D6514();
      OUTLINED_FUNCTION_12_20();
      v26 = OUTLINED_FUNCTION_52_1((v0 + 400));
      *(v0 + 456) = swift_getMetatypeMetadata();
      *(v0 + 432) = v26;
    }

    sub_2705D64E4();
    sub_2704B667C(v13);
    v27 = *(v0 + 608);
    v28 = *(v0 + 600);
    v29 = *(v0 + 592);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1((v0 + 400));
    sub_2705D64C4();
    v30 = sub_2705D7A54();
    sub_2705B6DB8(v30, v7);

    v31 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
    *(v0 + 624) = v31;
    v32 = sub_2705828F8();
    [v31 setCachePolicy_];
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 536;
    *(v0 + 88) = sub_270590A28;
    swift_continuation_init();
    *(v0 + 264) = v29;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 240));
    sub_2703CACA0(0, &qword_2807D8030, 0x277D08248);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1C08, &unk_2705F2E30);
    sub_2705D7854();
    (*(v28 + 32))(boxed_opaque_existential_1Tm, v27, v29);
    OUTLINED_FUNCTION_1_89();
    *(v0 + 208) = v35;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_2705925A4;
    *(v0 + 232) = &block_descriptor_25;
    [v31 startRequestWithCompletionHandler_];
    (*(v28 + 8))(boxed_opaque_existential_1Tm, v29);
    v36 = v0 + 80;
  }

  else
  {
    if (qword_2807D7390 != -1)
    {
      OUTLINED_FUNCTION_2_90(&qword_2807D7390);
    }

    v15 = *(v0 + 560);
    v16 = *(v0 + 552);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
    OUTLINED_FUNCTION_21_3();
    v17 = sub_2705D6574();
    OUTLINED_FUNCTION_1_1(v17);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_2705E6EB0;
    *(v0 + 296) = v15;
    *(v0 + 272) = v16;
    v19 = v16;
    v20 = sub_27058298C();
    if (v21)
    {
      v22 = v20;
      v23 = v21;
      v24 = v0 + 368;
      sub_2705D6514();
      OUTLINED_FUNCTION_12_20();
      v25 = OUTLINED_FUNCTION_52_1((v0 + 272));
      *(v0 + 360) = swift_getMetatypeMetadata();
      *(v0 + 336) = v25;
      sub_2705D64E4();
      sub_2704B667C(v0 + 336);
      sub_2705D6504();
      *(v0 + 392) = MEMORY[0x277D837D0];
      *(v0 + 368) = v22;
      *(v0 + 376) = v23;
    }

    else
    {
      v24 = v0 + 304;
      sub_2705D6514();
      OUTLINED_FUNCTION_12_20();
      v37 = OUTLINED_FUNCTION_52_1((v0 + 272));
      *(v0 + 328) = swift_getMetatypeMetadata();
      *(v0 + 304) = v37;
    }

    sub_2705D64E4();
    sub_2704B667C(v24);
    v51 = *(v0 + 584);
    v38 = *(v0 + 576);
    v39 = *(v0 + 568);
    v40 = *(v0 + 544);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1((v0 + 272));
    sub_2705D64C4();
    v41 = sub_2705D7A54();
    sub_2705B6DB8(v41, v18);

    sub_2705828F8();
    if (v42)
    {
      v43 = 0;
    }

    else
    {
      v43 = 2;
    }

    sub_2703CACA0(0, &qword_2807D8020, 0x277CEE4E0);
    v44 = v40;
    v45 = sub_2705D6DA4();
    v46 = sub_2705925D0(v44, v45);
    *(v0 + 640) = v46;
    v47 = [v46 performFamilyInfoLookupWithCachePolicy_];
    *(v0 + 648) = v47;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 528;
    *(v0 + 24) = sub_270590BBC;
    swift_continuation_init();
    *(v0 + 200) = v39;
    v48 = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 176));
    sub_2703CACA0(0, &qword_2807D8028, 0x277CEE4D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1C08, &unk_2705F2E30);
    sub_2705D7854();
    (*(v38 + 32))(v48, v51, v39);
    OUTLINED_FUNCTION_1_89();
    *(v0 + 144) = v49;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_270592630;
    *(v0 + 168) = &block_descriptor_21;
    [v47 resultWithCompletion_];
    (*(v38 + 8))(v48, v39);
    v36 = v0 + 16;
  }

  return MEMORY[0x282200938](v36);
}

uint64_t sub_270590A28()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_17_14();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 112);
  *(v1 + 632) = v4;
  if (v4)
  {
    v5 = sub_270590D58;
  }

  else
  {
    v5 = sub_270590B2C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_270590B2C()
{
  OUTLINED_FUNCTION_23_14();
  sub_2705930B4(*(v0 + 536));

  v1 = OUTLINED_FUNCTION_9_50();

  return v2(v1);
}

uint64_t sub_270590BBC()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_17_14();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 656) = v4;
  if (v4)
  {
    v5 = sub_270590DF0;
  }

  else
  {
    v5 = sub_270590CC0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_270590CC0()
{
  OUTLINED_FUNCTION_23_14();
  v1 = *(v0 + 640);
  sub_27059411C(*(v0 + 528));

  v2 = OUTLINED_FUNCTION_9_50();

  return v3(v2);
}

uint64_t sub_270590D58()
{
  OUTLINED_FUNCTION_23_14();
  v1 = *(v0 + 624);
  swift_willThrow();
  swift_willThrow();

  OUTLINED_FUNCTION_1_4();

  return v2();
}

uint64_t sub_270590DF0()
{
  OUTLINED_FUNCTION_23_14();
  v1 = *(v0 + 648);
  v2 = *(v0 + 640);
  swift_willThrow();

  OUTLINED_FUNCTION_1_4();

  return v3();
}

uint64_t sub_270590E9C(uint64_t a1)
{
  sub_27058298C();
  sub_2703CACA0(0, &qword_2807D7F50, 0x277CD4640);
  v1 = sub_2705D7BC4();
  v2 = sub_2705D7BD4();

  return v2;
}

char *sub_270590F4C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  sub_2705D6B14();
  MEMORY[0x2743A2F10]();
  swift_weakInit();

  if (swift_weakLoadStrong())
  {

    sub_2703CACA0(0, &qword_2807D7F50, 0x277CD4640);
    v11 = swift_allocObject();
    v11[2] = a2;
    v11[3] = a3;
    v11[4] = a4;
    v11[5] = a5;
    v11[6] = v10;

    v12 = a3;
    v13 = sub_27058C4D8(a1, sub_270592958, v11);
  }

  else
  {
    v13 = "KitJSCore.JSFamily";
    sub_2705D6F34();
    sub_270566624();
    swift_allocError();
    sub_2705D6F04();
    swift_willThrow();
  }

  return v13;
}

void sub_270591110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = a2;
  v62 = a6;
  v13 = type metadata accessor for JSCallableWrapper(0);
  v60 = *(v13 - 8);
  v14 = *(v60 + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  MEMORY[0x28223BE20](v15);
  v71 = v49 - v16;
  v17 = sub_2705D6524();
  MEMORY[0x28223BE20](v17 - 8);
  sub_2703D5404(0x79747265706F7270, 0xEC000000656D614ELL, a4, &aBlock);
  if (!v65)
  {
    sub_2704B667C(&aBlock);
    goto LABEL_10;
  }

  v58 = a7;
  v59 = a8;
  v18 = MEMORY[0x277D837D0];
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v32 = MEMORY[0x277D837D0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13C8, &unk_2705E9BA0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_2705DC030;
    v34 = 0x800000027061A8A0;
    *(v33 + 56) = v32;
    v35 = 0xD000000000000014;
    goto LABEL_14;
  }

  v56 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v68;
  v19 = v69;
  sub_2703D5404(0x4449656C646E7562, 0xE800000000000000, a4, &aBlock);
  if (v65)
  {
    v20 = v19;
    if (swift_dynamicCast())
    {
      v21 = v68;
      v22 = v69;
      v23 = objc_allocWithZone(MEMORY[0x277D08240]);

      v52 = v21;
      v51 = v22;
      v54 = sub_27059299C(v57, v19, v21, v22);
      if (qword_2807D7390 != -1)
      {
        swift_once();
      }

      v53 = qword_28081C610;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
      v24 = *(sub_2705D6574() - 8);
      v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v49[1] = *(v24 + 72);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_2705E6EB0;
      v50 = v26;
      v55 = v26 + v25;
      v65 = type metadata accessor for JSFamily(0);
      *&aBlock = a5;
      v27 = v58;
      if (v58)
      {
        v28 = a5;

        sub_2705D6514();
        sub_2705D6504();
        __swift_project_boxed_opaque_existential_1(&aBlock, v65);
        DynamicType = swift_getDynamicType();
        MetatypeMetadata = swift_getMetatypeMetadata();
        v68 = DynamicType;
        sub_2705D64E4();
        sub_2704B667C(&v68);
        sub_2705D6504();
        v30 = MEMORY[0x277D837D0];
        MetatypeMetadata = MEMORY[0x277D837D0];
        v31 = v62;
        v68 = v62;
        v69 = v27;
        sub_2705D64E4();
        sub_2704B667C(&v68);
        sub_2705D6504();
        sub_2705D6534();
      }

      else
      {
        v37 = a5;
        sub_2705D6514();
        sub_2705D6504();
        __swift_project_boxed_opaque_existential_1(&aBlock, v65);
        v38 = swift_getDynamicType();
        MetatypeMetadata = swift_getMetatypeMetadata();
        v68 = v38;
        sub_2705D64E4();
        sub_2704B667C(&v68);
        sub_2705D6504();
        sub_2705D6534();
        v31 = v62;
        v30 = MEMORY[0x277D837D0];
      }

      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      sub_2705D6514();
      sub_2705D6504();
      v65 = v30;
      *&aBlock = v52;
      *(&aBlock + 1) = v51;
      sub_2705D64E4();
      sub_2704B667C(&aBlock);
      sub_2705D6504();
      v65 = v30;
      *&aBlock = v57;
      *(&aBlock + 1) = v20;
      sub_2705D64E4();
      sub_2704B667C(&aBlock);
      sub_2705D6504();
      sub_2705D6534();
      v39 = sub_2705D7A94();
      sub_2705B6DB8(v39, v50);

      v40 = sub_2705D63A4();
      v41 = v71;
      (*(*(v40 - 8) + 16))(v71, v61, v40);
      v42 = v56;
      sub_270592A24(v41, v56);
      v43 = (*(v60 + 80) + 48) & ~*(v60 + 80);
      v44 = swift_allocObject();
      v44[2] = a5;
      v44[3] = v31;
      v45 = v59;
      v44[4] = v27;
      v44[5] = v45;
      sub_270592B58(v42, v44 + v43);
      v66 = sub_270592BBC;
      v67 = v44;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v64 = sub_270592484;
      v65 = &block_descriptor_7;
      v46 = _Block_copy(&aBlock);
      v47 = a5;

      v48 = v54;
      [v54 startRequestWithCompletion_];
      _Block_release(v46);

      sub_270592C5C(v41);
      return;
    }
  }

  else
  {

    sub_2704B667C(&aBlock);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13C8, &unk_2705E9BA0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_2705DC030;
  *(v33 + 56) = v18;
  v34 = 0x800000027061A8C0;
  v35 = 0xD000000000000010;
LABEL_14:
  *(v33 + 32) = v35;
  *(v33 + 40) = v34;
  v36 = sub_2705D6394();

  if (!v8)
  {
  }
}

uint64_t sub_270591894(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v46 = a7;
  v48 = a4;
  v11 = type metadata accessor for JSCallableWrapper(0);
  v43 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v44 = v12;
  v45 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2705D6524();
  MEMORY[0x28223BE20](v13 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D42A8, &unk_2705F6750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2705DC030;
  *(inited + 32) = 0x6C69626967696C65;
  *(inited + 40) = 0xEB00000000797469;
  *(inited + 72) = MEMORY[0x277D83E88];
  v47 = a1;
  *(inited + 48) = a1;
  v15 = sub_2705D7494();
  if (a2)
  {
    v16 = a2;
    if (qword_2807D7390 != -1)
    {
      swift_once();
    }

    v42[1] = qword_28081C610;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
    sub_2705D6574();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_2705E10F0;
    v54 = type metadata accessor for JSFamily(0);
    *&v53 = a3;
    v18 = a3;
    if (a5)
    {

      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(&v53, v54);
      DynamicType = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      *&v51 = DynamicType;
      sub_2705D64E4();
      sub_2704B667C(&v51);
      sub_2705D6504();
      MetatypeMetadata = MEMORY[0x277D837D0];
      *&v51 = v48;
      *(&v51 + 1) = a5;
    }

    else
    {
      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(&v53, v54);
      v20 = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      *&v51 = v20;
    }

    sub_2705D64E4();
    sub_2704B667C(&v51);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(&v53);
    sub_2705D64C4();
    swift_getErrorValue();
    v21 = v49;
    v22 = v50;
    v54 = v50;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v53);
    (*(*(v22 - 8) + 16))(boxed_opaque_existential_1Tm, v21, v22);
    sub_2705D6544();
    sub_2704B667C(&v53);
    v24 = sub_2705D7A74();
    sub_2705B6DB8(v24, v17);

    v25 = objc_allocWithZone(type metadata accessor for CoreJSError());
    v26 = a2;
    v27 = sub_270565CB4(a2);
    v28 = sub_2705658DC();

    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34D0, &qword_2705F2A80);
    *&v53 = v28;
    sub_2703E43D4(&v53, &v51);
    swift_isUniquelyReferenced_nonNull_native();
    v55[0] = v15;
    sub_2705664F8(&v51, 0x726F727265, 0xE500000000000000);

    v15 = v55[0];
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
  }

  else
  {
    if (qword_2807D7390 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
    sub_2705D6574();
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_2705E6EB0;
    v54 = type metadata accessor for JSFamily(0);
    *&v53 = a3;
    v30 = a3;
    if (a5)
    {

      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(&v53, v54);
      v31 = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      *&v51 = v31;
      sub_2705D64E4();
      sub_2704B667C(&v51);
      sub_2705D6504();
      MetatypeMetadata = MEMORY[0x277D837D0];
      *&v51 = v48;
      *(&v51 + 1) = a5;
    }

    else
    {
      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(&v53, v54);
      v32 = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      *&v51 = v32;
    }

    sub_2705D64E4();
    sub_2704B667C(&v51);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(&v53);
    sub_2705D64C4();
    v33 = sub_2705D7A74();
    sub_2705B6DB8(v33, v29);
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
  }

  v34 = v45;
  sub_270592A24(v46, v45);
  v35 = (*(v43 + 80) + 48) & ~*(v43 + 80);
  v36 = (v44 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  v38 = v48;
  v37[2] = a3;
  v37[3] = v38;
  v39 = v47;
  v37[4] = a5;
  v37[5] = v39;
  sub_270592B58(v34, v37 + v35);
  *(v37 + v36) = v15;

  v40 = a3;
  sub_2705D6B04();
}

uint64_t sub_27059210C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_2705D6524();
  MEMORY[0x28223BE20](v11 - 8);
  if (qword_2807D7390 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
  sub_2705D6574();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2705E6EB0;
  v22 = type metadata accessor for JSFamily(0);
  v21[0] = a1;
  v13 = a1;
  if (a3)
  {

    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v21, v22);
    DynamicType = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v19[0] = DynamicType;
    sub_2705D64E4();
    sub_2704B667C(v19);
    sub_2705D6504();
    MetatypeMetadata = MEMORY[0x277D837D0];
    v19[0] = a2;
    v19[1] = a3;
    sub_2705D64E4();
  }

  else
  {
    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v15 = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v19[0] = v15;
    sub_2705D64E4();
  }

  sub_2704B667C(v19);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v21);
  sub_2705D6514();
  sub_2705D6504();
  v22 = MEMORY[0x277D83E88];
  v21[0] = a4;
  sub_2705D64E4();
  sub_2704B667C(v21);
  sub_2705D6504();
  sub_2705D6534();
  v16 = sub_2705D7A94();
  sub_2705B6DB8(v16, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13C8, &unk_2705E9BA0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2705DC030;
  *(v17 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34D0, &qword_2705F2A80);
  *(v17 + 32) = a6;

  sub_27058AB00(v17);
}

void sub_270592484(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id sub_270592514(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = sub_2705D7464();
  v7 = a1;
  v8 = a4(v6);

  return v8;
}

id sub_2705925D0(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAccount:a1 bag:a2];

  swift_unknownObjectRelease();
  return v3;
}

void sub_27059265C(uint64_t a1, void *a2, void *a3, void (*a4)(void *, id), void (*a5)(void *, id))
{
  v8 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v11 = a3;
    a4(v8, v11);
  }

  else if (a2)
  {
    v9 = a2;

    a5(v8, v9);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_270592804(uint64_t a1)
{
  result = sub_2705D6DE4();
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

uint64_t sub_2705928D0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_270592908()
{

  return swift_deallocObject();
}

id sub_27059299C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2705D7534();

  v6 = sub_2705D7534();

  v7 = [v4 initWithPropertyName:v5 bundleID:v6];

  return v7;
}

uint64_t sub_270592A24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSCallableWrapper(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_270592A88()
{
  v1 = type metadata accessor for JSCallableWrapper(0);
  OUTLINED_FUNCTION_1_1(v1);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  sub_2705D63A4();
  OUTLINED_FUNCTION_11_1();
  (*(v4 + 8))(v0 + v3);

  return swift_deallocObject();
}

uint64_t sub_270592B58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSCallableWrapper(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_270592BBC(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for JSCallableWrapper(0) - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_270591894(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_270592C5C(uint64_t a1)
{
  v2 = type metadata accessor for JSCallableWrapper(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_270592CB8()
{
  v1 = type metadata accessor for JSCallableWrapper(0);
  OUTLINED_FUNCTION_1_1(v1);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  sub_2705D63A4();
  OUTLINED_FUNCTION_11_1();
  (*(v4 + 8))(v0 + v3);

  return swift_deallocObject();
}

uint64_t sub_270592D94()
{
  v1 = type metadata accessor for JSCallableWrapper(0);
  OUTLINED_FUNCTION_1_1(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[5];
  v11 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_27059210C(v7, v8, v9, v10, v0 + v6, v11);
}

uint64_t sub_270592E20()
{

  return swift_deallocObject();
}

uint64_t sub_270592E60()
{
  OUTLINED_FUNCTION_23_14();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2704AAEF4;

  return sub_27058FD08(v3, v5, v4);
}

uint64_t sub_270592F50(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_21_3();
  v4 = sub_2705D63A4();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_270592FA8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_21_3();
  v4 = sub_2705D63A4();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_270592FF0(uint64_t a1)
{
  result = sub_2705D63A4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_90(uint64_t a1)
{

  return swift_once();
}

uint64_t *sub_2705930B4(void *a1)
{
  v2 = [a1 members];
  sub_2703CACA0(0, &qword_2807D8048, 0x277D08268);
  v3 = sub_2705D77C4();

  v4 = sub_270578E20(v3);
  v5 = MEMORY[0x277D837D0];
  v212 = v4;
  if (!v4)
  {

    v148 = 0;
    v6 = MEMORY[0x277D84F90];
LABEL_62:
    v149 = [a1 ageCategory];
    v220 = MEMORY[0x277D83B88];
    v218 = v149;
    OUTLINED_FUNCTION_34_19();
    v150 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v215 = v150;
    v151 = *(&v217 + 1);
    __swift_mutable_project_boxed_opaque_existential_1(&v216, *(&v217 + 1));
    OUTLINED_FUNCTION_1_14();
    MEMORY[0x28223BE20](v152);
    OUTLINED_FUNCTION_4_0();
    v154 = OUTLINED_FUNCTION_50_9(v153);
    v155(v154);
    OUTLINED_FUNCTION_13_45(*v1, v156, v157, v158, v159, v160, v161);
    __swift_destroy_boxed_opaque_existential_1(&v216);
    v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3CC0, &qword_2705F3F80);
    v218 = v6;
    OUTLINED_FUNCTION_11_48();
    OUTLINED_FUNCTION_6_72();
    OUTLINED_FUNCTION_16_16();
    MEMORY[0x28223BE20](v162);
    OUTLINED_FUNCTION_4_0();
    v164 = OUTLINED_FUNCTION_50_9(v163);
    v165(v164);
    OUTLINED_FUNCTION_27_22();
    sub_270573A48(v166, v167, v168, v151, v169, v170, v171);
    __swift_destroy_boxed_opaque_existential_1(&v216);
    v172 = v215;
    if (v148)
    {
      v173 = v148;
      v174 = [v173 dsid];
      if (v174)
      {
        v175 = v174;
        v176 = v148;
        v177 = [v174 stringValue];

        v178 = sub_2705D7564();
        v180 = v179;

        v220 = v5;
        v218 = v178;
        v219 = v180;
        LOBYTE(v178) = OUTLINED_FUNCTION_11_48();
        OUTLINED_FUNCTION_7_61();
        OUTLINED_FUNCTION_16_16();
        MEMORY[0x28223BE20](v181);
        OUTLINED_FUNCTION_4_0();
        v184 = v183 - v182;
        (*(v185 + 16))(v183 - v182);
        OUTLINED_FUNCTION_45_11();
        sub_270489B80(v184, v186 + 6, 0x800000027061AAD0, v178, &v215, v5);
        __swift_destroy_boxed_opaque_existential_1(&v216);
      }

      else
      {
        OUTLINED_FUNCTION_45_11();
        v188 = sub_2703D7318(v187 + 6, 0x800000027061AAD0);
        if (v189)
        {
          v190 = v188;
          v176 = v148;
          swift_isUniquelyReferenced_nonNull_native();
          v215 = v172;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3BA8, &unk_2705F3910);
          sub_2705D7E04();
          v191 = v215;

          sub_2703E43D4((*(v191 + 56) + 32 * v190), &v216);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518, &unk_2705F2A70);
          sub_2705D7E24();
        }

        else
        {
          v176 = v148;
          v216 = 0u;
          v217 = 0u;
        }

        sub_27056B8AC(&v216);
      }
    }

    else
    {
      v176 = 0;
    }

    v192 = [a1 sharedPaymentEnabled];
    v220 = MEMORY[0x277D839B0];
    LOBYTE(v218) = v192;
    v193 = OUTLINED_FUNCTION_11_48();
    OUTLINED_FUNCTION_7_61();
    OUTLINED_FUNCTION_16_16();
    MEMORY[0x28223BE20](v194);
    OUTLINED_FUNCTION_4_0();
    v196 = OUTLINED_FUNCTION_9_27(v195);
    v197(v196);
    OUTLINED_FUNCTION_26_26();
    sub_2705731C0(v198, v199, v200, v193, v201, v202, v203);
    __swift_destroy_boxed_opaque_existential_1(&v216);

    return v215;
  }

  v213 = 0;
  v211 = v3 & 0xC000000000000001;
  v204 = "currentSignedInUser";
  v209 = "Circle8@NSError16";
  v6 = MEMORY[0x277D84F90];
  v7 = 4;
  v210 = v3;
  while (1)
  {
    sub_270578E24();
    result = v211 ? MEMORY[0x2743A4130](v7 - 4, v3) : *(v3 + 8 * v7);
    v1 = result;
    v9 = v7 - 3;
    if (__OFADD__(v7 - 4, 1))
    {
      break;
    }

    if ([result isOrganizer])
    {

      v10 = v1;
      v213 = v1;
    }

    result = [a1 me];
    if (!result)
    {
      goto LABEL_72;
    }

    v11 = result;
    v12 = [result dsid];

    v13 = [v1 dsid];
    v14 = v13;
    if (v12)
    {
      if (!v13)
      {
        v14 = v12;
LABEL_17:

LABEL_18:
        v17 = 0;
        v16 = -1;
        goto LABEL_19;
      }

      sub_2703CACA0(0, &qword_2807D3BA0, 0x277CCABB0);
      v15 = sub_2705D7BA4();

      if ((v15 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (v13)
    {
      goto LABEL_17;
    }

    v16 = [a1 ageCategory];
    v17 = 1;
LABEL_19:
    v220 = MEMORY[0x277D83B88];
    v218 = v16;
    OUTLINED_FUNCTION_34_19();
    v18 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v215 = v18;
    v19 = *(&v217 + 1);
    __swift_mutable_project_boxed_opaque_existential_1(&v216, *(&v217 + 1));
    OUTLINED_FUNCTION_33_17();
    OUTLINED_FUNCTION_1_14();
    MEMORY[0x28223BE20](v20);
    v22 = OUTLINED_FUNCTION_0_93(v21, v205);
    v23(v22);
    OUTLINED_FUNCTION_13_45(*v12, v24, v25, v26, v27, v28, v29);
    __swift_destroy_boxed_opaque_existential_1(&v216);
    OUTLINED_FUNCTION_35_18();
    v30 = [v1 hasAskToBuyEnabled];
    v31 = MEMORY[0x277D839B0];
    v220 = MEMORY[0x277D839B0];
    LOBYTE(v218) = v30;
    OUTLINED_FUNCTION_11_48();
    OUTLINED_FUNCTION_6_72();
    OUTLINED_FUNCTION_33_17();
    OUTLINED_FUNCTION_16_16();
    MEMORY[0x28223BE20](v32);
    v34 = OUTLINED_FUNCTION_0_93(v33, v206);
    v35(v34);
    v36 = OUTLINED_FUNCTION_23_25();
    sub_2705731C0(v36, v37, v38, v19, v39, v40, v41);
    __swift_destroy_boxed_opaque_existential_1(&v216);
    OUTLINED_FUNCTION_35_18();
    v220 = v31;
    LOBYTE(v218) = v17;
    OUTLINED_FUNCTION_11_48();
    OUTLINED_FUNCTION_6_72();
    OUTLINED_FUNCTION_16_16();
    MEMORY[0x28223BE20](v42);
    v44 = OUTLINED_FUNCTION_0_93(v43, v207);
    v45(v44);
    OUTLINED_FUNCTION_26_26();
    sub_2705731C0(v46, v47, v48, v19, v49, v50, v51);
    __swift_destroy_boxed_opaque_existential_1(&v216);
    v52 = v215;
    v53 = sub_270555784(v1, &selRef_firstName);
    if (v54)
    {
      v5 = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_8_60(v53, v54);
      OUTLINED_FUNCTION_6_72();
      OUTLINED_FUNCTION_16_16();
      MEMORY[0x28223BE20](v55);
      v57 = OUTLINED_FUNCTION_0_93(v56, v208);
      v58(v57);
      v59 = OUTLINED_FUNCTION_32_18();
      sub_270489B80(v59, v60, v61, v19, v62, v5);
      __swift_destroy_boxed_opaque_existential_1(&v216);
    }

    else
    {
      OUTLINED_FUNCTION_38_13();
      v5 = MEMORY[0x277D837D0];
      if (v63)
      {
        OUTLINED_FUNCTION_47_5();
        *&v216 = v52;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3BA8, &unk_2705F3910);
        sub_2705D7E04();
        OUTLINED_FUNCTION_14_43();
        OUTLINED_FUNCTION_31_16();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518, &unk_2705F2A70);
        OUTLINED_FUNCTION_9_51();
        sub_2705D7E24();
      }

      else
      {
        OUTLINED_FUNCTION_22_23();
      }

      sub_27056B8AC(&v218);
    }

    v64 = [v1 dsid];
    if (v64)
    {
      v65 = v64;
      v66 = [v64 stringValue];

      v19 = sub_2705D7564();
      v68 = v67;

      v220 = v5;
      v218 = v19;
      v219 = v68;
      OUTLINED_FUNCTION_11_48();
      OUTLINED_FUNCTION_6_72();
      OUTLINED_FUNCTION_33_17();
      OUTLINED_FUNCTION_16_16();
      MEMORY[0x28223BE20](v69);
      v71 = OUTLINED_FUNCTION_3_84(v70, v208);
      v72(v71);
      OUTLINED_FUNCTION_39_11();
      OUTLINED_FUNCTION_29_18();
      OUTLINED_FUNCTION_17_35(v73, v74, v75, v76, v77);
      __swift_destroy_boxed_opaque_existential_1(&v216);
      OUTLINED_FUNCTION_35_18();
    }

    else
    {
      v78 = OUTLINED_FUNCTION_28_22();
      OUTLINED_FUNCTION_37_15(v78);
      if (v79)
      {
        OUTLINED_FUNCTION_47_5();
        OUTLINED_FUNCTION_20_27();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3BA8, &unk_2705F3910);
        OUTLINED_FUNCTION_18_28();
        OUTLINED_FUNCTION_14_43();
        OUTLINED_FUNCTION_31_16();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518, &unk_2705F2A70);
        OUTLINED_FUNCTION_9_51();
        sub_2705D7E24();
      }

      else
      {
        OUTLINED_FUNCTION_22_23();
      }

      sub_27056B8AC(&v218);
    }

    v80 = sub_270555784(v1, &selRef_appleID);
    if (v81)
    {
      OUTLINED_FUNCTION_8_60(v80, v81);
      OUTLINED_FUNCTION_6_72();
      OUTLINED_FUNCTION_33_17();
      OUTLINED_FUNCTION_16_16();
      MEMORY[0x28223BE20](v82);
      v84 = OUTLINED_FUNCTION_3_84(v83, v208);
      v85(v84);
      OUTLINED_FUNCTION_39_11();
      OUTLINED_FUNCTION_29_18();
      OUTLINED_FUNCTION_12_46(v86, v87, v88, v89, v90);
      __swift_destroy_boxed_opaque_existential_1(&v216);
      OUTLINED_FUNCTION_35_18();
    }

    else
    {
      v91 = OUTLINED_FUNCTION_28_22();
      OUTLINED_FUNCTION_16_34(v91);
      if (v92)
      {
        OUTLINED_FUNCTION_47_5();
        OUTLINED_FUNCTION_20_27();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3BA8, &unk_2705F3910);
        OUTLINED_FUNCTION_18_28();
        OUTLINED_FUNCTION_14_43();
        OUTLINED_FUNCTION_31_16();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518, &unk_2705F2A70);
        OUTLINED_FUNCTION_9_51();
        sub_2705D7E24();
      }

      else
      {
        OUTLINED_FUNCTION_22_23();
      }

      sub_27056B8AC(&v218);
    }

    v93 = [v1 iTunesAccountDSID];
    if (v93)
    {
      v94 = v93;
      v95 = [v93 stringValue];

      v19 = sub_2705D7564();
      v97 = v96;

      v220 = v5;
      v218 = v19;
      v219 = v97;
      OUTLINED_FUNCTION_11_48();
      OUTLINED_FUNCTION_6_72();
      OUTLINED_FUNCTION_33_17();
      OUTLINED_FUNCTION_16_16();
      MEMORY[0x28223BE20](v98);
      v100 = OUTLINED_FUNCTION_3_84(v99, v208);
      v101(v100);
      OUTLINED_FUNCTION_39_11();
      OUTLINED_FUNCTION_25_27();
      OUTLINED_FUNCTION_17_35(v102, v103, v104, v105, v106);
      __swift_destroy_boxed_opaque_existential_1(&v216);
      OUTLINED_FUNCTION_35_18();
    }

    else
    {
      v107 = OUTLINED_FUNCTION_24_29();
      OUTLINED_FUNCTION_37_15(v107);
      if (v108)
      {
        OUTLINED_FUNCTION_47_5();
        OUTLINED_FUNCTION_20_27();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3BA8, &unk_2705F3910);
        OUTLINED_FUNCTION_18_28();
        OUTLINED_FUNCTION_14_43();
        OUTLINED_FUNCTION_31_16();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518, &unk_2705F2A70);
        OUTLINED_FUNCTION_9_51();
        sub_2705D7E24();
      }

      else
      {
        OUTLINED_FUNCTION_22_23();
      }

      sub_27056B8AC(&v218);
    }

    v109 = sub_270555784(v1, &selRef_iTunesAccountUsername);
    if (v110)
    {
      OUTLINED_FUNCTION_8_60(v109, v110);
      OUTLINED_FUNCTION_6_72();
      OUTLINED_FUNCTION_33_17();
      OUTLINED_FUNCTION_16_16();
      MEMORY[0x28223BE20](v111);
      v113 = OUTLINED_FUNCTION_3_84(v112, v208);
      v114(v113);
      OUTLINED_FUNCTION_39_11();
      OUTLINED_FUNCTION_25_27();
      OUTLINED_FUNCTION_12_46(v115, v116, v117, v118, v119);
      __swift_destroy_boxed_opaque_existential_1(&v216);
      OUTLINED_FUNCTION_35_18();
    }

    else
    {
      v120 = OUTLINED_FUNCTION_24_29();
      OUTLINED_FUNCTION_16_34(v120);
      if (v121)
      {
        OUTLINED_FUNCTION_47_5();
        OUTLINED_FUNCTION_20_27();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3BA8, &unk_2705F3910);
        OUTLINED_FUNCTION_18_28();
        OUTLINED_FUNCTION_14_43();
        OUTLINED_FUNCTION_31_16();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518, &unk_2705F2A70);
        OUTLINED_FUNCTION_9_51();
        sub_2705D7E24();
      }

      else
      {
        OUTLINED_FUNCTION_22_23();
      }

      sub_27056B8AC(&v218);
    }

    v122 = sub_270555784(v1, &selRef_lastName);
    if (v123)
    {
      OUTLINED_FUNCTION_8_60(v122, v123);
      OUTLINED_FUNCTION_6_72();
      OUTLINED_FUNCTION_33_17();
      OUTLINED_FUNCTION_16_16();
      MEMORY[0x28223BE20](v124);
      v126 = OUTLINED_FUNCTION_3_84(v125, v208);
      v127(v126);
      v128 = OUTLINED_FUNCTION_39_11();
      OUTLINED_FUNCTION_36_16(v128, v129, v130, v131, v132);
      __swift_destroy_boxed_opaque_existential_1(&v216);
      OUTLINED_FUNCTION_35_18();
    }

    else
    {
      OUTLINED_FUNCTION_46_11();
      if (v133)
      {
        OUTLINED_FUNCTION_47_5();
        OUTLINED_FUNCTION_20_27();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3BA8, &unk_2705F3910);
        OUTLINED_FUNCTION_18_28();
        OUTLINED_FUNCTION_14_43();
        OUTLINED_FUNCTION_31_16();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518, &unk_2705F2A70);
        OUTLINED_FUNCTION_9_51();
        sub_2705D7E24();
      }

      else
      {
        OUTLINED_FUNCTION_22_23();
      }

      sub_27056B8AC(&v218);
    }

    v134 = [v1 purchaseSharingEnabled];
    v220 = MEMORY[0x277D839B0];
    LOBYTE(v218) = v134;
    OUTLINED_FUNCTION_11_48();
    OUTLINED_FUNCTION_6_72();
    OUTLINED_FUNCTION_33_17();
    OUTLINED_FUNCTION_16_16();
    MEMORY[0x28223BE20](v135);
    v137 = OUTLINED_FUNCTION_3_84(v136, v208);
    v138(v137);
    OUTLINED_FUNCTION_45_11();
    sub_2705731C0(v140, v139 - 3, v204 | 0x8000000000000000, v19, &v215, v141, v142);
    __swift_destroy_boxed_opaque_existential_1(&v216);
    v143 = v215;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_270499574();
      v6 = v146;
    }

    v145 = v6[2];
    v144 = v6[3];
    if (v145 >= v144 >> 1)
    {
      OUTLINED_FUNCTION_12_14(v144);
      sub_270499574();
      v6 = v147;
    }

    v6[2] = v145 + 1;
    v6[v145 + 4] = v143;
    ++v7;
    v3 = v210;
    if (v9 == v212)
    {

      v148 = v213;
      goto LABEL_62;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_27059411C(void *a1)
{
  v1 = a1;
  v2 = [a1 familyMembers];
  sub_2703CACA0(0, &qword_2807D8050, 0x277CEE4E8);
  v3 = sub_2705D77C4();

  result = sub_270578E20(v3);
  v5 = MEMORY[0x277D837D0];
  v6 = MEMORY[0x277D839B0];
  if (!result)
  {

    v9 = MEMORY[0x277D84F90];
LABEL_50:
    v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3CC0, &qword_2705F3F80);
    v185 = v9;
    OUTLINED_FUNCTION_34_19();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_7_61();
    OUTLINED_FUNCTION_16_16();
    MEMORY[0x28223BE20](v144);
    OUTLINED_FUNCTION_4_0();
    v146 = OUTLINED_FUNCTION_9_27(v145);
    v147(v146);
    OUTLINED_FUNCTION_27_22();
    sub_270573A48(v148, v149, v150, isUniquelyReferenced_nonNull_native, v151, v152, v153);
    __swift_destroy_boxed_opaque_existential_1(v184);
    v154 = [v1 headOfHouseholdICloudDSID];
    v155 = [v154 stringValue];

    v156 = sub_2705D7564();
    v158 = v157;

    v187 = v5;
    v185 = v156;
    v186 = v158;
    OUTLINED_FUNCTION_34_19();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_48_4();
    OUTLINED_FUNCTION_43_9();
    OUTLINED_FUNCTION_1_14();
    MEMORY[0x28223BE20](v159);
    OUTLINED_FUNCTION_4_0();
    v161 = OUTLINED_FUNCTION_42_11(v160);
    v162(v161);
    OUTLINED_FUNCTION_45_11();
    sub_270572F64(v164, v165, v163 + 6, 0x800000027061AAD0, v156, &v183);
    __swift_destroy_boxed_opaque_existential_1(v184);
    v166 = [v1 isHeadOfHouseholdSharingPayment];
    v187 = v6;
    LOBYTE(v185) = v166;
    OUTLINED_FUNCTION_34_19();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_48_4();
    OUTLINED_FUNCTION_1_14();
    MEMORY[0x28223BE20](v167);
    OUTLINED_FUNCTION_4_0();
    v169 = OUTLINED_FUNCTION_42_11(v168);
    v170(v169);
    OUTLINED_FUNCTION_26_26();
    sub_2705731C0(v171, v172, v173, v156, v174, v175, v176);
    __swift_destroy_boxed_opaque_existential_1(v184);

    return v183;
  }

  v7 = result;
  if (result >= 1)
  {
    v177 = v1;
    v8 = 0;
    v181 = v3 & 0xC000000000000001;
    v9 = MEMORY[0x277D84F90];
    v182 = v3;
    do
    {
      if (v181)
      {
        v10 = MEMORY[0x2743A4130](v8, v3);
      }

      else
      {
        v10 = *(v3 + 8 * v8 + 32);
      }

      v11 = v10;
      v187 = MEMORY[0x277D83B88];
      v185 = -1;
      OUTLINED_FUNCTION_34_19();
      v12 = MEMORY[0x277D84F98];
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v183 = v12;
      __swift_mutable_project_boxed_opaque_existential_1(v184, v184[3]);
      OUTLINED_FUNCTION_43_9();
      OUTLINED_FUNCTION_1_14();
      MEMORY[0x28223BE20](v14);
      v16 = OUTLINED_FUNCTION_1_90(v15, v177);
      v17(v16);
      OUTLINED_FUNCTION_13_45(*v1, v18, v19, v20, v21, v22, v23);
      __swift_destroy_boxed_opaque_existential_1(v184);
      OUTLINED_FUNCTION_52_6();
      v24 = [v11 isAskToBuyEnabled];
      v187 = v6;
      LOBYTE(v185) = v24;
      v25 = OUTLINED_FUNCTION_11_48();
      OUTLINED_FUNCTION_7_61();
      OUTLINED_FUNCTION_43_9();
      OUTLINED_FUNCTION_16_16();
      MEMORY[0x28223BE20](v26);
      v28 = OUTLINED_FUNCTION_0_93(v27, v178);
      v29(v28);
      v30 = OUTLINED_FUNCTION_23_25();
      sub_2705731C0(v30, v31, v32, v25, v33, v34, v35);
      __swift_destroy_boxed_opaque_existential_1(v184);
      OUTLINED_FUNCTION_52_6();
      v36 = [v11 isCurrentSignedInUser];
      v187 = v6;
      LOBYTE(v185) = v36;
      v37 = OUTLINED_FUNCTION_11_48();
      OUTLINED_FUNCTION_7_61();
      OUTLINED_FUNCTION_43_9();
      OUTLINED_FUNCTION_16_16();
      MEMORY[0x28223BE20](v38);
      v40 = OUTLINED_FUNCTION_0_93(v39, v179);
      v41(v40);
      OUTLINED_FUNCTION_26_26();
      sub_2705731C0(v42, v43, v44, v37, v45, v46, v47);
      __swift_destroy_boxed_opaque_existential_1(v184);
      OUTLINED_FUNCTION_52_6();
      v48 = sub_270555784(v11, &selRef_firstName);
      if (v49)
      {
        v50 = OUTLINED_FUNCTION_8_60(v48, v49);
        OUTLINED_FUNCTION_7_61();
        OUTLINED_FUNCTION_43_9();
        OUTLINED_FUNCTION_16_16();
        MEMORY[0x28223BE20](v51);
        v53 = OUTLINED_FUNCTION_0_93(v52, v180);
        v54(v53);
        v55 = OUTLINED_FUNCTION_32_18();
        sub_270489B80(v55, v56, v57, v50, v58, v5);
        __swift_destroy_boxed_opaque_existential_1(v184);
        OUTLINED_FUNCTION_52_6();
      }

      else
      {
        OUTLINED_FUNCTION_38_13();
        if (v59)
        {
          OUTLINED_FUNCTION_49_7();
          v184[0] = v13;
          v12 = *(v13 + 24);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3BA8, &unk_2705F3910);
          sub_2705D7E04();
          OUTLINED_FUNCTION_15_42();
          OUTLINED_FUNCTION_30_20();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518, &unk_2705F2A70);
          OUTLINED_FUNCTION_10_52();
          sub_2705D7E24();
        }

        else
        {
          OUTLINED_FUNCTION_22_23();
        }

        sub_27056B8AC(&v185);
      }

      v60 = [v11 iCloudDSID];
      if (v60)
      {
        v61 = v60;
        v12 = [v60 stringValue];

        v62 = sub_2705D7564();
        v64 = v63;

        v187 = v5;
        v185 = v62;
        v186 = v64;
        OUTLINED_FUNCTION_11_48();
        OUTLINED_FUNCTION_6_72();
        OUTLINED_FUNCTION_16_16();
        MEMORY[0x28223BE20](v65);
        v67 = OUTLINED_FUNCTION_1_90(v66, v180);
        v68(v67);
        OUTLINED_FUNCTION_40_9();
        OUTLINED_FUNCTION_29_18();
        OUTLINED_FUNCTION_17_35(v69, v70, v71, v72, v73);
        __swift_destroy_boxed_opaque_existential_1(v184);
        OUTLINED_FUNCTION_41_11();
      }

      else
      {
        v74 = OUTLINED_FUNCTION_28_22();
        OUTLINED_FUNCTION_37_15(v74);
        if (v75)
        {
          OUTLINED_FUNCTION_49_7();
          OUTLINED_FUNCTION_21_32();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3BA8, &unk_2705F3910);
          OUTLINED_FUNCTION_19_29();
          OUTLINED_FUNCTION_15_42();
          OUTLINED_FUNCTION_30_20();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518, &unk_2705F2A70);
          OUTLINED_FUNCTION_10_52();
          sub_2705D7E24();
        }

        else
        {
          OUTLINED_FUNCTION_22_23();
        }

        sub_27056B8AC(&v185);
      }

      v76 = sub_270555784(v11, &selRef_iCloudUsername);
      if (v77)
      {
        OUTLINED_FUNCTION_8_60(v76, v77);
        OUTLINED_FUNCTION_6_72();
        OUTLINED_FUNCTION_16_16();
        MEMORY[0x28223BE20](v78);
        v80 = OUTLINED_FUNCTION_1_90(v79, v180);
        v81(v80);
        OUTLINED_FUNCTION_40_9();
        OUTLINED_FUNCTION_29_18();
        OUTLINED_FUNCTION_12_46(v82, v83, v84, v85, v86);
        __swift_destroy_boxed_opaque_existential_1(v184);
        OUTLINED_FUNCTION_41_11();
      }

      else
      {
        v87 = OUTLINED_FUNCTION_28_22();
        OUTLINED_FUNCTION_16_34(v87);
        if (v88)
        {
          OUTLINED_FUNCTION_49_7();
          OUTLINED_FUNCTION_21_32();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3BA8, &unk_2705F3910);
          OUTLINED_FUNCTION_19_29();
          OUTLINED_FUNCTION_15_42();
          OUTLINED_FUNCTION_30_20();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518, &unk_2705F2A70);
          OUTLINED_FUNCTION_10_52();
          sub_2705D7E24();
        }

        else
        {
          OUTLINED_FUNCTION_22_23();
        }

        sub_27056B8AC(&v185);
      }

      v89 = [v11 iTunesDSID];
      if (v89)
      {
        v90 = v89;
        v12 = [v89 stringValue];

        v91 = sub_2705D7564();
        v93 = v92;

        v187 = v5;
        v185 = v91;
        v186 = v93;
        OUTLINED_FUNCTION_11_48();
        OUTLINED_FUNCTION_6_72();
        OUTLINED_FUNCTION_16_16();
        MEMORY[0x28223BE20](v94);
        v96 = OUTLINED_FUNCTION_1_90(v95, v180);
        v97(v96);
        OUTLINED_FUNCTION_40_9();
        OUTLINED_FUNCTION_25_27();
        OUTLINED_FUNCTION_17_35(v98, v99, v100, v101, v102);
        __swift_destroy_boxed_opaque_existential_1(v184);
        OUTLINED_FUNCTION_41_11();
      }

      else
      {
        v103 = OUTLINED_FUNCTION_24_29();
        OUTLINED_FUNCTION_37_15(v103);
        if (v104)
        {
          OUTLINED_FUNCTION_49_7();
          OUTLINED_FUNCTION_21_32();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3BA8, &unk_2705F3910);
          OUTLINED_FUNCTION_19_29();
          OUTLINED_FUNCTION_15_42();
          OUTLINED_FUNCTION_30_20();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518, &unk_2705F2A70);
          OUTLINED_FUNCTION_10_52();
          sub_2705D7E24();
        }

        else
        {
          OUTLINED_FUNCTION_22_23();
        }

        sub_27056B8AC(&v185);
      }

      v105 = sub_270555784(v11, &selRef_iTunesUsername);
      if (v106)
      {
        OUTLINED_FUNCTION_8_60(v105, v106);
        OUTLINED_FUNCTION_6_72();
        OUTLINED_FUNCTION_16_16();
        MEMORY[0x28223BE20](v107);
        v109 = OUTLINED_FUNCTION_1_90(v108, v180);
        v110(v109);
        OUTLINED_FUNCTION_40_9();
        OUTLINED_FUNCTION_25_27();
        OUTLINED_FUNCTION_12_46(v111, v112, v113, v114, v115);
        __swift_destroy_boxed_opaque_existential_1(v184);
        OUTLINED_FUNCTION_41_11();
      }

      else
      {
        v116 = OUTLINED_FUNCTION_24_29();
        OUTLINED_FUNCTION_16_34(v116);
        if (v117)
        {
          OUTLINED_FUNCTION_49_7();
          OUTLINED_FUNCTION_21_32();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3BA8, &unk_2705F3910);
          OUTLINED_FUNCTION_19_29();
          OUTLINED_FUNCTION_15_42();
          OUTLINED_FUNCTION_30_20();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518, &unk_2705F2A70);
          OUTLINED_FUNCTION_10_52();
          sub_2705D7E24();
        }

        else
        {
          OUTLINED_FUNCTION_22_23();
        }

        sub_27056B8AC(&v185);
      }

      v118 = sub_270555784(v11, &selRef_lastName);
      if (v119)
      {
        OUTLINED_FUNCTION_8_60(v118, v119);
        OUTLINED_FUNCTION_6_72();
        OUTLINED_FUNCTION_16_16();
        MEMORY[0x28223BE20](v120);
        v122 = OUTLINED_FUNCTION_1_90(v121, v180);
        v123(v122);
        v124 = OUTLINED_FUNCTION_40_9();
        OUTLINED_FUNCTION_36_16(v124, v125, v126, v127, v128);
        __swift_destroy_boxed_opaque_existential_1(v184);
        OUTLINED_FUNCTION_41_11();
      }

      else
      {
        OUTLINED_FUNCTION_46_11();
        if (v129)
        {
          OUTLINED_FUNCTION_49_7();
          OUTLINED_FUNCTION_21_32();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3BA8, &unk_2705F3910);
          OUTLINED_FUNCTION_19_29();
          OUTLINED_FUNCTION_15_42();
          OUTLINED_FUNCTION_30_20();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518, &unk_2705F2A70);
          OUTLINED_FUNCTION_10_52();
          sub_2705D7E24();
        }

        else
        {
          OUTLINED_FUNCTION_22_23();
        }

        sub_27056B8AC(&v185);
      }

      v130 = [v11 isSharingPurchases];
      v187 = v6;
      LOBYTE(v185) = v130;
      OUTLINED_FUNCTION_11_48();
      OUTLINED_FUNCTION_6_72();
      OUTLINED_FUNCTION_16_16();
      MEMORY[0x28223BE20](v131);
      v133 = OUTLINED_FUNCTION_1_90(v132, v180);
      v134(v133);
      OUTLINED_FUNCTION_45_11();
      sub_2705731C0(v136, v135 - 3, 0x800000027061AA90, v12, &v183, v137, v138);
      __swift_destroy_boxed_opaque_existential_1(v184);
      v139 = v183;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_270499574();
        v9 = v141;
      }

      v1 = *(v9 + 16);
      v140 = *(v9 + 24);
      if (v1 >= v140 >> 1)
      {
        OUTLINED_FUNCTION_12_14(v140);
        sub_270499574();
        v9 = v142;
      }

      ++v8;

      *(v9 + 16) = v1 + 1;
      *(v9 + 8 * v1 + 32) = v139;
      v3 = v182;
    }

    while (v7 != v8);

    v1 = v177;
    goto LABEL_50;
  }

  __break(1u);
  return result;
}

uint64_t sub_270594EDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518, &unk_2705F2A70);
  v3 = MEMORY[0x277D837D0];
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FB7B8](a1, v3, v2, v4);
}

uint64_t OUTLINED_FUNCTION_6_72()
{
  *(v1 - 152) = v0;
  v3 = *(v1 - 120);

  return __swift_mutable_project_boxed_opaque_existential_1(v1 - 144, v3);
}

uint64_t OUTLINED_FUNCTION_7_61()
{
  *(v1 - 152) = v0;
  v3 = *(v1 - 120);

  return __swift_mutable_project_boxed_opaque_existential_1(v1 - 144, v3);
}

uint64_t OUTLINED_FUNCTION_8_60(uint64_t a1, uint64_t a2)
{
  *(v3 - 88) = v2;
  *(v3 - 112) = a1;
  *(v3 - 104) = a2;
  sub_2703E43D4((v3 - 112), (v3 - 144));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_11_48()
{
  sub_2703E43D4((v0 - 112), (v0 - 144));

  return swift_isUniquelyReferenced_nonNull_native();
}

_OWORD *OUTLINED_FUNCTION_12_46(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = a2 & 0xFFFFFFFFFFFFLL | 0x7355000000000000;

  return sub_270489B80(a1, v8, 0xEE00656D616E7265, v6, a5, v5);
}

void OUTLINED_FUNCTION_13_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  sub_2705730A0(a1, 0x6765746143656761, 0xEB0000000079726FLL, v7, v8 - 152, a6, a7);
}

uint64_t OUTLINED_FUNCTION_14_43()
{
}

uint64_t OUTLINED_FUNCTION_15_42()
{
}

unint64_t OUTLINED_FUNCTION_16_34(uint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFLL | 0x7355000000000000;

  return sub_2703D7318(v2, 0xEE00656D616E7265);
}

_OWORD *OUTLINED_FUNCTION_17_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = a2 & 0xFFFFFFFFFFFFLL | 0x5344000000000000;

  return sub_270489B80(a1, v8, 0xEA00000000004449, v6, a5, v5);
}

uint64_t OUTLINED_FUNCTION_18_28()
{

  return sub_2705D7E04();
}

uint64_t OUTLINED_FUNCTION_19_29()
{

  return sub_2705D7E04();
}

double OUTLINED_FUNCTION_22_23()
{
  result = 0.0;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0u;
  return result;
}

_OWORD *OUTLINED_FUNCTION_30_20()
{
  v4 = (*(v0 + 56) + 32 * v1);

  return sub_2703E43D4(v4, (v2 - 112));
}

_OWORD *OUTLINED_FUNCTION_31_16()
{
  v4 = (*(v0 + 56) + 32 * v1);

  return sub_2703E43D4(v4, (v2 - 112));
}

_OWORD *OUTLINED_FUNCTION_34_19()
{

  return sub_2703E43D4((v0 - 112), (v0 - 144));
}

_OWORD *OUTLINED_FUNCTION_36_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{

  return sub_270489B80(a1, 0x656D614E7473616CLL, 0xE800000000000000, v6, a5, v5);
}

unint64_t OUTLINED_FUNCTION_37_15(uint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFLL | 0x5344000000000000;

  return sub_2703D7318(v2, 0xEA00000000004449);
}

unint64_t OUTLINED_FUNCTION_38_13()
{

  return sub_2703D7318(0x6D614E7473726966, 0xE900000000000065);
}

unint64_t OUTLINED_FUNCTION_46_11()
{

  return sub_2703D7318(0x656D614E7473616CLL, 0xE800000000000000);
}

uint64_t OUTLINED_FUNCTION_47_5()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_48_4()
{
  *(v1 - 152) = v0;
  v3 = *(v1 - 120);

  return __swift_mutable_project_boxed_opaque_existential_1(v1 - 144, v3);
}

uint64_t OUTLINED_FUNCTION_49_7()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

id sub_270595468()
{
  v1 = OBJC_IVAR____TtC25UnifiedMessagingKitJSCore10JSFollowUp____lazy_storage___dateFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC25UnifiedMessagingKitJSCore10JSFollowUp____lazy_storage___dateFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC25UnifiedMessagingKitJSCore10JSFollowUp____lazy_storage___dateFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2705954DC()
{
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore10JSFollowUp____lazy_storage___dateFormatter] = 0;
  sub_2703CACA0(0, &qword_2807D5008, 0x277CB8F48);
  sub_2705D68B4();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore10JSFollowUp_accountStore] = v4;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for JSFollowUp();
  v1 = objc_msgSendSuper2(&v3, sel_init);

  return v1;
}

uint64_t sub_270595570()
{
  sub_2703CACA0(0, &qword_2807D7F50, 0x277CD4640);
  v0 = sub_2705D7BC4();
  v8 = OUTLINED_FUNCTION_24_30(v0, v1, v2, v3, v4, v5, v6, v7, v10);

  return v8;
}

const char *sub_2705955F4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  sub_2705D6B14();
  MEMORY[0x2743A2F10]();
  swift_weakInit();

  if (swift_weakLoadStrong())
  {

    sub_2703CACA0(0, &qword_2807D7F50, 0x277CD4640);
    v9 = swift_allocObject();
    v9[2] = a2;
    v9[3] = a3;
    v9[4] = v8;
    v9[5] = a4;

    v10 = a4;
    v11 = sub_27058C4D8(a1, sub_27059A524, v9);
  }

  else
  {
    v11 = "$__lazy_storage_$_dateFormatter";
    sub_2705D6F34();
    sub_270566624();
    swift_allocError();
    sub_2705D6F04();
    swift_willThrow();
  }

  return v11;
}

void sub_2705957A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v36 = a7;
  v33 = a6;
  v34 = a2;
  v8 = sub_2705D63A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v31 = v10;
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x277CEE4F8]) init];
  v35 = v12;
  v13 = sub_2705D7534();
  v37 = [v12 clearFollowUpWithBackingIdentifier_];

  v32 = *(v9 + 16);
  v14 = v8;
  v32(v11, a3, v8);
  v28[0] = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = v28[0];
  v16 = swift_allocObject();
  v17 = v33;
  v18 = v36;
  *(v16 + 16) = v33;
  *(v16 + 24) = v18;
  v29 = *(v9 + 32);
  v30 = v9 + 32;
  v19 = v16 + v15;
  v20 = v14;
  v29(v19, v11, v14);
  v42 = sub_27059A540;
  v43 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v28[1] = &v40;
  v40 = sub_27059D0C4;
  v41 = &block_descriptor_80;
  v21 = _Block_copy(&aBlock);

  v22 = v36;

  [v37 addErrorBlock_];
  _Block_release(v21);
  v32(v11, v34, v14);
  v23 = v28[0];
  v24 = swift_allocObject();
  *(v24 + 16) = v17;
  *(v24 + 24) = v22;
  v29(v24 + v23, v11, v20);
  v42 = sub_27059A610;
  v43 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = sub_2703C9520;
  v41 = &block_descriptor_86;
  v25 = _Block_copy(&aBlock);

  v26 = v22;

  v27 = v37;
  [v37 addSuccessBlock_];
  _Block_release(v25);
}

uint64_t sub_270595B6C()
{
  OUTLINED_FUNCTION_19_30();
  sub_2703CACA0(0, &qword_2807D7F50, 0x277CD4640);
  v0 = sub_2705D7BC4();
  v8 = OUTLINED_FUNCTION_24_30(v0, v1, v2, v3, v4, v5, v6, v7, v10);

  return v8;
}

const char *sub_270595BF0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  sub_2705D6B14();
  MEMORY[0x2743A2F10]();
  swift_weakInit();

  if (swift_weakLoadStrong())
  {

    sub_2703CACA0(0, &qword_2807D7F50, 0x277CD4640);
    v11 = swift_allocObject();
    v11[2] = a2;
    v11[3] = a3;
    v11[4] = a4;
    v11[5] = a5;
    v11[6] = v10;

    v12 = a2;
    v13 = sub_27058C4D8(a1, sub_27059A3E8, v11);
  }

  else
  {
    v13 = "$__lazy_storage_$_dateFormatter";
    sub_2705D6F34();
    sub_270566624();
    swift_allocError();
    sub_2705D6F04();
    swift_willThrow();
  }

  return v13;
}

void sub_270595DB4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, char *, uint64_t), void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a8;
  v34 = a2;
  v31 = a3;
  v10 = sub_2705D63A4();
  v11 = *(v10 - 8);
  v38 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x277CEE4F8]) init];
  v35 = v14;
  v28 = a4;
  v15 = sub_270599A2C(a5);
  v36 = v15;
  v16 = sub_2705D7534();
  v37 = [v14 clearFollowUpWithIdentifier:v16 account:v15];

  v32 = *(v11 + 16);
  v29 = v10;
  v32(v13, v31, v10);
  v17 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v18 = swift_allocObject();
  v19 = v33;
  *(v18 + 16) = v33;
  *(v18 + 24) = a4;
  v31 = *(v11 + 32);
  v31(v18 + v17, v13, v10);
  v43 = sub_27059A408;
  v44 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v30 = &v41;
  v41 = sub_27059D0C4;
  v42 = &block_descriptor_58;
  v20 = _Block_copy(&aBlock);
  v21 = v19;

  v22 = v28;

  [v37 addErrorBlock_];
  _Block_release(v20);
  v23 = v29;
  v32(v13, v34, v29);
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  *(v24 + 24) = v22;
  v31(v24 + v17, v13, v23);
  v43 = sub_27059A428;
  v44 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_2703C9520;
  v42 = &block_descriptor_64;
  v25 = _Block_copy(&aBlock);

  v26 = v22;

  v27 = v37;
  [v37 addSuccessBlock_];
  _Block_release(v25);
}

void sub_270596138()
{
  OUTLINED_FUNCTION_26_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_2705D6524();
  v5 = OUTLINED_FUNCTION_23_0(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_75();
  if (qword_2807D7390 != -1)
  {
    OUTLINED_FUNCTION_2_90(&qword_2807D7390);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
  v6 = sub_2705D6574();
  OUTLINED_FUNCTION_1_1(v6);
  OUTLINED_FUNCTION_29_8();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2705E6EB0;
  v25 = type metadata accessor for JSFollowUp();
  v24[0] = v3;
  v8 = v3;
  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    v11 = sub_2705D7564();
    v13 = v12;

    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_12_20();
    __swift_project_boxed_opaque_existential_1(v24, v25);
    DynamicType = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v22[0] = DynamicType;
    sub_2705D64E4();
    sub_2704B667C(v22);
    OUTLINED_FUNCTION_7_24();
    MetatypeMetadata = MEMORY[0x277D837D0];
    v22[0] = v11;
    v22[1] = v13;
    sub_2705D64E4();
  }

  else
  {
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_12_20();
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v15 = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v22[0] = v15;
    sub_2705D64E4();
  }

  sub_2704B667C(v22);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v24);
  sub_2705D64C4();
  v16 = sub_2705D7A74();
  sub_2705B6DB8(v16, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13C8, &unk_2705E9BA0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2705DC030;
  v18 = objc_allocWithZone(type metadata accessor for CoreJSError());
  v19 = v1;
  v20 = sub_270565CB4(v1);
  v21 = sub_2705658DC();

  *(v17 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34D0, &qword_2705F2A80);
  *(v17 + 32) = v21;
  sub_27058AB00(v17);

  OUTLINED_FUNCTION_25_1();
}

void sub_270596424()
{
  OUTLINED_FUNCTION_26_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_2705D63A4();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v16 = sub_2705D6524();
  v17 = OUTLINED_FUNCTION_23_0(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_75();
  OUTLINED_FUNCTION_26_27(v9 + 16, &v42);
  if (swift_weakLoadStrong())
  {
  }

  else
  {
    v36 = v5;
    v37 = v3;
    v38 = v1;
    if (qword_2807D7390 != -1)
    {
      OUTLINED_FUNCTION_2_90(&qword_2807D7390);
    }

    v35 = qword_28081C610;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
    OUTLINED_FUNCTION_4_41();
    v18 = sub_2705D6574();
    OUTLINED_FUNCTION_1_1(v18);
    OUTLINED_FUNCTION_29_8();
    v34 = v19;
    v20 = OUTLINED_FUNCTION_25_28();
    *(v20 + 16) = xmmword_2705E6EB0;
    v41[3] = type metadata accessor for JSFollowUp();
    v41[0] = v7;
    v21 = v7;
    v22 = AMSLogKey();
    if (v22)
    {
      v23 = v22;
      v24 = sub_2705D7564();
      v32 = v25;
      v33 = v24;

      OUTLINED_FUNCTION_5_35();
      OUTLINED_FUNCTION_12_20();
      v26 = OUTLINED_FUNCTION_7_42(v41);
      MetatypeMetadata = swift_getMetatypeMetadata();
      v39[0] = v26;
      sub_2705D64E4();
      sub_2704B667C(v39);
      OUTLINED_FUNCTION_7_24();
      MetatypeMetadata = MEMORY[0x277D837D0];
      v39[0] = v33;
      v39[1] = v32;
    }

    else
    {
      OUTLINED_FUNCTION_6_31();
      OUTLINED_FUNCTION_12_20();
      v27 = OUTLINED_FUNCTION_7_42(v41);
      MetatypeMetadata = swift_getMetatypeMetadata();
      v39[0] = v27;
    }

    sub_2705D64E4();
    sub_2704B667C(v39);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v41);
    sub_2705D64C4();
    v28 = sub_2705D7A74();
    sub_2705B6DB8(v28, v20);

    v5 = v36;
  }

  OUTLINED_FUNCTION_26_27(v9 + 16, v41);
  if (swift_weakLoadStrong())
  {
    (*(v12 + 16))(&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v5, v10);
    v29 = (*(v12 + 80) + 24) & ~*(v12 + 80);
    v30 = OUTLINED_FUNCTION_25_28();
    *(v30 + 16) = v7;
    (*(v12 + 32))(v30 + v29, &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    v31 = v7;
    sub_2705D6B04();
  }

  OUTLINED_FUNCTION_25_1();
}

void sub_270596798()
{
  OUTLINED_FUNCTION_26_1();
  v1 = v0;
  v2 = sub_2705D6524();
  v3 = OUTLINED_FUNCTION_23_0(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_75();
  if (qword_2807D7390 != -1)
  {
    OUTLINED_FUNCTION_2_90(&qword_2807D7390);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
  v4 = sub_2705D6574();
  OUTLINED_FUNCTION_1_1(v4);
  OUTLINED_FUNCTION_29_8();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2705E6EB0;
  v18[3] = type metadata accessor for JSFollowUp();
  v18[0] = v1;
  v6 = v1;
  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    v9 = sub_2705D7564();
    v11 = v10;

    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_12_20();
    v12 = OUTLINED_FUNCTION_54_3(v18);
    MetatypeMetadata = swift_getMetatypeMetadata();
    v16[0] = v12;
    sub_2705D64E4();
    sub_2704B667C(v16);
    OUTLINED_FUNCTION_7_24();
    MetatypeMetadata = MEMORY[0x277D837D0];
    v16[0] = v9;
    v16[1] = v11;
    sub_2705D64E4();
  }

  else
  {
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_12_20();
    v13 = OUTLINED_FUNCTION_7_42(v18);
    MetatypeMetadata = swift_getMetatypeMetadata();
    v16[0] = v13;
    sub_2705D64E4();
  }

  sub_2704B667C(v16);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v18);
  sub_2705D64C4();
  v14 = sub_2705D7A94();
  sub_2705B6DB8(v14, v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13C8, &unk_2705E9BA0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2705DC030;
  *(v15 + 56) = MEMORY[0x277D839B0];
  *(v15 + 32) = 1;
  sub_27058AB00(v15);

  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_270596A3C()
{
  OUTLINED_FUNCTION_19_30();
  swift_getObjectType();
  sub_2703CACA0(0, &qword_2807D7F50, 0x277CD4640);
  v0 = sub_2705D7BC4();
  v8 = OUTLINED_FUNCTION_24_30(v0, v1, v2, v3, v4, v5, v6, v7, v10);

  return v8;
}

const char *sub_270596AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_allocObject();
  sub_2705D6B14();
  MEMORY[0x2743A2F10]();
  swift_weakInit();

  if (swift_weakLoadStrong())
  {

    sub_2703CACA0(0, &qword_2807D7F50, 0x277CD4640);
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = a3;
    v12[4] = a4;
    v12[5] = a5;
    v12[6] = v10;
    v12[7] = a6;

    v13 = sub_27058C4D8(0, sub_27059A0F8, v12);
  }

  else
  {
    v13 = "$__lazy_storage_$_dateFormatter";
    sub_2705D6F34();
    sub_270566624();
    swift_allocError();
    sub_2705D6F04();
    swift_willThrow();
  }

  return v13;
}

void sub_270596CC4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v48 = a3;
  v49 = a2;
  v11 = sub_2705D63A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v51 = v13;
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2705D6524();
  MEMORY[0x28223BE20](v15 - 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = [objc_allocWithZone(MEMORY[0x277CEE4F8]) init];
    v46 = v18;
    v19 = sub_270599A2C(a5);
    v47 = v19;
    v20 = sub_2705D7534();
    v50 = [v18 pendingFollowUpWithIdentifier:v20 account:v19];

    v41 = a8;
    v45 = *(v12 + 16);
    v42 = v14;
    v45(v14, v48, v11);
    v43 = v11;
    v21 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = a8;
    *(v22 + 24) = v17;
    v48 = *(v12 + 32);
    v48(v22 + v21, v14, v11);
    v56 = sub_27059A124;
    v57 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v53 = 1107296256;
    v44 = &v54;
    v54 = sub_27059D0C4;
    MetatypeMetadata = &block_descriptor_36;
    v23 = _Block_copy(&aBlock);
    v24 = v41;

    v25 = v17;

    [v50 addErrorBlock_];
    _Block_release(v23);
    v26 = v42;
    v27 = v43;
    v45(v42, v49, v43);
    v28 = swift_allocObject();
    *(v28 + 16) = v24;
    *(v28 + 24) = v25;
    v48(v28 + v21, v26, v27);
    v56 = sub_27059A1B4;
    v57 = v28;
    aBlock = MEMORY[0x277D85DD0];
    v53 = 1107296256;
    v54 = sub_27059A8B4;
    MetatypeMetadata = &block_descriptor_42;
    v29 = _Block_copy(&aBlock);

    v30 = v25;

    v31 = v50;
    [v50 addSuccessBlock_];
    _Block_release(v29);
  }

  else
  {
    if (qword_2807D7390 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
    sub_2705D6574();
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_2705E6EB0;
    MetatypeMetadata = swift_getMetatypeMetadata();
    aBlock = a9;
    v33 = AMSLogKey();
    if (v33)
    {
      v34 = v33;
      v35 = sub_2705D7564();
      v37 = v36;

      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(&aBlock, MetatypeMetadata);
      DynamicType = swift_getDynamicType();
      v59 = swift_getMetatypeMetadata();
      v58[0] = DynamicType;
      sub_2705D64E4();
      sub_2704B667C(v58);
      sub_2705D6504();
      v59 = MEMORY[0x277D837D0];
      v58[0] = v35;
      v58[1] = v37;
    }

    else
    {
      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(&aBlock, MetatypeMetadata);
      v39 = swift_getDynamicType();
      v59 = swift_getMetatypeMetadata();
      v58[0] = v39;
    }

    sub_2705D64E4();
    sub_2704B667C(v58);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    sub_2705D64C4();
    v40 = sub_2705D7A74();
    sub_2705B6DB8(v40, v32);
  }
}

uint64_t sub_270597334(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_2705D6524();
  MEMORY[0x28223BE20](v5 - 8);
  if (qword_2807D7390 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
  sub_2705D6574();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2705E6EB0;
  v25 = type metadata accessor for JSFollowUp();
  v24[0] = a1;
  v7 = a1;
  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    v10 = sub_2705D7564();
    v12 = v11;

    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v24, v25);
    DynamicType = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v22[0] = DynamicType;
    sub_2705D64E4();
    sub_2704B667C(v22);
    sub_2705D6504();
    MetatypeMetadata = MEMORY[0x277D837D0];
    v22[0] = v10;
    v22[1] = v12;
    sub_2705D64E4();
  }

  else
  {
    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v14 = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v22[0] = v14;
    sub_2705D64E4();
  }

  sub_2704B667C(v22);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v24);
  sub_2705D64C4();
  v15 = sub_2705D7A74();
  sub_2705B6DB8(v15, v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13C8, &unk_2705E9BA0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2705DC030;
  v17 = objc_allocWithZone(type metadata accessor for CoreJSError());
  v18 = a3;
  v19 = sub_270565CB4(a3);
  v20 = sub_2705658DC();

  *(v16 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34D0, &qword_2705F2A80);
  *(v16 + 32) = v20;
  sub_27058AB00(v16);
}

uint64_t sub_270597694(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_2705D63A4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = sub_2705D6524();
  MEMORY[0x28223BE20](v10 - 8);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
  }

  else
  {
    v30 = a4;
    v31 = a1;
    if (qword_2807D7390 != -1)
    {
      swift_once();
    }

    v29 = qword_28081C610;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
    v28 = *(*(sub_2705D6574() - 8) + 72);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_2705E6EB0;
    v35 = type metadata accessor for JSFollowUp();
    v34[0] = a3;
    v12 = a3;
    v13 = AMSLogKey();
    if (v13)
    {
      v14 = v13;
      v15 = sub_2705D7564();
      v26 = v16;
      v27 = v15;

      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(v34, v35);
      DynamicType = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v32[0] = DynamicType;
      sub_2705D64E4();
      sub_2704B667C(v32);
      sub_2705D6504();
      MetatypeMetadata = MEMORY[0x277D837D0];
      v32[0] = v27;
      v32[1] = v26;
    }

    else
    {
      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(v34, v35);
      v18 = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v32[0] = v18;
    }

    sub_2705D64E4();
    sub_2704B667C(v32);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v34);
    sub_2705D64C4();
    v19 = sub_2705D7A74();
    sub_2705B6DB8(v19, v11);

    a4 = v30;
    a1 = v31;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v8 + 16))(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v7);
    v21 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = a3;
    (*(v8 + 32))(v22 + v21, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    *(v22 + ((v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
    v23 = a3;
    v24 = a1;
    sub_2705D6B04();
  }

  return result;
}

uint64_t sub_270597AE8(void *a1)
{
  v2 = sub_2705D6524();
  MEMORY[0x28223BE20](v2 - 8);
  if (qword_2807D7390 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
  sub_2705D6574();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2705E6EB0;
  v19 = type metadata accessor for JSFollowUp();
  v18[0] = a1;
  a1;
  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    v6 = sub_2705D7564();
    v8 = v7;

    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v18, v19);
    DynamicType = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v16[0] = DynamicType;
    sub_2705D64E4();
    sub_2704B667C(v16);
    sub_2705D6504();
    MetatypeMetadata = MEMORY[0x277D837D0];
    v16[0] = v6;
    v16[1] = v8;
    sub_2705D64E4();
  }

  else
  {
    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v10 = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v16[0] = v10;
    sub_2705D64E4();
  }

  sub_2704B667C(v16);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v18);
  sub_2705D64C4();
  v11 = sub_2705D7A94();
  sub_2705B6DB8(v11, v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13C8, &unk_2705E9BA0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2705DC030;
  v13 = sub_270595468();
  v14 = sub_270554F98(v13);

  *(v12 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34D0, &qword_2705F2A80);
  *(v12 + 32) = v14;
  sub_27058AB00(v12);
}

id sub_270597E7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = sub_2705D7564();
  v10 = v9;
  if (a4)
  {
    a4 = sub_2705D7464();
  }

  v11 = a1;
  v12 = a5(v8, v10, a4);

  return v12;
}

uint64_t sub_270597F38()
{
  swift_getObjectType();
  sub_2703CACA0(0, &qword_2807D7F50, 0x277CD4640);
  v0 = sub_2705D7BC4();
  v8 = OUTLINED_FUNCTION_24_30(v0, v1, v2, v3, v4, v5, v6, v7, v10);

  return v8;
}

const char *sub_270597FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  sub_2705D6B14();
  MEMORY[0x2743A2F10]();
  swift_weakInit();

  if (swift_weakLoadStrong())
  {

    sub_2703CACA0(0, &qword_2807D7F50, 0x277CD4640);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = a3;
    v8[4] = v6;
    v8[5] = a4;

    v9 = sub_27058C4D8(0, sub_270599D20, v8);
  }

  else
  {
    v9 = "$__lazy_storage_$_dateFormatter";
    sub_2705D6F34();
    sub_270566624();
    swift_allocError();
    sub_2705D6F04();
    swift_willThrow();
  }

  return v9;
}

void sub_27059819C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v56 = a6;
  v57 = a3;
  v54 = a2;
  v9 = sub_2705D63A4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - v14;
  v16 = sub_2705D6524();
  MEMORY[0x28223BE20](v16 - 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v53 = [objc_allocWithZone(MEMORY[0x277CEE4F8]) init];
    v55 = sub_270598818(a5, v53);
    v49 = *(v10 + 16);
    v49(v15, v57, v9);
    v19 = *(v10 + 80);
    v47 = ((v19 + 32) & ~v19) + v11;
    v52 = v11;
    v20 = v10;
    v21 = v15;
    v50 = (v19 + 32) & ~v19;
    v22 = swift_allocObject();
    v46 = v13;
    v23 = v22;
    *(v22 + 16) = v56;
    *(v22 + 24) = v18;
    v48 = *(v20 + 32);
    v48(v22 + ((v19 + 32) & ~v19), v15, v9);
    v62 = sub_270599D40;
    v63 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v59 = 1107296256;
    v51 = &v60;
    v60 = sub_27059D0C4;
    MetatypeMetadata = &block_descriptor_8;
    v24 = _Block_copy(&aBlock);
    v25 = v56;

    v26 = v18;

    [v55 addErrorBlock_];
    _Block_release(v24);
    v27 = v21;
    v28 = v49;
    v49(v21, v57, v9);
    v29 = v46;
    v28(v46, v54, v9);
    v30 = (v47 + v19) & ~v19;
    v31 = swift_allocObject();
    *(v31 + 16) = v25;
    *(v31 + 24) = v26;
    v32 = v48;
    v48(v31 + v50, v27, v9);
    v32(v31 + v30, v29, v9);
    v62 = sub_270599E58;
    v63 = v31;
    aBlock = MEMORY[0x277D85DD0];
    v59 = 1107296256;
    v60 = sub_27059A8B4;
    MetatypeMetadata = &block_descriptor_19;
    v33 = _Block_copy(&aBlock);

    v34 = v26;

    v35 = v55;
    [v55 addSuccessBlock_];
    _Block_release(v33);
  }

  else
  {
    if (qword_2807D7390 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
    sub_2705D6574();
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_2705E6EB0;
    MetatypeMetadata = swift_getMetatypeMetadata();
    aBlock = a7;
    v37 = AMSLogKey();
    if (v37)
    {
      v38 = v37;
      v39 = sub_2705D7564();
      v41 = v40;

      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(&aBlock, MetatypeMetadata);
      DynamicType = swift_getDynamicType();
      v65 = swift_getMetatypeMetadata();
      v64[0] = DynamicType;
      sub_2705D64E4();
      sub_2704B667C(v64);
      sub_2705D6504();
      v65 = MEMORY[0x277D837D0];
      v64[0] = v39;
      v64[1] = v41;
    }

    else
    {
      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(&aBlock, MetatypeMetadata);
      v43 = swift_getDynamicType();
      v65 = swift_getMetatypeMetadata();
      v64[0] = v43;
    }

    sub_2705D64E4();
    sub_2704B667C(v64);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    sub_2705D64C4();
    v44 = sub_2705D7A74();
    sub_2705B6DB8(v44, v36);
  }
}

id sub_270598818(uint64_t a1, void *a2)
{
  if (!a1)
  {
    v7 = 0u;
    v8 = 0u;
    goto LABEL_6;
  }

  sub_2703D5404(0x746E756F636361, 0xE700000000000000, a1, &v7);
  if (!*(&v8 + 1))
  {
LABEL_6:
    sub_2704B667C(&v7);
    goto LABEL_7;
  }

  type metadata accessor for JSAccount();
  if (swift_dynamicCast())
  {
    v3 = [a2 pendingFollowUpsForAccount_];

    return v3;
  }

LABEL_7:
  v5 = [a2 pendingFollowUps];

  return v5;
}

void sub_270598914()
{
  OUTLINED_FUNCTION_26_1();
  v40 = v0;
  v41 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_2705D63A4();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v16 = sub_2705D6524();
  v17 = OUTLINED_FUNCTION_23_0(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_75();
  OUTLINED_FUNCTION_26_27(v9 + 16, &v45);
  if (swift_weakLoadStrong())
  {
  }

  else
  {
    v38 = v5;
    v39 = v3;
    if (qword_2807D7390 != -1)
    {
      OUTLINED_FUNCTION_2_90(&qword_2807D7390);
    }

    v37 = qword_28081C610;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
    OUTLINED_FUNCTION_4_41();
    v18 = sub_2705D6574();
    OUTLINED_FUNCTION_1_1(v18);
    OUTLINED_FUNCTION_29_8();
    v36 = v19;
    v20 = OUTLINED_FUNCTION_25_28();
    *(v20 + 16) = xmmword_2705E6EB0;
    v44[3] = type metadata accessor for JSFollowUp();
    v44[0] = v7;
    v21 = v7;
    v22 = AMSLogKey();
    if (v22)
    {
      v23 = v22;
      v24 = sub_2705D7564();
      v34 = v25;
      v35 = v24;

      OUTLINED_FUNCTION_5_35();
      OUTLINED_FUNCTION_12_20();
      v26 = OUTLINED_FUNCTION_54_3(v44);
      MetatypeMetadata = swift_getMetatypeMetadata();
      v42[0] = v26;
      sub_2705D64E4();
      sub_2704B667C(v42);
      OUTLINED_FUNCTION_7_24();
      MetatypeMetadata = MEMORY[0x277D837D0];
      v42[0] = v35;
      v42[1] = v34;
    }

    else
    {
      OUTLINED_FUNCTION_6_31();
      OUTLINED_FUNCTION_12_20();
      v27 = OUTLINED_FUNCTION_54_3(v44);
      MetatypeMetadata = swift_getMetatypeMetadata();
      v42[0] = v27;
    }

    sub_2705D64E4();
    sub_2704B667C(v42);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v44);
    sub_2705D64C4();
    v28 = sub_2705D7A74();
    sub_2705B6DB8(v28, v20);

    v5 = v38;
  }

  OUTLINED_FUNCTION_26_27(v9 + 16, v44);
  if (swift_weakLoadStrong())
  {
    (*(v12 + 16))(&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v5, v10);
    v29 = (*(v12 + 80) + 24) & ~*(v12 + 80);
    v30 = OUTLINED_FUNCTION_25_28();
    *(v30 + 16) = v7;
    (*(v12 + 32))(v30 + v29, &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    v31 = v40;
    *(v30 + ((v14 + v29 + 7) & 0xFFFFFFFFFFFFFFF8)) = v40;
    v32 = v7;
    v33 = v31;
    sub_2705D6B04();
  }

  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_270598C9C(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_2705D6524();
  MEMORY[0x28223BE20](v5 - 8);
  if (qword_2807D7390 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
  sub_2705D6574();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2705E6EB0;
  v25 = type metadata accessor for JSFollowUp();
  v24[0] = a1;
  v7 = a1;
  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    v10 = sub_2705D7564();
    v12 = v11;

    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v24, v25);
    DynamicType = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v22[0] = DynamicType;
    sub_2705D64E4();
    sub_2704B667C(v22);
    sub_2705D6504();
    MetatypeMetadata = MEMORY[0x277D837D0];
    v22[0] = v10;
    v22[1] = v12;
    sub_2705D64E4();
  }

  else
  {
    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v14 = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v22[0] = v14;
    sub_2705D64E4();
  }

  sub_2704B667C(v22);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v24);
  sub_2705D64C4();
  v15 = sub_2705D7A74();
  sub_2705B6DB8(v15, v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13C8, &unk_2705E9BA0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2705DC030;
  v17 = objc_allocWithZone(type metadata accessor for CoreJSError());
  v18 = a3;
  v19 = sub_270565CB4(a3);
  v20 = sub_2705658DC();

  *(v16 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34D0, &qword_2705F2A80);
  *(v16 + 32) = v20;
  sub_27058AB00(v16);
}

uint64_t sub_270598FFC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v39 = a4;
  v40 = a1;
  v7 = sub_2705D63A4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v41 = &v34 - v11;
  v12 = sub_2705D6524();
  MEMORY[0x28223BE20](v12 - 8);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
  }

  else
  {
    v38 = a5;
    if (qword_2807D7390 != -1)
    {
      swift_once();
    }

    v37 = qword_28081C610;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
    v36 = *(*(sub_2705D6574() - 8) + 72);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2705E6EB0;
    v45 = type metadata accessor for JSFollowUp();
    v44[0] = a3;
    v14 = a3;
    v15 = AMSLogKey();
    if (v15)
    {
      v16 = v15;
      v17 = sub_2705D7564();
      v34 = v18;
      v35 = v17;

      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(v44, v45);
      DynamicType = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v42[0] = DynamicType;
      sub_2705D64E4();
      sub_2704B667C(v42);
      sub_2705D6504();
      MetatypeMetadata = MEMORY[0x277D837D0];
      v42[0] = v35;
      v42[1] = v34;
    }

    else
    {
      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(v44, v45);
      v20 = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v42[0] = v20;
    }

    sub_2705D64E4();
    sub_2704B667C(v42);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v44);
    sub_2705D64C4();
    v21 = sub_2705D7A74();
    sub_2705B6DB8(v21, v13);

    a5 = v38;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = *(v8 + 16);
    v38 = result;
    v23(v41, v39, v7);
    v23(&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v7);
    v24 = *(v8 + 80);
    v25 = (v24 + 24) & ~v24;
    v26 = (v9 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = (v24 + v26 + 8) & ~v24;
    v28 = swift_allocObject();
    v30 = v40;
    v29 = v41;
    *(v28 + 16) = v40;
    v31 = *(v8 + 32);
    v31(v28 + v25, v29, v7);
    *(v28 + v26) = a3;
    v31(v28 + v27, &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    v32 = a3;
    v33 = v30;
    sub_2705D6B04();
  }

  return result;
}

uint64_t sub_2705994B8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = sub_2705D6524();
  MEMORY[0x28223BE20](v3 - 8);
  sub_2703CACA0(0, &qword_2807D8068, 0x277CEE500);
  sub_2705D77B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13C8, &unk_2705E9BA0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2705DC030;
  *(v4 + 56) = sub_2705D6F34();
  __swift_allocate_boxed_opaque_existential_1Tm((v4 + 32));
  sub_2705D6F04();
  sub_27058AB00(v4);
}

void sub_270599930(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_270599A2C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = v1;
  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = sub_2703D7318(0x746E756F636361, 0xE700000000000000);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_2703D7F04(*(a1 + 56) + 32 * v4, &v19);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34D0, &qword_2705F2A80);
  if ((OUTLINED_FUNCTION_22_24(v6, v7, v8, v6, v9) & 1) == 0)
  {
    return 0;
  }

  sub_2703D5404(1684632420, 0xE400000000000000, v18, &v19);

  if (!v20)
  {
    sub_2704B667C(&v19);
    return 0;
  }

  if ((OUTLINED_FUNCTION_22_24(v10, v11, v12, MEMORY[0x277D83B88], v13) & 1) == 0)
  {
    return 0;
  }

  v14 = *(v2 + OBJC_IVAR____TtC25UnifiedMessagingKitJSCore10JSFollowUp_accountStore);
  v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v16 = [v14 ams:v15 iTunesAccountWithDSID:?];

  return v16;
}

id sub_270599BA4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSFollowUp();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_270599C68()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_270599CA0()
{
  MEMORY[0x2743A5550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_270599CD8()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_270599D78()
{
  sub_2705D63A4();
  OUTLINED_FUNCTION_2_50();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v4 + v5) & ~v4;

  v8 = *(v3 + 8);
  v8(v1 + v5, v0);
  v8(v1 + v7, v0);
  OUTLINED_FUNCTION_35_11();

  return swift_deallocObject();
}

uint64_t sub_270599E58()
{
  OUTLINED_FUNCTION_4_41();
  v2 = sub_2705D63A4();
  OUTLINED_FUNCTION_1_1(v2);
  v4 = v3;
  v6 = v5;
  v7 = *(v4 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = v1 + ((*(v6 + 64) + v7 + v8) & ~v7);

  return sub_270598FFC(v0, v9, v10, v1 + v8, v11);
}

uint64_t sub_270599EEC()
{
  OUTLINED_FUNCTION_26_1();
  sub_2705D63A4();
  OUTLINED_FUNCTION_2_50();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v3 + 8);
  v8(v1 + v5, v0);

  v8(v1 + ((v4 + v7 + 8) & ~v4), v0);
  OUTLINED_FUNCTION_35_11();
  OUTLINED_FUNCTION_25_1();

  return swift_deallocObject();
}

uint64_t sub_270599FD0()
{
  v1 = sub_2705D63A4();
  OUTLINED_FUNCTION_1_1(v1);
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v0 + 16);
  v6 = *(v0 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2705994B8(v5, v0 + v4, v6);
}

uint64_t sub_27059A0A8()
{

  return swift_deallocObject();
}

void sub_27059A144()
{
  v0 = sub_2705D63A4();
  OUTLINED_FUNCTION_23_0(v0);
  OUTLINED_FUNCTION_17_36();
  sub_270598914();
}

uint64_t sub_27059A1B4()
{
  OUTLINED_FUNCTION_4_41();
  v1 = sub_2705D63A4();
  OUTLINED_FUNCTION_23_0(v1);
  OUTLINED_FUNCTION_17_36();

  return sub_270597694(v0, v2, v3, v4);
}

uint64_t sub_27059A214()
{
  sub_2705D63A4();
  OUTLINED_FUNCTION_2_50();
  OUTLINED_FUNCTION_23_26();
  v2 = OUTLINED_FUNCTION_7_60();
  v3(v2);

  OUTLINED_FUNCTION_35_11();

  return swift_deallocObject();
}

uint64_t sub_27059A2D8(uint64_t (*a1)(uint64_t))
{
  v1 = sub_2705D63A4();
  OUTLINED_FUNCTION_1_1(v1);
  v2 = OUTLINED_FUNCTION_8_61();

  return a1(v2);
}

uint64_t sub_27059A398()
{

  return swift_deallocObject();
}

void sub_27059A454()
{
  v0 = sub_2705D63A4();
  OUTLINED_FUNCTION_1_1(v0);
  OUTLINED_FUNCTION_8_61();
  sub_270596138();
}

uint64_t sub_27059A4DC()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_12Tm_0()
{
  sub_2705D63A4();
  OUTLINED_FUNCTION_2_50();

  v1 = OUTLINED_FUNCTION_7_60();
  v2(v1);
  OUTLINED_FUNCTION_35_11();

  return swift_deallocObject();
}

void sub_27059A630()
{
  v0 = sub_2705D63A4();
  OUTLINED_FUNCTION_23_0(v0);
  sub_270596424();
}

uint64_t objectdestroy_66Tm()
{
  sub_2705D63A4();
  OUTLINED_FUNCTION_2_50();

  v1 = OUTLINED_FUNCTION_7_60();
  v2(v1);
  OUTLINED_FUNCTION_35_11();

  return swift_deallocObject();
}

void sub_27059A74C()
{
  v0 = sub_2705D63A4();
  OUTLINED_FUNCTION_23_0(v0);
  sub_270596798();
}

uint64_t objectdestroy_24Tm()
{
  sub_2705D63A4();
  OUTLINED_FUNCTION_2_50();
  OUTLINED_FUNCTION_23_26();
  v2 = OUTLINED_FUNCTION_7_60();
  v3(v2);

  OUTLINED_FUNCTION_35_11();

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_22_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_23_26()
{
  v2 = *(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_24_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2705D7BD4();
}

uint64_t OUTLINED_FUNCTION_25_28()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_26_27(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_27059A990(uint64_t a1, uint64_t a2)
{
  sub_27059ABFC();
  v2 = sub_27059AA40(0xD000000000000040, 0x800000027061AD60);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_2705D42C4();

  return v4;
}

id sub_27059AA40(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_2705D7534();

  v4 = [v2 initWithPath_];

  return v4;
}

id sub_27059AB4C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSLocalize();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_27059ABA4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSLocalize();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_27059ABFC()
{
  result = qword_2807D8070;
  if (!qword_2807D8070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2807D8070);
  }

  return result;
}

uint64_t sub_27059AC40(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = v2;
  sub_270589714();

  v6 = v2;
  v7 = sub_2705D7BC4();
  v8 = sub_2705D7BD4();

  return v8;
}

uint64_t sub_27059ACFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[31] = a3;
  v4[32] = a4;
  v4[29] = a1;
  v4[30] = a2;
  v4[33] = swift_getObjectType();
  sub_2705D6524();
  v4[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27059AD9C, 0, 0);
}

uint64_t sub_27059AD9C()
{
  v1 = objc_opt_self();
  v2 = sub_2705D7534();
  v3 = [v1 authorizationStatusForBundleIdentifier_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D8078, &qword_270610768);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2705DC030;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x800000027061ADE0;
  *(inited + 48) = v3;
  v5 = MEMORY[0x277D837D0];
  v22 = sub_2705D7494();
  if (qword_2807D7390 != -1)
  {
    swift_once();
  }

  v7 = v0[32];
  v6 = v0[33];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
  sub_2705D6574();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2705E10F0;
  v0[12] = v6;
  v0[9] = v7;
  v9 = v7;
  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    v12 = (v0 + 25);
    v13 = sub_2705D7564();
    v15 = v14;

    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v0 + 9, v0[12]);
    DynamicType = swift_getDynamicType();
    v0[24] = swift_getMetatypeMetadata();
    v0[21] = DynamicType;
    sub_2705D64E4();
    sub_2704B667C((v0 + 21));
    sub_2705D6504();
    v0[28] = v5;
    v0[25] = v13;
    v0[26] = v15;
  }

  else
  {
    v12 = (v0 + 13);
    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v0 + 9, v0[12]);
    v17 = swift_getDynamicType();
    v0[16] = swift_getMetatypeMetadata();
    v0[13] = v17;
  }

  sub_2705D64E4();
  sub_2704B667C(v12);
  v18 = v0[29];
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  sub_2705D64C4();
  v0[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D8080, &qword_270610770);
  v0[17] = v22;

  sub_2705D6544();
  sub_2704B667C((v0 + 17));
  v19 = sub_2705D7A94();
  sub_2705B6DB8(v19, v8);

  *v18 = v22;

  v20 = v0[1];

  return v20();
}

uint64_t sub_27059B21C()
{

  return swift_deallocObject();
}

uint64_t sub_27059B25C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2703F6C98;

  return sub_27059ACFC(a1, v4, v5, v6);
}

id sub_27059B32C(char a1)
{
  v3 = sub_27058298C();
  v4 = &v1[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSLog_logKey];
  *v4 = v3;
  v4[1] = v5;
  v6 = 0xE900000000000073;
  v7 = 0x636974796C616E61;
  switch(a1)
  {
    case 1:
      v6 = 0xE800000000000000;
      v7 = 0x6C616E7265746E69;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v7 = 0x7379656E72756F6ALL;
      break;
    case 3:
      v6 = 0xEF736E6F69746164;
      v7 = 0x6E656D6D6F636572;
      break;
    default:
      break;
  }

  v12 = 762343521;
  v13 = 0xE400000000000000;
  MEMORY[0x2743A3A90](v7, v6);

  type metadata accessor for Log();
  v8 = swift_allocObject();
  sub_27047D06C();
  *(v8 + 16) = sub_2705D7BE4();
  *&v1[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSLog_logger] = v8;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for JSLog();
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

id sub_27059B4CC(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSLog_logKey];
  type metadata accessor for Log();
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = swift_allocObject();
  sub_27047D06C();
  *(v4 + 16) = sub_2705D7BE4();
  *&v2[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSLog_logger] = v4;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for JSLog();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_27059B5F0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_2705D7564();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_27059B6A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v7 = sub_2705D6524();
  MEMORY[0x28223BE20](v7 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
  sub_2705D6574();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2705E6EB0;
  v23 = type metadata accessor for JSLog();
  v22[0] = v3;
  v9 = *&v3[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSLog_logKey + 8];
  if (v9)
  {
    v10 = a1;
    v11 = a3;
    v12 = *&v3[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSLog_logKey];
    v13 = v3;

    sub_2705D6514();
    sub_2705D6504();
    v14 = OUTLINED_FUNCTION_0_94();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v20[0] = v14;
    sub_2705D64E4();
    sub_2704B667C(v20);
    sub_2705D6504();
    MetatypeMetadata = MEMORY[0x277D837D0];
    v20[0] = v12;
    v20[1] = v9;
    a3 = v11;
    a1 = v10;
    sub_2705D64E4();
  }

  else
  {
    v15 = v3;
    sub_2705D6514();
    sub_2705D6504();
    v16 = OUTLINED_FUNCTION_0_94();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v20[0] = v16;
    sub_2705D64E4();
  }

  sub_2704B667C(v20);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v22);
  v23 = MEMORY[0x277D837D0];
  v22[0] = a1;
  v22[1] = a2;

  sub_2705D6564();
  v17 = sub_2704B667C(v22);
  v18 = a3(v17);
  sub_2705B6DB8(v18, v8);
}

id sub_27059B9A4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSLog();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_94()
{
  __swift_project_boxed_opaque_existential_1((v0 - 112), *(v0 - 88));

  return swift_getDynamicType();
}

id sub_27059BA84()
{
  ObjectType = swift_getObjectType();
  type metadata accessor for CoreMediaAPIService(0);
  sub_2705D68B4();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore10JSMediaAPI_mediaAPIService] = v5;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v4, sel_init);

  return v2;
}

uint64_t sub_27059BB0C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D80A0, &qword_270610798);
  v2 = OUTLINED_FUNCTION_1_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v2);
  v8 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v10 = &v18[-v9];

  sub_27059BCB4(v11, v10);
  sub_27059C81C(v10, v8);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_27059C9CC(v8, v13 + v12);
  *(v13 + ((v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v0;
  sub_270589714();
  v14 = v0;
  v15 = sub_2705D7BC4();
  v19 = &unk_2706107A8;
  v20 = v13;
  v16 = sub_2705D7BD4();

  sub_2703C2EFC(v10, &qword_2807D80A0, &qword_270610798);
  return v16;
}

uint64_t sub_27059BCB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280, &unk_2705E4700);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v30 - v5);
  v7 = sub_2705D4484();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CoreMediaAPIRequest.RequestType(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CoreMediaAPIRequest(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2703D5404(0xD000000000000010, 0x8000000270616010, a1, &v38);
  if (!v39)
  {
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  v33 = v8;
  v17 = a2;
  v18 = v37;
  v34 = v36;
  sub_2703D5404(0x6556746E65696C63, 0xED00006E6F697372, a1, &v38);
  if (!v39)
  {

    sub_2703C2EFC(&v38, &unk_2807D4890, &qword_2705E2880);
LABEL_14:
    v22 = 1;
    a2 = v17;
    return __swift_storeEnumTagSinglePayload(a2, v22, 1, v14);
  }

  v35 = v18;
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_14;
  }

  v31 = v36;
  v32 = v37;
  sub_2703D5404(7107189, 0xE300000000000000, a1, &v38);
  a2 = v17;
  if (!v39)
  {
    v19 = &unk_2807D4890;
    v20 = &qword_2705E2880;
    v21 = &v38;
LABEL_17:
    sub_2703C2EFC(v21, v19, v20);
    goto LABEL_18;
  }

  if (swift_dynamicCast())
  {
    sub_2705D4454();

    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      v24 = v6;
      v25 = *(v33 + 32);
      v25(v10, v24, v7);
      v25(v13, v10, v7);
LABEL_24:
      swift_storeEnumTagMultiPayload();
      sub_2703D5404(0x746E756F636361, 0xE700000000000000, a1, &v38);

      if (v39)
      {
        type metadata accessor for JSAccount();
        if (swift_dynamicCast())
        {
          v26 = v36;
          v27 = *&v36[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore9JSAccount_account];

          v28 = v35;
LABEL_29:
          *v16 = v34;
          v16[1] = v28;
          v29 = v32;
          v16[2] = v31;
          v16[3] = v29;
          v16[4] = v27;
          sub_27059CB68(v13, v16 + *(v14 + 20), type metadata accessor for CoreMediaAPIRequest.RequestType);
          sub_27059CB68(v16, a2, type metadata accessor for CoreMediaAPIRequest);
          v22 = 0;
          return __swift_storeEnumTagSinglePayload(a2, v22, 1, v14);
        }
      }

      else
      {
        sub_2703C2EFC(&v38, &unk_2807D4890, &qword_2705E2880);
      }

      v28 = v35;
      v27 = 0;
      goto LABEL_29;
    }

    v19 = &unk_2807D4280;
    v20 = &unk_2705E4700;
    v21 = v6;
    goto LABEL_17;
  }

LABEL_18:
  sub_2703D5404(1701869940, 0xE400000000000000, a1, &v38);
  if (v39)
  {
    if (swift_dynamicCast())
    {
      *v13 = v36;
      goto LABEL_24;
    }

    goto LABEL_10;
  }

LABEL_9:

  sub_2703C2EFC(&v38, &unk_2807D4890, &qword_2705E2880);
LABEL_11:
  v22 = 1;
  return __swift_storeEnumTagSinglePayload(a2, v22, 1, v14);
}

uint64_t sub_27059C234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D80A0, &qword_270610798);
  v3[5] = swift_task_alloc();
  v3[6] = type metadata accessor for CoreMediaAPIRequest(0);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27059C304, 0, 0);
}

uint64_t sub_27059C304()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_27059C81C(v0[3], v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_2703C2EFC(v0[5], &qword_2807D80A0, &qword_270610798);
    sub_2705D6F34();
    sub_270566624();
    swift_allocError();
    sub_2705D6F04();
    swift_willThrow();

    OUTLINED_FUNCTION_1_4();

    return v3();
  }

  else
  {
    sub_27059CB68(v0[5], v0[7], type metadata accessor for CoreMediaAPIRequest);
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_27059C4BC;

    return sub_270567108();
  }
}

uint64_t sub_27059C4BC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  *(v5 + 72) = a1;
  *(v5 + 80) = a2;
  *(v5 + 96) = a3;
  *(v5 + 88) = v3;

  if (v3)
  {
    v6 = sub_27059C6AC;
  }

  else
  {
    v6 = sub_27059C5D8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_27059C5D8()
{
  v1 = *(v0 + 96);
  if (v1 == 255)
  {
    sub_270568FA8(*(v0 + 56));
    v5 = 0;
  }

  else
  {
    v3 = *(v0 + 72);
    v2 = *(v0 + 80);
    v4 = *(v0 + 56);
    v5 = sub_2705A54D4(v3, v2, *(v0 + 96));
    sub_270470288(v3, v2, v1);
    sub_270568FA8(v4);
  }

  **(v0 + 16) = v5;

  OUTLINED_FUNCTION_1_4();

  return v6();
}

uint64_t sub_27059C6AC()
{
  sub_270568FA8(*(v0 + 56));

  OUTLINED_FUNCTION_1_4();

  return v1();
}

uint64_t sub_27059C81C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D80A0, &qword_270610798);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27059C88C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D80A0, &qword_270610798);
  OUTLINED_FUNCTION_1_1(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = v0 + v3;
  v7 = type metadata accessor for CoreMediaAPIRequest(0);
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v7))
  {

    v8 = *(v7 + 20);
    type metadata accessor for CoreMediaAPIRequest.RequestType(0);
    if (swift_getEnumCaseMultiPayload() <= 1)
    {
      sub_2705D4484();
      OUTLINED_FUNCTION_14();
      (*(v9 + 8))(v6 + v8);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_27059C9CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D80A0, &qword_270610798);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27059CA3C(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D80A0, &qword_270610798);
  OUTLINED_FUNCTION_1_1(v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = *(v1 + ((*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2705104D4;

  return sub_27059C234(a1, v1 + v6, v8);
}

uint64_t sub_27059CB68(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void sub_27059CBC8()
{
  OUTLINED_FUNCTION_26_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDD0, &qword_2705E8160);
  v7 = OUTLINED_FUNCTION_23_0(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v22[-1] - v8;
  sub_2703C2E9C(v3, &v22[-1] - v8, &qword_2807CEDD0, &qword_2705E8160);
  v10 = sub_2705D78D4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v10);

  if (EnumTagSinglePayload == 1)
  {
    sub_2703C2EFC(v9, &qword_2807CEDD0, &qword_2705E8160);
  }

  else
  {
    sub_2705D78C4();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  v12 = *(v1 + 16);
  swift_unknownObjectRetain();

  if (v12)
  {
    swift_getObjectType();
    v13 = sub_2705D7844();
    v15 = v14;
    swift_unknownObjectRelease();
    if (v5)
    {
LABEL_6:
      v16 = sub_2705D75F4() + 32;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[0] = 7;
      v22[1] = v18;
      v22[2] = v16;
      OUTLINED_FUNCTION_18_29(v17, v22);

      sub_2703C2EFC(v3, &qword_2807CEDD0, &qword_2705E8160);

      goto LABEL_15;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  v19 = sub_2703C2EFC(v3, &qword_2807CEDD0, &qword_2705E8160);
  if (v15 | v13)
  {
    v24[0] = 0;
    v24[1] = 0;
    v20 = v24;
    v24[2] = v13;
    v24[3] = v15;
  }

  else
  {
    v20 = 0;
  }

  OUTLINED_FUNCTION_18_29(v19, v20);
LABEL_15:
  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_27059CE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDD0, &qword_2705E8160);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  sub_2703C2E9C(a3, v21 - v9, &qword_2807CEDD0, &qword_2705E8160);
  v11 = sub_2705D78D4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_2703C2EFC(v10, &qword_2807CEDD0, &qword_2705E8160);
  }

  else
  {
    sub_2705D78C4();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_2705D7844();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_2705D75F4() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D80C8, &qword_2706107E8);
      v18 = (v16 | v14);
      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_2703C2EFC(a3, &qword_2807CEDD0, &qword_2705E8160);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2703C2EFC(a3, &qword_2807CEDD0, &qword_2705E8160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D80C8, &qword_2706107E8);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

id sub_27059D0CC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_2705D6DE4();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  v8 = v7 - v6;
  sub_2705D68B4();
  (*(v4 + 32))(&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore9JSMetrics_bag], v8, v2);
  type metadata accessor for JSRuntime();
  sub_2705D68B4();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore9JSMetrics_runtime] = v12;
  sub_2703CACA0(0, &qword_2807D7850, 0x277CEE598);
  sub_2705D68B4();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore9JSMetrics_metrics] = v12;
  v11.receiver = v0;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

void sub_27059D224()
{
  OUTLINED_FUNCTION_26_1();
  v55 = v1;
  v3 = v2;
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = sub_2705D6524();
  v8 = OUTLINED_FUNCTION_23_0(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_0();
  v54 = sub_27058298C();
  v10 = v9;
  if (qword_2807D7390 != -1)
  {
    OUTLINED_FUNCTION_2_90(&qword_2807D7390);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
  v11 = sub_2705D6574();
  OUTLINED_FUNCTION_1_1(v11);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2705E10F0;
  v51 = ObjectType;
  v60 = ObjectType;
  *&v59 = v0;
  v13 = MEMORY[0x277D837D0];
  v53 = v0;
  v52 = v10;
  v14 = v0;
  if (v10)
  {

    sub_2705D6514();
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    OUTLINED_FUNCTION_3_38();
    MetatypeMetadata = swift_getMetatypeMetadata();
    OUTLINED_FUNCTION_19_31(MetatypeMetadata);
    sub_2703C2EFC(&v57, &unk_2807D4890, &qword_2705E2880);
    OUTLINED_FUNCTION_7_24();
    v58 = MEMORY[0x277D837D0];
    *&v57 = v54;
    *(&v57 + 1) = v10;
    sub_2705D64E4();
    v13 = MEMORY[0x277D837D0];
  }

  else
  {
    sub_2705D6514();
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    OUTLINED_FUNCTION_3_38();
    v16 = swift_getMetatypeMetadata();
    OUTLINED_FUNCTION_19_31(v16);
  }

  sub_2703C2EFC(&v57, &unk_2807D4890, &qword_2705E2880);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(&v59);
  sub_2705D64C4();
  v60 = v13;
  *&v59 = v5;
  *(&v59 + 1) = v3;

  sub_2705D6544();
  sub_2703C2EFC(&v59, &unk_2807D4890, &qword_2705E2880);
  v17 = sub_2705D7A94();
  sub_2705B6DB8(v17, v12);

  sub_2703D5404(0xD000000000000012, 0x800000027061B170, v55, &v59);
  v18 = MEMORY[0x277D84F70];
  if (v60)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D42B0, &unk_27060E0B0);
    if (OUTLINED_FUNCTION_8_62(v19, v20, v21, v19))
    {
      v22 = v57;
      goto LABEL_11;
    }
  }

  else
  {
    sub_2703C2EFC(&v59, &unk_2807D4890, &qword_2705E2880);
  }

  v22 = MEMORY[0x277D84F90];
LABEL_11:
  sub_2703D5404(0x746E756F636361, 0xE700000000000000, v55, &v59);
  if (v60)
  {
    v23 = type metadata accessor for JSAccount();
    if (OUTLINED_FUNCTION_8_62(v23, v24, v25, v23))
    {
      v26 = v57;
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    sub_2703C2EFC(&v59, &unk_2807D4890, &qword_2705E2880);
    v26 = 0;
  }

  sub_2703D5404(0x6C616E6F73726570, 0xEC00000064657A69, v55, &v59);
  if (!v60)
  {
    sub_2703C2EFC(&v59, &unk_2807D4890, &qword_2705E2880);
    goto LABEL_20;
  }

  if (!OUTLINED_FUNCTION_8_62(v27, v28, v29, MEMORY[0x277D839B0]))
  {
LABEL_20:
    v30 = 1;
    goto LABEL_21;
  }

  v30 = v57 ^ 1;
LABEL_21:
  sub_2703CACA0(0, &qword_2807D6798, 0x277CEE5A8);

  v56 = sub_270532778(v5, v3);
  v50 = v26;
  if (v26)
  {
    v31 = *&v26[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore9JSAccount_account];
  }

  else
  {
    v31 = 0;
  }

  [v56 setAccount_];

  [v56 setAnonymous_];
  [v56 setSuppressEngagement_];
  v32 = sub_2705D7454();
  [v56 addPropertiesWithDictionary_];

  sub_27059DB64(v22);

  v33 = sub_2705D77A4();

  [v56 removePropertiesForKeys_];

  v34 = &unk_28805EB20;
  v35 = 3;
  do
  {
    v36 = v18;
    v37 = *(v34 - 1);
    v38 = *v34;

    MEMORY[0x2743A3A90](v37, v38);
    MEMORY[0x2743A3A90](61, 0xE100000000000000);
    v39 = sub_2705D7534();

    v40 = [v56 propertyForBodyKey_];

    if (v40)
    {
      sub_2705D7C84();
      swift_unknownObjectRelease();
      sub_2703E43D4(&v57, &v59);
    }

    else
    {
      v60 = MEMORY[0x277D837D0];
      *&v59 = 0;
      *(&v59 + 1) = 0xE000000000000000;
    }

    v18 = v36;
    sub_2705D7DF4();
    __swift_destroy_boxed_opaque_existential_1(&v59);
    MEMORY[0x2743A3A90](8251, 0xE200000000000000);
    MEMORY[0x2743A3A90](0, 0xE000000000000000);

    v34 += 2;
    --v35;
  }

  while (v35);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_2705E6EB0;
  v60 = v51;
  *&v59 = v53;
  v42 = v53;
  sub_2705D6514();
  OUTLINED_FUNCTION_9_7();
  sub_2705D6504();
  v43 = OUTLINED_FUNCTION_5_57(&v59);
  v58 = swift_getMetatypeMetadata();
  *&v57 = v43;
  sub_2705D64E4();
  sub_2703C2EFC(&v57, &unk_2807D4890, &qword_2705E2880);
  if (v52)
  {
    OUTLINED_FUNCTION_7_24();
    v44 = MEMORY[0x277D837D0];
    v58 = MEMORY[0x277D837D0];
    *&v57 = v54;
    *(&v57 + 1) = v52;
    sub_2705D64E4();
    sub_2703C2EFC(&v57, &unk_2807D4890, &qword_2705E2880);
  }

  else
  {
    v44 = MEMORY[0x277D837D0];
  }

  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(&v59);
  sub_2705D6514();
  sub_2705D6504();
  v45 = [v56 topic];
  v46 = sub_2705D7564();
  v48 = v47;

  v60 = v44;
  *&v59 = v46;
  *(&v59 + 1) = v48;
  sub_2705D64E4();
  sub_2703C2EFC(&v59, &unk_2807D4890, &qword_2705E2880);
  sub_2705D6504();
  v60 = v44;
  *&v59 = 0;
  *(&v59 + 1) = 0xE000000000000000;
  sub_2705D64E4();
  sub_2703C2EFC(&v59, &unk_2807D4890, &qword_2705E2880);
  OUTLINED_FUNCTION_9_7();
  sub_2705D6504();
  sub_2705D6534();
  v49 = sub_2705D7A94();
  sub_2705B6DB8(v49, v41);

  [*&v53[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore9JSMetrics_metrics] enqueueEvent_];

  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_27059DB64(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_27057183C(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_27057183C((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_2703E43D4(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_27059DD48(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  for (i = 0; v4; i = v8)
  {
    v8 = i;
LABEL_8:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = v9 | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    sub_2703D7F04(*(a1 + 56) + 32 * v10, v18);
    v16[0] = v12;
    v16[1] = v13;
    sub_2703E43D4(v18, &v17);
    sub_2703C2E9C(v16, v15, &qword_2807D6758, &unk_2706107F0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34D0, &qword_2705F2A80);
    if (swift_dynamicCast())
    {
      sub_27059D224();
    }

    result = sub_2703C2EFC(v16, &qword_2807D6758, &unk_2706107F0);
  }

  while (1)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
    }

    v4 = *(v1 + 8 * v8);
    ++i;
    if (v4)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27059DFA8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDD0, &qword_2705E8160);
  v2 = OUTLINED_FUNCTION_23_0(v1);
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - v3;
  v5 = sub_2705D78D4();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v7 = v0;
  sub_27059CE24(0, 0, v4, &unk_2706107E0, v6);
}

uint64_t sub_27059E084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_27059E0A4, 0, 0);
}

uint64_t sub_27059E0A4()
{
  v1 = v0[2];
  *v1 = [*(v0[3] + OBJC_IVAR____TtC25UnifiedMessagingKitJSCore9JSMetrics_metrics) flush];
  v2 = v0[1];

  return v2();
}

uint64_t sub_27059E170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  OUTLINED_FUNCTION_15_43();
  sub_27058298C();
  sub_2703CACA0(0, &qword_2807D7F50, 0x277CD4640);
  v6 = sub_2705D7BC4();
  v7 = sub_2705D7BD4();

  return v7;
}

uint64_t sub_27059E240(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, unsigned __int8 a10)
{
  v44 = a4;
  v15 = sub_2705D6524();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = swift_allocObject();
  sub_2705D6B14();
  MEMORY[0x2743A2F10]();
  swift_weakInit();

  if (swift_weakLoadStrong())
  {

    if (qword_2807D7390 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
    sub_2705D6574();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_2705E6EB0;
    v33 = v17;
    v43 = type metadata accessor for JSMetrics(0);
    v41 = a2;
    a2;
    v18 = AMSLogKey();
    v19 = MEMORY[0x277D837D0];
    v35 = a7;
    v36 = a5;
    v34 = v16;
    if (v18)
    {
      v20 = v18;
      v21 = sub_2705D7564();
      v23 = v22;

      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(&v41, v43);
      DynamicType = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v39[0] = DynamicType;
      sub_2705D64E4();
      v25 = v19;
      sub_2703C2EFC(v39, &unk_2807D4890, &qword_2705E2880);
      sub_2705D6504();
      MetatypeMetadata = v19;
      v39[0] = v21;
      v39[1] = v23;
      sub_2705D64E4();
      sub_2703C2EFC(v39, &unk_2807D4890, &qword_2705E2880);
    }

    else
    {
      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(&v41, v43);
      v26 = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v39[0] = v26;
      sub_2705D64E4();
      sub_2703C2EFC(v39, &unk_2807D4890, &qword_2705E2880);
      v25 = v19;
    }

    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(&v41);
    sub_2705D6514();
    sub_2705D6504();
    v43 = v25;
    v27 = v44;
    v41 = a3;
    v42 = v44;

    sub_2705D64E4();
    sub_2703C2EFC(&v41, &unk_2807D4890, &qword_2705E2880);
    sub_2705D6504();
    v43 = v25;
    v41 = v36;
    v42 = a6;

    sub_2705D64E4();
    sub_2703C2EFC(&v41, &unk_2807D4890, &qword_2705E2880);
    sub_2705D6504();
    sub_2705D6534();
    v28 = sub_2705D7A94();
    sub_2705B6DB8(v28, v33);

    sub_2703CACA0(0, &qword_2807D7F50, 0x277CD4640);
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = v35;
    *(v30 + 32) = a8;
    *(v30 + 40) = a9;
    *(v30 + 48) = a3;
    *(v30 + 56) = v27;
    *(v30 + 64) = v34;
    *(v30 + 72) = v36;
    *(v30 + 80) = a6;
    *(v30 + 88) = a10 & 1;
    v31 = a9;

    a8 = sub_27058C4D8(a1, sub_2705A247C, v30);
  }

  else
  {
    sub_2705D6F34();
    sub_270566624();
    swift_allocError();
    sub_2705D6F04();
    swift_willThrow();
  }

  return a8;
}

void sub_27059E824(uint64_t a1, uint64_t a2, void (*a3)(char *, char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  v58 = a6;
  v52 = a3;
  v53 = sub_2705D63A4();
  v16 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v56 = v17;
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2705D6524();
  MEMORY[0x28223BE20](v19 - 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v57 = a5;
  if (Strong)
  {
    v21 = Strong;
    v49 = a13;
    v51 = a12;
    v48 = a11;
    v55 = a10;
    v50 = a2;
    if (a7)
    {
      a7 = *&a7[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore9JSAccount_account];
    }

    v22 = objc_opt_self();
    v23 = sub_2705D7534();
    v54 = [v22 identifierStoreWithAccount:a7 bagNamespace:v23 bag:sub_2705D6DA4()];

    swift_unknownObjectRelease();
    v24 = v16;
    v45 = v21;
    v47 = *(v16 + 16);
    v25 = v53;
    v47(v18, v52, v53);
    v26 = *(v24 + 80);
    v27 = swift_allocObject();
    *(v27 + 2) = v55;
    *(v27 + 3) = v21;
    v28 = v58;
    *(v27 + 4) = v57;
    *(v27 + 5) = v28;
    v52 = *(v24 + 32);
    v52(&v27[(v26 + 48) & ~v26], v18, v25);
    v63 = sub_2705A2560;
    v64 = v27;
    aBlock = MEMORY[0x277D85DD0];
    v60 = 1107296256;
    v46 = &v61;
    v61 = sub_27059D0C4;
    v62 = &block_descriptor_36_0;
    v29 = _Block_copy(&aBlock);
    v30 = v58;

    v31 = v45;

    [v54 addErrorBlock_];
    _Block_release(v29);
    v47(v18, v50, v25);
    v32 = (v26 + 72) & ~v26;
    v33 = swift_allocObject();
    v34 = v51;
    *(v33 + 16) = v48;
    *(v33 + 24) = v34;
    *(v33 + 32) = v49 & 1;
    *(v33 + 40) = v55;
    *(v33 + 48) = v31;
    *(v33 + 56) = v57;
    *(v33 + 64) = v30;
    v52((v33 + v32), v18, v25);
    v63 = sub_2705A26BC;
    v64 = v33;
    aBlock = MEMORY[0x277D85DD0];
    v60 = 1107296256;
    v61 = sub_27059FCAC;
    v62 = &block_descriptor_42_0;
    v35 = _Block_copy(&aBlock);

    v36 = v31;

    v37 = v54;
    [v54 addSuccessBlock_];
    _Block_release(v35);
  }

  else
  {
    if (qword_2807D7390 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
    sub_2705D6574();
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_2705E6EB0;
    v39 = type metadata accessor for JSMetrics(0);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D80B8, &qword_2706107C8);
    aBlock = v39;
    v40 = v58;
    if (v58)
    {

      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(&aBlock, v62);
      DynamicType = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v65[0] = DynamicType;
      sub_2705D64E4();
      sub_2703C2EFC(v65, &unk_2807D4890, &qword_2705E2880);
      sub_2705D6504();
      MetatypeMetadata = MEMORY[0x277D837D0];
      v65[0] = v57;
      v65[1] = v40;
    }

    else
    {
      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(&aBlock, v62);
      v42 = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v65[0] = v42;
    }

    sub_2705D64E4();
    sub_2703C2EFC(v65, &unk_2807D4890, &qword_2705E2880);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    sub_2705D64C4();
    v43 = sub_2705D7A74();
    sub_2705B6DB8(v43, v38);
  }
}

uint64_t sub_27059EF50(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_2705D6524();
  MEMORY[0x28223BE20](v8 - 8);
  if (qword_2807D7390 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
  sub_2705D6574();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2705E6EB0;
  v25 = type metadata accessor for JSMetrics(0);
  v24[0] = a1;
  v10 = a1;
  if (a3)
  {

    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v24, v25);
    DynamicType = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v22[0] = DynamicType;
    sub_2705D64E4();
    sub_2703C2EFC(v22, &unk_2807D4890, &qword_2705E2880);
    sub_2705D6504();
    MetatypeMetadata = MEMORY[0x277D837D0];
    v22[0] = a2;
    v22[1] = a3;
    sub_2705D64E4();
  }

  else
  {
    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v12 = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v22[0] = v12;
    sub_2705D64E4();
  }

  sub_2703C2EFC(v22, &unk_2807D4890, &qword_2705E2880);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v24);
  sub_2705D6514();
  sub_2705D6504();
  swift_getErrorValue();
  v25 = v21;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v24);
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_1Tm);
  sub_2705D64E4();
  sub_2703C2EFC(v24, &unk_2807D4890, &qword_2705E2880);
  sub_2705D6504();
  sub_2705D6534();
  v14 = sub_2705D7A74();
  sub_2705B6DB8(v14, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13C8, &unk_2705E9BA0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2705DC030;
  v16 = objc_allocWithZone(type metadata accessor for CoreJSError());
  v17 = a4;
  v18 = sub_270565CB4(a4);
  v19 = sub_2705658DC();

  *(v15 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34D0, &qword_2705F2A80);
  *(v15 + 32) = v19;
  sub_27058AAE8(v15);
}

void sub_27059F36C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v40 = a6;
  v41 = a8;
  v39 = a7;
  v9 = a4;
  v38 = sub_2705D63A4();
  v13 = *(v38 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v38);
  v15 = sub_2705D6524();
  MEMORY[0x28223BE20](v15 - 8);
  sub_2703CACA0(0, &qword_2807D80C0, 0x277CEE5B0);

  v16 = sub_27059F890(a2, a3, v9);
  v17 = [a1 identifierForKey_];
  v37 = sub_2705D7564();
  v19 = v18;

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
  }

  else
  {
    v36 = v19;
    if (qword_2807D7390 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
    v20 = *(sub_2705D6574() - 8);
    v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v35[1] = *(v20 + 72);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_2705E6EB0;
    v35[0] = v22 + v21;
    v45 = type metadata accessor for JSMetrics(0);
    v44[0] = v40;
    if (v41)
    {
      v23 = v40;

      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(v44, v45);
      DynamicType = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v42[0] = DynamicType;
      sub_2705D64E4();
      sub_2703C2EFC(v42, &unk_2807D4890, &qword_2705E2880);
      sub_2705D6504();
      MetatypeMetadata = MEMORY[0x277D837D0];
      v42[0] = v39;
      v42[1] = v41;
    }

    else
    {
      v25 = v40;
      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(v44, v45);
      v26 = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v42[0] = v26;
    }

    sub_2705D64E4();
    sub_2703C2EFC(v42, &unk_2807D4890, &qword_2705E2880);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v44);
    sub_2705D64C4();
    v27 = sub_2705D7A74();
    sub_2705B6DB8(v27, v22);

    v19 = v36;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v28 = v38;
    (*(v13 + 16))(v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a9, v38);
    v29 = (*(v13 + 80) + 56) & ~*(v13 + 80);
    v30 = swift_allocObject();
    v31 = v39;
    v32 = v40;
    *(v30 + 2) = v40;
    *(v30 + 3) = v31;
    v33 = v37;
    *(v30 + 4) = v41;
    *(v30 + 5) = v33;
    *(v30 + 6) = v19;
    (*(v13 + 32))(&v30[v29], v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v28);

    v34 = v32;
    sub_2705D6B04();
  }

  else
  {
  }
}

id sub_27059F890(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_2705D7534();

  v5 = [swift_getObjCClassFromMetadata() keyWithName:v4 crossDeviceSync:a3 & 1];

  return v5;
}

uint64_t sub_27059F8FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2705D6524();
  MEMORY[0x28223BE20](v9 - 8);
  if (qword_2807D7390 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
  sub_2705D6574();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2705E6EB0;
  v22 = type metadata accessor for JSMetrics(0);
  v21[0] = a1;
  v11 = MEMORY[0x277D837D0];
  v12 = a1;
  if (a3)
  {

    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v21, v22);
    DynamicType = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v19[0] = DynamicType;
    sub_2705D64E4();
    sub_2703C2EFC(v19, &unk_2807D4890, &qword_2705E2880);
    sub_2705D6504();
    MetatypeMetadata = v11;
    v19[0] = a2;
    v19[1] = a3;
    sub_2705D64E4();
  }

  else
  {
    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v14 = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v19[0] = v14;
    sub_2705D64E4();
  }

  sub_2703C2EFC(v19, &unk_2807D4890, &qword_2705E2880);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v21);
  sub_2705D6514();
  sub_2705D6504();
  v22 = v11;
  v21[0] = a4;
  v21[1] = a5;

  sub_2705D64E4();
  sub_2703C2EFC(v21, &unk_2807D4890, &qword_2705E2880);
  sub_2705D6504();
  sub_2705D6534();
  v15 = sub_2705D7A94();
  sub_2705B6DB8(v15, v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13C8, &unk_2705E9BA0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2705DC030;
  *(v16 + 56) = v11;
  *(v16 + 32) = a4;
  *(v16 + 40) = a5;

  sub_27058AAE8(v16);
}

void sub_27059FCB4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_27059FD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  OUTLINED_FUNCTION_15_43();
  swift_getObjectType();
  sub_27058298C();
  sub_2703CACA0(0, &qword_2807D7F50, 0x277CD4640);
  v6 = sub_2705D7BC4();
  v7 = sub_2705D7BD4();

  return v7;
}

void *sub_27059FE1C(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, void *a9, unsigned __int8 a10, uint64_t a11)
{
  v39 = a3;
  v16 = sub_2705D6524();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = swift_allocObject();
  sub_2705D6B14();
  MEMORY[0x2743A2F10]();
  swift_weakInit();

  if (swift_weakLoadStrong())
  {
    v31 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
    sub_2705D6574();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_2705E6EB0;
    v30 = v18;
    v38 = a11;
    v36 = a2;
    v19 = MEMORY[0x277D837D0];
    if (a4)
    {
      v20 = a2;

      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(&v36, v38);
      DynamicType = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v34[0] = DynamicType;
      sub_2705D64E4();
      sub_2703C2EFC(v34, &unk_2807D4890, &qword_2705E2880);
      sub_2705D6504();
      MetatypeMetadata = v19;
      v34[0] = v39;
      v34[1] = a4;
    }

    else
    {
      v22 = a2;
      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(&v36, v38);
      v23 = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v34[0] = v23;
    }

    sub_2705D64E4();
    sub_2703C2EFC(v34, &unk_2807D4890, &qword_2705E2880);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(&v36);
    sub_2705D6514();
    sub_2705D6504();
    v38 = v19;
    v36 = a5;
    v37 = a6;

    sub_2705D64E4();
    sub_2703C2EFC(&v36, &unk_2807D4890, &qword_2705E2880);
    sub_2705D6504();
    v38 = v19;
    v36 = a7;
    v37 = a8;

    sub_2705D64E4();
    sub_2703C2EFC(&v36, &unk_2807D4890, &qword_2705E2880);
    sub_2705D6504();
    sub_2705D6534();
    if (qword_2807D7368 != -1)
    {
      swift_once();
    }

    v24 = sub_2705D7A94();
    sub_2705B6DB8(v24, v30);

    sub_2703CACA0(0, &qword_2807D7F50, 0x277CD4640);
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    v27 = v39;
    *(v26 + 16) = v25;
    *(v26 + 24) = v27;
    *(v26 + 32) = a4;
    *(v26 + 40) = a9;
    *(v26 + 48) = a5;
    *(v26 + 56) = a6;
    *(v26 + 64) = v17;
    *(v26 + 72) = a7;
    *(v26 + 80) = a8;
    *(v26 + 88) = a10 & 1;
    *(v26 + 96) = a11;
    v28 = a9;

    a2 = sub_27058C4D8(v31, sub_2705A2094, v26);
  }

  else
  {
    sub_2705D6F34();
    sub_270566624();
    swift_allocError();
    sub_2705D6F04();
    swift_willThrow();
  }

  return a2;
}

void sub_2705A03F0(uint64_t a1, uint64_t a2, void (*a3)(char *, char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14)
{
  v61 = a5;
  v55 = a3;
  v56 = a2;
  v54 = sub_2705D63A4();
  v16 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v60 = v17;
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2705D6524();
  MEMORY[0x28223BE20](v19 - 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v53 = a14;
    v51 = a13;
    v52 = a12;
    v50 = a11;
    v58 = a10;
    v59 = a6;
    if (a7)
    {
      a7 = *&a7[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore9JSAccount_account];
    }

    v22 = objc_opt_self();
    v23 = sub_2705D7534();
    v57 = [v22 identifierStoreWithAccount:a7 bagNamespace:v23 bag:sub_2705D6DA4()];

    swift_unknownObjectRelease();
    v24 = v16;
    v49 = *(v16 + 16);
    v47 = v18;
    v25 = v54;
    v49(v18, v55, v54);
    v26 = *(v24 + 80);
    v27 = swift_allocObject();
    *(v27 + 2) = v58;
    *(v27 + 3) = v21;
    v28 = v59;
    *(v27 + 4) = v61;
    *(v27 + 5) = v28;
    v46 = v21;
    v55 = *(v24 + 32);
    v55(&v27[(v26 + 48) & ~v26], v18, v25);
    v66 = sub_2705A20D0;
    v67 = v27;
    aBlock = MEMORY[0x277D85DD0];
    v63 = 1107296256;
    v48 = &v64;
    v64 = sub_27059D0C4;
    v65 = &block_descriptor_9;
    v29 = _Block_copy(&aBlock);

    v30 = v58;

    v31 = v46;
    v46 = v31;

    [v57 addErrorBlock_];
    _Block_release(v29);
    v32 = v47;
    v49(v47, v56, v25);
    v33 = (v26 + 72) & ~v26;
    v34 = (v60 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    v36 = v52;
    *(v35 + 16) = v50;
    *(v35 + 24) = v36;
    *(v35 + 32) = v51 & 1;
    *(v35 + 40) = v30;
    *(v35 + 48) = v31;
    v37 = v59;
    *(v35 + 56) = v61;
    *(v35 + 64) = v37;
    v55((v35 + v33), v32, v25);
    *(v35 + v34) = v53;
    v66 = sub_2705A21D8;
    v67 = v35;
    aBlock = MEMORY[0x277D85DD0];
    v63 = 1107296256;
    v64 = sub_27059FCAC;
    v65 = &block_descriptor_18;
    v38 = _Block_copy(&aBlock);

    v39 = v46;

    v40 = v57;
    [v57 addSuccessBlock_];
    _Block_release(v38);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
    sub_2705D6574();
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_2705E6EB0;
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D80B8, &qword_2706107C8);
    aBlock = a14;
    if (a6)
    {

      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(&aBlock, v65);
      DynamicType = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v68[0] = DynamicType;
      sub_2705D64E4();
      sub_2703C2EFC(v68, &unk_2807D4890, &qword_2705E2880);
      sub_2705D6504();
      MetatypeMetadata = MEMORY[0x277D837D0];
      v68[0] = v61;
      v68[1] = a6;
    }

    else
    {
      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(&aBlock, v65);
      v43 = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v68[0] = v43;
    }

    sub_2705D64E4();
    sub_2703C2EFC(v68, &unk_2807D4890, &qword_2705E2880);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    sub_2705D64C4();
    if (qword_2807D7368 != -1)
    {
      swift_once();
    }

    v44 = sub_2705D7A74();
    sub_2705B6DB8(v44, v41);
  }
}

void sub_2705A0B50()
{
  OUTLINED_FUNCTION_26_1();
  v1 = v0;
  v37 = v3;
  v38 = v2;
  v5 = v4;
  v7 = v6;
  v39 = v8;
  v10 = v9;
  v11 = sub_2705D63A4();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  v17 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2705D6524();
  v19 = OUTLINED_FUNCTION_23_0(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4_0();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
  }

  else
  {
    v34 = v5;
    v35 = v10;
    v36 = v1;
    if (qword_2807D7390 != -1)
    {
      OUTLINED_FUNCTION_2_90(&qword_2807D7390);
    }

    v33[1] = qword_28081C610;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
    v20 = sub_2705D6574();
    OUTLINED_FUNCTION_1_1(v20);
    v33[0] = *(v21 + 72);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_2705E6EB0;
    v42[3] = type metadata accessor for JSMetrics(0);
    v42[0] = v39;
    v23 = v39;
    if (v7)
    {

      sub_2705D6514();
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      v24 = OUTLINED_FUNCTION_5_57(v42);
      MetatypeMetadata = swift_getMetatypeMetadata();
      v40[0] = v24;
      sub_2705D64E4();
      sub_2703C2EFC(v40, &unk_2807D4890, &qword_2705E2880);
      OUTLINED_FUNCTION_7_24();
      MetatypeMetadata = MEMORY[0x277D837D0];
      v40[0] = v38;
      v40[1] = v7;
    }

    else
    {
      sub_2705D6514();
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      v25 = OUTLINED_FUNCTION_5_57(v42);
      MetatypeMetadata = swift_getMetatypeMetadata();
      v40[0] = v25;
    }

    sub_2705D64E4();
    sub_2703C2EFC(v40, &unk_2807D4890, &qword_2705E2880);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v42);
    sub_2705D64C4();
    v26 = sub_2705D7A74();
    sub_2705B6DB8(v26, v22);

    v10 = v35;
    v5 = v34;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(v13 + 16))(v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v5, v11);
    v27 = (*(v13 + 80) + 48) & ~*(v13 + 80);
    v28 = swift_allocObject();
    v29 = v38;
    v30 = v39;
    *(v28 + 2) = v39;
    *(v28 + 3) = v29;
    *(v28 + 4) = v7;
    *(v28 + 5) = v10;
    (*(v13 + 32))(&v28[v27], v17, v11);

    v31 = v30;
    v32 = v10;
    sub_2705D6B04();
  }

  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_2705A0F5C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_2705D6524();
  MEMORY[0x28223BE20](v8 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
  sub_2705D6574();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2705E6EB0;
  v25 = type metadata accessor for JSMetrics(0);
  v24[0] = a1;
  v10 = a1;
  if (a3)
  {

    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v24, v25);
    DynamicType = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v22[0] = DynamicType;
    sub_2705D64E4();
    sub_2703C2EFC(v22, &unk_2807D4890, &qword_2705E2880);
    sub_2705D6504();
    MetatypeMetadata = MEMORY[0x277D837D0];
    v22[0] = a2;
    v22[1] = a3;
    sub_2705D64E4();
  }

  else
  {
    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v12 = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v22[0] = v12;
    sub_2705D64E4();
  }

  sub_2703C2EFC(v22, &unk_2807D4890, &qword_2705E2880);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v24);
  sub_2705D6514();
  sub_2705D6504();
  swift_getErrorValue();
  v25 = v21;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v24);
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_1Tm);
  sub_2705D64E4();
  sub_2703C2EFC(v24, &unk_2807D4890, &qword_2705E2880);
  sub_2705D6504();
  sub_2705D6534();
  if (qword_2807D7368 != -1)
  {
    swift_once();
  }

  v14 = sub_2705D7A74();
  sub_2705B6DB8(v14, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13C8, &unk_2705E9BA0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2705DC030;
  v16 = objc_allocWithZone(type metadata accessor for CoreJSError());
  v17 = a4;
  v18 = sub_270565CB4(a4);
  v19 = sub_2705658DC();

  *(v15 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34D0, &qword_2705F2A80);
  *(v15 + 32) = v19;
  sub_27058AAE8(v15);
}

void sub_2705A1374(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v40 = a7;
  v42 = a6;
  v43 = a10;
  v44 = a8;
  v39 = sub_2705D63A4();
  v14 = *(v39 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v39);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2705D6524();
  MEMORY[0x28223BE20](v17 - 8);
  sub_2703CACA0(0, &qword_2807D80C0, 0x277CEE5B0);

  v18 = sub_27059F890(a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2B10, &qword_2706107D0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2705EEC90;
  *(v19 + 32) = v18;
  v41 = v18;
  v20 = sub_2705D77A4();

  v21 = [a1 generateEventFieldsForKeys_];

  v22 = sub_2705D7464();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
  }

  else
  {
    if (qword_2807D7390 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
    v23 = *(sub_2705D6574() - 8);
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v38[1] = *(v23 + 72);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_2705E6EB0;
    v38[0] = v25 + v24;
    v48 = v43;
    v47[0] = v42;
    if (v44)
    {
      v26 = v42;

      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(v47, v48);
      DynamicType = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v45[0] = DynamicType;
      sub_2705D64E4();
      sub_2703C2EFC(v45, &unk_2807D4890, &qword_2705E2880);
      sub_2705D6504();
      MetatypeMetadata = MEMORY[0x277D837D0];
      v45[0] = v40;
      v45[1] = v44;
      sub_2705D64E4();
      v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    }

    else
    {
      v28 = v42;
      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(v47, v48);
      v29 = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v45[0] = v29;
      sub_2705D64E4();
    }

    sub_2703C2EFC(v45, &unk_2807D4890, &qword_2705E2880);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v47);
    sub_2705D64C4();
    v30 = sub_2705D7A74();
    sub_2705B6DB8(v30, v25);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = v39;
    (*(v14 + 16))(v16, a9, v39);
    v33 = v16;
    v34 = v22;
    v35 = (*(v14 + 80) + 48) & ~*(v14 + 80);
    v36 = swift_allocObject();
    v37 = v40;
    *(v36 + 2) = v31;
    *(v36 + 3) = v37;
    *(v36 + 4) = v44;
    *(v36 + 5) = v34;
    (*(v14 + 32))(&v36[v35], v33, v32);
    *&v36[(v15 + v35 + 7) & 0xFFFFFFFFFFFFFFF8] = v43;

    sub_2705D6B04();
  }

  else
  {
  }
}

uint64_t sub_2705A1960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_2705D6524();
  MEMORY[0x28223BE20](v10 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
  sub_2705D6574();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2705E6EB0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    MetatypeMetadata = a6;
    *&v19 = Strong;
    sub_2703E43D4(&v19, &v21);
    if (a3)
    {
LABEL_3:

      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(&v21, v22);
      DynamicType = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      *&v19 = DynamicType;
      sub_2705D64E4();
      sub_2703C2EFC(&v19, &unk_2807D4890, &qword_2705E2880);
      sub_2705D6504();
      MetatypeMetadata = MEMORY[0x277D837D0];
      *&v19 = a2;
      *(&v19 + 1) = a3;
      sub_2705D64E4();
      sub_2703C2EFC(&v19, &unk_2807D4890, &qword_2705E2880);
      goto LABEL_6;
    }
  }

  else
  {
    v22 = swift_getMetatypeMetadata();
    *&v21 = a6;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  sub_2705D6514();
  sub_2705D6504();
  __swift_project_boxed_opaque_existential_1(&v21, v22);
  v14 = swift_getDynamicType();
  MetatypeMetadata = swift_getMetatypeMetadata();
  *&v19 = v14;
  sub_2705D64E4();
  sub_2703C2EFC(&v19, &unk_2807D4890, &qword_2705E2880);
LABEL_6:
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(&v21);
  sub_2705D6514();
  sub_2705D6504();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7558, &unk_27060E2D0);
  v22 = v15;
  *&v21 = a4;

  sub_2705D64E4();
  sub_2703C2EFC(&v21, &unk_2807D4890, &qword_2705E2880);
  sub_2705D6504();
  sub_2705D6534();
  if (qword_2807D7368 != -1)
  {
    swift_once();
  }

  v16 = sub_2705D7A94();
  sub_2705B6DB8(v16, v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13C8, &unk_2705E9BA0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2705DC030;
  *(v17 + 56) = v15;
  *(v17 + 32) = a4;

  sub_27058AAE8(v17);
}

id sub_2705A1D60()
{
  OUTLINED_FUNCTION_26_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_2705D7564();
  v10 = v9;
  v11 = sub_2705D7564();
  v13 = v12;
  v14 = v5;
  v15 = v7;
  v1(v5, v8, v10, v11, v13, v3);

  OUTLINED_FUNCTION_25_1();

  return v16;
}

uint64_t type metadata accessor for JSMetrics(uint64_t a1)
{
  result = qword_2807D80A8;
  if (!qword_2807D80A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2705A1F3C(uint64_t a1)
{
  result = sub_2705D6DE4();
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

uint64_t sub_2705A201C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2705A2054()
{
  MEMORY[0x2743A5550](v0 + 16);

  return swift_deallocObject();
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2705A2108()
{
  sub_2705D63A4();
  OUTLINED_FUNCTION_2_50();

  v1 = OUTLINED_FUNCTION_7_60();
  v2(v1);

  return swift_deallocObject();
}

void sub_2705A21D8(void *a1)
{
  v3 = sub_2705D63A4();
  OUTLINED_FUNCTION_1_1(v3);
  OUTLINED_FUNCTION_14_44();
  sub_2705A1374(a1, v5, v6, v7, v8, v9, v10, v11, v12, *(v1 + v4));
}

uint64_t sub_2705A226C()
{
  sub_2705D63A4();
  OUTLINED_FUNCTION_2_50();

  v0 = OUTLINED_FUNCTION_7_60();
  v1(v0);

  return swift_deallocObject();
}

uint64_t sub_2705A2334()
{
  v1 = sub_2705D63A4();
  OUTLINED_FUNCTION_1_1(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[5];
  v11 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2705A1960(v7, v8, v9, v10, v0 + v6, v11);
}

uint64_t objectdestroy_8Tm(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t objectdestroy_11Tm_0()
{
  sub_2705D63A4();
  OUTLINED_FUNCTION_2_50();

  v1 = OUTLINED_FUNCTION_7_60();
  v2(v1);
  OUTLINED_FUNCTION_6_71();

  return swift_deallocObject();
}

void sub_2705A2580()
{
  v0 = sub_2705D63A4();
  OUTLINED_FUNCTION_23_0(v0);
  sub_2705A0B50();
}

uint64_t sub_2705A2600()
{
  sub_2705D63A4();
  OUTLINED_FUNCTION_2_50();

  v1 = OUTLINED_FUNCTION_7_60();
  v2(v1);
  OUTLINED_FUNCTION_6_71();

  return swift_deallocObject();
}

void sub_2705A26BC(void *a1)
{
  v2 = sub_2705D63A4();
  OUTLINED_FUNCTION_23_0(v2);
  OUTLINED_FUNCTION_14_44();
  sub_27059F36C(a1, v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2705A2728()
{
  sub_2705D63A4();
  OUTLINED_FUNCTION_2_50();

  v1 = OUTLINED_FUNCTION_7_60();
  v2(v1);
  OUTLINED_FUNCTION_6_71();

  return swift_deallocObject();
}

uint64_t sub_2705A27DC()
{
  v1 = sub_2705D63A4();
  OUTLINED_FUNCTION_23_0(v1);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];

  return sub_27059F8FC(v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_24Tm_0()
{
  sub_2705D63A4();
  OUTLINED_FUNCTION_2_50();

  v1 = OUTLINED_FUNCTION_7_60();
  v2(v1);
  OUTLINED_FUNCTION_6_71();

  return swift_deallocObject();
}

uint64_t sub_2705A2910(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v2 = sub_2705D63A4();
  OUTLINED_FUNCTION_23_0(v2);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return a1(v4, v5, v6, v7, v8);
}

uint64_t sub_2705A2988()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2705A29C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2703F6C98;

  return sub_27059E084(a1, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_8_62(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_18_29(uint64_t a1, uint64_t a2)
{

  return swift_task_create();
}

uint64_t OUTLINED_FUNCTION_19_31(uint64_t a1)
{
  *(v2 - 128) = a1;
  *(v2 - 152) = v1;

  return sub_2705D64E4();
}

uint64_t get_enum_tag_for_layout_string_25UnifiedMessagingKitJSCore8JSONTypeO(uint64_t a1)
{
  if ((*(a1 + 16) & 0x1Fu) <= 0x10)
  {
    return *(a1 + 16) & 0x1F;
  }

  else
  {
    return (*a1 + 17);
  }
}

uint64_t sub_2705A2B8C(void *a1)
{
  v3 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  OUTLINED_FUNCTION_15_18();
  sub_2705D8454();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    OUTLINED_FUNCTION_2_30();
    __swift_project_boxed_opaque_existential_1(v4, v5);
    OUTLINED_FUNCTION_15_18();
    if (sub_2705D8194())
    {
      v3 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_2_30();
      __swift_project_boxed_opaque_existential_1(v6, v7);
      OUTLINED_FUNCTION_15_18();
      v3 = sub_2705D8154() & 1;
    }

    __swift_destroy_boxed_opaque_existential_1(v9);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t sub_2705A2E94(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2705D84B4();
  switch(a4)
  {
    case 1:
      OUTLINED_FUNCTION_2_30();
      __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
      OUTLINED_FUNCTION_16_13();
      OUTLINED_FUNCTION_4_32();
      sub_2705D81E4();
      return __swift_destroy_boxed_opaque_existential_1(v45);
    case 2:
      OUTLINED_FUNCTION_2_30();
      __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
      OUTLINED_FUNCTION_1_38();
      sub_2705D8214();
      return __swift_destroy_boxed_opaque_existential_1(v45);
    case 3:
      OUTLINED_FUNCTION_2_30();
      __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
      OUTLINED_FUNCTION_1_38();
      sub_2705D8224();
      return __swift_destroy_boxed_opaque_existential_1(v45);
    case 4:
      OUTLINED_FUNCTION_2_30();
      __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
      OUTLINED_FUNCTION_1_38();
      sub_2705D8234();
      return __swift_destroy_boxed_opaque_existential_1(v45);
    case 5:
      OUTLINED_FUNCTION_2_30();
      __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
      OUTLINED_FUNCTION_16_13();
      OUTLINED_FUNCTION_4_32();
      sub_2705D8244();
      return __swift_destroy_boxed_opaque_existential_1(v45);
    case 6:
      OUTLINED_FUNCTION_2_30();
      __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
      OUTLINED_FUNCTION_16_13();
      OUTLINED_FUNCTION_4_32();
      sub_2705D81F4();
      return __swift_destroy_boxed_opaque_existential_1(v45);
    case 7:
      OUTLINED_FUNCTION_2_30();
      __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
      OUTLINED_FUNCTION_1_38();
      sub_2705D8254();
      return __swift_destroy_boxed_opaque_existential_1(v45);
    case 8:
      OUTLINED_FUNCTION_2_30();
      __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
      OUTLINED_FUNCTION_1_38();
      sub_2705D8264();
      return __swift_destroy_boxed_opaque_existential_1(v45);
    case 9:
      OUTLINED_FUNCTION_2_30();
      __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
      OUTLINED_FUNCTION_1_38();
      sub_2705D8274();
      return __swift_destroy_boxed_opaque_existential_1(v45);
    case 10:
      OUTLINED_FUNCTION_2_30();
      __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
      OUTLINED_FUNCTION_16_13();
      OUTLINED_FUNCTION_4_32();
      sub_2705D8284();
      return __swift_destroy_boxed_opaque_existential_1(v45);
    case 11:
      OUTLINED_FUNCTION_3_37();
      __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
      OUTLINED_FUNCTION_10_22();
      sub_2705D81D4();
      return __swift_destroy_boxed_opaque_existential_1(v45);
    case 12:
      OUTLINED_FUNCTION_3_37();
      __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
      OUTLINED_FUNCTION_10_22();
      sub_2705D81C4();
      return __swift_destroy_boxed_opaque_existential_1(v45);
    case 13:
      OUTLINED_FUNCTION_3_37();
      __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
      sub_2703EC7A4();
      goto LABEL_18;
    case 14:
      __swift_mutable_project_boxed_opaque_existential_1(v45, v45[3]);
      OUTLINED_FUNCTION_16_13();
      sub_2705D81A4();
      return __swift_destroy_boxed_opaque_existential_1(v45);
    case 15:
      OUTLINED_FUNCTION_3_37();
      __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D80F0, &qword_270610A70);
      OUTLINED_FUNCTION_9_52();
      sub_2705A3F68(v24, v25, MEMORY[0x277D83948]);
      goto LABEL_18;
    case 16:
      OUTLINED_FUNCTION_3_37();
      __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D80D8, &qword_270610A68);
      OUTLINED_FUNCTION_9_52();
      sub_2705A3E90(v9, v10, v11, MEMORY[0x277D83508]);
LABEL_18:
      sub_2705D8204();
      break;
    case 17:
      OUTLINED_FUNCTION_3_37();
      __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
      OUTLINED_FUNCTION_10_22();
      sub_2705D8294();
      break;
    default:
      OUTLINED_FUNCTION_2_30();
      __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
      OUTLINED_FUNCTION_4_32();
      sub_2705D81B4();
      break;
  }

  return __swift_destroy_boxed_opaque_existential_1(v45);
}

uint64_t sub_2705A31D8(uint64_t a1, uint64_t a2, char a3)
{
  result = 1819047278;
  switch(a3)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
      return sub_2705D80A4();
    case 11:
      v7 = 0;
      sub_2705D79F4();
      return v7;
    case 12:
      v7 = 0;
      sub_2705D79D4();
      return v7;
    case 13:
      return sub_2705D79C4();
    case 14:
      v7 = 34;
      MEMORY[0x2743A3A90](a1, a2);
      MEMORY[0x2743A3A90](34, 0xE100000000000000);
      return v7;
    case 15:
      return MEMORY[0x2743A3C10](a1, &type metadata for JSONType);
    case 16:
      return sub_2705D7484();
    case 17:
      return result;
    default:
      v7 = 0;
      if (a1)
      {
        v5 = 1702195828;
      }

      else
      {
        v5 = 0x65736C6166;
      }

      if (a1)
      {
        v6 = 0xE400000000000000;
      }

      else
      {
        v6 = 0xE500000000000000;
      }

      MEMORY[0x2743A3A90](v5, v6);

      return v7;
  }
}

uint64_t sub_2705A3480@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = result;
  switch(a3)
  {
    case 1:
      v34 = MEMORY[0x277D83B88];
      goto LABEL_37;
    case 2:
      v35 = MEMORY[0x277D84900];
      goto LABEL_30;
    case 3:
      v51 = MEMORY[0x277D84958];
      goto LABEL_39;
    case 4:
      v33 = MEMORY[0x277D849A8];
      goto LABEL_20;
    case 5:
      v34 = MEMORY[0x277D84A28];
      goto LABEL_37;
    case 6:
      v34 = MEMORY[0x277D83E88];
      goto LABEL_37;
    case 7:
      v35 = MEMORY[0x277D84B78];
LABEL_30:
      *(a4 + 24) = v35;
      *a4 = result;
      return result;
    case 8:
      v51 = MEMORY[0x277D84C58];
LABEL_39:
      *(a4 + 24) = v51;
      *a4 = result;
      return result;
    case 9:
      v33 = MEMORY[0x277D84CC0];
      goto LABEL_20;
    case 10:
      v34 = MEMORY[0x277D84D38];
      goto LABEL_37;
    case 11:
      v33 = MEMORY[0x277D83A90];
LABEL_20:
      *(a4 + 24) = v33;
      *a4 = result;
      return result;
    case 12:
      v34 = MEMORY[0x277D839F8];
      goto LABEL_37;
    case 13:
      v34 = MEMORY[0x277D85048];
LABEL_37:
      *(a4 + 24) = v34;
      *a4 = result;
      return result;
    case 14:
      *(a4 + 24) = MEMORY[0x277D837D0];
      *a4 = result;
      *(a4 + 8) = a2;

    case 15:
      v36 = *(result + 16);
      v37 = MEMORY[0x277D84F90];
      if (v36)
      {
        v56 = MEMORY[0x277D84F90];
        sub_2704ADD54(0, v36, 0);
        v37 = v56;
        v38 = v5 + 48;
        do
        {
          v39 = OUTLINED_FUNCTION_19_8();
          sub_2703AE9FC(v39, v40, v41);
          v42 = OUTLINED_FUNCTION_19_8();
          sub_2705A3480(v42, v43, v44, v45);
          v46 = OUTLINED_FUNCTION_19_8();
          sub_2703F6F50(v46, v47, v48);
          v50 = *(v56 + 16);
          v49 = *(v56 + 24);
          if (v50 >= v49 >> 1)
          {
            sub_2704ADD54((v49 > 1), v50 + 1, 1);
          }

          v38 += 24;
          *(v56 + 16) = v50 + 1;
          sub_2703E43D4(v57, (v56 + 32 * v50 + 32));
          --v36;
        }

        while (v36);
      }

      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3500, &qword_270610A90);
      *(a4 + 24) = result;
      *a4 = v37;
      return result;
    case 16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34F0, &unk_270610A80);
      v7 = sub_2705D7E74();
      v8 = 0;
      OUTLINED_FUNCTION_0_35();
      i = v10 & v9;
      OUTLINED_FUNCTION_18_10();
      v54 = v12;
      if (i)
      {
        goto LABEL_4;
      }

      break;
    case 17:
      v52 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
      result = sub_27046C2B0();
      *(a4 + 24) = result;
      *a4 = v52;
      return result;
    default:
      *(a4 + 24) = MEMORY[0x277D839B0];
      *a4 = result & 1;
      return result;
  }

LABEL_5:
  v14 = v8;
  while (1)
  {
    v8 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v8 >= v4)
    {
      break;
    }

    ++v14;
    if (*(v5 + 64 + 8 * v8))
    {
      OUTLINED_FUNCTION_20_10();
      for (i = v16 & v15; ; i &= i - 1)
      {
        v17 = v13 | (v8 << 6);
        v18 = (*(v5 + 48) + 16 * v17);
        v19 = v18[1];
        v55 = *v18;
        v20 = *(*(v5 + 56) + 24 * v17 + 16);

        v21 = OUTLINED_FUNCTION_15_18();
        sub_2703AE9FC(v21, v22, v20);
        v23 = OUTLINED_FUNCTION_15_18();
        sub_2705A3480(v23, v24, v20, v25);
        v26 = OUTLINED_FUNCTION_15_18();
        sub_2703F6F50(v26, v27, v20);
        OUTLINED_FUNCTION_21_12();
        v7 = v54;
        OUTLINED_FUNCTION_7_22(v28);
        v29 = (v54[6] + 16 * v17);
        *v29 = v55;
        v29[1] = v19;
        sub_2703E43D4(v57, (v54[7] + 32 * v17));
        v30 = v54[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          break;
        }

        v54[2] = v32;
        if (!i)
        {
          goto LABEL_5;
        }

LABEL_4:
        v13 = __clz(__rbit64(i));
      }

LABEL_43:
      __break(1u);
      JUMPOUT(0x2705A3854);
    }
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34F8, &unk_2705F27A0);
  *(a4 + 24) = result;
  *a4 = v7;
  return result;
}

uint64_t sub_2705A389C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a3)
  {
    case 1:
      if (a6 == 1)
      {
        goto LABEL_43;
      }

      goto LABEL_49;
    case 2:
      if (a6 != 2)
      {
        goto LABEL_49;
      }

      goto LABEL_27;
    case 3:
      if (a6 != 3)
      {
        goto LABEL_49;
      }

      goto LABEL_45;
    case 4:
      if (a6 != 4)
      {
        goto LABEL_49;
      }

      goto LABEL_19;
    case 5:
      if (a6 != 5)
      {
        goto LABEL_49;
      }

      goto LABEL_43;
    case 6:
      if (a6 != 6)
      {
        goto LABEL_49;
      }

      goto LABEL_43;
    case 7:
      if (a6 != 7)
      {
        goto LABEL_49;
      }

LABEL_27:
      v10 = a1 == a4;
      goto LABEL_46;
    case 8:
      if (a6 != 8)
      {
        goto LABEL_49;
      }

LABEL_45:
      v10 = a1 == a4;
      goto LABEL_46;
    case 9:
      if (a6 != 9)
      {
        goto LABEL_49;
      }

LABEL_19:
      v10 = a1 == a4;
      goto LABEL_46;
    case 10:
      if (a6 != 10)
      {
        goto LABEL_49;
      }

LABEL_43:
      v10 = a1 == a4;
LABEL_46:
      v6 = v10;
      return v6 & 1;
    case 11:
      if (a6 != 11)
      {
        goto LABEL_49;
      }

      v9 = *&a1 == *&a4;
      goto LABEL_37;
    case 12:
      if (a6 != 12)
      {
        goto LABEL_49;
      }

      goto LABEL_36;
    case 13:
      if (a6 != 13)
      {
        goto LABEL_49;
      }

LABEL_36:
      v9 = *&a1 == *&a4;
LABEL_37:
      v6 = v9;
      return v6 & 1;
    case 14:
      if (a6 != 14)
      {
        goto LABEL_49;
      }

      if (a1 != a4 || a2 != a5)
      {
        return OUTLINED_FUNCTION_12_19(a1, a2, a4, a5);
      }

LABEL_32:
      v6 = 1;
      return v6 & 1;
    case 15:
      if (a6 != 15)
      {
        goto LABEL_49;
      }

      return sub_2705A4D64(a1, a4);
    case 16:
      if (a6 != 16)
      {
        goto LABEL_49;
      }

      return sub_2705A4E6C(a1, a4);
    case 17:
      if (a6 == 17 && !(a5 | a4))
      {
        goto LABEL_32;
      }

      goto LABEL_49;
    default:
      if (a6)
      {
LABEL_49:
        v6 = 0;
      }

      else
      {
        v6 = a4 ^ a1 ^ 1;
      }

      return v6 & 1;
  }
}

uint64_t sub_2705A3AA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 1:
      v14 = 2;
      goto LABEL_31;
    case 2:
      v10 = 3;
      goto LABEL_21;
    case 3:
      v13 = 4;
      goto LABEL_37;
    case 4:
      v8 = 5;
      goto LABEL_13;
    case 5:
      v16 = 6;
      goto LABEL_34;
    case 6:
      v14 = 7;
LABEL_31:
      MEMORY[0x2743A47E0](v14, a2, a3);
      v15 = a2;
      goto LABEL_32;
    case 7:
      v10 = 8;
LABEL_21:
      MEMORY[0x2743A47E0](v10, a2, a3);
      goto LABEL_22;
    case 8:
      v13 = 9;
LABEL_37:
      MEMORY[0x2743A47E0](v13, a2, a3);
      return sub_2705D83E4();
    case 9:
      v8 = 10;
LABEL_13:
      MEMORY[0x2743A47E0](v8, a2, a3);
      return sub_2705D83F4();
    case 10:
      v16 = 11;
LABEL_34:
      MEMORY[0x2743A47E0](v16, a2, a3);
      v17 = a2;
      goto LABEL_35;
    case 11:
      MEMORY[0x2743A47E0](12, a2, a3);
      return sub_2705D83F4();
    case 12:
      v9 = 13;
      goto LABEL_27;
    case 13:
      v9 = 14;
LABEL_27:
      MEMORY[0x2743A47E0](v9, a2, a3);
      if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v17 = a2;
      }

      else
      {
        v17 = 0;
      }

LABEL_35:
      result = MEMORY[0x2743A4820](v17);
      break;
    case 14:
      MEMORY[0x2743A47E0](15);
      OUTLINED_FUNCTION_25_11();

      result = sub_2705D7634();
      break;
    case 15:
      MEMORY[0x2743A47E0](16, a2, a3);
      v11 = OUTLINED_FUNCTION_25_11();

      result = sub_2705A51BC(v11, v12);
      break;
    case 16:
      MEMORY[0x2743A47E0](17, a2, a3);
      v5 = OUTLINED_FUNCTION_25_11();

      result = sub_2705A5048(v5, v6);
      break;
    case 17:
      v15 = 0;
LABEL_32:
      result = MEMORY[0x2743A47E0](v15, a2, a3);
      break;
    default:
      MEMORY[0x2743A47E0](1, a2, a3);
LABEL_22:
      result = sub_2705D83D4();
      break;
  }

  return result;
}

uint64_t sub_2705A3C9C(uint64_t a1, uint64_t a2, char a3)
{
  sub_2705D83B4();
  sub_2705A3AA0(v7, a1, a2, a3);
  return sub_2705D8414();
}

uint64_t sub_2705A3CFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2705A2B8C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_2705A3D70(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_2705D83B4();
  sub_2705A3AA0(v6, v2, v3, v4);
  return sub_2705D8414();
}

unint64_t sub_2705A3DE8()
{
  result = qword_2807D80D0;
  if (!qword_2807D80D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D80D0);
  }

  return result;
}

unint64_t sub_2705A3E3C()
{
  result = qword_2807D80E8;
  if (!qword_2807D80E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D80E8);
  }

  return result;
}

uint64_t sub_2705A3E90(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D80D8, &qword_270610A68);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2705A3F14()
{
  result = qword_2807D8108;
  if (!qword_2807D8108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D8108);
  }

  return result;
}

uint64_t sub_2705A3F68(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D80F0, &qword_270610A70);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2705A3FE0(uint64_t a1)
{
  v3 = sub_2703D7F04(a1, v204);
  v10 = OUTLINED_FUNCTION_6_29(v3, v4, v5, MEMORY[0x277D837D0], v6, v7, v8, v9, v175);
  if (v10)
  {
    goto LABEL_46;
  }

  v17 = OUTLINED_FUNCTION_6_29(v10, v11, v12, MEMORY[0x277D83B88], v13, v14, v15, v16, v176);
  if (v17)
  {
    goto LABEL_17;
  }

  v24 = OUTLINED_FUNCTION_6_29(v17, v18, v19, MEMORY[0x277D84900], v20, v21, v22, v23, v177);
  if (v24)
  {
    goto LABEL_46;
  }

  v31 = OUTLINED_FUNCTION_6_29(v24, v25, v26, MEMORY[0x277D84958], v27, v28, v29, v30, v178);
  if (v31)
  {
    goto LABEL_46;
  }

  v38 = OUTLINED_FUNCTION_6_29(v31, v32, v33, MEMORY[0x277D849A8], v34, v35, v36, v37, v179);
  if (v38)
  {
    goto LABEL_46;
  }

  v45 = OUTLINED_FUNCTION_6_29(v38, v39, v40, MEMORY[0x277D84A28], v41, v42, v43, v44, v180);
  if (v45)
  {
    goto LABEL_17;
  }

  v52 = OUTLINED_FUNCTION_6_29(v45, v46, v47, MEMORY[0x277D83E88], v48, v49, v50, v51, v181);
  if (v52)
  {
    goto LABEL_17;
  }

  v59 = OUTLINED_FUNCTION_6_29(v52, v53, v54, MEMORY[0x277D84B78], v55, v56, v57, v58, v182);
  if (v59)
  {
    goto LABEL_46;
  }

  v66 = OUTLINED_FUNCTION_6_29(v59, v60, v61, MEMORY[0x277D84C58], v62, v63, v64, v65, v183);
  if (v66)
  {
    goto LABEL_46;
  }

  v73 = OUTLINED_FUNCTION_6_29(v66, v67, v68, MEMORY[0x277D84CC0], v69, v70, v71, v72, v184);
  if (v73)
  {
    goto LABEL_46;
  }

  v80 = OUTLINED_FUNCTION_6_29(v73, v74, v75, MEMORY[0x277D84D38], v76, v77, v78, v79, v185);
  if (v80)
  {
    goto LABEL_17;
  }

  v87 = OUTLINED_FUNCTION_6_29(v80, v81, v82, MEMORY[0x277D83A90], v83, v84, v85, v86, v186);
  if (v87)
  {
LABEL_46:
    __swift_destroy_boxed_opaque_existential_1(v204);
    return;
  }

  v94 = OUTLINED_FUNCTION_6_29(v87, v88, v89, MEMORY[0x277D839F8], v90, v91, v92, v93, v187);
  if (v94 || (v101 = OUTLINED_FUNCTION_6_29(v94, v95, v96, MEMORY[0x277D85048], v97, v98, v99, v100, v188), v101))
  {
LABEL_17:
    OUTLINED_FUNCTION_17_13();
    goto LABEL_46;
  }

  if (OUTLINED_FUNCTION_6_29(v101, v102, v103, MEMORY[0x277D839B0], v104, v105, v106, v107, v189))
  {
    goto LABEL_46;
  }

  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34D0, &qword_2705F2A80);
  if (OUTLINED_FUNCTION_23_11(v108, v109, v110, v111, v112, v113, v114, v115, v190, v194, v196))
  {
    v116 = v205;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D8118, &qword_270610A78);
    OUTLINED_FUNCTION_16_13();
    v117 = sub_2705D7E74();
    v198 = v116;
    v199 = 0;
    v192 = v116 + 64;
    OUTLINED_FUNCTION_0_35();
    v200 = v119 & v118;
    OUTLINED_FUNCTION_18_10();
    while (v200)
    {
      v120 = __clz(__rbit64(v200));
      v200 &= v200 - 1;
      v121 = v199;
LABEL_28:
      v124 = v120 | (v121 << 6);
      v125 = (*(v198 + 48) + 16 * v124);
      v127 = *v125;
      v126 = v125[1];
      sub_2703D7F04(*(v198 + 56) + 32 * v124, &v202);

      sub_2705A3FE0(&v202);
      if (v1)
      {

        __swift_destroy_boxed_opaque_existential_1(&v202);
        goto LABEL_46;
      }

      v131 = v128;
      v132 = v129;
      v133 = v130;
      __swift_destroy_boxed_opaque_existential_1(&v202);
      OUTLINED_FUNCTION_21_12();
      OUTLINED_FUNCTION_7_22(v134);
      v135 = (v117[6] + 16 * v124);
      *v135 = v127;
      v135[1] = v126;
      v136 = v117[7] + 24 * v124;
      *v136 = v131;
      *(v136 + 8) = v132;
      *(v136 + 16) = v133;
      v137 = v117[2];
      v138 = __OFADD__(v137, 1);
      v139 = v137 + 1;
      if (v138)
      {
        goto LABEL_50;
      }

      v117[2] = v139;
    }

    v122 = v199;
    while (1)
    {
      v121 = v122 + 1;
      if (__OFADD__(v122, 1))
      {
        break;
      }

      if (v121 >= v2)
      {
        goto LABEL_39;
      }

      v123 = *(v192 + 8 * v121);
      ++v122;
      if (v123)
      {
        v120 = __clz(__rbit64(v123));
        v199 = v121;
        v200 = (v123 - 1) & v123;
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  else
  {
    v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34D8, &unk_2705F2790);
    if (!OUTLINED_FUNCTION_23_11(v140, v141, v142, v143, v144, v145, v146, v147, v191, v195, v197))
    {
      v162 = sub_27046C2B0();
      if (OUTLINED_FUNCTION_6_29(v162, v163, v164, v162, v165, v166, v167, v168, v193))
      {
      }

      else
      {
        v169 = OUTLINED_FUNCTION_25_11();
        __swift_project_boxed_opaque_existential_1(v169, v170);
        swift_getDynamicType();
        v171 = sub_2705D8504();
        v173 = v172;
        sub_2705A53E0();
        swift_allocError();
        *v174 = v171;
        v174[1] = v173;
        swift_willThrow();
      }

      goto LABEL_46;
    }

    v201 = v205;
    v148 = *(v205 + 16);
    if (!v148)
    {

      goto LABEL_46;
    }

    v203 = MEMORY[0x277D84F90];
    sub_2705717FC(0, v148, 0);
    v149 = 0;
    v150 = v203;
    v151 = v201 + 32;
    while (v149 < *(v201 + 16))
    {
      sub_2703D7F04(v151, &v202);
      sub_2705A3FE0(&v202);
      if (v1)
      {
        __swift_destroy_boxed_opaque_existential_1(&v202);

        goto LABEL_46;
      }

      v155 = v152;
      v156 = v153;
      v157 = v154;
      __swift_destroy_boxed_opaque_existential_1(&v202);
      v203 = v150;
      v159 = *(v150 + 16);
      v158 = *(v150 + 24);
      v160 = v159 + 1;
      if (v159 >= v158 >> 1)
      {
        sub_2705717FC((v158 > 1), v159 + 1, 1);
        v160 = v159 + 1;
        v150 = v203;
      }

      ++v149;
      *(v150 + 16) = v160;
      v161 = v150 + 24 * v159;
      *(v161 + 32) = v155;
      *(v161 + 40) = v156;
      *(v161 + 48) = v157;
      v151 += 32;
      if (v148 == v149)
      {
LABEL_39:

        goto LABEL_46;
      }
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
}

void sub_2705A458C(uint64_t a1)
{
  v1 = sub_2703D7F04(a1, v177);
  v8 = OUTLINED_FUNCTION_5_34(v1, v2, v3, MEMORY[0x277D839B0], v4, v5, v6, v7);
  if (v8)
  {
    goto LABEL_20;
  }

  v15 = OUTLINED_FUNCTION_5_34(v8, v9, v10, MEMORY[0x277D837D0], v11, v12, v13, v14);
  if (v15)
  {
    goto LABEL_20;
  }

  v22 = OUTLINED_FUNCTION_5_34(v15, v16, v17, MEMORY[0x277D83B88], v18, v19, v20, v21);
  if (v22)
  {
    goto LABEL_19;
  }

  v29 = OUTLINED_FUNCTION_5_34(v22, v23, v24, MEMORY[0x277D84900], v25, v26, v27, v28);
  if (v29)
  {
    goto LABEL_20;
  }

  v36 = OUTLINED_FUNCTION_5_34(v29, v30, v31, MEMORY[0x277D84958], v32, v33, v34, v35);
  if (v36)
  {
    goto LABEL_20;
  }

  v43 = OUTLINED_FUNCTION_5_34(v36, v37, v38, MEMORY[0x277D849A8], v39, v40, v41, v42);
  if (v43)
  {
    goto LABEL_20;
  }

  v50 = OUTLINED_FUNCTION_5_34(v43, v44, v45, MEMORY[0x277D84A28], v46, v47, v48, v49);
  if (v50)
  {
    goto LABEL_19;
  }

  v57 = OUTLINED_FUNCTION_5_34(v50, v51, v52, MEMORY[0x277D83E88], v53, v54, v55, v56);
  if (v57)
  {
    goto LABEL_19;
  }

  v64 = OUTLINED_FUNCTION_5_34(v57, v58, v59, MEMORY[0x277D84B78], v60, v61, v62, v63);
  if (v64)
  {
    goto LABEL_20;
  }

  v71 = OUTLINED_FUNCTION_5_34(v64, v65, v66, MEMORY[0x277D84C58], v67, v68, v69, v70);
  if (v71)
  {
    goto LABEL_20;
  }

  v78 = OUTLINED_FUNCTION_5_34(v71, v72, v73, MEMORY[0x277D84CC0], v74, v75, v76, v77);
  if (v78)
  {
    goto LABEL_20;
  }

  v85 = OUTLINED_FUNCTION_5_34(v78, v79, v80, MEMORY[0x277D84D38], v81, v82, v83, v84);
  if (v85)
  {
    goto LABEL_19;
  }

  v92 = OUTLINED_FUNCTION_5_34(v85, v86, v87, MEMORY[0x277D83A90], v88, v89, v90, v91);
  if (v92)
  {
LABEL_20:
    __swift_destroy_boxed_opaque_existential_1(v177);
    return;
  }

  v99 = OUTLINED_FUNCTION_5_34(v92, v93, v94, MEMORY[0x277D839F8], v95, v96, v97, v98);
  if (v99 || (v106 = OUTLINED_FUNCTION_5_34(v99, v100, v101, MEMORY[0x277D85048], v102, v103, v104, v105), v106))
  {
LABEL_19:
    OUTLINED_FUNCTION_14_22();
    goto LABEL_20;
  }

  if (OUTLINED_FUNCTION_5_34(v106, v107, v108, MEMORY[0x277D839B0], v109, v110, v111, v112))
  {
    goto LABEL_20;
  }

  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34D0, &qword_2705F2A80);
  if (!OUTLINED_FUNCTION_22_10(v113, v114, v115, v116, v117, v118, v119, v120, v168, v170))
  {
    v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34D8, &unk_2705F2790);
    if (OUTLINED_FUNCTION_22_10(v140, v141, v142, v143, v144, v145, v146, v147, v169, v171))
    {
      v148 = *(v176 + 16);
      if (v148)
      {
        v175 = MEMORY[0x277D84F90];
        sub_2705717FC(0, v148, 0);
        v149 = v175;
        v150 = v176 + 32;
        do
        {
          sub_2703D7F04(v150, &v174);
          sub_2705A458C(&v174);
          v152 = v151;
          v154 = v153;
          v156 = v155;
          __swift_destroy_boxed_opaque_existential_1(&v174);
          v175 = v149;
          v158 = *(v149 + 16);
          v157 = *(v149 + 24);
          v159 = v158 + 1;
          if (v158 >= v157 >> 1)
          {
            sub_2705717FC((v157 > 1), v158 + 1, 1);
            v159 = v158 + 1;
            v149 = v175;
          }

          *(v149 + 16) = v159;
          v160 = v149 + 24 * v158;
          *(v160 + 32) = v152;
          *(v160 + 40) = v154;
          *(v160 + 48) = v156;
          v150 += 32;
          --v148;
        }

        while (v148);
LABEL_39:
      }

      else
      {
      }
    }

    else
    {
      v161 = sub_27046C2B0();
      if (OUTLINED_FUNCTION_5_34(v161, v162, v163, v161, v164, v165, v166, v167))
      {
      }
    }

    goto LABEL_20;
  }

  v121 = v176;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D8118, &qword_270610A78);
  v122 = sub_2705D7E74();
  OUTLINED_FUNCTION_0_35();
  v125 = v124 & v123;
  v172 = (v126 + 63) >> 6;
  v173 = 0;
  if ((v124 & v123) != 0)
  {
    while (1)
    {
      v127 = __clz(__rbit64(v125));
      v125 &= v125 - 1;
      v128 = v173;
LABEL_30:
      v131 = v127 | (v128 << 6);
      v132 = (*(v121 + 48) + 16 * v131);
      v134 = *v132;
      v133 = v132[1];
      sub_2703D7F04(*(v121 + 56) + 32 * v131, &v174);

      sub_2705A458C(&v174);
      __swift_destroy_boxed_opaque_existential_1(&v174);
      OUTLINED_FUNCTION_21_12();
      OUTLINED_FUNCTION_7_22(v135);
      v136 = (v122[6] + 16 * v131);
      *v136 = v134;
      v136[1] = v133;
      OUTLINED_FUNCTION_24_13(v122[7]);
      v137 = v122[2];
      v138 = __OFADD__(v137, 1);
      v139 = v137 + 1;
      if (v138)
      {
        break;
      }

      v122[2] = v139;
      if (!v125)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_25:
    v129 = v173;
    while (1)
    {
      v128 = v129 + 1;
      if (__OFADD__(v129, 1))
      {
        break;
      }

      if (v128 >= v172)
      {
        goto LABEL_39;
      }

      v130 = *(v121 + 64 + 8 * v128);
      ++v129;
      if (v130)
      {
        v127 = __clz(__rbit64(v130));
        v125 = (v130 - 1) & v130;
        v173 = v128;
        goto LABEL_30;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_2705A4A54(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D8118, &qword_270610A78);
  v3 = 0;
  v30 = a1;
  v31 = sub_2705D7E74();
  OUTLINED_FUNCTION_0_35();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  v29 = a1 + 64;
  if (v6)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v6));
      v33 = (v6 - 1) & v6;
LABEL_8:
      v13 = v9 | (v3 << 6);
      v14 = (*(v30 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      sub_2703D7F04(*(v30 + 56) + 32 * v13, v32);

      sub_2705A3FE0(v32);
      if (v1)
      {
        break;
      }

      v20 = v17;
      v21 = v18;
      v22 = v19;
      __swift_destroy_boxed_opaque_existential_1(v32);
      OUTLINED_FUNCTION_21_12();
      OUTLINED_FUNCTION_7_22(v23);
      v24 = (v31[6] + 16 * v13);
      *v24 = v15;
      v24[1] = v16;
      v25 = v31[7] + 24 * v13;
      *v25 = v20;
      *(v25 + 8) = v21;
      *(v25 + 16) = v22;
      v26 = v31[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_15;
      }

      v31[2] = v28;
      v6 = v33;
      if (!v33)
      {
        goto LABEL_3;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
LABEL_3:
    v10 = v3;
    while (1)
    {
      v3 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v3 >= v8)
      {
        return;
      }

      ++v10;
      if (*(v29 + 8 * v3))
      {
        OUTLINED_FUNCTION_20_10();
        v33 = v12 & v11;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }
}

void sub_2705A4C08(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D8118, &qword_270610A78);
  v3 = 0;
  sub_2705D7E74();
  v23 = a1;
  v4 = a1 + 64;
  OUTLINED_FUNCTION_0_35();
  v7 = v6 & v5;
  OUTLINED_FUNCTION_18_10();
  if (v7)
  {
    while (1)
    {
      v8 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_8:
      v12 = v8 | (v3 << 6);
      v13 = (*(v23 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      sub_2703D7F04(*(v23 + 56) + 32 * v12, v24);

      sub_2705A458C(v24);
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_21_12();
      OUTLINED_FUNCTION_7_22(v16);
      v18 = (*(v17 + 48) + 16 * v12);
      *v18 = v14;
      v18[1] = v15;
      OUTLINED_FUNCTION_24_13(*(v17 + 56));
      v20 = *(v19 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      *(v19 + 16) = v22;
      if (!v7)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v9 = v3;
    while (1)
    {
      v3 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v3 >= v1)
      {
        return;
      }

      ++v9;
      if (*(v4 + 8 * v3))
      {
        OUTLINED_FUNCTION_20_10();
        v7 = v11 & v10;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2705A4D64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v11 = 1;
    }

    else
    {
      v3 = (a2 + 48);
      v4 = (a1 + 48);
      do
      {
        v6 = *(v4 - 2);
        v5 = *(v4 - 1);
        v7 = *(v3 - 2);
        v8 = *(v3 - 1);
        v9 = *v4;
        v10 = *v3;
        sub_2703AE9FC(v6, v5, *v4);
        sub_2703AE9FC(v7, v8, v10);
        v11 = sub_2705A389C(v6, v5, v9, v7, v8, v10);
        sub_2703F6F50(v7, v8, v10);
        sub_2703F6F50(v6, v5, v9);
        if ((v11 & 1) == 0)
        {
          break;
        }

        v3 += 24;
        v4 += 24;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_2705A4E6C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v27 = result;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v29 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = (*(result + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(result + 56) + 24 * v12;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);

    sub_2703AE9FC(v17, v18, v19);
    v20 = sub_2703D7318(v14, v15);
    v22 = v21;

    if ((v22 & 1) == 0)
    {
      sub_2703F6F50(v17, v18, v19);
      return 0;
    }

    v23 = *(a2 + 56) + 24 * v20;
    v24 = *v23;
    v25 = *(v23 + 8);
    v26 = *(v23 + 16);
    sub_2703AE9FC(*v23, v25, v26);
    v28 = sub_2705A389C(v24, v25, v26, v17, v18, v19);
    sub_2703F6F50(v24, v25, v26);
    sub_2703F6F50(v17, v18, v19);
    result = v27;
    v7 = v29;
    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v29 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2705A5048(const void *a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= result)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = *(a2 + 56) + 24 * (v11 | (v10 << 6));
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    memcpy(__dst, a1, sizeof(__dst));

    sub_2703AE9FC(v13, v14, v15);
    sub_2705D7634();

    sub_2705A3AA0(__dst, v13, v14, v15);
    sub_2703F6F50(v13, v14, v15);
    result = sub_2705D8414();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x2743A47E0](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2705A51BC(const void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x2743A47E0](v4);
  if (v4)
  {
    v6 = (a2 + 48);
    do
    {
      v7 = *(v6 - 2);
      v8 = *(v6 - 1);
      v9 = *v6;
      v6 += 24;
      switch(v9)
      {
        case 1:
          v17 = 2;
          goto LABEL_28;
        case 2:
          v15 = 3;
          goto LABEL_18;
        case 3:
          v16 = 4;
          goto LABEL_34;
        case 4:
          v13 = 5;
          goto LABEL_11;
        case 5:
          v19 = 6;
          goto LABEL_31;
        case 6:
          v17 = 7;
LABEL_28:
          MEMORY[0x2743A47E0](v17);
          v18 = v7;
          goto LABEL_29;
        case 7:
          v15 = 8;
LABEL_18:
          MEMORY[0x2743A47E0](v15);
          goto LABEL_19;
        case 8:
          v16 = 9;
LABEL_34:
          MEMORY[0x2743A47E0](v16);
          result = sub_2705D83E4();
          break;
        case 9:
          v13 = 10;
LABEL_11:
          MEMORY[0x2743A47E0](v13);
          goto LABEL_12;
        case 10:
          v19 = 11;
LABEL_31:
          MEMORY[0x2743A47E0](v19);
          v20 = v7;
          goto LABEL_32;
        case 11:
          MEMORY[0x2743A47E0](12);
LABEL_12:
          result = sub_2705D83F4();
          break;
        case 12:
          v14 = 13;
          goto LABEL_24;
        case 13:
          v14 = 14;
LABEL_24:
          MEMORY[0x2743A47E0](v14);
          if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v20 = v7;
          }

          else
          {
            v20 = 0;
          }

LABEL_32:
          result = MEMORY[0x2743A4820](v20);
          break;
        case 14:
          MEMORY[0x2743A47E0](15);

          sub_2705D7634();
          v10 = v7;
          v11 = v8;
          v12 = 14;
          goto LABEL_15;
        case 15:
          MEMORY[0x2743A47E0](16);

          sub_2705A51BC(a1, v7);
          v10 = v7;
          v11 = v8;
          v12 = 15;
          goto LABEL_15;
        case 16:
          MEMORY[0x2743A47E0](17);

          sub_2705A5048(a1, v7);
          v10 = v7;
          v11 = v8;
          v12 = 16;
LABEL_15:
          result = sub_2703F6F50(v10, v11, v12);
          break;
        case 17:
          v18 = 0;
LABEL_29:
          result = MEMORY[0x2743A47E0](v18);
          break;
        default:
          MEMORY[0x2743A47E0](1);
LABEL_19:
          result = sub_2705D83D4();
          break;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t sub_2705A53E0()
{
  result = qword_2807D8120;
  if (!qword_2807D8120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D8120);
  }

  return result;
}

uint64_t sub_2705A5474(uint64_t a1)
{
  sub_2705A4A54(a1);
  v3 = v2;

  if (v1)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

_OWORD *sub_2705A54D4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34F0, &unk_270610A80);
    result = sub_2705D7E74();
    v5 = result;
    v6 = 0;
    v7 = a1 + 64;
    v8 = 1 << *(a1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a1 + 64);
    v11 = (v8 + 63) >> 6;
    v33 = result + 4;
    v34 = result;
    if (v10)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_11:
        v15 = v12 | (v6 << 6);
        v16 = a1;
        v17 = (*(a1 + 48) + 16 * v15);
        v18 = v17[1];
        v35 = *v17;

        v19 = OUTLINED_FUNCTION_0_14();
        sub_2703AE9FC(v19, v20, v21);
        v22 = OUTLINED_FUNCTION_0_14();
        sub_2705A3480(v22, v23, v24, v25);
        v26 = OUTLINED_FUNCTION_0_14();
        sub_2703F6F50(v26, v27, v28);
        v5 = v34;
        *(v33 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        v29 = (v34[6] + 16 * v15);
        *v29 = v35;
        v29[1] = v18;
        result = sub_2703E43D4(&v36, (v34[7] + 32 * v15));
        v30 = v34[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          break;
        }

        v34[2] = v32;
        a1 = v16;
        if (!v10)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
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
          return v5;
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

    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518, &unk_2705F2A70);

    return sub_2705D7494();
  }

  return result;
}

uint64_t sub_2705A56EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2E0, &unk_270610B30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  sub_2705D63B4();
  v9 = sub_2705D6844();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2703C1634(v8, &qword_2807CF2E0, &unk_270610B30);
LABEL_6:
    [objc_allocWithZone(MEMORY[0x277CCA9B8]) init];
    swift_willThrow();
    goto LABEL_7;
  }

  v10 = sub_2705D6834();
  (*(*(v9 - 8) + 8))(v8, v9);
  if (!v10)
  {
    goto LABEL_6;
  }

  sub_2705A4A54(v10);
  if (!v2)
  {
    v3 = v11;

    sub_2705D6654();
    OUTLINED_FUNCTION_11_1();
    (*(v15 + 8))(a2);
    sub_2705D6484();
    OUTLINED_FUNCTION_11_1();
    (*(v16 + 8))(a1);
    return v3;
  }

LABEL_7:
  sub_2705D6654();
  OUTLINED_FUNCTION_11_1();
  (*(v12 + 8))(a2);
  sub_2705D6484();
  OUTLINED_FUNCTION_11_1();
  (*(v13 + 8))(a1);
  return v3;
}

uint64_t sub_2705A595C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_2705A56EC(a1, a2);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6;
    *(a3 + 16) = v7;
  }

  return result;
}

void *sub_2705A598C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_2705A59BC(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

void *sub_2705A59BC(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2705D8454();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_2705A3E3C();
    sub_2705D8184();
    v3 = v5;
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_2705A5AC4(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2705D84B4();
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_2705A3F14();
  sub_2705D8204();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_2705A5B80@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2705A5BB0(a2, a3);
  if (!v3)
  {
    *a1 = result;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
  }

  return result;
}

uint64_t sub_2705A5BB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2705D6654();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2705D6484();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 16);
  v19 = a1;
  v13 = a1;
  v14 = a2;
  v12(v11, v13, v8);
  (*(v5 + 16))(v7, a2, v4);
  v15 = v18[1];
  v16 = sub_2705A5BB0(v11, v7);
  if (v15)
  {
    (*(v5 + 8))(a2, v4);
  }

  else
  {
    a2 = v16;
    (*(v5 + 8))(v14, v4);
  }

  (*(v9 + 8))(v19, v8);
  return a2;
}

uint64_t sub_2705A5DD8()
{
  v0 = sub_2705D7494();
  sub_2705A4C08(v0);
  v2 = v1;

  return v2;
}

uint64_t sub_2705A5E4C(uint64_t a1, uint64_t a2, char a3)
{
  v38[4] = *MEMORY[0x277D85DE8];
  v5 = sub_2705D6524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_2705D75C4();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = objc_opt_self();
  sub_2705A54D4(a1, v8, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518, &unk_2705F2A70);
  v9 = sub_2705D7454();

  v10 = [v7 isValidJSONObject_];

  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
    sub_2705D6574();
    v21 = OUTLINED_FUNCTION_3_85();
    *(v21 + 16) = xmmword_2705E6EB0;
    v22 = OUTLINED_FUNCTION_5_75(&type metadata for CoreJSONObject);
    if (v22)
    {
      v23 = v22;
      sub_2705D7564();

      sub_2705D6514();
      OUTLINED_FUNCTION_12_20();
      v24 = OUTLINED_FUNCTION_7_62();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v36[0] = v24;
      sub_2705D64E4();
      OUTLINED_FUNCTION_1_91();
      sub_2705D6504();
      OUTLINED_FUNCTION_6_73(MEMORY[0x277D837D0]);
      OUTLINED_FUNCTION_1_91();
    }

    else
    {
      sub_2705D6514();
      OUTLINED_FUNCTION_12_20();
      v30 = OUTLINED_FUNCTION_8_64();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v36[0] = v30;
      sub_2705D64E4();
      sub_2703C1634(v36, &unk_2807D4890, &qword_2705E2880);
    }

    goto LABEL_12;
  }

  sub_2705A54D4(a1, v11, a3);
  v12 = sub_2705D7454();

  v38[0] = 0;
  v13 = [v7 dataWithJSONObject:v12 options:2 error:v38];

  v14 = v38[0];
  if (!v13)
  {
    v25 = v14;
    v26 = sub_2705D4364();

    swift_willThrow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
    sub_2705D6574();
    v21 = OUTLINED_FUNCTION_3_85();
    *(v21 + 16) = xmmword_2705E6EB0;
    v27 = OUTLINED_FUNCTION_5_75(&type metadata for CoreJSONObject);
    if (v27)
    {
      v28 = v27;
      sub_2705D7564();

      sub_2705D6514();
      OUTLINED_FUNCTION_12_20();
      v29 = OUTLINED_FUNCTION_7_62();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v36[0] = v29;
      sub_2705D64E4();
      OUTLINED_FUNCTION_1_91();
      sub_2705D6504();
      OUTLINED_FUNCTION_6_73(MEMORY[0x277D837D0]);
      OUTLINED_FUNCTION_1_91();
    }

    else
    {
      sub_2705D6514();
      OUTLINED_FUNCTION_12_20();
      v31 = OUTLINED_FUNCTION_8_64();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v36[0] = v31;
      sub_2705D64E4();
      sub_2703C1634(v36, &unk_2807D4890, &qword_2705E2880);
    }

LABEL_12:
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v38);
    sub_2705D6514();
    sub_2705D6504();
    v33 = sub_2705A54D4(a1, v32, a3);
    v38[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34F8, &unk_2705F27A0);
    v38[0] = v33;
    sub_2705D64F4();
    sub_2703C1634(v38, &unk_2807D4890, &qword_2705E2880);
    OUTLINED_FUNCTION_12_20();
    sub_2705D6534();
    if (qword_2807D7368 != -1)
    {
      swift_once();
    }

    v34 = sub_2705D7A74();
    sub_2705B6DB8(v34, v21);

    return 0;
  }

  v15 = sub_2705D44C4();
  v17 = v16;

  sub_2705D75A4();
  v18 = sub_2705D7584();
  if (!v19)
  {
    sub_27046DCA4(v15, v17);
    return 0;
  }

  v20 = v18;
  sub_27046DCA4(v15, v17);
  return v20;
}
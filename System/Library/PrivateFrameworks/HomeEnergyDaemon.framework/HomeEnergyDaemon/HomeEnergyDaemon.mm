uint64_t sub_22B118200(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22B118260(a1);
  }

  return result;
}

uint64_t sub_22B118260(uint64_t a1)
{
  v2 = sub_22B3605EC();
  v20 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22B36062C();
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22B3605DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22B11870C();
  v17 = sub_22B360D9C();
  v11 = swift_allocObject();
  swift_weakInit();
  (*(v9 + 16))(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  (*(v9 + 32))(v13 + v12, &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  aBlock[4] = sub_22B118AB0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B118A6C;
  aBlock[3] = &block_descriptor_10;
  v14 = _Block_copy(aBlock);

  sub_22B36060C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22B118988(&qword_281409370, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA330, &unk_22B363330);
  sub_22B118A18(&qword_281409350, &unk_27D8BA330, &unk_22B363330);
  sub_22B36104C();
  v15 = v17;
  MEMORY[0x23188E6D0](0, v7, v4, v14);
  _Block_release(v14);

  (*(v20 + 8))(v4, v2);
  return (*(v18 + 8))(v7, v19);
}

uint64_t sub_22B118610()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B118648()
{
  v1 = sub_22B3605DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

unint64_t sub_22B11870C()
{
  result = qword_2814092E0;
  if (!qword_2814092E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814092E0);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_22B170C58(a2 + 32, a1 + 32);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B118988(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22B1189D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22B118A18(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22B118A6C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_22B118AB0()
{
  v1 = *(sub_22B3605DC() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_22B118B14(v2, v3);
}

uint64_t sub_22B118B14(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B3605DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_22B360B6C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a2, v4);
  sub_22B360B1C();

  v12 = sub_22B360B0C();
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 2) = v12;
  *(v14 + 3) = v15;
  *(v14 + 4) = a1;
  (*(v5 + 32))(&v14[v13], v7, v4);
  sub_22B1240B0(0, 0, v10, &unk_22B365538, v14);
}

uint64_t sub_22B118D10()
{
  v1 = sub_22B3605DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B118DDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_destroy_helper_9(uint64_t a1)
{
}

{
  return __swift_destroy_boxed_opaque_existential_0((a1 + 32));
}

uint64_t sub_22B118F78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B124D88;

  return sub_22B119030(a1, v4);
}

uint64_t sub_22B119030(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_22B119B54;

  return v5(v2 + 32);
}

uint64_t sub_22B119124(uint64_t a1)
{
  v4 = *(sub_22B3605DC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B119A60;

  return sub_22B11921C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_22B11921C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v6 = sub_22B3605BC();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  sub_22B360B1C();
  v5[12] = sub_22B360B0C();
  v8 = sub_22B360ACC();
  v5[13] = v8;
  v5[14] = v7;

  return MEMORY[0x2822009F8](sub_22B119320, v8, v7);
}

uint64_t sub_22B119320()
{
  swift_beginAccess();
  if (swift_weakLoadStrong() && (Strong = swift_unknownObjectWeakLoadStrong(), *(v0 + 120) = Strong, , Strong))
  {
    v3 = *(v0 + 80);
    v2 = *(v0 + 88);
    v4 = *(v0 + 64);
    v5 = *(v0 + 72);
    sub_22B3605CC();
    (*(v5 + 104))(v3, *MEMORY[0x277CD8F78], v4);
    v6 = sub_22B3605AC();
    v7 = *(v5 + 8);
    v7(v3, v4);
    v7(v2, v4);
    v8 = swift_task_alloc();
    *(v0 + 128) = v8;
    *v8 = v0;
    v8[1] = sub_22B11991C;

    return sub_22B1194F0((v6 & 1) == 0);
  }

  else
  {

    **(v0 + 40) = 1;

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_22B1194F0(char a1)
{
  *(v2 + 40) = v1;
  *(v2 + 72) = a1;
  v3 = sub_22B36052C();
  *(v2 + 48) = v3;
  *(v2 + 56) = *(v3 - 8);
  *(v2 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1195B4, v1, 0);
}

uint64_t sub_22B1195B4()
{
  v27 = v0;
  v1 = *(v0 + 40);
  if (*(v0 + 72))
  {
    v2 = 0x656E696C66666FLL;
  }

  else
  {
    v2 = 0x6C62616863616572;
  }

  if (*(v0 + 72))
  {
    v3 = 0xE700000000000000;
  }

  else
  {
    v3 = 0xE900000000000065;
  }

  if (*(v1 + 120))
  {
    v4 = 0x656E696C66666FLL;
  }

  else
  {
    v4 = 0x6C62616863616572;
  }

  if (*(v1 + 120))
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE900000000000065;
  }

  if (v2 == v4 && v3 == v5)
  {

    goto LABEL_29;
  }

  v7 = sub_22B36134C();

  if (v7)
  {
    goto LABEL_29;
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 56);
  v8 = *(v0 + 64);
  v10 = *(v0 + 48);
  v11 = __swift_project_value_buffer(v10, qword_28140BD10);
  swift_beginAccess();
  (*(v9 + 16))(v8, v11, v10);
  v12 = sub_22B36050C();
  v13 = sub_22B360D2C();
  v14 = os_log_type_enabled(v12, v13);
  v16 = *(v0 + 56);
  v15 = *(v0 + 64);
  v25 = *(v0 + 48);
  if (v14)
  {
    v17 = swift_slowAlloc();
    v24 = v15;
    v18 = swift_slowAlloc();
    v26 = v18;
    *v17 = 136446210;
    v19 = sub_22B1A7B20(v2, v3, &v26);

    *(v17 + 4) = v19;
    _os_log_impl(&dword_22B116000, v12, v13, "Network status changed to %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x23188F650](v18, -1, -1);
    MEMORY[0x23188F650](v17, -1, -1);

    (*(v16 + 8))(v24, v25);
  }

  else
  {

    (*(v16 + 8))(v15, v25);
  }

  v20 = *(v0 + 72);
  *(v1 + 120) = v20 & 1;
  if ((v20 & 1) == 0)
  {

    goto LABEL_28;
  }

  v21 = sub_22B36134C();

  if (v21)
  {
LABEL_28:
    sub_22B256534();
  }

LABEL_29:

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_22B1198A4()
{

  **(v0 + 40) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B11991C()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_22B1198A4, v3, v2);
}

uint64_t sub_22B119A60()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B119B54()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

BOOL sub_22B119C98(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_22B119D10@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_22B119DE8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B119E20()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B119E78()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B119EC0()
{
  v1 = sub_22B35DF1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B119F9C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B119FDC()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_22B11A02C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_22B11A044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA970, &unk_22B363560);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_22B35DE9C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_22B11A174(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA970, &unk_22B363560);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_22B35DE9C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22B11A2A8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B11A2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22B35DE9C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22B11A394(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22B35DE9C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B11A438()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B11A470()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA288, &unk_22B363A10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B11A504()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_22B11A564()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22B11A5C0()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22B11A610()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B11A648()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B11A694()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B11A76C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B11A7DC()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22B11A844()
{
  _Block_release(*(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22B11A88C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B11A8CC()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_22B11A904()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_22B11A954()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B11A98C()
{
  v1 = sub_22B35DF1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_22B11AA70()
{
  _Block_release(*(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22B11AAD0()
{
  _Block_release(*(v0 + 96));

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_22B11AB38()
{
  _Block_release(*(v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_22B11ABBC()
{
  _Block_release(*(v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_22B11AC34()
{
  _Block_release(*(v0 + 112));

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_22B11ACD4()
{
  _Block_release(*(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22B11AD40()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B11B064()
{
  v1 = sub_22B35DF1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_22B35DE9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (((*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_22B11B230()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3E8, &unk_22B364790) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_22B35D8BC();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 65, v2 | 7);
}

uint64_t sub_22B11B388()
{

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t sub_22B11B3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22B11B4A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B11B56C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B11B5AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B11B5E4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B11B638()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA408, &unk_22B3648E8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for SessionKey(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = v3 | v7;
  v10 = *(*v6 + 64) + v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v11 = sub_22B35DF1C();
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v8, v11);
  v12(v0 + v8 + v6[7], v11);

  v12(v0 + v8 + v6[11], v11);

  return MEMORY[0x2821FE8E8](v0, v10 + 1, v9 | 7);
}

uint64_t sub_22B11B81C()
{
  v1 = (type metadata accessor for SessionKey(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = v3 + *(*v1 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6) & ~v6;
  v8 = *(v5 + 64);

  v9 = v0 + v3;
  v10 = sub_22B35DF1C();
  v11 = *(*(v10 - 8) + 8);
  v11(v9, v10);
  v11(v9 + v1[7], v10);

  v11(v9 + v1[11], v10);
  v12 = sub_22B35DE9C();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v7, 1, v12))
  {
    (*(v13 + 8))(v0 + v7, v12);
  }

  return MEMORY[0x2821FE8E8](v0, ((((v8 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | v6 | 7);
}

uint64_t sub_22B11BA80()
{
  v1 = sub_22B35DF1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_22B35DE9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_22B11BC1C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B11BC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22B35DE9C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22B35DF1C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_22B11BD6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22B35DE9C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22B35DF1C();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22B11BE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22B35DF1C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22B11BF38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22B35DF1C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22B11BFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22B35DF1C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_22B35DE9C();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_22B11C11C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22B35DF1C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_22B35DE9C();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22B11C260()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_22B11C298()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22B11C2E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_22B11C3C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 2;
  }

  return result;
}

uint64_t sub_22B11C488()
{
  v1 = sub_22B35DF1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22B11C534()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B11C56C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B11C644()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B11C69C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B11C6DC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B11C724()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B11C764()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B11C7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22B35DE9C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_22B11C870(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22B35DE9C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22B11C930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22B35DE9C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_22B11CA60(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_22B35DE9C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22B11CBCC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B11CC1C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B11CC74()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B11CCB4()
{
  v1 = sub_22B35DE9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 42) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22B11CDE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22B35DE9C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22B11CE8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22B35DE9C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B11CF40()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B11CF90()
{
  v1 = sub_22B35DE9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22B11D034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22B35DE9C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22B11D0E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22B35DE9C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B11D184()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_22B11D1C0()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_22B11D21C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_22B11D27C()
{
  v1 = sub_22B35DE9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 152) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_22B11D420()
{
  v1 = sub_22B35DE9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 136) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_22B11D5BC()
{
  MEMORY[0x23188F730](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B11D5F8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22B11D648()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B11D688()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B11D720()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B11D768()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_22B11D7D0()
{
  v1 = sub_22B35DE9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 90) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B11D8B8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B11D900()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B11D940()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B11D97C()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_22B11D9B4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B11DA04()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B11DA40()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B11DA8C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B11DAE4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD60, &unk_22B366F18);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B11DBE4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_22B35DE9C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_22B35FEFC();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v13 = sub_22B35FF1C();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v15 = sub_22B35FEDC();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[10];

  return v16(v17, a2, v15);
}

uint64_t sub_22B11DD98(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_22B35DE9C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_22B35FEFC();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v13 = sub_22B35FF1C();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v15 = sub_22B35FEDC();
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_22B11DF64()
{
  v1 = sub_22B35DF1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_22B35DE9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (((*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_22B11E21C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B11E254()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B11E290()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B11E2D8()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22B11E330()
{
  v1 = sub_22B35DE9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 168) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  sub_22B12F174(*(v0 + 88), *(v0 + 96));
  sub_22B12F174(*(v0 + 104), *(v0 + 112));

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22B11E458()
{
  v1 = sub_22B35DE9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  sub_22B12F174(*(v0 + v5), *(v0 + v5 + 8));
  sub_22B12F174(*(v0 + v6), *(v0 + v6 + 8));

  return MEMORY[0x2821FE8E8](v0, ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_22B11E570()
{
  v1 = sub_22B35DE9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 160) & ~v3;
  v5 = *(v2 + 64);

  sub_22B12F174(*(v0 + 80), *(v0 + 88));
  sub_22B12F174(*(v0 + 96), *(v0 + 104));

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B11E67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22B35DE9C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22B11E728(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22B35DE9C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B11E7F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B11E8E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B11E9EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB078, &qword_22B3677B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22B11EAA8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B11EAE8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B11EB28()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B11EB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22B35DF1C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_22B35DE9C();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 48);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_22B11EC98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22B35DF1C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_22B35DE9C();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 48);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22B11EDC0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22B12F174(result, a2);
  }

  return result;
}

void sub_22B11EE8C()
{
  type metadata accessor for HistoricalUsageEnergyManager();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = sub_22B36081C();
  v3 = [v1 initWithSuiteName_];

  *(v0 + 112) = v3;
  qword_27D8BB198 = v0;
}

uint64_t sub_22B11EF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 240) = v16;
  *(v9 + 248) = v8;
  *(v9 + 232) = v15;
  *(v9 + 216) = v14;
  *(v9 + 200) = a7;
  *(v9 + 208) = a8;
  *(v9 + 184) = a5;
  *(v9 + 192) = a6;
  *(v9 + 168) = a3;
  *(v9 + 176) = a4;
  *(v9 + 152) = a1;
  *(v9 + 160) = a2;
  *(v9 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA078, &unk_22B362BB0);
  *(v9 + 264) = swift_task_alloc();
  *(v9 + 272) = swift_task_alloc();
  *(v9 + 280) = swift_task_alloc();
  *(v9 + 288) = swift_task_alloc();
  *(v9 + 296) = swift_task_alloc();
  *(v9 + 304) = swift_task_alloc();
  *(v9 + 312) = swift_task_alloc();
  *(v9 + 320) = swift_task_alloc();
  *(v9 + 328) = swift_task_alloc();
  *(v9 + 336) = swift_task_alloc();
  *(v9 + 344) = swift_task_alloc();
  *(v9 + 352) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280);
  *(v9 + 360) = swift_task_alloc();
  v10 = sub_22B36052C();
  *(v9 + 368) = v10;
  *(v9 + 376) = *(v10 - 8);
  *(v9 + 384) = swift_task_alloc();
  *(v9 + 392) = swift_task_alloc();
  *(v9 + 400) = swift_task_alloc();
  *(v9 + 408) = swift_task_alloc();
  *(v9 + 416) = swift_task_alloc();
  *(v9 + 424) = swift_task_alloc();
  *(v9 + 432) = swift_task_alloc();
  *(v9 + 440) = swift_task_alloc();
  *(v9 + 448) = swift_task_alloc();
  *(v9 + 456) = swift_task_alloc();
  *(v9 + 464) = swift_task_alloc();
  *(v9 + 472) = swift_task_alloc();
  *(v9 + 480) = swift_task_alloc();
  v11 = sub_22B35FC0C();
  *(v9 + 488) = v11;
  *(v9 + 496) = *(v11 - 8);
  *(v9 + 504) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B11F1E8, v8, 0);
}

uint64_t sub_22B11F1E8()
{
  v44 = v0;
  v1 = v0[30];
  if (!v1)
  {
    goto LABEL_15;
  }

  v2 = v0[29] & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (v2 && (v4 = v0[62], v3 = v0[63], v5 = v0[61], (*(v4 + 104))(v3, *MEMORY[0x277D074A8], v5), sub_22B1233D4(&unk_27D8BA090, MEMORY[0x277D074B8], MEMORY[0x277D074C0]), sub_22B360A1C(), sub_22B360A1C(), (*(v4 + 8))(v3, v5), v0[16] == v0[17]))
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v6 = v0[60];
    v7 = v0[46];
    v8 = v0[47];
    v9 = __swift_project_value_buffer(v7, qword_28140BD10);
    v0[64] = v9;
    swift_beginAccess();
    v10 = *(v8 + 16);
    v0[65] = v10;
    v0[66] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v6, v9, v7);

    v11 = sub_22B36050C();
    v12 = sub_22B360D2C();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[60];
    v15 = v0[46];
    v16 = v0[47];
    if (v13)
    {
      v17 = v0[29];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v43 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_22B1A7B20(v17, v1, &v43);
      _os_log_impl(&dword_22B116000, v11, v12, "Asked to filter generation meters for %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x23188F650](v19, -1, -1);
      MEMORY[0x23188F650](v18, -1, -1);
    }

    v20 = *(v16 + 8);
    v20(v14, v15);
    v0[67] = v20;
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v21 = swift_task_alloc();
    v0[68] = v21;
    *v21 = v0;
    v21[1] = sub_22B11FA14;
    v22 = v0[29];

    return sub_22B22250C(v22, v1, 0, 1);
  }

  else
  {
LABEL_15:
    v0[70] = 0;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v24 = v0[56];
    v25 = v0[46];
    v26 = v0[47];
    v27 = __swift_project_value_buffer(v25, qword_28140BD10);
    v0[71] = v27;
    swift_beginAccess();
    v28 = *(v26 + 16);
    v0[72] = v28;
    v0[73] = (v26 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v28(v24, v27, v25);

    v29 = sub_22B36050C();
    v30 = sub_22B360CFC();

    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[56];
    v33 = v0[46];
    v34 = v0[47];
    if (v31)
    {
      v36 = v0[19];
      v35 = v0[20];
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v43 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_22B1A7B20(v36, v35, &v43);
      _os_log_impl(&dword_22B116000, v29, v30, "Fetching interval readings for %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x23188F650](v38, -1, -1);
      MEMORY[0x23188F650](v37, -1, -1);
    }

    v39 = *(v34 + 8);
    v39(v32, v33);
    v0[74] = v39;
    if (v0[19] == 7954788 && v0[20] == 0xE300000000000000 || (sub_22B36134C() & 1) != 0)
    {
      if (qword_2814099B0 != -1)
      {
        swift_once();
      }

      v40 = qword_28140BCF8;
      v0[75] = qword_28140BCF8;
      v0[76] = sub_22B35FBFC();
      v41 = sub_22B120494;
    }

    else
    {
      v42 = v0[20];
      if (v0[19] == 1801807223 && v42 == 0xE400000000000000 || (sub_22B36134C() & 1) != 0)
      {
        if (qword_2814099B0 != -1)
        {
          swift_once();
        }

        v40 = qword_28140BCF8;
        v0[77] = qword_28140BCF8;
        v0[78] = sub_22B35FBFC();
        v41 = sub_22B120C0C;
      }

      else if (v0[19] == 0x68746E6F6DLL && v0[20] == 0xE500000000000000 || (sub_22B36134C() & 1) != 0)
      {
        if (qword_2814099B0 != -1)
        {
          swift_once();
        }

        v40 = qword_28140BCF8;
        v0[79] = qword_28140BCF8;
        v0[80] = sub_22B35FBFC();
        v41 = sub_22B120DEC;
      }

      else if (v0[19] == 0x68746E6F4D786973 && v0[20] == 0xE900000000000073 || (sub_22B36134C() & 1) != 0)
      {
        if (qword_2814099B0 != -1)
        {
          swift_once();
        }

        v40 = qword_28140BCF8;
        v0[81] = qword_28140BCF8;
        v0[82] = sub_22B35FBFC();
        v41 = sub_22B120FCC;
      }

      else if (v0[19] == 1918985593 && v42 == 0xE400000000000000 || (sub_22B36134C() & 1) != 0)
      {
        if (qword_2814099B0 != -1)
        {
          swift_once();
        }

        v40 = qword_28140BCF8;
        v0[83] = qword_28140BCF8;
        v0[84] = sub_22B35FBFC();
        v41 = sub_22B1216B0;
      }

      else
      {
        if (qword_2814099B0 != -1)
        {
          swift_once();
        }

        v40 = qword_28140BCF8;
        v0[85] = qword_28140BCF8;
        v0[86] = sub_22B35FBFC();
        v41 = sub_22B121D94;
      }
    }

    return MEMORY[0x2822009F8](v41, v40, 0);
  }
}

uint64_t sub_22B11FA14(uint64_t a1)
{
  v2 = *(*v1 + 248);
  *(*v1 + 552) = a1;

  return MEMORY[0x2822009F8](sub_22B11FB2C, v2, 0);
}

uint64_t sub_22B11FB2C()
{
  v58 = v0;
  v1 = *(v0 + 552);
  if (!v1)
  {
    goto LABEL_23;
  }

  v2 = sub_22B35F18C();
  if (v2)
  {
    v3 = v2;
    if (*(v2 + 16))
    {
      (*(v0 + 520))(*(v0 + 472), *(v0 + 512), *(v0 + 368));

      v4 = sub_22B36050C();
      v5 = sub_22B360D2C();

      v6 = os_log_type_enabled(v4, v5);
      v7 = *(v0 + 536);
      v8 = *(v0 + 472);
      v9 = *(v0 + 368);
      if (v6)
      {
        v55 = *(v0 + 472);
        v10 = swift_slowAlloc();
        v54 = v9;
        v11 = swift_slowAlloc();
        *&v56 = v11;
        *v10 = 136315138;
        v12 = MEMORY[0x23188E390](v3, MEMORY[0x277D837D0]);
        v53 = v7;
        v14 = sub_22B1A7B20(v12, v13, &v56);

        *(v10 + 4) = v14;
        v15 = "Site has generation meters: %s";
LABEL_18:
        _os_log_impl(&dword_22B116000, v4, v5, v15, v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v11);
        MEMORY[0x23188F650](v11, -1, -1);
        MEMORY[0x23188F650](v10, -1, -1);

        v53(v55, v54);
        goto LABEL_24;
      }

LABEL_19:

      v7(v8, v9);
      goto LABEL_24;
    }
  }

  (*(v0 + 520))(*(v0 + 464), *(v0 + 512), *(v0 + 368));
  v16 = sub_22B36050C();
  v17 = sub_22B360D1C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_22B116000, v16, v17, "Site doesnt have saved generation meters. Check defaults", v18, 2u);
    MEMORY[0x23188F650](v18, -1, -1);
  }

  v19 = *(v0 + 536);
  v20 = *(v0 + 464);
  v21 = *(v0 + 368);
  v22 = *(v0 + 248);

  v19(v20, v21);
  v23 = *(v22 + 112);
  if (!v23)
  {

    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
LABEL_21:
    sub_22B123284(v0 + 16, &unk_27D8BA950, &qword_22B364940);
    goto LABEL_23;
  }

  v24 = *(v0 + 232);
  v25 = *(v0 + 240);
  *&v56 = 0x6953796772656E65;
  *(&v56 + 1) = 0xEB000000002D6574;
  MEMORY[0x23188E270](v24, v25);

  MEMORY[0x23188E270](5064493, 0xE300000000000000);

  v26 = sub_22B36081C();

  v27 = [v23 valueForKey_];

  if (v27)
  {
    sub_22B36102C();
    swift_unknownObjectRelease();
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
  }

  v28 = v57;
  *(v0 + 16) = v56;
  *(v0 + 32) = v28;
  if (!*(v0 + 40))
  {

    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 144);
    (*(v0 + 520))(*(v0 + 456), *(v0 + 512), *(v0 + 368));

    v4 = sub_22B36050C();
    v5 = sub_22B360D2C();

    v29 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 536);
    v8 = *(v0 + 456);
    v9 = *(v0 + 368);
    if (v29)
    {
      v55 = *(v0 + 456);
      v10 = swift_slowAlloc();
      v54 = v9;
      v11 = swift_slowAlloc();
      *&v56 = v11;
      *v10 = 136315138;
      v30 = MEMORY[0x23188E390](v3, MEMORY[0x277D837D0]);
      v53 = v7;
      v32 = sub_22B1A7B20(v30, v31, &v56);

      *(v10 + 4) = v32;
      v15 = "Defaults has generation meters %s";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

LABEL_23:
  v3 = 0;
LABEL_24:
  *(v0 + 560) = v3;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v33 = *(v0 + 448);
  v34 = *(v0 + 368);
  v35 = *(v0 + 376);
  v36 = __swift_project_value_buffer(v34, qword_28140BD10);
  *(v0 + 568) = v36;
  swift_beginAccess();
  v37 = *(v35 + 16);
  *(v0 + 576) = v37;
  *(v0 + 584) = (v35 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v37(v33, v36, v34);

  v38 = sub_22B36050C();
  v39 = sub_22B360CFC();

  v40 = os_log_type_enabled(v38, v39);
  v41 = *(v0 + 448);
  v42 = *(v0 + 368);
  v43 = *(v0 + 376);
  if (v40)
  {
    v45 = *(v0 + 152);
    v44 = *(v0 + 160);
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *&v56 = v47;
    *v46 = 136315138;
    *(v46 + 4) = sub_22B1A7B20(v45, v44, &v56);
    _os_log_impl(&dword_22B116000, v38, v39, "Fetching interval readings for %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x23188F650](v47, -1, -1);
    MEMORY[0x23188F650](v46, -1, -1);
  }

  v48 = *(v43 + 8);
  v48(v41, v42);
  *(v0 + 592) = v48;
  if (*(v0 + 152) == 7954788 && *(v0 + 160) == 0xE300000000000000 || (sub_22B36134C() & 1) != 0)
  {
    if (qword_2814099B0 != -1)
    {
      swift_once();
    }

    v49 = qword_28140BCF8;
    *(v0 + 600) = qword_28140BCF8;
    *(v0 + 608) = sub_22B35FBFC();
    v50 = sub_22B120494;
  }

  else
  {
    v51 = *(v0 + 160);
    if (*(v0 + 152) == 1801807223 && v51 == 0xE400000000000000 || (sub_22B36134C() & 1) != 0)
    {
      if (qword_2814099B0 != -1)
      {
        swift_once();
      }

      v49 = qword_28140BCF8;
      *(v0 + 616) = qword_28140BCF8;
      *(v0 + 624) = sub_22B35FBFC();
      v50 = sub_22B120C0C;
    }

    else if (*(v0 + 152) == 0x68746E6F6DLL && *(v0 + 160) == 0xE500000000000000 || (sub_22B36134C() & 1) != 0)
    {
      if (qword_2814099B0 != -1)
      {
        swift_once();
      }

      v49 = qword_28140BCF8;
      *(v0 + 632) = qword_28140BCF8;
      *(v0 + 640) = sub_22B35FBFC();
      v50 = sub_22B120DEC;
    }

    else if (*(v0 + 152) == 0x68746E6F4D786973 && *(v0 + 160) == 0xE900000000000073 || (sub_22B36134C() & 1) != 0)
    {
      if (qword_2814099B0 != -1)
      {
        swift_once();
      }

      v49 = qword_28140BCF8;
      *(v0 + 648) = qword_28140BCF8;
      *(v0 + 656) = sub_22B35FBFC();
      v50 = sub_22B120FCC;
    }

    else if (*(v0 + 152) == 1918985593 && v51 == 0xE400000000000000 || (sub_22B36134C() & 1) != 0)
    {
      if (qword_2814099B0 != -1)
      {
        swift_once();
      }

      v49 = qword_28140BCF8;
      *(v0 + 664) = qword_28140BCF8;
      *(v0 + 672) = sub_22B35FBFC();
      v50 = sub_22B1216B0;
    }

    else
    {
      if (qword_2814099B0 != -1)
      {
        swift_once();
      }

      v49 = qword_28140BCF8;
      *(v0 + 680) = qword_28140BCF8;
      *(v0 + 688) = sub_22B35FBFC();
      v50 = sub_22B121D94;
    }
  }

  return MEMORY[0x2822009F8](v50, v49, 0);
}

uint64_t sub_22B120494()
{
  v1 = *(v0 + 360);
  sub_22B35E07C();
  v2 = sub_22B35E0BC();
  v48 = *(v2 - 8);
  v49 = v2;
  result = (*(v48 + 48))(v1, 1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v45 = *(v0 + 576);
    v43 = *(v0 + 568);
    v4 = *(v0 + 440);
    v5 = *(v0 + 368);
    v6 = *(v0 + 352);
    v7 = *(v0 + 256);
    v9 = *(v0 + 168);
    v8 = *(v0 + 176);
    v10 = sub_22B35DE9C();
    v42 = *(v10 - 8);
    v11 = *(v42 + 16);
    v11(v6, v9, v10);
    v40 = v11;
    v11(v6 + *(v7 + 48), v8, v10);
    v45(v4, v43, v5);
    v12 = sub_22B36050C();
    v13 = sub_22B360D2C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_22B116000, v12, v13, "Get interval readings", v14, 2u);
      MEMORY[0x23188F650](v14, -1, -1);
    }

    v15 = *(v0 + 600);
    v16 = *(v0 + 592);
    v17 = *(v0 + 440);
    v18 = *(v0 + 368);

    v16(v17, v18);
    v19 = *(v15 + 112);
    if (v19 && (v20 = v10, (v21 = *(*(v0 + 600) + 128)) != 0))
    {
      v34 = *(v15 + 120);
      v37 = *(v0 + 608);
      v38 = *(v0 + 560);
      v39 = *(v0 + 360);
      v22 = *(v0 + 336);
      v23 = *(v0 + 344);
      v35 = *(v0 + 184);
      v36 = *(v0 + 200);
      sub_22B123130(*(v0 + 352), v23);
      v24 = *(v7 + 48);
      v40(v22, v23, v20);
      v44 = v24;
      v46 = v23;
      v41 = v20;
      v40(v22 + *(v7 + 48), v23 + v24, v20);
      sub_22B1231A0(v19, v34);
      v25 = v21;
      v26 = MEMORY[0x23188EEB0]();
      *(v0 + 120) = MEMORY[0x277D84F98];
      v27 = swift_task_alloc();
      *(v27 + 16) = v25;
      *(v27 + 24) = v35;
      *(v27 + 40) = v36;
      *(v27 + 56) = v37;
      *(v27 + 64) = v22;
      *(v27 + 72) = v38;
      *(v27 + 80) = 0;
      *(v27 + 88) = v39;
      *(v27 + 96) = v0 + 120;
      sub_22B360E7C();
      v30 = *(v0 + 344);
      v29 = *(v0 + 352);
      v31 = *(v0 + 336);

      v47 = *(v0 + 120);
      objc_autoreleasePoolPop(v26);

      sub_22B123284(v29, &qword_27D8BA078, &unk_22B362BB0);
      sub_22B123284(v31, &qword_27D8BA078, &unk_22B362BB0);
      v32 = *(v42 + 8);
      v32(v46 + v44, v41);
      v32(v30, v41);
    }

    else
    {
      v28 = *(v0 + 352);

      sub_22B123284(v28, &qword_27D8BA078, &unk_22B362BB0);
      v47 = 0;
    }

    (*(v48 + 8))(*(v0 + 360), v49);

    v33 = *(v0 + 8);

    return v33(v47);
  }

  return result;
}

uint64_t sub_22B120C0C()
{
  v3 = sub_22B221448(*(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 168), *(v0 + 176), *(v0 + 216), *(v0 + 624), *(v0 + 560));

  v1 = *(v0 + 8);

  return v1(v3);
}

uint64_t sub_22B120DEC()
{
  v3 = sub_22B221448(*(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 168), *(v0 + 176), *(v0 + 216), *(v0 + 640), *(v0 + 560));

  v1 = *(v0 + 8);

  return v1(v3);
}

uint64_t sub_22B120FCC()
{
  v46 = *(v0 + 576);
  v45 = *(v0 + 568);
  v1 = *(v0 + 424);
  v2 = *(v0 + 368);
  v3 = *(v0 + 328);
  v4 = *(v0 + 256);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = sub_22B35DE9C();
  v44 = *(v7 - 8);
  v8 = *(v44 + 16);
  v8(v3, v5, v7);
  v42 = v4;
  v40 = v8;
  v8(v3 + *(v4 + 48), v6, v7);
  v46(v1, v45, v2);
  v9 = sub_22B36050C();
  v10 = sub_22B360D2C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_22B116000, v9, v10, "Get interval readings", v11, 2u);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  v12 = *(v0 + 648);
  v13 = *(v0 + 592);
  v14 = *(v0 + 424);
  v15 = *(v0 + 368);

  v13(v14, v15);
  v16 = *(v12 + 112);
  if (v16 && (v17 = v7, (v18 = *(*(v0 + 648) + 128)) != 0))
  {
    v34 = *(v12 + 120);
    v38 = *(v0 + 656);
    v39 = *(v0 + 560);
    v19 = *(v0 + 320);
    v20 = *(v0 + 312);
    v37 = *(v0 + 216);
    v35 = *(v0 + 184);
    v36 = *(v0 + 200);
    sub_22B123130(*(v0 + 328), v19);
    v21 = *(v42 + 48);
    v40(v20, v19, v17);
    v22 = *(v42 + 48);
    v23 = v16;
    v24 = v20;
    v47 = v19;
    v43 = v21;
    v40(v20 + v22, v19 + v21, v17);
    sub_22B1231A0(v23, v34);
    v25 = v18;
    v26 = MEMORY[0x23188EEB0]();
    *(v0 + 112) = MEMORY[0x277D84F98];
    v27 = swift_task_alloc();
    *(v27 + 16) = v25;
    *(v27 + 24) = v35;
    *(v27 + 40) = v36;
    *(v27 + 56) = v38;
    *(v27 + 64) = v24;
    *(v27 + 72) = v39;
    *(v27 + 80) = 2;
    *(v27 + 88) = v37;
    *(v27 + 96) = v0 + 112;
    sub_22B360E7C();
    v29 = *(v0 + 328);
    v41 = *(v0 + 320);
    v30 = *(v0 + 312);

    v48 = *(v0 + 112);
    objc_autoreleasePoolPop(v26);

    sub_22B123284(v29, &qword_27D8BA078, &unk_22B362BB0);
    sub_22B123284(v30, &qword_27D8BA078, &unk_22B362BB0);
    v31 = *(v44 + 8);
    v31(v47 + v43, v17);
    v31(v41, v17);
  }

  else
  {
    v28 = *(v0 + 328);

    sub_22B123284(v28, &qword_27D8BA078, &unk_22B362BB0);
    v48 = 0;
  }

  v32 = *(v0 + 8);

  return v32(v48);
}

uint64_t sub_22B1216B0()
{
  v46 = *(v0 + 576);
  v45 = *(v0 + 568);
  v1 = *(v0 + 408);
  v2 = *(v0 + 368);
  v3 = *(v0 + 304);
  v4 = *(v0 + 256);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = sub_22B35DE9C();
  v44 = *(v7 - 8);
  v8 = *(v44 + 16);
  v8(v3, v5, v7);
  v42 = v4;
  v40 = v8;
  v8(v3 + *(v4 + 48), v6, v7);
  v46(v1, v45, v2);
  v9 = sub_22B36050C();
  v10 = sub_22B360D2C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_22B116000, v9, v10, "Get interval readings", v11, 2u);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  v12 = *(v0 + 664);
  v13 = *(v0 + 592);
  v14 = *(v0 + 408);
  v15 = *(v0 + 368);

  v13(v14, v15);
  v16 = *(v12 + 112);
  if (v16 && (v17 = v7, (v18 = *(*(v0 + 664) + 128)) != 0))
  {
    v34 = *(v12 + 120);
    v38 = *(v0 + 672);
    v39 = *(v0 + 560);
    v19 = *(v0 + 296);
    v20 = *(v0 + 288);
    v37 = *(v0 + 216);
    v35 = *(v0 + 184);
    v36 = *(v0 + 200);
    sub_22B123130(*(v0 + 304), v19);
    v21 = *(v42 + 48);
    v40(v20, v19, v17);
    v22 = *(v42 + 48);
    v23 = v16;
    v24 = v20;
    v47 = v19;
    v43 = v21;
    v40(v20 + v22, v19 + v21, v17);
    sub_22B1231A0(v23, v34);
    v25 = v18;
    v26 = MEMORY[0x23188EEB0]();
    *(v0 + 104) = MEMORY[0x277D84F98];
    v27 = swift_task_alloc();
    *(v27 + 16) = v25;
    *(v27 + 24) = v35;
    *(v27 + 40) = v36;
    *(v27 + 56) = v38;
    *(v27 + 64) = v24;
    *(v27 + 72) = v39;
    *(v27 + 80) = 3;
    *(v27 + 88) = v37;
    *(v27 + 96) = v0 + 104;
    sub_22B360E7C();
    v29 = *(v0 + 304);
    v41 = *(v0 + 296);
    v30 = *(v0 + 288);

    v48 = *(v0 + 104);
    objc_autoreleasePoolPop(v26);

    sub_22B123284(v29, &qword_27D8BA078, &unk_22B362BB0);
    sub_22B123284(v30, &qword_27D8BA078, &unk_22B362BB0);
    v31 = *(v44 + 8);
    v31(v47 + v43, v17);
    v31(v41, v17);
  }

  else
  {
    v28 = *(v0 + 304);

    sub_22B123284(v28, &qword_27D8BA078, &unk_22B362BB0);
    v48 = 0;
  }

  v32 = *(v0 + 8);

  return v32(v48);
}

uint64_t sub_22B121D94()
{
  v46 = *(v0 + 576);
  v45 = *(v0 + 568);
  v1 = *(v0 + 392);
  v2 = *(v0 + 368);
  v3 = *(v0 + 280);
  v4 = *(v0 + 256);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = sub_22B35DE9C();
  v44 = *(v7 - 8);
  v8 = *(v44 + 16);
  v8(v3, v5, v7);
  v42 = v4;
  v40 = v8;
  v8(v3 + *(v4 + 48), v6, v7);
  v46(v1, v45, v2);
  v9 = sub_22B36050C();
  v10 = sub_22B360D2C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_22B116000, v9, v10, "Get interval readings", v11, 2u);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  v12 = *(v0 + 680);
  v13 = *(v0 + 592);
  v14 = *(v0 + 392);
  v15 = *(v0 + 368);

  v13(v14, v15);
  v16 = *(v12 + 112);
  if (v16 && (v17 = v7, (v18 = *(*(v0 + 680) + 128)) != 0))
  {
    v34 = *(v12 + 120);
    v38 = *(v0 + 688);
    v39 = *(v0 + 560);
    v19 = *(v0 + 272);
    v20 = *(v0 + 264);
    v37 = *(v0 + 216);
    v35 = *(v0 + 184);
    v36 = *(v0 + 200);
    sub_22B123130(*(v0 + 280), v19);
    v21 = *(v42 + 48);
    v40(v20, v19, v17);
    v22 = *(v42 + 48);
    v23 = v16;
    v24 = v20;
    v47 = v19;
    v43 = v21;
    v40(v20 + v22, v19 + v21, v17);
    sub_22B1231A0(v23, v34);
    v25 = v18;
    v26 = MEMORY[0x23188EEB0]();
    *(v0 + 96) = MEMORY[0x277D84F98];
    v27 = swift_task_alloc();
    *(v27 + 16) = v25;
    *(v27 + 24) = v35;
    *(v27 + 40) = v36;
    *(v27 + 56) = v38;
    *(v27 + 64) = v24;
    *(v27 + 72) = v39;
    *(v27 + 80) = 3;
    *(v27 + 88) = v37;
    *(v27 + 96) = v0 + 96;
    sub_22B360E7C();
    v29 = *(v0 + 280);
    v41 = *(v0 + 272);
    v30 = *(v0 + 264);

    v48 = *(v0 + 96);
    objc_autoreleasePoolPop(v26);

    sub_22B123284(v29, &qword_27D8BA078, &unk_22B362BB0);
    sub_22B123284(v30, &qword_27D8BA078, &unk_22B362BB0);
    v31 = *(v44 + 8);
    v31(v47 + v43, v17);
    v31(v41, v17);
  }

  else
  {
    v28 = *(v0 + 280);

    sub_22B123284(v28, &qword_27D8BA078, &unk_22B362BB0);
    v48 = 0;
  }

  v32 = *(v0 + 8);

  return v32(v48);
}

uint64_t sub_22B122478()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22B1224E0(uint64_t a1)
{
  v2 = sub_22B1233D4(&qword_281408628, type metadata accessor for CKError, &unk_22B362F50);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22B12254C(uint64_t a1)
{
  v2 = sub_22B1233D4(&qword_281408628, type metadata accessor for CKError, &unk_22B362F50);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22B1225B8(uint64_t a1)
{
  v2 = sub_22B1233D4(&qword_281408620, type metadata accessor for CKError, &unk_22B362F94);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_22B122624()
{
  v0 = sub_22B36084C();
  v1 = MEMORY[0x23188E2F0](v0);

  return v1;
}

uint64_t sub_22B122660(uint64_t a1)
{
  sub_22B36084C();
  sub_22B3608FC();
}

uint64_t sub_22B1226B4(uint64_t a1)
{
  sub_22B36084C();
  sub_22B36149C();
  sub_22B3608FC();
  v1 = sub_22B3614DC();

  return v1;
}

uint64_t sub_22B122728(uint64_t a1, id *a2)
{
  result = sub_22B36082C();
  *a2 = 0;
  return result;
}

uint64_t sub_22B1227A0(uint64_t a1, id *a2)
{
  v3 = sub_22B36083C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_22B122820@<X0>(uint64_t *a2@<X8>)
{
  sub_22B36084C();
  v3 = sub_22B36081C();

  *a2 = v3;
  return result;
}

uint64_t sub_22B122874(uint64_t a1)
{
  v2 = sub_22B1233D4(&qword_281408620, type metadata accessor for CKError, &unk_22B362F94);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_22B1228E0(uint64_t a1)
{
  v2 = sub_22B1233D4(&qword_281408620, type metadata accessor for CKError, &unk_22B362F94);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_22B12294C(void *a1, uint64_t a2)
{
  v4 = sub_22B1233D4(&qword_281408620, type metadata accessor for CKError, &unk_22B362F94);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_22B1229DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B1233D4(&qword_281408620, type metadata accessor for CKError, &unk_22B362F94);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_22B122A68(uint64_t a1)
{
  v2 = sub_22B1233D4(&qword_27D8BA0E8, type metadata accessor for BGSystemTaskSchedulerError, &unk_22B363120);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_22B122AD4(uint64_t a1)
{
  v2 = sub_22B1233D4(&qword_27D8BA0E8, type metadata accessor for BGSystemTaskSchedulerError, &unk_22B363120);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_22B122B40(void *a1, uint64_t a2)
{
  v4 = sub_22B1233D4(&qword_27D8BA0E8, type metadata accessor for BGSystemTaskSchedulerError, &unk_22B363120);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_22B122BD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B1233D4(&qword_27D8BA0E8, type metadata accessor for BGSystemTaskSchedulerError, &unk_22B363120);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_22B122C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22B36149C();
  sub_22B36072C();
  return sub_22B3614DC();
}

uint64_t sub_22B122CAC(void *a1, uint64_t *a2)
{
  v2 = sub_22B36084C();
  v4 = v3;
  if (v2 == sub_22B36084C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_22B36134C();
  }

  return v7 & 1;
}

uint64_t sub_22B122D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22B1233D4(&qword_281408620, type metadata accessor for CKError, &unk_22B362F94);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_22B122DB8(uint64_t a1)
{
  v2 = sub_22B1233D4(&qword_27D8BA0F0, type metadata accessor for BGSystemTaskSchedulerError, &unk_22B363260);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22B122E24(uint64_t a1)
{
  v2 = sub_22B1233D4(&qword_27D8BA0F0, type metadata accessor for BGSystemTaskSchedulerError, &unk_22B363260);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22B122E90(uint64_t a1)
{
  v2 = sub_22B1233D4(&qword_27D8BA0E8, type metadata accessor for BGSystemTaskSchedulerError, &unk_22B363120);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_22B122EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22B1233D4(&qword_27D8BA0E8, type metadata accessor for BGSystemTaskSchedulerError, &unk_22B363120);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_22B122F80@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_22B36081C();

  *a2 = v3;
  return result;
}

uint64_t sub_22B122FC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22B36084C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22B122FF4(uint64_t a1)
{
  v2 = sub_22B1233D4(&qword_2814092D8, type metadata accessor for FileAttributeKey, &unk_22B3630A4);
  v3 = sub_22B1233D4(&unk_27D8BA130, type metadata accessor for FileAttributeKey, &unk_22B362DBC);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_22B123130(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA078, &unk_22B362BB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_22B1231A0(id result, void *a2)
{
  if (result)
  {

    return a2;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t sub_22B123284(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22B1232F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B123314(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_22B1233D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22B123628()
{
  result = qword_281408630;
  if (!qword_281408630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281408630);
  }

  return result;
}

void sub_22B1237F8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_22B123A50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_22B360B6C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_22B360B1C();

  v8 = sub_22B360B0C();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = a1;
  v9[5] = a2;
  sub_22B123DF0(0, 0, v6, &unk_22B363348, v9);
}

uint64_t sub_22B123B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_22B36052C();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  sub_22B360B1C();
  v5[10] = sub_22B360B0C();
  v8 = sub_22B360ACC();

  return MEMORY[0x2822009F8](sub_22B123C6C, v8, v7);
}

uint64_t sub_22B123C6C()
{
  v1 = v0[5];

  v1(v2);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  v6 = __swift_project_value_buffer(v5, qword_28140BD10);
  swift_beginAccess();
  (*(v4 + 16))(v3, v6, v5);
  v7 = sub_22B36050C();
  v8 = sub_22B360D1C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22B116000, v7, v8, "[EagerExit] Attempting eager exit", v9, 2u);
    MEMORY[0x23188F650](v9, -1, -1);
  }

  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[7];

  (*(v11 + 8))(v10, v12);
  xpc_transaction_exit_clean();

  v13 = v0[1];

  return v13();
}

uint64_t sub_22B123DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_22B124BA8(a3, v25 - v10);
  v12 = sub_22B360B6C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22B118DDC(v11);
  }

  else
  {
    sub_22B360B5C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22B360ACC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22B3608CC() + 32;
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

      sub_22B118DDC(a3);

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

  sub_22B118DDC(a3);
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

uint64_t sub_22B1240B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_22B124BA8(a3, v25 - v10);
  v12 = sub_22B360B6C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22B118DDC(v11);
  }

  else
  {
    sub_22B360B5C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22B360ACC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22B3608CC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA210, &qword_22B363A20);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_22B118DDC(a3);

      return v22;
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

  sub_22B118DDC(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA210, &qword_22B363A20);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_22B1243B8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22B1244B0;

  return v6(a1);
}

uint64_t sub_22B1244B0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B1245A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v32 = a3;
  v4 = sub_22B3605EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22B36062C();
  v34 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v33 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22B36052C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_28140BD10);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_22B36050C();
  v16 = sub_22B360D1C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v7;
    v18 = v8;
    v19 = v4;
    v20 = a1;
    v21 = v5;
    v22 = v17;
    *v17 = 0;
    _os_log_impl(&dword_22B116000, v15, v16, "[EagerExit] Eager exit scheduled if transactions are clean", v17, 2u);
    v23 = v22;
    v5 = v21;
    a1 = v20;
    v4 = v19;
    v8 = v18;
    v7 = v30;
    MEMORY[0x23188F650](v23, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  sub_22B11870C();
  v24 = sub_22B360D9C();
  v25 = swift_allocObject();
  v26 = v32;
  *(v25 + 16) = v31;
  *(v25 + 24) = v26;
  aBlock[4] = sub_22B1249DC;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B118A6C;
  aBlock[3] = &block_descriptor;
  v27 = _Block_copy(aBlock);

  v28 = v33;
  sub_22B36060C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22B1249E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA330, &unk_22B363330);
  sub_22B124A3C();
  sub_22B36104C();
  MEMORY[0x23188E6A0](a1, v28, v7, v27);
  _Block_release(v27);

  (*(v5 + 8))(v7, v4);
  return (*(v34 + 8))(v28, v8);
}

unint64_t sub_22B1249E4()
{
  result = qword_281409370;
  if (!qword_281409370)
  {
    sub_22B3605EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281409370);
  }

  return result;
}

unint64_t sub_22B124A3C()
{
  result = qword_281409350;
  if (!qword_281409350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D8BA330, &unk_22B363330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281409350);
  }

  return result;
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

uint64_t sub_22B124AE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B119A60;

  return sub_22B123B78(a1, v4, v5, v7, v6);
}

uint64_t sub_22B124BA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B124C18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B124D88;

  return sub_22B1243B8(a1, v4);
}

uint64_t sub_22B124CD0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B119A60;

  return sub_22B119030(a1, v4);
}

void sub_22B124DC0(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_22B36052C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_28140BD10);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);

  v13 = a3;

  v14 = v8;
  v15 = sub_22B36050C();
  v16 = sub_22B360D2C();

  v33 = v16;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v32 = v14;
    v18 = v17;
    v30 = swift_slowAlloc();
    aBlock[0] = v30;
    *v18 = 136315394;
    v19 = MEMORY[0x23188E390](a4, &type metadata for HomeEnergyEventManager.HomeEnergyEvent);
    v29 = v15;
    v21 = sub_22B1A7B20(v19, v20, aBlock);
    v31 = v11;
    v22 = v21;

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_22B1A7B20(a1, a2, aBlock);
    v23 = v29;
    _os_log_impl(&dword_22B116000, v29, v33, "Registering %s for %s", v18, 0x16u);
    v24 = v30;
    swift_arrayDestroy();
    MEMORY[0x23188F650](v24, -1, -1);
    MEMORY[0x23188F650](v18, -1, -1);

    (*(v9 + 8))(v31, v32);
  }

  else
  {

    (*(v9 + 8))(v11, v14);
  }

  v25 = swift_allocObject();
  v25[2] = a1;
  v25[3] = a2;
  v25[4] = v13;
  v25[5] = a4;
  aBlock[4] = sub_22B12591C;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B12587C;
  aBlock[3] = &block_descriptor_0;
  v26 = _Block_copy(aBlock);

  v27 = v13;

  v28 = sub_22B3608CC();
  xpc_set_event_stream_handler((v28 + 32), v27, v26);

  _Block_release(v26);
}

uint64_t sub_22B125154(void *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5)
{
  v10 = sub_22B36052C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v69 = &v67 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v67 - v17;
  v19 = sub_22B36053C();
  if (xpc_dictionary_get_string(a1, v19))
  {
    v70 = a4;
    v71 = a3;
    v67 = a2;
    v72 = v11;
    v20 = v10;
    v21 = sub_22B36095C();
    v23 = v22;
    v24 = a5 + 56;
    v25 = *(a5 + 16) + 1;
    while (--v25)
    {
      v26 = *(v24 - 8);
      if (*(v24 - 24) != v21 || *(v24 - 16) != v23)
      {
        v24 += 32;
        if ((sub_22B36134C() & 1) == 0)
        {
          continue;
        }
      }

      v28 = qword_28140A0C8;

      if (v28 != -1)
      {
        swift_once();
      }

      v29 = __swift_project_value_buffer(v20, qword_28140BD10);
      swift_beginAccess();
      v30 = *(v72 + 16);
      v68 = v20;
      v30(v18, v29, v20);
      v31 = v71;

      v32 = v70;

      v33 = sub_22B36050C();
      v70 = v18;
      v34 = v33;
      v35 = sub_22B360D2C();

      v69 = v32;

      v36 = v34;

      if (os_log_type_enabled(v34, v35))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v73 = v38;
        *v37 = 136315650;
        *(v37 + 4) = sub_22B1A7B20(v67, v31, &v73);
        *(v37 + 12) = 2080;
        v39 = sub_22B1A7B20(v21, v23, &v73);
        v40 = v35;
        v41 = v39;

        *(v37 + 14) = v41;
        *(v37 + 22) = 2080;
        v42 = sub_22B360DCC();
        v44 = sub_22B1A7B20(v42, v43, &v73);

        *(v37 + 24) = v44;
        _os_log_impl(&dword_22B116000, v36, v40, "(%s) run for %s in Queue %s", v37, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x23188F650](v38, -1, -1);
        MEMORY[0x23188F650](v37, -1, -1);
      }

      else
      {
      }

      v66 = (*(v72 + 8))(v70, v68);
      v26(v66);
    }

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v54 = v20;
    v55 = __swift_project_value_buffer(v20, qword_28140BD10);
    swift_beginAccess();
    v56 = v72;
    v57 = v69;
    (*(v72 + 16))(v69, v55, v54);

    v58 = v71;

    v59 = v70;
    v60 = sub_22B36050C();
    v61 = sub_22B360D1C();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v68 = v54;
      v64 = v63;
      v73 = v63;
      *v62 = 136315394;
      *(v62 + 4) = sub_22B1A7B20(v67, v58, &v73);
      *(v62 + 12) = 2080;
      v65 = sub_22B1A7B20(v21, v23, &v73);

      *(v62 + 14) = v65;
      _os_log_impl(&dword_22B116000, v60, v61, "No registered event for %s matching %s", v62, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v64, -1, -1);
      MEMORY[0x23188F650](v62, -1, -1);

      return (*(v56 + 8))(v57, v68);
    }

    else
    {

      return (*(v56 + 8))(v57, v54);
    }
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v45 = __swift_project_value_buffer(v10, qword_28140BD10);
    swift_beginAccess();
    (*(v11 + 16))(v13, v45, v10);

    v46 = a4;

    v47 = sub_22B36050C();
    v48 = sub_22B360D1C();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51 = a2;
      v52 = v50;
      v73 = v50;
      *v49 = 136315138;
      *(v49 + 4) = sub_22B1A7B20(v51, a3, &v73);
      _os_log_impl(&dword_22B116000, v47, v48, "Unable to determine event name for XPC event %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x23188F650](v52, -1, -1);
      MEMORY[0x23188F650](v49, -1, -1);
    }

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_22B12587C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22B125928(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_22B125970(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_22B1259C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t isEscapingClosureAtFileLocation@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA970, &unk_22B363560);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v34 - v12;
  v14 = MEMORY[0x23188EEB0](v11);
  v15 = MEMORY[0x23188EEB0]();
  sub_22B1262B8(a1, a2, a3, a4, v13);
  objc_autoreleasePoolPop(v15);
  v16 = sub_22B35DF1C();
  v17 = *(v16 - 1);
  if ((*(v17 + 48))(v13, 1, v16) != 1)
  {
    goto LABEL_6;
  }

  sub_22B1281CC(v13);

  v18 = sub_22B35DECC();
  v20 = v19;
  if (qword_27D8B9FF0 != -1)
  {
    v33 = v18;
    swift_once();
    v18 = v33;
  }

  v21 = qword_27D8BB220;
  v22 = *algn_27D8BB228;
  aBlock = v18;
  v36 = v20;

  MEMORY[0x23188E270](v21, v22);

  sub_22B35DEAC();
  v23 = objc_opt_self();
  v17 = sub_22B36081C();
  v16 = [v23 insertNewObjectForEntityForName:v17 inManagedObjectContext:*(a4 + 48)];

  v24 = sub_22B36081C();
  v25 = sub_22B36081C();
  [v16 setValue:v24 forKeyPath:v25];

  v26 = sub_22B35DEDC();
  v27 = sub_22B36081C();
  [v16 setValue:v26 forKeyPath:v27];

  v28 = sub_22B35DEDC();
  v29 = sub_22B36081C();
  [v16 setValue:v28 forKeyPath:v29];

  v30 = *(a4 + 48);
  v13 = swift_allocObject();
  *(v13 + 2) = sub_22B12823C;
  *(v13 + 3) = a4;
  v39 = sub_22B128240;
  v40 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_22B32556C;
  v38 = &block_descriptor_22;
  v31 = _Block_copy(&aBlock);
  v32 = v30;

  [v32 performBlockAndWait_];

  _Block_release(v31);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_6:
    (*(v17 + 32))(isEscapingClosureAtFileLocation, v13, v16);
  }

  objc_autoreleasePoolPop(v14);
}

void sub_22B125DF4(uint64_t a1, uint64_t a2)
{
  v3 = sub_22B36052C();
  v30 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B35F69C();
  v6 = sub_22B35F68C();
  [v6 setResultType:0];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22B3634B0;
  v8 = sub_22B35DEDC();
  *(v7 + 56) = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
  *(v7 + 64) = sub_22B12805C();
  *(v7 + 32) = v8;
  v9 = sub_22B360CCC();
  [v6 setPredicate:v9];
  v10 = *(a2 + 48);
  v11 = v32;
  v12 = sub_22B360E9C();
  if (!v11)
  {
    v19 = v12;
    v32 = 0;

    if (v19 >> 62)
    {
      v20 = sub_22B36109C();
      if (!v20)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v20)
      {
        goto LABEL_17;
      }
    }

    if (v20 < 1)
    {
LABEL_19:
      __break(1u);
      return;
    }

    for (i = 0; i != v20; ++i)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x23188EAC0](i, v19);
      }

      else
      {
        v22 = *(v19 + 8 * i + 32);
      }

      v23 = v22;
      [*(a2 + 48) deleteObject_];
    }

LABEL_17:

    v24 = *(a2 + 48);
    v25 = swift_allocObject();
    *(v25 + 16) = sub_22B1281A4;
    *(v25 + 24) = a2;
    aBlock[4] = sub_22B128240;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B32556C;
    aBlock[3] = &block_descriptor_14;
    v26 = _Block_copy(aBlock);
    v27 = v24;

    [v27 performBlockAndWait_];

    _Block_release(v26);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  v14 = v30;
  (*(v30 + 16))(v5, v13, v3);
  v15 = sub_22B36050C();
  v16 = sub_22B360D1C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_22B116000, v15, v16, "Error deleting entry from cache.", v17, 2u);
    MEMORY[0x23188F650](v17, -1, -1);
    v18 = v9;
  }

  else
  {
    v18 = v15;
    v15 = v6;
    v6 = v9;
  }

  (*(v14 + 8))(v5, v3);
}

uint64_t sub_22B1262B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a4;
  v51 = a5;
  v8 = sub_22B35DF1C();
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x28223BE20](v8);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22B36052C();
  v49 = *(v10 - 8);
  v50 = v10;
  MEMORY[0x28223BE20](v10);
  v56 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B35F69C();
  v12 = sub_22B35F68C();
  [v12 setResultType_];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22B3634C0;
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 64) = sub_22B1280E4();
  v45 = a1;
  v46 = a2;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;

  v47 = a3;
  v14 = sub_22B35DEDC();
  *(v13 + 96) = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
  *(v13 + 104) = sub_22B12805C();
  *(v13 + 72) = v14;
  v15 = sub_22B360CCC();
  [v12 setFetchLimit_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD10, &qword_22B363A30);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22B3634B0;
  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 32) = 0x6E656B6F74;
  *(v16 + 40) = 0xE500000000000000;
  v17 = sub_22B360A3C();

  [v12 setPropertiesToFetch_];

  [v12 setPredicate_];
  v18 = *(v52 + 48);
  v19 = v53;
  v20 = sub_22B360E9C();
  if (!v19)
  {
    v36 = v20;

    if (v36 >> 62)
    {
      result = sub_22B36109C();
      v39 = v54;
      v38 = v55;
      if (result)
      {
LABEL_8:
        if ((v36 & 0xC000000000000001) != 0)
        {
          v40 = MEMORY[0x23188EAC0](0, v36);
        }

        else
        {
          if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v40 = *(v36 + 32);
        }

        v41 = v40;

        v42 = [v41 token];

        v43 = v51;
        sub_22B35DEFC();

        return (*(v39 + 56))(v43, 0, 1, v38);
      }
    }

    else
    {
      result = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v39 = v54;
      v38 = v55;
      if (result)
      {
        goto LABEL_8;
      }
    }

    return (*(v39 + 56))(v51, 1, 1, v38);
  }

  v53 = v19;

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v21 = v50;
  v22 = __swift_project_value_buffer(v50, qword_28140BD10);
  swift_beginAccess();
  v23 = v49;
  (*(v49 + 16))(v56, v22, v21);
  v25 = v54;
  v24 = v55;
  v26 = v48;
  (*(v54 + 16))(v48, v47, v55);
  v27 = v46;

  v28 = sub_22B36050C();
  v29 = sub_22B360D1C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v57 = v31;
    *v30 = 136380931;
    *(v30 + 4) = sub_22B1A7B20(v45, v27, &v57);
    *(v30 + 12) = 2081;
    sub_22B127FBC();
    v32 = sub_22B36131C();
    v34 = v33;
    (*(v25 + 8))(v26, v24);
    v35 = sub_22B1A7B20(v32, v34, &v57);

    *(v30 + 14) = v35;
    _os_log_impl(&dword_22B116000, v28, v29, "Failed to fetch cache entry for %{private}s, %{private}s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v31, -1, -1);
    MEMORY[0x23188F650](v30, -1, -1);

    (*(v49 + 8))(v56, v50);
  }

  else
  {

    (*(v25 + 8))(v26, v24);
    (*(v23 + 8))(v56, v21);
  }

  return (*(v25 + 56))(v51, 1, 1, v24);
}

void sub_22B126938(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v48 = a3;
  v46 = sub_22B35DF1C();
  v5 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_22B36052C();
  v47 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B35F69C();
  v9 = sub_22B35F68C();
  [v9 setResultType_];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v10 = swift_allocObject();
  v49 = xmmword_22B3634B0;
  *(v10 + 16) = xmmword_22B3634B0;
  v44 = a1;
  v11 = sub_22B35DEDC();
  *(v10 + 56) = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
  *(v10 + 64) = sub_22B12805C();
  *(v10 + 32) = v11;
  v12 = sub_22B360CCC();
  [v9 setFetchLimit_];
  [v9 setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD10, &qword_22B363A30);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D837D0];
  *(v13 + 16) = v49;
  *(v13 + 56) = v14;
  *(v13 + 32) = 0x444964697267;
  *(v13 + 40) = 0xE600000000000000;
  v15 = sub_22B360A3C();

  [v9 setPropertiesToFetch_];

  v16 = *(a2 + 48);
  v17 = v50;
  v18 = sub_22B360E9C();
  if (!v17)
  {
    v33 = v18;

    if (v33 >> 62)
    {
      if (sub_22B36109C())
      {
LABEL_8:
        if ((v33 & 0xC000000000000001) != 0)
        {
          v34 = MEMORY[0x23188EAC0](0, v33);
        }

        else
        {
          if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v34 = *(v33 + 32);
        }

        v35 = v34;

        v36 = [v35 gridID];

        v37 = sub_22B36084C();
        v39 = v38;

        v40 = v48;
        *v48 = v37;
        v40[1] = v39;
        return;
      }
    }

    else if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

    v42 = v48;
    *v48 = 0;
    v42[1] = 0;
    return;
  }

  v50 = v17;

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v19 = v51;
  v20 = __swift_project_value_buffer(v51, qword_28140BD10);
  swift_beginAccess();
  v21 = v47;
  (*(v47 + 16))(v8, v20, v19);
  v22 = v45;
  v23 = v46;
  (*(v5 + 16))(v45, v44, v46);
  v24 = sub_22B36050C();
  v25 = sub_22B360D1C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v49 = v8;
    v28 = v27;
    v52 = v27;
    *v26 = 136380675;
    sub_22B127FBC();
    v29 = sub_22B36131C();
    v31 = v30;
    (*(v5 + 8))(v22, v23);
    v32 = sub_22B1A7B20(v29, v31, &v52);

    *(v26 + 4) = v32;
    _os_log_impl(&dword_22B116000, v24, v25, "Failed to fetch gridID entry for token %{private}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x23188F650](v28, -1, -1);
    MEMORY[0x23188F650](v26, -1, -1);

    (*(v47 + 8))(v49, v51);
  }

  else
  {

    (*(v5 + 8))(v22, v23);
    (*(v21 + 8))(v8, v51);
  }

  v41 = v48;
  *v48 = 0;
  v41[1] = 0;
}

uint64_t sub_22B126F18()
{
  type metadata accessor for GuidanceIDTrackerManager();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  if (qword_28140AD60 != -1)
  {
    swift_once();
  }

  *(v0 + 112) = sub_22B33AD90(0xD000000000000010, 0x800000022B368B50, 0x6361436C61636F4CLL, 0xEA00000000006568);

  qword_28140BC50 = v0;
  return result;
}

uint64_t sub_22B126FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_22B1259C8(a2, a3, a4, a1, a5);
  [*(a1 + 48) reset];
  v7 = sub_22B35DF1C();
  return (*(*(v7 - 8) + 56))(a5, 0, 1, v7);
}

uint64_t sub_22B12708C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22B35DF1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v46 = v6;
  v47 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  v10 = sub_22B36052C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_28140BD10);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);
  v45 = *(v5 + 16);
  v45(v9, a1, v4);
  v15 = v13;
  v16 = sub_22B36050C();
  v17 = sub_22B360D2C();
  v48 = v10;
  v18 = v17;
  if (os_log_type_enabled(v16, v17))
  {
    v19 = swift_slowAlloc();
    v42 = v2;
    v20 = v19;
    v21 = swift_slowAlloc();
    v44 = v5;
    v22 = v21;
    aBlock[0] = v21;
    *v20 = 136315138;
    sub_22B127FBC();
    v41 = v15;
    v23 = sub_22B36131C();
    v43 = a1;
    v24 = v4;
    v26 = v25;
    (*(v44 + 8))(v9, v24);
    v27 = sub_22B1A7B20(v23, v26, aBlock);
    v4 = v24;
    a1 = v43;

    *(v20 + 4) = v27;
    _os_log_impl(&dword_22B116000, v16, v18, "Delete token tracking from cache for %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v28 = v22;
    v5 = v44;
    MEMORY[0x23188F650](v28, -1, -1);
    v29 = v20;
    v2 = v42;
    MEMORY[0x23188F650](v29, -1, -1);

    result = (*(v11 + 8))(v41, v48);
  }

  else
  {

    (*(v5 + 8))(v9, v4);
    result = (*(v11 + 8))(v15, v48);
  }

  v31 = *(v2 + 112);
  if (v31)
  {
    v32 = *(v31 + 48);
    v33 = v47;
    v45(v47, a1, v4);
    v34 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = v31;
    (*(v5 + 32))(v35 + v34, v33, v4);
    v36 = swift_allocObject();
    *(v36 + 16) = sub_22B128138;
    *(v36 + 24) = v35;
    aBlock[4] = sub_22B12819C;
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B32556C;
    aBlock[3] = &block_descriptor_1;
    v37 = _Block_copy(aBlock);
    swift_retain_n();
    v38 = v32;

    [v38 performBlockAndWait_];

    _Block_release(v37);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_22B12757C(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x23188EEB0]();
  sub_22B125DF4(a2, a1);
  objc_autoreleasePoolPop(v4);
  v5 = *(a1 + 48);

  return [v5 reset];
}

void sub_22B12760C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, const char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a4;
  v41 = a6;
  v42 = a1;
  v43 = a3;
  v8 = sub_22B35DF1C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22B36052C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v12, qword_28140BD10);
  swift_beginAccess();
  (*(v13 + 16))(v15, v16, v12);
  (*(v9 + 16))(v11, v43, v8);

  v17 = sub_22B36050C();
  v18 = v9;
  v19 = sub_22B360D2C();

  v20 = os_log_type_enabled(v17, v19);
  v39 = a2;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v37 = a5;
    v22 = v21;
    v35 = swift_slowAlloc();
    v44[0] = v35;
    *v22 = 136380931;
    *(v22 + 4) = sub_22B1A7B20(v42, a2, v44);
    *(v22 + 12) = 2080;
    sub_22B127FBC();
    v36 = v12;
    v23 = v18;
    v24 = sub_22B36131C();
    v26 = v25;
    (*(v23 + 8))(v11, v8);
    v27 = sub_22B1A7B20(v24, v26, v44);

    *(v22 + 14) = v27;
    _os_log_impl(&dword_22B116000, v17, v19, v38, v22, 0x16u);
    v28 = v35;
    swift_arrayDestroy();
    MEMORY[0x23188F650](v28, -1, -1);
    MEMORY[0x23188F650](v22, -1, -1);

    v29 = (*(v13 + 8))(v15, v36);
  }

  else
  {

    (*(v18 + 8))(v11, v8);
    v29 = (*(v13 + 8))(v15, v12);
    v23 = v18;
  }

  v30 = *(v40 + 112);
  if (v30)
  {
    v31 = *(v30 + 48);
    MEMORY[0x28223BE20](v29);
    v32 = v42;
    *(&v35 - 4) = v30;
    *(&v35 - 3) = v32;
    v33 = v43;
    *(&v35 - 2) = v39;
    *(&v35 - 1) = v33;

    v34 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA970, &unk_22B363560);
    sub_22B360E7C();
  }

  else
  {
    (*(v23 + 56))(v41, 1, 1, v8);
  }
}

void sub_22B127A4C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = MEMORY[0x23188EEB0]();
  sub_22B1262B8(a2, a3, a4, a1, a5);
  objc_autoreleasePoolPop(v11);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    [*(a1 + 48) reset];
  }
}

void *sub_22B127AEC(void *a1)
{
  v2 = v1;
  v30 = a1;
  v3 = sub_22B35DF1C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22B36052C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v7, qword_28140BD10);
  swift_beginAccess();
  (*(v8 + 16))(v10, v11, v7);
  (*(v4 + 16))(v6, v30, v3);
  v12 = sub_22B36050C();
  v13 = sub_22B360D2C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = v7;
    v15 = v14;
    v27 = swift_slowAlloc();
    v31 = v27;
    *v15 = 136380675;
    sub_22B127FBC();
    v16 = sub_22B36131C();
    v29 = v2;
    v18 = v17;
    (*(v4 + 8))(v6, v3);
    v19 = sub_22B1A7B20(v16, v18, &v31);
    v2 = v29;

    *(v15 + 4) = v19;
    _os_log_impl(&dword_22B116000, v12, v13, "Get grid id from cache for %{private}s", v15, 0xCu);
    v20 = v27;
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x23188F650](v20, -1, -1);
    MEMORY[0x23188F650](v15, -1, -1);

    v21 = (*(v8 + 8))(v10, v28);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
    v21 = (*(v8 + 8))(v10, v7);
  }

  v22 = *(v2 + 112);
  if (!v22)
  {
    return 0;
  }

  v23 = v22[6];
  MEMORY[0x28223BE20](v21);
  v24 = v30;
  *(&v27 - 2) = v22;
  *(&v27 - 1) = v24;

  v25 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA218, &qword_22B363548);
  sub_22B360E7C();

  return v31;
}

void sub_22B127EAC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = MEMORY[0x23188EEB0]();
  sub_22B126938(a2, a1, v10);
  objc_autoreleasePoolPop(v7);
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];
    v9 = v10[1];
    [*(a1 + 48) reset];
    *a3 = v8;
    a3[1] = v9;
  }
}

uint64_t sub_22B127F44()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_22B127FBC()
{
  result = qword_2814091D0;
  if (!qword_2814091D0)
  {
    sub_22B35DF1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814091D0);
  }

  return result;
}

uint64_t sub_22B128014(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_22B12805C()
{
  result = qword_281408540;
  if (!qword_281408540)
  {
    sub_22B128014(255, &qword_281408548, 0x277CCAD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281408540);
  }

  return result;
}

unint64_t sub_22B1280E4()
{
  result = qword_281409360;
  if (!qword_281409360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281409360);
  }

  return result;
}

id sub_22B128138()
{
  v1 = *(sub_22B35DF1C() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_22B12757C(v2, v3);
}

uint64_t sub_22B1281CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA970, &unk_22B363560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22B12824C()
{
  type metadata accessor for HistoricalGuidanceTask();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = sub_22B36081C();
  v3 = [v1 initWithSuiteName_];

  *(v0 + 112) = v3;
  *(v0 + 120) = 0;
  qword_28140BC58 = v0;
}

uint64_t sub_22B1282E4(char a1)
{
  *(v2 + 136) = v1;
  *(v2 + 536) = a1;
  v3 = sub_22B35DE9C();
  *(v2 + 144) = v3;
  *(v2 + 152) = *(v3 - 8);
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = *(type metadata accessor for CDEnergyGuidanceTracker(0) - 8);
  *(v2 + 176) = swift_task_alloc();
  v4 = sub_22B36052C();
  *(v2 + 184) = v4;
  *(v2 + 192) = *(v4 - 8);
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = swift_task_alloc();
  *(v2 + 232) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B12848C, v1, 0);
}

uint64_t sub_22B12848C()
{
  v18 = v0;
  v0[30] = os_transaction_create();
  sub_22B12A788();
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = v0[23];
  v3 = v0[24];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[31] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[32] = v5;
  v0[33] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[29];
  v10 = v0[23];
  v11 = v0[24];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_22B1A7B20(0xD000000000000027, 0x800000022B368C40, &v17);
    _os_log_impl(&dword_22B116000, v6, v7, "[HistoricalGuidanceTask] Executing task %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);
  }

  v14 = *(v11 + 8);
  v14(v9, v10);
  v0[34] = v14;
  if (qword_281408BF0 != -1)
  {
    swift_once();
  }

  v15 = qword_28140BC58;
  v0[35] = qword_28140BC58;

  return MEMORY[0x2822009F8](sub_22B1286EC, v15, 0);
}

uint64_t sub_22B1286EC()
{
  v1 = *(v0 + 136);
  *(v0 + 537) = *(*(v0 + 280) + 120);
  return MEMORY[0x2822009F8](sub_22B128714, v1, 0);
}

uint64_t sub_22B128714()
{
  if (*(v0 + 537) == 1)
  {
    (*(v0 + 256))(*(v0 + 224), *(v0 + 248), *(v0 + 184));
    v1 = sub_22B36050C();
    v2 = sub_22B360D2C();
    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 272);
    v5 = *(v0 + 224);
    v6 = *(v0 + 184);
    if (v3)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22B116000, v1, v2, "[HistoricalGuidanceTask] Download in progress already", v7, 2u);
      MEMORY[0x23188F650](v7, -1, -1);
    }

    swift_unknownObjectRelease();

    v4(v5, v6);

    v8 = *(v0 + 8);

    return v8(0);
  }

  else
  {
    v10 = *(v0 + 280);

    return MEMORY[0x2822009F8](sub_22B1288D4, v10, 0);
  }
}

uint64_t sub_22B1288D4()
{
  v1 = *(v0 + 136);
  *(*(v0 + 280) + 120) = 1;
  return MEMORY[0x2822009F8](sub_22B1288FC, v1, 0);
}

uint64_t sub_22B1288FC()
{
  v21 = v0;
  if (sub_22B35EEBC())
  {
    if (qword_281408E18 != -1)
    {
      swift_once();
    }

    v1 = qword_28140BCA0;
    v2 = *(v0 + 536);
    if (qword_28140BCA0)
    {
      v3 = sub_22B36081C();
      v4 = [v1 BOOLForKey_];

      if ((v4 | v2))
      {
LABEL_6:
        (*(v0 + 256))(*(v0 + 216), *(v0 + 248), *(v0 + 184));
        v5 = sub_22B36050C();
        v6 = sub_22B360D1C();
        v7 = os_log_type_enabled(v5, v6);
        v8 = *(v0 + 272);
        v9 = *(v0 + 216);
        v10 = *(v0 + 184);
        if (v7)
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v20 = v12;
          *v11 = 136315394;
          *(v11 + 4) = sub_22B1A7B20(0xD00000000000002ALL, 0x800000022B368C70, &v20);
          *(v11 + 12) = 2048;
          *(v11 + 14) = 57;
          _os_log_impl(&dword_22B116000, v5, v6, "[HistoricalGuidanceTask] USING MOCK DATA %s:%ld", v11, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v12);
          MEMORY[0x23188F650](v12, -1, -1);
          MEMORY[0x23188F650](v11, -1, -1);
        }

        v8(v9, v10);
        sub_22B12B228();
        sub_22B35E3FC();
        v13 = sub_22B360CDC();
        *(v0 + 288) = v13;
        if (qword_281408858 != -1)
        {
          v18 = v13;
          swift_once();
          v13 = v18;
        }

        v14 = qword_28140BC40;
        *(v0 + 296) = qword_28140BC40;
        v15 = v13;
        v16 = sub_22B128BEC;
        v17 = v14;
        goto LABEL_15;
      }
    }

    else if (*(v0 + 536))
    {
      goto LABEL_6;
    }
  }

  if (qword_281408858 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 136);
  *(v0 + 416) = qword_28140BC40;
  v16 = sub_22B129A10;
LABEL_15:

  return MEMORY[0x2822009F8](v16, v17, 0);
}

uint64_t sub_22B128BEC()
{
  v1 = v0[37];
  v2 = v0[17];
  v3 = *(v1 + 112);
  *(v1 + 112) = v0[36];

  return MEMORY[0x2822009F8](sub_22B128C60, v2, 0);
}

uint64_t sub_22B128C60()
{
  if (qword_28140B068 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BDC0;
  *(v0 + 304) = qword_28140BDC0;

  return MEMORY[0x2822009F8](sub_22B128CF8, v1, 0);
}

uint64_t sub_22B128CF8()
{
  v1 = *(v0 + 136);
  *(v0 + 312) = sub_22B211B68();

  return MEMORY[0x2822009F8](sub_22B128D68, v1, 0);
}

uint64_t sub_22B128D68()
{
  v43 = v0;
  v1 = *(v0 + 312);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 168);
    v4 = *(v0 + 176);
    v42 = MEMORY[0x277D84F90];
    sub_22B355680(0, v2, 0);
    v5 = v42;
    v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v7 = *(v3 + 72);
    do
    {
      v8 = *(v0 + 176);
      sub_22B12B168(v6, v8);
      v9 = *v8;
      v10 = *(v4 + 8);

      sub_22B12B1CC(v8);
      v42 = v5;
      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_22B355680((v11 > 1), v12 + 1, 1);
        v5 = v42;
      }

      *(v5 + 16) = v12 + 1;
      v13 = v5 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v10;
      v6 += v7;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v14 = sub_22B31A80C(v5);
  *(v0 + 320) = v14;

  v15 = *(v14 + 32);
  *(v0 + 538) = v15;
  v16 = -1;
  v17 = -1 << v15;
  v18 = *(v14 + 56);
  if (-v17 < 64)
  {
    v16 = ~(-1 << -v17);
  }

  *(v0 + 328) = 0;
  v19 = v16 & v18;
  if (v19)
  {
    v20 = 0;
    v21 = *(v0 + 320);
LABEL_15:
    *(v0 + 336) = v19;
    *(v0 + 344) = v20;
    v24 = (*(v21 + 48) + ((v20 << 10) | (16 * __clz(__rbit64(v19)))));
    *(v0 + 352) = *v24;
    *(v0 + 360) = v24[1];

    if ((sub_22B360BFC() & 1) == 0)
    {
      v38 = *(v0 + 296);
      sub_22B35DE6C();
      v39 = sub_22B12910C;
      v40 = v38;
      goto LABEL_23;
    }

    v25 = *(v0 + 256);
    v26 = *(v0 + 248);
    v27 = *(v0 + 208);
    v28 = *(v0 + 184);

    v25(v27, v26, v28);
    v29 = sub_22B36050C();
    v30 = sub_22B360D1C();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 288);
    v33 = *(v0 + 208);
    v34 = *(v0 + 184);
    v35 = *(v0 + 192);
    if (v31)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v42 = v37;
      *v36 = 136315394;
      *(v36 + 4) = sub_22B1A7B20(0xD00000000000002ALL, 0x800000022B368C70, &v42);
      *(v36 + 12) = 2048;
      *(v36 + 14) = 77;
      _os_log_impl(&dword_22B116000, v29, v30, "[HistoricalGuidanceTask] Task is cancelled at marker %s:%ld", v36, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x23188F650](v37, -1, -1);
      MEMORY[0x23188F650](v36, -1, -1);
    }

    else
    {
    }

    (*(v35 + 8))(v33, v34);
  }

  else
  {
    v22 = 0;
    v23 = ((63 - v17) >> 6) - 1;
    v21 = *(v0 + 320);
    while (v23 != v22)
    {
      v20 = v22 + 1;
      v19 = *(v21 + 8 * v22++ + 64);
      if (v19)
      {
        goto LABEL_15;
      }
    }
  }

  *(v0 + 528) = 0;
  v40 = *(v0 + 280);
  v39 = sub_22B12A69C;
LABEL_23:

  return MEMORY[0x2822009F8](v39, v40, 0);
}

uint64_t sub_22B12910C()
{
  v1 = v0[44];
  v2 = v0[45];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA228, &qword_22B367FF0);
  inited = swift_initStackObject();
  v0[46] = inited;
  *(inited + 16) = xmmword_22B3634B0;
  *(inited + 32) = v1;
  *(inited + 40) = v2;

  v4 = swift_task_alloc();
  v0[47] = v4;
  *v4 = v0;
  v4[1] = sub_22B1291E8;
  v6 = v0[44];
  v5 = v0[45];
  v7 = v0[20];

  return sub_22B1CD648(v6, v5, v7);
}

uint64_t sub_22B1291E8()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[48] = v3;
  *v3 = v2;
  v3[1] = sub_22B129354;
  v4 = v1[20];
  v5 = v1[46];

  return sub_22B35B648(v5, v4);
}

uint64_t sub_22B129354()
{
  v1 = *(*v0 + 296);

  swift_setDeallocating();
  swift_arrayDestroy();

  return MEMORY[0x2822009F8](sub_22B129494, v1, 0);
}

uint64_t sub_22B129494()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = *(v2 + 8);
  v0[49] = v5;
  v0[50] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);

  return MEMORY[0x2822009F8](sub_22B129518, v4, 0);
}

uint64_t sub_22B129518()
{
  v1 = v0[45];
  sub_22B35DE6C();
  v2 = swift_task_alloc();
  v0[51] = v2;
  *v2 = v0;
  v2[1] = sub_22B1295C4;
  v3 = v0[44];
  v4 = v0[20];

  return sub_22B1CD034(v3, v1, v4);
}

uint64_t sub_22B1295C4()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 144);
  v4 = *(*v0 + 136);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_22B12975C, v4, 0);
}

uint64_t sub_22B12975C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v29 = v3;
  v4 = *(v3 + 328);
  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
LABEL_19:
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v7 = *(v3 + 336);
  v6 = *(v3 + 344);
  *(v3 + 328) = v5;
  v8 = (v7 - 1) & v7;
  if (!v8)
  {
    while (1)
    {
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v9 = *(v3 + 320);
      if (v10 >= (((1 << *(v3 + 538)) + 63) >> 6))
      {

        goto LABEL_14;
      }

      v8 = *(v9 + 8 * v10 + 56);
      ++v6;
      if (v8)
      {
        v6 = v10;
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  v9 = *(v3 + 320);
LABEL_8:
  *(v3 + 336) = v8;
  *(v3 + 344) = v6;
  v11 = (*(v9 + 48) + ((v6 << 10) | (16 * __clz(__rbit64(v8)))));
  *(v3 + 352) = *v11;
  *(v3 + 360) = v11[1];

  if (sub_22B360BFC())
  {
    v12 = *(v3 + 256);
    v13 = *(v3 + 248);
    v14 = *(v3 + 208);
    v15 = *(v3 + 184);

    v12(v14, v13, v15);
    v16 = sub_22B36050C();
    v17 = sub_22B360D1C();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v3 + 288);
    v20 = *(v3 + 208);
    v21 = *(v3 + 184);
    v22 = *(v3 + 192);
    if (v18)
    {
      v27 = *(v3 + 208);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28 = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_22B1A7B20(0xD00000000000002ALL, 0x800000022B368C70, &v28);
      *(v23 + 12) = 2048;
      *(v23 + 14) = 77;
      _os_log_impl(&dword_22B116000, v16, v17, "[HistoricalGuidanceTask] Task is cancelled at marker %s:%ld", v23, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x23188F650](v24, -1, -1);
      MEMORY[0x23188F650](v23, -1, -1);

      (*(v22 + 8))(v27, v21);
    }

    else
    {

      (*(v22 + 8))(v20, v21);
    }

LABEL_14:
    *(v3 + 528) = v5;
    a2 = *(v3 + 280);
    a1 = sub_22B12A69C;
  }

  else
  {
    v25 = *(v3 + 296);
    sub_22B35DE6C();
    a1 = sub_22B12910C;
    a2 = v25;
  }

  a3 = 0;

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_22B129A10()
{
  if (qword_28140B068 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BDC0;
  *(v0 + 424) = qword_28140BDC0;

  return MEMORY[0x2822009F8](sub_22B129AA8, v1, 0);
}

uint64_t sub_22B129AA8()
{
  v1 = *(v0 + 136);
  *(v0 + 432) = sub_22B211B68();

  return MEMORY[0x2822009F8](sub_22B129B18, v1, 0);
}

uint64_t sub_22B129B18()
{
  v34 = v0;
  v1 = v0[54];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[21];
    v4 = v0[22];
    v33 = MEMORY[0x277D84F90];
    sub_22B355680(0, v2, 0);
    v5 = v33;
    v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v7 = *(v3 + 72);
    do
    {
      v8 = v0[22];
      sub_22B12B168(v6, v8);
      v9 = *v8;
      v10 = *(v4 + 8);

      sub_22B12B1CC(v8);
      v33 = v5;
      v12 = v5[2];
      v11 = v5[3];
      if (v12 >= v11 >> 1)
      {
        sub_22B355680((v11 > 1), v12 + 1, 1);
        v5 = v33;
      }

      v5[2] = v12 + 1;
      v13 = &v5[2 * v12];
      v13[4] = v9;
      v13[5] = v10;
      v6 += v7;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v0[55] = v5;
  v17 = v5[2];
  v0[56] = v17;
  if (!v17)
  {

    v30 = v0[56];
LABEL_15:
    v0[66] = v30;
    v15 = v0[35];
    v14 = sub_22B12A69C;
    goto LABEL_17;
  }

  v0[57] = 0;
  if (!v5[2])
  {
    __break(1u);
    return MEMORY[0x2822009F8](v14, v15, v16);
  }

  v0[58] = v5[4];
  v0[59] = v5[5];

  if (sub_22B360BFC())
  {
    v18 = v0[32];
    v19 = v0[31];
    v20 = v0[25];
    v21 = v0[23];

    v18(v20, v19, v21);
    v22 = sub_22B36050C();
    v23 = sub_22B360D1C();
    v24 = os_log_type_enabled(v22, v23);
    v26 = v0[24];
    v25 = v0[25];
    v27 = v0[23];
    if (v24)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v33 = v29;
      *v28 = 136315394;
      *(v28 + 4) = sub_22B1A7B20(0xD00000000000002ALL, 0x800000022B368C70, &v33);
      *(v28 + 12) = 2048;
      *(v28 + 14) = 104;
      _os_log_impl(&dword_22B116000, v22, v23, "[HistoricalGuidanceTask] Task is cancelled at marker %s:%ld", v28, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x23188F650](v29, -1, -1);
      MEMORY[0x23188F650](v28, -1, -1);
    }

    (*(v26 + 8))(v25, v27);
    v30 = 0;
    goto LABEL_15;
  }

  v31 = v0[52];
  sub_22B35DE6C();
  v14 = sub_22B129E1C;
  v15 = v31;
LABEL_17:
  v16 = 0;

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_22B129E1C()
{
  v1 = v0[58];
  v2 = v0[59];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA228, &qword_22B367FF0);
  inited = swift_initStackObject();
  v0[60] = inited;
  *(inited + 16) = xmmword_22B3634B0;
  *(inited + 32) = v1;
  *(inited + 40) = v2;

  v4 = swift_task_alloc();
  v0[61] = v4;
  *v4 = v0;
  v4[1] = sub_22B129EF8;
  v6 = v0[58];
  v5 = v0[59];
  v7 = v0[20];

  return sub_22B1CD648(v6, v5, v7);
}

uint64_t sub_22B129EF8()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[62] = v3;
  *v3 = v2;
  v3[1] = sub_22B12A064;
  v4 = v1[20];
  v5 = v1[60];

  return sub_22B35B648(v5, v4);
}

uint64_t sub_22B12A064()
{
  v1 = *(*v0 + 416);

  swift_setDeallocating();
  swift_arrayDestroy();

  return MEMORY[0x2822009F8](sub_22B12A1A4, v1, 0);
}

uint64_t sub_22B12A1A4()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = *(v2 + 8);
  v0[63] = v5;
  v0[64] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);

  return MEMORY[0x2822009F8](sub_22B12A228, v4, 0);
}

uint64_t sub_22B12A228()
{
  v1 = v0[59];
  sub_22B35DE6C();
  v2 = swift_task_alloc();
  v0[65] = v2;
  *v2 = v0;
  v2[1] = sub_22B12A2D4;
  v3 = v0[58];
  v4 = v0[20];

  return sub_22B1CD034(v3, v1, v4);
}

uint64_t sub_22B12A2D4()
{
  v1 = *(*v0 + 504);
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 144);
  v4 = *(*v0 + 136);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_22B12A46C, v4, 0);
}

uint64_t sub_22B12A46C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v22 = v3;
  v4 = v3[57] + 1;
  if (v4 == v3[56])
  {

    v4 = v3[56];
LABEL_8:
    v3[66] = v4;
    a2 = v3[35];
    a1 = sub_22B12A69C;
    goto LABEL_10;
  }

  v3[57] = v4;
  v5 = v3[55];
  if (v4 >= *(v5 + 16))
  {
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v6 = v5 + 16 * v4;
  v3[58] = *(v6 + 32);
  v3[59] = *(v6 + 40);

  if (sub_22B360BFC())
  {
    v7 = v3[32];
    v8 = v3[31];
    v9 = v3[25];
    v10 = v3[23];

    v7(v9, v8, v10);
    v11 = sub_22B36050C();
    v12 = sub_22B360D1C();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v3[24];
    v14 = v3[25];
    v16 = v3[23];
    if (v13)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_22B1A7B20(0xD00000000000002ALL, 0x800000022B368C70, &v21);
      *(v17 + 12) = 2048;
      *(v17 + 14) = 104;
      _os_log_impl(&dword_22B116000, v11, v12, "[HistoricalGuidanceTask] Task is cancelled at marker %s:%ld", v17, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x23188F650](v18, -1, -1);
      MEMORY[0x23188F650](v17, -1, -1);
    }

    (*(v15 + 8))(v14, v16);
    goto LABEL_8;
  }

  v19 = v3[52];
  sub_22B35DE6C();
  a1 = sub_22B129E1C;
  a2 = v19;
LABEL_10:
  a3 = 0;

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_22B12A69C()
{
  v1 = *(v0 + 136);
  *(*(v0 + 280) + 120) = 0;
  return MEMORY[0x2822009F8](sub_22B12A6C0, v1, 0);
}

uint64_t sub_22B12A6C0()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 528);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_22B12A788()
{
  v0 = sub_22B36052C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_28140BD10);
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B116000, v5, v6, "[HistoricalGuidanceTask] Taking extended lifetime", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_22B12A960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_22B360B6C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_22B12B3CC(a1, v16);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;
  sub_22B11A02C(v16, (v12 + 5));
  v12[10] = a3;
  v12[11] = a4;

  v13 = sub_22B145224(0, 0, v10, &unk_22B363620, v12);
  sub_22B118DDC(v10);
  return v13;
}

uint64_t sub_22B12AAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_22B12AAD8, 0, 0);
}

uint64_t sub_22B12AAD8()
{

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_22B12AB90;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];

  return sub_22B344FB4(v5, v4, v2, v3);
}

uint64_t sub_22B12AB90()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B12ACA0(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_22B36052C();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B12AD60, 0, 0);
}

uint64_t sub_22B12AD60()
{
  if (qword_281408BF0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_22B12AE28;

  return sub_22B1282E4(0);
}

uint64_t sub_22B12AE28(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_22B12AF28, 0, 0);
}

uint64_t sub_22B12AF28()
{
  v21 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[11];
    v8 = v0[8];
    v19 = v0[9];
    v10 = v0[6];
    v9 = v0[7];
    v11 = v0[5];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_22B1A7B20(v11, v10, &v20);
    *(v12 + 12) = 2048;
    *(v12 + 14) = v7;
    _os_log_impl(&dword_22B116000, v5, v6, "[HistoricalGuidanceDownloadTask] %s processed %ld grids", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);

    (*(v8 + 8))(v19, v9);
  }

  else
  {
    v15 = v0[8];
    v14 = v0[9];
    v16 = v0[7];

    (*(v15 + 8))(v14, v16);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_22B12B168(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CDEnergyGuidanceTracker(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B12B1CC(uint64_t a1)
{
  v2 = type metadata accessor for CDEnergyGuidanceTracker(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22B12B228()
{
  result = qword_27D8BA230;
  if (!qword_27D8BA230)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8BA230);
  }

  return result;
}

uint64_t sub_22B12B274()
{
  v6[3] = &type metadata for BackgroundSystemTaskScheduler;
  v6[4] = &off_283EFE540;
  type metadata accessor for BackgroundLaunchTask();
  v0 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v6, &type metadata for BackgroundSystemTaskScheduler);
  v4 = &type metadata for BackgroundSystemTaskScheduler;
  v5 = &off_283EFE540;
  swift_defaultActor_initialize();
  sub_22B11A02C(&v3, v0 + 112);
  __swift_destroy_boxed_opaque_existential_0(v6);
  v1 = swift_allocObject();
  v1[2] = v0;
  v1[3] = 0xD000000000000027;
  v1[4] = 0x800000022B368C40;

  sub_22B348848(0xD000000000000027, 0x800000022B368C40, sub_22B12B3C0, v1);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_22B12B3CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22B12B430(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B119A60;

  return sub_22B12AAB4(a1, v4, v5, v6, (v1 + 5), v7, v8);
}

void sub_22B12B508(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA970, &unk_22B363560);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - v5;
  v7 = type metadata accessor for CDEnergyGuidanceCache(0);
  v8 = v7[7];
  v35 = v8;
  v9 = sub_22B35DF1C();
  v10 = *(v9 - 8);
  v33 = *(v10 + 56);
  v34 = v10 + 56;
  v33(a2 + v8, 1, 1, v9);
  v11 = (a2 + v7[9]);
  v12 = (a2 + v7[10]);
  v13 = [a1 energyGuidance];
  v14 = sub_22B35DCDC();
  v16 = v15;

  *a2 = v14;
  *(a2 + 8) = v16;
  v17 = [a1 ratePlan];
  v18 = sub_22B36084C();
  v20 = v19;

  *v11 = v18;
  v11[1] = v20;
  v21 = [a1 utilityID];
  v22 = sub_22B36084C();
  v24 = v23;

  *v12 = v22;
  v12[1] = v24;
  *(a2 + 16) = [a1 guidanceType];
  v25 = [a1 guidanceID];
  sub_22B35DEFC();

  v33(v6, 0, 1, v9);
  sub_22B12F2C4(v6, a2 + v35, &qword_27D8BA970, &unk_22B363560);
  v26 = [a1 gridID];
  v27 = sub_22B36084C();
  v29 = v28;

  *(a2 + 24) = v27;
  *(a2 + 32) = v29;
  v30 = [a1 insertTime];
  sub_22B35DE5C();

  *(a2 + v7[11]) = [a1 version];
  v31 = [a1 validUntil];
  sub_22B35DE5C();
}

void sub_22B12B7B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, NSObject *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, void *a10, uint64_t a11)
{
  v142 = a5;
  v148 = a3;
  v149 = a8;
  v146 = a2;
  v147 = a7;
  v140 = a9;
  v145 = a11;
  v143 = a6;
  v144 = a10;
  v139 = sub_22B35E33C();
  v127 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v126 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22B36052C();
  v137 = *(v14 - 8);
  v138 = v14;
  MEMORY[0x28223BE20](v14);
  v136 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v128 = &v119 - v17;
  v18 = sub_22B35D8BC();
  v134 = *(v18 - 8);
  v135 = v18;
  MEMORY[0x28223BE20](v18);
  v132 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_22B35DE9C();
  v131 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v130 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22B35DF1C();
  v129 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22B35E20C();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v119 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a4;
  sub_22B35E30C();
  LODWORD(a4) = sub_22B35E1FC();
  v31 = *(v25 + 8);
  v30 = v25 + 8;
  v29 = v31;
  v31(v27, v24);
  v32 = sub_22B12C664(v146, v148, a4, v142, v143, v147, v149, v144, v145, a1);
  if (v32)
  {
    v33 = v32;
    v34 = [v33 managedObjectContext];
    if (v34)
    {
      v35 = v34;
      MEMORY[0x28223BE20](v34);
      *(&v119 - 12) = v28;
      *(&v119 - 11) = v33;
      v36 = v148;
      *(&v119 - 10) = v146;
      *(&v119 - 9) = v36;
      v37 = v143;
      *(&v119 - 8) = v142;
      *(&v119 - 7) = v37;
      v38 = v149;
      *(&v119 - 6) = v147;
      *(&v119 - 5) = v38;
      v39 = v145;
      *(&v119 - 4) = v144;
      *(&v119 - 3) = v39;
      v118 = v40;
      sub_22B360E7C();

      return;
    }

    goto LABEL_15;
  }

  v120 = v23;
  v121 = v21;
  v122 = v29;
  v123 = v27;
  v124 = v30;
  v125 = v24;
  sub_22B35D82C();
  swift_allocObject();
  sub_22B35D81C();
  sub_22B12F0B4();
  v41 = v28;
  v42 = v141;
  v43 = sub_22B35D80C();
  v45 = v42;
  if (v42)
  {

LABEL_9:
    v83 = v137;
    v82 = v138;
    v84 = [objc_opt_self() processInfo];
    v85 = [v84 processName];

    v86 = sub_22B36084C();
    v88 = v87;

    v150 = 513;
    v151 = 5;
    v152 = v86;
    v153 = v88;
    v154 = 0;
    static AutoBugCaptureManager.sendIssue(_:)(&v150);

    v89 = v136;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v90 = __swift_project_value_buffer(v82, qword_28140BD10);
    swift_beginAccess();
    (*(v83 + 16))(v89, v90, v82);
    v91 = v45;
    v92 = sub_22B36050C();
    v93 = sub_22B360D1C();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v94 = 138543362;
      v96 = v45;
      v97 = _swift_stdlib_bridgeErrorToNSError();
      *(v94 + 4) = v97;
      *v95 = v97;
      _os_log_impl(&dword_22B116000, v92, v93, "Error preparing data for inserting into cache. %{public}@", v94, 0xCu);
      sub_22B12F10C(v95);
      MEMORY[0x23188F650](v95, -1, -1);
      MEMORY[0x23188F650](v94, -1, -1);
    }

    else
    {
    }

    (*(v83 + 8))(v89, v82);
LABEL_15:
    *v140 = 0;
    return;
  }

  v46 = v43;
  v47 = v44;

  v48 = objc_opt_self();
  v49 = sub_22B36081C();
  v141 = 0;
  v50 = v49;
  v119 = a1;
  v51 = [v48 insertNewObjectForEntityForName:v49 inManagedObjectContext:*(a1 + 48)];

  v52 = sub_22B35DCCC();
  v53 = sub_22B36081C();
  [v51 setValue:v52 forKeyPath:v53];

  v54 = v120;
  sub_22B35DF0C();
  v55 = sub_22B35DEDC();
  (*(v129 + 8))(v54, v121);
  v56 = sub_22B36081C();
  [v51 &off_2786FB278];

  v57 = sub_22B36081C();
  v58 = sub_22B36081C();
  [v51 &off_2786FB278];

  v59 = sub_22B36081C();
  v60 = sub_22B36081C();
  v143 = v46;
  v61 = v60;
  [v51 &off_2786FB278];

  v62 = sub_22B36081C();
  v63 = sub_22B36081C();
  [v51 &off_2786FB278];

  v64 = sub_22B36081C();
  v65 = sub_22B36081C();
  v145 = v47;
  v66 = v65;
  [v51 &off_2786FB278];

  v67 = v123;
  sub_22B35E30C();
  sub_22B35E1FC();
  v122(v67, v125);
  v68 = sub_22B36144C();
  v69 = sub_22B36081C();
  [v51 &off_2786FB278];

  v70 = v130;
  sub_22B35DE6C();
  v71 = sub_22B35DDDC();
  v72 = *(v131 + 8);
  v73 = v133;
  v72(v70, v133);
  v74 = sub_22B36081C();
  [v51 &off_2786FB278];

  v75 = sub_22B36144C();
  v76 = sub_22B36081C();
  [v51 &off_2786FB278];

  v77 = v132;
  sub_22B35E2DC();
  sub_22B35D86C();
  (*(v134 + 8))(v77, v135);
  v78 = sub_22B35DDDC();
  v72(v70, v73);
  v79 = sub_22B36081C();
  [v51 &off_2786FB278];

  v80 = *(v119 + 48);
  v81 = v141;
  sub_22B2A534C(2);
  if (v81)
  {

    sub_22B12F174(v143, v145);
    v45 = v81;
    goto LABEL_9;
  }

  v98 = v149;
  v144 = v51;
  v99 = v41;
  v141 = 0;

  v101 = v137;
  v100 = v138;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v102 = __swift_project_value_buffer(v100, qword_28140BD10);
  swift_beginAccess();
  v103 = v128;
  (*(v101 + 16))(v128, v102, v100);
  v104 = v127;
  v105 = v126;
  (*(v127 + 16))(v126, v99, v139);
  v106 = v148;

  v107 = sub_22B36050C();
  v108 = sub_22B360D2C();

  v142 = v107;
  v109 = os_log_type_enabled(v107, v108);
  v110 = v140;
  if (v109)
  {
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v155 = v112;
    *v111 = 136381187;
    *(v111 + 4) = sub_22B1A7B20(v146, v106, &v155);
    *(v111 + 12) = 512;
    v113 = v123;
    v114 = v110;
    sub_22B35E30C();
    v115 = sub_22B35E1FC();
    v122(v113, v125);
    (*(v104 + 8))(v105, v139);
    *(v111 + 14) = v115;
    v110 = v114;
    *(v111 + 16) = 1024;
    v116 = HIBYTE(v98) & 0xF;
    if ((v98 & 0x2000000000000000) == 0)
    {
      v116 = v147 & 0xFFFFFFFFFFFFLL;
    }

    *(v111 + 18) = v116 != 0;

    v117 = v142;
    _os_log_impl(&dword_22B116000, v142, v108, "Added new energy guidance entry to cache for %{private}s %hd hasUtility: %{BOOL}d", v111, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v112);
    MEMORY[0x23188F650](v112, -1, -1);
    MEMORY[0x23188F650](v111, -1, -1);
    sub_22B12F174(v143, v145);

    (*(v137 + 8))(v128, v138);
  }

  else
  {
    (*(v104 + 8))(v105, v139);
    sub_22B12F174(v143, v145);

    (*(v101 + 8))(v103, v100);
  }

  *v110 = 1;
}

id sub_22B12C664(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v40 = a6;
  v41 = a8;
  v39 = a4;
  v38 = a3;
  v43 = a10;
  v14 = sub_22B36052C();
  v36[3] = *(v14 - 8);
  v36[4] = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v36[2] = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x23188EEB0](v15);
  v42 = sub_22B35EE0C();
  v17 = sub_22B35EDFC();
  [v17 setResultType_];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22B363640;
  v19 = MEMORY[0x277D837D0];
  *(v18 + 56) = MEMORY[0x277D837D0];
  v20 = sub_22B1280E4();
  *(v18 + 64) = v20;
  v21 = MEMORY[0x277D84958];
  v36[1] = a1;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  v22 = MEMORY[0x277D849A0];
  *(v18 + 96) = v21;
  *(v18 + 104) = v22;
  *(v18 + 72) = v38;
  *(v18 + 136) = v19;
  *(v18 + 144) = v20;
  v23 = v40;
  *(v18 + 112) = v39;
  *(v18 + 120) = a5;
  *(v18 + 176) = v19;
  *(v18 + 184) = v20;
  *(v18 + 152) = v23;
  *(v18 + 160) = a7;
  *(v18 + 216) = v19;
  *(v18 + 224) = v20;
  *(v18 + 192) = v41;
  *(v18 + 200) = a9;

  v24 = sub_22B360CCC();
  [v17 setPredicate_];
  v25 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v26 = sub_22B36081C();
  v27 = [v25 initWithKey:v26 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_22B363650;
  *(v28 + 32) = v27;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v29 = v27;
  v30 = sub_22B360A3C();

  [v17 setSortDescriptors_];

  [v17 setFetchLimit_];
  v31 = *(v43 + 48);
  v32 = sub_22B360E9C();

  if (!(v32 >> 62))
  {
    result = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_9:

    v35 = 0;
    goto LABEL_7;
  }

  result = sub_22B36109C();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v32 & 0xC000000000000001) != 0)
  {
    v34 = MEMORY[0x23188EAC0](0, v32);
    goto LABEL_6;
  }

  if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v34 = *(v32 + 32);
LABEL_6:
    v35 = v34;

LABEL_7:
    objc_autoreleasePoolPop(v37);
    return v35;
  }

  __break(1u);
  return result;
}

uint64_t sub_22B12CC1C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(char *, uint64_t)@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v120 = a8;
  v113 = a7;
  v106 = a6;
  v105 = a5;
  v116 = a3;
  v117 = a4;
  v112 = a2;
  v123 = a9;
  v13 = sub_22B35E33C();
  v104 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22B36052C();
  v124 = *(v16 - 8);
  v125 = v16;
  MEMORY[0x28223BE20](v16);
  v121 = (&v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v20 = &v97 - v19;
  v21 = sub_22B35DE9C();
  v110 = *(v21 - 8);
  v111 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_22B35D8BC();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v107 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_22B35E20C();
  v118 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v114 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22B35DF1C();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B35D82C();
  swift_allocObject();
  sub_22B35D81C();
  sub_22B12F0B4();
  v119 = a1;
  v30 = v122;
  v31 = sub_22B35D80C();
  if (v30)
  {

    v64 = v124;
    v63 = v125;
    v65 = [objc_opt_self() processInfo];
    v66 = [v65 processName];

    v67 = sub_22B36084C();
    v69 = v68;

    v126 = 513;
    v127 = 5;
    v128 = v67;
    v129 = v69;
    v130 = 0;
    static AutoBugCaptureManager.sendIssue(_:)(&v126);

    v70 = v121;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v71 = __swift_project_value_buffer(v63, qword_28140BD10);
    swift_beginAccess();
    (*(v64 + 16))(v70, v71, v63);
    v72 = v30;
    v73 = sub_22B36050C();
    v74 = sub_22B360D1C();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v75 = 138543362;
      v77 = v30;
      v78 = _swift_stdlib_bridgeErrorToNSError();
      *(v75 + 4) = v78;
      *v76 = v78;
      _os_log_impl(&dword_22B116000, v73, v74, "Error preparing data for inserting into cache. %{public}@", v75, 0xCu);
      sub_22B12F10C(v76);
      MEMORY[0x23188F650](v76, -1, -1);
      MEMORY[0x23188F650](v75, -1, -1);
    }

    else
    {
    }

    result = (*(v64 + 8))(v70, v63);
    v80 = 0;
  }

  else
  {
    v97 = v15;
    v98 = v13;
    v99 = v20;
    v102 = a12;
    v101 = a11;
    v100 = a10;
    v33 = v31;
    v34 = v32;

    v103 = v33;
    v122 = v34;
    v35 = sub_22B35DCCC();
    v36 = sub_22B36081C();
    v37 = v112;
    [v112 setValue:v35 forKeyPath:v36];

    sub_22B35DF0C();
    v38 = sub_22B35DEDC();
    (*(v27 + 8))(v29, v26);
    v39 = sub_22B36081C();
    [v37 &off_2786FB278];

    v40 = sub_22B36081C();
    v41 = sub_22B36081C();
    [v37 &off_2786FB278];

    v42 = sub_22B36081C();
    v43 = sub_22B36081C();
    [v37 &off_2786FB278];

    v44 = sub_22B36081C();
    v45 = sub_22B36081C();
    [v37 &off_2786FB278];

    v46 = sub_22B36081C();
    v47 = sub_22B36081C();
    [v37 &off_2786FB278];

    v48 = v114;
    sub_22B35E30C();
    sub_22B35E1FC();
    v49 = v118 + 8;
    v106 = *(v118 + 8);
    v106(v48, v115);
    v50 = sub_22B36144C();
    v51 = sub_22B36081C();
    [v37 &off_2786FB278];

    v52 = v107;
    sub_22B35E2DC();
    sub_22B35D86C();
    (*(v108 + 8))(v52, v109);
    v53 = sub_22B35DDDC();
    v54 = v111;
    v55 = *(v110 + 8);
    v55(v23, v111);
    v56 = sub_22B36081C();
    [v37 setValue:v53 forKeyPath:v56];

    sub_22B35DE6C();
    v57 = sub_22B35DDDC();
    v55(v23, v54);
    v58 = sub_22B36081C();
    [v37 setValue:v57 forKeyPath:v58];

    v59 = sub_22B36144C();
    v60 = sub_22B36081C();
    [v37 setValue:v59 forKeyPath:v60];

    sub_22B2A534C(2);
    v61 = v119;
    v62 = v120;
    v118 = v49;
    v81 = v124;
    v82 = v125;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v83 = __swift_project_value_buffer(v82, qword_28140BD10);
    swift_beginAccess();
    (*(v81 + 16))(v99, v83, v82);
    v84 = v104;
    v85 = v97;
    v86 = v98;
    (*(v104 + 16))(v97, v61, v98);
    v87 = v117;

    v88 = sub_22B36050C();
    v89 = sub_22B360D2C();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = v62;
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v131 = v92;
      *v91 = 136381187;
      *(v91 + 4) = sub_22B1A7B20(v116, v87, &v131);
      *(v91 + 12) = 512;
      v93 = v114;
      v121 = v88;
      sub_22B35E30C();
      v94 = sub_22B35E1FC();
      v106(v93, v115);
      (*(v84 + 8))(v85, v98);
      *(v91 + 14) = v94;
      *(v91 + 16) = 1024;
      v95 = HIBYTE(v90) & 0xF;
      if ((v90 & 0x2000000000000000) == 0)
      {
        v95 = v113 & 0xFFFFFFFFFFFFLL;
      }

      *(v91 + 18) = v95 != 0;

      v96 = v121;
      _os_log_impl(&dword_22B116000, v121, v89, "Updated energy guidance to cache for %{private}s %hd hasUtility: %{BOOL}d", v91, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v92);
      MEMORY[0x23188F650](v92, -1, -1);
      MEMORY[0x23188F650](v91, -1, -1);
      sub_22B12F174(v103, v122);
    }

    else
    {
      (*(v84 + 8))(v85, v86);
      sub_22B12F174(v103, v122);
    }

    result = (*(v124 + 8))(v99, v125);
    v80 = 1;
  }

  *v123 = v80;
  return result;
}

void sub_22B12D8EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v39 = a6;
  v40 = a8;
  v38 = a4;
  v37 = a3;
  v36 = a1;
  v13 = sub_22B36052C();
  v34[2] = *(v13 - 8);
  v34[3] = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v34[1] = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x23188EEB0](v14);
  v16 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v17 = sub_22B36081C();
  v18 = [v16 initWithEntityName_];

  [v18 setResultType_];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22B363640;
  v20 = MEMORY[0x277D837D0];
  *(v19 + 56) = MEMORY[0x277D837D0];
  v21 = sub_22B1280E4();
  *(v19 + 64) = v21;
  v22 = MEMORY[0x277D84958];
  *(v19 + 32) = v36;
  *(v19 + 40) = a2;
  v23 = MEMORY[0x277D849A0];
  *(v19 + 96) = v22;
  *(v19 + 104) = v23;
  *(v19 + 72) = v37;
  *(v19 + 136) = v20;
  *(v19 + 144) = v21;
  v24 = v39;
  *(v19 + 112) = v38;
  *(v19 + 120) = a5;
  *(v19 + 176) = v20;
  *(v19 + 184) = v21;
  *(v19 + 152) = v24;
  *(v19 + 160) = a7;
  *(v19 + 216) = v20;
  *(v19 + 224) = v21;
  *(v19 + 192) = v40;
  *(v19 + 200) = a9;

  v25 = sub_22B360CCC();
  [v18 setPredicate_];
  v26 = *(a10 + 48);
  sub_22B35EE0C();
  v27 = v26;
  v28 = sub_22B360E9C();

  if (!(v28 >> 62))
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_3;
    }

LABEL_10:

    v33 = *(a10 + 48);
    sub_22B2A534C(2);

    objc_autoreleasePoolPop(v35);
    return;
  }

  v29 = sub_22B36109C();
  if (!v29)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v29 >= 1)
  {
    for (i = 0; i != v29; ++i)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x23188EAC0](i, v28);
      }

      else
      {
        v31 = *(v28 + 8 * i + 32);
      }

      v32 = v31;
      [*(a10 + 48) deleteObject_];
    }

    goto LABEL_10;
  }

  __break(1u);
}

id sub_22B12DD6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int16 a10, uint64_t a11)
{
  v43 = a8;
  v40 = a4;
  v41 = a6;
  v39 = a3;
  v45 = a11;
  v42 = a10;
  v15 = sub_22B36052C();
  v37[3] = *(v15 - 8);
  v37[4] = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v37[2] = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x23188EEB0](v16);
  v44 = sub_22B35EE0C();
  v18 = sub_22B35EDFC();
  [v18 setResultType_];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22B363660;
  v20 = MEMORY[0x277D837D0];
  *(v19 + 56) = MEMORY[0x277D837D0];
  v21 = sub_22B1280E4();
  *(v19 + 64) = v21;
  v37[1] = a1;
  *(v19 + 32) = a1;
  *(v19 + 40) = a2;
  v22 = MEMORY[0x277D84958];
  v23 = MEMORY[0x277D849A0];
  *(v19 + 96) = MEMORY[0x277D84958];
  *(v19 + 104) = v23;
  *(v19 + 72) = v39;
  *(v19 + 136) = v20;
  *(v19 + 144) = v21;
  v24 = v41;
  *(v19 + 112) = v40;
  *(v19 + 120) = a5;
  *(v19 + 176) = v20;
  *(v19 + 184) = v21;
  *(v19 + 152) = v24;
  *(v19 + 160) = a7;
  *(v19 + 216) = v20;
  *(v19 + 224) = v21;
  *(v19 + 192) = v43;
  *(v19 + 200) = a9;
  *(v19 + 256) = v22;
  *(v19 + 264) = v23;
  *(v19 + 232) = v42;

  v25 = sub_22B360CCC();
  [v18 setPredicate_];
  v26 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v27 = sub_22B36081C();
  v28 = [v26 initWithKey:v27 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_22B363650;
  *(v29 + 32) = v28;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v30 = v28;
  v31 = sub_22B360A3C();

  [v18 setSortDescriptors_];

  [v18 setFetchLimit_];
  v32 = *(v45 + 48);
  v33 = sub_22B360E9C();

  if (!(v33 >> 62))
  {
    result = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_9:

    v36 = 0;
    goto LABEL_7;
  }

  result = sub_22B36109C();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v33 & 0xC000000000000001) != 0)
  {
    v35 = MEMORY[0x23188EAC0](0, v33);
    goto LABEL_6;
  }

  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v35 = *(v33 + 32);
LABEL_6:
    v36 = v35;

LABEL_7:
    objc_autoreleasePoolPop(v38);
    return v36;
  }

  __break(1u);
  return result;
}

void sub_22B12E33C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v42 = a6;
  v43 = a8;
  v41 = a4;
  v40 = a3;
  v45 = a10;
  v14 = sub_22B36052C();
  v38[3] = *(v14 - 8);
  v38[4] = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v38[2] = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x23188EEB0](v15);
  v44 = sub_22B35EE0C();
  v17 = sub_22B35EDFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD10, &qword_22B363A30);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D837D0];
  *(v18 + 16) = xmmword_22B3634B0;
  *(v18 + 56) = v19;
  strcpy((v18 + 32), "energyGuidance");
  *(v18 + 47) = -18;
  v20 = sub_22B360A3C();

  [v17 setPropertiesToFetch_];

  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22B363640;
  *(v21 + 56) = v19;
  v22 = sub_22B1280E4();
  *(v21 + 64) = v22;
  v23 = MEMORY[0x277D84958];
  v38[1] = a1;
  *(v21 + 32) = a1;
  *(v21 + 40) = a2;
  v24 = MEMORY[0x277D849A0];
  *(v21 + 96) = v23;
  *(v21 + 104) = v24;
  *(v21 + 72) = v40;
  *(v21 + 136) = v19;
  *(v21 + 144) = v22;
  v25 = v42;
  *(v21 + 112) = v41;
  *(v21 + 120) = a5;
  *(v21 + 176) = v19;
  *(v21 + 184) = v22;
  *(v21 + 152) = v25;
  *(v21 + 160) = a7;
  *(v21 + 216) = v19;
  *(v21 + 224) = v22;
  *(v21 + 192) = v43;
  *(v21 + 200) = a9;

  v26 = sub_22B360CCC();
  [v17 setPredicate_];
  v27 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v28 = sub_22B36081C();
  v29 = [v27 initWithKey:v28 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_22B363650;
  *(v30 + 32) = v29;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v31 = v29;
  v32 = sub_22B360A3C();

  [v17 setSortDescriptors_];

  [v17 setFetchLimit_];
  v33 = *(v45 + 48);
  v34 = sub_22B360E9C();

  if (!(v34 >> 62))
  {
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:

    goto LABEL_7;
  }

  if (!sub_22B36109C())
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v34 & 0xC000000000000001) != 0)
  {
    v35 = MEMORY[0x23188EAC0](0, v34);
    goto LABEL_6;
  }

  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v35 = *(v34 + 32);
LABEL_6:
    v36 = v35;

    v37 = [v36 energyGuidance];

    sub_22B35DCDC();
LABEL_7:
    objc_autoreleasePoolPop(v39);
    return;
  }

  __break(1u);
}

uint64_t sub_22B12E9AC()
{
  type metadata accessor for EnergyGuidanceCacheManager();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  if (qword_28140AD60 != -1)
  {
    swift_once();
  }

  *(v0 + 112) = sub_22B33AD90(0xD000000000000010, 0x800000022B368B50, 0x6361436C61636F4CLL, 0xEA00000000006568);

  qword_28140BDC8 = v0;
  return result;
}

void sub_22B12EA68(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, NSObject *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, void *a10, uint64_t a11)
{
  v19 = MEMORY[0x23188EEB0]();
  sub_22B12B7B8(a1, a3, a4, a2, a5, a6, a7, a8, &v23, a10, a11);
  objc_autoreleasePoolPop(v19);
  if (v21)
  {
    __break(1u);
  }

  else
  {
    v18 = v23;
    [*(a1 + 48) refreshAllObjects];
    *a9 = v18;
  }
}

id sub_22B12EB3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  sub_22B12E33C(a2, a3, a4, a5, a6, a7, a8, a10, a11, a1);
  v14 = v13;
  v16 = v15;
  result = [*(a1 + 48) refreshAllObjects];
  *a9 = v14;
  a9[1] = v16;
  return result;
}

uint64_t sub_22B12EBC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int16 a12, uint64_t a13)
{
  v27 = a7;
  v28 = a8;
  v25 = a5;
  v26 = a6;
  v30 = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA240, &qword_22B3636E8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v25 - v18;
  v29 = a1;
  v20 = sub_22B12DD6C(a2, a3, a4, v25, v26, v27, v28, a10, a11, a12, a1);
  v21 = v20;
  if (v20)
  {
    sub_22B12B508(v20, v19);
    v22 = type metadata accessor for CDEnergyGuidanceCache(0);
    (*(*(v22 - 8) + 56))(v19, 0, 1, v22);
    sub_22B12F2C4(v19, a13, &qword_27D8BA240, &qword_22B3636E8);
  }

  v23 = *(v29 + 48);
  [v23 refreshAllObjects];

  return sub_22B12F208(a13, v30);
}

id sub_22B12ED5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, uint64_t a11)
{
  sub_22B12D8EC(a2, a3, a4, a5, a6, a7, a8, a10, a11, a1);
  v14 = v13;
  result = [*(a1 + 48) refreshAllObjects];
  *a9 = v14 & 1;
  return result;
}

uint64_t sub_22B12EDE0()
{
  v1 = v0;
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_22B36050C();
  v8 = sub_22B360D2C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22B116000, v7, v8, "Delete all energy guidance from cache", v9, 2u);
    MEMORY[0x23188F650](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = *(v1 + 112);
  if (!v10)
  {
    return 0;
  }

  v11 = *(v10 + 48);

  v12 = v11;
  sub_22B360E7C();

  return v14[23];
}

void sub_22B12EFF0(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = MEMORY[0x23188EEB0]();
  sub_22B339F64(0xD000000000000013, 0x800000022B368D90, a1, &v7);
  objc_autoreleasePoolPop(v5);
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v6 = v7;
    [*(a1 + 48) refreshAllObjects];
    *a2 = v6;
  }
}

unint64_t sub_22B12F0B4()
{
  result = qword_281409198;
  if (!qword_281409198)
  {
    sub_22B35E33C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281409198);
  }

  return result;
}

uint64_t sub_22B12F10C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAA90, &unk_22B362BC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B12F174(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_22B12F208(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA240, &qword_22B3636E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for CDEnergyGuidanceCache(uint64_t a1)
{
  result = qword_281409C88;
  if (!qword_281409C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B12F2C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_22B12F370(uint64_t a1)
{
  sub_22B12F444(319);
  if (v1 <= 0x3F)
  {
    sub_22B35DE9C();
    if (v2 <= 0x3F)
    {
      sub_22B12F49C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22B12F444(uint64_t a1)
{
  if (!qword_28140B478)
  {
    sub_22B35DF1C();
    v1 = sub_22B360FFC();
    if (!v2)
    {
      atomic_store(v1, &qword_28140B478);
    }
  }
}

void sub_22B12F49C()
{
  if (!qword_281409358)
  {
    v0 = sub_22B360FFC();
    if (!v1)
    {
      atomic_store(v0, &qword_281409358);
    }
  }
}

uint64_t sub_22B12F4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B124D88;

  return v9(a1, a2, a3);
}

uint64_t sub_22B12F614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B124D88;

  return v9(a1, a2, a3);
}

uint64_t sub_22B12F73C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B124D88;

  return v9(a1, a2, a3);
}

uint64_t sub_22B12F864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 32) + **(a7 + 32));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_22B12F9BC;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_22B12F9BC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_22B12FB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 40) + **(a5 + 40));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22B119A60;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_22B12FC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B12FCF0, 0, 0);
}

uint64_t sub_22B12FCF0()
{
  v1 = v0[3];
  if (*(v1 + 16))
  {
    v2 = v0[7];
    v3 = v0[4];
    v4 = sub_22B360B6C();
    (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
    v5 = swift_allocObject();
    v5[2] = 0;
    v5[3] = 0;
    v5[4] = v3;
    v5[5] = v1;

    sub_22B130048(v2, &unk_22B363848, v5);
    sub_22B123284(v2, &qword_27D8BA8D0, &qword_22B363610);
  }

  v6 = v0[5];
  if (*(v6 + 16))
  {
    v7 = v0[7];
    v8 = v0[4];
    v9 = sub_22B360B6C();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v8;
    v10[5] = v6;

    sub_22B130048(v7, &unk_22B363858, v10);
    sub_22B123284(v7, &qword_27D8BA8D0, &qword_22B363610);
  }

  v11 = v0[6];
  if (*(v11 + 16))
  {
    v12 = v0[7];
    v13 = v0[4];
    v14 = sub_22B360B6C();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v13;
    v15[5] = v11;

    sub_22B130048(v12, &unk_22B363868, v15);
    sub_22B123284(v12, &qword_27D8BA8D0, &qword_22B363610);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_22B12FFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_22B124D88;

  return sub_22B1303FC(a5);
}

uint64_t sub_22B130048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v20 - v9;
  sub_22B124BA8(a1, v20 - v9);
  v11 = sub_22B360B6C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_22B123284(v10, &qword_27D8BA8D0, &qword_22B363610);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_22B360ACC();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_22B360B5C();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t sub_22B130250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_22B119A60;

  return sub_22B1306FC(a5);
}

uint64_t sub_22B1302F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_22B124D88;

  return sub_22B1309C4(a5);
}

uint64_t sub_22B1303A0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_22B1303FC(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_22B36052C();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1304BC, 0, 0);
}

uint64_t sub_22B1304BC()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_22B36050C();
  v6 = sub_22B360D0C();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[5];
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *(v8 + 16);

    _os_log_impl(&dword_22B116000, v5, v6, "[ActivityLogCoordinator] Batch processing %ld load events", v9, 0xCu);
    MEMORY[0x23188F650](v9, -1, -1);
  }

  else
  {
  }

  (*(v0[7] + 8))(v0[8], v0[6]);
  if (qword_27D8B9F88 != -1)
  {
    swift_once();
  }

  v10 = qword_27D8BB1B0;
  v0[9] = qword_27D8BB1B0;

  return MEMORY[0x2822009F8](sub_22B130690, v10, 0);
}

uint64_t sub_22B130690()
{
  sub_22B186604(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B1306FC(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_22B36052C();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1307BC, 0, 0);
}

uint64_t sub_22B1307BC()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_22B36050C();
  v6 = sub_22B360D0C();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[5];
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *(v8 + 16);

    _os_log_impl(&dword_22B116000, v5, v6, "[ActivityLogCoordinator] Batch processing %ld hourly session digest events", v9, 0xCu);
    MEMORY[0x23188F650](v9, -1, -1);
  }

  else
  {
  }

  (*(v0[7] + 8))(v0[8], v0[6]);
  if (qword_27D8B9FB8 != -1)
  {
    swift_once();
  }

  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_22B1352BC;
  v11 = v0[5];

  return sub_22B3187AC(v11);
}

uint64_t sub_22B1309C4(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_22B36052C();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B130A84, 0, 0);
}

uint64_t sub_22B130A84()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_22B36050C();
  v6 = sub_22B360D0C();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[5];
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *(v8 + 16);

    _os_log_impl(&dword_22B116000, v5, v6, "[ActivityLogCoordinator] Batch processing %ld daily session digest events", v9, 0xCu);
    MEMORY[0x23188F650](v9, -1, -1);
  }

  else
  {
  }

  (*(v0[7] + 8))(v0[8], v0[6]);
  if (qword_27D8B9F78 != -1)
  {
    swift_once();
  }

  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_22B130C8C;
  v11 = v0[5];

  return sub_22B175388(v11);
}

uint64_t sub_22B130C8C()
{
  v2 = *v1;

  if (v0)
  {
  }

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_22B130DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a1;
  v5[22] = a3;
  v6 = sub_22B36052C();
  v5[25] = v6;
  v5[26] = *(v6 - 8);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v7 = sub_22B35E7EC();
  v5[29] = v7;
  v5[30] = *(v7 - 8);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v8 = sub_22B35E6AC();
  v5[33] = v8;
  v5[34] = *(v8 - 8);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v9 = sub_22B35EA1C();
  v5[37] = v9;
  v5[38] = *(v9 - 8);
  v5[39] = swift_task_alloc();
  v10 = sub_22B35E9CC();
  v5[40] = v10;
  v5[41] = *(v10 - 8);
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v11 = sub_22B35E41C();
  v5[44] = v11;
  v5[45] = *(v11 - 8);
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v12 = sub_22B35EACC();
  v5[48] = v12;
  v5[49] = *(v12 - 8);
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA248, &unk_22B3637E0);
  v5[52] = swift_task_alloc();
  v13 = sub_22B35DE9C();
  v5[53] = v13;
  v5[54] = *(v13 - 8);
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v14 = sub_22B35EA0C();
  v5[57] = v14;
  v5[58] = *(v14 - 8);
  v5[59] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1311D0, 0, 0);
}

uint64_t sub_22B1311D0()
{
  v2 = *(v0 + 440);
  v1 = *(v0 + 448);
  v3 = *(v0 + 424);
  v4 = *(v0 + 432);
  v5 = *(v0 + 192);
  __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  sub_22B35DE6C();
  sub_22B35DDCC();
  v6 = *(v4 + 8);
  v6(v2, v3);
  sub_22B35DE6C();
  sub_22B35EA7C();
  v6(v2, v3);
  v6(v1, v3);
  __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  v7 = sub_22B35EA8C();
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA258, &qword_22B363808);
  *(v0 + 40) = v10;
  *(v0 + 48) = sub_22B134D30();
  *(v0 + 16) = v7;
  *(v0 + 24) = v9;
  v11 = __swift_project_boxed_opaque_existential_1((v0 + 16), v10);
  v12 = *(v10 - 8);
  v13 = swift_task_alloc();
  (*(v12 + 16))(v13, v11, v10);
  *(v0 + 80) = swift_getAssociatedTypeWitness();
  *(v0 + 88) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  (*v13)();

  *(v0 + 608) = *MEMORY[0x277D17968];
  *(v0 + 612) = *MEMORY[0x277D17500];
  v14 = MEMORY[0x277D174F8];
  *(v0 + 616) = *MEMORY[0x277D174F0];
  *(v0 + 620) = *v14;
  *(v0 + 624) = *MEMORY[0x277D175C0];
  v15 = MEMORY[0x277D84F90];
  *(v0 + 528) = MEMORY[0x277D84F90];
  *(v0 + 520) = v15;
  *(v0 + 504) = 0;
  *(v0 + 512) = v15;
  *(v0 + 488) = v15;
  *(v0 + 496) = v15;
  *(v0 + 480) = v15;
  v16 = *(v0 + 80);
  v17 = *(v0 + 88);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v16);
  v18 = swift_task_alloc();
  *(v0 + 536) = v18;
  *v18 = v0;
  v18[1] = sub_22B131510;
  v19 = *(v0 + 416);

  return MEMORY[0x282200310](v19, 0, 0, v0 + 144, v16, v17);
}

uint64_t sub_22B131510()
{

  if (v0)
  {
    v1 = sub_22B132D24;
  }

  else
  {
    v1 = sub_22B131620;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_22B131620()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 384);
  v3 = *(v0 + 392);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 528);
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    v5 = *(v4 + 16);
    v6 = *(v0 + 512);
    if (v5 || *(v6 + 16) || *(*(v0 + 520) + 16))
    {
      v7 = *(v0 + 528);
      v8 = *(v0 + 520);
      v9 = *(v0 + 192);
      v10 = swift_task_alloc();
      *(v0 + 592) = v10;
      v10[2] = v7;
      v10[3] = v9;
      v10[4] = v6;
      v10[5] = v8;
      v11 = swift_task_alloc();
      *(v0 + 600) = v11;
      *v11 = v0;
      v11[1] = sub_22B132A78;
LABEL_6:

      return MEMORY[0x282200600]();
    }

    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v109 = *(v0 + 8);
    v110 = *(v0 + 504);

    return v109(v110);
  }

  else
  {
    (*(v3 + 32))(*(v0 + 408), v1, v2);
    if (sub_22B360BFC())
    {
      v13 = *(v0 + 464);
      v12 = *(v0 + 472);
      v14 = *(v0 + 456);
      v15 = *(v0 + 408);
      v16 = *(v0 + 384);
      v17 = *(v0 + 392);

      sub_22B134CDC();
      swift_allocError();
      *v18 = 2;
      swift_willThrow();
      (*(v17 + 8))(v15, v16);
      (*(v13 + 8))(v12, v14);
      __swift_destroy_boxed_opaque_existential_0((v0 + 56));

      __swift_destroy_boxed_opaque_existential_0((v0 + 16));

      v19 = *(v0 + 8);

      return v19();
    }

    else
    {
      v20 = *(v0 + 608);
      v21 = *(v0 + 400);
      v22 = *(v0 + 384);
      v23 = *(v0 + 392);
      (*(v23 + 16))(v21, *(v0 + 408), v22);
      if ((*(v23 + 88))(v21, v22) != v20)
      {
        if (qword_28140A0C8 == -1)
        {
          goto LABEL_22;
        }

        goto LABEL_56;
      }

      v24 = *(v0 + 612);
      v25 = *(v0 + 400);
      v26 = *(v0 + 376);
      v28 = *(v0 + 360);
      v27 = *(v0 + 368);
      v29 = *(v0 + 352);
      (*(*(v0 + 392) + 96))(v25, *(v0 + 384));
      (*(v28 + 32))(v26, v25, v29);
      (*(v28 + 16))(v27, v26, v29);
      v30 = (*(v28 + 88))(v27, v29);
      if (v30 != v24)
      {
        if (v30 == *(v0 + 616))
        {
          v78 = *(v0 + 368);
          v80 = *(v0 + 280);
          v79 = *(v0 + 288);
          v81 = *(v0 + 264);
          v82 = *(v0 + 272);
          (*(*(v0 + 360) + 96))(v78, *(v0 + 352));
          v128 = *(v82 + 32);
          v128(v79, v78, v81);
          (*(v82 + 16))(v80, v79, v81);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v52 = *(v0 + 512);
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v52 = sub_22B32CCD0(0, *(v52 + 2) + 1, 1, *(v0 + 512));
          }

          v85 = *(v52 + 2);
          v84 = *(v52 + 3);
          if (v85 >= v84 >> 1)
          {
            v52 = sub_22B32CCD0((v84 > 1), v85 + 1, 1, v52);
          }

          v86 = *(v0 + 376);
          v87 = *(v0 + 352);
          v88 = *(v0 + 360);
          v89 = *(v0 + 280);
          v91 = *(v0 + 264);
          v90 = *(v0 + 272);
          (*(v90 + 8))(*(v0 + 288), v91);
          (*(v88 + 8))(v86, v87);
          *(v52 + 2) = v85 + 1;
          v128(&v52[((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v85], v89, v91);
          v51 = *(v0 + 528);
          v49 = *(v0 + 520);
          v53 = *(v0 + 496);
          v50 = v52;
          goto LABEL_27;
        }

        if (v30 == *(v0 + 620))
        {
          v95 = *(v0 + 368);
          v97 = *(v0 + 248);
          v96 = *(v0 + 256);
          v98 = *(v0 + 232);
          v99 = *(v0 + 240);
          (*(*(v0 + 360) + 96))(v95, *(v0 + 352));
          v129 = *(v99 + 32);
          v129(v96, v95, v98);
          (*(v99 + 16))(v97, v96, v98);
          v100 = swift_isUniquelyReferenced_nonNull_native();
          v53 = *(v0 + 520);
          if ((v100 & 1) == 0)
          {
            v53 = sub_22B32CCA8(0, *(v53 + 2) + 1, 1, *(v0 + 520));
          }

          v102 = *(v53 + 2);
          v101 = *(v53 + 3);
          if (v102 >= v101 >> 1)
          {
            v53 = sub_22B32CCA8((v101 > 1), v102 + 1, 1, v53);
          }

          v103 = *(v0 + 376);
          v104 = *(v0 + 352);
          v105 = *(v0 + 360);
          v106 = *(v0 + 248);
          v108 = *(v0 + 232);
          v107 = *(v0 + 240);
          (*(v107 + 8))(*(v0 + 256), v108);
          (*(v105 + 8))(v103, v104);
          *(v53 + 2) = v102 + 1;
          v129(&v53[((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v102], v106, v108);
          v51 = *(v0 + 528);
          v50 = *(v0 + 512);
          v49 = v53;
          goto LABEL_26;
        }

        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v111 = *(v0 + 224);
        v112 = *(v0 + 200);
        v113 = *(v0 + 208);
        v114 = __swift_project_value_buffer(v112, qword_28140BD10);
        swift_beginAccess();
        (*(v113 + 16))(v111, v114, v112);
        v115 = sub_22B36050C();
        v116 = sub_22B360D1C();
        if (os_log_type_enabled(v115, v116))
        {
          v117 = swift_slowAlloc();
          *v117 = 0;
          _os_log_impl(&dword_22B116000, v115, v116, "Unknown energykit event", v117, 2u);
          MEMORY[0x23188F650](v117, -1, -1);
        }

        v119 = *(v0 + 368);
        v118 = *(v0 + 376);
        v120 = *(v0 + 352);
        v121 = *(v0 + 360);
        v122 = *(v0 + 224);
        v123 = *(v0 + 200);
        v124 = *(v0 + 208);

        (*(v124 + 8))(v122, v123);
        v125 = *(v121 + 8);
        v125(v118, v120);
        v125(v119, v120);
        goto LABEL_25;
      }

      v31 = *(v0 + 624);
      v32 = *(v0 + 368);
      v33 = *(v0 + 344);
      v34 = *(v0 + 320);
      v35 = *(v0 + 328);
      v37 = *(v0 + 304);
      v36 = *(v0 + 312);
      v38 = *(v0 + 296);
      (*(*(v0 + 360) + 96))(v32, *(v0 + 352));
      v127 = *(v35 + 32);
      v127(v33, v32, v34);
      (*(v37 + 104))(v36, v31, v38);
      sub_22B134F24();
      sub_22B360A1C();
      sub_22B360A1C();
      (*(v37 + 8))(v36, v38);
      if (*(v0 + 152) != *(v0 + 160))
      {
        v92 = *(v0 + 376);
        v93 = *(v0 + 352);
        v94 = *(v0 + 360);
        (*(*(v0 + 328) + 8))(*(v0 + 344), *(v0 + 320));
        (*(v94 + 8))(v92, v93);
        goto LABEL_25;
      }

      (*(*(v0 + 328) + 16))(*(v0 + 336), *(v0 + 344), *(v0 + 320));
      v39 = swift_isUniquelyReferenced_nonNull_native();
      v40 = *(v0 + 528);
      if ((v39 & 1) == 0)
      {
        v40 = sub_22B32CCF8(0, *(v40 + 2) + 1, 1, *(v0 + 528));
      }

      v42 = *(v40 + 2);
      v41 = *(v40 + 3);
      if (v42 >= v41 >> 1)
      {
        v40 = sub_22B32CCF8((v41 > 1), v42 + 1, 1, v40);
      }

      v43 = *(v0 + 376);
      v44 = *(v0 + 352);
      v45 = *(v0 + 360);
      v46 = *(v0 + 336);
      v48 = *(v0 + 320);
      v47 = *(v0 + 328);
      (*(v47 + 8))(*(v0 + 344), v48);
      (*(v45 + 8))(v43, v44);
      *(v40 + 2) = v42 + 1;
      v127(&v40[((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v42], v46, v48);
      v49 = *(v0 + 520);
      v50 = *(v0 + 512);
      v51 = v40;
      v52 = *(v0 + 488);
      v53 = *(v0 + 496);
      while (1)
      {
        *(v0 + 560) = v53;
        *(v0 + 552) = v52;
        *(v0 + 544) = v40;
        v67 = *(v0 + 504);
        v68 = __OFADD__(v67, 1);
        v69 = v67 + 1;
        *(v0 + 568) = v69;
        if (!v68)
        {
          break;
        }

        __break(1u);
LABEL_56:
        swift_once();
LABEL_22:
        v55 = *(v0 + 208);
        v54 = *(v0 + 216);
        v56 = *(v0 + 200);
        v57 = __swift_project_value_buffer(v56, qword_28140BD10);
        swift_beginAccess();
        (*(v55 + 16))(v54, v57, v56);
        v58 = sub_22B36050C();
        v59 = sub_22B360D1C();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&dword_22B116000, v58, v59, "Unknown event type", v60, 2u);
          MEMORY[0x23188F650](v60, -1, -1);
        }

        v62 = *(v0 + 392);
        v61 = *(v0 + 400);
        v63 = *(v0 + 384);
        v65 = *(v0 + 208);
        v64 = *(v0 + 216);
        v66 = *(v0 + 200);

        (*(v65 + 8))(v64, v66);
        (*(v62 + 8))(v61, v63);
LABEL_25:
        v51 = *(v0 + 528);
        v49 = *(v0 + 520);
        v50 = *(v0 + 512);
        v53 = *(v0 + 496);
LABEL_26:
        v52 = *(v0 + 488);
LABEL_27:
        v40 = *(v0 + 480);
      }

      if (__ROR8__(0x8F5C28F5C28F5C29 * v69 + 0x51EB851EB851EB8, 2) <= 0x28F5C28F5C28F5CuLL)
      {
        v75 = *(v0 + 192);
        v76 = swift_task_alloc();
        *(v0 + 576) = v76;
        v76[2] = v51;
        v76[3] = v75;
        v76[4] = v50;
        v76[5] = v49;
        v77 = swift_task_alloc();
        *(v0 + 584) = v77;
        *v77 = v0;
        v77[1] = sub_22B13246C;
        goto LABEL_6;
      }

      (*(*(v0 + 392) + 8))(*(v0 + 408), *(v0 + 384));
      v70 = *(v0 + 568);
      *(v0 + 528) = v51;
      *(v0 + 520) = v49;
      *(v0 + 504) = v70;
      *(v0 + 512) = v50;
      *(v0 + 488) = v52;
      *(v0 + 496) = v53;
      *(v0 + 480) = v40;
      v71 = *(v0 + 80);
      v72 = *(v0 + 88);
      __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v71);
      v73 = swift_task_alloc();
      *(v0 + 536) = v73;
      *v73 = v0;
      v73[1] = sub_22B131510;
      v74 = *(v0 + 416);

      return MEMORY[0x282200310](v74, 0, 0, v0 + 144, v71, v72);
    }
  }
}

uint64_t sub_22B13246C()
{

  return MEMORY[0x2822009F8](sub_22B132584, 0, 0);
}

uint64_t sub_22B132584()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = v0[68];
  if (isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v2 + 16);
    v4 = swift_isUniquelyReferenced_nonNull_native();
    v5 = v0[68];
    if ((v4 & 1) == 0)
    {
      v5 = sub_22B32CCF8(0, v3, 1, v0[68]);
    }

    v6 = *(v0[41] + 80);
    v7 = v5 + ((v6 + 32) & ~v6);
    swift_arrayDestroy();
    if (v3)
    {
      v8 = *(v0[41] + 72);
      if (v8 * v3 > 0 || v7 >= &v7[v8 * v3 + (v5[2] - v3) * v8])
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v8)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v5[2] -= v3;
    }
  }

  else if (*(v2 + 24) > 1uLL)
  {
    v10 = v0[41];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA268, &unk_22B367680);
    v11 = *(v10 + 72);
    v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v5 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v5);
    if (!v11)
    {
      __break(1u);
      goto LABEL_67;
    }

    if (v13 - v12 == 0x8000000000000000 && v11 == -1)
    {
      goto LABEL_69;
    }

    v5[2] = 0;
    v5[3] = 2 * ((v13 - v12) / v11);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v20 = swift_isUniquelyReferenced_nonNull_native();
  v21 = v0[69];
  if (v20)
  {
    v22 = *(v21 + 16);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = v0[69];
    if ((v23 & 1) == 0)
    {
      v24 = sub_22B32CCD0(0, v22, 1, v0[69]);
    }

    v25 = *(v0[34] + 80);
    v26 = v24 + ((v25 + 32) & ~v25);
    swift_arrayDestroy();
    if (v22)
    {
      v27 = *(v0[34] + 72);
      if (v27 * v22 > 0 || v26 >= &v26[v27 * v22 + (v24[2] - v22) * v27])
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v27)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v24[2] -= v22;
    }

    goto LABEL_43;
  }

  if (*(v21 + 24) <= 1uLL)
  {

    v24 = MEMORY[0x277D84F90];
    goto LABEL_43;
  }

  v29 = v0[34];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA270, &unk_22B363830);
  v30 = *(v29 + 72);
  v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v24 = swift_allocObject();
  v13 = _swift_stdlib_malloc_size(v24);
  if (!v30)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v13 - v31 == 0x8000000000000000 && v30 == -1)
  {
    goto LABEL_70;
  }

  v24[2] = 0;
  v24[3] = 2 * ((v13 - v31) / v30);

LABEL_43:
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v34 = v0[70];
  if (v33)
  {
    v35 = *(v34 + 16);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v37 = v0[70];
    if ((v36 & 1) == 0)
    {
      v37 = sub_22B32CCA8(0, v35, 1, v0[70]);
    }

    v38 = *(v0[30] + 80);
    v39 = v37 + ((v38 + 32) & ~v38);
    swift_arrayDestroy();
    if (v35)
    {
      v40 = *(v0[30] + 72);
      if (v40 * v35 > 0 || v39 >= &v39[v40 * v35 + (v37[2] - v35) * v40])
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v40)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v37[2] -= v35;
    }

    (*(v0[49] + 8))(v0[51], v0[48]);
    goto LABEL_63;
  }

  if (*(v34 + 24) >= 2uLL)
  {
    v41 = v0[30];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA250, &unk_22B367FC0);
    v42 = *(v41 + 72);
    v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v37 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v37);
    if (v42)
    {
      if (v13 - v43 != 0x8000000000000000 || v42 != -1)
      {
        v37[2] = 0;
        v37[3] = 2 * ((v13 - v43) / v42);
        goto LABEL_59;
      }

LABEL_71:
      __break(1u);
      return MEMORY[0x282200310](v13, v14, v15, v16, v17, v18);
    }

    goto LABEL_68;
  }

  v37 = MEMORY[0x277D84F90];
LABEL_59:
  (*(v0[49] + 8))(v0[51], v0[48]);

LABEL_63:
  v45 = v0[71];
  v0[66] = v5;
  v0[65] = v37;
  v0[63] = v45;
  v0[64] = v24;
  v0[61] = v24;
  v0[62] = v37;
  v0[60] = v5;
  v46 = v0[10];
  v47 = v0[11];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v46);
  v48 = swift_task_alloc();
  v0[67] = v48;
  *v48 = v0;
  v48[1] = sub_22B131510;
  v13 = v0[52];
  v16 = v0 + 18;
  v14 = 0;
  v15 = 0;
  v17 = v46;
  v18 = v47;

  return MEMORY[0x282200310](v13, v14, v15, v16, v17, v18);
}

uint64_t sub_22B132A78()
{

  return MEMORY[0x2822009F8](sub_22B132BAC, 0, 0);
}

uint64_t sub_22B132BAC()
{
  (*(v0[58] + 8))(v0[59], v0[57]);

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];
  v2 = v0[63];

  return v1(v2);
}

uint64_t sub_22B132D24()
{
  (*(v0[58] + 8))(v0[59], v0[57]);

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22B132EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  v5 = sub_22B35E7EC();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v6 = sub_22B35E41C();
  v4[24] = v6;
  v4[25] = *(v6 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v7 = sub_22B35EACC();
  v4[28] = v7;
  v4[29] = *(v7 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA248, &unk_22B3637E0);
  v4[32] = swift_task_alloc();
  v8 = sub_22B36052C();
  v4[33] = v8;
  v4[34] = *(v8 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v9 = sub_22B35DE9C();
  v4[41] = v9;
  v4[42] = *(v9 - 8);
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v10 = sub_22B35EA2C();
  v4[45] = v10;
  v4[46] = *(v10 - 8);
  v4[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1331EC, 0, 0);
}

uint64_t sub_22B1331EC()
{
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v3 = *(v0 + 328);
  v4 = *(v0 + 336);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v7 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  sub_22B35D89C();
  sub_22B35D86C();
  MEMORY[0x23188C390](v7, v1, v2, 200000, v6);
  v8 = *(v4 + 8);
  v8(v2, v3);
  v8(v1, v3);
  __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  sub_22B35EA9C();
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 320);
  v10 = *(v0 + 264);
  v11 = *(v0 + 272);
  v12 = __swift_project_value_buffer(v10, qword_28140BD10);
  *(v0 + 384) = v12;
  swift_beginAccess();
  v13 = *(v11 + 16);
  *(v0 + 392) = v13;
  *(v0 + 400) = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v9, v12, v10);
  v14 = sub_22B36050C();
  v15 = sub_22B360D1C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_22B116000, v14, v15, "[ActivityLogCoordinator] Downloading Older Digests", v16, 2u);
    MEMORY[0x23188F650](v16, -1, -1);
  }

  v17 = *(v0 + 320);
  v18 = *(v0 + 264);
  v19 = *(v0 + 272);

  v20 = *(v19 + 8);
  *(v0 + 408) = v20;
  v20(v17, v18);
  v21 = *(v0 + 40);
  v22 = __swift_project_boxed_opaque_existential_1((v0 + 16), v21);
  v23 = *(v21 - 8);
  v24 = swift_task_alloc();
  (*(v23 + 16))(v24, v22, v21);
  *(v0 + 80) = swift_getAssociatedTypeWitness();
  *(v0 + 88) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  sub_22B360C1C();

  *(v0 + 488) = *MEMORY[0x277D17968];
  v25 = MEMORY[0x277D84F90];
  *(v0 + 492) = *MEMORY[0x277D174F8];
  *(v0 + 424) = 0;
  *(v0 + 432) = v25;
  *(v0 + 416) = 0;
  v26 = *(v0 + 80);
  v27 = *(v0 + 88);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v26);
  v28 = swift_task_alloc();
  *(v0 + 440) = v28;
  *v28 = v0;
  v28[1] = sub_22B1335A8;
  v29 = *(v0 + 256);

  return MEMORY[0x282200310](v29, 0, 0, v0 + 120, v26, v27);
}

uint64_t sub_22B1335A8()
{

  if (v0)
  {

    v1 = sub_22B1348E0;
  }

  else
  {
    v1 = sub_22B1336C0;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_22B1336C0()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 432);
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    if (*(v4 + 16))
    {
      v5 = swift_task_alloc();
      *(v0 + 480) = v5;
      *v5 = v0;
      v5[1] = sub_22B1345B0;
      v6 = *(v0 + 432);

      return sub_22B1309C4(v6);
    }

    goto LABEL_21;
  }

  (*(v3 + 32))(*(v0 + 248), v1, v2);
  v8 = sub_22B360BFC();
  v9 = *(v0 + 248);
  if (v8)
  {
    v10 = *(v0 + 224);
    v11 = *(v0 + 232);

    sub_22B134CDC();
    v12 = swift_allocError();
    *v13 = 2;
    swift_willThrow();
    (*(v11 + 8))(v9, v10);
    v14 = *(v0 + 392);
    v15 = *(v0 + 384);
    v16 = *(v0 + 280);
    v17 = *(v0 + 264);
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    v14(v16, v15, v17);
    v18 = v12;
    v19 = sub_22B36050C();
    v20 = sub_22B360D1C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = v12;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_22B116000, v19, v20, "Failed to fetch event digests: %@", v21, 0xCu);
      sub_22B123284(v22, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v22, -1, -1);
      MEMORY[0x23188F650](v21, -1, -1);
    }

    else
    {
    }

    (*(v0 + 408))(*(v0 + 280), *(v0 + 264));
LABEL_21:
    (*(v0 + 392))(*(v0 + 288), *(v0 + 384), *(v0 + 264));
    v59 = sub_22B36050C();
    v60 = sub_22B360D1C();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = *(v0 + 416);
      v62 = swift_slowAlloc();
      *v62 = 134217984;
      *(v62 + 4) = v61;
      _os_log_impl(&dword_22B116000, v59, v60, "[ActivityLogCoordinator] Downloaded %ld older load daily digests", v62, 0xCu);
      MEMORY[0x23188F650](v62, -1, -1);
    }

    v63 = *(v0 + 408);
    v65 = *(v0 + 368);
    v64 = *(v0 + 376);
    v66 = *(v0 + 360);
    v67 = *(v0 + 288);
    v68 = *(v0 + 264);

    v63(v67, v68);
    (*(v65 + 8))(v64, v66);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v69 = *(v0 + 8);
    v70 = *(v0 + 416);

    return v69(v70);
  }

  v25 = *(v0 + 488);
  v27 = *(v0 + 232);
  v26 = *(v0 + 240);
  v28 = *(v0 + 224);
  (*(v27 + 16))(v26, *(v0 + 248), v28);
  if ((*(v27 + 88))(v26, v28) != v25)
  {
    (*(v0 + 392))(*(v0 + 296), *(v0 + 384), *(v0 + 264));
    v71 = sub_22B36050C();
    v72 = sub_22B360D1C();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_22B116000, v71, v72, "Unknown event type", v73, 2u);
      MEMORY[0x23188F650](v73, -1, -1);
    }

    v74 = *(v0 + 408);
    v75 = *(v0 + 296);
    v76 = *(v0 + 264);
    v78 = *(v0 + 240);
    v77 = *(v0 + 248);
    v79 = *(v0 + 224);
    v80 = *(v0 + 232);

    v74(v75, v76);
    v81 = *(v80 + 8);
    v81(v77, v79);
    v81(v78, v79);
    goto LABEL_32;
  }

  v29 = *(v0 + 492);
  v30 = *(v0 + 240);
  v31 = *(v0 + 216);
  v33 = *(v0 + 200);
  v32 = *(v0 + 208);
  v34 = *(v0 + 192);
  (*(*(v0 + 232) + 96))(v30, *(v0 + 224));
  (*(v33 + 32))(v31, v30, v34);
  (*(v33 + 16))(v32, v31, v34);
  if ((*(v33 + 88))(v32, v34) != v29)
  {
    (*(v0 + 392))(*(v0 + 304), *(v0 + 384), *(v0 + 264));
    v82 = sub_22B36050C();
    v83 = sub_22B360D1C();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_22B116000, v82, v83, "Unknown energykit event", v84, 2u);
      MEMORY[0x23188F650](v84, -1, -1);
    }

    v85 = *(v0 + 408);
    v86 = *(v0 + 304);
    v87 = *(v0 + 264);
    v88 = *(v0 + 232);
    v101 = *(v0 + 224);
    v102 = *(v0 + 248);
    v89 = *(v0 + 216);
    v103 = *(v0 + 208);
    v91 = *(v0 + 192);
    v90 = *(v0 + 200);

    v85(v86, v87);
    v92 = *(v90 + 8);
    v92(v89, v91);
    (*(v88 + 8))(v102, v101);
    v92(v103, v91);
LABEL_32:
    v42 = *(v0 + 432);
    v58 = *(v0 + 416);
    goto LABEL_33;
  }

  v35 = *(v0 + 208);
  v36 = *(v0 + 184);
  v38 = *(v0 + 168);
  v37 = *(v0 + 176);
  v39 = *(v0 + 160);
  (*(*(v0 + 200) + 96))(v35, *(v0 + 192));
  v40 = *(v38 + 32);
  v40(v36, v35, v39);
  (*(v38 + 16))(v37, v36, v39);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *(v0 + 432);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v42 = sub_22B32CCA8(0, *(v42 + 2) + 1, 1, *(v0 + 432));
  }

  v44 = *(v42 + 2);
  v43 = *(v42 + 3);
  if (v44 >= v43 >> 1)
  {
    v42 = sub_22B32CCA8((v43 > 1), v44 + 1, 1, v42);
  }

  *(v0 + 448) = v42;
  v45 = *(v0 + 424);
  v47 = *(v0 + 168);
  v46 = *(v0 + 176);
  v48 = *(v0 + 160);
  *(v42 + 2) = v44 + 1;
  v49 = *(v47 + 80);
  *(v0 + 496) = v49;
  v50 = *(v47 + 72);
  *(v0 + 456) = v50;
  v40(&v42[((v49 + 32) & ~v49) + v50 * v44], v46, v48);
  v51 = v45 + 1;
  *(v0 + 464) = v45 + 1;
  if (__OFADD__(v45, 1))
  {
    __break(1u);
LABEL_44:
    swift_once();
    goto LABEL_40;
  }

  if (v44 < 0x63)
  {
    v52 = *(v0 + 248);
    v53 = *(v0 + 224);
    v54 = *(v0 + 232);
    v55 = *(v0 + 216);
    v56 = *(v0 + 192);
    v57 = *(v0 + 200);
    (*(*(v0 + 168) + 8))(*(v0 + 184), *(v0 + 160));
    (*(v57 + 8))(v55, v56);
    (*(v54 + 8))(v52, v53);
    v58 = vdupq_n_s64(v51);
LABEL_33:
    *(v0 + 432) = v42;
    *(v0 + 416) = v58;
    v93 = *(v0 + 80);
    v94 = *(v0 + 88);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v93);
    v95 = swift_task_alloc();
    *(v0 + 440) = v95;
    *v95 = v0;
    v95[1] = sub_22B1335A8;
    v96 = *(v0 + 256);

    return MEMORY[0x282200310](v96, 0, 0, v0 + 120, v93, v94);
  }

  (*(v0 + 392))(*(v0 + 312), *(v0 + 384), *(v0 + 264));

  v97 = sub_22B36050C();
  v98 = sub_22B360D0C();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    *v99 = 134217984;
    *(v99 + 4) = *(v42 + 2);

    _os_log_impl(&dword_22B116000, v97, v98, "[ActivityLogCoordinator] Batch processing %ld daily session digest events", v99, 0xCu);
    MEMORY[0x23188F650](v99, -1, -1);
  }

  else
  {
  }

  (*(v0 + 408))(*(v0 + 312), *(v0 + 264));
  if (qword_27D8B9F78 != -1)
  {
    goto LABEL_44;
  }

LABEL_40:
  v100 = swift_task_alloc();
  *(v0 + 472) = v100;
  *v100 = v0;
  v100[1] = sub_22B1341D0;

  return sub_22B175388(v42);
}

uint64_t sub_22B1341D0()
{

  if (v0)
  {
  }

  return MEMORY[0x2822009F8](sub_22B1342D8, 0, 0);
}

uint64_t sub_22B1342D8()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 448);
  if (isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v2 + 16);
    v4 = swift_isUniquelyReferenced_nonNull_native();
    v5 = *(v0 + 448);
    if ((v4 & 1) == 0)
    {
      v5 = sub_22B32CCA8(0, v3, 1, *(v0 + 448));
    }

    v6 = v5 + ((*(v0 + 496) + 32) & ~*(v0 + 496));
    swift_arrayDestroy();
    if (v3)
    {
      v7 = *(v0 + 456);
      if (v7 * v3 > 0 || v6 >= &v6[v7 * v3 + (v5[2] - v3) * v7])
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v7)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v5[2] -= v3;
    }

    v25 = *(v0 + 248);
    v26 = *(v0 + 224);
    v27 = *(v0 + 232);
    v28 = *(v0 + 216);
    v29 = *(v0 + 192);
    v30 = *(v0 + 200);
    (*(*(v0 + 168) + 8))(*(v0 + 184), *(v0 + 160));
    (*(v30 + 8))(v28, v29);
    (*(v27 + 8))(v25, v26);
    goto LABEL_24;
  }

  if (*(v2 + 24) >= 2uLL)
  {
    v9 = *(v0 + 456);
    v10 = (*(v0 + 496) + 32) & ~*(v0 + 496);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA250, &unk_22B367FC0);
    v5 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v5);
    if (v9)
    {
      v17 = *(v0 + 456);
      if (v11 - v10 != 0x8000000000000000 || v17 != -1)
      {
        v5[2] = 0;
        v5[3] = 2 * ((v11 - v10) / v17);
        goto LABEL_19;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return MEMORY[0x282200310](v11, v12, v13, v14, v15, v16);
  }

  v5 = MEMORY[0x277D84F90];
LABEL_19:
  v19 = *(v0 + 248);
  v20 = *(v0 + 224);
  v21 = *(v0 + 232);
  v22 = *(v0 + 216);
  v23 = *(v0 + 192);
  v24 = *(v0 + 200);
  (*(*(v0 + 168) + 8))(*(v0 + 184), *(v0 + 160));
  (*(v24 + 8))(v22, v23);
  (*(v21 + 8))(v19, v20);

LABEL_24:
  v31 = *(v0 + 464);
  *(v0 + 424) = v31;
  *(v0 + 432) = v5;
  *(v0 + 416) = v31;
  v32 = *(v0 + 80);
  v33 = *(v0 + 88);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v32);
  v34 = swift_task_alloc();
  *(v0 + 440) = v34;
  *v34 = v0;
  v34[1] = sub_22B1335A8;
  v11 = *(v0 + 256);
  v14 = v0 + 120;
  v12 = 0;
  v13 = 0;
  v15 = v32;
  v16 = v33;

  return MEMORY[0x282200310](v11, v12, v13, v14, v15, v16);
}

uint64_t sub_22B1345B0()
{

  return MEMORY[0x2822009F8](sub_22B1346C8, 0, 0);
}

uint64_t sub_22B1346C8()
{
  (*(v0 + 392))(*(v0 + 288), *(v0 + 384), *(v0 + 264));
  v1 = sub_22B36050C();
  v2 = sub_22B360D1C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 416);
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v3;
    _os_log_impl(&dword_22B116000, v1, v2, "[ActivityLogCoordinator] Downloaded %ld older load daily digests", v4, 0xCu);
    MEMORY[0x23188F650](v4, -1, -1);
  }

  v5 = *(v0 + 408);
  v7 = *(v0 + 368);
  v6 = *(v0 + 376);
  v8 = *(v0 + 360);
  v9 = *(v0 + 288);
  v10 = *(v0 + 264);

  v5(v9, v10);
  (*(v7 + 8))(v6, v8);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v11 = *(v0 + 8);
  v12 = *(v0 + 416);

  return v11(v12);
}

uint64_t sub_22B1348E0()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 392);
  v3 = *(v0 + 384);
  v4 = *(v0 + 280);
  v5 = *(v0 + 264);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v2(v4, v3, v5);
  v6 = v1;
  v7 = sub_22B36050C();
  v8 = sub_22B360D1C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_22B116000, v7, v8, "Failed to fetch event digests: %@", v9, 0xCu);
    sub_22B123284(v10, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v10, -1, -1);
    MEMORY[0x23188F650](v9, -1, -1);
  }

  else
  {
  }

  (*(v0 + 408))(*(v0 + 280), *(v0 + 264));
  (*(v0 + 392))(*(v0 + 288), *(v0 + 384), *(v0 + 264));
  v13 = sub_22B36050C();
  v14 = sub_22B360D1C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 416);
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = v15;
    _os_log_impl(&dword_22B116000, v13, v14, "[ActivityLogCoordinator] Downloaded %ld older load daily digests", v16, 0xCu);
    MEMORY[0x23188F650](v16, -1, -1);
  }

  v17 = *(v0 + 408);
  v19 = *(v0 + 368);
  v18 = *(v0 + 376);
  v20 = *(v0 + 360);
  v21 = *(v0 + 288);
  v22 = *(v0 + 264);

  v17(v21, v22);
  (*(v19 + 8))(v18, v20);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v23 = *(v0 + 8);
  v24 = *(v0 + 416);

  return v23(v24);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_22B134CDC()
{
  result = qword_281408E20;
  if (!qword_281408E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281408E20);
  }

  return result;
}

unint64_t sub_22B134D30()
{
  result = qword_27D8BA260;
  if (!qword_27D8BA260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8BA258, &qword_22B363808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BA260);
  }

  return result;
}

uint64_t sub_22B134D94(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_22B124D88;

  return sub_22B12FC4C(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_22B134E5C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_22B119A60;

  return sub_22B12FC4C(a1, a2, v6, v7, v9, v8);
}

unint64_t sub_22B134F24()
{
  result = qword_27D8BA278;
  if (!qword_27D8BA278)
  {
    sub_22B35EA1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BA278);
  }

  return result;
}

uint64_t sub_22B134F7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B124D88;

  return sub_22B12FFA0(a1, v4, v5, v7, v6);
}

uint64_t sub_22B13503C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B124D88;

  return sub_22B130250(a1, v4, v5, v7, v6);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B135144(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B124D88;

  return sub_22B1302F8(a1, v4, v5, v7, v6);
}

uint64_t sub_22B135204(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B124D88;

  return sub_22B1243B8(a1, v4);
}

id sub_22B1352C0()
{
  type metadata accessor for EnergyUtilityManager();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = [objc_opt_self() standardUserDefaults];
  *(v0 + 112) = result;
  strcpy((v0 + 120), "utilityEKSites");
  v2 = MEMORY[0x277D84F90];
  *(v0 + 135) = -18;
  *(v0 + 136) = v2;
  qword_27D8BB1A0 = v0;
  return result;
}

uint64_t sub_22B13534C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31 = a2;
  v5 = sub_22B36052C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v33 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_28140BD10);
  swift_beginAccess();
  v32 = *(v6 + 16);
  v32(v10, v11, v5);
  v12 = sub_22B36050C();
  v13 = sub_22B360D0C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30 = v6 + 16;
    v16 = v15;
    *&v37[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_22B1A7B20(0xD000000000000018, 0x800000022B368FD0, v37);
    _os_log_impl(&dword_22B116000, v12, v13, "EnergyKitUtilityActor->%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23188F650](v16, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);
  }

  v17 = *(v6 + 8);
  v17(v10, v5);
  v18 = *(v3 + 112);
  v19 = sub_22B36081C();
  v20 = [v18 objectForKey_];

  v21 = v33;
  if (v20)
  {
    sub_22B36102C();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37[0] = v35;
  v37[1] = v36;
  sub_22B137FC8(v37, &v35);
  if (*(&v36 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
    v22 = swift_dynamicCast();
    if (v22)
    {
      v23 = v34;
      *&v35 = a1;
      *(&v35 + 1) = v31;
      MEMORY[0x28223BE20](v22);
      *(&v30 - 2) = &v35;
      v24 = sub_22B207C78(sub_22B138090, (&v30 - 4), v23);

      goto LABEL_13;
    }
  }

  else
  {
    sub_22B123284(&v35, &unk_27D8BA950, &qword_22B364940);
  }

  v24 = 0;
LABEL_13:
  v32(v21, v11, v5);
  v25 = sub_22B36050C();
  v26 = sub_22B360CFC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v35 = v28;
    *v27 = 136315394;
    *(v27 + 4) = sub_22B1A7B20(0xD000000000000018, 0x800000022B368FD0, &v35);
    *(v27 + 12) = 1024;
    *(v27 + 14) = v24 & 1;
    _os_log_impl(&dword_22B116000, v25, v26, "%s Onboarding complete: %{BOOL}d", v27, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x23188F650](v28, -1, -1);
    MEMORY[0x23188F650](v27, -1, -1);
  }

  v17(v21, v5);
  sub_22B123284(v37, &unk_27D8BA950, &qword_22B364940);
  return v24 & 1;
}

uint64_t sub_22B13580C(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  v8 = sub_22B36052C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v66[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v69 = &v66[-v13];
  MEMORY[0x28223BE20](v14);
  v68 = &v66[-v15];
  MEMORY[0x28223BE20](v16);
  v18 = &v66[-v17];
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v8, qword_28140BD10);
  swift_beginAccess();
  v20 = *(v9 + 16);
  v73 = v9 + 16;
  v74 = v19;
  v72 = v20;
  v20(v18, v19, v8);
  v21 = sub_22B36050C();
  v22 = sub_22B360D0C();
  v23 = os_log_type_enabled(v21, v22);
  v71 = v9;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v70 = v11;
    v25 = v8;
    v26 = v24;
    v27 = a3;
    v28 = swift_slowAlloc();
    v77[0] = v28;
    *v26 = 136315138;
    *(v26 + 4) = sub_22B1A7B20(0xD000000000000024, 0x800000022B368FA0, v77);
    _os_log_impl(&dword_22B116000, v21, v22, "EnergyKitUtilityActor->%s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    v29 = v28;
    a3 = v27;
    MEMORY[0x23188F650](v29, -1, -1);
    v30 = v26;
    v8 = v25;
    v11 = v70;
    v9 = v71;
    MEMORY[0x23188F650](v30, -1, -1);
  }

  v31 = *(v9 + 8);
  v31(v18, v8);
  v67 = a3;
  if (a3)
  {
    v32 = swift_beginAccess();
    v33 = *(v4 + 136);
    v76[0] = a1;
    v76[1] = a2;
    MEMORY[0x28223BE20](v32);
    *&v66[-16] = v76;

    v34 = sub_22B207C78(sub_22B137FAC, &v66[-32], v33);

    if (v34)
    {
      v35 = v68;
      v72(v68, v74, v8);
      v36 = sub_22B36050C();
      v37 = sub_22B360D0C();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_22B116000, v36, v37, "already onboarded", v38, 2u);
        v39 = v38;
LABEL_19:
        MEMORY[0x23188F650](v39, -1, -1);
        goto LABEL_20;
      }

      goto LABEL_20;
    }

    swift_beginAccess();
    v49 = *(v4 + 136);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 136) = v49;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v49 = sub_22B32CD20(0, *(v49 + 2) + 1, 1, v49);
      *(v4 + 136) = v49;
    }

    v52 = *(v49 + 2);
    v51 = *(v49 + 3);
    if (v52 >= v51 >> 1)
    {
      v49 = sub_22B32CD20((v51 > 1), v52 + 1, 1, v49);
    }

    *(v49 + 2) = v52 + 1;
    v53 = &v49[16 * v52];
    *(v53 + 4) = a1;
    *(v53 + 5) = a2;
    *(v4 + 136) = v49;
    swift_endAccess();
  }

  else
  {
    swift_beginAccess();
    v40 = *(v4 + 136);
    v41 = *(v40 + 16);
    if (!v41)
    {
LABEL_17:
      v35 = v69;
      v72(v69, v74, v8);
      v36 = sub_22B36050C();
      v45 = sub_22B360D0C();
      if (os_log_type_enabled(v36, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_22B116000, v36, v45, "not yet onboarded", v46, 2u);
        v39 = v46;
        goto LABEL_19;
      }

LABEL_20:

      v47 = v35;
      v48 = v8;
      return (v31)(v47, v48);
    }

    v42 = 0;
    v43 = (v40 + 40);
    while (1)
    {
      v44 = *(v43 - 1) == a1 && *v43 == a2;
      if (v44 || (sub_22B36134C() & 1) != 0)
      {
        break;
      }

      ++v42;
      v43 += 2;
      if (v41 == v42)
      {
        goto LABEL_17;
      }
    }

    swift_beginAccess();
    sub_22B135FC4(v42);
    swift_endAccess();
  }

  v54 = *(v4 + 112);
  swift_beginAccess();

  v55 = sub_22B360A3C();

  v56 = sub_22B36081C();
  [v54 setObject:v55 forKey:v56];

  v72(v11, v74, v8);

  v57 = sub_22B36050C();
  v58 = v8;
  v59 = sub_22B360CFC();

  if (!os_log_type_enabled(v57, v59))
  {

    v47 = v11;
    v48 = v58;
    return (v31)(v47, v48);
  }

  v60 = swift_slowAlloc();
  v61 = swift_slowAlloc();
  v75 = v61;
  *v60 = 136315650;
  *(v60 + 4) = sub_22B1A7B20(0xD000000000000024, 0x800000022B368FA0, &v75);
  v70 = v11;
  *(v60 + 12) = 2080;
  if (v67)
  {
    v62 = 0x696472616F626E6FLL;
  }

  else
  {
    v62 = 0x72616F622D66666FLL;
  }

  v74 = v31;
  if (v67)
  {
    v63 = 0xEA0000000000676ELL;
  }

  else
  {
    v63 = 0xEC000000676E6964;
  }

  v64 = sub_22B1A7B20(v62, v63, &v75);

  *(v60 + 14) = v64;
  *(v60 + 22) = 2080;
  *(v60 + 24) = sub_22B1A7B20(a1, a2, &v75);
  _os_log_impl(&dword_22B116000, v57, v59, "%s Completed %s for %s", v60, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x23188F650](v61, -1, -1);
  MEMORY[0x23188F650](v60, -1, -1);

  return v74(v70, v58);
}
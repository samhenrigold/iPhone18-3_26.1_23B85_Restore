uint64_t sub_2407D129C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2408D4D30();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2407D12D0()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2407D1350()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2407D1388()
{
  v1 = sub_2408D3970();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = sub_2408D36F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v5 + v9) & ~v9;
  v14 = v3 | v9;
  v11 = (*(v8 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v2 + 8);
  v12(v0 + v4, v1);
  v12(v0 + v6, v1);
  (*(v8 + 8))(v0 + v10, v7);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v14 | 7);
}

uint64_t sub_2407D1514()
{
  v1 = sub_2408D36F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2407D15B0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2407D1600(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EF8, &qword_2408D76B0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2407D1678(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EF8, &qword_2408D76B0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2407D16F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2407D172C()
{
  MEMORY[0x245CCA030](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2407D1770()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2407D17BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2407D17FC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2407D1854(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2407D1864()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2407D18C0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2407D1940()
{
  v1 = sub_2408D4C40();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2407D1A18()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2407D1A68()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2407D1AA0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2407D1AE0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2407D1B44()
{
  v1 = sub_2408D4500();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2407D1C08()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2407D1C54()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2407D1C9C()
{
  swift_unknownObjectRelease();

  sub_240875A80(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2407D1CE4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2407D1D1C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507758, &qword_2408D85B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2407D1E30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5078B0, &qword_2408D8D68);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2407D1EC4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2407D1F10()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2407D1F50()
{
  v1 = sub_2408D4C40();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_2407D2028(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != 20)
  {
    sub_2408B2DE8(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_2407D2038()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2407D2070()
{
  v1 = sub_2408D3D60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2407D2194()
{
  v1 = sub_2408D4C40();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5 + 24));

  return MEMORY[0x2821FE8E8](v0, v5 + 80, v3 | 7);
}

uint64_t sub_2407D2298()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2407D22D8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2407D2310()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2407D234C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2408D38D0();
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

uint64_t sub_2407D2408(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2408D38D0();
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

uint64_t sub_2407D2554(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_2407D256C(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_2407D2588(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2407D29B0()
{
  v0 = sub_2408D4B20();
  __swift_allocate_value_buffer(v0, qword_27E5068F8);
  __swift_project_value_buffer(v0, qword_27E5068F8);
  return sub_2408D4940();
}

uint64_t sub_2407D29FC()
{
  v1 = sub_2408D3990();
  sub_2407D8D78(&qword_27E506AD8, 255, MEMORY[0x277CED460], MEMORY[0x277CED468]);
  v2 = swift_allocError();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277CED458], v1);
  sub_2407D2B30(v2);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[9];

  return swift_deallocClassInstance();
}

void sub_2407D2B30(void *a1)
{
  if (qword_27E5068F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2408D4B20();
  __swift_project_value_buffer(v2, qword_27E5068F8);
  v3 = a1;
  oslog = sub_2408D4B10();
  v4 = sub_2408D4F10();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v5 = 136315394;
    v8 = sub_2408D53B0();
    v10 = sub_2408CC504(v8, v9, &v14);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2112;
    v11 = a1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v12;
    *v6 = v12;
    _os_log_impl(&dword_2407CF000, oslog, v4, "%s handling cancellation for error: %@", v5, 0x16u);
    sub_2407D9440(v6, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x245CC9F60](v7, -1, -1);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }
}

uint64_t sub_2407D2D20(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v3[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506AB8, &qword_2408D7F20);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407D2DD0, 0, 0);
}

uint64_t sub_2407D2DD0()
{
  v17 = v0;
  if (qword_27E5068F0 != -1)
  {
    swift_once();
  }

  v1 = sub_2408D4B20();
  v0[10] = __swift_project_value_buffer(v1, qword_27E5068F8);

  v2 = sub_2408D4B10();
  v3 = sub_2408D4F10();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[5];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    v0[3] = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A48, &qword_2408D6808);
    v7 = sub_2408D4D40();
    v9 = sub_2408CC504(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2407CF000, v2, v3, "LocalRepairService called to repair with model: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x245CC9F60](v6, -1, -1);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  sub_2408D34B0();
  swift_allocObject();
  v15 = *(v0 + 5);
  v0[11] = sub_2408D34C0();
  sub_2408D49D0();
  sub_2408D48E0();
  swift_allocObject();
  v0[12] = sub_2408D48C0();
  sub_2408D48D0();
  v10 = swift_task_alloc();
  v0[13] = v10;
  v10[1] = vextq_s8(v15, v15, 8uLL);
  v11 = swift_task_alloc();
  v0[14] = v11;
  v12 = sub_2408D3C80();
  v0[15] = v12;
  *v11 = v0;
  v11[1] = sub_2407D3088;
  v13 = v0[9];

  return MEMORY[0x2821400E8](v13, &unk_2408D6848, v10, v12);
}

uint64_t sub_2407D3088()
{

  return MEMORY[0x2822009F8](sub_2407D31A0, 0, 0);
}

uint64_t sub_2407D31A0()
{
  v2 = v0[8];
  v1 = v0[9];
  sub_2408D48B0();
  sub_2408D34A0();
  sub_2407D93C8(v1, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = v0[8];
  v5 = v0[9];
  if (EnumCaseMultiPayload == 1)
  {
    v6 = *v4;
    v0[16] = v6;
    v0[2] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    swift_willThrowTypedImpl();

    sub_2407D9440(v5, &qword_27E506AB8, &qword_2408D7F20);
    v7 = v6;
    v8 = sub_2408D4B10();
    v9 = sub_2408D4F30();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = v6;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_2407CF000, v8, v9, "LocalRepairService caught overall repair failure: %@", v10, 0xCu);
      sub_2407D9440(v11, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v11, -1, -1);
      MEMORY[0x245CC9F60](v10, -1, -1);
    }

    v14 = swift_task_alloc();
    v0[17] = v14;
    *(v14 + 16) = v6;
    v20 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);
    v15 = swift_task_alloc();
    v0[18] = v15;
    *v15 = v0;
    v15[1] = sub_2407D34D8;

    return v20();
  }

  else
  {
    v17 = v0[15];
    v18 = v0[4];
    sub_2407D9440(v0[9], &qword_27E506AB8, &qword_2408D7F20);

    (*(*(v17 - 8) + 32))(v18, v4, v17);

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_2407D34D8()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_2407D3670;
  }

  else
  {

    v2 = sub_2407D35F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2407D35F4()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2407D3670()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2407D36EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2407D379C;

  return sub_2407D3F8C(a1, a3);
}

uint64_t sub_2407D379C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2407D3890(uint64_t a1, void *a2)
{
  v3 = sub_2408D39E0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506AD0, &qword_2408D6868);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_2408D3990();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v25 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E5068F0 != -1)
  {
    swift_once();
  }

  v13 = sub_2408D4B20();
  __swift_project_value_buffer(v13, qword_27E5068F8);
  v14 = sub_2408D4B10();
  v15 = sub_2408D4F20();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v24 = v11;
    v17 = v16;
    *v16 = 0;
    _os_log_impl(&dword_2407CF000, v14, v15, "Engaging with client to present error and wait for continuation", v16, 2u);
    v11 = v24;
    MEMORY[0x245CC9F60](v17, -1, -1);
  }

  v26 = a2;
  v18 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  v19 = swift_dynamicCast();
  v20 = *(v11 + 56);
  if (v19)
  {
    v20(v9, 0, 1, v10);
    v21 = v25;
    (*(v11 + 32))(v25, v9, v10);
    (*(v11 + 16))(v6, v21, v10);
    (*(v4 + 104))(v6, *MEMORY[0x277CED478], v3);
    sub_2408D3A00();
    return (*(v11 + 8))(v21, v10);
  }

  else
  {
    v20(v9, 1, 1, v10);
    sub_2407D9440(v9, &qword_27E506AD0, &qword_2408D6868);
    swift_getErrorValue();
    sub_2408D52B0();
    (*(v4 + 104))(v6, *MEMORY[0x277CED478], v3);
    return sub_2408D3A00();
  }
}

uint64_t sub_2407D3C74(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2408D39E0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407D3D34, 0, 0);
}

uint64_t sub_2407D3D34()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_2408D39F0();
  v4 = (*(v2 + 88))(v1, v3);
  v5 = *MEMORY[0x277CED478];
  (*(v2 + 8))(v1, v3);
  if (v4 == v5)
  {
    if (qword_27E5068F0 != -1)
    {
      swift_once();
    }

    v6 = sub_2408D4B20();
    __swift_project_value_buffer(v6, qword_27E5068F8);
    v7 = sub_2408D4B10();
    v8 = sub_2408D4F20();
    v9 = os_log_type_enabled(v7, v8);
    v10 = MEMORY[0x277CEDCA8];
    if (v9)
    {
      v11 = "Client is remaining in failed state";
LABEL_10:
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2407CF000, v7, v8, v11, v14, 2u);
      MEMORY[0x245CC9F60](v14, -1, -1);
    }
  }

  else
  {
    if (qword_27E5068F0 != -1)
    {
      swift_once();
    }

    v12 = sub_2408D4B20();
    __swift_project_value_buffer(v12, qword_27E5068F8);
    v7 = sub_2408D4B10();
    v8 = sub_2408D4F20();
    v13 = os_log_type_enabled(v7, v8);
    v10 = MEMORY[0x277CEDCB0];
    if (v13)
    {
      v11 = "Client has decided to proceed from the failure, moving on";
      goto LABEL_10;
    }
  }

  v15 = v0[2];

  v16 = *v10;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507260, &qword_2408D6860);
  (*(*(v17 - 8) + 104))(v15, v16, v17);

  v18 = v0[1];

  return v18();
}

uint64_t sub_2407D3F8C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A98, &qword_2408D6828);
  v3[5] = swift_task_alloc();
  v4 = sub_2408D38D0();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_2408D3C80();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v6 = sub_2408D48A0();
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v7 = sub_2408D3EC0();
  v3[19] = v7;
  v3[20] = *(v7 - 8);
  v3[21] = swift_task_alloc();
  v8 = sub_2408D3A30();
  v3[22] = v8;
  v3[23] = *(v8 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407D4234, 0, 0);
}

uint64_t sub_2407D4234()
{
  *(v0[4] + 88) = v0[3];

  v4 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_2407D42F8;
  v2 = v0[25];

  return v4(v2);
}

uint64_t sub_2407D42F8()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[27] = v3;
  *v3 = v2;
  v3[1] = sub_2407D4464;
  v4 = v1[25];
  v5 = v1[21];

  return sub_2407D5F4C(v5, v4);
}

uint64_t sub_2407D4464()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_2407D5780;
  }

  else
  {
    v2 = sub_2407D4578;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2407D4578()
{
  v56 = v0;
  if (sub_2408D3E50())
  {
    if (qword_27E5068F0 != -1)
    {
      swift_once();
    }

    v1 = sub_2408D4B20();
    *(v0 + 232) = __swift_project_value_buffer(v1, qword_27E5068F8);
    v2 = sub_2408D4B10();
    v3 = sub_2408D4F20();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2407CF000, v2, v3, "Continuing to repair locally", v4, 2u);
      MEMORY[0x245CC9F60](v4, -1, -1);
    }

    v5 = sub_2408D3EB0();
    *(v0 + 240) = v5;
    v6 = *(v5 + 16);
    *(v0 + 248) = v6;
    if (v6)
    {
      v7 = *(v0 + 120);
      v8 = *(v0 + 128);
      v9 = *(v8 + 16);
      v8 += 16;
      v10 = *(v8 + 64);
      *(v0 + 336) = v10;
      v11 = (v10 + 32) & ~v10;
      *(v0 + 256) = *(v8 + 56);
      *(v0 + 264) = v9;
      v12 = *(v0 + 144);
      *(v0 + 272) = 0;
      *(v0 + 280) = v8 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v9(v12, v5 + v11, v7);
      v13 = swift_task_alloc();
      *(v0 + 288) = v13;
      *v13 = v0;
      v13[1] = sub_2407D4BFC;
      v14 = *(v0 + 144);

      return sub_2407D6D78(v14);
    }

    else
    {

      v44 = sub_2408D4B10();
      v45 = sub_2408D4F20();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_2407CF000, v44, v45, "Configuring authentication mode to require user interaction for local setup", v46, 2u);
        MEMORY[0x245CC9F60](v46, -1, -1);
      }

      v54 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
      v47 = swift_task_alloc();
      *(v0 + 304) = v47;
      *v47 = v0;
      v47[1] = sub_2407D50F8;

      return v54(sub_2407D5E24, 0);
    }
  }

  else
  {
    if (qword_27E5068F0 != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 192);
    v17 = *(v0 + 200);
    v18 = *(v0 + 176);
    v19 = *(v0 + 184);
    v20 = sub_2408D4B20();
    __swift_project_value_buffer(v20, qword_27E5068F8);
    (*(v19 + 16))(v16, v17, v18);
    v21 = sub_2408D4B10();
    v22 = sub_2408D4F10();
    v23 = os_log_type_enabled(v21, v22);
    v25 = *(v0 + 184);
    v24 = *(v0 + 192);
    v26 = *(v0 + 176);
    if (v23)
    {
      v28 = *(v0 + 56);
      v27 = *(v0 + 64);
      v29 = *(v0 + 48);
      v30 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v30 = 136315138;
      v52 = v26;
      v55 = v50;
      sub_2408D3A10();
      sub_2407D8D78(&qword_27E506AA0, 255, MEMORY[0x277CED3D8], MEMORY[0x277CED3F0]);
      v31 = sub_2408D5220();
      v48 = v22;
      v33 = v32;
      (*(v28 + 8))(v27, v29);
      v34 = v52;
      v53 = *(v25 + 8);
      v53(v24, v34);
      v35 = sub_2408CC504(v31, v33, &v55);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_2407CF000, v21, v48, "No local repairs are neeed for account: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v50);
      MEMORY[0x245CC9F60](v50, -1, -1);
      MEMORY[0x245CC9F60](v30, -1, -1);
    }

    else
    {

      v53 = *(v25 + 8);
      v53(v24, v26);
    }

    v36 = *(v0 + 168);
    v49 = *(v0 + 200);
    v51 = *(v0 + 176);
    v37 = *(v0 + 152);
    v38 = *(v0 + 160);
    v39 = *(v0 + 56);
    v40 = *(v0 + 64);
    v42 = *(v0 + 40);
    v41 = *(v0 + 48);
    sub_2408D3A10();
    sub_2408D38B0();
    (*(v39 + 8))(v40, v41);
    (*(v38 + 16))(v42, v36, v37);
    (*(v38 + 56))(v42, 0, 1, v37);
    sub_2408D3C60();
    (*(v38 + 8))(v36, v37);
    v53(v49, v51);

    v43 = *(v0 + 8);

    return v43();
  }
}

uint64_t sub_2407D4BFC(char a1)
{
  v3 = *v2;
  *(v3 + 340) = a1;
  *(v3 + 296) = v1;

  if (v1)
  {
    v4 = sub_2407D588C;
  }

  else
  {
    v4 = sub_2407D4D14;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2407D4D14()
{
  v35 = v0;
  (*(v0 + 264))(*(v0 + 136), *(v0 + 144), *(v0 + 120));
  v1 = sub_2408D4B10();
  v2 = sub_2408D4F10();
  if (os_log_type_enabled(v1, v2))
  {
    v31 = *(v0 + 340);
    v3 = *(v0 + 136);
    v32 = *(v0 + 144);
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v34 = v7;
    *v6 = 136315394;
    sub_2407D8D78(&qword_27E506A38, 255, MEMORY[0x277CEDDC0], MEMORY[0x277CEDDD8]);
    v8 = sub_2408D5220();
    v10 = v9;
    v11 = *(v4 + 8);
    v11(v3, v5);
    v12 = sub_2408CC504(v8, v10, &v34);

    *(v6 + 4) = v12;
    *(v6 + 12) = 1024;
    *(v6 + 14) = v31;
    _os_log_impl(&dword_2407CF000, v1, v2, "Locally Repaired symptom: %s with result: %{BOOL}d", v6, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x245CC9F60](v7, -1, -1);
    MEMORY[0x245CC9F60](v6, -1, -1);

    v11(v32, v5);
  }

  else
  {
    v14 = *(v0 + 136);
    v13 = *(v0 + 144);
    v15 = *(v0 + 120);
    v16 = *(v0 + 128);

    v17 = *(v16 + 8);
    v17(v14, v15);
    v17(v13, v15);
  }

  v18 = *(v0 + 272) + 1;
  if (v18 == *(v0 + 248))
  {

    v19 = sub_2408D4B10();
    v20 = sub_2408D4F20();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2407CF000, v19, v20, "Configuring authentication mode to require user interaction for local setup", v21, 2u);
      MEMORY[0x245CC9F60](v21, -1, -1);
    }

    v33 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
    v22 = swift_task_alloc();
    *(v0 + 304) = v22;
    *v22 = v0;
    v22[1] = sub_2407D50F8;

    return v33(sub_2407D5E24, 0);
  }

  else
  {
    v24 = *(v0 + 264);
    v25 = *(v0 + 144);
    v26 = *(v0 + 120);
    v27 = *(v0 + 240) + ((*(v0 + 336) + 32) & ~*(v0 + 336)) + *(v0 + 256) * v18;
    v28 = (*(v0 + 128) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 272) = v18;
    *(v0 + 280) = v28;
    v24(v25, v27, v26);
    v29 = swift_task_alloc();
    *(v0 + 288) = v29;
    *v29 = v0;
    v29[1] = sub_2407D4BFC;
    v30 = *(v0 + 144);

    return sub_2407D6D78(v30);
  }
}

uint64_t sub_2407D50F8()
{
  v2 = *v1;
  v2[39] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2407D5BCC, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[40] = v3;
    *v3 = v2;
    v3[1] = sub_2407D5274;
    v4 = v2[25];
    v5 = v2[21];
    v6 = v2[14];

    return sub_2407D6730(v6, v4, v5);
  }
}

uint64_t sub_2407D5274()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_2407D5CF8;
  }

  else
  {
    v2 = sub_2407D5388;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2407D5388()
{
  v42 = v0;
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];
  v4 = *(v0[10] + 16);
  v4(v0[13], v1, v3);
  v4(v2, v1, v3);
  v5 = sub_2408D4B10();
  v6 = sub_2408D4F10();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[25];
  v9 = v0[23];
  v39 = v0[20];
  v40 = v0[22];
  v37 = v0[19];
  v38 = v0[21];
  if (v7)
  {
    log = v5;
    v33 = v6;
    v10 = v0[13];
    v29 = v0[11];
    v30 = v0[12];
    v36 = v0[10];
    v11 = v0[9];
    v35 = v0[25];
    v12 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v41 = v32;
    *v12 = 136315394;
    sub_2408D3C50();
    sub_2407D8D78(&qword_27E506AA8, 255, MEMORY[0x277CEDDC0], MEMORY[0x277CEDDC8]);
    v13 = sub_2408D4EF0();
    v15 = v14;

    v31 = v9;
    v16 = *(v36 + 8);
    v16(v10, v11);
    v17 = sub_2408CC504(v13, v15, &v41);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    v4(v29, v30, v11);
    v18 = sub_2408D4D40();
    v20 = v19;
    v16(v30, v11);
    v21 = sub_2408CC504(v18, v20, &v41);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_2407CF000, log, v33, "Finished locally repairing symptoms: %s with final report: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v32, -1, -1);
    MEMORY[0x245CC9F60](v12, -1, -1);

    (*(v39 + 8))(v38, v37);
    (*(v31 + 8))(v35, v40);
  }

  else
  {
    v22 = v0[12];
    v23 = v0[13];
    v24 = v0[9];
    v25 = v0[10];

    v26 = *(v25 + 8);
    v26(v22, v24);
    v26(v23, v24);
    (*(v39 + 8))(v38, v37);
    (*(v9 + 8))(v8, v40);
  }

  (*(v0[10] + 32))(v0[2], v0[14], v0[9]);

  v27 = v0[1];

  return v27();
}

uint64_t sub_2407D5780()
{
  (*(v0[23] + 8))(v0[25], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2407D588C()
{
  v1 = *(v0 + 296);
  v2 = v1;
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F30();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 296);
  v7 = *(v0 + 144);
  v8 = *(v0 + 120);
  v9 = (*(v0 + 128) + 8);
  if (v5)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_2407CF000, v3, v4, "Failed to repair symptom: %@", v10, 0xCu);
    sub_2407D9440(v11, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v11, -1, -1);
    MEMORY[0x245CC9F60](v10, -1, -1);
  }

  else
  {
  }

  (*v9)(v7, v8);
  v14 = *(v0 + 272) + 1;
  if (v14 == *(v0 + 248))
  {

    v15 = sub_2408D4B10();
    v16 = sub_2408D4F20();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2407CF000, v15, v16, "Configuring authentication mode to require user interaction for local setup", v17, 2u);
      MEMORY[0x245CC9F60](v17, -1, -1);
    }

    v27 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
    v18 = swift_task_alloc();
    *(v0 + 304) = v18;
    *v18 = v0;
    v18[1] = sub_2407D50F8;

    return v27(sub_2407D5E24, 0);
  }

  else
  {
    v20 = *(v0 + 264);
    v21 = *(v0 + 144);
    v22 = *(v0 + 120);
    v23 = *(v0 + 240) + ((*(v0 + 336) + 32) & ~*(v0 + 336)) + *(v0 + 256) * v14;
    v24 = (*(v0 + 128) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 272) = v14;
    *(v0 + 280) = v24;
    v20(v21, v23, v22);
    v25 = swift_task_alloc();
    *(v0 + 288) = v25;
    *v25 = v0;
    v25[1] = sub_2407D4BFC;
    v26 = *(v0 + 144);

    return sub_2407D6D78(v26);
  }
}

uint64_t sub_2407D5BCC()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  (*(v0[20] + 8))(v0[21], v0[19]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2407D5CF8()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  (*(v0[20] + 8))(v0[21], v0[19]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2407D5E24()
{
  v0 = sub_2408D4570();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v6[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277CEDC48]);
  v3 = sub_2408D39A0();
  v4 = sub_2408D3510();
  sub_2408D45C0();
  v4(v6, 0);
  return v3(v7, 0);
}

uint64_t sub_2407D5F4C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_2408D3A30();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_2408D3EC0();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_2408D38D0();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407D60D4, 0, 0);
}

uint64_t sub_2407D60D4()
{
  v1 = v0[4];
  v2 = v1[7];
  v0[15] = v2;
  v3 = v1[8];
  v0[16] = v3;
  v4 = v1[9];
  v0[17] = v4;
  v5 = v1[10];
  v0[18] = v5;
  v6 = v2;
  v7 = v3;
  v8 = v4;

  sub_2408D3A10();
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_2407D61DC;
  v10 = v0[14];
  v11 = v0[2];

  return sub_2408CE818(v11, v10, v6, v7, v8, v5);
}

uint64_t sub_2407D61DC()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *(*v1 + 112);
  v7 = *(*v1 + 96);
  v8 = *(*v1 + 88);
  v2[20] = v0;

  v9 = *(v7 + 8);
  v2[21] = v9;
  v2[22] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v6, v8);

  if (v0)
  {
    v10 = sub_2407D66A4;
  }

  else
  {
    v10 = sub_2407D63D4;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2407D63D4()
{
  v34 = v0;
  if (qword_27E5068F0 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v8 = v0[2];
  v7 = v0[3];
  v9 = sub_2408D4B20();
  __swift_project_value_buffer(v9, qword_27E5068F8);
  (*(v2 + 16))(v1, v8, v3);
  (*(v6 + 16))(v4, v7, v5);
  v10 = sub_2408D4B10();
  v11 = sub_2408D4F20();
  if (os_log_type_enabled(v10, v11))
  {
    v32 = v0[21];
    v12 = v0[13];
    v13 = v0[10];
    v14 = v0[9];
    v28 = v0[8];
    v15 = v0[6];
    v29 = v0[7];
    v30 = v0[11];
    v31 = v0[5];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v33 = v17;
    *v16 = 67109378;
    v18 = sub_2408D3E50() & 1;
    (*(v14 + 8))(v13, v28);
    *(v16 + 4) = v18;
    *(v16 + 8) = 2080;
    sub_2408D3A10();
    v19 = sub_2408D38B0();
    v21 = v20;
    v32(v12, v30);
    (*(v15 + 8))(v29, v31);
    v22 = sub_2408CC504(v19, v21, &v33);

    *(v16 + 10) = v22;
    _os_log_impl(&dword_2407CF000, v10, v11, "Repairs needed: %{BOOL}d for altDSID: %s", v16, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x245CC9F60](v17, -1, -1);
    MEMORY[0x245CC9F60](v16, -1, -1);
  }

  else
  {
    v23 = v0[7];
    v24 = v0[5];
    v25 = v0[6];
    (*(v0[9] + 8))(v0[10], v0[8]);

    (*(v25 + 8))(v23, v24);
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_2407D66A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2407D6730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A98, &qword_2408D6828);
  v4[6] = swift_task_alloc();
  v5 = sub_2408D38D0();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_2408D3EC0();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407D6888, 0, 0);
}

uint64_t sub_2407D6888()
{
  v1 = v0[5];
  v2 = v1[7];
  v0[13] = v2;
  v3 = v1[8];
  v0[14] = v3;
  v4 = v1[9];
  v0[15] = v4;
  v5 = v1[10];
  v0[16] = v5;
  v6 = v2;
  v7 = v3;
  v8 = v4;

  sub_2408D3A10();
  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_2407D6994;
  v10 = v0[12];
  v11 = v0[9];

  return sub_2408CE818(v10, v11, v6, v7, v8, v5);
}

uint64_t sub_2407D6994()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *(*v1 + 56);
  *(*v1 + 144) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {
    v8 = sub_2407D6CFC;
  }

  else
  {
    v8 = sub_2407D6B78;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2407D6B78()
{
  v1 = sub_2408D3E70();
  v2 = sub_2408D3E70();
  if (*(v2 + 16) <= *(v1 + 16) >> 3)
  {
    sub_24086C360(v2);
  }

  else
  {
    sub_24086C694(v2, v1);
  }

  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v6 = v0[6];
  sub_2408D3EA0();
  (*(v4 + 16))(v6, v3, v5);
  (*(v4 + 56))(v6, 0, 1, v5);
  sub_2408D3C60();
  (*(v4 + 8))(v3, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2407D6CFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2407D6D78(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_2408D45F0();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = sub_2408D4570();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = sub_2408D36A0();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  sub_2408D33D0();
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A18, &qword_2408D67E8);
  v2[19] = swift_task_alloc();
  sub_2408D38D0();
  v2[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0);
  v2[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507230, &unk_2408D7680);
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A30, &qword_2408D6800);
  v2[23] = swift_task_alloc();
  v6 = sub_2408D4830();
  v2[24] = v6;
  v2[25] = *(v6 - 8);
  v2[26] = swift_task_alloc();
  v7 = sub_2408D48A0();
  v2[27] = v7;
  v2[28] = *(v7 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407D70EC, 0, 0);
}

uint64_t sub_2407D70EC()
{
  v60 = v0;
  if (qword_27E5068F0 != -1)
  {
    swift_once();
  }

  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[7];
  v5 = sub_2408D4B20();
  __swift_project_value_buffer(v5, qword_27E5068F8);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F20();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[30];
  v12 = v0[27];
  v11 = v0[28];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v59[0] = v56;
    *v13 = 136315138;
    sub_2407D8D78(&qword_27E506A38, 255, MEMORY[0x277CEDDC0], MEMORY[0x277CEDDD8]);
    v14 = v6;
    v15 = sub_2408D5220();
    v17 = v16;
    v18 = v12;
    v19 = *(v11 + 8);
    v19(v10, v18);
    v20 = v15;
    v6 = v14;
    v21 = sub_2408CC504(v20, v17, v59);

    *(v13 + 4) = v21;
    _os_log_impl(&dword_2407CF000, v7, v8, "Attempting to locally repair symptom as client: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v56);
    MEMORY[0x245CC9F60](v56, -1, -1);
    MEMORY[0x245CC9F60](v13, -1, -1);
  }

  else
  {

    v22 = v12;
    v19 = *(v11 + 8);
    v19(v10, v22);
  }

  v23 = v0[25];
  v24 = v0[26];
  v25 = v0[24];
  sub_2408D4840();
  v26 = (*(v23 + 88))(v24, v25);
  if (v26 == *MEMORY[0x277CEDD80])
  {
    (*(v0[25] + 96))(v0[26], v0[24]);

    v27 = sub_2408D4B10();
    v28 = sub_2408D4F10();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v59[0] = v30;
      *v29 = 136315138;
      type metadata accessor for AIDAServiceType(0);
      sub_2407D8D78(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType, &unk_2408D65CC);
      v31 = sub_2408D4EF0();
      v33 = v32;

      v34 = sub_2408CC504(v31, v33, v59);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_2407CF000, v27, v28, "Not locally repairing missing services symptom, this is expected for setup: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x245CC9F60](v30, -1, -1);
      MEMORY[0x245CC9F60](v29, -1, -1);
    }

    else
    {
    }

LABEL_15:
    v57 = 0;
LABEL_16:

    v42 = v0[1];
    v43 = v57;
LABEL_21:

    return v42(v43);
  }

  if (v26 != *MEMORY[0x277CEDDA8])
  {
    if (v26 == *MEMORY[0x277CEDD88])
    {
      if (*(v0[8] + 88))
      {
        v57 = 1;
        goto LABEL_16;
      }

LABEL_20:
      sub_2407D90E0();
      swift_allocError();
      *v44 = 0;
      v44[1] = 0;
      swift_willThrow();

      v42 = v0[1];
      v43 = 0;
      goto LABEL_21;
    }

    if (v26 != *MEMORY[0x277CEDD90] && v26 != *MEMORY[0x277CEDDA0])
    {
      v6(v0[29], v0[7], v0[27]);
      v45 = sub_2408D4B10();
      v46 = sub_2408D4F40();
      v47 = os_log_type_enabled(v45, v46);
      v48 = v0[29];
      v49 = v0[27];
      if (v47)
      {
        v50 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v59[0] = v58;
        *v50 = 136315138;
        sub_2407D8D78(&qword_27E506A38, 255, MEMORY[0x277CEDDC0], MEMORY[0x277CEDDD8]);
        v51 = sub_2408D5220();
        v53 = v52;
        v19(v48, v49);
        v54 = sub_2408CC504(v51, v53, v59);

        *(v50 + 4) = v54;
        _os_log_impl(&dword_2407CF000, v45, v46, "Asked to locally repair unexpected symptom kind: %s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v58);
        MEMORY[0x245CC9F60](v58, -1, -1);
        MEMORY[0x245CC9F60](v50, -1, -1);
      }

      else
      {

        v19(v48, v49);
      }

      (*(v0[25] + 8))(v0[26], v0[24]);
      goto LABEL_15;
    }
  }

  v35 = *(v0[8] + 88);
  v0[31] = v35;
  if (!v35)
  {
    goto LABEL_20;
  }

  v36 = v0[23];
  v37 = sub_2408D3630();
  (*(*(v37 - 8) + 56))(v36, 1, 1, v37);

  v38 = swift_task_alloc();
  v0[32] = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A48, &qword_2408D6808);
  v0[33] = v39;
  v40 = sub_2407D917C(&qword_27E506A50, &qword_27E506A48, &qword_2408D6808, MEMORY[0x277CED890]);
  *v38 = v0;
  v38[1] = sub_2407D7990;
  v41 = v0[23];

  return MEMORY[0x28213FC20](v41, sub_240811518, 0, sub_24081153C, 0, v39, v37, v40);
}

uint64_t sub_2407D7990(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 272) = v1;

  if (v1)
  {
    sub_2407D9440(*(v4 + 184), &qword_27E506A30, &qword_2408D6800);

    v5 = sub_2407D80CC;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    *(v4 + 280) = a1;
    sub_2407D917C(&qword_27E506A58, &qword_27E506A48, &qword_2408D6808, MEMORY[0x277CED898]);
    v8 = sub_2408D4E00();
    v10 = v9;
    v5 = sub_2407D7B30;
    v6 = v8;
    v7 = v10;
  }

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2407D7B30()
{
  v1 = *(v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A60, &unk_2408D6810);
  sub_2407D917C(&qword_27E506A68, &qword_27E506A60, &unk_2408D6810, MEMORY[0x277CED540]);
  *(v0 + 288) = sub_2408D4680();

  sub_2407D9440(v1, &qword_27E506A30, &qword_2408D6800);

  return MEMORY[0x2822009F8](sub_2407D7C2C, 0, 0);
}

uint64_t sub_2407D7C2C()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[16];
  v5 = v0[13];
  v15 = v0[15];
  v16 = v0[14];
  v17 = v0[12];
  v18 = v0[11];
  v6 = v0[10];
  v19 = v0[9];
  v20 = v0[22];
  sub_2408D4890();
  v7 = sub_2408D3720();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  sub_2408D33C0();
  (*(v4 + 104))(v3, *MEMORY[0x277CED3A0], v15);
  sub_2408D38E0();
  v8 = sub_2408D3970();
  (*(*(v8 - 8) + 56))(v1, 0, 1, v8);
  (*(v5 + 104))(v16, *MEMORY[0x277CEDC40], v17);
  (*(v6 + 104))(v18, *MEMORY[0x277CEDC80], v19);
  sub_2408D4620();
  v9 = sub_2408D4660();
  (*(*(v9 - 8) + 56))(v20, 0, 1, v9);
  v10 = swift_task_alloc();
  v0[37] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A70, qword_2408D75E0);
  v0[38] = v11;
  v12 = sub_2407D917C(&qword_27E506A78, &qword_27E506A70, qword_2408D75E0, MEMORY[0x277CED890]);
  *v10 = v0;
  v10[1] = sub_2407D7F2C;
  v13 = v0[22];

  return MEMORY[0x28213FC20](v13, sub_2407EE4C0, 0, sub_2407EE4E4, 0, v11, v9, v12);
}

uint64_t sub_2407D7F2C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 312) = v1;

  if (v1)
  {
    v5 = *(v4 + 176);

    sub_2407D9440(v5, &qword_27E507230, &unk_2408D7680);
    v6 = sub_2407D8534;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    *(v4 + 320) = a1;
    sub_2407D917C(&qword_27E506A80, &qword_27E506A70, qword_2408D75E0, MEMORY[0x277CED898]);
    v9 = sub_2408D4E00();
    v11 = v10;
    v6 = sub_2407D81D4;
    v7 = v9;
    v8 = v11;
  }

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2407D80CC()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2407D81D4()
{
  v1 = *(v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A88, &qword_2408D6820);
  sub_2407D917C(&qword_27E506A90, &qword_27E506A88, &qword_2408D6820, MEMORY[0x277CED540]);
  *(v0 + 328) = sub_2408D4680();

  sub_2407D9440(v1, &qword_27E507230, &unk_2408D7680);

  return MEMORY[0x2822009F8](sub_2407D82D0, 0, 0);
}

uint64_t sub_2407D82D0()
{
  sub_2407D91C4(v0[8] + 16, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v6 = (*(v2 + 32) + **(v2 + 32));
  v3 = swift_task_alloc();
  v0[42] = v3;
  *v3 = v0;
  v3[1] = sub_2407D840C;
  v4 = v0[41];

  return v6(v4, v1, v2);
}

uint64_t sub_2407D840C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 344) = v1;

  if (v1)
  {
    v5 = sub_2407D8758;
  }

  else
  {
    *(v4 + 352) = a1;
    v5 = sub_2407D863C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2407D8534()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2407D863C()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_2407D8758()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1(0);
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2407D88BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2407D88DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

void *sub_2407D8944@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2407D8954(uint64_t a1, id *a2)
{
  result = sub_2408D4D10();
  *a2 = 0;
  return result;
}

uint64_t sub_2407D89CC(uint64_t a1, id *a2)
{
  v3 = sub_2408D4D20();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2407D8A4C@<X0>(uint64_t *a2@<X8>)
{
  sub_2408D4D30();
  v3 = sub_2408D4D00();

  *a2 = v3;
  return result;
}

uint64_t sub_2407D8A90()
{
  v0 = sub_2408D4D30();
  v1 = MEMORY[0x245CC91E0](v0);

  return v1;
}

uint64_t sub_2407D8ACC(uint64_t a1)
{
  sub_2408D4D30();
  sub_2408D4D60();
}

uint64_t sub_2407D8B20(uint64_t a1)
{
  sub_2408D4D30();
  sub_2408D5300();
  sub_2408D4D60();
  v1 = sub_2408D5320();

  return v1;
}

uint64_t sub_2407D8B94(void *a1, uint64_t *a2)
{
  v2 = sub_2408D4D30();
  v4 = v3;
  if (v2 == sub_2408D4D30() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2408D5240();
  }

  return v7 & 1;
}

uint64_t sub_2407D8C1C(uint64_t a1)
{
  v2 = sub_2407D8D78(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType, &unk_2408D65CC);
  v3 = sub_2407D8D78(&qword_27E506A10, 255, type metadata accessor for AIDAServiceType, &unk_2408D6574);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2407D8D78(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2407D8E0C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_2408D4D00();

  *a2 = v3;
  return result;
}

uint64_t sub_2407D8E54(uint64_t a1)
{
  v2 = sub_2407D8D78(&qword_27E5069F8, 255, type metadata accessor for AATermsEntry, &unk_2408D670C);
  v3 = sub_2407D8D78(&unk_27E506A00, 255, type metadata accessor for AATermsEntry, &unk_2408D66B4);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2407D9008(uint64_t a1, uint64_t a2)
{
  result = sub_2407D8D78(&qword_27E5069F0, a2, type metadata accessor for LocalRepairService, &unk_2408D6794);
  *(a1 + 8) = result;
  return result;
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

unint64_t sub_2407D90E0()
{
  result = qword_27E506A40;
  if (!qword_27E506A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E506A40);
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

uint64_t sub_2407D917C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_2407D91C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
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

uint64_t sub_2407D931C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2407D379C;

  return sub_2407D36EC(a1, v5, v4);
}

uint64_t sub_2407D93C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506AB8, &qword_2408D7F20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2407D9440(uint64_t a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2407D94AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2407D94FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2407D9550(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_2407D956C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_2407D95BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2407D95DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_2407D962C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_2407D9848(int a1, int a2, int a3, void *aBlock)
{
  *(v4 + 16) = _Block_copy(aBlock);
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_2407D98F4;

  return sub_2407DA76C();
}

uint64_t sub_2407D98F4(char a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2407D9BAC(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  v10 = a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_2407DB6F4;

  return sub_2407DA92C(v9);
}

uint64_t sub_2407D9E20(int a1, int a2, void *aBlock)
{
  *(v3 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_2407D9ECC;

  return sub_2407DAB4C();
}

uint64_t sub_2407D9ECC(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *v2;

  v8 = *(v5 + 16);
  if (v3)
  {
    v9 = sub_2408D33E0();

    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(v8, a1 & 1, 0);
  }

  _Block_release(*(v6 + 16));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_2407DA1D4(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_2407DA2BC;

  return sub_2407DAD10(v9);
}

uint64_t sub_2407DA2BC(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 40);
  if (v3)
  {
    v12 = sub_2408D33E0();

    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    (*(v11 + 16))(*(v5 + 40), a1 & 1, 0);
  }

  _Block_release(*(v6 + 40));
  v13 = *(v10 + 8);

  return v13();
}

id sub_2407DA4B4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2407DA520()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2407D379C;

  return sub_2407DA1D4(v2, v3, v5, v4);
}

uint64_t sub_2407DA5E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2407DB6F0;

  return sub_24087FE28(v2, v3, v4);
}

uint64_t sub_2407DA6A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2407DB6F0;

  return sub_24087FF10(a1, v4, v5, v6);
}

uint64_t sub_2407DA76C()
{
  v1 = sub_2408D4B20();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407DA828, 0, 0);
}

uint64_t sub_2407DA828()
{
  sub_2408D4930();
  v1 = sub_2408D4B10();
  v2 = sub_2408D4F50();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2407CF000, v1, v2, "Silent force sign out, no alert to show", v3, 2u);
    MEMORY[0x245CC9F60](v3, -1, -1);
  }

  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];

  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7(0);
}

uint64_t sub_2407DA92C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_2408D4B20();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407DA9EC, 0, 0);
}

uint64_t sub_2407DA9EC()
{
  v1 = v0[2];
  sub_2408D4930();
  v2 = v1;
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F50();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&dword_2407CF000, v3, v4, "Silent force sign out does not check for disableFindMyDevice for %@", v6, 0xCu);
    sub_2407DB3B0(v7);
    MEMORY[0x245CC9F60](v7, -1, -1);
    MEMORY[0x245CC9F60](v6, -1, -1);
  }

  v10 = v0[4];
  v9 = v0[5];
  v11 = v0[3];

  (*(v10 + 8))(v9, v11);

  v12 = v0[1];

  return v12(1);
}

uint64_t sub_2407DAB4C()
{
  v1 = sub_2408D4B20();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407DAC08, 0, 0);
}

uint64_t sub_2407DAC08()
{
  sub_2408D4930();
  v1 = sub_2408D4B10();
  v2 = sub_2408D4F50();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2407CF000, v1, v2, "Silent force sign out does not check for ADP validation", v3, 2u);
    MEMORY[0x245CC9F60](v3, -1, -1);
  }

  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];

  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7(1);
}

uint64_t sub_2407DAD10(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_2408D4B20();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407DADE8, 0, 0);
}

uint64_t sub_2407DADE8()
{
  v1 = v0[7];
  sub_2408D4930();
  v2 = v1;
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F50();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[7];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_2407CF000, v3, v4, "Attempting to sign out account %@ with dataclass actions (not used).", v7, 0xCu);
    sub_2407DB3B0(v8);
    MEMORY[0x245CC9F60](v8, -1, -1);
    MEMORY[0x245CC9F60](v7, -1, -1);
  }

  v10 = v0[13];
  v11 = v0[9];
  v12 = v0[10];
  v13 = v0[8];
  v14 = *(v12 + 8);
  v0[14] = v14;
  v0[15] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v10, v11);
  sub_2407D91C4(v13 + OBJC_IVAR____TtC18AppleIDSetupDaemon38AISSilentSignOutFlowControllerDelegate_accountStore, (v0 + 2));
  v15 = v0[5];
  v16 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v15);
  v19 = (*(v16 + 8) + **(v16 + 8));
  v17 = swift_task_alloc();
  v0[16] = v17;
  *v17 = v0;
  v17[1] = sub_2407DB020;

  return v19(v6, v15, v16);
}

uint64_t sub_2407DB020(char a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_2407DB278;
  }

  else
  {
    v4 = sub_2407DB138;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2407DB138()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  sub_2408D4930();
  v1 = sub_2408D4B10();
  v2 = sub_2408D4F50();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 144);
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v3;
    _os_log_impl(&dword_2407CF000, v1, v2, "Removal of account was successful: %{BOOL}d", v4, 8u);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  v5 = *(v0 + 144);
  v6 = *(v0 + 112);
  v7 = *(v0 + 96);
  v8 = *(v0 + 72);

  v6(v7, v8);

  v9 = *(v0 + 8);

  return v9(v5);
}

uint64_t sub_2407DB278()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  sub_2408D4930();
  v1 = sub_2408D4B10();
  v2 = sub_2408D4F30();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[17];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2407CF000, v1, v2, "Error caught attempting to remove account ", v5, 2u);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[9];

  v6(v7, v8);

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_2407DB3B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506AB0, &unk_2408D6830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2407DB418()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2407DB6F0;

  return sub_2407D9E20(v2, v3, v4);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2407DB528()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2407DB6F0;

  return sub_2407D9BAC(v2, v3, v5, v4);
}

uint64_t sub_2407DB5E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2407DB6F0;

  return sub_2407D9848(v2, v3, v4, v5);
}

uint64_t objectdestroy_5Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_2407DB720(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_2408D5060();
    if (v2 <= 0x3F)
    {
      sub_2407EC764(319);
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_2407DB870()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E50, &unk_2408D6ED0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E58, &unk_2408D81B0);
  (*(v1 + 104))(v3, *MEMORY[0x277CED808], v0);
  result = sub_2408D41F0();
  qword_27E506C40 = result;
  return result;
}

uint64_t sub_2407DB968()
{
  v0 = sub_2408D4B20();
  __swift_allocate_value_buffer(v0, qword_27E506C48);
  __swift_project_value_buffer(v0, qword_27E506C48);
  return sub_2408D4910();
}

uint64_t *sub_2407DB9B4()
{
  v1 = *v0;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_2408D3500();
  sub_2407EEEDC(qword_27E506DC8, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
  v3 = swift_allocError();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277CED2D8], v2);
  sub_2407DBD14(v3);

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 120));
  v5 = *(*v0 + 128);
  v6 = sub_2408D5060();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + *(*v0 + 152)));

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + *(*v0 + 176)));

  sub_2407D9440(v0 + *(*v0 + 208), &qword_27E506DA8, &qword_2408D8100);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2407DBC9C(uint64_t a1)
{
  sub_2407DB9B4();

  return MEMORY[0x282200960](a1);
}

uint64_t sub_2407DBD14(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 88);
  v60 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v51 = &v49 - v6;
  v7 = sub_2408D5060();
  v57 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v56 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v55 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DA8, &qword_2408D8100);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v53 = &v49 - v16;
  MEMORY[0x28223BE20](v15);
  v59 = &v49 - v17;
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v54 = v14;
  v18 = sub_2408D4B20();
  __swift_project_value_buffer(v18, qword_27E506C48);
  v19 = a1;
  v20 = sub_2408D4B10();
  v21 = sub_2408D4F10();

  v22 = os_log_type_enabled(v20, v21);
  v58 = v7;
  v52 = v4;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v50 = v5;
    v24 = v23;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v63[0] = v26;
    *v24 = 136315394;
    v27 = sub_2408D53B0();
    v29 = sub_2408CC504(v27, v28, v63);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2112;
    v30 = a1;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 14) = v31;
    *v25 = v31;
    _os_log_impl(&dword_2407CF000, v20, v21, "%s handling isolated cancellation with error: %@", v24, 0x16u);
    sub_2407D9440(v25, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v25, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    MEMORY[0x245CC9F60](v26, -1, -1);
    v32 = v24;
    v5 = v50;
    MEMORY[0x245CC9F60](v32, -1, -1);
  }

  v33 = *(*v2 + 208);
  swift_beginAccess();
  v34 = v59;
  sub_2407EEE04(v2 + v33, v59, &qword_27E506DA8, &qword_2408D8100);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506CE8, qword_2408D6B70);
  v36 = *(v35 - 8);
  v37 = v53;
  (*(v36 + 56))(v53, 1, 1, v35);
  swift_beginAccess();
  sub_2407EEE6C(v37, v2 + v33);
  swift_endAccess();
  v38 = v54;
  sub_2407EEE04(v34, v54, &qword_27E506DA8, &qword_2408D8100);
  if ((*(v36 + 48))(v38, 1, v35) == 1)
  {
    sub_2407D9440(v38, &qword_27E506DA8, &qword_2408D8100);
  }

  else
  {
    v62 = a1;
    v39 = a1;
    sub_2408D4E90();
    (*(v36 + 8))(v38, v35);
  }

  v40 = v58;
  v41 = v55;
  v42 = *(*v2 + 128);
  swift_beginAccess();
  v43 = v57;
  (*(v57 + 16))(v41, v2 + v42, v40);
  if ((*(v60 + 48))(v41, 1, v5))
  {
    (*(v43 + 8))(v41, v40);
  }

  else
  {
    v44 = v60;
    v45 = v51;
    (*(v60 + 16))(v51, v41, v5);
    (*(v43 + 8))(v41, v40);
    v61 = a1;
    sub_2408D3640();
    (*(v44 + 8))(v45, v5);
  }

  v46 = *v2;
  if (*(v2 + *(*v2 + 184)))
  {
    v61 = a1;
    sub_2408D3D80();
    sub_2407EEEDC(&qword_27E506DB8, MEMORY[0x277CED5B0], MEMORY[0x277CED5A8]);

    sub_2408D4270();

    v46 = *v2;
  }

  if (*(v2 + *(v46 + 192)))
  {
    v61 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A70, qword_2408D75E0);
    sub_2407D917C(&qword_27E506DC0, &qword_27E506A70, qword_2408D75E0, MEMORY[0x277CED888]);
    sub_2408D4270();
  }

  sub_2407D9440(v59, &qword_27E506DA8, &qword_2408D8100);
  v47 = v56;
  (*(v60 + 56))(v56, 1, 1, v5);
  swift_beginAccess();
  (*(v43 + 40))(v2 + v42, v47, v40);
  return swift_endAccess();
}

uint64_t sub_2407DC4D8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_2408D35B0();
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407DC568, 0, 0);
}

uint64_t sub_2407DC568()
{
  v1 = v0[4];
  sub_2408D35C0();
  v2 = sub_2408D3500();
  v3 = (*(*(v2 - 8) + 48))(v1, 6, v2);
  sub_2407EEC64(v1);
  if (v3)
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v4 = sub_2408D4B20();
    __swift_project_value_buffer(v4, qword_27E506C48);
    v5 = sub_2408D4B10();
    v6 = sub_2408D4F20();
    v7 = os_log_type_enabled(v5, v6);
    v8 = MEMORY[0x277CEDCB0];
    if (v7)
    {
      v9 = "Client has decided to proceed from the failure, moving on";
LABEL_10:
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2407CF000, v5, v6, v9, v12, 2u);
      MEMORY[0x245CC9F60](v12, -1, -1);
    }
  }

  else
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v10 = sub_2408D4B20();
    __swift_project_value_buffer(v10, qword_27E506C48);
    v5 = sub_2408D4B10();
    v6 = sub_2408D4F20();
    v11 = os_log_type_enabled(v5, v6);
    v8 = MEMORY[0x277CEDCA8];
    if (v11)
    {
      v9 = "Client is remaining in failed state";
      goto LABEL_10;
    }
  }

  v13 = v0[2];

  v14 = *v8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507260, &qword_2408D6860);
  (*(*(v15 - 8) + 104))(v13, v14, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_2407DC7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D90, &qword_2408D6D58);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17[-v4];
  v6 = sub_2408D4090();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2408D35B0();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_2408D3500();
  (*(*(v13 - 8) + 56))(v12, 2, 6, v13);

  sub_2408D35D0();
  v14 = sub_2408D37E0();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  sub_2408D4030();
  (*(v7 + 104))(v9, *MEMORY[0x277CED768], v6);
  v15 = sub_2408D3560();
  sub_2408D40B0();
  return v15(v17, 0);
}

uint64_t sub_2407DCA08(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 320) = a4;
  *(v5 + 80) = a3;
  *(v5 + 88) = a5;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  v6 = sub_2408D36A0();
  *(v5 + 96) = v6;
  *(v5 + 104) = *(v6 - 8);
  *(v5 + 112) = swift_task_alloc();
  sub_2408D33D0();
  *(v5 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50);
  *(v5 + 128) = swift_task_alloc();
  v7 = sub_2408D38D0();
  *(v5 + 136) = v7;
  *(v5 + 144) = *(v7 - 8);
  *(v5 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D90, &qword_2408D6D58);
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A18, &qword_2408D67E8);
  *(v5 + 176) = swift_task_alloc();
  v8 = sub_2408D3970();
  *(v5 + 184) = v8;
  *(v5 + 192) = *(v8 - 8);
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();
  v9 = sub_2408D3720();
  *(v5 + 224) = v9;
  *(v5 + 232) = *(v9 - 8);
  *(v5 + 240) = swift_task_alloc();
  v10 = sub_2408D4090();
  *(v5 + 248) = v10;
  *(v5 + 256) = *(v10 - 8);
  *(v5 + 264) = swift_task_alloc();
  v11 = sub_2408D4130();
  *(v5 + 272) = v11;
  *(v5 + 280) = *(v11 - 8);
  *(v5 + 288) = swift_task_alloc();
  v12 = sub_2408D4040();
  *(v5 + 296) = v12;
  *(v5 + 304) = *(v12 - 8);
  *(v5 + 312) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407DCDF0, 0, 0);
}

uint64_t sub_2407DCDF0()
{
  v107 = v0;
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  v5 = *(v0 + 248);
  v6 = *(v0 + 256);
  sub_2408D3570();
  sub_2408D40A0();
  (*(v2 + 8))(v1, v3);
  v7 = (*(v6 + 88))(v4, v5);
  v8 = *(v0 + 312);
  if (v7 == *MEMORY[0x277CED768])
  {
    v9 = *(v0 + 296);
    v10 = *(v0 + 304);
    v11 = *(v0 + 264);
    (*(*(v0 + 256) + 96))(v11, *(v0 + 248));
    (*(v10 + 32))(v8, v11, v9);
    if (sub_2408D4020())
    {
      v12 = *(v0 + 320);
      v13 = *(v0 + 80);
      sub_2408D3700();
      if ((sub_2408D4000() & 1) != 0 && v12)
      {
        v15 = *(v0 + 232);
        v14 = *(v0 + 240);
        v16 = *(v0 + 224);
        v17 = *(v0 + 176);
        sub_2408D3810();
        (*(v15 + 16))(v17, v14, v16);
        (*(v15 + 56))(v17, 0, 1, v16);
        sub_2408D37B0();
        sub_2408D3940();
        if (qword_27E506918 != -1)
        {
          swift_once();
        }

        v18 = sub_2408D4B20();
        __swift_project_value_buffer(v18, qword_27E506C48);
        v19 = sub_2408D4B10();
        v20 = sub_2408D4F10();
        v21 = os_log_type_enabled(v19, v20);
        v23 = *(v0 + 304);
        v22 = *(v0 + 312);
        v24 = *(v0 + 296);
        v25 = *(v0 + 232);
        v26 = *(v0 + 240);
        v27 = *(v0 + 224);
        if (v21)
        {
          v103 = *(v0 + 296);
          v101 = *(v0 + 240);
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v106[0] = v29;
          *v28 = 136315138;
          swift_beginAccess();
          sub_2407EEEDC(&qword_28130F418, MEMORY[0x277CED3F8], MEMORY[0x277CED410]);
          v30 = sub_2408D5220();
          v32 = sub_2408CC504(v30, v31, v106);

          *(v28 + 4) = v32;
          _os_log_impl(&dword_2407CF000, v19, v20, "User selected to create a new account: %s", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v29);
          MEMORY[0x245CC9F60](v29, -1, -1);
          MEMORY[0x245CC9F60](v28, -1, -1);

          (*(v25 + 8))(v101, v27);
          (*(v23 + 8))(v22, v103);
        }

        else
        {

          (*(v25 + 8))(v26, v27);
          (*(v23 + 8))(v22, v24);
        }

        v56 = *(v0 + 216);
        v57 = *(v0 + 184);
        v58 = *(v0 + 192);
        v59 = *(v0 + 64);
        swift_beginAccess();
        (*(v58 + 16))(v59, v56, v57);
        (*(v58 + 56))(v59, 0, 1, v57);
        v60 = *MEMORY[0x277CEDCB0];
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D98, &unk_2408D6D60);
        (*(*(v61 - 8) + 104))(v59, v60, v61);
        (*(v58 + 8))(v56, v57);
      }

      else
      {
        v46 = *(v0 + 168);
        sub_2408D4010();
        v47 = sub_2408D37E0();
        v48 = *(v47 - 8);
        v49 = *(v48 + 48);
        v50 = v49(v46, 1, v47);
        v51 = *(v0 + 168);
        if (v50 == 1)
        {
          sub_2407D9440(*(v0 + 168), &qword_27E506D90, &qword_2408D6D58);
        }

        else
        {
          sub_2408D37C0();
          (*(v48 + 8))(v51, v47);
        }

        v52 = *(v0 + 160);
        sub_2408D3710();
        sub_2408D4010();
        if (v49(v52, 1, v47) == 1)
        {
          sub_2407D9440(*(v0 + 160), &qword_27E506D90, &qword_2408D6D58);
          v53 = *(v0 + 144);
          v55 = *(v0 + 128);
          v54 = *(v0 + 136);
          (*(v53 + 56))(v55, 1, 1, v54);
          sub_2408D3860();
          if ((*(v53 + 48))(v55, 1, v54) != 1)
          {
            sub_2407D9440(*(v0 + 128), &qword_27E507F00, &qword_2408D6D50);
          }
        }

        else
        {
          sub_2408D37D0();
          v63 = *(v0 + 144);
          v62 = *(v0 + 152);
          v65 = *(v0 + 128);
          v64 = *(v0 + 136);
          (*(v48 + 8))(*(v0 + 160), v47);
          (*(v63 + 56))(v65, 0, 1, v64);
          (*(v63 + 32))(v62, v65, v64);
        }

        v66 = *(v0 + 232);
        v67 = *(v0 + 224);
        v68 = *(v0 + 176);
        v69 = *(v0 + 112);
        v71 = *(v0 + 96);
        v70 = *(v0 + 104);
        (*(v66 + 16))(v68, *(v0 + 240), v67);
        (*(v66 + 56))(v68, 0, 1, v67);
        sub_2408D33C0();
        (*(v70 + 104))(v69, *MEMORY[0x277CED3A0], v71);
        sub_2408D38E0();
        if (qword_27E506918 != -1)
        {
          swift_once();
        }

        v72 = *(v0 + 200);
        v73 = *(v0 + 208);
        v74 = *(v0 + 184);
        v75 = *(v0 + 192);
        v76 = sub_2408D4B20();
        __swift_project_value_buffer(v76, qword_27E506C48);
        (*(v75 + 16))(v72, v73, v74);
        v77 = sub_2408D4B10();
        v104 = sub_2408D4F10();
        v78 = os_log_type_enabled(v77, v104);
        v80 = *(v0 + 304);
        v79 = *(v0 + 312);
        v81 = *(v0 + 296);
        v82 = *(v0 + 232);
        v83 = *(v0 + 240);
        v105 = *(v0 + 224);
        v85 = *(v0 + 192);
        v84 = *(v0 + 200);
        v86 = *(v0 + 184);
        if (v78)
        {
          v102 = *(v0 + 240);
          v87 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v106[0] = v98;
          *v87 = 136315138;
          sub_2407EEEDC(&qword_28130F418, MEMORY[0x277CED3F8], MEMORY[0x277CED410]);
          v99 = v81;
          v100 = v79;
          v88 = sub_2408D5220();
          v90 = v89;
          (*(v85 + 8))(v84, v86);
          v91 = sub_2408CC504(v88, v90, v106);

          *(v87 + 4) = v91;
          _os_log_impl(&dword_2407CF000, v77, v104, "User selected existing account: %s", v87, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v98);
          MEMORY[0x245CC9F60](v98, -1, -1);
          MEMORY[0x245CC9F60](v87, -1, -1);

          (*(v82 + 8))(v102, v105);
          (*(v80 + 8))(v100, v99);
        }

        else
        {

          (*(v85 + 8))(v84, v86);
          (*(v82 + 8))(v83, v105);
          (*(v80 + 8))(v79, v81);
        }

        v92 = *(v0 + 184);
        v93 = *(v0 + 192);
        v94 = *(v0 + 64);
        (*(v93 + 32))(v94, *(v0 + 208), v92);
        (*(v93 + 56))(v94, 0, 1, v92);
        v95 = *MEMORY[0x277CEDCB0];
        v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D98, &unk_2408D6D60);
        (*(*(v96 - 8) + 104))(v94, v95, v96);
      }
    }

    else
    {
      if (qword_27E506918 != -1)
      {
        swift_once();
      }

      v36 = sub_2408D4B20();
      __swift_project_value_buffer(v36, qword_27E506C48);
      v37 = sub_2408D4B10();
      v38 = sub_2408D4F20();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_2407CF000, v37, v38, "Continuing to wait for user to select member and choose to proceed", v39, 2u);
        MEMORY[0x245CC9F60](v39, -1, -1);
      }

      v41 = *(v0 + 304);
      v40 = *(v0 + 312);
      v42 = *(v0 + 296);
      v43 = *(v0 + 64);

      (*(v41 + 8))(v40, v42);
      v44 = *MEMORY[0x277CEDCA8];
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D98, &unk_2408D6D60);
      (*(*(v45 - 8) + 104))(v43, v44, v45);
    }

    v35 = *(v0 + 8);
  }

  else
  {
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D50, &qword_2408D6D00);
    sub_2407D917C(&qword_27E506D58, &qword_27E506D50, &qword_2408D6D00, MEMORY[0x277CED528]);
    swift_allocError();
    (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277CED520], v33);
    swift_willThrow();

    v35 = *(v0 + 8);
  }

  return v35();
}

void sub_2407DDB18(uint64_t a1, uint64_t a2)
{
  v35 = sub_2408D3970();
  v4 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2408D38D0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = *(v7 + 16);
  v11(&v30 - v12, a1, v6);
  swift_beginAccess();
  sub_2408D3900();
  swift_endAccess();
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v13 = sub_2408D4B20();
  __swift_project_value_buffer(v13, qword_27E506C48);
  v11(v10, a1, v6);
  v14 = sub_2408D4B10();
  v15 = sub_2408D4F20();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v36 = v33;
    *v16 = 136315394;
    swift_beginAccess();
    v17 = *(v4 + 16);
    v32 = v15;
    v18 = v34;
    v31 = v14;
    v19 = v35;
    v17(v34, a2, v35);
    sub_2407EEEDC(&qword_28130F418, MEMORY[0x277CED3F8], MEMORY[0x277CED410]);
    v20 = sub_2408D5220();
    v22 = v21;
    (*(v4 + 8))(v18, v19);
    v23 = sub_2408CC504(v20, v22, &v36);

    *(v16 + 4) = v23;
    *(v16 + 12) = 2080;
    sub_2407EEEDC(&qword_27E506AA0, MEMORY[0x277CED3D8], MEMORY[0x277CED3F0]);
    v24 = sub_2408D5220();
    v26 = v25;
    (*(v7 + 8))(v10, v6);
    v27 = sub_2408CC504(v24, v26, &v36);

    *(v16 + 14) = v27;
    v28 = v31;
    _os_log_impl(&dword_2407CF000, v31, v32, "account.id: %s , $0: %s", v16, 0x16u);
    v29 = v33;
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v29, -1, -1);
    MEMORY[0x245CC9F60](v16, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_2407DDF54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v28 = a4;
  v29 = a3;
  v30 = a5;
  v31 = a1;
  v8 = sub_2408D35B0();
  MEMORY[0x28223BE20](v8 - 8);
  v32 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D68, &qword_2408D6D28);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - v11;
  v13 = sub_2408D38D0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2408D3BA0();
  v17 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2407EEDBC(0, &qword_27E506D80, 0x277CF0170);
  v20 = a2;
  sub_2408D5000();

  sub_2408D38F0();
  sub_2408D38B0();
  (*(v14 + 8))(v16, v13);
  sub_2408D4A30();
  v21 = sub_2408D4390();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);

  sub_2408D4370();
  (*(v17 + 104))(v19, *MEMORY[0x277CED4D0], v26);
  v22 = sub_2408D3530();
  sub_2408D3BC0();
  v22(v33, 0);
  v23 = sub_2408D3500();
  (*(*(v23 - 8) + 56))(v32, 4, 6, v23);
  return sub_2408D35D0();
}

uint64_t sub_2407DE2D0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2408D4390();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D68, &qword_2408D6D28);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = sub_2408D3BA0();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_2408D3C20();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v6 = sub_2408D43A0();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  sub_2408D35B0();
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407DE514, 0, 0);
}

uint64_t sub_2407DE514()
{
  v1 = v0[18];
  sub_2408D35C0();
  v2 = sub_2408D3500();
  v3 = (*(*(v2 - 8) + 48))(v1, 6, v2);
  sub_2407EEC64(v1);
  if (v3 != 4)
  {
    goto LABEL_11;
  }

  v5 = v0[13];
  v4 = v0[14];
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[9];
  v9 = v0[10];
  sub_2408D3540();
  sub_2408D3BB0();
  (*(v5 + 8))(v4, v6);
  if ((*(v9 + 88))(v7, v8) != *MEMORY[0x277CED4D0])
  {
    (*(v0[10] + 8))(v0[11], v0[9]);
LABEL_11:
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D50, &qword_2408D6D00);
    sub_2407D917C(&qword_27E506D58, &qword_27E506D50, &qword_2408D6D00, MEMORY[0x277CED528]);
    swift_allocError();
    (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277CED520], v32);
    swift_willThrow();

    v34 = v0[1];
    goto LABEL_20;
  }

  v11 = v0[16];
  v10 = v0[17];
  v12 = v0[15];
  v13 = v0[11];
  (*(v0[10] + 96))(v13, v0[9]);
  (*(v11 + 32))(v10, v13, v12);
  if (sub_2408D4360())
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v14 = sub_2408D4B20();
    __swift_project_value_buffer(v14, qword_27E506C48);
    v15 = sub_2408D4B10();
    v16 = sub_2408D4F20();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2407CF000, v15, v16, "Accepting family repair after indication it finished", v17, 2u);
      MEMORY[0x245CC9F60](v17, -1, -1);
    }

    v19 = v0[7];
    v18 = v0[8];
    v20 = v0[4];
    v21 = v0[5];

    sub_2408D4380();
    sub_2407EEE04(v18, v19, &qword_27E506D68, &qword_2408D6D28);
    v22 = (*(v21 + 48))(v19, 1, v20);
    v24 = v0[16];
    v23 = v0[17];
    v25 = v0[15];
    v26 = v0[8];
    if (v22 == 1)
    {
      sub_2407D9440(v0[8], &qword_27E506D68, &qword_2408D6D28);
      (*(v24 + 8))(v23, v25);
      v30 = 0;
    }

    else
    {
      v27 = v0[6];
      v28 = v0[4];
      v50 = v0[17];
      v29 = *(v0[5] + 32);
      v29(v27, v0[7], v28);
      sub_2407EEEDC(&qword_27E506D78, MEMORY[0x277CED988], MEMORY[0x277CED990]);
      v30 = swift_allocError();
      v29(v31, v27, v28);
      sub_2407D9440(v26, &qword_27E506D68, &qword_2408D6D28);
      (*(v24 + 8))(v50, v25);
    }

    v45 = v22 != 1;
    v46 = v0[2];
    *v46 = v30;
    *(v46 + 8) = v45;
    v47 = *MEMORY[0x277CEDCB0];
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D70, &qword_2408D6D30);
    (*(*(v48 - 8) + 104))(v46, v47, v48);
  }

  else
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v35 = sub_2408D4B20();
    __swift_project_value_buffer(v35, qword_27E506C48);
    v36 = sub_2408D4B10();
    v37 = sub_2408D4F20();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_2407CF000, v36, v37, "Waiting while family repair has not indicated it's finished yet", v38, 2u);
      MEMORY[0x245CC9F60](v38, -1, -1);
    }

    v40 = v0[16];
    v39 = v0[17];
    v41 = v0[15];
    v42 = v0[2];

    (*(v40 + 8))(v39, v41);
    v43 = *MEMORY[0x277CEDCA8];
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D70, &qword_2408D6D30);
    (*(*(v44 - 8) + 104))(v42, v43, v44);
  }

  v34 = v0[1];
LABEL_20:

  return v34();
}

uint64_t sub_2407DEB8C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_2408D35B0();
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407DEC1C, 0, 0);
}

uint64_t sub_2407DEC1C()
{
  v1 = v0[4];
  sub_2408D35C0();
  v2 = sub_2408D3500();
  v3 = (*(*(v2 - 8) + 48))(v1, 6, v2);
  sub_2407EEC64(v1);
  v4 = v0[2];
  if (v3 == 5)
  {
    v5 = MEMORY[0x277CEDCA8];
  }

  else
  {
    *v4 = 0;
    v5 = MEMORY[0x277CEDCB0];
  }

  v6 = *v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D88, &qword_2408D6D40);
  (*(*(v7 - 8) + 104))(v4, v6, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2407DED4C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DA0, &unk_2408D76A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10[-v4];
  v6 = sub_2408D3A40();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a2, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = sub_2408D3530();
  sub_2408D3B50();
  return v8(v10, 0);
}

uint64_t sub_2407DEE78(uint64_t a1, uint64_t a2)
{
  sub_2407D9440(a2, &qword_27E506DA8, &qword_2408D8100);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506CE8, qword_2408D6B70);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_2407DEF54()
{
  v0 = sub_2408D35B0();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2408D3500();
  (*(*(v3 - 8) + 56))(v2, 5, 6, v3);
  return sub_2408D35D0();
}

uint64_t sub_2407DF004(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_2408D35B0();
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407DF094, 0, 0);
}

uint64_t sub_2407DF094()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_2408D35C0();
  v3 = sub_2408D3500();
  v4 = (*(*(v3 - 8) + 48))(v1, 6, v3);
  sub_2407EEC64(v1);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507260, &qword_2408D6860);
  v6 = MEMORY[0x277CEDCB0];
  if (v4 != 6)
  {
    v6 = MEMORY[0x277CEDCA8];
  }

  (*(*(v5 - 8) + 104))(v2, *v6, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2407DF1B8(void *a1, uint64_t a2)
{
  v4 = sub_2408D38D0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v43 = v38 - v9;
  v44 = a2;
  v10 = sub_2408D3960();
  v11 = 0;
  v13 = v10 + 56;
  v12 = *(v10 + 56);
  v45 = v10;
  v14 = 1 << *(v10 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v12;
  v17 = (v14 + 63) >> 6;
  v47 = (v5 + 32);
  v41 = v8;
  v42 = v5;
  v38[2] = v5 + 40;
  v39 = v10 + 56;
  v40 = a1;
  while (v16)
  {
LABEL_11:
    v19 = *(*(v45 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v16)))));
    v20 = v43;
    sub_2408D38F0();
    v21 = v8;
    v22 = v4;
    v46 = *v47;
    v46(v21, v20, v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = *a1;
    v24 = v48;
    v26 = sub_2408CCC7C(v19);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_22;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2408C5870();
      }
    }

    else
    {
      sub_2408C81A4(v29, isUniquelyReferenced_nonNull_native);
      v31 = sub_2408CCC7C(v19);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_24;
      }

      v26 = v31;
    }

    v4 = v22;
    v33 = v48;
    if (v30)
    {
      v8 = v41;
      (*(v42 + 40))(v48[7] + *(v42 + 72) * v26, v41, v4);
    }

    else
    {
      v48[(v26 >> 6) + 8] |= 1 << v26;
      *(v33[6] + 8 * v26) = v19;
      v8 = v41;
      v46((v33[7] + *(v42 + 72) * v26), v41, v4);
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_23;
      }

      v33[2] = v36;
    }

    v16 &= v16 - 1;
    v13 = v39;
    a1 = v40;
    *v40 = v33;
  }

  while (1)
  {
    v18 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v18 >= v17)
    {
    }

    v16 = *(v13 + 8 * v18);
    ++v11;
    if (v16)
    {
      v11 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  type metadata accessor for AIDAServiceType(0);
  result = sub_2408D5280();
  __break(1u);
  return result;
}

uint64_t sub_2407DF4D0(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v2 = sub_2408D35B0();
  MEMORY[0x28223BE20](v2 - 8);
  v27 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2408D3FD0();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v24 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2408D3C20();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v23 = sub_2408D4090();
  v13 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_2408D3540();
  v16 = sub_2408D3B20();
  v17 = *(v7 + 8);
  v17(v12, v6);
  sub_2408D3540();
  v18 = sub_2408D3AE0();
  v17(v10, v6);
  sub_24082A3C4(v18, v16);
  (*(v25 + 104))(v24, *MEMORY[0x277CED690], v26);
  sub_2408D3F70();
  (*(v13 + 104))(v15, *MEMORY[0x277CED750], v23);
  v19 = sub_2408D3560();
  sub_2408D40B0();
  v19(v28, 0);
  v20 = sub_2408D3500();
  (*(*(v20 - 8) + 56))(v27, 2, 6, v20);
  return sub_2408D35D0();
}

uint64_t sub_2407DF84C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2408D4090();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_2408D4130();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_2408D3F80();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407DF9C4, 0, 0);
}

uint64_t sub_2407DF9C4()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  sub_2408D3570();
  sub_2408D40A0();
  (*(v2 + 8))(v1, v3);
  v7 = (*(v6 + 88))(v4, v5);
  v8 = v0[12];
  if (v7 == *MEMORY[0x277CED750])
  {
    v9 = v0[10];
    v10 = v0[11];
    v11 = v0[6];
    (*(v0[5] + 96))(v11, v0[4]);
    (*(v10 + 32))(v8, v11, v9);
    v12 = sub_2408D3F60();
    if (v12 == 2)
    {
      v13 = v0[2];
      (*(v0[11] + 8))(v0[12], v0[10]);
      v14 = MEMORY[0x277CEDCA8];
    }

    else
    {
      v18 = v12;
      if (qword_27E506918 != -1)
      {
        swift_once();
      }

      v19 = sub_2408D4B20();
      __swift_project_value_buffer(v19, qword_27E506C48);
      v20 = sub_2408D4B10();
      v21 = sub_2408D4F10();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 67109120;
        v23 = v18 & 1;
        *(v22 + 4) = v23;
        _os_log_impl(&dword_2407CF000, v20, v21, "Connection decision has been made: %{BOOL}d", v22, 8u);
        MEMORY[0x245CC9F60](v22, -1, -1);
      }

      else
      {

        LOBYTE(v23) = v18 & 1;
      }

      v13 = v0[2];
      (*(v0[11] + 8))(v0[12], v0[10]);
      *v13 = v23;
      v14 = MEMORY[0x277CEDCB0];
    }

    v24 = *v14;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D60, &qword_2408D6D08);
    (*(*(v25 - 8) + 104))(v13, v24, v25);

    v17 = v0[1];
  }

  else
  {
    (*(v0[5] + 8))(v0[6], v0[4]);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D50, &qword_2408D6D00);
    sub_2407D917C(&qword_27E506D58, &qword_27E506D50, &qword_2408D6D00, MEMORY[0x277CED528]);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277CED520], v15);
    swift_willThrow();

    v17 = v0[1];
  }

  return v17();
}

uint64_t sub_2407DFD6C(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = *v1;
  v2[19] = *v1;
  v4 = sub_2408D4530();
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D00, &unk_2408D7FE0);
  v2[23] = swift_task_alloc();
  v5 = sub_2408D36A0();
  v2[24] = v5;
  v2[25] = *(v5 - 8);
  v2[26] = swift_task_alloc();
  sub_2408D33D0();
  v2[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A18, &qword_2408D67E8);
  v2[28] = swift_task_alloc();
  v6 = sub_2408D4500();
  v2[29] = v6;
  v2[30] = *(v6 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v7 = sub_2408D38D0();
  v2[33] = v7;
  v2[34] = *(v7 - 8);
  v2[35] = swift_task_alloc();
  v8 = *(v3 + 80);
  v2[36] = v8;
  v2[37] = *(v8 - 8);
  v2[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0);
  v2[39] = swift_task_alloc();
  v9 = sub_2408D4660();
  v2[40] = v9;
  v2[41] = *(v9 - 8);
  v2[42] = swift_task_alloc();
  v10 = sub_2408D3970();
  v2[43] = v10;
  v2[44] = *(v10 - 8);
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407E0180, v1, 0);
}

uint64_t sub_2407E0180()
{
  v15 = v0;
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v1 = sub_2408D4B20();
  v0[47] = __swift_project_value_buffer(v1, qword_27E506C48);

  v2 = sub_2408D4B10();
  v3 = sub_2408D4F20();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[17];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v0[16] = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507220, &unk_2408D7670);
    v7 = sub_2408D4D40();
    v9 = sub_2408CC504(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2407CF000, v2, v3, "Authenticating remote device with model: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x245CC9F60](v6, -1, -1);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  v13 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v10 = swift_task_alloc();
  v0[48] = v10;
  *v10 = v0;
  v10[1] = sub_2407E0390;
  v11 = v0[42];

  return v13(v11);
}

uint64_t sub_2407E0390()
{
  v1 = *(*v0 + 144);

  return MEMORY[0x2822009F8](sub_2407E04A0, v1, 0);
}

uint64_t sub_2407E04A0()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v4 = *(v0 + 328);
  v3 = *(v0 + 336);
  v6 = *(v0 + 312);
  v5 = *(v0 + 320);
  sub_2408D4630();
  (*(v4 + 8))(v3, v5);
  if ((*(v2 + 48))(v6, 1, v1) == 1)
  {
    sub_2407D9440(*(v0 + 312), &unk_27E506A20, &unk_2408D67F0);
    v7 = sub_2408D4B10();
    v8 = sub_2408D4F30();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2407CF000, v7, v8, "Expected nonnull account to be in authentication model during remote setup", v9, 2u);
      MEMORY[0x245CC9F60](v9, -1, -1);
    }

    v10 = *(v0 + 288);
    v11 = *(v0 + 152);

    v12 = *(v11 + 104);
    v13 = *(v11 + 88);
    *(v0 + 56) = v10;
    *(v0 + 64) = v13;
    *(v0 + 80) = v12;
    type metadata accessor for RemoteSetupService.Failure(0, v0 + 56);
    swift_getWitnessTable();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    (*(*(v0 + 352) + 32))(*(v0 + 368), *(v0 + 312), *(v0 + 344));
    v18 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
    v17 = swift_task_alloc();
    *(v0 + 392) = v17;
    *v17 = v0;
    v17[1] = sub_2407E07AC;

    return v18(nullsub_1, 0);
  }
}

uint64_t sub_2407E07AC()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    v4 = sub_2407E1E48;
  }

  else
  {
    v4 = sub_2407E08D8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2407E08D8()
{
  (*(*(v0 + 296) + 16))(*(v0 + 304), *(v0 + 144) + *(**(v0 + 144) + 120), *(v0 + 288));
  type metadata accessor for LocalSetupService();
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 152);
    *(v0 + 408) = *(v0 + 120);
    sub_2408D38F0();
    *(v0 + 416) = *(v1 + 88);
    *(v0 + 432) = *(v1 + 104);
    sub_2407E2328((v0 + 16));
    v2 = swift_task_alloc();
    *(v0 + 440) = v2;
    *v2 = v0;
    v2[1] = sub_2407E0C8C;
    v3 = *(v0 + 280);

    return sub_2407E2630(v3, v0 + 16);
  }

  else
  {
    v5 = *(v0 + 400);
    v6 = sub_2408D4B10();
    v7 = sub_2408D4F20();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2407CF000, v6, v7, "Continuing to SRP", v8, 2u);
      MEMORY[0x245CC9F60](v8, -1, -1);
    }

    v9 = sub_2407EECF8();
    *(v0 + 488) = v9;
    if (v5)
    {
      (*(*(v0 + 352) + 8))(*(v0 + 368), *(v0 + 344));

      v10 = *(v0 + 8);

      return v10();
    }

    else
    {
      v11 = v9;

      v12 = sub_2408D4B10();
      v13 = sub_2408D4F20();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_2407CF000, v12, v13, "Following standard magic/proxied auth pattern", v14, 2u);
        MEMORY[0x245CC9F60](v14, -1, -1);
      }

      v15 = swift_task_alloc();
      *(v0 + 496) = v15;
      *v15 = v0;
      v15[1] = sub_2407E1BD4;
      v16 = *(v0 + 368);
      v17 = *(v0 + 136);

      return sub_2407E2F38(v17, v16, v11);
    }
  }
}

uint64_t sub_2407E0C8C(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *(*v1 + 272);
  v5 = *(*v1 + 264);
  v6 = *(*v1 + 144);
  *(v2 + 520) = a1;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_2407E0E10, v6, 0);
}

uint64_t sub_2407E0E10(uint64_t a1)
{
  if (*(v1 + 520) == 1)
  {
    v2 = swift_task_alloc();
    *(v1 + 448) = v2;
    *v2 = v1;
    v2[1] = sub_2407E11BC;
    v3 = *(v1 + 368);
    v4 = *(v1 + 136);

    return sub_240809854(v4, v3);
  }

  else
  {
    v6 = sub_2408D4B10();
    v7 = sub_2408D4F20();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2407CF000, v6, v7, "No symptoms found. Cleared for takeoff.", v8, 2u);
      MEMORY[0x245CC9F60](v8, -1, -1);
    }

    v9 = *(v1 + 400);
    v10 = sub_2408D4B10();
    v11 = sub_2408D4F20();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2407CF000, v10, v11, "Continuing to SRP", v12, 2u);
      MEMORY[0x245CC9F60](v12, -1, -1);
    }

    v13 = sub_2407EECF8();
    *(v1 + 488) = v13;
    if (v9)
    {
      (*(*(v1 + 352) + 8))(*(v1 + 368), *(v1 + 344));

      v14 = *(v1 + 8);

      return v14();
    }

    else
    {
      v15 = v13;

      v16 = sub_2408D4B10();
      v17 = sub_2408D4F20();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_2407CF000, v16, v17, "Following standard magic/proxied auth pattern", v18, 2u);
        MEMORY[0x245CC9F60](v18, -1, -1);
      }

      v19 = swift_task_alloc();
      *(v1 + 496) = v19;
      *v19 = v1;
      v19[1] = sub_2407E1BD4;
      v20 = *(v1 + 368);
      v21 = *(v1 + 136);

      return sub_2407E2F38(v21, v20, v15);
    }
  }
}

uint64_t sub_2407E11BC(char a1)
{
  v4 = *v2;
  *(v4 + 456) = v1;

  v5 = *(v4 + 144);
  if (v1)
  {
    v6 = sub_2407E20C0;
  }

  else
  {
    *(v4 + 521) = a1 & 1;
    v6 = sub_2407E12FC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2407E12FC(uint64_t a1)
{
  if (*(v1 + 521) == 1)
  {

    v2 = *(v1 + 456);
    v3 = sub_2408D4B10();
    v4 = sub_2408D4F20();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2407CF000, v3, v4, "Continuing to SRP", v5, 2u);
      MEMORY[0x245CC9F60](v5, -1, -1);
    }

    v6 = sub_2407EECF8();
    *(v1 + 488) = v6;
    if (v2)
    {
      (*(*(v1 + 352) + 8))(*(v1 + 368), *(v1 + 344));
LABEL_10:

      v23 = *(v1 + 8);

      return v23();
    }

    v25 = v6;

    v26 = sub_2408D4B10();
    v27 = sub_2408D4F20();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2407CF000, v26, v27, "Following standard magic/proxied auth pattern", v28, 2u);
      MEMORY[0x245CC9F60](v28, -1, -1);
    }

    v29 = swift_task_alloc();
    *(v1 + 496) = v29;
    *v29 = v1;
    v29[1] = sub_2407E1BD4;
    v30 = *(v1 + 368);
    v31 = *(v1 + 136);

    return sub_2407E2F38(v31, v30, v25);
  }

  else
  {
    v7 = sub_2408D4B10();
    v8 = sub_2408D4F30();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2407CF000, v7, v8, "Failing early as user did not repair their account", v9, 2u);
      MEMORY[0x245CC9F60](v9, -1, -1);
    }

    v37 = *(v1 + 456);
    v10 = *(v1 + 224);
    v11 = *(v1 + 200);
    v12 = *(v1 + 208);
    v14 = *(v1 + 184);
    v13 = *(v1 + 192);

    sub_2408D38A0();
    v15 = sub_2408D3720();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
    sub_2408D33C0();
    (*(v11 + 104))(v12, *MEMORY[0x277CED3A0], v13);
    sub_2408D38E0();
    v16 = sub_2408D36F0();
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
    sub_2408D44E0();
    *(v1 + 464) = sub_2407EECF8();
    if (v37)
    {
      v17 = *(v1 + 368);
      v18 = *(v1 + 344);
      v19 = *(v1 + 352);
      v20 = *(v1 + 256);
      v21 = *(v1 + 232);
      v22 = *(v1 + 240);

      (*(v22 + 8))(v20, v21);
      (*(v19 + 8))(v17, v18);
      goto LABEL_10;
    }

    (*(*(v1 + 240) + 16))(*(v1 + 248), *(v1 + 256), *(v1 + 232));
    v38 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);

    v32 = swift_task_alloc();
    *(v1 + 472) = v32;
    v33 = sub_2407EEEDC(&qword_27E506D10, MEMORY[0x277CEDB20], MEMORY[0x277CEDB18]);
    *v32 = v1;
    v32[1] = sub_2407E18B4;
    v34 = *(v1 + 248);
    v35 = *(v1 + 232);
    v36 = *(v1 + 176);

    return v38(v36, v34, v35, v33);
  }
}

uint64_t sub_2407E18B4()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v3 = v2[18];

    v4 = sub_2407E1F6C;
  }

  else
  {
    v3 = v2[18];
    (*(v2[21] + 8))(v2[22], v2[20]);

    v4 = sub_2407E1A14;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2407E1A14()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 368);
  v3 = *(v0 + 344);
  v4 = *(v0 + 352);
  v5 = *(v0 + 288);
  v9 = *(v0 + 416);
  (*(*(v0 + 240) + 8))(*(v0 + 256), *(v0 + 232));
  *(v0 + 88) = v5;
  *(v0 + 96) = v9;
  *(v0 + 112) = v1;
  type metadata accessor for RemoteSetupService.Failure(0, v0 + 88);
  swift_getWitnessTable();
  swift_allocError();
  *v6 = 13;
  swift_willThrow();

  (*(v4 + 8))(v2, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2407E1BD4(uint64_t a1)
{
  v4 = *v2;
  v4[63] = v1;

  v5 = v4[18];
  if (v1)
  {
    v6 = sub_2407E21F4;
  }

  else
  {
    v4[64] = a1;
    v6 = sub_2407E1D10;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2407E1D10()
{
  v1 = v0[46];
  v3 = v0[43];
  v2 = v0[44];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];
  v5 = v0[64];

  return v4(v5);
}

uint64_t sub_2407E1E48()
{
  (*(v0[44] + 8))(v0[46], v0[43]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2407E1F6C()
{
  v1 = v0[46];
  v2 = v0[43];
  v3 = v0[44];
  v4 = v0[32];
  v5 = v0[29];
  v6 = v0[30];

  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2407E20C0()
{
  v1 = v0[46];
  v2 = v0[43];
  v3 = v0[44];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2407E21F4()
{
  v1 = v0[46];
  v2 = v0[43];
  v3 = v0[44];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

void *sub_2407E2328@<X0>(void *a1@<X8>)
{
  v14 = a1;
  v16 = sub_2408D4FD0();
  v1 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2408D4FC0();
  MEMORY[0x28223BE20](v4);
  v5 = sub_2408D4C70();
  MEMORY[0x28223BE20](v5 - 8);
  v13 = [objc_opt_self() sharedInstance];
  v15 = sub_2407EEDBC(0, &qword_28130EF48, 0x277D85C78);
  sub_2408D4C60();
  v17 = MEMORY[0x277D84F90];
  sub_2407EEEDC(&unk_28130EF50, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DB0, &unk_2408D6D80);
  sub_2407D917C(&qword_28130EF98, &qword_27E506DB0, &unk_2408D6D80, MEMORY[0x277D83970]);
  sub_2408D5080();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v16);
  v6 = sub_2408D4FF0();
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v8 = result;
    v9 = v14;
    v14[3] = &type metadata for SymptomReportGenerator;
    v9[4] = &off_285285708;
    result = swift_allocObject();
    *v9 = result;
    v10 = v13;
    result[2] = v8;
    result[3] = v10;
    v11 = MEMORY[0x277D84FA0];
    result[4] = v6;
    result[5] = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2407E2630(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_2408D3EC0();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_2408D3970();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_2408D38D0();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407E27B8, v2, 0);
}

uint64_t sub_2407E27B8()
{
  v41 = v0;
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 16);
  v5 = sub_2408D4B20();
  *(v0 + 120) = __swift_project_value_buffer(v5, qword_27E506C48);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_2408D4B10();
  v7 = sub_2408D4F20();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 112);
  v11 = *(v0 + 88);
  v10 = *(v0 + 96);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = v39;
    *v12 = 136315138;
    sub_2407EEEDC(&qword_27E506AA0, MEMORY[0x277CED3D8], MEMORY[0x277CED3F0]);
    v13 = sub_2408D5220();
    v38 = v7;
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = sub_2408CC504(v13, v15, &v40);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_2407CF000, v6, v38, "Setup preflight check if repair is needed for account: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    MEMORY[0x245CC9F60](v39, -1, -1);
    MEMORY[0x245CC9F60](v12, -1, -1);
  }

  else
  {

    v16 = *(v10 + 8);
    v16(v9, v11);
  }

  v18 = [objc_opt_self() sharedInstance];
  sub_2408D37F0();

  v21 = *(v0 + 104);
  v22 = *(v0 + 80);
  v23 = *(v0 + 88);
  v24 = *(v0 + 64);
  v25 = *(v0 + 72);
  sub_2408D38F0();
  (*(v25 + 8))(v22, v24);
  v26 = sub_2408D3880();
  v16(v21, v23);
  if (v26)
  {
    v27 = __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
    v29 = *v27;
    v28 = v27[1];
    v30 = v27[2];
    v31 = v27[3];
    v32 = swift_task_alloc();
    *(v0 + 128) = v32;
    *v32 = v0;
    v32[1] = sub_2407E2C50;
    v33 = *(v0 + 56);
    v34 = *(v0 + 16);

    return sub_2408D139C(v33, v34, v29, v28, v30, v31);
  }

  else
  {
    v35 = sub_2408D4B10();
    v36 = sub_2408D4F20();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_2407CF000, v35, v36, "Account is non-primary account. Skipping preflight repair.", v37, 2u);
      MEMORY[0x245CC9F60](v37, -1, -1);
    }

    v19 = *(v0 + 8);

    return v19(0);
  }
}

uint64_t sub_2407E2C50()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_2407E2E30;
  }

  else
  {
    v4 = sub_2407E2D7C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2407E2D7C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = sub_2408D3E50();
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v4 & 1);
}

uint64_t sub_2407E2E30(uint64_t a1)
{
  v2 = *(v1 + 136);
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F30();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2407CF000, v3, v4, "Preflight check failed. Defaulting to skipping preflight repair.", v5, 2u);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  v6 = *(v1 + 8);

  return v6(0);
}

uint64_t sub_2407E2F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = *v3;
  v4[16] = *v3;
  v6 = *(v5 + 88);
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v7 = sub_2408D5060();
  v4[20] = v7;
  v4[21] = *(v7 - 8);
  v4[22] = swift_task_alloc();
  v8 = sub_2408D3D70();
  v4[23] = v8;
  v4[24] = *(v8 - 8);
  v4[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D00, &unk_2408D7FE0);
  v4[26] = swift_task_alloc();
  v9 = sub_2408D3770();
  v4[27] = v9;
  v4[28] = *(v9 - 8);
  v4[29] = swift_task_alloc();
  v10 = sub_2408D3970();
  v4[30] = v10;
  v4[31] = *(v10 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A18, &qword_2408D67E8);
  v4[37] = swift_task_alloc();
  v11 = sub_2408D3490();
  v4[38] = v11;
  v4[39] = *(v11 - 8);
  v4[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407E32A8, v3, 0);
}

uint64_t sub_2407E32A8()
{
  v71 = v0;
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  v4 = (v0[15] + *(*v0[15] + 152));
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  (*(v2 + 104))(v1, *MEMORY[0x277CED208], v3);
  v5 = sub_2408D4770();
  (*(v2 + 8))(v1, v3);
  if ((v5 & 1) != 0 && (v6 = v0[37], sub_2408D37A0(), v7 = sub_2408D3720(), v8 = (*(*(v7 - 8) + 48))(v6, 1, v7), sub_2407D9440(v6, &qword_27E506A18, &qword_2408D67E8), v8 != 1))
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v20 = v0[36];
    v21 = v0[30];
    v22 = v0[31];
    v23 = v0[13];
    v24 = sub_2408D4B20();
    __swift_project_value_buffer(v24, qword_27E506C48);
    v25 = *(v22 + 16);
    (v25)(v20, v23, v21);
    v26 = sub_2408D4B10();
    v27 = sub_2408D4F20();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[36];
    v31 = v0[30];
    v30 = v0[31];
    if (v28)
    {
      v32 = swift_slowAlloc();
      v70[0] = swift_slowAlloc();
      v65 = v70[0];
      *v32 = 136315138;
      sub_2407EEEDC(&qword_28130F418, MEMORY[0x277CED3F8], MEMORY[0x277CED410]);
      v33 = sub_2408D5220();
      log = v25;
      v35 = v34;
      v64 = v27;
      v36 = *(v30 + 8);
      v36(v29, v31);
      v37 = sub_2408CC504(v33, v35, v70);
      v25 = log;

      *(v32 + 4) = v37;
      _os_log_impl(&dword_2407CF000, v26, v64, "Family info is nonnull for account: %s, proceeding to do easy sign in", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v65);
      MEMORY[0x245CC9F60](v65, -1, -1);
      v38 = v32;
      v39 = v36;
      MEMORY[0x245CC9F60](v38, -1, -1);
    }

    else
    {

      v39 = *(v30 + 8);
      v39(v29, v31);
    }

    v0[41] = v39;
    sub_2408D37F0();
    v40 = v0[33];
    v41 = v0[30];
    v42 = v0[13];
    (v25)(v0[34], v0[35], v41);
    (v25)(v40, v42, v41);
    v43 = sub_2408D4B10();
    v44 = sub_2408D4F10();
    v45 = os_log_type_enabled(v43, v44);
    v47 = v0[33];
    v46 = v0[34];
    v48 = v0[30];
    if (v45)
    {
      loga = v43;
      v49 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v70[0] = v69;
      *v49 = 136315394;
      sub_2407EEEDC(&qword_28130F418, MEMORY[0x277CED3F8], MEMORY[0x277CED410]);
      v50 = sub_2408D5220();
      v66 = v44;
      v51 = v39;
      v53 = v52;
      v51(v46, v48);
      v54 = sub_2408CC504(v50, v53, v70);

      *(v49 + 4) = v54;
      *(v49 + 12) = 2080;
      v55 = sub_2408D5220();
      v57 = v56;
      v51(v47, v48);
      v58 = sub_2408CC504(v55, v57, v70);

      *(v49 + 14) = v58;
      _os_log_impl(&dword_2407CF000, loga, v66, "Attempting challenged dependent auth with source: %s and target: %s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC9F60](v69, -1, -1);
      MEMORY[0x245CC9F60](v49, -1, -1);
    }

    else
    {

      v39(v47, v48);
      v39(v46, v48);
    }

    v59 = swift_task_alloc();
    v0[42] = v59;
    *v59 = v0;
    v59[1] = sub_2407E3A3C;
    v60 = v0[35];
    v61 = v0[14];
    v63 = v0[12];
    v62 = v0[13];

    return sub_2407E911C(v63, v60, v62, v61);
  }

  else
  {
    v9 = v0[15];
    sub_2408D36D0();
    v10 = *(v9 + *(*v9 + 136));
    v11 = *(v9 + *(*v9 + 144));
    v12 = sub_2408D4150();
    v13 = sub_2408D4140();
    v14 = MEMORY[0x277CED7C0];
    v0[5] = v12;
    v0[6] = v14;
    v0[2] = v13;
    v16 = swift_task_alloc();
    v0[45] = v16;
    *v16 = v0;
    v16[1] = sub_2407E3C9C;
    v17 = v0[29];
    v18 = v0[13];

    return sub_2407E52F0(v17, v18, v15, v10, v11, (v0 + 2));
  }
}

uint64_t sub_2407E3A3C(uint64_t a1)
{
  v4 = *v2;
  v4[43] = v1;

  v5 = v4[15];
  if (v1)
  {
    v6 = sub_2407E46AC;
  }

  else
  {
    v4[44] = a1;
    v6 = sub_2407E3B78;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2407E3B78()
{
  (*(v0 + 328))(*(v0 + 280), *(v0 + 240));
  v3 = *(v0 + 352);

  v1 = *(v0 + 8);

  return v1(v3);
}

uint64_t sub_2407E3C9C()
{
  v2 = *v1;
  v2[46] = v0;

  v3 = v2[15];
  sub_2407D9440(v2[26], &qword_27E506D00, &unk_2408D7FE0);
  __swift_destroy_boxed_opaque_existential_0Tm(v2 + 2);
  if (v0)
  {
    v4 = sub_2407E4A18;
  }

  else
  {
    v4 = sub_2407E3DFC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2407E3DFC()
{
  v64 = v0;
  v1 = *(v0 + 368);
  v2 = IdMSAccount.SRPResults.into()();
  (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
  if (v1)
  {
    *(v0 + 376) = v1;
    *(v0 + 80) = v1;
    v3 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    if (swift_dynamicCast())
    {
      v4 = (*(*(v0 + 192) + 88))(*(v0 + 200), *(v0 + 184));
      if (v4 == *MEMORY[0x277CED588])
      {
        v5 = v4;

        if (qword_27E506918 != -1)
        {
          swift_once();
        }

        v6 = sub_2408D4B20();
        __swift_project_value_buffer(v6, qword_27E506C48);
        v7 = sub_2408D4B10();
        v8 = sub_2408D4F30();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = *(v0 + 184);
          v10 = *(v0 + 192);
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          *v11 = 138412290;
          sub_2407EEEDC(&qword_27E506D20, MEMORY[0x277CED590], MEMORY[0x277CED598]);
          swift_allocError();
          (*(v10 + 104))(v13, v5, v9);
          v14 = _swift_stdlib_bridgeErrorToNSError();
          *(v11 + 4) = v14;
          *v12 = v14;
          _os_log_impl(&dword_2407CF000, v7, v8, "Failed to perform magic auth for account with error: %@", v11, 0xCu);
          sub_2407D9440(v12, &qword_27E506AB0, &unk_2408D6830);
          MEMORY[0x245CC9F60](v12, -1, -1);
          MEMORY[0x245CC9F60](v11, -1, -1);
        }

        v16 = *(v0 + 168);
        v15 = *(v0 + 176);
        v17 = *(v0 + 160);
        v18 = *(v0 + 136);
        v19 = *(v0 + 144);
        v20 = *(v0 + 120);

        v21 = *(*v20 + 128);
        swift_beginAccess();
        (*(v16 + 16))(v15, v20 + v21, v17);
        if ((*(v19 + 48))(v15, 1, v18))
        {
          (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
        }

        else
        {
          v47 = *(v0 + 184);
          v48 = *(v0 + 192);
          v50 = *(v0 + 168);
          v49 = *(v0 + 176);
          v51 = *(v0 + 152);
          v52 = *(v0 + 160);
          v53 = *(v0 + 136);
          v54 = *(v0 + 144);
          (*(v54 + 16))(v51, v49, v53);
          (*(v50 + 8))(v49, v52);
          sub_2407EEEDC(&qword_27E506D20, MEMORY[0x277CED590], MEMORY[0x277CED598]);
          v55 = swift_allocError();
          (*(v48 + 104))(v56, v5, v47);
          *(v0 + 88) = v55;
          sub_2408D3640();

          (*(v54 + 8))(v51, v53);
        }

        v58 = *(v0 + 184);
        v57 = *(v0 + 192);
        sub_2407EEEDC(&qword_27E506D20, MEMORY[0x277CED590], MEMORY[0x277CED598]);
        swift_allocError();
        (*(v57 + 104))(v59, v5, v58);
        swift_willThrow();

        v60 = *(v0 + 8);

        return v60();
      }

      (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    }

    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v25 = *(v0 + 248);
    v24 = *(v0 + 256);
    v26 = *(v0 + 240);
    v27 = *(v0 + 104);
    v28 = sub_2408D4B20();
    __swift_project_value_buffer(v28, qword_27E506C48);
    (*(v25 + 16))(v24, v27, v26);
    v29 = v1;
    v30 = sub_2408D4B10();
    v31 = sub_2408D4F30();

    v32 = os_log_type_enabled(v30, v31);
    v34 = *(v0 + 248);
    v33 = *(v0 + 256);
    v35 = *(v0 + 240);
    if (v32)
    {
      v36 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v63 = v62;
      *v36 = 136315394;
      sub_2407EEEDC(&qword_28130F418, MEMORY[0x277CED3F8], MEMORY[0x277CED410]);
      v37 = sub_2408D5220();
      v39 = v38;
      (*(v34 + 8))(v33, v35);
      v40 = sub_2408CC504(v37, v39, &v63);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2112;
      v41 = v1;
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 14) = v42;
      *v61 = v42;
      _os_log_impl(&dword_2407CF000, v30, v31, "Failed to perform magic auth for account (%s with error: %@", v36, 0x16u);
      sub_2407D9440(v61, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v61, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v62);
      MEMORY[0x245CC9F60](v62, -1, -1);
      MEMORY[0x245CC9F60](v36, -1, -1);
    }

    else
    {

      (*(v34 + 8))(v33, v35);
    }

    v43 = swift_task_alloc();
    *(v0 + 384) = v43;
    *v43 = v0;
    v43[1] = sub_2407E47CC;
    v44 = *(v0 + 112);
    v46 = *(v0 + 96);
    v45 = *(v0 + 104);

    return sub_2407E6308(v46, v45, v44);
  }

  else
  {

    v22 = *(v0 + 8);

    return v22(v2);
  }
}

uint64_t sub_2407E46AC()
{
  (*(v0 + 328))(*(v0 + 280), *(v0 + 240));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2407E47CC(uint64_t a1)
{
  v4 = *v2;
  v4[49] = v1;

  v5 = v4[15];
  if (v1)
  {
    v6 = sub_2407E51E4;
  }

  else
  {
    v4[50] = a1;
    v6 = sub_2407E4908;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2407E4908()
{
  v3 = *(v0 + 400);

  v1 = *(v0 + 8);

  return v1(v3);
}

uint64_t sub_2407E4A18()
{
  v62 = v0;
  v1 = *(v0 + 368);
  *(v0 + 80) = v1;
  *(v0 + 376) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  if (swift_dynamicCast())
  {
    v3 = (*(*(v0 + 192) + 88))(*(v0 + 200), *(v0 + 184));
    if (v3 == *MEMORY[0x277CED588])
    {
      v4 = v3;

      if (qword_27E506918 != -1)
      {
        swift_once();
      }

      v5 = sub_2408D4B20();
      __swift_project_value_buffer(v5, qword_27E506C48);
      v6 = sub_2408D4B10();
      v7 = sub_2408D4F30();
      if (os_log_type_enabled(v6, v7))
      {
        v9 = *(v0 + 184);
        v8 = *(v0 + 192);
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138412290;
        sub_2407EEEDC(&qword_27E506D20, MEMORY[0x277CED590], MEMORY[0x277CED598]);
        swift_allocError();
        (*(v8 + 104))(v12, v4, v9);
        v13 = _swift_stdlib_bridgeErrorToNSError();
        *(v10 + 4) = v13;
        *v11 = v13;
        _os_log_impl(&dword_2407CF000, v6, v7, "Failed to perform magic auth for account with error: %@", v10, 0xCu);
        sub_2407D9440(v11, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v11, -1, -1);
        MEMORY[0x245CC9F60](v10, -1, -1);
      }

      v15 = *(v0 + 168);
      v14 = *(v0 + 176);
      v16 = *(v0 + 160);
      v17 = *(v0 + 136);
      v18 = *(v0 + 144);
      v19 = *(v0 + 120);

      v20 = *(*v19 + 128);
      swift_beginAccess();
      (*(v15 + 16))(v14, v19 + v20, v16);
      if ((*(v18 + 48))(v14, 1, v17))
      {
        (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
      }

      else
      {
        v45 = *(v0 + 192);
        v46 = *(v0 + 168);
        v47 = *(v0 + 176);
        v48 = *(v0 + 152);
        v49 = *(v0 + 160);
        v50 = *(v0 + 136);
        v51 = *(v0 + 144);
        v59 = *(v0 + 184);
        (*(v51 + 16))(v48, v47, v50);
        (*(v46 + 8))(v47, v49);
        sub_2407EEEDC(&qword_27E506D20, MEMORY[0x277CED590], MEMORY[0x277CED598]);
        v52 = swift_allocError();
        (*(v45 + 104))(v53, v4, v59);
        *(v0 + 88) = v52;
        sub_2408D3640();

        (*(v51 + 8))(v48, v50);
      }

      v55 = *(v0 + 184);
      v54 = *(v0 + 192);
      sub_2407EEEDC(&qword_27E506D20, MEMORY[0x277CED590], MEMORY[0x277CED598]);
      swift_allocError();
      (*(v54 + 104))(v56, v4, v55);
      swift_willThrow();

      v57 = *(v0 + 8);

      return v57();
    }

    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
  }

  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v22 = *(v0 + 248);
  v21 = *(v0 + 256);
  v23 = *(v0 + 240);
  v24 = *(v0 + 104);
  v25 = sub_2408D4B20();
  __swift_project_value_buffer(v25, qword_27E506C48);
  (*(v22 + 16))(v21, v24, v23);
  v26 = v1;
  v27 = sub_2408D4B10();
  v28 = sub_2408D4F30();

  v29 = os_log_type_enabled(v27, v28);
  v31 = *(v0 + 248);
  v30 = *(v0 + 256);
  v32 = *(v0 + 240);
  if (v29)
  {
    v33 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v61 = v60;
    *v33 = 136315394;
    sub_2407EEEDC(&qword_28130F418, MEMORY[0x277CED3F8], MEMORY[0x277CED410]);
    v34 = sub_2408D5220();
    v36 = v35;
    (*(v31 + 8))(v30, v32);
    v37 = sub_2408CC504(v34, v36, &v61);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2112;
    v38 = v1;
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 14) = v39;
    *v58 = v39;
    _os_log_impl(&dword_2407CF000, v27, v28, "Failed to perform magic auth for account (%s with error: %@", v33, 0x16u);
    sub_2407D9440(v58, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v58, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v60);
    MEMORY[0x245CC9F60](v60, -1, -1);
    MEMORY[0x245CC9F60](v33, -1, -1);
  }

  else
  {

    (*(v31 + 8))(v30, v32);
  }

  v40 = swift_task_alloc();
  *(v0 + 384) = v40;
  *v40 = v0;
  v40[1] = sub_2407E47CC;
  v41 = *(v0 + 112);
  v43 = *(v0 + 96);
  v42 = *(v0 + 104);

  return sub_2407E6308(v43, v42, v41);
}

uint64_t sub_2407E51E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2407E52F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[12] = a6;
  v7[13] = v6;
  v7[10] = a4;
  v7[11] = a5;
  v7[8] = a1;
  v7[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A18, &qword_2408D67E8);
  v7[14] = swift_task_alloc();
  v8 = sub_2408D3490();
  v7[15] = v8;
  v7[16] = *(v8 - 8);
  v7[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D00, &unk_2408D7FE0);
  v7[18] = swift_task_alloc();
  v9 = sub_2408D36A0();
  v7[19] = v9;
  v7[20] = *(v9 - 8);
  v7[21] = swift_task_alloc();
  v10 = sub_2408D3680();
  v7[22] = v10;
  v7[23] = *(v10 - 8);
  v7[24] = swift_task_alloc();
  v11 = sub_2408D3970();
  v7[25] = v11;
  v7[26] = *(v11 - 8);
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();
  sub_2408D3D80();
  sub_2407EEEDC(&qword_27E506D08, MEMORY[0x277CED5B0], MEMORY[0x277CED5B8]);
  v13 = sub_2408D4E00();
  v7[29] = v13;
  v7[30] = v12;

  return MEMORY[0x2822009F8](sub_2407E559C, v13, v12);
}

uint64_t sub_2407E559C()
{
  v29 = v0;
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[9];
  v5 = sub_2408D4B20();
  v0[31] = __swift_project_value_buffer(v5, qword_27E506C48);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F10();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[28];
  v12 = v0[25];
  v11 = v0[26];
  if (v9)
  {
    buf = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *buf = 136315138;
    sub_2407EEEDC(&qword_28130F418, MEMORY[0x277CED3F8], MEMORY[0x277CED410]);
    v13 = v6;
    v14 = sub_2408D5220();
    v16 = v15;
    v25 = v8;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = v14;
    v6 = v13;
    v19 = sub_2408CC504(v18, v16, &v28);

    *(buf + 4) = v19;
    _os_log_impl(&dword_2407CF000, v7, v25, "Performing magic auth for account: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    MEMORY[0x245CC9F60](v27, -1, -1);
    MEMORY[0x245CC9F60](buf, -1, -1);
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v0[32] = v17;
  v6(v0[27], v0[9], v0[25]);
  v20 = swift_task_alloc();
  v0[33] = v20;
  *v20 = v0;
  v20[1] = sub_2407E5850;
  v21 = v0[24];
  v22 = v0[10];
  v23 = v0[11];

  return MEMORY[0x28213EF40](v21, v22, v23);
}

uint64_t sub_2407E5850()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);
  if (v0)
  {
    v5 = sub_2407E5D00;
  }

  else
  {
    v5 = sub_2407E598C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2407E598C()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v6 = v0[20];
  (*(v2 + 16))(v4, v1, v3);
  (*(v6 + 104))(v4, *MEMORY[0x277CED388], v5);
  sub_2408D3790();
  (*(v2 + 8))(v1, v3);
  sub_2408D36D0();
  v7 = swift_task_alloc();
  v0[35] = v7;
  *v7 = v0;
  v7[1] = sub_2407E5AC0;
  v8 = v0[27];
  v9 = v0[18];
  v10 = v0[8];

  return sub_2407E8264(v10, v8, v9);
}

uint64_t sub_2407E5AC0()
{
  v2 = *v1;
  (*v1)[36] = v0;

  sub_2407D9440(v2[18], &qword_27E506D00, &unk_2408D7FE0);
  v3 = v2[30];
  v4 = v2[29];
  if (v0)
  {
    v5 = sub_2407E6230;
  }

  else
  {
    v5 = sub_2407E5C24;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2407E5C24()
{
  (*(v0 + 256))(*(v0 + 216), *(v0 + 200));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2407E5D00()
{
  v40 = v0;
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_1(*(v0 + 96), *(*(v0 + 96) + 24));
  (*(v2 + 104))(v1, *MEMORY[0x277CED208], v3);
  v4 = sub_2408D4770();
  (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
    v12 = *(v0 + 272);
    v13 = v12;
    v10 = sub_2408D4B10();
    v11 = sub_2408D4F30();

    if (os_log_type_enabled(v10, v11))
    {
LABEL_6:
      v14 = *(v0 + 272);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v39 = v17;
      *v15 = 136315394;
      swift_beginAccess();
      sub_2407EEEDC(&qword_28130F418, MEMORY[0x277CED3F8], MEMORY[0x277CED410]);
      v18 = sub_2408D5220();
      v20 = sub_2408CC504(v18, v19, &v39);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2112;
      v21 = v14;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v22;
      *v16 = v22;
      _os_log_impl(&dword_2407CF000, v10, v11, "Failed to fetch companion key envelope for %s: %@", v15, 0x16u);
      sub_2407D9440(v16, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v16, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x245CC9F60](v17, -1, -1);
      MEMORY[0x245CC9F60](v15, -1, -1);
    }

LABEL_7:

    v23 = *(v0 + 256);
    v24 = *(v0 + 216);
    v25 = *(v0 + 200);
    swift_willThrow();
    v23(v24, v25);

    v26 = *(v0 + 8);

    return v26();
  }

  v5 = *(v0 + 112);
  sub_2408D37A0();
  v6 = sub_2408D3720();
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6);
  sub_2407D9440(v5, &qword_27E506A18, &qword_2408D67E8);
  if (v7 == 1)
  {
    v8 = *(v0 + 272);
    v9 = v8;
    v10 = sub_2408D4B10();
    v11 = sub_2408D4F30();

    if (os_log_type_enabled(v10, v11))
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  v28 = sub_2408D4B10();
  v29 = sub_2408D4F10();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_2407CF000, v28, v29, "Family info is nonnull, attempting interactive auth on target device", v30, 2u);
    MEMORY[0x245CC9F60](v30, -1, -1);
  }

  v31 = *(v0 + 272);
  v33 = *(v0 + 160);
  v32 = *(v0 + 168);
  v34 = *(v0 + 152);

  (*(v33 + 104))(v32, *MEMORY[0x277CED3A0], v34);
  sub_2408D3790();

  sub_2408D36D0();
  v35 = swift_task_alloc();
  *(v0 + 280) = v35;
  *v35 = v0;
  v35[1] = sub_2407E5AC0;
  v36 = *(v0 + 216);
  v37 = *(v0 + 144);
  v38 = *(v0 + 64);

  return sub_2407E8264(v38, v36, v37);
}

uint64_t sub_2407E6230()
{
  (*(v0 + 256))(*(v0 + 216), *(v0 + 200));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2407E6308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v4[10] = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D00, &unk_2408D7FE0);
  v4[11] = swift_task_alloc();
  v5 = sub_2408D3770();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = sub_2408D36A0();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50);
  v4[18] = swift_task_alloc();
  v7 = sub_2408D36F0();
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();
  v8 = sub_2408D38D0();
  v4[22] = v8;
  v4[23] = *(v8 - 8);
  v4[24] = swift_task_alloc();
  v9 = sub_2408D3970();
  v4[25] = v9;
  v4[26] = *(v9 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407E65E0, v3, 0);
}

uint64_t sub_2407E65E0()
{
  v29 = v0;
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[7];
  v5 = sub_2408D4B20();
  v0[29] = __swift_project_value_buffer(v5, qword_27E506C48);
  v6 = *(v3 + 16);
  v0[30] = v6;
  v0[31] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F50();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[28];
  v11 = v0[25];
  v12 = v0[26];
  if (v9)
  {
    v13 = v0[23];
    v14 = v0[24];
    v15 = v0[22];
    v16 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v16 = 136315138;
    v26 = v11;
    sub_2408D38F0();
    sub_2407EEEDC(&qword_27E506AA0, MEMORY[0x277CED3D8], MEMORY[0x277CED3F0]);
    v17 = sub_2408D5220();
    v25 = v8;
    v19 = v18;
    (*(v13 + 8))(v14, v15);
    v20 = *(v12 + 8);
    v20(v10, v26);
    v21 = sub_2408CC504(v17, v19, &v28);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_2407CF000, v7, v25, "Performing proxied auth for account %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    MEMORY[0x245CC9F60](v27, -1, -1);
    MEMORY[0x245CC9F60](v16, -1, -1);
  }

  else
  {

    v20 = *(v12 + 8);
    v20(v10, v11);
  }

  v0[32] = v20;
  sub_2408D3D80();
  sub_2407EEEDC(&qword_27E506D08, MEMORY[0x277CED5B0], MEMORY[0x277CED5B8]);
  v23 = sub_2408D4E00();

  return MEMORY[0x2822009F8](sub_2407E68C4, v23, v22);
}

uint64_t sub_2407E68C4()
{
  sub_2408D3D30();
  *(v0 + 264) = 0;
  v1 = *(v0 + 72);

  return MEMORY[0x2822009F8](sub_2407E6954, v1, 0);
}

uint64_t sub_2407E6954()
{
  v1 = *(v0 + 168);
  v2 = swift_task_alloc();
  *(v0 + 272) = v2;
  *(v2 + 16) = *(v0 + 56);
  *(v2 + 32) = v1;
  v5 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
  v3 = swift_task_alloc();
  *(v0 + 280) = v3;
  *v3 = v0;
  v3[1] = sub_2407E6A34;

  return v5(sub_2407EECEC, v2);
}

uint64_t sub_2407E6A34()
{
  v2 = *v1;
  v2[36] = v0;

  if (v0)
  {
    v3 = v2[9];

    return MEMORY[0x2822009F8](sub_2407E771C, v3, 0);
  }

  else
  {
    v4 = v2[10];

    v5 = *(v4 + 96);
    v2[37] = v5;
    v6 = *(v5 + 32);
    v7 = *(v4 + 80);
    v2[38] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v2[39] = v8;
    *v8 = v2;
    v8[1] = sub_2407E6C78;
    v9 = v2[6];

    return v11(v9, v7, v5);
  }
}

uint64_t sub_2407E6C78(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 320) = a1;
  *(v4 + 328) = v1;

  v5 = *(v3 + 72);
  if (v1)
  {
    v6 = sub_2407E780C;
  }

  else
  {
    v6 = sub_2407E6DAC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2407E6DAC()
{
  v45 = v0;
  v1 = *(v0 + 144);
  (*(v0 + 240))(*(v0 + 216), *(v0 + 56), *(v0 + 200));
  sub_2408CBA10(v1);
  sub_240876428(v1);
  sub_2407D9440(v1, &qword_27E507F00, &qword_2408D6D50);
  v2 = sub_2408CBDF8();
  if (v3)
  {
    v4 = v2;
    v5 = v3;

    v6 = sub_2408D4B10();
    v7 = sub_2408D4F50();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v44[0] = v9;
      *v8 = 136642819;
      *(v8 + 4) = sub_2408CC504(v4, v5, v44);
      _os_log_impl(&dword_2407CF000, v6, v7, "Successfully obtained passwordless token for proxied auth: %{sensitive}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x245CC9F60](v9, -1, -1);
      MEMORY[0x245CC9F60](v8, -1, -1);
    }

    v10 = *(v0 + 136);
    v11 = sub_2408CBE04();
    *v10 = v4;
    v10[1] = v5;
    v10[2] = v11;
    v10[3] = v12;
    v13 = MEMORY[0x277CED398];
LABEL_9:
    (*(*(v0 + 128) + 104))(*(v0 + 136), *v13, *(v0 + 120));
    sub_2408D3790();
    sub_2408D36D0();
    v23 = swift_task_alloc();
    *(v0 + 336) = v23;
    *v23 = v0;
    v23[1] = sub_2407E729C;
    v24 = *(v0 + 216);
    v25 = *(v0 + 112);
    v26 = *(v0 + 88);

    return sub_2407E8264(v25, v24, v26);
  }

  v14 = sub_2408CBDEC();
  if (v15)
  {
    v16 = v14;
    v17 = v15;

    v18 = sub_2408D4B10();
    v19 = sub_2408D4F50();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v44[0] = v21;
      *v20 = 136642819;
      *(v20 + 4) = sub_2408CC504(v16, v17, v44);
      _os_log_impl(&dword_2407CF000, v18, v19, "Successfully obtained raw password for proxied auth: %{sensitive}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x245CC9F60](v21, -1, -1);
      MEMORY[0x245CC9F60](v20, -1, -1);
    }

    v22 = *(v0 + 136);
    *v22 = v16;
    v22[1] = v17;
    v13 = MEMORY[0x277CED380];
    goto LABEL_9;
  }

  v28 = sub_2408D4B10();
  v29 = sub_2408D4F30();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_2407CF000, v28, v29, "Missing raw password from proxied auth results", v30, 2u);
    MEMORY[0x245CC9F60](v30, -1, -1);
  }

  v31 = *(v0 + 296);
  v32 = *(v0 + 304);
  v33 = *(v0 + 216);
  v34 = *(v0 + 200);
  v35 = *(v0 + 160);
  v42 = *(v0 + 256);
  v43 = *(v0 + 168);
  v41 = *(v0 + 152);
  v36 = *(v0 + 80);

  v37 = *(v36 + 88);
  v38 = *(v36 + 104);
  *(v0 + 16) = v32;
  *(v0 + 24) = v37;
  *(v0 + 32) = v31;
  *(v0 + 40) = v38;
  type metadata accessor for RemoteSetupService.Failure(0, v0 + 16);
  swift_getWitnessTable();
  swift_allocError();
  *v39 = 0;
  swift_willThrow();

  v42(v33, v34);
  (*(v35 + 8))(v43, v41);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_2407E729C()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 72);
  sub_2407D9440(v3, &qword_27E506D00, &unk_2408D7FE0);
  if (v0)
  {
    v5 = sub_2407E78EC;
  }

  else
  {
    v5 = sub_2407E73F4;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2407E73F4()
{
  v1 = v0[43];
  v2 = IdMSAccount.SRPResults.into()();
  v3 = v0[40];
  v4 = v0[32];
  if (v1)
  {
    v5 = v0[27];
    v6 = v0[25];
    v8 = v0[20];
    v7 = v0[21];
    v9 = v0[19];
    (*(v0[13] + 8))(v0[14], v0[12]);

    v4(v5, v6);
    (*(v8 + 8))(v7, v9);

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[27];
    v13 = v0[25];
    v14 = v0[20];
    v15 = v0[21];
    v18 = v0[19];
    v16 = v2;
    (*(v0[13] + 8))(v0[14], v0[12]);
    *(v16 + OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_originalReport) = v3;

    v4(v12, v13);
    (*(v14 + 8))(v15, v18);

    v17 = v0[1];

    return v17(v16);
  }
}

uint64_t sub_2407E7654()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2407E771C()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2407E780C()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2407E78EC()
{
  v1 = v0[32];
  v2 = v0[27];
  v3 = v0[25];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];

  v1(v2, v3);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2407E7A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = a4;
  v20 = a2;
  v21 = sub_2408D36F0();
  v4 = *(v21 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v21);
  v6 = sub_2408D4570();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = sub_2408D3970();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v12, v20, v13);
  (*(v14 + 56))(v12, 0, 1, v13);
  sub_2408D4640();
  (*(v7 + 104))(v9, *MEMORY[0x277CEDC48], v6);
  sub_2408D45C0();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = v21;
  (*(v4 + 16))(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v21);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  (*(v4 + 32))(v18 + v17, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  *(v18 + ((v5 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  return sub_2408D4590();
}

void sub_2407E7CE8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2408D36C0();
  [a1 setProxiedDevice_];

  v5 = objc_allocWithZone(sub_2408D3F20());

  v6 = sub_2408D3EF0();
  [a1 setAnisetteDataProvider_];
}

uint64_t sub_2407E7DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_2408D4220();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407E7E68, 0, 0);
}

uint64_t sub_2407E7E68()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    (*(v0[9] + 16))(v0[10], v0[6], v0[8]);
    v11 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    v3 = sub_2407EEEDC(&qword_27E506D28, MEMORY[0x277CED828], MEMORY[0x277CED820]);
    *v2 = v0;
    v2[1] = sub_2407E8078;
    v4 = v0[10];
    v5 = v0[8];
    v6 = v0[5];

    return v11(v6, v4, v5, v3);
  }

  else
  {
    v8 = sub_2408D3D70();
    sub_2407EEEDC(&qword_27E506D20, MEMORY[0x277CED590], MEMORY[0x277CED598]);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277CED578], v8);
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_2407E8078()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_2407E81F8;
  }

  else
  {
    v2 = sub_2407E818C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2407E818C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2407E81F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2407E8264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_2408D3980();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506CF0, &qword_2408D6C68);
  v4[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506CF8, &unk_2408D6C70);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = sub_2408D4530();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D00, &unk_2408D7FE0);
  v4[20] = swift_task_alloc();
  v8 = sub_2408D3970();
  v4[21] = v8;
  v4[22] = *(v8 - 8);
  v4[23] = swift_task_alloc();
  v9 = sub_2408D4500();
  v4[24] = v9;
  v4[25] = *(v9 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  sub_2408D3D80();
  sub_2407EEEDC(&qword_27E506D08, MEMORY[0x277CED5B0], MEMORY[0x277CED5B8]);
  v11 = sub_2408D4E00();
  v4[30] = v11;
  v4[31] = v10;

  return MEMORY[0x2822009F8](sub_2407E85B4, v11, v10);
}

uint64_t sub_2407E85B4()
{
  v35 = v0;
  v1 = v0[20];
  v2 = v0[4];
  (*(v0[22] + 16))(v0[23], v0[3], v0[21]);
  sub_2407EEE04(v2, v1, &qword_27E506D00, &unk_2408D7FE0);
  sub_2408D44E0();
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v3 = v0[28];
  v4 = v0[29];
  v5 = v0[24];
  v6 = v0[25];
  v7 = sub_2408D4B20();
  v0[32] = __swift_project_value_buffer(v7, qword_27E506C48);
  v8 = *(v6 + 16);
  v8(v3, v4, v5);
  v9 = sub_2408D4B10();
  v10 = sub_2408D4F20();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[28];
  if (v11)
  {
    v13 = v0[27];
    v31 = v10;
    v15 = v0[24];
    v14 = v0[25];
    v16 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v34 = v30;
    *v16 = 136315138;
    v8(v13, v12, v15);
    v17 = sub_2408D4D40();
    v32 = v8;
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v12, v15);
    v21 = sub_2408CC504(v17, v19, &v34);
    v8 = v32;

    *(v16 + 4) = v21;
    _os_log_impl(&dword_2407CF000, v9, v31, "Sending authenticate command: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x245CC9F60](v30, -1, -1);
    MEMORY[0x245CC9F60](v16, -1, -1);
  }

  else
  {
    v22 = v0[24];
    v23 = v0[25];

    v20 = *(v23 + 8);
    v20(v12, v22);
  }

  v0[33] = v20;
  v8(v0[26], v0[29], v0[24]);
  v33 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);
  v24 = swift_task_alloc();
  v0[34] = v24;
  v25 = sub_2407EEEDC(&qword_27E506D10, MEMORY[0x277CEDB20], MEMORY[0x277CEDB18]);
  *v24 = v0;
  v24[1] = sub_2407E88E8;
  v26 = v0[26];
  v27 = v0[24];
  v28 = v0[18];

  return v33(v28, v26, v27, v25);
}

uint64_t sub_2407E88E8()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 248);
  v4 = *(v2 + 240);
  if (v0)
  {
    v5 = sub_2407E8F00;
  }

  else
  {
    v5 = sub_2407E8A24;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2407E8A24()
{
  v40 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  (*(v4 + 32))(v1, *(v0 + 144), v3);
  v5 = *(v4 + 16);
  v5(v2, v1, v3);
  v6 = sub_2408D4B10();
  v7 = sub_2408D4F10();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 136);
  if (v8)
  {
    v10 = *(v0 + 120);
    v11 = *(v0 + 128);
    v12 = *(v0 + 112);
    v13 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = v38;
    *v13 = 136315138;
    v5(v11, v9, v12);
    v14 = sub_2408D4D40();
    v16 = v15;
    v17 = *(v10 + 8);
    v17(v9, v12);
    v18 = sub_2408CC504(v14, v16, &v39);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_2407CF000, v6, v7, "Sent authentication command and received response: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    MEMORY[0x245CC9F60](v38, -1, -1);
    MEMORY[0x245CC9F60](v13, -1, -1);
  }

  else
  {
    v19 = *(v0 + 112);
    v20 = *(v0 + 120);

    v17 = *(v20 + 8);
    v17(v9, v19);
  }

  v22 = *(v0 + 96);
  v21 = *(v0 + 104);
  v23 = *(v0 + 88);
  sub_2408D4510();
  sub_2408D4AD0();
  (*(v22 + 8))(v21, v23);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *(v0 + 152);
    v25 = *(v0 + 112);
    v26 = *(v0 + 64);
    v27 = *(v0 + 48);
    v28 = *(*(v0 + 56) + 32);
    v28(v26, *(v0 + 80), v27);
    sub_2407EEEDC(&qword_27E506D18, MEMORY[0x277CED418], MEMORY[0x277CED430]);
    swift_willThrowTypedImpl();
    swift_allocError();
    v28(v29, v26, v27);
    v17(v24, v25);
    (*(v0 + 264))(*(v0 + 232), *(v0 + 192));
  }

  else
  {
    v31 = *(v0 + 264);
    v32 = *(v0 + 232);
    v33 = *(v0 + 192);
    v34 = *(v0 + 80);
    v35 = *(v0 + 16);
    v17(*(v0 + 152), *(v0 + 112));
    v31(v32, v33);
    v36 = sub_2408D3770();
    (*(*(v36 - 8) + 32))(v35, v34, v36);
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_2407E8F00()
{
  v1 = *(v0 + 280);
  v2 = v1;
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F30();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 280);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2407CF000, v3, v4, "Failed to send authenticate command: %@", v6, 0xCu);
    sub_2407D9440(v7, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v7, -1, -1);
    MEMORY[0x245CC9F60](v6, -1, -1);
  }

  swift_willThrow();
  (*(v0 + 264))(*(v0 + 232), *(v0 + 192));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2407E911C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v5[12] = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D00, &unk_2408D7FE0);
  v5[13] = swift_task_alloc();
  v6 = sub_2408D3770();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v7 = sub_2408D36A0();
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50);
  v5[20] = swift_task_alloc();
  v8 = sub_2408D36F0();
  v5[21] = v8;
  v5[22] = *(v8 - 8);
  v5[23] = swift_task_alloc();
  v9 = sub_2408D3970();
  v5[24] = v9;
  v5[25] = *(v9 - 8);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v10 = sub_2408D38D0();
  v5[30] = v10;
  v5[31] = *(v10 - 8);
  v5[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407E9410, v4, 0);
}

uint64_t sub_2407E9410(uint64_t a1)
{
  v61 = v1;
  v3 = v1[31];
  v2 = v1[32];
  v4 = v1[30];
  sub_2408D38F0();
  v5 = sub_2408D3870();
  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v7 = v1[25];
    v6 = v1[26];
    v8 = v1[24];
    v9 = v1[9];
    v10 = sub_2408D4B20();
    __swift_project_value_buffer(v10, qword_27E506C48);
    (*(v7 + 16))(v6, v9, v8);
    v11 = sub_2408D4B10();
    v12 = sub_2408D4F10();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v1[25];
    v14 = v1[26];
    v16 = v1[24];
    if (v13)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v60 = v18;
      *v17 = 136315138;
      sub_2407EEEDC(&qword_28130F418, MEMORY[0x277CED3F8], MEMORY[0x277CED410]);
      v19 = sub_2408D5220();
      v21 = v20;
      (*(v15 + 8))(v14, v16);
      v22 = sub_2408CC504(v19, v21, &v60);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_2407CF000, v11, v12, "Target account %s represents an unknown teen account not in a family yet. Performing challenged independent auth", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x245CC9F60](v18, -1, -1);
      MEMORY[0x245CC9F60](v17, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v14, v16);
    }

    v48 = swift_task_alloc();
    v1[58] = v48;
    *v48 = v1;
    v48[1] = sub_2407EACC0;
    v49 = v1[10];
    v50 = v1[9];
    v51 = v1[7];

    return sub_2407EC1E4(v51, v50, v49);
  }

  else
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v23 = v1[28];
    v24 = v1[29];
    v25 = v1[24];
    v26 = v1[25];
    v28 = v1[8];
    v27 = v1[9];
    v29 = sub_2408D4B20();
    v1[33] = __swift_project_value_buffer(v29, qword_27E506C48);
    v30 = *(v26 + 16);
    v1[34] = v30;
    v1[35] = (v26 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v30(v24, v28, v25);
    v30(v23, v27, v25);
    v31 = sub_2408D4B10();
    v32 = sub_2408D4F50();
    v33 = os_log_type_enabled(v31, v32);
    v35 = v1[28];
    v34 = v1[29];
    v37 = v1[24];
    v36 = v1[25];
    if (v33)
    {
      v57 = v32;
      v38 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v60 = v58;
      *v38 = 136315394;
      sub_2407EEEDC(&qword_28130F418, MEMORY[0x277CED3F8], MEMORY[0x277CED410]);
      v39 = sub_2408D5220();
      v41 = v40;
      log = v31;
      v42 = *(v36 + 8);
      v42(v34, v37);
      v43 = sub_2408CC504(v39, v41, &v60);

      *(v38 + 4) = v43;
      *(v38 + 12) = 2080;
      v44 = sub_2408D5220();
      v46 = v45;
      v42(v35, v37);
      v47 = sub_2408CC504(v44, v46, &v60);

      *(v38 + 14) = v47;
      _os_log_impl(&dword_2407CF000, log, v57, "Performing challenged dependent proxied auth with source: %s and target: %s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC9F60](v58, -1, -1);
      MEMORY[0x245CC9F60](v38, -1, -1);
    }

    else
    {

      v42 = *(v36 + 8);
      v42(v35, v37);
      v42(v34, v37);
    }

    v1[36] = v42;
    v53 = v1[8];
    v54 = swift_task_alloc();
    v1[37] = v54;
    *(v54 + 16) = v53;
    v59 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
    v55 = swift_task_alloc();
    v1[38] = v55;
    *v55 = v1;
    v55[1] = sub_2407E99E8;

    return v59(sub_2407EECC0, v54);
  }
}

uint64_t sub_2407E99E8()
{
  v2 = *v1;
  v2[39] = v0;

  if (v0)
  {
    v3 = v2[11];

    return MEMORY[0x2822009F8](sub_2407EAF0C, v3, 0);
  }

  else
  {
    v4 = v2[11];
    v5 = v2[12];

    v2[40] = *(*v4 + 120);
    v6 = *(v5 + 96);
    v2[41] = v6;
    v7 = *(v6 + 32);
    v2[42] = v7;
    v2[43] = (v6 + 32) & 0xFFFFFFFFFFFFLL | 0x66C5000000000000;
    v8 = *(v5 + 80);
    v2[44] = v8;
    v12 = (v7 + *v7);
    v9 = swift_task_alloc();
    v2[45] = v9;
    *v9 = v2;
    v9[1] = sub_2407E9C30;
    v10 = v2[7];

    return v12(v10, v8, v6);
  }
}

uint64_t sub_2407E9C30(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 368) = a1;
  *(v4 + 376) = v1;

  v5 = *(v3 + 88);
  if (v1)
  {
    v6 = sub_2407EB000;
  }

  else
  {
    v6 = sub_2407E9D64;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2407E9D64()
{
  v13 = v0;

  v1 = sub_2408D4B10();
  v2 = sub_2408D4F10();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[46];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    v0[6] = v3;
    type metadata accessor for AuthenticationReport(0);

    v6 = sub_2408D4D40();
    v8 = sub_2408CC504(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_2407CF000, v1, v2, "Finished authenticating parent: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x245CC9F60](v5, -1, -1);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  else
  {
  }

  v0[48] = v0[47];
  sub_2408D3D80();
  sub_2407EEEDC(&qword_27E506D08, MEMORY[0x277CED5B0], MEMORY[0x277CED5B8]);
  v10 = sub_2408D4E00();

  return MEMORY[0x2822009F8](sub_2407E9F58, v10, v9);
}

uint64_t sub_2407E9F58()
{
  v1 = v0[48];
  sub_2408D3D30();
  v0[49] = v1;
  v2 = v0[11];
  if (v1)
  {
    v3 = sub_2407EB1C4;
  }

  else
  {
    v3 = sub_2407E9FE8;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_2407E9FE8()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 64);
  v3 = swift_task_alloc();
  *(v0 + 400) = v3;
  *(v3 + 16) = *(v0 + 72);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v6 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
  v4 = swift_task_alloc();
  *(v0 + 408) = v4;
  *v4 = v0;
  v4[1] = sub_2407EA0D0;

  return v6(sub_2407EECC8, v3);
}

uint64_t sub_2407EA0D0()
{
  v2 = *v1;
  v2[52] = v0;

  if (v0)
  {
    v3 = v2[11];

    return MEMORY[0x2822009F8](sub_2407EB2B0, v3, 0);
  }

  else
  {
    v4 = v2[42];

    v10 = (v4 + *v4);
    v5 = swift_task_alloc();
    v2[53] = v5;
    *v5 = v2;
    v5[1] = sub_2407EA2C8;
    v6 = v2[44];
    v7 = v2[41];
    v8 = v2[7];

    return v10(v8, v6, v7);
  }
}

uint64_t sub_2407EA2C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 432) = a1;
  *(v4 + 440) = v1;

  v5 = *(v3 + 88);
  if (v1)
  {
    v6 = sub_2407EB3C4;
  }

  else
  {
    v6 = sub_2407EA3FC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2407EA3FC()
{
  v45 = v0;
  v1 = *(v0 + 160);
  (*(v0 + 272))(*(v0 + 216), *(v0 + 72), *(v0 + 192));
  sub_2408CBA10(v1);
  sub_240876428(v1);
  sub_2407D9440(v1, &qword_27E507F00, &qword_2408D6D50);
  v2 = sub_2408CBDF8();
  if (v3)
  {
    v4 = v2;
    v5 = v3;

    v6 = sub_2408D4B10();
    v7 = sub_2408D4F50();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v44[0] = v9;
      *v8 = 136642819;
      *(v8 + 4) = sub_2408CC504(v4, v5, v44);
      _os_log_impl(&dword_2407CF000, v6, v7, "Successfully obtained passwordless token for proxied auth: %{sensitive}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x245CC9F60](v9, -1, -1);
      MEMORY[0x245CC9F60](v8, -1, -1);
    }

    v10 = *(v0 + 152);
    v11 = sub_2408CBE04();
    *v10 = v4;
    v10[1] = v5;
    v10[2] = v11;
    v10[3] = v12;
    v13 = MEMORY[0x277CED398];
LABEL_9:
    (*(*(v0 + 144) + 104))(*(v0 + 152), *v13, *(v0 + 136));
    sub_2408D3790();
    sub_2408D36D0();
    v23 = swift_task_alloc();
    *(v0 + 448) = v23;
    *v23 = v0;
    v23[1] = sub_2407EA908;
    v24 = *(v0 + 216);
    v25 = *(v0 + 128);
    v26 = *(v0 + 104);

    return sub_2407E8264(v25, v24, v26);
  }

  v14 = sub_2408CBDEC();
  if (v15)
  {
    v16 = v14;
    v17 = v15;

    v18 = sub_2408D4B10();
    v19 = sub_2408D4F50();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v44[0] = v21;
      *v20 = 136642819;
      *(v20 + 4) = sub_2408CC504(v16, v17, v44);
      _os_log_impl(&dword_2407CF000, v18, v19, "Successfully obtained raw password for proxied auth: %{sensitive}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x245CC9F60](v21, -1, -1);
      MEMORY[0x245CC9F60](v20, -1, -1);
    }

    v22 = *(v0 + 152);
    *v22 = v16;
    v22[1] = v17;
    v13 = MEMORY[0x277CED380];
    goto LABEL_9;
  }

  v28 = sub_2408D4B10();
  v29 = sub_2408D4F30();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_2407CF000, v28, v29, "Missing raw password from proxied auth results", v30, 2u);
    MEMORY[0x245CC9F60](v30, -1, -1);
  }

  v31 = *(v0 + 352);
  v32 = *(v0 + 328);
  v33 = *(v0 + 216);
  v34 = *(v0 + 192);
  v35 = *(v0 + 176);
  v42 = *(v0 + 288);
  v43 = *(v0 + 184);
  v41 = *(v0 + 168);
  v36 = *(v0 + 96);

  v37 = *(v36 + 88);
  v38 = *(v36 + 104);
  *(v0 + 16) = v31;
  *(v0 + 24) = v37;
  *(v0 + 32) = v32;
  *(v0 + 40) = v38;
  type metadata accessor for RemoteSetupService.Failure(0, v0 + 16);
  swift_getWitnessTable();
  swift_allocError();
  *v39 = 0;
  swift_willThrow();

  v42(v33, v34);
  (*(v35 + 8))(v43, v41);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_2407EA908()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 88);
  sub_2407D9440(v3, &qword_27E506D00, &unk_2408D7FE0);
  if (v0)
  {
    v5 = sub_2407EB4C8;
  }

  else
  {
    v5 = sub_2407EAA60;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2407EAA60()
{
  v1 = v0[57];
  v12 = IdMSAccount.SRPResults.into()();
  v2 = v0[54];
  v3 = v0[36];
  v4 = v0[27];
  v5 = v0[24];
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
  (*(v0[15] + 8))(v0[16], v0[14]);
  if (v1)
  {

    v3(v4, v5);
    (*(v7 + 8))(v6, v8);

    v9 = v0[1];

    return v9();
  }

  else
  {
    *(v12 + OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_originalReport) = v2;

    v3(v4, v5);
    (*(v7 + 8))(v6, v8);

    v11 = v0[1];

    return v11(v12);
  }
}

uint64_t sub_2407EACC0(uint64_t a1)
{
  v2 = *v1;

  v4 = *(v2 + 8);
  if (!v7)
  {
    v3 = a1;
  }

  return v4(v3);
}

uint64_t sub_2407EAF0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2407EB000()
{
  v1 = *(v0 + 376);
  v2 = v1;
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F30();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 376);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2407CF000, v3, v4, "Failed to authenticate parent, things are about to go very badly: %@", v7, 0xCu);
    sub_2407D9440(v8, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v8, -1, -1);
    MEMORY[0x245CC9F60](v7, -1, -1);
  }

  else
  {
  }

  *(v0 + 384) = 0;
  sub_2408D3D80();
  sub_2407EEEDC(&qword_27E506D08, MEMORY[0x277CED5B0], MEMORY[0x277CED5B8]);
  v12 = sub_2408D4E00();

  return MEMORY[0x2822009F8](sub_2407E9F58, v12, v11);
}

uint64_t sub_2407EB1C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2407EB2B0()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2407EB3C4()
{
  (*(v0[22] + 8))(v0[23], v0[21]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2407EB4C8()
{
  v1 = v0[36];
  v2 = v0[27];
  v3 = v0[24];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];

  v1(v2, v3);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2407EB600(uint64_t a1, uint64_t a2)
{
  v3 = sub_2408D4570();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  v10 = sub_2408D3970();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a2, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  sub_2408D4640();
  (*(v4 + 104))(v6, *MEMORY[0x277CEDC40], v3);
  return sub_2408D45C0();
}

uint64_t sub_2407EB7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a5;
  v40 = a1;
  v35 = a3;
  v36 = a4;
  v32 = a2;
  v37 = sub_2408D36F0();
  v42 = *(v37 - 8);
  v38 = *(v42 + 64);
  MEMORY[0x28223BE20](v37);
  v43 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2408D3970();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v41 = &v32 - v11;
  v12 = sub_2408D4570();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v32 - v17;
  v19 = *(v8 + 16);
  v19(&v32 - v17, a2, v7);
  (*(v8 + 56))(v18, 0, 1, v7);
  sub_2408D4640();
  (*(v13 + 104))(v15, *MEMORY[0x277CEDC48], v12);
  sub_2408D45C0();
  v33 = swift_allocObject();
  swift_weakInit();
  v20 = v7;
  v19(v41, v36, v7);
  v21 = v34;
  v19(v34, v32, v20);
  v22 = v42;
  v23 = v37;
  (*(v42 + 16))(v43, v39, v37);
  v24 = *(v8 + 80);
  v25 = (v24 + 16) & ~v24;
  v26 = (v9 + v24 + v25) & ~v24;
  v27 = (v9 + *(v22 + 80) + v26) & ~*(v22 + 80);
  v28 = (v38 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v30 = *(v8 + 32);
  v30(v29 + v25, v41, v20);
  v30(v29 + v26, v21, v20);
  (*(v42 + 32))(v29 + v27, v43, v23);
  *(v29 + v28) = v33;
  return sub_2408D4590();
}

void sub_2407EBBAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[1] = a4;
  v6 = sub_2408D38D0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v21 - v11;
  sub_2408D38F0();
  sub_2408D38B0();
  v13 = *(v7 + 8);
  v13(v12, v6);
  v14 = sub_2408D4D00();

  [a1 setAltDSID_];

  [a1 setAppProvidedContext_];
  sub_2408D38F0();
  sub_2408D38C0();
  v16 = v15;
  v13(v10, v6);
  if (v16)
  {
    v17 = sub_2408D4D00();
  }

  else
  {
    v17 = 0;
  }

  [a1 setProxiedAppleID_];

  v18 = sub_2408D36C0();
  [a1 setProxiedDevice_];

  v19 = objc_allocWithZone(sub_2408D3F20());

  v20 = sub_2408D3EF0();
  [a1 setAnisetteDataProvider_];
}

uint64_t sub_2407EBDFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_2408D4220();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407EBEC0, 0, 0);
}

uint64_t sub_2407EBEC0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    (*(v0[9] + 16))(v0[10], v0[6], v0[8]);
    v11 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    v3 = sub_2407EEEDC(&qword_27E506D28, MEMORY[0x277CED828], MEMORY[0x277CED820]);
    *v2 = v0;
    v2[1] = sub_2407EC0D0;
    v4 = v0[10];
    v5 = v0[8];
    v6 = v0[5];

    return v11(v6, v4, v5, v3);
  }

  else
  {
    v8 = sub_2408D3D70();
    sub_2407EEEDC(&qword_27E506D20, MEMORY[0x277CED590], MEMORY[0x277CED598]);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277CED578], v8);
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_2407EC0D0()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_2407EF148;
  }

  else
  {
    v2 = sub_2407EF140;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2407EC1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_2408D3970();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_2408D38D0();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407EC304, v3, 0);
}

uint64_t sub_2407EC304(uint64_t a1)
{
  v29 = v1;
  v3 = v1[10];
  v2 = v1[11];
  v4 = v1[9];
  sub_2408D38F0();
  v5 = sub_2408D3870();
  (*(v3 + 8))(v2, v4);
  if ((v5 & 1) == 0)
  {
    return sub_2408D5190();
  }

  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v7 = v1[7];
  v6 = v1[8];
  v8 = v1[6];
  v9 = v1[3];
  v10 = sub_2408D4B20();
  __swift_project_value_buffer(v10, qword_27E506C48);
  (*(v7 + 16))(v6, v9, v8);
  v11 = sub_2408D4B10();
  v12 = sub_2408D4F10();
  v13 = os_log_type_enabled(v11, v12);
  v15 = v1[7];
  v14 = v1[8];
  v16 = v1[6];
  if (v13)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 136315138;
    sub_2407EEEDC(&qword_28130F418, MEMORY[0x277CED3F8], MEMORY[0x277CED410]);
    v19 = sub_2408D5220();
    v21 = v20;
    (*(v15 + 8))(v14, v16);
    v22 = sub_2408CC504(v19, v21, &v28);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_2407CF000, v11, v12, "Performing proxied auth to challenge the independent: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x245CC9F60](v18, -1, -1);
    MEMORY[0x245CC9F60](v17, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
  }

  v24 = swift_task_alloc();
  v1[12] = v24;
  *v24 = v1;
  v24[1] = sub_2407EC61C;
  v25 = v1[4];
  v27 = v1[2];
  v26 = v1[3];

  return sub_2407E6308(v27, v26, v25);
}

uint64_t sub_2407EC61C(uint64_t a1)
{
  v4 = *v2;

  v6 = *(v4 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

void sub_2407EC764(uint64_t a1)
{
  if (!qword_27E506CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E506CE8, qword_2408D6B70);
    v1 = sub_2408D5060();
    if (!v2)
    {
      atomic_store(v1, &qword_27E506CE0);
    }
  }
}

uint64_t sub_2407EC7C8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D00, &unk_2408D7FE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_2408D36F0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2408D44D0();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_2407D9440(v6, &qword_27E506D00, &unk_2408D7FE0);
  }

  (*(v8 + 32))(v10, v6, v7);
  v12 = sub_2408D36C0();
  [a1 setCompanionDevice_];

  v13 = objc_allocWithZone(sub_2408D3F20());

  v14 = sub_2408D3EF0();
  [a1 setAnisetteDataProvider_];

  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v15 = sub_2408D4B20();
  __swift_project_value_buffer(v15, qword_27E506C48);
  v16 = a1;
  v17 = sub_2408D4B10();
  v18 = sub_2408D4F20();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27 = v20;
    *v19 = 136315138;
    v21 = [v16 debugDescription];
    v22 = sub_2408D4D30();
    v24 = v23;

    v25 = sub_2408CC504(v22, v24, &v27);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_2407CF000, v17, v18, "Configured context with companion device and anisette provider: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x245CC9F60](v20, -1, -1);
    MEMORY[0x245CC9F60](v19, -1, -1);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2407ECB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_2408D4220();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407ECBDC, 0, 0);
}

uint64_t sub_2407ECBDC()
{
  (*(v0[6] + 16))(v0[7], v0[3], v0[5]);
  v7 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);
  v1 = swift_task_alloc();
  v0[8] = v1;
  v2 = sub_2407EEEDC(&qword_27E506D28, MEMORY[0x277CED828], MEMORY[0x277CED820]);
  *v1 = v0;
  v1[1] = sub_2407ECCE4;
  v3 = v0[7];
  v4 = v0[5];
  v5 = v0[2];

  return v7(v5, v3, v4, v2);
}

uint64_t sub_2407ECCE4()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2407ECE20, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2407ECE20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2407ECE84(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2408D4660();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D40, &qword_2408D6CD0);
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407ECFAC, 0, 0);
}

uint64_t sub_2407ECFAC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D48, &qword_2408D6CD8);
  MEMORY[0x245CC80D0]();
  sub_2408D3CB0();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v9 = (*MEMORY[0x277CED538] + MEMORY[0x277CED538]);
    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_2407ED138;
    v6 = v0[9];

    return v9(v6);
  }

  else
  {
    (*(v0[8] + 8))(v0[9], v0[7]);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_2407ED138()
{

  return MEMORY[0x2822009F8](sub_2407ED234, 0, 0);
}

uint64_t sub_2407ED234()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2407ED2BC(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D30, &unk_2408D80C0);
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v4 = sub_2408D38D0();
  v2[23] = v4;
  v2[24] = *(v4 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  sub_2408D3D80();
  sub_2407EEEDC(&qword_27E506D08, MEMORY[0x277CED5B0], MEMORY[0x277CED5B8]);
  v6 = sub_2408D4E00();
  v2[28] = v6;
  v2[29] = v5;

  return MEMORY[0x2822009F8](sub_2407ED450, v6, v5);
}

uint64_t sub_2407ED450()
{
  v71 = v0;
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[18];
  v5 = sub_2408D4B20();
  v0[30] = __swift_project_value_buffer(v5, qword_27E506C48);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F10();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[27];
  v12 = v0[23];
  v11 = v0[24];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v70[0] = v65;
    *v13 = 136315138;
    sub_2407EEEDC(&qword_27E506AA0, MEMORY[0x277CED3D8], MEMORY[0x277CED3F0]);
    v63 = v8;
    v14 = v6;
    v15 = sub_2408D5220();
    v17 = v16;
    v69 = *(v11 + 8);
    v69(v10, v12);
    v18 = v15;
    v6 = v14;
    v19 = sub_2408CC504(v18, v17, v70);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_2407CF000, v7, v63, "Starting CDP approval server for account with ID: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v65);
    MEMORY[0x245CC9F60](v65, -1, -1);
    MEMORY[0x245CC9F60](v13, -1, -1);
  }

  else
  {

    v69 = *(v11 + 8);
    v69(v10, v12);
  }

  sub_2408D38B0();
  v20 = sub_2408D4D00();

  v21 = [objc_opt_self() contextForAccountWithAltDSID_];
  v0[31] = v21;

  if (v21)
  {
    sub_2408D3D10();
    v33 = v0[22];
    v66 = v0[26];
    v68 = v0[23];
    v35 = v0[20];
    v34 = v0[21];
    v36 = v0[18];
    v37 = v6;
    v38 = sub_2408D3C30();
    (*(v34 + 8))(v33, v35);
    [v21 setSharingChannel_];

    [v21 set:1 skipEscrowFetches:?];
    v37(v66, v36, v68);
    v39 = v21;
    v40 = sub_2408D4B10();
    v41 = sub_2408D4F10();

    v42 = os_log_type_enabled(v40, v41);
    v43 = v0[26];
    v44 = v0[23];
    if (v42)
    {
      v45 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v70[0] = v67;
      *v45 = 138412546;
      *(v45 + 4) = v39;
      *v64 = v21;
      *(v45 + 12) = 2080;
      sub_2407EEEDC(&qword_27E506AA0, MEMORY[0x277CED3D8], MEMORY[0x277CED3F0]);
      v46 = v39;
      v47 = sub_2408D5220();
      v48 = v39;
      v50 = v49;
      v69(v43, v44);
      v51 = sub_2408CC504(v47, v50, v70);
      v39 = v48;

      *(v45 + 14) = v51;
      _os_log_impl(&dword_2407CF000, v40, v41, "Created CDP context: %@ for account with ID: %s", v45, 0x16u);
      sub_2407D9440(v64, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v64, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v67);
      MEMORY[0x245CC9F60](v67, -1, -1);
      MEMORY[0x245CC9F60](v45, -1, -1);
    }

    else
    {

      v69(v43, v44);
    }

    v55 = [objc_allocWithZone(MEMORY[0x277CFD548]) initWithContext_];
    v0[32] = v55;
    v56 = sub_2408D4B10();
    if (v55)
    {
      v57 = sub_2408D4F20();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_2407CF000, v56, v57, "Starting CDP approval server", v58, 2u);
        MEMORY[0x245CC9F60](v58, -1, -1);
      }

      v0[2] = v0;
      v0[7] = v0 + 34;
      v0[3] = sub_2407EDD48;
      v59 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5071C0, &qword_2408D6CC0);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_24085F49C;
      v0[13] = &block_descriptor;
      v0[14] = v59;
      [v55 startCircleApplicationApprovalServer_];

      return MEMORY[0x282200938](v0 + 2);
    }

    v60 = sub_2408D4F30();
    if (os_log_type_enabled(v56, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_2407CF000, v56, v60, "Failed to create CDP setup controller", v61, 2u);
      MEMORY[0x245CC9F60](v61, -1, -1);
    }

    sub_2407EEADC();
    swift_allocError();
    *v62 = 0xD000000000000012;
    v62[1] = 0x80000002408DA380;
    swift_willThrow();
  }

  else
  {
    v6(v0[25], v0[18], v0[23]);
    v22 = sub_2408D4B10();
    v23 = sub_2408D4F30();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[25];
    v26 = v0[23];
    if (v24)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v70[0] = v28;
      *v27 = 136315138;
      v29 = sub_2408D38B0();
      v31 = v30;
      v69(v25, v26);
      v32 = sub_2408CC504(v29, v31, v70);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_2407CF000, v22, v23, "Failed to create CDP context for account with alt DSID: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x245CC9F60](v28, -1, -1);
      MEMORY[0x245CC9F60](v27, -1, -1);
    }

    else
    {

      v69(v25, v26);
    }

    sub_2407EEADC();
    swift_allocError();
    *v52 = 0x65746E6F43504443;
    v52[1] = 0xEA00000000007478;
    swift_willThrow();
  }

  v53 = v0[1];

  return v53();
}

uint64_t sub_2407EDD48()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  v3 = *(v1 + 232);
  v4 = *(v1 + 224);
  if (v2)
  {
    v5 = sub_2407EDF98;
  }

  else
  {
    v5 = sub_2407EDE78;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2407EDE78(uint64_t a1)
{
  v2 = *(v1 + 272);
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();
  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v1 + 248);
  v6 = *(v1 + 256);
  if (v5)
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v2;
    _os_log_impl(&dword_2407CF000, v3, v4, "Started CDP approval server: %{BOOL}d", v8, 8u);
    MEMORY[0x245CC9F60](v8, -1, -1);
  }

  v9 = *(v1 + 8);

  return v9();
}

uint64_t sub_2407EDF98(uint64_t a1)
{
  v2 = v1[33];
  swift_willThrow();
  v3 = v2;
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F30();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v1[32];
  v7 = v1[33];
  v9 = v1[31];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v7;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_2407CF000, v4, v5, "Failed to start circle application server: %@", v10, 0xCu);
    sub_2407D9440(v11, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v11, -1, -1);
    MEMORY[0x245CC9F60](v10, -1, -1);
  }

  else
  {
  }

  v14 = v1[1];

  return v14();
}

uint64_t sub_2407EE148()
{
  v0 = sub_2408D3BA0();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CED4F0]);
  return sub_2408D3BC0();
}

uint64_t sub_2407EE234(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2407EE2CC;

  return sub_2407DFD6C(a1);
}

uint64_t sub_2407EE2CC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_2407EE3D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 96);
  v4[0] = *(a2 + 80);
  v4[1] = v2;
  type metadata accessor for RemoteSetupService(0, v4);
  swift_getWitnessTable();
  return sub_2408D4270();
}

uint64_t sub_2407EE484(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2407EE568(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  v12 = sub_2408D35B0();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2408D3500();
  (*(*(v15 - 8) + 56))(v14, a4, 6, v15);
  sub_2408D35D0();
  (*(v9 + 16))(v11, a2, v8);
  return a5(v11);
}

uint64_t sub_2407EE714(unsigned __int8 a1)
{
  sub_2408D5300();
  MEMORY[0x245CC9750](a1);
  return sub_2408D5320();
}

uint64_t sub_2407EE778(uint64_t a1)
{
  sub_2408D5300();
  sub_2407EE6EC(v3, *v1);
  return sub_2408D5320();
}

void sub_2407EE7D0(void *a1)
{
  v3 = *(sub_2408D3970() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = *(sub_2408D36F0() - 8);
  v9 = (v7 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2407EBBAC(a1, v1 + v5, v1 + v7, v1 + v9, v10);
}

uint64_t sub_2407EE8E8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2407DB6F0;

  return sub_2407EBDFC(a1, a2, v2);
}

void sub_2407EE994(void *a1)
{
  v3 = *(sub_2408D36F0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2407E7CE8(a1, v1 + v4, v5);
}

uint64_t sub_2407EEA30(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2407D379C;

  return sub_2407E7DA4(a1, a2, v2);
}

unint64_t sub_2407EEADC()
{
  result = qword_27E506D38;
  if (!qword_27E506D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E506D38);
  }

  return result;
}

uint64_t sub_2407EEB40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2407EEBB8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2407DB6F0;

  return sub_2407ECB18(a1, a2, v2);
}

uint64_t sub_2407EEC64(uint64_t a1)
{
  v2 = sub_2408D35B0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2407EECF8()
{
  v1 = *v0;
  result = *(v0 + *(*v0 + 184));
  if (!result)
  {
    v3 = *(v1 + 96);
    v5[0] = *(v1 + 80);
    v5[1] = v3;
    type metadata accessor for RemoteSetupService.Failure(0, v5);
    swift_getWitnessTable();
    swift_allocError();
    *v4 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2407EEDBC(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_2407EEE04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2407EEE6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DA8, &qword_2408D8100);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2407EEEDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2407EEF24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2407EEF6C(uint64_t result, int a2, int a3)
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

uint64_t sub_2407EEFD4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_2407EF064(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2407EF14C()
{
  v0 = sub_2408D4B20();
  __swift_allocate_value_buffer(v0, qword_27E506E60);
  __swift_project_value_buffer(v0, qword_27E506E60);
  return sub_2408D4920();
}

uint64_t sub_2407EF198()
{
  v1 = v0;
  v2 = sub_2408D4B20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2408D4920();
  v6 = sub_2408D4B10();
  v7 = sub_2408D4F20();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2407CF000, v6, v7, "Removing Proximity Transport Connector", v8, 2u);
    MEMORY[0x245CC9F60](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);

  sub_2407D9440(v1 + 120, &qword_27E506E98, &qword_2408D7FA0);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_2407EF304()
{
  sub_2407EF198();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2407EF354(uint64_t a1, uint64_t a2)
{
  v3[17] = a1;
  v3[18] = a2;
  v4 = sub_2408D4B20();
  v3[19] = v4;
  v3[20] = *(v4 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v5 = sub_2408D34E0();
  v3[25] = v5;
  v3[26] = *(v5 - 8);
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407EF494, v2, 0);
}

uint64_t sub_2407EF494()
{
  v69 = v0;
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[18];
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 32))(v5, v6);
  v7 = (*(v2 + 88))(v1, v3);
  if (v7 == *MEMORY[0x277CED250] || v7 == *MEMORY[0x277CED240])
  {
    (*(v0[26] + 8))(v0[27], v0[25]);
    goto LABEL_7;
  }

  if (v7 == *MEMORY[0x277CED248])
  {
    (*(v0[26] + 8))(v0[27], v0[25]);
LABEL_11:
    v22 = v0[18];
    sub_2408D4910();
    sub_2407D91C4(v22, (v0 + 7));
    v23 = sub_2408D4B10();
    v24 = sub_2408D4F20();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[23];
    v27 = v0[19];
    v28 = v0[20];
    if (v25)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v68 = v30;
      *v29 = 136315138;
      __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v31 = sub_2408D5250();
      v33 = v32;
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
      v34 = sub_2408CC504(v31, v33, &v68);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_2407CF000, v23, v24, "Returning server role for model: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x245CC9F60](v30, -1, -1);
      MEMORY[0x245CC9F60](v29, -1, -1);

      (*(v28 + 8))(v26, v27);
    }

    else
    {

      (*(v28 + 8))(v26, v27);
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
    }

    v35 = v0[17];
    v36 = MEMORY[0x277CED568];
LABEL_21:
    v45 = *v36;
    v46 = sub_2408D3D60();
    v47 = *(v46 - 8);
    (*(v47 + 104))(v35, v45, v46);
    (*(v47 + 56))(v35, 0, 1, v46);
    goto LABEL_22;
  }

  if (v7 != *MEMORY[0x277CED230])
  {
    if (v7 == *MEMORY[0x277CED258])
    {
      goto LABEL_11;
    }

    if (v7 != *MEMORY[0x277CED238])
    {
      v50 = v0[18];
      sub_2408D4910();
      sub_2407D91C4(v50, (v0 + 2));
      v51 = sub_2408D4B10();
      v52 = sub_2408D4F20();
      v53 = os_log_type_enabled(v51, v52);
      v55 = v0[20];
      v54 = v0[21];
      v56 = v0[19];
      if (v53)
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v68 = v58;
        *v57 = 136315138;
        __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
        v59 = sub_2408D5250();
        v61 = v60;
        __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
        v62 = sub_2408CC504(v59, v61, &v68);

        *(v57 + 4) = v62;
        _os_log_impl(&dword_2407CF000, v51, v52, "Returning nil role for model: %s", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v58);
        MEMORY[0x245CC9F60](v58, -1, -1);
        MEMORY[0x245CC9F60](v57, -1, -1);

        (*(v55 + 8))(v54, v56);
      }

      else
      {

        (*(v55 + 8))(v54, v56);
        __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
      }

      v64 = v0[26];
      v63 = v0[27];
      v65 = v0[25];
      v66 = v0[17];
      v67 = sub_2408D3D60();
      (*(*(v67 - 8) + 56))(v66, 1, 1, v67);
      (*(v64 + 8))(v63, v65);
      goto LABEL_22;
    }

LABEL_7:
    v9 = v0[18];
    sub_2408D4910();
    sub_2407D91C4(v9, (v0 + 12));
    v10 = sub_2408D4B10();
    v11 = sub_2408D4F20();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[24];
    v14 = v0[19];
    v15 = v0[20];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v68 = v17;
      *v16 = 136315138;
      __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
      v18 = sub_2408D5250();
      v20 = v19;
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
      v21 = sub_2408CC504(v18, v20, &v68);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_2407CF000, v10, v11, "Returning client role for model: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x245CC9F60](v17, -1, -1);
      MEMORY[0x245CC9F60](v16, -1, -1);

      (*(v15 + 8))(v13, v14);
    }

    else
    {

      (*(v15 + 8))(v13, v14);
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
    }

    v35 = v0[17];
    v36 = MEMORY[0x277CED560];
    goto LABEL_21;
  }

  sub_2408D4910();
  v37 = sub_2408D4B10();
  v38 = sub_2408D4F30();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_2407CF000, v37, v38, "Remote setup is restricted for this model, rejecting", v39, 2u);
    MEMORY[0x245CC9F60](v39, -1, -1);
  }

  v40 = v0[22];
  v41 = v0[19];
  v42 = v0[20];
  v43 = v0[17];

  (*(v42 + 8))(v40, v41);
  v44 = sub_2408D3D60();
  (*(*(v44 - 8) + 56))(v43, 1, 1, v44);
LABEL_22:

  v48 = v0[1];

  return v48();
}

uint64_t sub_2407EFC24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_2408D4B20();
  v24 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v22 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EC8, &qword_2408D7028);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506ED0, &qword_2408D7030);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v21 = &v20 - v9;
  v10 = a1;
  sub_2408D3460();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506ED8, &qword_2408D7038);
  sub_2407D917C(&qword_27E506EE0, &qword_27E506ED8, &qword_2408D7038, MEMORY[0x277CEDD78]);
  sub_2408D47B0();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_2407D9440(v6, &qword_27E506EC8, &qword_2408D7028);
    v11 = v22;
    sub_2408D4910();
    v12 = v10;
    v13 = sub_2408D4B10();
    v14 = sub_2408D4F30();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = v12;
      v17 = v12;
      _os_log_impl(&dword_2407CF000, v13, v14, "Failed to create transport for message session template: %@", v15, 0xCu);
      sub_2407D9440(v16, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v16, -1, -1);
      MEMORY[0x245CC9F60](v15, -1, -1);
    }

    (*(v24 + 8))(v11, v25);
    sub_2407F11F8();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v19 = v21;
    (*(v8 + 32))(v21, v6, v7);
    sub_2407D917C(&qword_27E506EF0, &qword_27E506ED0, &qword_2408D7030, MEMORY[0x277CEDD10]);
    sub_2408D43D0();
    return (*(v8 + 8))(v19, v7);
  }
}

uint64_t sub_2407F0014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130);
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407F00B8, a5, 0);
}

uint64_t sub_2407F00B8()
{
  v1 = *(v0 + 88);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_2407F0170;

  return MEMORY[0x28213F250](v2, v4);
}

uint64_t sub_2407F0170()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 96);
  if (v0)
  {
    v4 = sub_2407F0384;
  }

  else
  {
    v4 = sub_2407F029C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2407F029C()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v1[3];
  v4 = v1[4];
  v5 = __swift_project_boxed_opaque_existential_1(v1, v3);
  v0[5] = v3;
  v0[6] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  swift_beginAccess();
  sub_2407F1074((v0 + 2), v2 + 120);
  swift_endAccess();

  v7 = v0[1];

  return v7();
}

uint64_t sub_2407F0384()
{
  v1 = *(v0 + 112);
  v2 = *(*(v0 + 104) + 16);
  v3 = *(*v2 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v2 + v4));
  sub_2407F1124(v2 + v3, v1);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
  v6 = *(v5 - 8);
  (*(v6 + 56))(v2 + v3, 1, 1, v5);
  os_unfair_lock_unlock((v2 + v4));

  if ((*(v6 + 48))(v1, 1, v5) == 1)
  {
    v7 = *(v0 + 112);

    sub_2407D9440(v7, &qword_27E506EA8, &unk_2408D9130);
  }

  else
  {
    v8 = *(v0 + 128);
    *(v0 + 80) = v8;
    v9 = *(v0 + 112);
    v10 = v8;
    sub_2408D4E10();

    (*(v6 + 8))(v9, v5);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2407F0568()
{
  v0 = sub_2408D3490();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2408D4120() == 2)
  {
    (*(v1 + 104))(v3, *MEMORY[0x277CED1F0], v0);
    v4 = sub_2408D3480();
    (*(v1 + 8))(v3, v0);
    if (v4)
    {
      return sub_2408D46D0();
    }
  }

  v6 = sub_2408D4060();
  if (v6 == 2)
  {
    (*(v1 + 104))(v3, *MEMORY[0x277CED208], v0);
    v7 = sub_2408D3480();
    (*(v1 + 8))(v3, v0);
    if (v7)
    {
      return sub_2408D4700();
    }
  }

  else if (v6 == 1)
  {
    return sub_2408D46C0();
  }

  return sub_2408D46E0();
}

uint64_t sub_2407F0714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130);
  v6[16] = swift_task_alloc();
  v9 = (*MEMORY[0x277CED9F0] + MEMORY[0x277CED9F0]);
  v7 = swift_task_alloc();
  v6[17] = v7;
  *v7 = v6;
  v7[1] = sub_2407F07F8;

  return v9();
}

uint64_t sub_2407F07F8()
{
  v2 = *(*v1 + 112);
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_2407F0A10;
  }

  else
  {
    v3 = sub_2407F0920;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_2407F0920()
{
  v1 = v0[13];
  v2 = v0[14];
  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB8, &qword_2408D7018);
  v0[6] = sub_2407D917C(&qword_27E506EC0, &qword_27E506EB8, &qword_2408D7018, MEMORY[0x277CED9F8]);
  v0[2] = v1;
  swift_beginAccess();

  sub_2407F1074((v0 + 2), v2 + 120);
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

uint64_t sub_2407F0A10()
{
  sub_2408D4A90();
  v1 = v0[10];
  if (v1)
  {
    v2 = v0[16];
    v3 = *(v1 + 16);

    v4 = *(*v3 + *MEMORY[0x277D841D0] + 16);
    v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v3 + v5));
    sub_2407F1124(v3 + v4, v2);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
    v7 = *(v6 - 8);
    (*(v7 + 56))(v3 + v4, 1, 1, v6);
    os_unfair_lock_unlock((v3 + v5));

    if ((*(v7 + 48))(v2, 1, v6) == 1)
    {
      sub_2407D9440(v0[16], &qword_27E506EA8, &unk_2408D9130);
    }

    else
    {
      v8 = v0[18];
      v9 = v0[16];
      v0[12] = v8;
      v10 = v8;
      sub_2408D4E10();
      (*(v7 + 8))(v9, v6);
    }
  }

  v11 = v0[18];
  v0[11] = 0;
  sub_2408D4AA0();

  v12 = v0[1];

  return v12();
}

uint64_t sub_2407F0C10(uint64_t a1)
{
  type metadata accessor for ProximityTransportConnector();
  sub_2407F10E4(&qword_27E506EA0, &unk_2408D6F70);
  return sub_2408D4270();
}

uint64_t sub_2407F0D20(uint64_t a1)
{
  result = sub_2407F10E4(&qword_27E506E78, &unk_2408D6F38);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2407F0D64()
{
  v1 = v0;
  v2 = sub_2408D4B20();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-v7];
  swift_beginAccess();
  sub_2407F1004(v1 + 120, &v17);
  if (v18)
  {
    sub_2407D2554(&v17, &v19);
    sub_2408D4920();
    v9 = sub_2408D4B10();
    v10 = sub_2408D4F20();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2407CF000, v9, v10, "Attempting to invalidate the valid bluetooth base", v11, 2u);
      MEMORY[0x245CC9F60](v11, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
    sub_2408D3CE0();
    __swift_destroy_boxed_opaque_existential_0Tm(&v19);
  }

  else
  {
    sub_2407D9440(&v17, &qword_27E506E98, &qword_2408D7FA0);
    sub_2408D4920();
    v12 = sub_2408D4B10();
    v13 = sub_2408D4F20();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2407CF000, v12, v13, "bluetooth base is already nil, bailing", v14, 2u);
      MEMORY[0x245CC9F60](v14, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  swift_beginAccess();
  sub_2407F1074(&v19, v1 + 120);
  return swift_endAccess();
}

uint64_t sub_2407F1004(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E98, &qword_2408D7FA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2407F1074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E98, &qword_2408D7FA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2407F10E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ProximityTransportConnector();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2407F1124(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
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

unint64_t sub_2407F11F8()
{
  result = qword_27E506EE8;
  if (!qword_27E506EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E506EE8);
  }

  return result;
}

uint64_t type metadata accessor for ProximityTransportConnector.LegacySetupCompleted(uint64_t a1)
{
  result = qword_27E506F00;
  if (!qword_27E506F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2407F12C0(uint64_t a1)
{
  sub_2407F132C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2407F132C(uint64_t a1)
{
  if (!qword_27E506F10)
  {
    sub_2408D3A60();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E506AC0, &qword_2408D6850);
    v1 = sub_2408D5360();
    if (!v2)
    {
      atomic_store(v1, &qword_27E506F10);
    }
  }
}

uint64_t sub_2407F13E8()
{
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2407F1428()
{
  v0 = sub_2408D4B20();
  __swift_allocate_value_buffer(v0, qword_28130EFC0);
  __swift_project_value_buffer(v0, qword_28130EFC0);
  return sub_2408D4930();
}

uint64_t sub_2407F1474()
{
  result = sub_2407F1498();
  qword_28130F640 = result;
  *algn_28130F648 = v1;
  return result;
}

uint64_t sub_2407F1498()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_2408D4CB0();
  if (*(v2 + 16) && (v3 = sub_2408CCB30(0xD000000000000010, 0x80000002408DA670), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 16 * v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_2407F1578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v42 = a1;
  v43 = a2;
  v40 = a4;
  v5 = sub_2408D4FC0();
  MEMORY[0x28223BE20](v5);
  v6 = sub_2408D4C70();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2408D4FD0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v47 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FB8, &qword_2408D7360);
  swift_allocObject();
  v39 = sub_2408D4A70();
  sub_2407EEDBC(0, &qword_28130EF48, 0x277D85C78);
  (*(v8 + 104))(v10, *MEMORY[0x277D85268], v7);
  sub_2408D4C60();
  v11 = MEMORY[0x277D84F90];
  *&v47 = MEMORY[0x277D84F90];
  sub_2407F6C9C(&unk_28130EF50, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DB0, &unk_2408D6D80);
  sub_2407F6B68();
  sub_2408D5080();
  v12 = sub_2408D4FF0();
  v41 = a3;
  sub_2407F66D8(a3);
  if (qword_28130EFB8 != -1)
  {
    swift_once();
  }

  v13 = sub_2408D4B20();
  __swift_project_value_buffer(v13, qword_28130EFC0);
  v14 = sub_2408D4B10();
  v15 = sub_2408D4F10();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2407CF000, v14, v15, "Entering sandbox", v16, 2u);
    MEMORY[0x245CC9F60](v16, -1, -1);
  }

  if (!_set_user_dir_suffix())
  {
    goto LABEL_12;
  }

  v17 = [objc_opt_self() defaultStore];
  if (!v17)
  {
    __break(1u);
LABEL_12:
    result = sub_2408D5190();
    __break(1u);
    return result;
  }

  v18 = v17;
  v19 = objc_allocWithZone(MEMORY[0x277CED1E8]);
  v20 = v18;
  v21 = [v19 initWithAccountStore_];
  v48 = sub_2407EEDBC(0, &qword_28130EF40, 0x277CED1E8);
  v49 = &off_285284100;
  *&v47 = v21;
  v45 = sub_2407EEDBC(0, &qword_28130EF88, 0x277CB8F48);
  v46 = &off_285284110;
  *&v44 = v20;
  type metadata accessor for AISSignOutService();
  v22 = swift_allocObject();
  *(v22 + 96) = 0;
  sub_2407D2554(&v47, v22 + 16);
  sub_2407D2554(&v44, v22 + 56);
  v23 = v21;
  v24 = sub_2408D4B10();
  v25 = sub_2408D4F10();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v38 = v12;
    v28 = v27;
    *&v47 = v27;
    *v26 = 136315138;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FC0, &qword_2408D7368);
    v30 = MEMORY[0x245CC9210](MEMORY[0x277D84F90], v29);
    v32 = v11;
    v33 = sub_2408CC504(v30, v31, &v47);

    *(v26 + 4) = v33;
    v11 = v32;
    _os_log_impl(&dword_2407CF000, v24, v25, "Registering push service with delegates: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    v34 = v28;
    v12 = v38;
    MEMORY[0x245CC9F60](v34, -1, -1);
    MEMORY[0x245CC9F60](v26, -1, -1);
  }

  else
  {
  }

  result = __swift_destroy_boxed_opaque_existential_0Tm(v41);
  v36 = v43;
  v37 = v40;
  *v40 = v42;
  v37[1] = v36;
  v37[2] = v39;
  v37[3] = v11;
  v37[4] = v22;
  v37[5] = v12;
  return result;
}

double Daemon.init()@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for MachServiceManager();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = sub_2407F5F64(MEMORY[0x277D84F90]);
  sub_2408D4720();
  v3 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v4 = sub_2408D4D00();

  v5 = [v3 initWithMachServiceName_];

  v6 = type metadata accessor for ConnectionManager();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC18AppleIDSetupDaemon17ConnectionManager_aisDaemonServiceListener] = v5;
  v14.receiver = v7;
  v14.super_class = v6;
  v8 = objc_msgSendSuper2(&v14, sel_init);
  v9 = sub_2408D4150();
  v10 = sub_2408D4140();
  v13[3] = v9;
  v13[4] = MEMORY[0x277CED7C0];
  v13[0] = v10;
  sub_2407F1578(v2, v8, v13, v15);
  v11 = v15[1];
  *a1 = v15[0];
  a1[1] = v11;
  result = *&v16;
  a1[2] = v16;
  return result;
}

uint64_t Daemon.start()()
{
  v2 = v0[1];
  *(v1 + 120) = *v0;
  *(v1 + 136) = v2;
  *(v1 + 152) = v0[2];
  return MEMORY[0x2822009F8](sub_2407F1C90, 0, 0);
}

uint64_t sub_2407F1C90()
{
  v23 = v0;
  if (qword_28130EFB8 != -1)
  {
    swift_once();
  }

  v1 = sub_2408D4B20();
  v0[21] = __swift_project_value_buffer(v1, qword_28130EFC0);
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2407CF000, v2, v3, "============== appleidsetupd starting ==============", v4, 2u);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  if (qword_28130F410 != -1)
  {
    swift_once();
  }

  v6 = qword_28130F640;
  v5 = *algn_28130F648;
  if (*algn_28130F648)
  {
    v7 = *algn_28130F648;
  }

  else
  {
    v7 = 0x80000002408DA4E0;
  }

  v8 = sub_2408D4B10();
  v9 = sub_2408D4F10();

  if (os_log_type_enabled(v8, v9))
  {
    if (v5)
    {
      v10 = v6;
    }

    else
    {
      v10 = 0xD000000000000012;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22[0] = v12;
    *v11 = 136315138;
    v13 = sub_2408CC504(v10, v7, v22);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_2407CF000, v8, v9, "Starting appleidsetupd - %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x245CC9F60](v12, -1, -1);
    MEMORY[0x245CC9F60](v11, -1, -1);
  }

  else
  {
  }

  v15 = v0[19];
  v14 = v0[20];
  v17 = v0[17];
  v16 = v0[18];
  v18 = v0[16];
  v22[0] = v0[15];
  v19 = v22[0];
  v22[1] = v18;
  v22[2] = v17;
  v22[3] = v16;
  v22[4] = v15;
  v22[5] = v14;
  sub_2407F255C();
  sub_2408C29F4();
  v0[2] = v19;
  v0[3] = v18;
  v0[4] = v17;
  v0[5] = v16;
  v0[6] = v15;
  v0[7] = v14;
  v20 = swift_task_alloc();
  v0[22] = v20;
  *v20 = v0;
  v20[1] = sub_2407F1F74;

  return sub_2407F2770();
}

uint64_t sub_2407F1F74()
{
  v2 = *v1;
  *(v2 + 184) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2407F2228, 0, 0);
  }

  else
  {
    *(v2 + 64) = *(v2 + 120);
    v3 = *(v2 + 152);
    *(v2 + 80) = *(v2 + 136);
    *(v2 + 96) = v3;
    v4 = swift_task_alloc();
    *(v2 + 192) = v4;
    *v4 = v2;
    v4[1] = sub_2407F20F4;

    return sub_2407F3130();
  }
}

uint64_t sub_2407F20F4()
{
  v2 = *v1;
  *(v2 + 200) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2407F2408, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2407F2228()
{
  v17 = v0;
  v1 = *(v0 + 184);
  v2 = v1;
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F30();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 184);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    *(v0 + 112) = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    v9 = sub_2408D4D40();
    v11 = sub_2408CC504(v9, v10, &v16);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_2407CF000, v3, v4, "Error occurred in registering aps connection: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x245CC9F60](v7, -1, -1);
    MEMORY[0x245CC9F60](v6, -1, -1);
  }

  else
  {
    v12 = *(v0 + 184);
  }

  *(v0 + 64) = *(v0 + 120);
  v13 = *(v0 + 152);
  *(v0 + 80) = *(v0 + 136);
  *(v0 + 96) = v13;
  v14 = swift_task_alloc();
  *(v0 + 192) = v14;
  *v14 = v0;
  v14[1] = sub_2407F20F4;

  return sub_2407F3130();
}

uint64_t sub_2407F2408()
{
  v1 = *(v0 + 200);
  v2 = v1;
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F30();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 200);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2407CF000, v3, v4, "Failed to register mach setup service: %@", v7, 0xCu);
    sub_2407DB3B0(v8);
    MEMORY[0x245CC9F60](v8, -1, -1);
    MEMORY[0x245CC9F60](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

void sub_2407F255C()
{
  v1 = *(v0 + 40);
  if (qword_28130EFB8 != -1)
  {
    swift_once();
  }

  v2 = sub_2408D4B20();
  __swift_project_value_buffer(v2, qword_28130EFC0);
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2407CF000, v3, v4, "Registering launch event stream handlers: (notifyd, distnoted)", v5, 2u);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = sub_2407F6C20;
  v14 = v6;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_2407F52B4;
  v12 = &block_descriptor_0;
  v7 = _Block_copy(&v9);

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v1, v7);
  _Block_release(v7);
  v13 = nullsub_1;
  v14 = 0;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_2407F52B4;
  v12 = &block_descriptor_23;
  v8 = _Block_copy(&v9);
  xpc_set_event_stream_handler("com.apple.distnoted.matching", v1, v8);
  _Block_release(v8);
}

uint64_t sub_2407F2770()
{
  v2 = sub_2408D4FD0();
  *(v1 + 80) = v2;
  *(v1 + 88) = *(v2 - 8);
  *(v1 + 96) = swift_task_alloc();
  *(v1 + 104) = sub_2408D4FC0();
  *(v1 + 112) = swift_task_alloc();
  sub_2408D4C70();
  *(v1 + 120) = swift_task_alloc();
  v3 = v0[1];
  *(v1 + 128) = *v0;
  *(v1 + 144) = v3;
  *(v1 + 160) = v0[2];

  return MEMORY[0x2822009F8](sub_2407F2898, 0, 0);
}

uint64_t sub_2407F2898()
{
  if (qword_28130EFB8 != -1)
  {
    swift_once();
  }

  v1 = sub_2408D4B20();
  *(v0 + 176) = __swift_project_value_buffer(v1, qword_28130EFC0);
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2407CF000, v2, v3, "Activating push service async", v4, 2u);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  v14 = *(v0 + 144);
  v15 = *(v0 + 168);
  v5 = *(v0 + 96);
  v6 = *(v0 + 88);
  v12 = *(v0 + 80);
  v13 = *(v0 + 128);
  v16 = *(v0 + 152);

  sub_2407EEDBC(0, &qword_28130EF48, 0x277D85C78);
  sub_2408D4C60();
  *(v0 + 64) = MEMORY[0x277D84F90];
  sub_2407F6C9C(&unk_28130EF50, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DB0, &unk_2408D6D80);
  sub_2407F6B68();
  sub_2408D5080();
  (*(v6 + 104))(v5, *MEMORY[0x277D85260], v12);
  v7 = sub_2408D4FF0();
  *(v0 + 184) = v7;

  *(v0 + 192) = sub_240872FB0(&unk_2852831E8);
  sub_2407F6BCC(&unk_285283208);
  type metadata accessor for PushService();
  v8 = swift_allocObject();
  *(v0 + 200) = v8;
  swift_defaultActor_initialize();
  v8[21] = 0;
  v8[22] = 0;
  v8[14] = 0xD00000000000001ALL;
  v8[15] = 0x80000002408DA5C0;
  v8[16] = v7;
  v9 = v7;
  *(v0 + 16) = v13;
  *(v0 + 32) = v14;
  *(v0 + 40) = v16;
  *(v0 + 56) = v15;
  v10 = swift_task_alloc();
  *(v0 + 208) = v10;
  *v10 = v0;
  v10[1] = sub_2407F2BC0;

  return sub_2407F4020();
}
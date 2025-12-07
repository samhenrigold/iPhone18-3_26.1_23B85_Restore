void sub_1CFBD0C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - v9;
  v11 = sub_1CFC9D938();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    sub_1CFC9C6A8();
    sub_1CFC9C698();
    v17 = sub_1CFC9D918();
    v18 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v29 = a4;
      v20 = v19;
      v21 = swift_slowAlloc();
      v30 = a5;
      v31 = v21;
      v22 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1CFBB531C(0xD000000000000039, 0x80000001CFCAA550, &v31);
      _os_log_impl(&dword_1CFB9F000, v17, v18, "CallReportingViewModel: in %s, user did tap on block and report", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      v23 = v22;
      a5 = v30;
      MEMORY[0x1D3873280](v23, -1, -1);
      MEMORY[0x1D3873280](v20, -1, -1);
    }

    (*(v12 + 8))(v14, v11);
    MEMORY[0x1D386EF60](a3);
    sub_1CFC9CA38();
    if (qword_1EC4ECFF8 != -1)
    {
      swift_once();
    }

    v24 = qword_1EC4F2A18;
    v25 = sub_1CFC9F998();
    (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = v24;
    v26[5] = a3;
    v26[6] = a5;
    v27 = v24;

    v28 = a5;
    sub_1CFBDC030(0, 0, v10, &unk_1CFCA2668, v26);
  }
}

void sub_1CFBD0FBC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1CFC9D938();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C6A8();
  sub_1CFC9C698();
  v6 = sub_1CFC9D918();
  v7 = sub_1CFC9FAF8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1CFBB531C(0xD000000000000032, 0x80000001CFCAA630, v13);
    _os_log_impl(&dword_1CFB9F000, v6, v7, "CallReportingViewModel: in %s, user did tap on cancel", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1D3873280](v9, -1, -1);
    MEMORY[0x1D3873280](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

double sub_1CFBD11A4(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v6 = sub_1CFC9D938();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_1CFC9C6A8();
    sub_1CFC9C698();
    v13 = sub_1CFC9D918();
    v14 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1CFBB531C(0xD000000000000032, 0x80000001CFCAA630, &v18);
      _os_log_impl(&dword_1CFB9F000, v13, v14, "CallReportingViewModel: in %s, user did tap on block unknown", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1D3873280](v16, -1, -1);
      MEMORY[0x1D3873280](v15, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    sub_1CFC9CA18();
    if (qword_1EC4ECFF8 != -1)
    {
      swift_once();
    }

    v17 = sub_1CFC82A10(a3);
    sub_1CFBD4A54(v17, a4);
  }

  return result;
}

uint64_t sub_1CFBD13E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v29 - v8;
  v10 = sub_1CFC9D938();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C6A8();
  sub_1CFC9C698();
  v14 = sub_1CFC9D918();
  v15 = sub_1CFC9FAF8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = a4;
    v17 = a5;
    v18 = v16;
    *v16 = 0;
    _os_log_impl(&dword_1CFB9F000, v14, v15, "Spamreporting: carrier reporting, user did tap block", v16, 2u);
    v19 = v18;
    a5 = v17;
    MEMORY[0x1D3873280](v19, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  v20 = sub_1CFC9FC78();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    MEMORY[0x1D386EF60](v20);
  }

  if (qword_1EC4ECFF8 != -1)
  {
    swift_once();
  }

  v23 = qword_1EC4F2A18;
  v24 = sub_1CFC9F998();
  (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v23;
  v25[5] = v20;
  v25[6] = a5;
  v26 = v23;
  v27 = a5;
  sub_1CFBDC030(0, 0, v9, &unk_1CFCA2688, v25);
}

uint64_t sub_1CFBD16DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_1CFC9D938();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C6A8();
  sub_1CFC9C698();
  v13 = sub_1CFC9D918();
  v14 = sub_1CFC9FAF8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v31 = v8;
    v16 = a5;
    v17 = v15;
    *v15 = 0;
    _os_log_impl(&dword_1CFB9F000, v13, v14, "Spamreporting: carrier reporting, user did tap block and report", v15, 2u);
    v18 = v17;
    a5 = v16;
    v8 = v31;
    MEMORY[0x1D3873280](v18, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v19 = sub_1CFC9FC78();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    MEMORY[0x1D386EF60](v19);
  }

  swift_beginAccess();
  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    v23 = v22;
    sub_1CFC9C928();
  }

  if (qword_1EC4ECFF8 != -1)
  {
    swift_once();
  }

  v24 = qword_1EC4F2A18;
  v25 = sub_1CFC9F998();
  (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v24;
  v26[5] = v19;
  v26[6] = a5;
  v27 = v24;
  v28 = a5;
  sub_1CFBDC030(0, 0, v8, &unk_1CFCA2680, v26);
}

void sub_1CFBD19F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1CFC9C908();
  }
}

uint64_t sub_1CFBD1A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[39] = a6;
  v7[40] = a7;
  v7[37] = a4;
  v7[38] = a5;
  v8 = sub_1CFC9D938();
  v7[41] = v8;
  v7[42] = *(v8 - 8);
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  sub_1CFC9F968();
  v7[45] = sub_1CFC9F958();
  v10 = sub_1CFC9F938();
  v7[46] = v10;
  v7[47] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1CFBD1B58, v10, v9);
}

uint64_t sub_1CFBD1B58()
{
  v24 = v0;
  v1 = v0[37];
  v2 = v0[38];
  v0[48] = sub_1CFC9C6A8();
  sub_1CFC9C698();
  v3 = v1;
  v4 = v2;
  v5 = sub_1CFC9D918();
  v6 = sub_1CFC9FAF8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[44];
  v9 = v0[41];
  v10 = v0[42];
  if (v7)
  {
    v22 = v0[44];
    v11 = v0[37];
    v12 = v0[38];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v13 = 136315650;
    *(v13 + 4) = sub_1CFBB531C(0xD000000000000040, 0x80000001CFCAA590, &v23);
    *(v13 + 12) = 2112;
    *(v13 + 14) = v11;
    *(v13 + 22) = 2112;
    *(v13 + 24) = v12;
    *v14 = v11;
    v14[1] = v12;
    v16 = v11;
    v17 = v12;
    _os_log_impl(&dword_1CFB9F000, v5, v6, "CallReportingViewModel: in %s, Presenting ClassificationViewController with communication: %@ for call: %@", v13, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED770, &qword_1CFCA2CF0);
    swift_arrayDestroy();
    MEMORY[0x1D3873280](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1D3873280](v15, -1, -1);
    MEMORY[0x1D3873280](v13, -1, -1);

    v18 = *(v10 + 8);
    v18(v22, v9);
  }

  else
  {

    v18 = *(v10 + 8);
    v18(v8, v9);
  }

  v0[49] = v18;
  v19 = v0[39];
  v0[2] = v0;
  v0[3] = sub_1CFBD1E20;
  v20 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED778, &qword_1CFCA26B0);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1CFBD24BC;
  v0[21] = &block_descriptor_90;
  v0[22] = v20;
  [v19 activateExtensionWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CFBD1E20()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 400) = v2;
  v3 = *(v1 + 376);
  v4 = *(v1 + 368);
  if (v2)
  {
    v5 = sub_1CFBD226C;
  }

  else
  {
    v5 = sub_1CFBD1F50;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1CFBD1F50()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[51] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[39];
    v0[10] = v0;
    v0[11] = sub_1CFBD20EC;
    v4 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED780, &qword_1CFCA26B8);
    v0[26] = MEMORY[0x1E69E9820];
    v0[27] = 1107296256;
    v0[28] = sub_1CFBD2568;
    v0[29] = &block_descriptor_93;
    v0[30] = v4;
    [v2 presentViewController:v3 animated:1 completion:v0 + 26];

    return MEMORY[0x1EEE6DEC8](v0 + 10);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1CFBD20EC()
{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 368);

  return MEMORY[0x1EEE6DFA0](sub_1CFBD21F4, v2, v1);
}

uint64_t sub_1CFBD21F4()
{
  v1 = *(v0 + 408);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1CFBD226C()
{
  v25 = v0;
  v2 = v0[37];
  v1 = v0[38];

  swift_willThrow();
  sub_1CFC9C698();
  v3 = v2;
  v4 = v1;
  v5 = sub_1CFC9D918();
  v6 = sub_1CFC9FAD8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[49];
  v9 = v0[50];
  v10 = v0[43];
  v11 = v0[41];
  if (v7)
  {
    v22 = v0[43];
    v23 = v0[49];
    v13 = v0[37];
    v12 = v0[38];
    v21 = v0[41];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v14 = 136315650;
    *(v14 + 4) = sub_1CFBB531C(0xD000000000000040, 0x80000001CFCAA590, &v24);
    *(v14 + 12) = 2112;
    *(v14 + 14) = v13;
    *(v14 + 22) = 2112;
    *(v14 + 24) = v12;
    *v15 = v13;
    v15[1] = v12;
    v17 = v13;
    v18 = v12;
    _os_log_impl(&dword_1CFB9F000, v5, v6, "CallReportingViewModel: in %s, not able to activate extension. communication: %@ for call: %@", v14, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED770, &qword_1CFCA2CF0);
    swift_arrayDestroy();
    MEMORY[0x1D3873280](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1D3873280](v16, -1, -1);
    MEMORY[0x1D3873280](v14, -1, -1);

    v23(v22, v21);
  }

  else
  {

    v8(v10, v11);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_1CFBD24BC(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED788, &qword_1CFCA26C0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x1EEE6DEE0](v8);
  }
}

uint64_t sub_1CFBD2568(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return MEMORY[0x1EEE6DED8](v1);
}

void sub_1CFBD259C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1CFC9D938();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C6A8();
  sub_1CFC9C698();
  v6 = sub_1CFC9D918();
  v7 = sub_1CFC9FAF8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1CFBB531C(0xD00000000000003ELL, 0x80000001CFCAA670, v13);
    _os_log_impl(&dword_1CFB9F000, v6, v7, "CallReportingViewModel: in %s, user did tap on cancel", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1D3873280](v9, -1, -1);
    MEMORY[0x1D3873280](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void *sub_1CFBD2784(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_1CFC9D938();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_1CFC9C6A8();
    sub_1CFC9C698();
    v12 = sub_1CFC9D918();
    v13 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1CFBB531C(0xD00000000000003ELL, 0x80000001CFCAA670, &v18);
      _os_log_impl(&dword_1CFB9F000, v12, v13, "CallReportingViewModel: in %s, user did tap on block", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1D3873280](v15, -1, -1);
      MEMORY[0x1D3873280](v14, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    sub_1CFC9C948();
    if (qword_1EC4ECFF8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED790, &qword_1CFCA26D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CFCA1DD0;
    *(inited + 32) = [a3 initiator];
    sub_1CFBD4A54(inited, a4);

    swift_setDeallocating();
    return sub_1CFBC2FB0(inited + 32, &qword_1EC4ED798, qword_1CFCA26D8);
  }

  return result;
}

void *sub_1CFBD2A24(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_1CFC9D938();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_1CFC9C6A8();
    sub_1CFC9C698();
    v12 = sub_1CFC9D918();
    v13 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1CFBB531C(0xD00000000000003ELL, 0x80000001CFCAA670, &v18);
      _os_log_impl(&dword_1CFB9F000, v12, v13, "CallReportingViewModel: in %s, user did tap on block and report", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1D3873280](v15, -1, -1);
      MEMORY[0x1D3873280](v14, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    sub_1CFC9C948();
    sub_1CFC9CA38();
    if (qword_1EC4ECFF8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED790, &qword_1CFCA26D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CFCA1DD0;
    *(inited + 32) = [a3 initiator];
    sub_1CFBD4A54(inited, a4);

    swift_setDeallocating();
    return sub_1CFBC2FB0(inited + 32, &qword_1EC4ED798, qword_1CFCA26D8);
  }

  return result;
}

id sub_1CFBD2D90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClassificationControllerDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1CFBD2DF8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v9 = *(sub_1CFC9C918() - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CFBCE894(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24), v4 + v10, *(v4 + v11), *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1CFBD2ED8(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1CFBD4A14;

  return sub_1CFBD4F68();
}

void sub_1CFBD2FAC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1CFBD3020(void *a1, uint64_t a2, uint64_t a3)
{
  v84 = a3;
  v85 = a2;
  v4 = sub_1CFC9D938();
  v87 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v80 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v80 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v80 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v80 - v17;
  v88 = sub_1CFC9BFB8();
  v19 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v21 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v23 = MEMORY[0x1EEE9AC00](v22).n128_u64[0];
  v25 = &v80 - v24;
  v26 = [a1 date];
  if (!v26)
  {
    sub_1CFC9C6A8();
    sub_1CFC9C698();
    v36 = sub_1CFC9D918();
    v37 = sub_1CFC9FAD8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = v4;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v89 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_1CFBB531C(0xD000000000000040, 0x80000001CFCAA590, &v89);
      _os_log_impl(&dword_1CFB9F000, v36, v37, "CallReportingViewModel: in %s, Unable to show reporting extension for call because the date is nil", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x1D3873280](v40, -1, -1);
      MEMORY[0x1D3873280](v39, -1, -1);

      return (*(v87 + 8))(v6, v38);
    }

    else
    {

      return (*(v87 + 8))(v6, v4);
    }
  }

  v86 = v19;
  v27 = v26;
  sub_1CFC9BF88();

  v28 = [a1 isoCountryCode];
  if (!v28)
  {
    sub_1CFC9C6A8();
    sub_1CFC9C698();
    v42 = sub_1CFC9D918();
    v43 = sub_1CFC9FAD8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = v4;
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v89 = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_1CFBB531C(0xD000000000000040, 0x80000001CFCAA590, &v89);
      _os_log_impl(&dword_1CFB9F000, v42, v43, "CallReportingViewModel: in %s, Unable to show reporting extension for call because the isoCountryCode is nil", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x1D3873280](v46, -1, -1);
      MEMORY[0x1D3873280](v45, -1, -1);

      v47 = *(v87 + 8);
      v48 = v9;
LABEL_13:
      v53 = v44;
LABEL_24:
      v47(v48, v53);
      return (*(v86 + 8))(v25, v88);
    }

    v47 = *(v87 + 8);
    v48 = v9;
LABEL_23:
    v53 = v4;
    goto LABEL_24;
  }

  v29 = v28;
  v30 = [a1 callerId];
  if (!v30)
  {

    sub_1CFC9C6A8();
    sub_1CFC9C698();
    v49 = sub_1CFC9D918();
    v50 = sub_1CFC9FAD8();
    if (os_log_type_enabled(v49, v50))
    {
      v44 = v4;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v89 = v52;
      *v51 = 136315138;
      *(v51 + 4) = sub_1CFBB531C(0xD000000000000040, 0x80000001CFCAA590, &v89);
      _os_log_impl(&dword_1CFB9F000, v49, v50, "CallReportingViewModel: in %s, Unable to show reporting extension for call because the callerId is nil", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x1D3873280](v52, -1, -1);
      MEMORY[0x1D3873280](v51, -1, -1);

      v47 = *(v87 + 8);
      v48 = v12;
      goto LABEL_13;
    }

    v47 = *(v87 + 8);
    v48 = v12;
    goto LABEL_23;
  }

  v31 = v30;
  v83 = v4;
  v32 = [a1 callerId];
  if (v32)
  {
    v33 = v32;
    sub_1CFC9F768();
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  (*(v86 + 16))(v21, v25, v88);
  if (v35)
  {
    v54 = sub_1CFC9F728();
  }

  else
  {
    v54 = 0;
  }

  v55 = objc_allocWithZone(MEMORY[0x1E696D160]);
  v56 = sub_1CFC9BF68();
  v57 = [v55 initWithSender:v54 dateReceived:v56];

  v58 = *(v86 + 8);
  v86 += 8;
  v82 = v58;
  v58(v21, v88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1CFCA2540;
  *(v59 + 32) = v57;
  v60 = objc_allocWithZone(MEMORY[0x1E696D158]);
  sub_1CFBA2D80(0, &qword_1EC4ED768, 0x1E696D160);
  v81 = v57;
  v61 = sub_1CFC9F898();

  v62 = [v60 initWithCallCommunications_];

  v63 = objc_allocWithZone(MEMORY[0x1E696D170]);
  v64 = v62;
  v65 = [v63 initUnactivatedVCWithRequest:v64 sender:v31 isoCountryCode:v29];

  [v65 setDelegate_];
  v66 = sub_1CFC9F998();
  (*(*(v66 - 8) + 56))(v18, 1, 1, v66);
  v67 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1CFC9F968();
  v68 = v81;
  v69 = a1;
  v70 = v65;

  v71 = sub_1CFC9F958();
  v72 = swift_allocObject();
  v73 = MEMORY[0x1E69E85E0];
  v72[2] = v71;
  v72[3] = v73;
  v72[4] = v68;
  v72[5] = v69;
  v72[6] = v70;
  v72[7] = v67;

  sub_1CFBDC030(0, 0, v18, &unk_1CFCA26A0, v72);

  sub_1CFC9C6A8();
  sub_1CFC9C698();
  v74 = v70;
  v75 = sub_1CFC9D918();
  v76 = sub_1CFC9FAF8();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v77 = 138412290;
    *(v77 + 4) = v74;
    *v78 = v74;
    v79 = v74;
    _os_log_impl(&dword_1CFB9F000, v75, v76, "Created classification view controller: %@, waiting for ready", v77, 0xCu);
    sub_1CFBC2FB0(v78, &qword_1EC4ED770, &qword_1CFCA2CF0);
    MEMORY[0x1D3873280](v78, -1, -1);
    MEMORY[0x1D3873280](v77, -1, -1);
  }

  (*(v87 + 8))(v15, v83);
  return v82(v25, v88);
}

void sub_1CFBD39CC(void *a1, void *a2)
{
  v4 = sub_1CFC9D938();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C988();
  if (v8)
  {
    sub_1CFC9C9E8();

    sub_1CFC9CA08();
    v9 = sub_1CFC9F728();

    v10 = sub_1CFC9F728();

    v36 = [objc_opt_self() alertControllerWithTitle:v9 message:v10 preferredStyle:0];

    sub_1CFC9C9D8();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v12 = sub_1CFC9F728();

    v41 = sub_1CFBD446C;
    v42 = v11;
    aBlock = MEMORY[0x1E69E9820];
    v38 = 1107296256;
    v39 = sub_1CFBDBE60;
    v40 = &block_descriptor_124;
    v13 = _Block_copy(&aBlock);

    v14 = objc_opt_self();
    v35 = [v14 actionWithTitle:v12 style:1 handler:v13];
    _Block_release(v13);

    sub_1CFC9C8E8();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = a1;
    v16[4] = a2;

    v17 = a1;
    v18 = a2;
    v19 = sub_1CFC9F728();

    v41 = sub_1CFBD4474;
    v42 = v16;
    aBlock = MEMORY[0x1E69E9820];
    v38 = 1107296256;
    v39 = sub_1CFBDBE60;
    v40 = &block_descriptor_131;
    v20 = _Block_copy(&aBlock);

    v21 = [v14 actionWithTitle:v19 style:2 handler:v20];
    _Block_release(v20);

    sub_1CFC9C8F8();
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = v17;
    v23[4] = v18;
    v24 = v17;
    v25 = v18;

    v26 = sub_1CFC9F728();

    v41 = sub_1CFBD44C8;
    v42 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v38 = 1107296256;
    v39 = sub_1CFBDBE60;
    v40 = &block_descriptor_138;
    v27 = _Block_copy(&aBlock);

    v28 = [v14 actionWithTitle:v26 style:2 handler:v27];
    _Block_release(v27);

    v29 = v36;
    [v36 addAction_];
    [v29 addAction_];
    v30 = v35;
    [v29 addAction_];
    [v25 presentViewController:v29 animated:1 completion:0];
  }

  else
  {
    sub_1CFC9C6A8();
    sub_1CFC9C698();
    v31 = sub_1CFC9D918();
    v32 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_1CFBB531C(0xD00000000000003ELL, 0x80000001CFCAA670, &aBlock);
      _os_log_impl(&dword_1CFB9F000, v31, v32, "CallReportingViewModel: in %s, call initiator is nil", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x1D3873280](v34, -1, -1);
      MEMORY[0x1D3873280](v33, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1CFBD3FDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CFBD4A14;

  return sub_1CFBD514C(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_49Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CFBD4114(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1CFBD4A14;

  return sub_1CFBD1A54(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_39Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CFBD4254(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CFBD431C;

  return sub_1CFBD514C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1CFBD431C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroy_26Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_127Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CFBD44D4(void *a1, void *a2)
{
  v4 = sub_1CFC9F638();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CFC9F658();
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CFC9D938();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1CFC9C6A8();
  sub_1CFC9C698();
  v13 = a2;
  v14 = a2;
  v15 = a1;
  v16 = sub_1CFC9D918();
  v17 = sub_1CFC9FAF8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v33 = Strong;
    v20 = v19;
    *v18 = 138412546;
    *(v18 + 4) = v15;
    *(v18 + 12) = 2112;
    *(v18 + 14) = v14;
    *v19 = v15;
    v19[1] = v13;
    v21 = v15;
    v22 = v14;
    _os_log_impl(&dword_1CFB9F000, v16, v17, "Completed classification request: %@ with response: %@", v18, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED770, &qword_1CFCA2CF0);
    swift_arrayDestroy();
    v23 = v20;
    Strong = v33;
    MEMORY[0x1D3873280](v23, -1, -1);
    MEMORY[0x1D3873280](v18, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  sub_1CFBA2D80(0, &qword_1EE04FF80, 0x1E69E9610);
  v24 = sub_1CFC9FC28();
  v25 = swift_allocObject();
  *(v25 + 16) = Strong;
  aBlock[4] = sub_1CFBD4968;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CFC56F38;
  aBlock[3] = &block_descriptor_144;
  v26 = _Block_copy(aBlock);
  v27 = Strong;

  v28 = v34;
  sub_1CFC9F648();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1CFBD4988(&qword_1EE04D130, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5B0, &unk_1CFCA24A0);
  sub_1CFBCCC94();
  v29 = v37;
  v30 = v39;
  sub_1CFC9FF58();
  MEMORY[0x1D3872170](0, v28, v29, v26);
  _Block_release(v26);

  (*(v38 + 8))(v29, v30);
  return (*(v35 + 8))(v28, v36);
}

id sub_1CFBD4968()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

uint64_t sub_1CFBD4988(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1CFBD4A54(uint64_t a1, void *a2)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v35 = &v34 - v4;
  v43 = sub_1CFC9D768();
  v5 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1CFC9D788();
  v8 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v40 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v44 = &v34 - v11;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = (a1 + 32);
    v38 = *MEMORY[0x1E696ED80];
    v14 = (v5 + 104);
    v41 = v8 + 32;
    v39 = *MEMORY[0x1E696ED90];
    v15 = MEMORY[0x1E69E7CC0];
    v16 = &_swift_FORCE_LOAD___swiftCoreImage___CallsAppUI;
    while (1)
    {
      v18 = *v13++;
      v17 = v18;
      if (v18)
      {
        v19 = v17;
        if ([v19 v16[225]] == 3)
        {
          (*v14)(v7, v39, v43);
          v20 = [v19 value];
          sub_1CFC9F768();

          sub_1CFC9D778();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_1CFC7B354(0, v15[2] + 1, 1, v15);
          }

          v22 = v15[2];
          v21 = v15[3];
          if (v22 >= v21 >> 1)
          {
            v15 = sub_1CFC7B354((v21 > 1), v22 + 1, 1, v15);
          }

          v15[2] = v22 + 1;
          (*(v8 + 32))(v15 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v22, v44, v42);
LABEL_18:
          v16 = &_swift_FORCE_LOAD___swiftCoreImage___CallsAppUI;
          goto LABEL_4;
        }

        if ([v19 v16[225]] == 2)
        {
          (*v14)(v7, v38, v43);
          v23 = [v19 value];
          sub_1CFC9F768();

          sub_1CFC9D778();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_1CFC7B354(0, v15[2] + 1, 1, v15);
          }

          v25 = v15[2];
          v24 = v15[3];
          if (v25 >= v24 >> 1)
          {
            v15 = sub_1CFC7B354((v24 > 1), v25 + 1, 1, v15);
          }

          v15[2] = v25 + 1;
          (*(v8 + 32))(v15 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v25, v40, v42);
          goto LABEL_18;
        }
      }

LABEL_4:
      if (!--v12)
      {
        goto LABEL_20;
      }
    }
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_20:
  if (v15[2])
  {
    v26 = sub_1CFC9F998();
    v27 = v35;
    (*(*(v26 - 8) + 56))(v35, 1, 1, v26);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v29 = v36;
    v30 = v37;
    v28[4] = v36;
    v28[5] = v15;
    v28[6] = v30;
    v31 = v29;
    v32 = v30;
    sub_1CFBDC030(0, 0, v27, &unk_1CFCA2720, v28);
  }

  else
  {
  }

  return result;
}

id sub_1CFBD4F38()
{
  result = [objc_allocWithZone(type metadata accessor for SafetyCheckHelper()) init];
  qword_1EC4F2A18 = result;
  return result;
}

uint64_t sub_1CFBD4F84()
{
  sub_1CFC9D348();
  *(v0 + 16) = sub_1CFC9D338();
  v3 = (*MEMORY[0x1E699A160] + MEMORY[0x1E699A160]);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1CFBD503C;

  return v3();
}

uint64_t sub_1CFBD503C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1CFBD514C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  v7 = sub_1CFC9F638();
  v6[19] = v7;
  v6[20] = *(v7 - 8);
  v6[21] = swift_task_alloc();
  v8 = sub_1CFC9F658();
  v6[22] = v8;
  v6[23] = *(v8 - 8);
  v6[24] = swift_task_alloc();
  v9 = sub_1CFC9D368();
  v6[25] = v9;
  v6[26] = *(v9 - 8);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CFBD52E0, 0, 0);
}

uint64_t sub_1CFBD52E0()
{
  v1 = v0[17];
  v0[30] = *(v0[16] + OBJC_IVAR____TtC10CallsAppUI17SafetyCheckHelper_blockingController);
  v4 = (*MEMORY[0x1E699A150] + MEMORY[0x1E699A150]);
  v2 = swift_task_alloc();
  v0[31] = v2;
  *v2 = v0;
  v2[1] = sub_1CFBD53A0;

  return v4(v1, 0);
}

uint64_t sub_1CFBD53A0(uint64_t a1)
{
  v3 = *v2;
  v3[8] = v2;
  v3[9] = a1;
  v3[10] = v1;
  v3[32] = v1;

  if (v1)
  {
    v4 = sub_1CFBD56DC;
  }

  else
  {
    v4 = sub_1CFBD54BC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1CFBD54BC()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = v0[24];
    v3 = v0[21];
    v14 = v0[23];
    v15 = v0[22];
    v4 = v0[19];
    v5 = v0[20];
    v6 = v0[18];
    sub_1CFBD6E04();
    v13 = sub_1CFC9FC28();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v1;
    v0[6] = sub_1CFBD6F94;
    v0[7] = v7;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1CFC56F38;
    v0[5] = &block_descriptor_1;
    v8 = _Block_copy(v0 + 2);
    v9 = v6;
    v10 = v1;
    sub_1CFC9F648();
    v0[15] = MEMORY[0x1E69E7CC0];
    sub_1CFBD6E50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5B0, &unk_1CFCA24A0);
    sub_1CFBCCC94();
    sub_1CFC9FF58();
    MEMORY[0x1D3872170](0, v2, v3, v8);
    _Block_release(v8);

    (*(v5 + 8))(v3, v4);
    (*(v14 + 8))(v2, v15);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1CFBD56DC()
{
  v1 = *(v0 + 256);
  *(v0 + 112) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED788, &qword_1CFCA26C0);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 256);
  if (v3)
  {
    v6 = *(v0 + 224);
    v5 = *(v0 + 232);
    v8 = *(v0 + 208);
    v7 = *(v0 + 216);
    v9 = *(v0 + 200);

    (*(v8 + 32))(v6, v5, v9);
    v10 = *(v8 + 104);
    v10(v7, *MEMORY[0x1E699A170], v9);
    v11 = sub_1CFC9D358();
    v12 = *(v8 + 8);
    *(v0 + 264) = v12;
    *(v0 + 272) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v7, v9);
    if (v11 & 1) != 0 || (v13 = *(v0 + 216), v14 = *(v0 + 200), v10(v13, *MEMORY[0x1E699A178], v14), v15 = sub_1CFC9D358(), v12(v13, v14), (v15))
    {
      sub_1CFC9D348();
      *(v0 + 280) = sub_1CFC9D338();
      v21 = (*MEMORY[0x1E699A160] + MEMORY[0x1E699A160]);
      v16 = swift_task_alloc();
      *(v0 + 288) = v16;
      *v16 = v0;
      v16[1] = sub_1CFBD5A00;

      return v21();
    }

    else
    {
      v19 = *(v0 + 136);
      v22 = (*MEMORY[0x1E699A150] + MEMORY[0x1E699A150]);
      v20 = swift_task_alloc();
      *(v0 + 296) = v20;
      *v20 = v0;
      v20[1] = sub_1CFBD5B90;

      return v22(v19, 0);
    }
  }

  else
  {

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1CFBD5A00()
{
  v1 = *v0;
  v2 = *v0;

  v3 = *(v1 + 136);
  v6 = (*MEMORY[0x1E699A150] + MEMORY[0x1E699A150]);
  v4 = swift_task_alloc();
  *(v1 + 296) = v4;
  *v4 = v2;
  v4[1] = sub_1CFBD5B90;

  return v6(v3, 0);
}

uint64_t sub_1CFBD5B90(uint64_t a1)
{
  v3 = *v2;
  v3[11] = v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {

    v4 = sub_1CFBD6F8C;
  }

  else
  {
    v4 = sub_1CFBD5CB0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1CFBD5CB0()
{
  (v0[33])(v0[28], v0[25]);

  v1 = v0[12];
  if (v1)
  {
    v2 = v0[24];
    v3 = v0[21];
    v14 = v0[23];
    v15 = v0[22];
    v4 = v0[19];
    v5 = v0[20];
    v6 = v0[18];
    sub_1CFBD6E04();
    v13 = sub_1CFC9FC28();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v1;
    v0[6] = sub_1CFBD6F94;
    v0[7] = v7;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1CFC56F38;
    v0[5] = &block_descriptor_1;
    v8 = _Block_copy(v0 + 2);
    v9 = v6;
    v10 = v1;
    sub_1CFC9F648();
    v0[15] = MEMORY[0x1E69E7CC0];
    sub_1CFBD6E50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5B0, &unk_1CFCA24A0);
    sub_1CFBCCC94();
    sub_1CFC9FF58();
    MEMORY[0x1D3872170](0, v2, v3, v8);
    _Block_release(v8);

    (*(v5 + 8))(v3, v4);
    (*(v14 + 8))(v2, v15);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1CFBD5EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  v7 = sub_1CFC9F638();
  v6[19] = v7;
  v6[20] = *(v7 - 8);
  v6[21] = swift_task_alloc();
  v8 = sub_1CFC9F658();
  v6[22] = v8;
  v6[23] = *(v8 - 8);
  v6[24] = swift_task_alloc();
  v9 = sub_1CFC9D368();
  v6[25] = v9;
  v6[26] = *(v9 - 8);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CFBD607C, 0, 0);
}

uint64_t sub_1CFBD607C()
{
  v1 = v0[17];
  v0[30] = *(v0[16] + OBJC_IVAR____TtC10CallsAppUI17SafetyCheckHelper_blockingController);
  v4 = (*MEMORY[0x1E699A150] + MEMORY[0x1E699A150]);
  v2 = swift_task_alloc();
  v0[31] = v2;
  *v2 = v0;
  v2[1] = sub_1CFBD613C;

  return v4(0, v1);
}

uint64_t sub_1CFBD613C(uint64_t a1)
{
  v3 = *v2;
  v3[8] = v2;
  v3[9] = a1;
  v3[10] = v1;
  v3[32] = v1;

  if (v1)
  {
    v4 = sub_1CFBD6478;
  }

  else
  {
    v4 = sub_1CFBD6258;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1CFBD6258()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = v0[24];
    v3 = v0[21];
    v14 = v0[23];
    v15 = v0[22];
    v4 = v0[19];
    v5 = v0[20];
    v6 = v0[18];
    sub_1CFBD6E04();
    v13 = sub_1CFC9FC28();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v1;
    v0[6] = sub_1CFBD6F70;
    v0[7] = v7;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1CFC56F38;
    v0[5] = &block_descriptor_16;
    v8 = _Block_copy(v0 + 2);
    v9 = v6;
    v10 = v1;
    sub_1CFC9F648();
    v0[15] = MEMORY[0x1E69E7CC0];
    sub_1CFBD6E50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5B0, &unk_1CFCA24A0);
    sub_1CFBCCC94();
    sub_1CFC9FF58();
    MEMORY[0x1D3872170](0, v2, v3, v8);
    _Block_release(v8);

    (*(v5 + 8))(v3, v4);
    (*(v14 + 8))(v2, v15);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1CFBD6478()
{
  v1 = *(v0 + 256);
  *(v0 + 112) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED788, &qword_1CFCA26C0);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 256);
  if (v3)
  {
    v6 = *(v0 + 224);
    v5 = *(v0 + 232);
    v8 = *(v0 + 208);
    v7 = *(v0 + 216);
    v9 = *(v0 + 200);

    (*(v8 + 32))(v6, v5, v9);
    v10 = *(v8 + 104);
    v10(v7, *MEMORY[0x1E699A170], v9);
    v11 = sub_1CFC9D358();
    v12 = *(v8 + 8);
    *(v0 + 264) = v12;
    *(v0 + 272) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v7, v9);
    if (v11 & 1) != 0 || (v13 = *(v0 + 216), v14 = *(v0 + 200), v10(v13, *MEMORY[0x1E699A178], v14), v15 = sub_1CFC9D358(), v12(v13, v14), (v15))
    {
      sub_1CFC9D348();
      *(v0 + 280) = sub_1CFC9D338();
      v21 = (*MEMORY[0x1E699A160] + MEMORY[0x1E699A160]);
      v16 = swift_task_alloc();
      *(v0 + 288) = v16;
      *v16 = v0;
      v16[1] = sub_1CFBD679C;

      return v21();
    }

    else
    {
      v19 = *(v0 + 136);
      v22 = (*MEMORY[0x1E699A150] + MEMORY[0x1E699A150]);
      v20 = swift_task_alloc();
      *(v0 + 296) = v20;
      *v20 = v0;
      v20[1] = sub_1CFBD692C;

      return v22(0, v19);
    }
  }

  else
  {

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1CFBD679C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = *(v1 + 136);
  v6 = (*MEMORY[0x1E699A150] + MEMORY[0x1E699A150]);
  v4 = swift_task_alloc();
  *(v1 + 296) = v4;
  *v4 = v2;
  v4[1] = sub_1CFBD692C;

  return v6(0, v3);
}

uint64_t sub_1CFBD692C(uint64_t a1)
{
  v3 = *v2;
  v3[11] = v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {

    v4 = sub_1CFBD6C84;
  }

  else
  {
    v4 = sub_1CFBD6A4C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1CFBD6A4C()
{
  (v0[33])(v0[28], v0[25]);

  v1 = v0[12];
  if (v1)
  {
    v2 = v0[24];
    v3 = v0[21];
    v14 = v0[23];
    v15 = v0[22];
    v4 = v0[19];
    v5 = v0[20];
    v6 = v0[18];
    sub_1CFBD6E04();
    v13 = sub_1CFC9FC28();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v1;
    v0[6] = sub_1CFBD6F70;
    v0[7] = v7;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1CFC56F38;
    v0[5] = &block_descriptor_16;
    v8 = _Block_copy(v0 + 2);
    v9 = v6;
    v10 = v1;
    sub_1CFC9F648();
    v0[15] = MEMORY[0x1E69E7CC0];
    sub_1CFBD6E50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5B0, &unk_1CFCA24A0);
    sub_1CFBCCC94();
    sub_1CFC9FF58();
    MEMORY[0x1D3872170](0, v2, v3, v8);
    _Block_release(v8);

    (*(v5 + 8))(v3, v4);
    (*(v14 + 8))(v2, v15);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1CFBD6C84()
{
  (*(v0 + 264))(*(v0 + 224), *(v0 + 200));

  v1 = *(v0 + 8);

  return v1();
}

id sub_1CFBD6D98()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1CFBD6E04()
{
  result = qword_1EE04FF80;
  if (!qword_1EE04FF80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE04FF80);
  }

  return result;
}

unint64_t sub_1CFBD6E50()
{
  result = qword_1EE04D130;
  if (!qword_1EE04D130)
  {
    sub_1CFC9F638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D130);
  }

  return result;
}

uint64_t sub_1CFBD6EA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CFBD431C;

  return sub_1CFBD5EE8(a1, v4, v5, v6, v7, v8);
}

uint64_t SearchContactCell.title.getter()
{
  v1 = sub_1CFC9BDF8();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = *v0;
  v3 = objc_opt_self();
  v4 = [v2 contact];
  v5 = [v3 stringFromContact:v4 style:0];

  if (v5)
  {
    sub_1CFC9F768();
  }

  v6 = sub_1CFC9F728();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED7A8, &qword_1CFCA2730);
  sub_1CFC9F238();
  v7 = sub_1CFC9F728();

  v8 = [v6 attributedStringToHighlightText:v7 style:0];

  sub_1CFC9BE18();
  return sub_1CFC9EDE8();
}

uint64_t SearchContactCell.titleColor.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

uint64_t SearchContactCell.subtitle.getter()
{
  result = sub_1CFBD71D4();
  if (!v1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1CFBD71D4()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E695CDC0]) init];
  v3 = [v0 matchInfo];
  if (!v3)
  {

    return 0;
  }

  v4 = v3;
  v5 = [v3 matchedProperties];
  if (v5)
  {
    v6 = v5;
    sub_1CFC9F6A8();

    v7 = objc_opt_self();
    v8 = sub_1CFC9F698();
    v9 = [v7 matchedProperties:v8 contains:*MEMORY[0x1E695C310]];

    if (v9)
    {

      v10 = [v1 contact];
      v11 = [v10 nickname];
LABEL_8:
      v14 = v11;

      v15 = sub_1CFC9F768();
      return v15;
    }

    v12 = sub_1CFC9F698();

    v13 = [v7 matchedProperties:v12 contains:*MEMORY[0x1E695C328]];

    if (v13)
    {
      v10 = [v1 contact];
      v11 = [v10 organizationName];
      goto LABEL_8;
    }
  }

  v17 = [v1 contact];
  v18 = [v2 summaryForContact:v17 matchInfo:v4];

  if (v18)
  {
    v19 = [v18 string];
    v20 = sub_1CFC9F768();

    return v20;
  }

  v21 = [v4 matchedProperties];
  if (!v21 || (v22 = v21, sub_1CFC9F6A8(), v22, v23 = objc_opt_self(), v24 = sub_1CFC9F698(), , v25 = [v23 matchedProperties:v24 contains:*MEMORY[0x1E695C330]], v24, !v25) || (v26 = objc_msgSend(v1, sel_preferredPhoneNumber)) == 0)
  {

    return 0;
  }

  v27 = v26;
  v28 = [v26 value];
  v29 = [v28 formattedStringValue];

  if (v29)
  {
    v30 = v2;
    v2 = v4;
    v4 = v29;
  }

  else
  {
    v31 = [v27 value];
    v32 = [v31 stringValue];

    v30 = v32;
  }

  v33 = sub_1CFC9F768();

  return v33;
}

void sub_1CFBD75F0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v68 = a2;
  v54 = type metadata accessor for RecentsCircleButtonStyle(0);
  MEMORY[0x1EEE9AC00](v54);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED080, &unk_1CFCA1E20);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v53 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED878, &qword_1CFCA2A18);
  v57 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v10 = &v53 - v9;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED880, &qword_1CFCA2A20);
  v59 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v53 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED888, &qword_1CFCA2A28);
  MEMORY[0x1EEE9AC00](v67);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v63 = &v53 - v16;
  v17 = *a1;
  v66 = [*a1 contact];
  v64 = [v17 preferredPhoneNumber];
  v18 = *(a1 + 64);
  v65 = *(a1 + 56);
  v62 = v18;
  v74 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED820, &qword_1CFCA2990);
  sub_1CFC9F228();
  v60 = v70;
  v61 = v71;
  v19 = swift_allocObject();
  v20 = *(a1 + 48);
  v19[3] = *(a1 + 32);
  v19[4] = v20;
  v21 = *(a1 + 80);
  v19[5] = *(a1 + 64);
  v19[6] = v21;
  v22 = *(a1 + 16);
  v19[1] = *a1;
  v19[2] = v22;
  sub_1CFBDA3B8(a1, &v70);
  sub_1CFC9F298();
  v69 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED890, &qword_1CFCA2A30);
  v24 = sub_1CFBA57C0(&qword_1EE04D1B8, &unk_1EC4ED080, &unk_1CFCA1E20, MEMORY[0x1E697D680]);
  v25 = sub_1CFBA57C0(&qword_1EC4ED898, &qword_1EC4ED890, &qword_1CFCA2A30, MEMORY[0x1E6981F48]);
  sub_1CFC9EED8();
  (*(v6 + 8))(v8, v5);
  *v4 = swift_getKeyPath();
  v4[8] = 0;
  v26 = v54;
  sub_1CFC9CD28();
  sub_1CFBDA7AC();
  sub_1CFC9DEB8();
  v70 = v5;
  v71 = v23;
  v72 = v24;
  v73 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = sub_1CFBDAB80(&unk_1EE04F608, type metadata accessor for RecentsCircleButtonStyle, &unk_1CFCA40AC);
  v29 = v55;
  v30 = v56;
  sub_1CFC9EEC8();
  sub_1CFBDA800(v4);
  (*(v57 + 8))(v10, v30);
  v70 = v30;
  v71 = v26;
  v72 = OpaqueTypeConformance2;
  v73 = v28;
  swift_getOpaqueTypeConformance2();
  v31 = v58;
  sub_1CFC9F008();
  (*(v59 + 8))(v29, v31);
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v33 = [objc_opt_self() bundleForClass_];
  v34 = sub_1CFC9BE28();
  v36 = v35;

  v70 = v34;
  v71 = v36;
  sub_1CFBB4460();
  v37 = sub_1CFC9EDF8();
  v39 = v38;
  LOBYTE(v30) = v40;
  v41 = v63;
  sub_1CFC9E178();
  sub_1CFBB44C0(v37, v39, v30 & 1);

  sub_1CFBC2FB0(v13, &qword_1EC4ED888, &qword_1CFCA2A28);
  sub_1CFBBAF3C(v41, v13);
  v42 = v68;
  v43 = v66;
  v44 = v64;
  *v68 = v66;
  v42[1] = v44;
  v45 = v62;
  v42[2] = v65;
  v42[3] = v45;
  v46 = v60;
  v47 = v61;
  v42[4] = v60;
  v42[5] = v47;
  v48 = v42;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED8A0, &qword_1CFCA2A38);
  sub_1CFBBAF3C(v13, v48 + *(v49 + 48));

  v50 = v43;
  v51 = v44;

  v52 = v46;
  sub_1CFBC2FB0(v41, &qword_1EC4ED888, &qword_1CFCA2A28);
  sub_1CFBC2FB0(v13, &qword_1EC4ED888, &qword_1CFCA2A28);
}

uint64_t sub_1CFBD7E84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9F1A8();
  *a1 = result;
  return result;
}

uint64_t sub_1CFBD7EC4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v54 = a2;
  v60 = sub_1CFC9F3A8();
  v53 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v47 - v5;
  v7 = sub_1CFC9C028();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1CFC9F718();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED8A8, &qword_1CFCA2A40);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  sub_1CFC9F708();
  sub_1CFBDA658();
  sub_1CFC9FDB8();
  sub_1CFC9C018();
  v63 = sub_1CFC9F788();
  v64 = v16;
  v61 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED8B0, &qword_1CFCA2A48);
  sub_1CFBDA894();
  sub_1CFBB4460();
  v17 = v15;
  sub_1CFC9F3D8();
  v58 = v6;
  sub_1CFC9F398();
  v18 = [objc_opt_self() supportsFaceTimeAudioCalls];
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v55 = 0;
  v56 = 0;
  if (v18)
  {
    v23 = *a1;
    v19 = [*a1 contact];
    v20 = [v23 preferredPhoneNumber];
    v21 = *(a1 + 72);
    v22 = *(a1 + 80);
    v62 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED820, &qword_1CFCA2990);
    sub_1CFC9F228();
    v24 = v63;
    v55 = v64;

    v25 = v19;
    v26 = v20;
    v56 = v24;
    v27 = v24;
  }

  v57 = v19;
  v49 = v22;
  v50 = v17;
  v51 = v10;
  v52 = v12;
  v28 = *(v10 + 16);
  v28(v12, v17, v9);
  v29 = v53;
  v48 = v9;
  v30 = *(v53 + 16);
  v31 = v59;
  v30(v59, v58, v60);
  v32 = v21;
  v33 = v20;
  v34 = v54;
  v35 = v12;
  v36 = v48;
  v28(v54, v35, v48);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED8C8, qword_1CFCA2A50);
  v38 = v60;
  v30(&v34[*(v37 + 48)], v31, v60);
  v39 = &v34[*(v37 + 64)];
  v40 = v56;
  v41 = v57;
  v42 = v49;
  v43 = v55;
  sub_1CFBDA944(v57, v33, v32, v49, v56, v55);
  sub_1CFBDA9B4(v41, v33, v32, v42, v40, v43);
  *v39 = v41;
  *(v39 + 1) = v33;
  *(v39 + 2) = v32;
  *(v39 + 3) = v42;
  *(v39 + 4) = v40;
  *(v39 + 5) = v43;
  v44 = *(v29 + 8);
  v44(v58, v38);
  v45 = *(v51 + 8);
  v45(v50, v36);
  sub_1CFBDA9B4(v57, v33, v32, v42, v40, v43);
  v44(v59, v60);
  return (v45)(v52, v36);
}

uint64_t sub_1CFBD83F0(uint64_t a1)
{
  v2 = [*a1 contact];
  v3 = [v2 phoneNumbers];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED8D0, &unk_1CFCA4E60);
  v4 = sub_1CFC9F8A8();

  v11 = v4;
  swift_getKeyPath();
  v5 = swift_allocObject();
  v6 = *(a1 + 48);
  v5[3] = *(a1 + 32);
  v5[4] = v6;
  v7 = *(a1 + 80);
  v5[5] = *(a1 + 64);
  v5[6] = v7;
  v8 = *(a1 + 16);
  v5[1] = *a1;
  v5[2] = v8;
  sub_1CFBDA3B8(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED8D8, &unk_1CFCA2A80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED838, &qword_1CFCA7FC0);
  sub_1CFBA57C0(&qword_1EC4ED8E0, &qword_1EC4ED8D8, &unk_1CFCA2A80, MEMORY[0x1E69E6338]);
  sub_1CFBA57C0(&qword_1EC4ED8E8, &qword_1EC4ED8D0, &unk_1CFCA4E60, MEMORY[0x1E69E81B8]);
  sub_1CFBA57C0(&qword_1EC4ED8C0, &qword_1EC4ED838, &qword_1CFCA7FC0, MEMORY[0x1E697D680]);
  return sub_1CFC9F3B8();
}

uint64_t sub_1CFBD85F0(uint64_t *a1, _OWORD *a2)
{
  v3 = swift_allocObject();
  v4 = a2[3];
  v3[3] = a2[2];
  v3[4] = v4;
  v5 = a2[5];
  v3[5] = a2[4];
  v3[6] = v5;
  v6 = a2[1];
  v3[1] = *a2;
  v3[2] = v6;
  sub_1CFBDA3B8(a2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED840, &qword_1CFCA29B0);
  sub_1CFBA57C0(&qword_1EE04D200, &qword_1EC4ED840, &qword_1CFCA29B0, MEMORY[0x1E697D658]);
  return sub_1CFC9F298();
}

uint64_t sub_1CFBD86F8(void *a1)
{
  v2 = sub_1CFC9C028();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1CFC9F718();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1CFC9BDA8();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 label];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1CFC9F768();
    v13 = v12;

    v20 = v11;
    v21 = v13;
    sub_1CFC9BD98();
    sub_1CFBB4460();
    v14 = sub_1CFC9FEF8();
    v16 = v15;
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    sub_1CFC9F708();
    sub_1CFBDA658();
    sub_1CFC9FDB8();
    sub_1CFC9C018();
    v14 = sub_1CFC9F788();
    v16 = v17;
  }

  v20 = v14;
  v21 = v16;
  sub_1CFBB4460();
  return sub_1CFC9F218();
}

uint64_t SearchContactCell.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v17 = v1[2];
  v18 = v3;
  v4 = v1[5];
  v19 = v1[4];
  v20 = v4;
  v5 = v1[1];
  v15 = *v1;
  v16 = v5;
  SearchContactCell.title.getter();
  v14[3] = sub_1CFC9D018();
  v14[4] = MEMORY[0x1E6995C08];
  __swift_allocate_boxed_opaque_existential_0Tm(v14);

  sub_1CFC9D008();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED7B0, &qword_1CFCA2738);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED7B8, &unk_1CFCA2740);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED7C0, &qword_1CFCA3EB0);
  sub_1CFBDA23C();
  sub_1CFBA57C0(&qword_1EC4ED7F0, &qword_1EC4ED7B8, &unk_1CFCA2740, MEMORY[0x1E69817F8]);
  sub_1CFBB76B4();
  sub_1CFC9CE48();
  v6 = v17;
  v7 = swift_allocObject();
  v8 = v18;
  *(v7 + 3) = v17;
  *(v7 + 4) = v8;
  v9 = v20;
  *(v7 + 5) = v19;
  *(v7 + 6) = v9;
  v10 = v16;
  *(v7 + 1) = v15;
  *(v7 + 2) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED7F8, &qword_1CFCA2760);
  *(a1 + *(v11 + 52)) = v6;
  v12 = (a1 + *(v11 + 56));
  *v12 = sub_1CFBDA3B0;
  v12[1] = v7;
  sub_1CFBDA3B8(&v15, v14);
}

uint64_t sub_1CFBD8C1C(id *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED7D8, &unk_1CFCA2750);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1CFCA2540;
  *(v5 + 32) = [*a1 contact];
  sub_1CFC9D028();
  LOBYTE(a1) = sub_1CFC9EC18();
  sub_1CFC9CD28();
  sub_1CFC9DE18();
  v6 = &v4[*(v2 + 36)];
  *v6 = a1;
  *(v6 + 1) = v7;
  *(v6 + 2) = v8;
  *(v6 + 3) = v9;
  *(v6 + 4) = v10;
  v6[40] = 0;
  sub_1CFBDA2F8();
  sub_1CFC9EFA8();
  return sub_1CFBC2FB0(v4, &qword_1EC4ED7D8, &unk_1CFCA2750);
}

void sub_1CFBD8E58(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1CFC9E588();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED870, &qword_1CFCA2A10);
  sub_1CFBD75F0(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_1CFBD8EB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFBD71D4();
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = result;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  a1[1] = v3;
  if (!v3)
  {
    v4 = 0;
  }

  a1[2] = 0;
  a1[3] = v4;
  return result;
}

uint64_t sub_1CFBD8F00(uint64_t *a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED7A8, &qword_1CFCA2730);
  return sub_1CFC9F248();
}

uint64_t sub_1CFBD8F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED838, &qword_1CFCA7FC0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22[-v6 - 8];
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v23[0] = v8;
  v23[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED830, &unk_1CFCA29A0);
  sub_1CFC9F238();
  v10 = v25;
  if (v25)
  {
    v21 = v7;
    v11 = v4;
    v12 = a2;
    v13 = *a1;
    v24 = *(a1 + 8);
    v25 = v8;
    v23[0] = v9;
    v14 = swift_allocObject();
    v15 = *(a1 + 16);
    *(v14 + 16) = *a1;
    *(v14 + 32) = v15;
    *(v14 + 48) = *(a1 + 32);
    *(v14 + 64) = v10;
    v16 = v13;
    a2 = v12;
    v4 = v11;
    sub_1CFBA29FC(&v24, v22, &qword_1EC4ED818, &qword_1CFCA2988);

    sub_1CFBA29FC(&v25, v22, &qword_1EC4ED820, &qword_1CFCA2990);
    sub_1CFBA29FC(v23, v22, &qword_1EC4ED828, &qword_1CFCA2998);
    v17 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED840, &qword_1CFCA29B0);
    sub_1CFBA57C0(&qword_1EE04D200, &qword_1EC4ED840, &qword_1CFCA29B0, MEMORY[0x1E697D658]);
    v18 = v21;
    sub_1CFC9F298();

    (*(v5 + 32))(a2, v18, v4);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v5 + 56))(a2, v19, 1, v4);
}

uint64_t sub_1CFBD91F4()
{
  v0 = sub_1CFC9C028();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CFC9F718();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1CFC9F708();
  sub_1CFBDA658();
  sub_1CFC9FDB8();
  sub_1CFC9C018();
  sub_1CFC9F788();
  sub_1CFBB4460();
  return sub_1CFC9F218();
}

uint64_t sub_1CFBD9354(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1CFC9F968();
  *(v1 + 24) = sub_1CFC9F958();
  v3 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFBD93EC, v3, v2);
}

uint64_t sub_1CFBD93EC()
{

  v1.n128_f64[0] = sub_1CFBD9C94();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1CFBD9450@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  v13 = *v1;
  v14 = v3;
  v15 = v1[2];
  *a1 = sub_1CFC9F538();
  a1[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED808, &qword_1CFCA2968);
  sub_1CFBD8F68(&v13, a1 + *(v5 + 44));
  v16 = *(&v13 + 1);
  v6 = v13;
  v17 = *(&v15 + 1);
  v18 = v15;
  v7 = swift_allocObject();
  v8 = v14;
  v7[1] = v13;
  v7[2] = v8;
  v7[3] = v15;
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED810, &qword_1CFCA2980) + 36));
  sub_1CFC9E008();
  v10 = v6;
  sub_1CFBA29FC(&v16, v12, &qword_1EC4ED818, &qword_1CFCA2988);

  sub_1CFBA29FC(&v18, v12, &qword_1EC4ED820, &qword_1CFCA2990);
  sub_1CFBA29FC(&v17, v12, &qword_1EC4ED828, &qword_1CFCA2998);
  result = sub_1CFC9F978();
  *v9 = &unk_1CFCA2978;
  v9[1] = v7;
  return result;
}

uint64_t sub_1CFBD95A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = type metadata accessor for RecentsCircleButtonStyle(0);
  MEMORY[0x1EEE9AC00](v52);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED080, &unk_1CFCA1E20);
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED860, &unk_1CFCA29D0);
  v50 = *(v8 - 8);
  v51 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED868, &unk_1CFCA4230);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v43 - v12;
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v53 = v14;
  v54 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED830, &unk_1CFCA29A0);
  sub_1CFC9F238();
  v16 = v59;
  if (v59)
  {
    v43 = v13;
    v17 = v10;
    v18 = a2;
    v19 = *a1;
    v57 = *(a1 + 8);
    v58 = v14;
    v45 = v11;
    v59 = v15;
    v20 = swift_allocObject();
    v21 = *(a1 + 16);
    *(v20 + 16) = *a1;
    *(v20 + 32) = v21;
    *(v20 + 48) = *(a1 + 32);
    *(v20 + 64) = v16;
    v22 = v19;
    a2 = v18;
    v10 = v17;
    sub_1CFBA29FC(&v57, &v53, &qword_1EC4ED818, &qword_1CFCA2988);

    sub_1CFBA29FC(&v58, &v53, &qword_1EC4ED820, &qword_1CFCA2990);
    sub_1CFBA29FC(&v59, &v53, &qword_1EC4ED828, &qword_1CFCA2998);
    v44 = v16;
    v23 = v46;
    sub_1CFC9F298();
    *v5 = swift_getKeyPath();
    v5[8] = 0;
    v24 = v52;
    sub_1CFC9CD28();
    sub_1CFBDA7AC();
    sub_1CFC9DEB8();
    v25 = sub_1CFBA57C0(&qword_1EE04D1B8, &unk_1EC4ED080, &unk_1CFCA1E20, MEMORY[0x1E697D680]);
    v26 = sub_1CFBDAB80(&unk_1EE04F608, type metadata accessor for RecentsCircleButtonStyle, &unk_1CFCA40AC);
    v27 = v47;
    v28 = v49;
    sub_1CFC9EEC8();
    sub_1CFBDA800(v5);
    (*(v48 + 8))(v23, v28);
    v53 = v28;
    v54 = v24;
    v55 = v25;
    v56 = v26;
    swift_getOpaqueTypeConformance2();
    v29 = v43;
    v30 = v51;
    sub_1CFC9F008();
    (*(v50 + 8))(v27, v30);
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v32 = [objc_opt_self() bundleForClass_];
    v33 = sub_1CFC9BE28();
    v35 = v34;

    v53 = v33;
    v54 = v35;
    sub_1CFBB4460();
    v36 = sub_1CFC9EDF8();
    v38 = v37;
    LOBYTE(v28) = v39;
    sub_1CFC9E178();
    v40 = v38;
    v11 = v45;
    sub_1CFBB44C0(v36, v40, v28 & 1);

    sub_1CFBC2FB0(v29, &qword_1EC4ED868, &unk_1CFCA4230);
    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  return (*(v11 + 56))(a2, v41, 1, v10);
}

uint64_t sub_1CFBD9C54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9F1A8();
  *a1 = result;
  return result;
}

double sub_1CFBD9C94()
{
  v1 = v0[1];
  if (v1)
  {
    v24 = v1;
    v2 = [v24 value];
    v3 = [v2 stringValue];

    if (!v3)
    {
      sub_1CFC9F768();
      v3 = sub_1CFC9F728();
    }

    v4 = [v3 IDSFormattedDestinationID];

    if (v4 && (v5 = [objc_opt_self() sharedManager], v6 = objc_msgSend(v5, sel_faceTimeVideoAvailabilityForDestination_, v4), v5, v4, v6 == 1))
    {
      v7 = [v24 value];
      v8 = [v7 stringValue];

      if (!v8)
      {
        sub_1CFC9F768();
        v8 = sub_1CFC9F728();
      }

      v9 = [objc_allocWithZone(MEMORY[0x1E69D8C00]) initWithDestinationID_];

      v10 = v0[4];
      v29 = v0[5];
      v30 = v10;
      *&v28 = v10;
      *(&v28 + 1) = v29;
      v27 = v9;
      sub_1CFBA29FC(&v30, v26, &qword_1EC4ED820, &qword_1CFCA2990);
      sub_1CFBA29FC(&v29, v26, &qword_1EC4ED828, &qword_1CFCA2998);
      v11 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED830, &unk_1CFCA29A0);
      sub_1CFC9F248();

      sub_1CFBC2FB0(&v30, &qword_1EC4ED820, &qword_1CFCA2990);
      sub_1CFBC2FB0(&v29, &qword_1EC4ED828, &qword_1CFCA2998);
    }

    else
    {
    }
  }

  else
  {
    v25 = v0;
    v13 = [*v0 handles];
    v14 = sub_1CFC9F8A8();

    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = v14 + 40;
      do
      {

        v17 = sub_1CFC9F728();
        v18 = [v17 IDSFormattedDestinationID];

        if (v18 && (v19 = [objc_opt_self() sharedManager], v20 = objc_msgSend(v19, sel_faceTimeVideoAvailabilityForDestination_, v18), v19, v18, v20 == 1))
        {
          v21 = objc_allocWithZone(MEMORY[0x1E69D8C00]);
          v22 = sub_1CFC9F728();

          v23 = [v21 initWithDestinationID_];

          v28 = *(v25 + 2);
          v30 = v23;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED830, &unk_1CFCA29A0);
          sub_1CFC9F248();
        }

        else
        {
        }

        v16 += 16;
        --v15;
      }

      while (v15);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1CFBDA09C@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  v15 = *v1;
  v16 = v3;
  v17 = v1[2];
  *a1 = sub_1CFC9F538();
  a1[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED850, &qword_1CFCA29B8);
  sub_1CFBD95A4(&v15, a1 + *(v5 + 44));
  v6 = [objc_opt_self() defaultCenter];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED858, &unk_1CFCA29C0);
  sub_1CFC9FCA8();

  v8 = v15;
  v20 = v17;
  v18 = *(&v15 + 1);
  v19 = *(&v17 + 1);
  v9 = swift_allocObject();
  v10 = v16;
  *(v9 + 1) = v15;
  *(v9 + 2) = v10;
  *(v9 + 3) = v17;
  v11 = (a1 + *(v7 + 56));
  *v11 = sub_1CFBDA6FC;
  v11[1] = v9;
  v12 = v8;
  sub_1CFBA29FC(&v18, v14, &qword_1EC4ED818, &qword_1CFCA2988);

  sub_1CFBA29FC(&v20, v14, &qword_1EC4ED820, &qword_1CFCA2990);
  return sub_1CFBA29FC(&v19, v14, &qword_1EC4ED828, &qword_1CFCA2998);
}

unint64_t sub_1CFBDA23C()
{
  result = qword_1EC4ED7C8;
  if (!qword_1EC4ED7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4ED7B0, &qword_1CFCA2738);
    sub_1CFBDA2F8();
    sub_1CFBDAB80(&qword_1EE04FFC8, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4ED7C8);
  }

  return result;
}

unint64_t sub_1CFBDA2F8()
{
  result = qword_1EC4ED7D0;
  if (!qword_1EC4ED7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4ED7D8, &unk_1CFCA2750);
    sub_1CFBA57C0(&qword_1EC4ED7E0, &qword_1EC4ED7E8, &unk_1CFCA5850, MEMORY[0x1E6995C10]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4ED7D0);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1CFBDA428(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1CFBDA470(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CFBDA4E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1CFBDA530(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CFBDA5C4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1CFBD431C;

  return sub_1CFBD9354(v0 + 16);
}

unint64_t sub_1CFBDA658()
{
  result = qword_1EC4ED848;
  if (!qword_1EC4ED848)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC4ED848);
  }

  return result;
}

uint64_t objectdestroy_15Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t objectdestroy_19Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

unint64_t sub_1CFBDA7AC()
{
  result = qword_1EE04FFA0;
  if (!qword_1EE04FFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04FFA0);
  }

  return result;
}

uint64_t sub_1CFBDA800(uint64_t a1)
{
  v2 = type metadata accessor for RecentsCircleButtonStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1CFBDA894()
{
  result = qword_1EC4ED8B8;
  if (!qword_1EC4ED8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4ED8B0, &qword_1CFCA2A48);
    sub_1CFBA57C0(&qword_1EC4ED8C0, &qword_1EC4ED838, &qword_1CFCA7FC0, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4ED8B8);
  }

  return result;
}

id sub_1CFBDA944(id result, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (result)
  {
    v7 = result;

    v8 = v7;
    v9 = a2;

    return a5;
  }

  return result;
}

void *sub_1CFBDA9B4(void *result, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

unint64_t sub_1CFBDAA98()
{
  result = qword_1EC4ED8F0;
  if (!qword_1EC4ED8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4ED810, &qword_1CFCA2980);
    sub_1CFBA57C0(&qword_1EC4ED8F8, &qword_1EC4ED900, qword_1CFCA2A90, MEMORY[0x1E6981880]);
    sub_1CFBDAB80(&qword_1EC4ED908, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4ED8F0);
  }

  return result;
}

uint64_t sub_1CFBDAB80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1CFBDAD54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisionLinkActivityItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CFBDAF04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFAB0, &qword_1CFCA4DA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = &v17 - v9;
  v11 = [v2 tuConversationLink];
  v12 = [v11 URL];

  if (v12)
  {
    sub_1CFC9BEF8();

    v13 = sub_1CFC9BF28();
    (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
  }

  else
  {
    v13 = sub_1CFC9BF28();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  }

  sub_1CFBDB620(v6, v10);
  sub_1CFC9BF28();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v10, 1, v13) == 1)
  {
    result = sub_1CFBDB690(v10);
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    *(a1 + 24) = v13;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a1);
    return (*(v14 + 32))(boxed_opaque_existential_0Tm, v10, v13);
  }

  return result;
}

id sub_1CFBDB3B0()
{
  v1 = v0;
  v2 = sub_1CFC9BF28();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = [objc_allocWithZone(MEMORY[0x1E696ECA0]) init];
  v10 = [v1 tuConversationLink];
  v11 = [v10 URL];

  if (v11)
  {
    sub_1CFC9BEF8();

    v11 = sub_1CFC9BEE8();
    (*(v3 + 8))(v8, v2);
  }

  [v9 setOriginalURL_];

  v12 = [v1 tuConversationLink];
  v13 = [v12 URL];

  if (v13)
  {
    sub_1CFC9BEF8();

    v13 = sub_1CFC9BEE8();
    (*(v3 + 8))(v5, v2);
  }

  [v9 setURL_];

  v14 = [objc_allocWithZone(MEMORY[0x1E696EC50]) init];
  v15 = [v1 title];
  if (v15)
  {
    v16 = v15;
    [v14 setTitle_];
  }

  [v9 setSpecialization_];

  return v9;
}

uint64_t sub_1CFBDB620(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFAB0, &qword_1CFCA4DA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFBDB690(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFAB0, &qword_1CFCA4DA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1CFBDB6F8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC10CallsAppUI22SmartActionsBannerView_banner;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E6999338]) init];
  *&v4[OBJC_IVAR____TtC10CallsAppUI22SmartActionsBannerView_model] = 0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for SmartActionsBannerView();
  v10 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1CFBDB8AC(0);
  v11 = OBJC_IVAR____TtC10CallsAppUI22SmartActionsBannerView_banner;
  [v10 addSubview_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v10[v11] setTranslatesAutoresizingMaskIntoConstraints_];

  return v10;
}

id sub_1CFBDB8AC(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10CallsAppUI22SmartActionsBannerView_banner;
  v5 = *&v1[OBJC_IVAR____TtC10CallsAppUI22SmartActionsBannerView_banner];
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = v5;
  v9 = [v7 bundleForClass_];
  sub_1CFC9BE28();

  v10 = sub_1CFC9F728();

  [v8 setTitle_];

  if (a1)
  {
    *&v2[OBJC_IVAR____TtC10CallsAppUI22SmartActionsBannerView_model] = a1;
    swift_retain_n();

    v11 = *&v2[v4];
    swift_getKeyPath();
    aBlock[0] = a1;
    sub_1CFBDBFD8();
    v12 = v11;
    sub_1CFC9C158();

    v13 = sub_1CFC9F728();

    [v12 setSubtitle_];
  }

  else
  {
    v14 = *&v2[v4];
    v15 = sub_1CFC9F728();
    [v14 setSubtitle_];
  }

  [*&v2[v4] setAccessoryType_];
  [*&v2[v4] setActionButtonType_];
  v16 = *&v2[v4];
  v17 = sub_1CFC9F728();
  [v16 setActionTitle_];

  v18 = *&v2[v4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1CFCA2540;
  v20 = v18;

  v21 = sub_1CFC9F728();
  v22 = [objc_opt_self() _systemImageNamed_];

  v23 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  v24 = [objc_opt_self() blueColor];
  [v23 setTintColor_];

  [v23 setContentMode_];

  *(v19 + 32) = v23;
  sub_1CFBDBF84();
  v25 = sub_1CFC9F898();

  [v20 setImageSGViews_];

  v26 = *&v2[v4];
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = v26;

  v29 = sub_1CFC9F728();
  aBlock[4] = sub_1CFBDBFD0;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CFBDBE60;
  aBlock[3] = &block_descriptor_2;
  v30 = _Block_copy(aBlock);
  v31 = [objc_opt_self() actionWithTitle:v29 handler:v30];

  _Block_release(v30);

  [v28 setDismissAction_];

  [*&v2[v4] reload];
  [v2 addSubview_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v2[v4] setTranslatesAutoresizingMaskIntoConstraints_];
  return [v2 reloadInputViews];
}

void sub_1CFBDBDE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = OBJC_IVAR____TtC10CallsAppUI22SmartActionsBannerView_banner;
    v4 = Strong;
    [*(Strong + OBJC_IVAR____TtC10CallsAppUI22SmartActionsBannerView_banner) setHidden_];
    [*&v4[v3] reload];
  }
}

void sub_1CFBDBE60(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_1CFBDBEE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmartActionsBannerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1CFBDBF84()
{
  result = qword_1EE04CF30;
  if (!qword_1EE04CF30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE04CF30);
  }

  return result;
}

unint64_t sub_1CFBDBFD8()
{
  result = qword_1EE04D8E0;
  if (!qword_1EE04D8E0)
  {
    type metadata accessor for VoicemailSmartActionsBannerViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D8E0);
  }

  return result;
}

uint64_t sub_1CFBDC030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1CFBA29FC(a3, v25 - v10, &qword_1EC4ED950, &qword_1CFCA2710);
  v12 = sub_1CFC9F998();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1CFBC2FB0(v11, &qword_1EC4ED950, &qword_1CFCA2710);
  }

  else
  {
    sub_1CFC9F988();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1CFC9F938();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1CFC9F7A8() + 32;
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

      sub_1CFBC2FB0(a3, &qword_1EC4ED950, &qword_1CFCA2710);

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

  sub_1CFBC2FB0(a3, &qword_1EC4ED950, &qword_1CFCA2710);
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

uint64_t sub_1CFBDC330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1CFBA29FC(a3, v25 - v10, &qword_1EC4ED950, &qword_1CFCA2710);
  v12 = sub_1CFC9F998();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1CFBC2FB0(v11, &qword_1EC4ED950, &qword_1CFCA2710);
  }

  else
  {
    sub_1CFC9F988();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1CFC9F938();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1CFC9F7A8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EDA40, &qword_1CFCA2CB8);
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

      sub_1CFBC2FB0(a3, &qword_1EC4ED950, &qword_1CFCA2710);

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

  sub_1CFBC2FB0(a3, &qword_1EC4ED950, &qword_1CFCA2710);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EDA40, &qword_1CFCA2CB8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1CFBDC644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1CFBA29FC(a3, v25 - v10, &qword_1EC4ED950, &qword_1CFCA2710);
  v12 = sub_1CFC9F998();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1CFBC2FB0(v11, &qword_1EC4ED950, &qword_1CFCA2710);
  }

  else
  {
    sub_1CFC9F988();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1CFC9F938();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a3;
      v19 = sub_1CFC9F7A8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_1CFBA2D80(0, &qword_1EE04CF78, 0x1E69D8AF8);

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

      sub_1CFBC2FB0(v25[0], &qword_1EC4ED950, &qword_1CFCA2710);

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

  sub_1CFBC2FB0(a3, &qword_1EC4ED950, &qword_1CFCA2710);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  sub_1CFBA2D80(0, &qword_1EE04CF78, 0x1E69D8AF8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

CallsAppUI::AppType_optional __swiftcall AppType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v5 = rawValue._countAndFlagsBits == 0x656D695465636146 && rawValue._object == 0xE800000000000000;
  if (v5 || (sub_1CFCA02B8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x656E6F6850 && object == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1CFCA02B8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t AppType.init(communicationDetailsAppType:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1CFC9CFF8();
  v5 = *(v4 - 8);
  result = (*(v5 + 88))(a1, v4);
  if (result == *MEMORY[0x1E6995BF0])
  {
    v7 = 0;
  }

  else if (result == *MEMORY[0x1E6995BE8])
  {
    v7 = 1;
  }

  else
  {
    result = (*(v5 + 8))(a1, v4);
    v7 = 2;
  }

  *a2 = v7;
  return result;
}

uint64_t AppType.rawValue.getter()
{
  if (*v0)
  {
    return 0x656E6F6850;
  }

  else
  {
    return 0x656D695465636146;
  }
}

uint64_t sub_1CFBDCB6C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656E6F6850;
  }

  else
  {
    v3 = 0x656D695465636146;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x656E6F6850;
  }

  else
  {
    v5 = 0x656D695465636146;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1CFCA02B8();
  }

  return v8 & 1;
}

uint64_t sub_1CFBDCC10()
{
  sub_1CFCA0338();
  sub_1CFC9F7C8();

  return sub_1CFCA0378();
}

double sub_1CFBDCC90(uint64_t a1)
{
  sub_1CFC9F7C8();

  return result;
}

uint64_t sub_1CFBDCCFC(uint64_t a1)
{
  sub_1CFCA0338();
  sub_1CFC9F7C8();

  return sub_1CFCA0378();
}

void sub_1CFBDCD84(uint64_t *a1@<X8>)
{
  v2 = 0x656D695465636146;
  if (*v1)
  {
    v2 = 0x656E6F6850;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1CFBDCDC0()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___carrierVoiceSpamReportHelper;
  if (*(v0 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___carrierVoiceSpamReportHelper))
  {
    v2 = *(v0 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___carrierVoiceSpamReportHelper);
  }

  else
  {
    v3 = v0;
    sub_1CFC9D238();
    sub_1CFC9D228();
    sub_1CFC9D278();
    swift_allocObject();
    v2 = sub_1CFC9D248();
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_1CFBDCE68()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___spamReportManager;
  v2 = *(v0 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___spamReportManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___spamReportManager);
  }

  else
  {
    v4 = v0;
    sub_1CFC9CB08();
    v5 = sub_1CFC9CAF8();
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1CFBDCED8()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___shareButton;
  v2 = *(v0 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___shareButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___shareButton);
  }

  else
  {
    v4 = sub_1CFBDCF3C(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_1CFBDCF3C(uint64_t a1)
{
  v2 = sub_1CFC9FE58();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v16 - v7;
  type metadata accessor for SymbolScale(0);
  sub_1CFC9CD28();
  v9 = [objc_opt_self() configurationWithScale_];
  sub_1CFC9CD28();
  v10 = sub_1CFC9F728();
  v11 = [objc_opt_self() systemImageNamed_];

  sub_1CFC9FE38();
  v12 = v9;
  sub_1CFC9FE08();
  sub_1CFC9FE28();
  sub_1CFBA2D80(0, &qword_1EE04CEF0, 0x1E69DC738);
  (*(v3 + 16))(v5, v8, v2);
  v13 = sub_1CFC9FE68();
  v14 = [objc_opt_self() labelColor];
  [v13 setTintColor_];

  [v13 addTarget:a1 action:sel_shareMessage forControlEvents:64];
  [v13 setPreferredBehavioralStyle_];

  (*(v3 + 8))(v8, v2);
  return v13;
}

uint64_t sub_1CFBDD32C@<X0>(uint64_t a1@<X8>)
{
  sub_1CFC9FE18();
  v2 = sub_1CFC9FE58();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_1CFBDD39C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CFC9FE58();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

unint64_t VoicemailDetailViewController.__allocating_init(item:appType:deleteAction:callbackAction:contactDetailViewController:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v34 = v9;
  v16 = objc_allocWithZone(v9);
  v17 = *a2;
  v16[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_playMessageOnAppear] = 0;
  v18 = OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_smartActionsViewModel;
  type metadata accessor for VoicemailSmartActionsBannerViewModel(0);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0xE000000000000000;
  v20 = MEMORY[0x1E69E7CC0];
  *(v19 + 32) = sub_1CFBE54FC(MEMORY[0x1E69E7CC0]);
  *(v19 + 40) = sub_1CFBE56E8(v20);
  *(v19 + 48) = 0;
  sub_1CFC9C188();
  *&v16[v18] = v19;
  *&v16[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_viewModel] = 0;
  *&v16[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_detailViewContainer] = 0;
  *&v16[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_smartActionDataItems] = v20;
  *&v16[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___carrierVoiceSpamReportHelper] = 0;
  *&v16[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___spamReportManager] = 0;
  *&v16[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___shareButton] = 0;
  v21 = OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_item;
  v22 = sub_1CFC9C448();
  v23 = *(v22 - 8);
  (*(v23 + 16))(&v16[v21], a1, v22);
  v16[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_appType] = v17;
  v24 = &v16[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_deleteAction];
  *v24 = a3;
  v24[1] = a4;
  v25 = &v16[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_callbackAction];
  *v25 = a5;
  v25[1] = a6;
  v26 = &v16[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_contactDetailViewController];
  *v26 = a7;
  v26[1] = a8;

  result = sub_1CFC9C428();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    v29 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
    goto LABEL_9;
  }

  v30 = result;
  v31 = sub_1CFC9FFD8();
  result = v30;
  if (!v31)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x1D3872640](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(result + 32);
LABEL_6:
    v29 = v28;

LABEL_9:
    *&v16[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_contactForView] = v29;
    v37.receiver = v16;
    v37.super_class = v34;
    v32 = objc_msgSendSuper2(&v37, sel_initWithNibName_bundle_, 0, 0);
    v32[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_playMessageOnAppear] = 0;
    v33 = v32;
    sub_1CFBDDA1C();

    (*(v23 + 8))(a1, v22);
    return v33;
  }

  __break(1u);
  return result;
}

unint64_t VoicemailDetailViewController.init(item:appType:deleteAction:callbackAction:contactDetailViewController:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  ObjectType = swift_getObjectType();
  v16 = *a2;
  v9[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_playMessageOnAppear] = 0;
  v17 = OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_smartActionsViewModel;
  type metadata accessor for VoicemailSmartActionsBannerViewModel(0);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0xE000000000000000;
  v19 = MEMORY[0x1E69E7CC0];
  *(v18 + 32) = sub_1CFBE54FC(MEMORY[0x1E69E7CC0]);
  *(v18 + 40) = sub_1CFBE56E8(v19);
  *(v18 + 48) = 0;
  sub_1CFC9C188();
  *&v9[v17] = v18;
  *&v9[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_viewModel] = 0;
  *&v9[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_detailViewContainer] = 0;
  *&v9[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_smartActionDataItems] = v19;
  *&v9[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___carrierVoiceSpamReportHelper] = 0;
  *&v9[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___spamReportManager] = 0;
  *&v9[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___shareButton] = 0;
  v20 = OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_item;
  v21 = sub_1CFC9C448();
  v22 = *(v21 - 8);
  (*(v22 + 16))(&v9[v20], a1, v21);
  v9[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_appType] = v16;
  v23 = &v9[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_deleteAction];
  *v23 = a3;
  v23[1] = a4;
  v24 = &v9[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_callbackAction];
  *v24 = a5;
  v24[1] = a6;
  v25 = &v9[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_contactDetailViewController];
  *v25 = a7;
  v25[1] = a8;

  result = sub_1CFC9C428();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    v28 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
    goto LABEL_9;
  }

  v29 = result;
  v30 = sub_1CFC9FFD8();
  result = v29;
  if (!v30)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v27 = MEMORY[0x1D3872640](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = *(result + 32);
LABEL_6:
    v28 = v27;

LABEL_9:
    *&v9[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_contactForView] = v28;
    v36.receiver = v9;
    v36.super_class = ObjectType;
    v31 = objc_msgSendSuper2(&v36, sel_initWithNibName_bundle_, 0, 0);
    v31[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_playMessageOnAppear] = 0;
    v32 = v31;
    sub_1CFBDDA1C();

    (*(v22 + 8))(a1, v21);
    return v32;
  }

  __break(1u);
  return result;
}

void sub_1CFBDDA1C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v16 - v2;
  v4 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v5 = sub_1CFC9C208();
  v6 = [v4 smartVoicemailActionsEnabled];

  if (v6)
  {
    if (v5)
    {
      v7 = sub_1CFC9F998();
      v8 = *(*(v7 - 8) + 56);
      v8(v3, 1, 1, v7);
      sub_1CFC9F968();
      v9 = v0;
      v10 = sub_1CFC9F958();
      v11 = swift_allocObject();
      v12 = MEMORY[0x1E69E85E0];
      v11[2] = v10;
      v11[3] = v12;
      v11[4] = v9;
      sub_1CFBDC030(0, 0, v3, &unk_1CFCA2E58, v11);

      v8(v3, 1, 1, v7);
      v13 = v9;
      v14 = sub_1CFC9F958();
      v15 = swift_allocObject();
      v15[2] = v14;
      v15[3] = v12;
      v15[4] = v13;
      sub_1CFBDC030(0, 0, v3, &unk_1CFCA2E68, v15);
    }
  }
}

BOOL sub_1CFBDDC38()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_contactForView;
  v2 = [*(v0 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_contactForView) givenName];
  v3 = sub_1CFC9F768();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    return 0;
  }

  v7 = [*(v0 + v1) organizationName];
  v8 = sub_1CFC9F768();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    return 0;
  }

  v13 = [*(v0 + v1) familyName];
  v14 = sub_1CFC9F768();
  v16 = v15;

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  return v17 == 0;
}

Swift::Void __swiftcall VoicemailDetailViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for VoicemailDetailContainerView(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v9 = &v35 - v8;
  v35.receiver = v1;
  v35.super_class = ObjectType;
  objc_msgSendSuper2(&v35, sel_viewDidLoad, v7);
  if (sub_1CFBDDC38())
  {
    v10 = sub_1CFC9C408();
    if (v10)
    {
      v11 = v10;
      v12 = sub_1CFC9D5F8();

      if (v12)
      {
        v13 = sub_1CFC9C778();

LABEL_13:
        v18 = *&v1[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_contactForView];
        *&v1[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_contactForView] = v13;

        goto LABEL_14;
      }
    }

    v14 = sub_1CFC9C428();
    if (v14 >> 62)
    {
      v16 = v14;
      v17 = sub_1CFC9FFD8();
      v14 = v16;
      if (v17)
      {
        goto LABEL_7;
      }
    }

    else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      if ((v14 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1D3872640](0, v14);
      }

      else
      {
        if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_23;
        }

        v15 = *(v14 + 32);
      }

      v13 = v15;

      goto LABEL_13;
    }

    v13 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
    goto LABEL_13;
  }

LABEL_14:
  *&v1[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_viewModel] = sub_1CFBDE120();

  sub_1CFBDE4AC();
  sub_1CFBDE77C(v9);
  sub_1CFBE57FC(v9, v5);
  v19 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED940, &qword_1CFCA2B30));
  v20 = sub_1CFC9E6C8();
  [v1 addChildViewController_];
  v21 = [v20 view];
  if (!v21)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v22 = v21;
  v23 = [v1 view];
  if (!v23)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v24 = v23;
  [v23 bounds];
  v26 = v25;

  v27 = [v1 view];
  if (!v27)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v28 = v27;
  [v27 bounds];
  v30 = v29;

  [v22 setFrame_];
  v31 = [v20 view];

  if (!v31)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v31 setAutoresizingMask_];

  v32 = [v1 view];
  if (!v32)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v33 = v32;
  v34 = [v20 view];

  if (v34)
  {
    [v33 addSubview_];

    [v20 didMoveToParentViewController_];

    sub_1CFBE5860(v9);
    return;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_1CFBDE120()
{
  v1 = sub_1CFC9C448();
  v2 = MEMORY[0x1EEE9AC00](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, v0 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_item, v2);
  v6 = sub_1CFBDDC38();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1CFC9D718();

  v11 = sub_1CFC9D708();
  type metadata accessor for VoicemailDetailContainerViewModel(0);
  swift_allocObject();
  v12 = sub_1CFC287E0(v4, v6, v11, &unk_1CFCA2E00, v7, sub_1CFBE6D2C, v8, sub_1CFBE6D34, v9, sub_1CFBE6D3C, v10);

  v13 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v14 = sub_1CFC9C208();
  v15 = [v13 smartVoicemailActionsEnabled];

  if (v15 && (v14 & 1) != 0)
  {
    if (*(v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__hasSmartActions) == 1)
    {
      *(v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__hasSmartActions) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v18[1] = v12;
      sub_1CFBE710C(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
      sub_1CFC9C148();
    }
  }

  return v12;
}

void sub_1CFBDE4AC()
{
  v1 = v0;
  v2 = sub_1CFC9D0E8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1CFBE0C18(&v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAA0, &unk_1CFCA2DC0));
  v5 = sub_1CFC9E108();
  v6 = objc_allocWithZone(sub_1CFC9D108());
  v7 = v5;
  v8 = sub_1CFC9D0F8();
  v9 = [v1 traitCollection];
  v10 = [v9 horizontalSizeClass];

  if (v10 == 2)
  {
    v11 = [objc_opt_self() currentDevice];
    v12 = [v11 userInterfaceIdiom];

    if (v12 != 6)
    {
      v13 = [v1 navigationItem];
      v14 = [v13 titleView];

      [v14 removeFromSuperview];
      v15 = [v1 navigationItem];
      [v15 setTitleView_];
    }
  }

  v16 = [v1 navigationItem];
  [v16 setTitleView_];

  v17 = [v1 navigationItem];
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass_];
  sub_1CFC9BE28();

  v20 = sub_1CFC9F728();

  [v17 setBackButtonTitle_];
}

void *sub_1CFBDE77C@<X0>(uint64_t a2@<X8>)
{

  v4 = sub_1CFBDCED8();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = *(v2 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_playMessageOnAppear);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  v7 = type metadata accessor for VoicemailDetailContainerView(0);
  type metadata accessor for VoicemailDetailContainerViewModel(0);
  sub_1CFBE710C(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);

  sub_1CFC9F418();
  type metadata accessor for VoicemailSmartActionsBannerViewModel(0);
  sub_1CFBE710C(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel, &protocol conformance descriptor for VoicemailSmartActionsBannerViewModel);
  sub_1CFC9F418();
  v8 = (a2 + v7[7]);
  *v8 = sub_1CFBE6BC4;
  v8[1] = v5;
  *(a2 + v7[8]) = v4;
  *(a2 + v7[9]) = v6;
  v9 = a2 + v7[10];
  result = sub_1CFC9F228();
  *v9 = v11;
  *(v9 + 8) = v12;
  return result;
}

Swift::Void __swiftcall VoicemailDetailViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v17.receiver = v2;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, sel_viewWillAppear_, a1);
  v4 = objc_opt_self();
  v5 = [v4 currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (!v6 || (v7 = [v4 currentDevice], v8 = objc_msgSend(v7, sel_userInterfaceIdiom), v7, v8 == 5))
  {
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED948, &unk_1CFCA2B38));
    v11 = sub_1CFC9E108();
    v12 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];

    [v12 setStyle_];
    v13 = [objc_opt_self() systemGreenColor];
    [v12 setTintColor_];

    v14 = [v2 navigationItem];
    [v14 setRightBarButtonItem:v12 animated:1];
  }

  v15 = [v2 navigationItem];
  [v15 setBackButtonDisplayMode_];

  v16 = [v2 navigationItem];
  [v16 setLargeTitleDisplayMode_];
}

uint64_t sub_1CFBDEC1C(uint64_t a1)
{
  v1[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v1[6] = swift_task_alloc();
  v1[7] = sub_1CFC9F968();
  v1[8] = sub_1CFC9F958();
  v3 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFBDECF0, v3, v2);
}

uint64_t sub_1CFBDECF0()
{
  v1 = *(v0 + 48);

  v2 = sub_1CFC9F998();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v5 = sub_1CFC9F958();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v3;

  sub_1CFBDC030(0, 0, v1, &unk_1CFCA2E48, v6);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1CFBDEE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_1CFC9F968();
  v4[6] = sub_1CFC9F958();
  v6 = sub_1CFC9F938();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CFBDEEF0, v6, v5);
}

uint64_t sub_1CFBDEEF0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v5 = (*(Strong + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_deleteAction) + **(Strong + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_deleteAction));
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_1CFBDF044;

    return v5();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1CFBDF044()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1CFBDF164, v3, v2);
}

uint64_t sub_1CFBDF164()
{
  v1 = *(v0 + 72);

  v2 = [v1 navigationController];
  v3 = *(v0 + 72);
  if (v2)
  {
    v4 = v2;
    v5 = [v2 popViewControllerAnimated_];

    v3 = v5;
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_1CFBDF220(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1CFBDF274();
  }
}

void *sub_1CFBDF274()
{
  v78 = *MEMORY[0x1E69E9840];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v69 = &v61 - v1;
  v2 = sub_1CFC9BEB8();
  v67 = *(v2 - 8);
  v68 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CFC9C008();
  v72 = *(v5 - 8);
  v73 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v61 - v9;
  v10 = sub_1CFC9BF28();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v61 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v61 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v74 = &v61 - v20;
  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v21 = sub_1CFC9D938();
  __swift_project_value_buffer(v21, qword_1EE052308);
  v22 = sub_1CFC9D918();
  v23 = sub_1CFC9FAF8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1CFB9F000, v22, v23, "Voicemail share button tapped", v24, 2u);
    MEMORY[0x1D3873280](v24, -1, -1);
  }

  result = sub_1CFC9C408();
  if (result)
  {
    v26 = result;
    v66 = v15;
    sub_1CFC9D5D8();

    v27 = v74;
    v64 = *(v11 + 32);
    v65 = v11 + 32;
    v64(v74, v18, v10);
    v28 = sub_1CFC9C408();
    if (v28)
    {
      v29 = v28;
      sub_1CFC9D598();

      (*(v72 + 32))(v71, v7, v73);
      v30 = objc_allocWithZone(MEMORY[0x1E6988168]);
      v31 = sub_1CFC9BEE8();
      v32 = [v30 initWithURL:v31 options:0];

      v33 = *MEMORY[0x1E69872D0];
      v34 = objc_allocWithZone(MEMORY[0x1E6987E60]);
      v63 = v32;
      v62 = [v34 initWithAsset:v32 presetName:v33];
      v76 = 0;
      v77 = 0xE000000000000000;
      sub_1CFCA00D8();

      v76 = 0x69616D6563696F76;
      v77 = 0xEA00000000002D6CLL;
      sub_1CFBE710C(&unk_1EC4EDA68, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v35 = v10;
      v36 = sub_1CFCA0288();
      MEMORY[0x1D3871D30](v36);

      MEMORY[0x1D3871D30](1630825774, 0xE400000000000000);
      v37 = v76;
      v38 = v77;
      v39 = v70;
      sub_1CFC9BED8();
      v76 = v37;
      v77 = v38;
      v41 = v67;
      v40 = v68;
      (*(v67 + 104))(v4, *MEMORY[0x1E6968F70], v68);
      sub_1CFBB4460();
      v42 = v66;
      sub_1CFC9BF18();
      (*(v41 + 8))(v4, v40);
      v67 = *(v11 + 8);
      v68 = v11 + 8;
      (v67)(v39, v35);

      v43 = [objc_opt_self() defaultManager];
      v44 = v42;
      v45 = sub_1CFC9BEE8();
      v76 = 0;
      LOBYTE(v39) = [v43 removeItemAtURL:v45 error:&v76];

      if (v39)
      {
        v46 = v76;
      }

      else
      {
        v47 = v76;
        v48 = sub_1CFC9BE88();

        swift_willThrow();
      }

      v49 = sub_1CFC9F998();
      v50 = v69;
      (*(*(v49 - 8) + 56))(v69, 1, 1, v49);
      v51 = v70;
      (*(v11 + 16))(v70, v42, v35);
      sub_1CFC9F968();
      v52 = v62;
      v61 = v62;
      v53 = v75;
      v54 = sub_1CFC9F958();
      v55 = (*(v11 + 80) + 40) & ~*(v11 + 80);
      v56 = v35;
      v57 = (v12 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
      v58 = swift_allocObject();
      v59 = MEMORY[0x1E69E85E0];
      *(v58 + 2) = v54;
      *(v58 + 3) = v59;
      *(v58 + 4) = v52;
      v64(&v58[v55], v51, v56);
      *&v58[v57] = v53;
      sub_1CFBDC030(0, 0, v50, &unk_1CFCA2D00, v58);

      v60 = v67;
      (v67)(v44, v56);
      (*(v72 + 8))(v71, v73);
      return v60(v74, v56);
    }

    else
    {
      return (*(v11 + 8))(v27, v10);
    }
  }

  return result;
}

void sub_1CFBDFA58(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_1CFC9F998();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    sub_1CFC9F968();
    v7 = v5;
    v8 = sub_1CFC9F958();
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E85E0];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v7;
    sub_1CFBDC030(0, 0, v3, &unk_1CFCA2E38, v9);
  }
}

void sub_1CFBDFBAC(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1CFBDFC08(a1 & 1);
  }
}

void sub_1CFBDFC08(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v43[-1] - v3;
  v5 = sub_1CFC9C318();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v43[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C3B8();
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 == *MEMORY[0x1E6993678])
  {
    (*(v6 + 96))(v8, v5);
    v10 = *v8;
    if (qword_1EE050010 != -1)
    {
      swift_once();
    }

    v11 = sub_1CFC9D938();
    __swift_project_value_buffer(v11, qword_1EE052308);
    v12 = v10;
    v13 = sub_1CFC9D918();
    v14 = sub_1CFC9FAC8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = v12;
      v17 = v12;
      _os_log_impl(&dword_1CFB9F000, v13, v14, "Reporting spam for message %@", v15, 0xCu);
      sub_1CFBC2FB0(v16, &qword_1EC4ED770, &qword_1CFCA2CF0);
      MEMORY[0x1D3873280](v16, -1, -1);
      MEMORY[0x1D3873280](v15, -1, -1);
    }

    if (sub_1CFC9D688() == 0xD00000000000003BLL && 0x80000001CFCAAB50 == v18)
    {
    }

    else
    {
      v20 = sub_1CFCA02B8();

      if ((v20 & 1) == 0)
      {
        sub_1CFBDCDC0();
        v44 = sub_1CFC9D698();
        v45 = sub_1CFBE710C(&qword_1EC4EDA60, MEMORY[0x1E699BEF8], MEMORY[0x1E699BEF0]);
        v43[0] = v12;
        v21 = v12;
        sub_1CFC9D258();

        goto LABEL_23;
      }
    }

    v35 = sub_1CFBDCE68();
    sub_1CFC9CAE8();

    if ((a1 & 1) == 0)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v9 != *MEMORY[0x1E6993658])
  {
    (*(v6 + 8))(v8, v5);
    if ((a1 & 1) == 0)
    {
      return;
    }

    goto LABEL_29;
  }

  (*(v6 + 96))(v8, v5);
  v23 = *v8;
  v22 = *(v8 + 1);
  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v24 = sub_1CFC9D938();
  __swift_project_value_buffer(v24, qword_1EE052308);
  v25 = v23;
  v26 = sub_1CFC9D918();
  v27 = sub_1CFC9FAC8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v25;
    *v29 = v25;
    v30 = v25;
    _os_log_impl(&dword_1CFB9F000, v26, v27, "Reporting spam for call %@", v28, 0xCu);
    sub_1CFBC2FB0(v29, &qword_1EC4ED770, &qword_1CFCA2CF0);
    MEMORY[0x1D3873280](v29, -1, -1);
    MEMORY[0x1D3873280](v28, -1, -1);
  }

  if (sub_1CFC9D688() == 0xD00000000000003BLL && 0x80000001CFCAAB50 == v31)
  {
  }

  else
  {
    v33 = sub_1CFCA02B8();

    if ((v33 & 1) == 0)
    {
      sub_1CFBDCDC0();
      v44 = sub_1CFBA2D80(0, &qword_1EC4EDA50, 0x1E6993590);
      v45 = MEMORY[0x1E69D8A20];
      v43[0] = v25;
      v34 = v25;
      sub_1CFC9D258();

LABEL_23:
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      if ((a1 & 1) == 0)
      {
        return;
      }

      goto LABEL_29;
    }
  }

  v41 = sub_1CFBDCE68();
  sub_1CFC9CAD8();

  if ((a1 & 1) == 0)
  {
    return;
  }

LABEL_29:
  v36 = sub_1CFC9F998();
  (*(*(v36 - 8) + 56))(v4, 1, 1, v36);
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1CFC9F968();

  v38 = sub_1CFC9F958();
  v39 = swift_allocObject();
  v40 = MEMORY[0x1E69E85E0];
  v39[2] = v38;
  v39[3] = v40;
  v39[4] = v37;

  sub_1CFBDC030(0, 0, v4, &unk_1CFCA2CE8, v39);
}

uint64_t sub_1CFBE028C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_1CFC9F998();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_1CFC9F968();

  v11 = sub_1CFC9F958();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v9;
  v12[5] = a1;
  v12[6] = a2;

  sub_1CFBDC030(0, 0, v7, &unk_1CFCA2D90, v12);
}

uint64_t sub_1CFBE0424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = sub_1CFC9C008();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  sub_1CFC9F968();
  v6[12] = sub_1CFC9F958();
  v9 = sub_1CFC9F938();
  v6[13] = v9;
  v6[14] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1CFBE051C, v9, v8);
}

uint64_t sub_1CFBE051C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v2 = Strong;
    sub_1CFC9C2E8();
    swift_allocObject();
    v0[16] = sub_1CFC9C2D8();
    v3 = *(v2 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_smartActionsViewModel);
    swift_getKeyPath();
    v0[5] = v3;
    sub_1CFBE710C(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel, &protocol conformance descriptor for VoicemailSmartActionsBannerViewModel);

    sub_1CFC9C158();

    v4 = *(v3 + 32);

    if (*(v4 + 16))
    {
      v5 = sub_1CFC94B54(v0[7], v0[8]);
      if (v6)
      {
        (*(v0[10] + 16))(v0[11], *(v4 + 56) + *(v0[10] + 72) * v5, v0[9]);

        v10 = swift_task_alloc();
        v0[17] = v10;
        *v10 = v0;
        v10[1] = sub_1CFBE0758;
        v5 = v0[11];
        v6 = 0;
        v7 = 0xE000000000000000;
        v8 = 0;
        v9 = 0xE000000000000000;

        return MEMORY[0x1EEDF2810](v5, v6, v7, v8, v9);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return MEMORY[0x1EEDF2810](v5, v6, v7, v8, v9);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1CFBE0758()
{
  v2 = *v1;
  v2[18] = v0;

  v3 = v2[11];
  v4 = v2[10];
  v5 = v2[9];
  if (v0)
  {
    (*(v4 + 8))(v2[11], v2[9]);

    v6 = v2[13];
    v7 = v2[14];
    v8 = sub_1CFBE0984;
  }

  else
  {

    (*(v4 + 8))(v3, v5);
    v6 = v2[13];
    v7 = v2[14];
    v8 = sub_1CFBE0914;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1CFBE0914()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1CFBE0984()
{

  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_1CFC9D938();
  __swift_project_value_buffer(v2, qword_1EE052308);
  v3 = v1;
  v4 = sub_1CFC9D918();
  v5 = sub_1CFC9FAD8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[18];
  v8 = v0[15];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1CFB9F000, v4, v5, "Process actions failed with error: %@", v9, 0xCu);
    sub_1CFBC2FB0(v10, &qword_1EC4ED770, &qword_1CFCA2CF0);
    MEMORY[0x1D3873280](v10, -1, -1);
    MEMORY[0x1D3873280](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1CFBE0C18@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = sub_1CFC9C448();
  v21 = *(v2 - 8);
  v22 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v20 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D0, &unk_1CFCA1FE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  sub_1CFBE0FA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1CFCA2540;
  v8 = *(v1 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_contactForView);
  *(v7 + 32) = v8;
  v9 = v8;
  sub_1CFBDDC38();
  v10 = OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_viewModel;
  if (*(v1 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_viewModel))
  {

    sub_1CFC20038();
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1CFC9D128();
  swift_allocObject();
  sub_1CFC9D118();
  if (*(v1 + v10) && (, sub_1CFC202E8(), , (v11 = *(v1 + v10)) != 0))
  {
    swift_getKeyPath();
    v24 = v11;
    sub_1CFBE710C(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);

    sub_1CFC9C158();

    v12 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__item;
    swift_beginAccess();
    v13 = v20;
    v14 = v21;
    v15 = v11 + v12;
    v16 = v22;
    (*(v21 + 16))(v20, v15, v22);

    sub_1CFC9C3A8();
    (*(v14 + 8))(v13, v16);
  }

  else
  {
    v17 = sub_1CFC9BFB8();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  }

  return sub_1CFC9D0D8();
}

uint64_t sub_1CFBE0FA4()
{
  if (sub_1CFBDDC38())
  {
    result = sub_1CFC9C3D8();
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v2 = sub_1CFC9C408();
    if (v2)
    {
      v3 = v2;
      v4 = sub_1CFC9D5F8();

      if (v4)
      {
        v5 = [v4 value];
        v6 = sub_1CFC9F768();

        return v6;
      }
    }
  }

  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v9 = sub_1CFC9BE28();

  return v9;
}

void sub_1CFBE111C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_contactDetailViewController);
    v4 = *(Strong + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_contactForView);
    v5 = v3();

    if (v5)
    {
      v6 = [v2 navigationController];
      if (v6)
      {
        v7 = v6;
        [v6 pushViewController:v5 animated:1];
      }

      v2 = v5;
    }
  }
}

Swift::Void __swiftcall VoicemailDetailViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  if ([v1 isMovingToParentViewController])
  {
    v4 = [v1 traitCollection];
    v5 = [v4 horizontalSizeClass];

    if (v5 == 2)
    {
      v6 = [objc_opt_self() currentDevice];
      v7 = [v6 userInterfaceIdiom];

      if (v7 != 6)
      {
        sub_1CFBDE4AC();
      }
    }
  }

  v8.receiver = v1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, sel_viewDidAppear_, a1);
}

Swift::Void __swiftcall VoicemailDetailViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewWillDisappear_, a1);
  v3 = objc_opt_self();
  v4 = [v3 currentDevice];
  [v4 setProximityMonitoringEnabled_];

  if ([v1 isMovingFromParentViewController])
  {
    v5 = [v3 currentDevice];
    v6 = [v5 userInterfaceIdiom];

    if (v6 != 6)
    {
      v7 = [v1 navigationItem];
      v8 = [v7 titleView];

      [v8 removeFromSuperview];
      v9 = [v1 navigationItem];
      [v9 setTitleView_];
    }
  }
}

char *sub_1CFBE14CC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *&result[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_callbackAction];
    v3 = result;

    v2();
  }

  return result;
}

uint64_t sub_1CFBE154C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = sub_1CFC9F638();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v6 = sub_1CFC9F658();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED570, &unk_1CFCA2470);
  v4[17] = swift_task_alloc();
  sub_1CFC9F968();
  v4[18] = sub_1CFC9F958();
  v8 = sub_1CFC9F938();
  v4[19] = v8;
  v4[20] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1CFBE16D4, v8, v7);
}

uint64_t sub_1CFBE16D4()
{
  v1 = v0[17];
  sub_1CFC9C338();
  v2 = sub_1CFC9C008();
  v0[21] = v2;
  v3 = *(v2 - 8);
  v0[22] = v3;
  result = (*(v3 + 48))(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = swift_task_alloc();
    v0[23] = v5;
    *v5 = v0;
    v5[1] = sub_1CFBE17FC;
    v6 = v0[17];

    return sub_1CFC8505C(v6);
  }

  return result;
}

uint64_t sub_1CFBE17FC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 136);
  *(*v1 + 192) = a1;

  (*(v3 + 8))(v5, v4);
  v6 = *(v2 + 160);
  v7 = *(v2 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1CFBE1988, v7, v6);
}

uint64_t sub_1CFBE1988()
{

  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v1 = sub_1CFC9D938();
  __swift_project_value_buffer(v1, qword_1EE052308);

  v2 = sub_1CFC9D918();
  v3 = sub_1CFC9FAC8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[24];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&dword_1CFB9F000, v2, v3, "Smart actions recieved count=%ld", v6, 0xCu);
    MEMORY[0x1D3873280](v6, -1, -1);
  }

  else
  {
  }

  v7 = *(v0[10] + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_smartActionsViewModel);
  v8 = *(v0[24] + 16);
  if ((*(v7 + 48) ^ (v8 != 0)))
  {
    v9 = v8 != 0;
    swift_getKeyPath();
    v10 = swift_task_alloc();
    *(v10 + 16) = v7;
    *(v10 + 24) = v9;
    v0[8] = v7;
    sub_1CFBE710C(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel, &protocol conformance descriptor for VoicemailSmartActionsBannerViewModel);

    sub_1CFC9C148();
  }

  else
  {
    *(v7 + 48) = v8 != 0;
  }

  v11 = v0[24];
  v12 = v0[16];
  v13 = v0[15];
  v24 = v0[14];
  v15 = v0[12];
  v14 = v0[13];
  v16 = v0[10];
  v17 = v0[11];
  sub_1CFBA2D80(0, &qword_1EE04FF80, 0x1E69E9610);
  v23 = sub_1CFC9FC28();
  v18 = swift_allocObject();
  *(v18 + 16) = v11;
  *(v18 + 24) = v16;
  v0[6] = sub_1CFBE7104;
  v0[7] = v18;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1CFC56F38;
  v0[5] = &block_descriptor_119;
  v19 = _Block_copy(v0 + 2);
  v20 = v16;
  sub_1CFC9F648();
  v0[9] = MEMORY[0x1E69E7CC0];
  sub_1CFBE710C(&qword_1EE04D130, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5B0, &unk_1CFCA24A0);
  sub_1CFBCCC94();
  sub_1CFC9FF58();
  MEMORY[0x1D3872170](0, v12, v14, v19);
  _Block_release(v19);

  (*(v15 + 8))(v14, v17);
  (*(v13 + 8))(v12, v24);

  v21 = v0[1];

  return v21();
}

uint64_t sub_1CFBE1DB4(uint64_t a1, uint64_t a2)
{
  v77 = a2;
  v81 = sub_1CFC9C008();
  v3 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v80 = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v73 = v66 - v6;
  v7 = sub_1CFC9C248();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E7CC0];
  v82 = sub_1CFBE56E8(MEMORY[0x1E69E7CC0]);
  v12 = sub_1CFBE54FC(v11);
  v13 = *(a1 + 16);
  if (!v13)
  {
LABEL_40:

    sub_1CFC2C1A8(v82);

    sub_1CFC2BED8(v12);
  }

  v15 = *(v8 + 16);
  v14 = v8 + 16;
  v71 = v3;
  v72 = v15;
  v16 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
  v75 = (v3 + 32);
  v76 = OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_smartActionsViewModel;
  v69 = (v14 - 8);
  v70 = v7;
  v17 = *(v14 + 56);
  v66[1] = v3 + 40;
  v67 = v17;
  v74 = v10;
  v68 = v14;
  while (1)
  {
    v78 = v16;
    v79 = v13;
    v72(v10);
    v19 = *(v77 + v76);
    swift_getKeyPath();
    v83 = v19;
    sub_1CFBE710C(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel, &protocol conformance descriptor for VoicemailSmartActionsBannerViewModel);

    sub_1CFC9C158();

    v21 = *(v19 + 16);
    v20 = *(v19 + 24);

    if (!v21 && v20 == 0xE000000000000000)
    {
    }

    else
    {
      v23 = sub_1CFCA02B8();

      if ((v23 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v24 = *(v77 + v76);

    v25 = sub_1CFC9C218();
    if (*(v25 + 16) && (v26 = sub_1CFC94B54(0x656C746974, 0xE500000000000000), (v27 & 1) != 0))
    {
      v28 = (*(v25 + 56) + 16 * v26);
      v29 = *v28;
      v30 = v28[1];

      v83 = v29;
      v84 = v30;
      sub_1CFBB4460();
      v31 = sub_1CFC9FED8();
      v33 = v32;
    }

    else
    {

      v31 = 0;
      v33 = 0xE000000000000000;
    }

    if (*(v24 + 16) == v31 && *(v24 + 24) == v33 || (sub_1CFCA02B8() & 1) != 0)
    {
      *(v24 + 16) = v31;
      *(v24 + 24) = v33;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v66[-4] = v24;
      v66[-3] = v31;
      v66[-2] = v33;
      v83 = v24;
      sub_1CFC9C148();
    }

LABEL_21:
    v35 = sub_1CFC9C228();
    v37 = sub_1CFC8551C(v35, v36);
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v44 = v39 ? v41 : 0;
    if (v39)
    {
      v45 = v37;
    }

    else
    {
      v43 = 0xE000000000000000;
      v45 = 0;
    }

    v46 = v39 ? v39 : 0xE000000000000000;

    v47 = v82;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = v47;
    sub_1CFBE516C(v44, v43, v45, v46, isUniquelyReferenced_nonNull_native);

    v82 = v83;
    v49 = v73;
    sub_1CFC9C238();
    v50 = *v75;
    (*v75)(v80, v49, v81);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v83 = v12;
    v52 = sub_1CFC94B54(v45, v46);
    v54 = v12[2];
    v55 = (v53 & 1) == 0;
    v56 = __OFADD__(v54, v55);
    v57 = v54 + v55;
    if (v56)
    {
      break;
    }

    v58 = v53;
    if (v12[3] < v57)
    {
      sub_1CFC7C288(v57, v51);
      v52 = sub_1CFC94B54(v45, v46);
      if ((v58 & 1) != (v59 & 1))
      {
        goto LABEL_43;
      }

LABEL_35:
      v60 = v71;
      if (v58)
      {
        goto LABEL_3;
      }

      goto LABEL_36;
    }

    if (v51)
    {
      goto LABEL_35;
    }

    v64 = v52;
    sub_1CFC7BA60();
    v52 = v64;
    v60 = v71;
    if (v58)
    {
LABEL_3:
      v18 = v52;

      v12 = v83;
      (*(v60 + 40))(*(v83 + 56) + *(v60 + 72) * v18, v80, v81);
      v10 = v74;
      (*v69)(v74, v70);
      goto LABEL_4;
    }

LABEL_36:
    v12 = v83;
    *(v83 + 8 * (v52 >> 6) + 64) |= 1 << v52;
    v61 = (v12[6] + 16 * v52);
    *v61 = v45;
    v61[1] = v46;
    v50((v12[7] + *(v60 + 72) * v52), v80, v81);
    v10 = v74;
    (*v69)(v74, v70);
    v62 = v12[2];
    v56 = __OFADD__(v62, 1);
    v63 = v62 + 1;
    if (v56)
    {
      goto LABEL_42;
    }

    v12[2] = v63;
LABEL_4:
    v16 = v78 + v67;
    v13 = v79 - 1;
    if (v79 == 1)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result = sub_1CFCA0308();
  __break(1u);
  return result;
}

uint64_t sub_1CFBE2490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED570, &unk_1CFCA2470);
  v4[3] = swift_task_alloc();
  v4[4] = swift_task_alloc();
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  sub_1CFC9F968();
  v4[7] = sub_1CFC9F958();
  v6 = sub_1CFC9F938();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CFBE2584, v6, v5);
}

uint64_t sub_1CFBE2584()
{
  v1 = v0[6];
  sub_1CFC9C338();
  v2 = sub_1CFC9C008();
  v0[10] = v2;
  v3 = *(v2 - 8);
  v0[11] = v3;
  result = (*(v3 + 48))(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = sub_1CFBE26AC;
    v6 = v0[6];

    return sub_1CFC8579C(v6);
  }

  return result;
}

uint64_t sub_1CFBE26AC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 48);
  *(*v1 + 104) = a1;

  (*(v3 + 8))(v5, v4);
  v6 = *(v2 + 72);
  v7 = *(v2 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1CFBE2838, v7, v6);
}

uint64_t sub_1CFBE2838()
{
  v1 = v0[13];
  v2 = v0[2];

  v3 = OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_smartActionDataItems;
  *(v2 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_smartActionDataItems) = v1;

  if (*(v2 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_viewModel))
  {
    v42 = *(v0[11] + 56);
    result = v42(v0[5], 1, 1, v0[10]);
    v5 = *(v2 + v3);
    if (v5 >> 62)
    {
      goto LABEL_29;
    }

    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      while (1)
      {
        if (v6 < 1)
        {
          __break(1u);
          return result;
        }

        v41 = v5 & 0xC000000000000001;
        v7 = v5;

        v8 = v7;
        v9 = 0;
        v10 = MEMORY[0x1E69E7CC0];
        v11 = MEMORY[0x1E69E7CC0];
        v39 = v6;
        v40 = v7;
        while (1)
        {
          if (v41)
          {
            v12 = MEMORY[0x1D3872640](v9, v8);
          }

          else
          {
            v12 = *(v8 + 8 * v9 + 32);
          }

          v13 = v12;
          v14 = sub_1CFC9C278();
          v16 = v15;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1CFC7B37C(0, v10[1].i64[0] + 1, 1, v10->i8);
          }

          v18 = v10[1].u64[0];
          v17 = v10[1].u64[1];
          if (v18 >= v17 >> 1)
          {
            v10 = sub_1CFC7B37C((v17 > 1), v18 + 1, 1, v10->i8);
          }

          v10[1].i64[0] = v18 + 1;
          v19 = &v10[v18];
          v19[2].i64[0] = v14;
          v19[2].i64[1] = v16;
          v20 = sub_1CFC9C268();
          if ((v20 & 0xC000000000000001) == 0)
          {
            break;
          }

          v21 = MEMORY[0x1D3872640](0, v20);
LABEL_16:
          v22 = v21;

          v23 = sub_1CFC9C298();
          v25 = v24;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_1CFC7B248(0, *(v11 + 2) + 1, 1, v11);
          }

          v27 = *(v11 + 2);
          v26 = *(v11 + 3);
          if (v27 >= v26 >> 1)
          {
            v11 = sub_1CFC7B248((v26 > 1), v27 + 1, 1, v11);
          }

          *(v11 + 2) = v27 + 1;
          v28 = &v11[16 * v27];
          *(v28 + 4) = v23;
          *(v28 + 5) = v25;
          v29 = sub_1CFC9C268();
          if ((v29 & 0xC000000000000001) != 0)
          {
            v30 = MEMORY[0x1D3872640](0, v29);
          }

          else
          {
            if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_28;
            }

            v30 = *(v29 + 32);
          }

          v31 = v30;
          ++v9;
          v32 = v0[10];
          v33 = v0[5];
          v34 = v0[3];

          sub_1CFC9C288();

          sub_1CFBC2FB0(v33, &qword_1EC4ED570, &unk_1CFCA2470);
          v42(v34, 0, 1, v32);
          sub_1CFBE7074(v34, v33);
          v8 = v40;
          if (v39 == v9)
          {

            goto LABEL_31;
          }
        }

        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        v35 = v5;
        result = sub_1CFC9FFD8();
        v5 = v35;
        v6 = result;
        if (!result)
        {
          goto LABEL_30;
        }
      }

      v21 = *(v20 + 32);
      goto LABEL_16;
    }

LABEL_30:

    v10 = MEMORY[0x1E69E7CC0];
    v11 = MEMORY[0x1E69E7CC0];
LABEL_31:
    v37 = v0[4];
    v36 = v0[5];
    sub_1CFC1E1DC(v10);
    sub_1CFC1E38C(v11);
    sub_1CFBA29FC(v36, v37, &qword_1EC4ED570, &unk_1CFCA2470);
    sub_1CFC1E4FC(v37);

    sub_1CFBC2FB0(v36, &qword_1EC4ED570, &unk_1CFCA2470);
  }

  v38 = v0[1];

  return v38();
}

uint64_t sub_1CFBE2C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v6[17] = swift_task_alloc();
  v7 = sub_1CFC9BF28();
  v6[18] = v7;
  v8 = *(v7 - 8);
  v6[19] = v8;
  v6[20] = *(v8 + 64);
  v6[21] = swift_task_alloc();
  v9 = sub_1CFC9C448();
  v6[22] = v9;
  v6[23] = *(v9 - 8);
  v6[24] = swift_task_alloc();
  v6[25] = sub_1CFC9F968();
  v6[26] = sub_1CFC9F958();
  v11 = sub_1CFC9F938();
  v6[27] = v11;
  v6[28] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1CFBE2DD4, v11, v10);
}

uint64_t sub_1CFBE2DD4(uint64_t a1)
{
  if (v1[14])
  {
    v2 = *MEMORY[0x1E6987478];
    v3 = sub_1CFC9F958();
    v1[29] = v3;
    v4 = swift_task_alloc();
    v1[30] = v4;
    *v4 = v1;
    v4[1] = sub_1CFBE32A8;
    v5 = v1[15];
    v6 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE68110](v5, v2, v3, v6);
  }

  else
  {

    v7 = v1[24];
    v8 = v1[22];
    v9 = v1[23];
    v10 = v1[21];
    v36 = v10;
    v11 = v1[19];
    v37 = v11;
    v34 = v1[18];
    v40 = v1[17];
    v41 = v1[16];
    v12 = v1[15];
    v39 = v12;
    v13 = *(v9 + 16);
    v13(v7, &v41[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_item], v8);
    v14 = *(v11 + 16);
    v14(v10, v12, v34);
    v38 = v14;
    v15 = v14;
    v35 = type metadata accessor for VoicemailActivtyItem(0);
    v16 = objc_allocWithZone(v35);
    v13(&v16[OBJC_IVAR____TtC10CallsAppUI20VoicemailActivtyItem_item], v7, v8);
    v15(&v16[OBJC_IVAR____TtC10CallsAppUI20VoicemailActivtyItem_messageURL], v10, v34);
    v1[11] = v16;
    v1[12] = v35;
    v17 = objc_msgSendSuper2((v1 + 11), sel_init);
    (*(v37 + 8))(v10, v34);
    (*(v9 + 8))(v7, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED590, &qword_1CFCA2488);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1CFCA1DD0;
    *(v18 + 56) = v35;
    *(v18 + 32) = v17;
    v19 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
    v20 = v17;
    v21 = sub_1CFC9F898();

    v22 = [v19 initWithActivityItems:v21 applicationActivities:0];

    v38(v36, v39, v34);
    v23 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v24 = swift_allocObject();
    (*(v37 + 32))(v24 + v23, v36, v34);
    v1[6] = sub_1CFBE69B4;
    v1[7] = v24;
    v1[2] = MEMORY[0x1E69E9820];
    v1[3] = 1107296256;
    v1[4] = sub_1CFBE3C54;
    v1[5] = &block_descriptor_3;
    v25 = _Block_copy(v1 + 2);

    [v22 setCompletionWithItemsHandler_];
    _Block_release(v25);
    v26 = sub_1CFC9F998();
    (*(*(v26 - 8) + 56))(v40, 1, 1, v26);
    v27 = v22;
    v28 = v41;
    v29 = sub_1CFC9F958();
    v30 = swift_allocObject();
    v31 = MEMORY[0x1E69E85E0];
    v30[2] = v29;
    v30[3] = v31;
    v30[4] = v27;
    v30[5] = v28;
    sub_1CFBDC030(0, 0, v40, &unk_1CFCA2D18, v30);

    v32 = v1[1];

    return v32();
  }
}

uint64_t sub_1CFBE32A8()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = *(v2 + 216);
    v4 = *(v2 + 224);
    v5 = sub_1CFBE37E0;
  }

  else
  {

    v3 = *(v2 + 216);
    v4 = *(v2 + 224);
    v5 = sub_1CFBE33C4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1CFBE33C4()
{

  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);
  v30 = v4;
  v5 = *(v0 + 152);
  v31 = v5;
  v28 = *(v0 + 144);
  v34 = *(v0 + 136);
  v35 = *(v0 + 128);
  v6 = *(v0 + 120);
  v33 = v6;
  v7 = *(v3 + 16);
  v7(v1, &v35[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_item], v2);
  v8 = *(v5 + 16);
  v8(v4, v6, v28);
  v32 = v8;
  v9 = v8;
  v29 = type metadata accessor for VoicemailActivtyItem(0);
  v10 = objc_allocWithZone(v29);
  v7(&v10[OBJC_IVAR____TtC10CallsAppUI20VoicemailActivtyItem_item], v1, v2);
  v9(&v10[OBJC_IVAR____TtC10CallsAppUI20VoicemailActivtyItem_messageURL], v4, v28);
  *(v0 + 88) = v10;
  *(v0 + 96) = v29;
  v11 = objc_msgSendSuper2((v0 + 88), sel_init);
  (*(v31 + 8))(v4, v28);
  (*(v3 + 8))(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED590, &qword_1CFCA2488);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1CFCA1DD0;
  *(v12 + 56) = v29;
  *(v12 + 32) = v11;
  v13 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
  v14 = v11;
  v15 = sub_1CFC9F898();

  v16 = [v13 initWithActivityItems:v15 applicationActivities:0];

  v32(v30, v33, v28);
  v17 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v18 = swift_allocObject();
  (*(v31 + 32))(v18 + v17, v30, v28);
  *(v0 + 48) = sub_1CFBE69B4;
  *(v0 + 56) = v18;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1CFBE3C54;
  *(v0 + 40) = &block_descriptor_3;
  v19 = _Block_copy((v0 + 16));

  [v16 setCompletionWithItemsHandler_];
  _Block_release(v19);
  v20 = sub_1CFC9F998();
  (*(*(v20 - 8) + 56))(v34, 1, 1, v20);
  v21 = v16;
  v22 = v35;
  v23 = sub_1CFC9F958();
  v24 = swift_allocObject();
  v25 = MEMORY[0x1E69E85E0];
  v24[2] = v23;
  v24[3] = v25;
  v24[4] = v21;
  v24[5] = v22;
  sub_1CFBDC030(0, 0, v34, &unk_1CFCA2D18, v24);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1CFBE37E0()
{
  v16 = v0;

  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 248);
  v2 = sub_1CFC9D938();
  __swift_project_value_buffer(v2, qword_1EE052308);
  v3 = v1;
  v4 = sub_1CFC9D918();
  v5 = sub_1CFC9FAF8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 248);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_1CFCA0318();
    v12 = sub_1CFBB531C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1CFB9F000, v4, v5, "Failed to export voicemail: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1D3873280](v9, -1, -1);
    MEMORY[0x1D3873280](v8, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13();
}

void sub_1CFBE39D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (qword_1EE050010 != -1)
    {
      swift_once();
    }

    v5 = sub_1CFC9D938();
    __swift_project_value_buffer(v5, qword_1EE052308);
    v6 = a4;
    oslog = sub_1CFC9D918();
    v7 = sub_1CFC9FAF8();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = a4;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_1CFB9F000, oslog, v7, "Share sheet completed with error: %@", v8, 0xCu);
      sub_1CFBC2FB0(v9, &qword_1EC4ED770, &qword_1CFCA2CF0);
      MEMORY[0x1D3873280](v9, -1, -1);
      MEMORY[0x1D3873280](v8, -1, -1);
    }
  }

  else
  {
    v12 = [objc_opt_self() defaultManager];
    v13 = sub_1CFC9BEE8();
    v20[0] = 0;
    v14 = [v12 removeItemAtURL:v13 error:v20];

    v15 = v20[0];
    if (v14)
    {

      v16 = v15;
    }

    else
    {
      v17 = v20[0];
      v18 = sub_1CFC9BE88();

      swift_willThrow();
    }
  }
}

double sub_1CFBE3C54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  if (a4)
  {
    v9 = sub_1CFC9F8A8();
  }

  else
  {
    v9 = 0;
  }

  v10 = a2;
  v11 = a5;
  v8(a2, a3, v9, a5);

  return result;
}

uint64_t sub_1CFBE3D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1CFC9F968();
  v5[4] = sub_1CFC9F958();
  v7 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFBE3DA8, v7, v6);
}

uint64_t sub_1CFBE3DA8()
{

  v1 = objc_opt_self();
  v2 = [v1 currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1 || (v4 = [v1 currentDevice], v5 = objc_msgSend(v4, sel_userInterfaceIdiom), v4, v5 == 5))
  {
    v6 = *(v0 + 16);
    [v6 setModalPresentationStyle_];
    v7 = [v6 popoverPresentationController];
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v12 = [v1 currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == 6)
  {
    v14 = *(v0 + 16);
    [v14 setModalPresentationStyle_];
    v7 = [v14 popoverPresentationController];
    if (v7)
    {
LABEL_4:
      v8 = v7;
      v9 = sub_1CFBDCED8();
      [v8 setSourceView_];
    }
  }

LABEL_5:
  [*(v0 + 24) presentViewController:*(v0 + 16) animated:1 completion:0];
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1CFBE3FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_1CFC9F968();
  v4[6] = sub_1CFC9F958();
  v6 = sub_1CFC9F938();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CFBE404C, v6, v5);
}

uint64_t sub_1CFBE404C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v5 = (*(Strong + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_deleteAction) + **(Strong + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_deleteAction));
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_1CFBE41A0;

    return v5();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1CFBE41A0()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1CFBE7180, v3, v2);
}

uint64_t sub_1CFBE4314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1CFC9F968();
  *(v4 + 24) = sub_1CFC9F958();
  v6 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFBE43AC, v6, v5);
}

uint64_t sub_1CFBE43AC()
{
  v1 = *(v0 + 16);

  v3 = sub_1CFBE44C8(v2);
  v4 = [objc_opt_self() viewControllerForNewContact_];
  [v4 setDelegate_];
  [v4 setAllowsEditing_];
  [v4 setAllowsActions_];
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  [v1 presentViewController:v5 animated:1 completion:0];

  v6 = *(v0 + 8);

  return v6();
}

unint64_t sub_1CFBE44C8(uint64_t a1)
{
  result = sub_1CFC9C428();
  if (result >> 62)
  {
    v4 = result;
    v5 = sub_1CFC9FFD8();
    result = v4;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_8:

    v3 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
    goto LABEL_9;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1D3872640](0, result);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v2 = *(result + 32);
  }

  v3 = v2;

LABEL_9:
  v6 = sub_1CFC9C408();
  if (v6)
  {
    v7 = v6;
    v8 = sub_1CFC9D5F8();
    if (v8)
    {
      v9 = v8;
      v10 = sub_1CFC9C778();

      v7 = v3;
      v3 = v10;
    }
  }

  return v3;
}

id VoicemailDetailViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1CFC9F728();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id VoicemailDetailViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall VoicemailDetailViewController.contactViewController(_:didCompleteWith:)(CNContactViewController *_, CNContact_optional didCompleteWith)
{
  isa = didCompleteWith.value.super.isa;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_1CFC9F998();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1CFC9F968();
  v8 = isa;
  v9 = v2;
  v10 = sub_1CFC9F958();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = isa;
  v11[5] = v9;
  sub_1CFBDC030(0, 0, v6, &unk_1CFCA2B50, v11);
}

uint64_t sub_1CFBE4948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1CFC9F968();
  v5[4] = sub_1CFC9F958();
  v7 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFBE49E0, v7, v6);
}

uint64_t sub_1CFBE49E0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  if (v1)
  {
    v3 = *(v0 + 16);
    v4 = *&v2[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_contactForView];
    *&v2[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_contactForView] = v3;
    v5 = v3;

    sub_1CFBDE4AC();
    v6 = [v2 presentedViewController];
    if (v6)
    {
      v7 = v6;
      [v6 dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {
    v8 = [*(v0 + 24) presentedViewController];
    if (!v8)
    {
      goto LABEL_7;
    }

    v5 = v8;
    [v8 dismissViewControllerAnimated:1 completion:0];
  }

LABEL_7:
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1CFBE4C44(uint64_t a1)
{
  result = sub_1CFC9C3D8();
  if (!v2)
  {
    v3 = sub_1CFC9C408();
    if (v3)
    {
      v4 = v3;
      v5 = sub_1CFC9D648();

      return v5;
    }

    else
    {
      type metadata accessor for BundleClass();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v7 = [objc_opt_self() bundleForClass_];
      v8 = sub_1CFC9BE28();

      return v8;
    }
  }

  return result;
}

uint64_t sub_1CFBE4D48@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10CallsAppUI20VoicemailActivtyItem_messageURL;
  v4 = sub_1CFC9BF28();
  a1[3] = v4;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a1);
  v6 = *(*(v4 - 8) + 16);

  return v6(boxed_opaque_existential_0Tm, v1 + v3, v4);
}

id VoicemailActivtyItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VoicemailActivtyItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoicemailActivtyItem(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1CFBE516C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1CFC94B54(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1CFC7C608(v18, a5 & 1);
      v13 = sub_1CFC94B54(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_1CFCA0308();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_1CFC7BCE0();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * v13);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;
}

uint64_t sub_1CFBE52F4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1CFBE53E8;

  return v5(v2 + 32);
}

uint64_t sub_1CFBE53E8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

unint64_t sub_1CFBE54FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAB0, &qword_1CFCA2ED8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAB8, &qword_1CFCA2EE0);
    v7 = sub_1CFCA0238();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1CFBA29FC(v9, v5, &qword_1EC4EDAB0, &qword_1CFCA2ED8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1CFC94B54(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1CFC9C008();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CFBE56E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAA8, &qword_1CFCA2ED0);
    v3 = sub_1CFCA0238();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1CFC94B54(v5, v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1CFBE57FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoicemailDetailContainerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFBE5860(uint64_t a1)
{
  v2 = type metadata accessor for VoicemailDetailContainerView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFBE58C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1CFBD4A14;

  return sub_1CFBE4948(a1, v4, v5, v7, v6);
}

void sub_1CFBE5984()
{
  *(v0 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_playMessageOnAppear) = 0;
  v1 = OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_smartActionsViewModel;
  type metadata accessor for VoicemailSmartActionsBannerViewModel(0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0xE000000000000000;
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 32) = sub_1CFBE54FC(MEMORY[0x1E69E7CC0]);
  *(v2 + 40) = sub_1CFBE56E8(v3);
  *(v2 + 48) = 0;
  sub_1CFC9C188();
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_viewModel) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_detailViewContainer) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_smartActionDataItems) = v3;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___carrierVoiceSpamReportHelper) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___spamReportManager) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___shareButton) = 0;
  sub_1CFCA01D8();
  __break(1u);
}

unint64_t sub_1CFBE5A9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EDAC0, &qword_1CFCA2EE8);
    v3 = sub_1CFCA0238();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1CFC94B54(v5, v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CFBE5BA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EDA88, &unk_1CFCA2D30);
    v3 = sub_1CFCA0238();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1CFC94BCC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CFBE5C7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDA78, &qword_1CFCA2D20);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDA80, &qword_1CFCA2D28);
    v7 = sub_1CFCA0238();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1CFBA29FC(v9, v5, &qword_1EC4EDA78, &qword_1CFCA2D20);
      result = sub_1CFBB9DA4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1CFC9CF08();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_1CFC9CEA8();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

id sub_1CFBE5E9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D0, &unk_1CFCA1FE0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v19 - v1;
  v3 = sub_1CFC9D7C8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDA98, &unk_1CFCA2D40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = [objc_allocWithZone(MEMORY[0x1E696EC58]) init];
  sub_1CFBE4C44(v11);
  v12 = sub_1CFC9F728();

  [v11 setName_];

  sub_1CFC9BEC8();
  sub_1CFC9D7B8();
  sub_1CFC9D7A8();
  sub_1CFBA29FC(v10, v7, &qword_1EC4EDA98, &unk_1CFCA2D40);
  if ((*(v4 + 48))(v7, 1, v3) == 1)
  {
    sub_1CFBC2FB0(v7, &qword_1EC4EDA98, &unk_1CFCA2D40);
    v13 = 0;
  }

  else
  {
    sub_1CFC9D798();
    (*(v4 + 8))(v7, v3);
    v13 = sub_1CFC9F728();
  }

  [v11 setType_];

  sub_1CFC9C3A8();
  v14 = sub_1CFC9BFB8();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v2, 1, v14) != 1)
  {
    v16 = sub_1CFC9BF68();
    (*(v15 + 8))(v2, v14);
  }

  [v11 setCreationDate_];

  v17 = [objc_allocWithZone(MEMORY[0x1E696ECA0]) init];
  [v17 setSpecialization_];

  sub_1CFBC2FB0(v10, &qword_1EC4EDA98, &unk_1CFCA2D40);
  return v17;
}

unint64_t sub_1CFBE6270()
{
  result = qword_1EC4ED958;
  if (!qword_1EC4ED958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4ED958);
  }

  return result;
}

uint64_t sub_1CFBE6310(uint64_t a1)
{
  result = sub_1CFC9C448();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1CFBE6428(uint64_t a1)
{
  result = sub_1CFC9C448();
  if (v2 <= 0x3F)
  {
    result = sub_1CFC9BF28();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1CFBE65A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CFBD4A14;

  return sub_1CFBE52F4(a1, v4);
}

uint64_t sub_1CFBE6660(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CFBD4A14;

  return sub_1CFC68FBC(a1, v4);
}

uint64_t sub_1CFBE6718(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CFBD431C;

  return sub_1CFC68FBC(a1, v4);
}

uint64_t sub_1CFBE67D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD4A14;

  return sub_1CFBE3FB4(a1, v4, v5, v6);
}

uint64_t sub_1CFBE6884(uint64_t a1)
{
  v4 = *(sub_1CFC9BF28() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1CFBD4A14;

  return sub_1CFBE2C3C(a1, v6, v7, v8, v1 + v5, v9);
}

void sub_1CFBE69B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1CFC9BF28();

  sub_1CFBE39D4(a1, a2, a3, a4);
}

uint64_t sub_1CFBE6A4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1CFBD4A14;

  return sub_1CFBE3D10(a1, v4, v5, v7, v6);
}

uint64_t sub_1CFBE6B0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CFBD4A14;

  return sub_1CFC68DCC(a1, v4);
}

uint64_t sub_1CFBE6BCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CFBD431C;

  return sub_1CFBE0424(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1CFBE6C9C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1CFBD4A14;

  return sub_1CFBDEC1C(v0);
}

uint64_t sub_1CFBE6D64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD4A14;

  return sub_1CFBE4314(a1, v4, v5, v6);
}

uint64_t sub_1CFBE6E18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD4A14;

  return sub_1CFBDEE58(a1, v4, v5, v6);
}

uint64_t sub_1CFBE6ECC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD4A14;

  return sub_1CFBE154C(a1, v4, v5, v6);
}

uint64_t objectdestroy_92Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CFBE6FC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD4A14;

  return sub_1CFBE2490(a1, v4, v5, v6);
}

uint64_t sub_1CFBE7074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED570, &unk_1CFCA2470);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFBE710C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CFBE71A4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1CFC9D938();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1CFC9D928();
}

id PhonePaneViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1CFC9F728();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id PhonePaneViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3, __n128 a4)
{
  if (a2)
  {
    v6 = sub_1CFC9F728();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v4;
  v9.super_class = type metadata accessor for PhonePaneViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

id PhonePaneViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PhonePaneViewController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PhonePaneViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PhonePaneViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhonePaneViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CFBE7530@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CFC9E4E8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAD0, &qword_1CFCA2F20);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for PhonePanedView(0);
  sub_1CFBA29FC(v1 + *(v10 + 40), v9, &qword_1EC4EDAD0, &qword_1CFCA2F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1CFBCCE88(v9, a1, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  }

  sub_1CFC9FAE8();
  v12 = sub_1CFC9EB68();
  sub_1CFC9D858();

  sub_1CFC9E4D8();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t PhonePanedView.init(paneConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v3 = sub_1CFC9E0A8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - v7;
  v9 = sub_1CFC9F448();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_1CFC9F228();
  v16 = v37;
  *a2 = v36;
  *(a2 + 16) = v16;
  LOBYTE(v34) = 0;
  sub_1CFC9F228();
  v17 = *(&v36 + 1);
  *(a2 + 24) = v36;
  *(a2 + 32) = v17;
  v18 = type metadata accessor for PhonePanedView(0);
  (*(v10 + 104))(v15, *MEMORY[0x1E697D710], v9);
  (*(v10 + 16))(v12, v15, v9);
  sub_1CFC9F228();
  (*(v10 + 8))(v15, v9);
  v19 = a2 + v18[8];
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_1CFC9F228();
  v20 = v36;
  v21 = v37;
  *v19 = v36;
  *(v19 + 16) = v21;

  sub_1CFC9E098();
  (*(v4 + 16))(v32, v8, v3);
  sub_1CFC9F228();
  (*(v4 + 8))(v8, v3);
  v22 = v18[10];
  *(a2 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAD0, &qword_1CFCA2F20);
  swift_storeEnumTagMultiPayload();
  v23 = a2 + v18[11];
  LOBYTE(v34) = 0;
  sub_1CFC9F228();
  v24 = *(&v36 + 1);
  *v23 = v36;
  *(v23 + 8) = v24;
  v25 = (a2 + v18[7]);
  v26 = v33;
  v34 = v33;
  type metadata accessor for PhonePaneConfiguration(0);

  sub_1CFC9F228();
  v27 = *(&v36 + 1);
  *v25 = v36;
  v25[1] = v27;
  swift_getKeyPath();
  *&v36 = v26;
  sub_1CFBF4FC8(&qword_1EC4EDAE0, type metadata accessor for PhonePaneConfiguration, &protocol conformance descriptor for PhonePaneConfiguration);
  sub_1CFC9C158();

  v29 = *(v26 + 16);
  v28 = *(v26 + 24);
  v36 = v20;
  v37 = v21;
  v34 = v29;
  v35 = v28;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAE8, &qword_1CFCA2F50);
  sub_1CFC9F248();
}

__n128 PhonePanedView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAF0, &qword_1CFCA2F58);
  MEMORY[0x1EEE9AC00](v64);
  v62 = v56 - v2;
  v3 = type metadata accessor for PhonePanedView(0);
  v71 = *(v3 - 8);
  v72 = *(v71 + 64);
  v57 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1CFC9F448();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v7 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAF8, &qword_1CFCA2F60);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v56 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB00, &qword_1CFCA2F68);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v56 - v12;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB08, &qword_1CFCA2F70);
  v61 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v73 = v56 - v14;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB10, &qword_1CFCA2F78);
  v66 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v74 = v56 - v15;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB18, &qword_1CFCA2F80);
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v63 = v56 - v16;
  v17 = v1;
  sub_1CFBE84FC(v13);
  v18 = sub_1CFC9E1E8();
  v19 = sub_1CFC9EBB8();
  v20 = &v13[*(v11 + 36)];
  *v20 = v18;
  v20[8] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB20, &qword_1CFCA2F88);
  v70 = v17;
  sub_1CFC9F258();
  MEMORY[0x1D3871890](v8);
  sub_1CFBC2FB0(v10, &qword_1EC4EDAF8, &qword_1CFCA2F60);
  v56[0] = v5;
  sub_1CFBF4E04(v17, v5);
  v21 = *(v71 + 80);
  v71 = (v21 + 16) & ~v21;
  v56[1] = v21;
  v22 = swift_allocObject();
  sub_1CFBF4E68(v5, v22 + ((v21 + 16) & ~v21));
  v23 = sub_1CFBF6EDC(&qword_1EC4EDB30, &qword_1EC4EDB00, &qword_1CFCA2F68, sub_1CFBF4EE4);
  v24 = sub_1CFBF4FC8(&qword_1EC4EDB68, MEMORY[0x1E697D718], MEMORY[0x1E697D720]);
  v25 = v59;
  sub_1CFC9F088();

  v26 = v25;
  (*(v58 + 8))(v7, v25);
  sub_1CFBC2FB0(v13, &qword_1EC4EDB00, &qword_1CFCA2F68);
  v27 = v62;
  v28 = v70;
  sub_1CFBE7530(v62);
  v29 = v28;
  v30 = v56[0];
  sub_1CFBF4E04(v29, v56[0]);
  v31 = v71;
  v32 = swift_allocObject();
  v33 = v30;
  sub_1CFBF4E68(v30, v32 + v31);
  *&v76 = v11;
  *(&v76 + 1) = v26;
  *&v77 = v23;
  *(&v77 + 1) = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = sub_1CFBF534C();
  v36 = v73;
  v37 = v60;
  v38 = v64;
  sub_1CFC9F088();

  sub_1CFBC2FB0(v27, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  v39 = v37;
  (*(v61 + 8))(v36, v37);
  v40 = v70;
  v41 = (v70 + *(v57 + 36));
  v43 = *v41;
  v42 = v41[1];
  *&v76 = v43;
  *(&v76 + 1) = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB78, &qword_1CFCA2FB0);
  sub_1CFC9F238();
  v44 = v75;
  swift_getKeyPath();
  *&v76 = v44;
  sub_1CFBF4FC8(&qword_1EC4EDAE0, type metadata accessor for PhonePaneConfiguration, &protocol conformance descriptor for PhonePaneConfiguration);
  sub_1CFC9C158();

  v45 = v44[15];

  v75 = v45;
  sub_1CFBF4E04(v40, v33);
  v46 = v71;
  v47 = swift_allocObject();
  sub_1CFBF4E68(v33, v47 + v46);
  sub_1CFBF5480();
  *&v76 = v39;
  *(&v76 + 1) = v38;
  *&v77 = OpaqueTypeConformance2;
  *(&v77 + 1) = v35;
  swift_getOpaqueTypeConformance2();
  sub_1CFBF4FC8(&qword_1EC4EDB88, sub_1CFBF5480, MEMORY[0x1E69E81C0]);
  v48 = v63;
  v49 = v65;
  v50 = v74;
  sub_1CFC9F088();

  (*(v66 + 8))(v50, v49);
  sub_1CFC9F538();
  sub_1CFC9E268();
  v51 = v69;
  (*(v67 + 32))(v69, v48, v68);
  v52 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB90, &qword_1CFCA2FE0) + 36);
  v53 = v81;
  *(v52 + 64) = v80;
  *(v52 + 80) = v53;
  *(v52 + 96) = v82;
  v54 = v77;
  *v52 = v76;
  *(v52 + 16) = v54;
  result = v79;
  *(v52 + 32) = v78;
  *(v52 + 48) = result;
  return result;
}

uint64_t sub_1CFBE84FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB60, &qword_1CFCA2FA8);
  v29 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v28 = &v28 - v3;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDC30, &qword_1CFCA3510);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v28 - v4;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB50, &qword_1CFCA2FA0);
  MEMORY[0x1EEE9AC00](v31);
  v6 = &v28 - v5;
  v7 = type metadata accessor for PhonePanedView(0);
  v8 = &v1[*(v7 + 28)];
  v10 = *v8;
  v9 = *(v8 + 1);
  v35 = *v8;
  v36 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB78, &qword_1CFCA2FB0);
  sub_1CFC9F238();
  v11 = v37;
  swift_getKeyPath();
  v35 = v11;
  sub_1CFBF4FC8(&qword_1EC4EDAE0, type metadata accessor for PhonePaneConfiguration, &protocol conformance descriptor for PhonePaneConfiguration);
  sub_1CFC9C158();

  v12 = *(v11 + 184);

  swift_getKeyPath();
  v35 = v12;
  sub_1CFBF4FC8(&qword_1EC4EDC18, type metadata accessor for PhonePaneTabConfiguration, &protocol conformance descriptor for PhonePaneTabConfiguration);
  sub_1CFC9C158();

  v13 = *(v12 + 16);

  v14 = *(v13 + 16);

  if (v14)
  {
    v15 = &v2[*(v7 + 32)];
    v16 = *v15;
    v17 = *(v15 + 2);
    v37 = v16;
    v38 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAE8, &qword_1CFCA2F50);
    v18 = sub_1CFC9F258();
    MEMORY[0x1EEE9AC00](v18);
    *(&v28 - 2) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDC38, &qword_1CFCA3518);
    sub_1CFBA57C0(&qword_1EC4EDC40, &qword_1EC4EDC38, &qword_1CFCA3518, MEMORY[0x1E6981F48]);
    v19 = v28;
    sub_1CFC9F3F8();
    v20 = v29;
    v21 = v34;
    (*(v29 + 16))(v32, v19, v34);
    swift_storeEnumTagMultiPayload();
    sub_1CFBA57C0(&qword_1EC4EDB48, &qword_1EC4EDB50, &qword_1CFCA2FA0, MEMORY[0x1E6981810]);
    sub_1CFBA57C0(&qword_1EC4EDB58, &qword_1EC4EDB60, &qword_1CFCA2FA8, MEMORY[0x1E697D700]);
    sub_1CFC9E798();
    return (*(v20 + 8))(v19, v21);
  }

  else
  {
    sub_1CFBE9B94(v6);
    v35 = v10;
    v36 = v9;
    sub_1CFC9F238();
    v23 = v37;
    swift_getKeyPath();
    v35 = v23;
    sub_1CFC9C158();

    v25 = *(v23 + 16);
    v24 = *(v23 + 24);

    v26 = v32;
    v27 = &v6[*(v31 + 52)];
    *v27 = v25;
    *(v27 + 1) = v24;
    sub_1CFBA29FC(v6, v26, &qword_1EC4EDB50, &qword_1CFCA2FA0);
    swift_storeEnumTagMultiPayload();
    sub_1CFBA57C0(&qword_1EC4EDB48, &qword_1EC4EDB50, &qword_1CFCA2FA0, MEMORY[0x1E6981810]);
    sub_1CFBA57C0(&qword_1EC4EDB58, &qword_1EC4EDB60, &qword_1CFCA2FA8, MEMORY[0x1E697D700]);
    sub_1CFC9E798();
    return sub_1CFBC2FB0(v6, &qword_1EC4EDB50, &qword_1CFCA2FA0);
  }
}

uint64_t sub_1CFBE8ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PhonePanedView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB78, &qword_1CFCA2FB0);
  sub_1CFC9F238();
  swift_getKeyPath();
  sub_1CFBF4FC8(&qword_1EC4EDAE0, type metadata accessor for PhonePaneConfiguration, &protocol conformance descriptor for PhonePaneConfiguration);
  sub_1CFC9C158();

  swift_beginAccess();
  v3 = *(v7 + 192);
  v4 = *(v7 + 200);
  sub_1CFBB256C(v3, v4);

  if (v3)
  {
    v6 = sub_1CFC9F438();
    v3(v6 & 1);
    return sub_1CFBABFA0(v3, v4);
  }

  return result;
}

uint64_t sub_1CFBE8C14(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v78 = a1;
  v79 = a2;
  v4 = sub_1CFC9E0A8();
  v76 = *(v4 - 8);
  v77 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v69[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1CFC9E948();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v69[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAF0, &qword_1CFCA2F58);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v71 = &v69[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v69[-v13];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v69[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDC20, &qword_1CFCA3508);
  MEMORY[0x1EEE9AC00](v18);
  v75 = &v69[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v69[-v21];
  v74 = v23;
  v24 = *(v23 + 48);
  sub_1CFBA29FC(v78, &v69[-v21], &qword_1EC4EDAF0, &qword_1CFCA2F58);
  sub_1CFBA29FC(v79, &v22[v24], &qword_1EC4EDAF0, &qword_1CFCA2F58);
  v78 = v8;
  v25 = *(v8 + 48);
  if (v25(v22, 1, v7) == 1)
  {
    if (v25(&v22[v24], 1, v7) == 1)
    {
      return sub_1CFBC2FB0(v22, &qword_1EC4EDAF0, &qword_1CFCA2F58);
    }

    goto LABEL_6;
  }

  sub_1CFBA29FC(v22, v17, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  if (v25(&v22[v24], 1, v7) == 1)
  {
    (*(v78 + 8))(v17, v7);
LABEL_6:
    v72 = v25;
    sub_1CFBC2FB0(v22, &qword_1EC4EDC20, &qword_1CFCA3508);
    v27 = v77;
    goto LABEL_7;
  }

  v72 = v25;
  v35 = v78;
  v36 = v14;
  v37 = v73;
  (*(v78 + 32))(v73, &v22[v24], v7);
  sub_1CFBF4FC8(&qword_1EE04D278, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  v70 = sub_1CFC9F6F8();
  v38 = *(v35 + 8);
  v39 = v37;
  v14 = v36;
  v38(v39, v7);
  v38(v17, v7);
  result = sub_1CFBC2FB0(v22, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  v27 = v77;
  if (v70)
  {
    return result;
  }

LABEL_7:
  v28 = v78;
  (*(v78 + 104))(v14, *MEMORY[0x1E697FF40], v7);
  (*(v28 + 56))(v14, 0, 1, v7);
  v29 = v75;
  v30 = *(v74 + 48);
  sub_1CFBA29FC(v79, v75, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  sub_1CFBA29FC(v14, &v29[v30], &qword_1EC4EDAF0, &qword_1CFCA2F58);
  v31 = v72;
  if (v72(v29, 1, v7) != 1)
  {
    v79 = v14;
    v34 = v71;
    sub_1CFBA29FC(v29, v71, &qword_1EC4EDAF0, &qword_1CFCA2F58);
    if (v31(&v29[v30], 1, v7) != 1)
    {
      v40 = v78;
      v41 = v73;
      (*(v78 + 32))(v73, &v29[v30], v7);
      sub_1CFBF4FC8(&qword_1EE04D278, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
      v42 = v34;
      v43 = sub_1CFC9F6F8();
      v44 = *(v40 + 8);
      v44(v41, v7);
      sub_1CFBC2FB0(v79, &qword_1EC4EDAF0, &qword_1CFCA2F58);
      v44(v42, v7);
      v27 = v77;
      sub_1CFBC2FB0(v29, &qword_1EC4EDAF0, &qword_1CFCA2F58);
      v33 = v76;
      if ((v43 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    sub_1CFBC2FB0(v79, &qword_1EC4EDAF0, &qword_1CFCA2F58);
    (*(v78 + 8))(v34, v7);
    v33 = v76;
LABEL_12:
    sub_1CFBC2FB0(v29, &qword_1EC4EDC20, &qword_1CFCA3508);
    goto LABEL_17;
  }

  sub_1CFBC2FB0(v14, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  v32 = v31(&v29[v30], 1, v7);
  v33 = v76;
  if (v32 != 1)
  {
    goto LABEL_12;
  }

  sub_1CFBC2FB0(v29, &qword_1EC4EDAF0, &qword_1CFCA2F58);
LABEL_16:
  v45 = type metadata accessor for PhonePanedView(0);
  v46 = (a3 + *(v45 + 28));
  v48 = *v46;
  v47 = v46[1];
  *&v82 = v48;
  *(&v82 + 1) = v47;
  v49 = v48;
  v78 = v48;
  v79 = v45;
  v50 = v47;
  v75 = v47;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB78, &qword_1CFCA2FB0);
  sub_1CFC9F238();
  v73 = v80;
  *&v82 = v49;
  *(&v82 + 1) = v50;
  sub_1CFC9F238();
  v51 = v80;
  swift_getKeyPath();
  *&v82 = v51;
  v72 = sub_1CFBF4FC8(&qword_1EC4EDAE0, type metadata accessor for PhonePaneConfiguration, &protocol conformance descriptor for PhonePaneConfiguration);
  sub_1CFC9C158();

  v53 = v51[9];
  v52 = v51[10];
  v54 = v51[11];
  v55 = v51[12];
  v57 = v51[13];
  v56 = v51[14];
  v58 = v51[15];

  v59 = v58;

  *&v82 = v53;
  *(&v82 + 1) = v52;
  v83 = v54;
  v84 = v55;
  v85 = v57;
  v86 = v56;
  v87 = v59;
  v33 = v76;
  sub_1CFBF1648(&v82);

  *&v82 = v78;
  *(&v82 + 1) = v75;
  sub_1CFC9F238();
  v60 = v80;
  swift_getKeyPath();
  *&v82 = v60;
  sub_1CFC9C158();

  v62 = *(v60 + 2);
  v61 = *(v60 + 3);

  v63 = a3 + *(v79 + 8);
  v64 = *v63;
  v65 = *(v63 + 16);
  v82 = v64;
  v83 = v65;
  v80 = v62;
  v81 = v61;
  v27 = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAE8, &qword_1CFCA2F50);
  sub_1CFC9F248();
LABEL_17:
  type metadata accessor for PhonePanedView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB28, &qword_1CFCA2F90);
  sub_1CFC9F238();
  v66 = sub_1CFC9E088();
  v67 = *(v33 + 8);
  result = v67(v6, v27);
  if ((v66 & 1) == 0)
  {
    do
    {
      sub_1CFC9F238();
      sub_1CFC9E068();
      sub_1CFC9F248();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB28, &qword_1CFCA2F90);
      sub_1CFC9F238();
      v68 = sub_1CFC9E088();
      result = v67(v6, v27);
    }

    while ((v68 & 1) == 0);
  }

  return result;
}

uint64_t sub_1CFBE9594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1CFC9E0A8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v40[1] = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CFC9E948();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v40[0] = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDC20, &qword_1CFCA3508);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAF0, &qword_1CFCA2F58);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v42 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v40 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v40 - v19;
  v41 = a3;
  sub_1CFBE7530(v40 - v19);
  (*(v7 + 104))(v17, *MEMORY[0x1E697FF38], v6);
  (*(v7 + 56))(v17, 0, 1, v6);
  v21 = *(v10 + 56);
  sub_1CFBA29FC(v20, v12, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  sub_1CFBA29FC(v17, &v12[v21], &qword_1EC4EDAF0, &qword_1CFCA2F58);
  v22 = *(v7 + 48);
  if (v22(v12, 1, v6) != 1)
  {
    sub_1CFBA29FC(v12, v42, &qword_1EC4EDAF0, &qword_1CFCA2F58);
    if (v22(&v12[v21], 1, v6) != 1)
    {
      v24 = v40[0];
      (*(v7 + 32))(v40[0], &v12[v21], v6);
      sub_1CFBF4FC8(&qword_1EE04D278, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
      v25 = v42;
      v26 = sub_1CFC9F6F8();
      v27 = *(v7 + 8);
      v27(v24, v6);
      sub_1CFBC2FB0(v17, &qword_1EC4EDAF0, &qword_1CFCA2F58);
      sub_1CFBC2FB0(v20, &qword_1EC4EDAF0, &qword_1CFCA2F58);
      v27(v25, v6);
      result = sub_1CFBC2FB0(v12, &qword_1EC4EDAF0, &qword_1CFCA2F58);
      if ((v26 & 1) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

    sub_1CFBC2FB0(v17, &qword_1EC4EDAF0, &qword_1CFCA2F58);
    sub_1CFBC2FB0(v20, &qword_1EC4EDAF0, &qword_1CFCA2F58);
    (*(v7 + 8))(v42, v6);
    return sub_1CFBC2FB0(v12, &qword_1EC4EDC20, &qword_1CFCA3508);
  }

  sub_1CFBC2FB0(v17, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  sub_1CFBC2FB0(v20, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  if (v22(&v12[v21], 1, v6) != 1)
  {
    return sub_1CFBC2FB0(v12, &qword_1EC4EDC20, &qword_1CFCA3508);
  }

  sub_1CFBC2FB0(v12, &qword_1EC4EDAF0, &qword_1CFCA2F58);
LABEL_8:
  v28 = (v41 + *(type metadata accessor for PhonePanedView(0) + 28));
  v30 = *v28;
  v29 = v28[1];
  v43 = v30;
  v44 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB78, &qword_1CFCA2FB0);
  sub_1CFC9F238();
  v31 = v50;
  swift_getKeyPath();
  v43 = v31;
  sub_1CFBF4FC8(&qword_1EC4EDAE0, type metadata accessor for PhonePaneConfiguration, &protocol conformance descriptor for PhonePaneConfiguration);
  sub_1CFC9C158();

  v33 = v31[9];
  v32 = v31[10];
  v35 = v31[11];
  v34 = v31[12];
  v37 = v31[13];
  v36 = v31[14];
  v38 = v31[15];

  v39 = v38;

  v43 = v33;
  v44 = v32;
  v45 = v35;
  v46 = v34;
  v47 = v37;
  v48 = v36;
  v49 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB28, &qword_1CFCA2F90);
  sub_1CFC9F238();
  sub_1CFBF6410();
  sub_1CFC9E078();

  return sub_1CFC9F248();
}

uint64_t sub_1CFBE9B94@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDC48, &qword_1CFCA3520);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDC50, &qword_1CFCA3528);
  v4 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v6 = &v45 - v5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDC58, &qword_1CFCA3530);
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v45 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDC60, &qword_1CFCA3538);
  v8 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v10 = &v45 - v9;
  v11 = [objc_opt_self() currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if (v12 == 6)
  {
    v51 = &v45;
    MEMORY[0x1EEE9AC00](v13);
    v50 = &v45 - 4;
    *(&v45 - 2) = v2;
    MEMORY[0x1EEE9AC00](v14);
    v49 = &v45 - 4;
    *(&v45 - 2) = v2;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDCE8, &qword_1CFCA3588);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDCF0, &qword_1CFCA3590);
    v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EDCF8, &qword_1CFCA3598);
    v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EDD00, &qword_1CFCA35A0);
    v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EDD08, &qword_1CFCA35A8);
    v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EDD10, &qword_1CFCA35B0);
    v19 = sub_1CFBF6568();
    v20 = sub_1CFBA57C0(&qword_1EC4EDD40, &qword_1EC4EDD10, &qword_1CFCA35B0, MEMORY[0x1E697C5E0]);
    v57 = v17;
    v58 = v18;
    v59 = v19;
    v60 = v20;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v57 = v16;
    v58 = OpaqueTypeConformance2;
    v22 = swift_getOpaqueTypeConformance2();
    v57 = v15;
    v58 = v22;
    swift_getOpaqueTypeConformance2();
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EDD48, &qword_1CFCA35C8);
    v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EDCC0, &qword_1CFCA3580);
    v25 = MEMORY[0x1E697C1A8];
    v26 = sub_1CFBA57C0(&qword_1EC4EDD50, &qword_1EC4EDD48, &qword_1CFCA35C8, MEMORY[0x1E697C1A8]);
    v27 = sub_1CFBF6410();
    v28 = sub_1CFBA57C0(&qword_1EC4EDCC8, &qword_1EC4EDCC0, &qword_1CFCA3580, MEMORY[0x1E6981810]);
    v57 = v23;
    v58 = &type metadata for PaneContent;
    v59 = v24;
    v60 = v26;
    v61 = v27;
    v62 = v28;
    swift_getOpaqueTypeConformance2();
    sub_1CFC9E698();
    v29 = v54;
    (*(v8 + 16))(v53, v10, v54);
    swift_storeEnumTagMultiPayload();
    sub_1CFBA57C0(&qword_1EC4EDCD8, &qword_1EC4EDC60, &qword_1CFCA3538, MEMORY[0x1E697C598]);
    sub_1CFBA57C0(&qword_1EC4EDCE0, &qword_1EC4EDC50, &qword_1CFCA3528, v25);
    sub_1CFC9E798();
    return (*(v8 + 8))(v10, v29);
  }

  else
  {
    type metadata accessor for PhonePanedView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB28, &qword_1CFCA2F90);
    v31 = sub_1CFC9F258();
    v51 = &v45;
    MEMORY[0x1EEE9AC00](v31);
    v50 = &v45 - 4;
    *(&v45 - 2) = v2;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDC68, &qword_1CFCA3540);
    v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EDC70, &qword_1CFCA3548);
    v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EDC78, &qword_1CFCA3550);
    v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EDC80, &qword_1CFCA3558);
    v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EDC88, &qword_1CFCA3560);
    v33 = v4;
    v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EDC90, &qword_1CFCA3568);
    v35 = sub_1CFBF6474();
    v36 = sub_1CFBF6410();
    v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EDCC0, &qword_1CFCA3580);
    v38 = sub_1CFBA57C0(&qword_1EC4EDCC8, &qword_1EC4EDCC0, &qword_1CFCA3580, MEMORY[0x1E6981810]);
    v39 = sub_1CFBB4460();
    v57 = v37;
    v58 = MEMORY[0x1E69E6158];
    v59 = v38;
    v60 = v39;
    v40 = swift_getOpaqueTypeConformance2();
    v57 = v32;
    v58 = &type metadata for PaneContent;
    v59 = v34;
    v60 = v35;
    v61 = v36;
    v62 = v40;
    v41 = swift_getOpaqueTypeConformance2();
    v42 = sub_1CFBA57C0(&qword_1EC4EDCD0, &qword_1EC4EDC80, &qword_1CFCA3558, MEMORY[0x1E697C5E0]);
    v57 = v47;
    v58 = v46;
    v59 = v41;
    v60 = v42;
    v43 = swift_getOpaqueTypeConformance2();
    v57 = v48;
    v58 = v43;
    swift_getOpaqueTypeConformance2();
    sub_1CFC9E1D8();
    v44 = v55;
    (*(v33 + 16))(v53, v6, v55);
    swift_storeEnumTagMultiPayload();
    sub_1CFBA57C0(&qword_1EC4EDCD8, &qword_1EC4EDC60, &qword_1CFCA3538, MEMORY[0x1E697C598]);
    sub_1CFBA57C0(&qword_1EC4EDCE0, &qword_1EC4EDC50, &qword_1CFCA3528, MEMORY[0x1E697C1A8]);
    sub_1CFC9E798();
    return (*(v33 + 8))(v6, v44);
  }
}

uint64_t sub_1CFBEA460@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v100 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDF30, &qword_1CFCA3790);
  v101 = *(v3 - 8);
  v102 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v99 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v104 = &v78 - v6;
  v81 = sub_1CFC9E948();
  v82 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v78 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDC20, &qword_1CFCA3508) - 8;
  MEMORY[0x1EEE9AC00](v83);
  v79 = &v78 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAF0, &qword_1CFCA2F58);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v89 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v103 = (&v78 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v80 = &v78 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDF38, &qword_1CFCA3798);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v78 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED038, &qword_1CFCA37A0);
  v90 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v78 - v19;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDF40, &qword_1CFCA37A8);
  v91 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v22 = &v78 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDF48, &qword_1CFCA37B0);
  v97 = *(v23 - 8);
  v98 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v96 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v105 = &v78 - v26;
  sub_1CFBE9B94(v17);
  v106 = a1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED840, &qword_1CFCA29B0);
  v28 = sub_1CFBF6F68();
  v29 = sub_1CFBA57C0(&qword_1EE04D200, &qword_1EC4ED840, &qword_1CFCA29B0, MEMORY[0x1E697D658]);
  v92 = v15;
  v95 = v27;
  v85 = v28;
  v30 = v79;
  v94 = v29;
  sub_1CFC9F048();
  sub_1CFBC2FB0(v17, &qword_1EC4EDF38, &qword_1CFCA3798);
  v31 = (a1 + *(type metadata accessor for PhonePanedView(0) + 28));
  v33 = *v31;
  v32 = v31[1];
  v88 = v33;
  v107 = v33;
  v108 = v32;
  v87 = v32;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB78, &qword_1CFCA2FB0);
  sub_1CFC9F238();
  v34 = v111;
  swift_getKeyPath();
  v107 = v34;
  v84 = sub_1CFBF4FC8(&qword_1EC4EDAE0, type metadata accessor for PhonePaneConfiguration, &protocol conformance descriptor for PhonePaneConfiguration);
  sub_1CFC9C158();

  Kind = v34[1].Kind;
  Description = v34[1].Description;

  v37 = v90[2].Kind;
  v38 = v20;
  v39 = v80;
  v90 = v18;
  v40 = v18;
  v41 = v81;
  v37(v22, v38, v40);
  v42 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED040, "d") + 36)];
  *v42 = Kind;
  *(v42 + 1) = Description;
  v43 = v82;
  v42[16] = 1;
  sub_1CFBE7530(v39);
  v44 = v103;
  (*(v43 + 104))(v103, *MEMORY[0x1E697FF38], v41);
  (*(v43 + 56))(v44, 0, 1, v41);
  v45 = *(v83 + 56);
  sub_1CFBA29FC(v39, v30, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  sub_1CFBA29FC(v44, v30 + v45, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  v46 = *(v43 + 48);
  if (v46(v30, 1, v41) == 1)
  {
    sub_1CFBC2FB0(v44, &qword_1EC4EDAF0, &qword_1CFCA2F58);
    sub_1CFBC2FB0(v39, &qword_1EC4EDAF0, &qword_1CFCA2F58);
    if (v46(v30 + v45, 1, v41) == 1)
    {
      sub_1CFBC2FB0(v30, &qword_1EC4EDAF0, &qword_1CFCA2F58);
      v47 = 1;
      goto LABEL_10;
    }

LABEL_6:
    sub_1CFBC2FB0(v30, &qword_1EC4EDC20, &qword_1CFCA3508);
    v47 = 2;
    goto LABEL_10;
  }

  sub_1CFBA29FC(v30, v89, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  if (v46(v30 + v45, 1, v41) == 1)
  {
    sub_1CFBC2FB0(v103, &qword_1EC4EDAF0, &qword_1CFCA2F58);
    sub_1CFBC2FB0(v39, &qword_1EC4EDAF0, &qword_1CFCA2F58);
    (*(v43 + 8))(v89, v41);
    goto LABEL_6;
  }

  v48 = v78;
  (*(v43 + 32))(v78, v30 + v45, v41);
  sub_1CFBF4FC8(&qword_1EE04D278, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  v49 = v89;
  v50 = sub_1CFC9F6F8();
  v51 = *(v43 + 8);
  v51(v48, v41);
  sub_1CFBC2FB0(v103, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  sub_1CFBC2FB0(v39, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  v51(v49, v41);
  sub_1CFBC2FB0(v30, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  if (v50)
  {
    v47 = 1;
  }

  else
  {
    v47 = 2;
  }

LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDF58, &qword_1CFCA37B8);
  sub_1CFC9E258();
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1CFCA1DD0;
  sub_1CFC9E248();
  v53 = v94;
  v54 = v95;
  v107 = v92;
  v108 = v95;
  v109 = v85;
  v110 = v94;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v107 = v90;
  v108 = MEMORY[0x1E69E6158];
  v109 = OpaqueTypeConformance2;
  v110 = MEMORY[0x1E69E6168];
  v56 = swift_getOpaqueTypeConformance2();
  v57 = v93;
  MEMORY[0x1D38715A0](v47, v52, v93, v56);

  (*(v91 + 8))(v22, v57);
  v107 = v88;
  v108 = v87;
  sub_1CFC9F238();
  v58 = v111;
  swift_getKeyPath();
  v107 = v58;
  sub_1CFC9C158();

  v59 = v58[11].Description;

  swift_getKeyPath();
  v107 = v59;
  sub_1CFBF4FC8(&qword_1EC4EDC18, type metadata accessor for PhonePaneTabConfiguration, &protocol conformance descriptor for PhonePaneTabConfiguration);
  sub_1CFC9C158();

  v60 = v59[1].Kind;

  v111 = v60;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDF60, &qword_1CFCA37E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDF68, &qword_1CFCA37E8);
  sub_1CFBA57C0(&qword_1EC4EDF70, &qword_1EC4EDF60, &qword_1CFCA37E0, MEMORY[0x1E69E6338]);
  v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4ED048, &qword_1CFCA37F0);
  v62 = sub_1CFBC2DC4();
  v107 = &type metadata for PaneHostView;
  v108 = v54;
  v109 = v62;
  v110 = v53;
  v63 = swift_getOpaqueTypeConformance2();
  v107 = v61;
  v108 = MEMORY[0x1E69E6158];
  v109 = v63;
  v110 = MEMORY[0x1E69E6168];
  swift_getOpaqueTypeConformance2();
  v64 = v104;
  sub_1CFC9F3B8();
  v65 = v96;
  v66 = v97;
  v67 = *(v97 + 16);
  v68 = v98;
  v67(v96, v105, v98);
  v69 = v101;
  v103 = *(v101 + 16);
  v70 = v99;
  v71 = v64;
  v72 = v102;
  (v103)(v99, v71, v102);
  v73 = v100;
  v67(v100, v65, v68);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDF78, &qword_1CFCA37F8);
  (v103)(&v73[*(v74 + 48)], v70, v72);
  v75 = *(v69 + 8);
  v75(v104, v72);
  v76 = *(v66 + 8);
  v76(v105, v68);
  v75(v70, v72);
  return (v76)(v65, v68);
}

uint64_t sub_1CFBEB258(uint64_t a1)
{
  type metadata accessor for PhonePanedView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB78, &qword_1CFCA2FB0);
  sub_1CFC9F238();
  swift_getKeyPath();
  sub_1CFBF4FC8(&qword_1EC4EDAE0, type metadata accessor for PhonePaneConfiguration, &protocol conformance descriptor for PhonePaneConfiguration);
  sub_1CFC9C158();

  v1 = *(v4 + 64);

  v2 = [v1 title];

  if (v2)
  {
    sub_1CFC9F768();
  }

  sub_1CFC9F238();
  swift_getKeyPath();
  sub_1CFC9C158();

  sub_1CFBB4460();
  return sub_1CFC9F218();
}

uint64_t sub_1CFBEB434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED048, &qword_1CFCA37F0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-v6];
  v8 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v8;
  v16[2] = *(a1 + 32);
  v17 = *(a1 + 48);
  v14 = v16;
  v15 = v17;
  v9 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED840, &qword_1CFCA29B0);
  sub_1CFBC2DC4();
  sub_1CFBA57C0(&qword_1EE04D200, &qword_1EC4ED840, &qword_1CFCA29B0, MEMORY[0x1E697D658]);
  sub_1CFC9F048();

  v10 = v16[0];
  (*(v5 + 32))(a2, v7, v4);
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED050, &qword_1CFCA1E00) + 36);
  *v11 = v10;
  *(v11 + 16) = 1;
}

uint64_t sub_1CFBEB604(void *a1)
{
  sub_1CFBB4460();

  return sub_1CFC9F218();
}

uint64_t sub_1CFBEB698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v52 = a2;
  v3 = sub_1CFC9E538();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PhonePanedView(0);
  v44 = *(v5 - 8);
  v43 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDC88, &qword_1CFCA3560);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v38 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDC78, &qword_1CFCA3550);
  v11 = *(v10 - 8);
  v45 = v10;
  v46 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v38 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDC70, &qword_1CFCA3548);
  v14 = *(v13 - 8);
  v47 = v13;
  v48 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v41 = &v38 - v15;
  v53 = sub_1CFC9E588();
  v54 = 0x4030000000000000;
  LOBYTE(v55) = 0;
  sub_1CFBF6B54();
  *v9 = sub_1CFC9F588();
  sub_1CFBEBC48(a1, v9 + *(v7 + 44));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDC90, &qword_1CFCA3568);
  v17 = sub_1CFBF6474();
  v18 = sub_1CFBF6410();
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EDCC0, &qword_1CFCA3580);
  v20 = sub_1CFBA57C0(&qword_1EC4EDCC8, &qword_1EC4EDCC0, &qword_1CFCA3580, MEMORY[0x1E6981810]);
  v21 = sub_1CFBB4460();
  v53 = v19;
  v54 = MEMORY[0x1E69E6158];
  v55 = v20;
  v56 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1CFC9EFE8();
  sub_1CFBC2FB0(v9, &qword_1EC4EDC88, &qword_1CFCA3560);
  v22 = v42;
  sub_1CFBF4E04(v39, v42);
  v23 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v24 = swift_allocObject();
  sub_1CFBF4E68(v22, v24 + v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDC80, &qword_1CFCA3558);
  v53 = v7;
  v54 = &type metadata for PaneContent;
  v55 = v16;
  v56 = v17;
  v57 = v18;
  v58 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = sub_1CFBA57C0(&qword_1EC4EDCD0, &qword_1EC4EDC80, &qword_1CFCA3558, MEMORY[0x1E697C5E0]);
  v28 = v40;
  v29 = v41;
  v30 = v45;
  sub_1CFC9F058();
  v31 = v30;
  (*(v46 + 8))(v28, v30);

  v32 = v49;
  v33 = v50;
  v34 = v51;
  (*(v50 + 104))(v49, *MEMORY[0x1E697C438], v51);
  v53 = v31;
  v54 = v25;
  v55 = v26;
  v56 = v27;
  swift_getOpaqueTypeConformance2();
  v35 = v47;
  sub_1CFC9F018();
  (*(v33 + 8))(v32, v34);
  return (*(v48 + 8))(v29, v35);
}

uint64_t sub_1CFBEBC48@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v128 = a2;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEE8, &qword_1CFCA3750);
  MEMORY[0x1EEE9AC00](v110);
  v112 = &v103 - v3;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEF0, &qword_1CFCA3758);
  MEMORY[0x1EEE9AC00](v111);
  v115 = &v103 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEF8, &qword_1CFCA3760);
  v126 = *(v5 - 8);
  v127 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v114 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v113 = &v103 - v8;
  v9 = sub_1CFC9E948();
  v10 = *(v9 - 8);
  v118 = v9;
  v119 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v104 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDC20, &qword_1CFCA3508) - 8;
  MEMORY[0x1EEE9AC00](v120);
  v117 = &v103 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAF0, &qword_1CFCA2F58);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v105 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v130 = &v103 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v131 = &v103 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDF00, &qword_1CFCA3768);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v125 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v129 = &v103 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDF08, &qword_1CFCA3770);
  v123 = *(v23 - 8);
  v124 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v122 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v103 - v26;
  v116 = a1;
  sub_1CFBEE7C4(a1, v142);
  v28 = *&v142[0];
  v29 = BYTE8(v142[0]);
  sub_1CFC9F538();
  sub_1CFC9E268();
  *&v143[55] = v145[3];
  *&v143[71] = v145[4];
  *&v143[87] = v145[5];
  *&v143[103] = v145[6];
  *&v143[7] = v145[0];
  *&v143[23] = v145[1];
  v144 = v29;
  *&v143[39] = v145[2];
  v30 = sub_1CFC9E1E8();
  v31 = sub_1CFC9EBB8();
  *(&v142[4] + 9) = *&v143[64];
  *(&v142[5] + 9) = *&v143[80];
  *(&v142[6] + 9) = *&v143[96];
  *(v142 + 9) = *v143;
  *(&v142[1] + 9) = *&v143[16];
  *(&v142[2] + 9) = *&v143[32];
  *&v142[0] = v28;
  BYTE8(v142[0]) = v29;
  *(&v142[3] + 9) = *&v143[48];
  *(&v142[7] + 1) = *&v143[111];
  *&v142[8] = v30;
  BYTE8(v142[8]) = v31;
  v32 = (a1 + *(type metadata accessor for PhonePanedView(0) + 28));
  v33 = *v32;
  v108 = v32[1];
  v109 = v33;
  *&v140[0] = v33;
  *(&v140[0] + 1) = v108;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB78, &qword_1CFCA2FB0);
  sub_1CFC9F238();
  v34 = v132;
  swift_getKeyPath();
  *&v140[0] = v34;
  v106 = sub_1CFBF4FC8(&qword_1EC4EDAE0, type metadata accessor for PhonePaneConfiguration, &protocol conformance descriptor for PhonePaneConfiguration);
  sub_1CFC9C158();

  v36 = *(v34 + 32);
  v35 = *(v34 + 40);

  if (v35)
  {
    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  if (v35)
  {
    v38 = v35;
  }

  else
  {
    v38 = 0xE000000000000000;
  }

  *&v132 = v37;
  *(&v132 + 1) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDF10, &qword_1CFCA3778);
  sub_1CFBF6EDC(&qword_1EC4EDF18, &qword_1EC4EDF10, &qword_1CFCA3778, sub_1CFBF6568);
  sub_1CFBB4460();
  v121 = v27;
  v40 = v117;
  v39 = v118;
  sub_1CFC9EF48();

  v140[5] = v142[5];
  v140[6] = v142[6];
  v141[0] = v142[7];
  *(v141 + 9) = *(&v142[7] + 9);
  v140[1] = v142[1];
  v140[2] = v142[2];
  v140[3] = v142[3];
  v140[4] = v142[4];
  v41 = v131;
  v140[0] = v142[0];
  v42 = v119;
  sub_1CFBC2FB0(v140, &qword_1EC4EDF10, &qword_1CFCA3778);
  sub_1CFBE7530(v41);
  v43 = v130;
  (*(v42 + 104))(v130, *MEMORY[0x1E697FF38], v39);
  (*(v42 + 56))(v43, 0, 1, v39);
  v44 = *(v120 + 56);
  sub_1CFBA29FC(v41, v40, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  sub_1CFBA29FC(v43, v40 + v44, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  v45 = *(v42 + 48);
  if (v45(v40, 1, v39) == 1)
  {
    sub_1CFBC2FB0(v43, &qword_1EC4EDAF0, &qword_1CFCA2F58);
    sub_1CFBC2FB0(v41, &qword_1EC4EDAF0, &qword_1CFCA2F58);
    v46 = v45(v40 + v44, 1, v39);
    v47 = v129;
    if (v46 == 1)
    {
      sub_1CFBC2FB0(v40, &qword_1EC4EDAF0, &qword_1CFCA2F58);
LABEL_15:
      (*(v126 + 56))(v47, 1, 1, v127);
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v48 = v105;
  sub_1CFBA29FC(v40, v105, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  if (v45(v40 + v44, 1, v39) == 1)
  {
    sub_1CFBC2FB0(v130, &qword_1EC4EDAF0, &qword_1CFCA2F58);
    sub_1CFBC2FB0(v131, &qword_1EC4EDAF0, &qword_1CFCA2F58);
    (*(v42 + 8))(v48, v39);
LABEL_12:
    sub_1CFBC2FB0(v40, &qword_1EC4EDC20, &qword_1CFCA3508);
    goto LABEL_13;
  }

  v90 = v104;
  (*(v42 + 32))(v104, v40 + v44, v39);
  sub_1CFBF4FC8(&qword_1EE04D278, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  v91 = sub_1CFC9F6F8();
  v92 = *(v42 + 8);
  v92(v90, v39);
  sub_1CFBC2FB0(v130, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  sub_1CFBC2FB0(v131, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  v92(v48, v39);
  sub_1CFBC2FB0(v40, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  v47 = v129;
  if (v91)
  {
    goto LABEL_15;
  }

LABEL_13:
  v50 = v108;
  v49 = v109;
  *&v132 = v109;
  *(&v132 + 1) = v108;
  sub_1CFC9F238();
  v51 = v139;
  swift_getKeyPath();
  *&v132 = v51;
  sub_1CFC9C158();

  v52 = *(v51 + 120);

  *&v132 = v49;
  *(&v132 + 1) = v50;
  sub_1CFC9F238();
  v53 = v139;
  swift_getKeyPath();
  *&v132 = v53;
  sub_1CFC9C158();

  v55 = *(v53 + 72);
  v54 = *(v53 + 80);

  sub_1CFC9F538();
  sub_1CFC9E268();
  sub_1CFC9CD28();
  v56 = v139;
  v57 = v112;
  v58 = &v112[*(v110 + 36)];
  v59 = *(sub_1CFC9E228() + 20);
  v60 = *MEMORY[0x1E697F468];
  v61 = sub_1CFC9E608();
  (*(*(v61 - 8) + 104))(&v58[v59], v60, v61);
  *v58 = v56;
  *(v58 + 1) = v56;
  *&v58[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDF20, &qword_1CFCA3780) + 36)] = 256;
  v62 = v134;
  *(v57 + 72) = v135;
  v63 = v137;
  *(v57 + 88) = v136;
  *(v57 + 104) = v63;
  *(v57 + 120) = v138;
  v64 = v133;
  *(v57 + 24) = v132;
  *(v57 + 40) = v64;
  *v57 = v52;
  *(v57 + 8) = v55;
  *(v57 + 16) = v54;
  *(v57 + 56) = v62;
  LOBYTE(v54) = sub_1CFC9EC08();
  sub_1CFC9CD28();
  sub_1CFC9DE18();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v73 = v115;
  sub_1CFBCCE88(v57, v115, &qword_1EC4EDEE8, &qword_1CFCA3750);
  v74 = v73 + *(v111 + 36);
  *v74 = v54;
  *(v74 + 8) = v66;
  *(v74 + 16) = v68;
  *(v74 + 24) = v70;
  *(v74 + 32) = v72;
  *(v74 + 40) = 0;
  LOBYTE(v54) = sub_1CFC9EBD8();
  sub_1CFC9CD28();
  sub_1CFC9DE18();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v83 = v114;
  sub_1CFBCCE88(v73, v114, &qword_1EC4EDEF0, &qword_1CFCA3758);
  v84 = v127;
  v85 = v83 + *(v127 + 36);
  *v85 = v54;
  *(v85 + 8) = v76;
  *(v85 + 16) = v78;
  *(v85 + 24) = v80;
  *(v85 + 32) = v82;
  *(v85 + 40) = 0;
  v86 = v83;
  v87 = v113;
  sub_1CFBCCE88(v86, v113, &qword_1EC4EDEF8, &qword_1CFCA3760);
  v88 = v87;
  v89 = v129;
  sub_1CFBCCE88(v88, v129, &qword_1EC4EDEF8, &qword_1CFCA3760);
  (*(v126 + 56))(v89, 0, 1, v84);
  v47 = v89;
LABEL_16:
  v94 = v122;
  v93 = v123;
  v95 = *(v123 + 16);
  v96 = v121;
  v97 = v124;
  v95(v122, v121, v124);
  v98 = v125;
  sub_1CFBA29FC(v47, v125, &qword_1EC4EDF00, &qword_1CFCA3768);
  v99 = v128;
  v95(v128, v94, v97);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDF28, &qword_1CFCA3788);
  sub_1CFBA29FC(v98, &v99[*(v100 + 48)], &qword_1EC4EDF00, &qword_1CFCA3768);
  sub_1CFBC2FB0(v47, &qword_1EC4EDF00, &qword_1CFCA3768);
  v101 = *(v93 + 8);
  v101(v96, v97);
  sub_1CFBC2FB0(v98, &qword_1EC4EDF00, &qword_1CFCA3768);
  return (v101)(v94, v97);
}

uint64_t sub_1CFBECC40(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDCC0, &qword_1CFCA3580);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v12 - v3);
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[6];

  sub_1CFC9BFF8();
  *v4 = v7;
  if (v5)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v12[0] = v8;
  v12[1] = v9;
  sub_1CFBA57C0(&qword_1EC4EDCC8, &qword_1EC4EDCC0, &qword_1CFCA3580, MEMORY[0x1E6981810]);
  sub_1CFBB4460();
  v10 = v7;
  sub_1CFC9EF48();

  return sub_1CFBC2FB0(v4, &qword_1EC4EDCC0, &qword_1CFCA3580);
}

uint64_t sub_1CFBECD90@<X0>(uint64_t a1@<X8>)
{
  v139 = a1;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDE30, &qword_1CFCA36B0);
  MEMORY[0x1EEE9AC00](v138);
  v137 = v110 - v2;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDE38, &qword_1CFCA36B8);
  v132 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v121 = v110 - v3;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDE40, &qword_1CFCA36C0);
  v120 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v119 = v110 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDE48, &qword_1CFCA36C8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v131 = v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v147 = v110 - v8;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDE50, &qword_1CFCA36D0);
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v146 = v110 - v9;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDE58, &qword_1CFCA36D8);
  v128 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v116 = v110 - v10;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDE60, &qword_1CFCA36E0);
  v115 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v114 = v110 - v11;
  v12 = sub_1CFC9F448();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDE68, &qword_1CFCA36E8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v127 = v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v145 = v110 - v19;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDE70, &qword_1CFCA36F0);
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v21 = v110 - v20;
  v22 = sub_1CFC9E838();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDE78, &qword_1CFCA36F8);
  v118 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v117 = v110 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDE80, &qword_1CFCA3700);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v144 = v110 - v30;
  v123 = type metadata accessor for PhonePanedView(0);
  v31 = *(v123 + 28);
  v148 = v1;
  v32 = (v1 + v31);
  v33 = *v32;
  v142 = v32[1];
  v143 = v33;
  v149 = v33;
  v150 = v142;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB78, &qword_1CFCA2FB0);
  sub_1CFC9F238();
  v34 = v154;
  swift_getKeyPath();
  v149 = v34;
  v140 = sub_1CFBF4FC8(&qword_1EC4EDAE0, type metadata accessor for PhonePaneConfiguration, &protocol conformance descriptor for PhonePaneConfiguration);
  sub_1CFC9C158();

  swift_beginAccess();
  v35 = *(v34 + 208);
  v36 = v35;

  v122 = v24;
  if (v35)
  {
    v37 = sub_1CFC9E7F8();
    v112 = v110;
    MEMORY[0x1EEE9AC00](v37);
    v110[-2] = v148;
    v110[-1] = v36;
    v110[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDED8, &unk_1CFCA3740);
    v113 = v36;
    v38 = v15;
    v39 = v13;
    v40 = v12;
    v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4ED058, &qword_1CFCA1E08);
    v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4ED060, &unk_1CFCA1E10);
    v111 = v21;
    v43 = v42;
    v44 = sub_1CFBF6C3C(&qword_1EC4ED068, &qword_1EC4ED058, &qword_1CFCA1E08, sub_1CFBC2BC0);
    v45 = sub_1CFBC2D38();
    v149 = v41;
    v150 = v43;
    v12 = v40;
    v13 = v39;
    v15 = v38;
    v151 = v44;
    v152 = v45;
    swift_getOpaqueTypeConformance2();
    v46 = v117;
    sub_1CFC9DEA8();
    v47 = sub_1CFBA57C0(&qword_1EC4EDE88, &qword_1EC4EDE78, &qword_1CFCA36F8, MEMORY[0x1E697BEF0]);
    v48 = v111;
    v49 = v124;
    MEMORY[0x1D3870DB0](v46, v124, v47);
    v50 = v125;
    v51 = v126;
    (*(v125 + 16))(v28, v48, v126);
    (*(v50 + 56))(v28, 0, 1, v51);
    v149 = v49;
    v150 = v47;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1D3870DF0](v28, v51, OpaqueTypeConformance2);

    sub_1CFBC2FB0(v28, &qword_1EC4EDE80, &qword_1CFCA3700);
    (*(v50 + 8))(v48, v51);
    (*(v118 + 8))(v46, v49);
  }

  else
  {
    v53 = v126;
    (*(v125 + 56))(v28, 1, 1, v126);
    v54 = sub_1CFBA57C0(&qword_1EC4EDE88, &qword_1EC4EDE78, &qword_1CFCA36F8, MEMORY[0x1E697BEF0]);
    v149 = v124;
    v150 = v54;
    v55 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1D3870DF0](v28, v53, v55);
    sub_1CFBC2FB0(v28, &qword_1EC4EDE80, &qword_1CFCA3700);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB20, &qword_1CFCA2F88);
  sub_1CFC9F238();
  v56 = sub_1CFC9F438();
  (*(v13 + 8))(v15, v12);
  if ((v56 & 1) != 0 && (v149 = v143, v150 = v142, sub_1CFC9F238(), v57 = v153, swift_getKeyPath(), v149 = v57, sub_1CFC9C158(), , swift_beginAccess(), v58 = *(v57 + 216), v59 = *(v57 + 224), sub_1CFBB256C(v58, v59), , v58))
  {
    v60 = sub_1CFC9E7E8();
    MEMORY[0x1EEE9AC00](v60);
    v110[-2] = v58;
    v110[-1] = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED078, &unk_1CFCA3730);
    sub_1CFBC2BC0();
    v61 = v127;
    v62 = v114;
    sub_1CFC9DEA8();
    v63 = sub_1CFBA57C0(&qword_1EC4EDE90, &qword_1EC4EDE60, &qword_1CFCA36E0, MEMORY[0x1E697BEF0]);
    v64 = v116;
    v65 = v129;
    MEMORY[0x1D3870DB0](v62, v129, v63);
    v66 = v128;
    v67 = v130;
    (*(v128 + 16))(v61, v64, v130);
    (*(v66 + 56))(v61, 0, 1, v67);
    v149 = v65;
    v150 = v63;
    v68 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1D3870DF0](v61, v67, v68);
    sub_1CFBABFA0(v58, v59);
    sub_1CFBC2FB0(v61, &qword_1EC4EDE68, &qword_1CFCA36E8);
    (*(v66 + 8))(v64, v67);
    (*(v115 + 8))(v62, v65);
  }

  else
  {
    v69 = v127;
    v70 = v130;
    (*(v128 + 56))(v127, 1, 1, v130);
    v71 = sub_1CFBA57C0(&qword_1EC4EDE90, &qword_1EC4EDE60, &qword_1CFCA36E0, MEMORY[0x1E697BEF0]);
    v149 = v129;
    v150 = v71;
    v72 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1D3870DF0](v69, v70, v72);
    sub_1CFBC2FB0(v69, &qword_1EC4EDE68, &qword_1CFCA36E8);
  }

  v73 = sub_1CFC9E7E8();
  MEMORY[0x1EEE9AC00](v73);
  v110[-2] = v148;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDE98, &qword_1CFCA3708);
  sub_1CFBF6C3C(&qword_1EC4EDEA0, &qword_1EC4EDE98, &qword_1CFCA3708, sub_1CFBF6CF0);
  sub_1CFC9DEA8();
  v149 = v143;
  v150 = v142;
  sub_1CFC9F238();
  v74 = v153;
  swift_getKeyPath();
  v149 = v74;
  sub_1CFC9C158();

  swift_beginAccess();
  v75 = *(v74 + 232);
  v76 = v75;

  if (v75)
  {
    v77 = sub_1CFC9E7E8();
    v148 = v110;
    MEMORY[0x1EEE9AC00](v77);
    v110[-2] = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEC0, &qword_1CFCA3720);
    v78 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EDEC8, &qword_1CFCA3728);
    v79 = sub_1CFC9E858();
    v80 = sub_1CFC9CC98();
    v81 = sub_1CFC9E138();
    v82 = sub_1CFBF4FC8(&qword_1EC4EDE18, MEMORY[0x1E6995920], MEMORY[0x1E6995918]);
    v83 = sub_1CFBF4FC8(&qword_1EC4EDED0, MEMORY[0x1E697C150], MEMORY[0x1E697C148]);
    v149 = v80;
    v150 = v81;
    v151 = v82;
    v152 = v83;
    v84 = swift_getOpaqueTypeConformance2();
    v85 = sub_1CFBF4FC8(&qword_1EE04FFF0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
    v149 = v78;
    v150 = v79;
    v151 = v84;
    v152 = v85;
    swift_getOpaqueTypeConformance2();
    v86 = v119;
    sub_1CFC9DEA8();
    v87 = sub_1CFBA57C0(&qword_1EC4EDEB8, &qword_1EC4EDE40, &qword_1CFCA36C0, MEMORY[0x1E697BEF0]);
    v88 = v121;
    v89 = v133;
    MEMORY[0x1D3870DB0](v86, v133, v87);
    v90 = v132;
    v91 = v131;
    v92 = v136;
    (*(v132 + 16))(v131, v88, v136);
    (*(v90 + 56))(v91, 0, 1, v92);
    v149 = v89;
    v150 = v87;
    v93 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1D3870DF0](v91, v92, v93);

    sub_1CFBC2FB0(v91, &qword_1EC4EDE48, &qword_1CFCA36C8);
    (*(v90 + 8))(v88, v92);
    (*(v120 + 8))(v86, v89);
  }

  else
  {
    v94 = v131;
    v95 = v136;
    (*(v132 + 56))(v131, 1, 1, v136);
    v96 = sub_1CFBA57C0(&qword_1EC4EDEB8, &qword_1EC4EDE40, &qword_1CFCA36C0, MEMORY[0x1E697BEF0]);
    v149 = v133;
    v150 = v96;
    v97 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1D3870DF0](v94, v95, v97);
    sub_1CFBC2FB0(v94, &qword_1EC4EDE48, &qword_1CFCA36C8);
  }

  v98 = v138[12];
  v99 = v138[16];
  v100 = v138[20];
  v101 = v144;
  v102 = v137;
  sub_1CFBA29FC(v144, v137, &qword_1EC4EDE80, &qword_1CFCA3700);
  v103 = v145;
  sub_1CFBA29FC(v145, v102 + v98, &qword_1EC4EDE68, &qword_1CFCA36E8);
  v104 = v134;
  v105 = v146;
  v106 = v135;
  (*(v134 + 16))(v102 + v99, v146, v135);
  v107 = v102 + v100;
  v108 = v147;
  sub_1CFBA29FC(v147, v107, &qword_1EC4EDE48, &qword_1CFCA36C8);
  sub_1CFC9E6A8();
  sub_1CFBC2FB0(v108, &qword_1EC4EDE48, &qword_1CFCA36C8);
  (*(v104 + 8))(v105, v106);
  sub_1CFBC2FB0(v103, &qword_1EC4EDE68, &qword_1CFCA36E8);
  return sub_1CFBC2FB0(v101, &qword_1EC4EDE80, &qword_1CFCA3700);
}

uint64_t sub_1CFBEE230@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_1CFC9E7D8();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PhonePanedView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDD00, &qword_1CFCA35A0);
  v32 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v38 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDCF8, &qword_1CFCA3598);
  v10 = *(v9 - 8);
  v33 = v9;
  v34 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v29 = &v28 - v11;
  sub_1CFBEE7C4(a1, v42);
  v12 = *&v42[0];
  v13 = BYTE8(v42[0]);
  sub_1CFC9F538();
  sub_1CFC9E268();
  *&v43[55] = v45[3];
  *&v43[71] = v45[4];
  *&v43[87] = v45[5];
  *&v43[103] = v46;
  *&v43[7] = v45[0];
  *&v43[23] = v45[1];
  *&v43[39] = v45[2];
  *(&v41[4] + 9) = *&v43[64];
  *(&v41[5] + 9) = *&v43[80];
  *(&v41[6] + 9) = *&v43[96];
  *(&v41[1] + 9) = *&v43[16];
  *(&v41[2] + 9) = *&v43[32];
  *(&v41[3] + 9) = *&v43[48];
  v44 = v13;
  *&v41[0] = v12;
  BYTE8(v41[0]) = v13;
  *(&v41[7] + 1) = *(&v46 + 1);
  *(v41 + 9) = *v43;
  sub_1CFBF4E04(a1, &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = swift_allocObject();
  sub_1CFBF4E68(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDD08, &qword_1CFCA35A8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDD10, &qword_1CFCA35B0);
  v18 = sub_1CFBF6568();
  v19 = sub_1CFBA57C0(&qword_1EC4EDD40, &qword_1EC4EDD10, &qword_1CFCA35B0, MEMORY[0x1E697C5E0]);
  sub_1CFC9F058();
  v42[4] = v41[4];
  v42[5] = v41[5];
  v42[6] = v41[6];
  v42[7] = v41[7];
  v42[0] = v41[0];
  v42[1] = v41[1];
  v42[2] = v41[2];
  v42[3] = v41[3];
  sub_1CFBC2FB0(v42, &qword_1EC4EDD08, &qword_1CFCA35A8);

  v20 = *(a1 + 2);
  v39 = *a1;
  v40 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAE8, &qword_1CFCA2F50);
  sub_1CFC9F258();
  v21 = v31;
  sub_1CFC9E7C8();
  *&v41[0] = v16;
  *(&v41[0] + 1) = v17;
  *&v41[1] = v18;
  *(&v41[1] + 1) = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v30;
  v23 = v29;
  v24 = v38;
  sub_1CFC9EEB8();

  (*(v35 + 8))(v21, v36);
  (*(v32 + 8))(v24, v22);
  *&v41[0] = v22;
  *(&v41[0] + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v25 = v33;
  sub_1CFC9EE68();
  return (*(v34 + 8))(v23, v25);
}

uint64_t sub_1CFBEE7C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for PhonePanedView(0) + 28) + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB78, &qword_1CFCA2FB0);
  sub_1CFC9F238();
  swift_getKeyPath();
  sub_1CFBF4FC8(&qword_1EC4EDAE0, type metadata accessor for PhonePaneConfiguration, &protocol conformance descriptor for PhonePaneConfiguration);
  sub_1CFC9C158();

  swift_beginAccess();
  v4 = *(v7 + 240);

  sub_1CFC9F238();
  swift_getKeyPath();
  sub_1CFC9C158();

  if (v4 == 1)
  {
    *(v6 + 176);
  }

  else
  {
    *(v6 + 64);
  }

  sub_1CFBC2DC4();
  result = sub_1CFC9E798();
  *a2 = v6;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1CFBEE9F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v62 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDD88, &qword_1CFCA35E8);
  MEMORY[0x1EEE9AC00](v3);
  v58 = v52 - v4;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDD90, &qword_1CFCA35F0);
  v65 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v64 = v52 - v5;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDD98, &qword_1CFCA35F8);
  v61 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v59 = v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDDA0, &qword_1CFCA3600);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v56 = v52 - v9;
  v10 = sub_1CFC9E838();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDDA8, &qword_1CFCA3608);
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v54 = v52 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDDB0, &qword_1CFCA3610);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v66 = v52 - v16;
  v17 = (v1 + *(type metadata accessor for PhonePanedView(0) + 28));
  v19 = *v17;
  v18 = v17[1];
  v67 = v19;
  v68 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB78, &qword_1CFCA2FB0);
  sub_1CFC9F238();
  v20 = v71;
  swift_getKeyPath();
  v67 = v20;
  sub_1CFBF4FC8(&qword_1EC4EDAE0, type metadata accessor for PhonePaneConfiguration, &protocol conformance descriptor for PhonePaneConfiguration);
  sub_1CFC9C158();

  swift_beginAccess();
  v21 = *(v20 + 232);
  v22 = v21;

  if (v21)
  {
    v23 = sub_1CFC9E828();
    v52[1] = v52;
    MEMORY[0x1EEE9AC00](v23);
    v52[-2] = v22;
    v52[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDE10, &qword_1CFCA3648);
    v24 = sub_1CFC9CC98();
    v25 = v8;
    v26 = v3;
    v27 = sub_1CFC9E9F8();
    v28 = sub_1CFBF4FC8(&qword_1EC4EDE18, MEMORY[0x1E6995920], MEMORY[0x1E6995918]);
    v53 = v22;
    v29 = v2;
    v30 = v28;
    v31 = sub_1CFBF4FC8(&qword_1EC4EDE20, MEMORY[0x1E697C9A8], MEMORY[0x1E697C9A0]);
    v67 = v24;
    v68 = v27;
    v3 = v26;
    v69 = v30;
    v70 = v31;
    v2 = v29;
    swift_getOpaqueTypeConformance2();
    v32 = v54;
    sub_1CFC9DEA8();
    v33 = sub_1CFBA57C0(&qword_1EC4EDDB8, &qword_1EC4EDDA8, &qword_1CFCA3608, MEMORY[0x1E697BEF0]);
    v35 = v56;
    v34 = v57;
    MEMORY[0x1D3870DB0](v32, v57, v33);
    (*(v25 + 16))(v14, v35, v7);
    (*(v25 + 56))(v14, 0, 1, v7);
    v67 = v34;
    v68 = v33;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1D3870DF0](v14, v7, OpaqueTypeConformance2);

    sub_1CFBC2FB0(v14, &qword_1EC4EDDB0, &qword_1CFCA3610);
    (*(v25 + 8))(v35, v7);
    (*(v55 + 8))(v32, v34);
  }

  else
  {
    (*(v8 + 56))(v14, 1, 1, v7);
    v37 = sub_1CFBA57C0(&qword_1EC4EDDB8, &qword_1EC4EDDA8, &qword_1CFCA3608, MEMORY[0x1E697BEF0]);
    v67 = v57;
    v68 = v37;
    v38 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1D3870DF0](v14, v7, v38);
    sub_1CFBC2FB0(v14, &qword_1EC4EDDB0, &qword_1CFCA3610);
  }

  v39 = sub_1CFC9E7F8();
  MEMORY[0x1EEE9AC00](v39);
  v52[-2] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDDC0, &qword_1CFCA3618);
  sub_1CFBF6868();
  v40 = v59;
  sub_1CFC9DEA8();
  sub_1CFC9E7E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDDF8, &qword_1CFCA3638);
  sub_1CFBF6A94();
  v41 = v64;
  sub_1CFC9DEA8();
  v42 = *(v3 + 48);
  v43 = *(v3 + 64);
  v44 = v66;
  v45 = v58;
  sub_1CFBA29FC(v66, v58, &qword_1EC4EDDB0, &qword_1CFCA3610);
  v46 = v61;
  v47 = v63;
  (*(v61 + 16))(v45 + v42, v40, v63);
  v48 = v65;
  v49 = v45 + v43;
  v50 = v60;
  (*(v65 + 16))(v49, v41, v60);
  sub_1CFC9E6A8();
  (*(v48 + 8))(v41, v50);
  (*(v46 + 8))(v40, v47);
  return sub_1CFBC2FB0(v44, &qword_1EC4EDDB0, &qword_1CFCA3610);
}

uint64_t sub_1CFBEF2F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDC48, &qword_1CFCA3520);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDD48, &qword_1CFCA35C8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  type metadata accessor for PhonePanedView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB28, &qword_1CFCA2F90);
  sub_1CFC9F258();
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDD58, &qword_1CFCA35D0);
  sub_1CFBF6704();
  sub_1CFC9E1D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDCC0, &qword_1CFCA3580);
  sub_1CFBA57C0(&qword_1EC4EDD50, &qword_1EC4EDD48, &qword_1CFCA35C8, MEMORY[0x1E697C1A8]);
  sub_1CFBF6410();
  sub_1CFBA57C0(&qword_1EC4EDCC8, &qword_1EC4EDCC0, &qword_1CFCA3580, MEMORY[0x1E6981810]);
  sub_1CFC9EFE8();
  return (*(v4 + 8))(v6, v3);
}

double sub_1CFBEF56C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for PhonePanedView(0) + 28) + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB78, &qword_1CFCA2FB0);
  sub_1CFC9F238();
  swift_getKeyPath();
  sub_1CFBF4FC8(&qword_1EC4EDAE0, type metadata accessor for PhonePaneConfiguration, &protocol conformance descriptor for PhonePaneConfiguration);
  sub_1CFC9C158();

  v4 = *(*&v17 + 120);

  *(&v10 + 1) = v3;
  sub_1CFC9F238();
  swift_getKeyPath();
  *&v10 = v17;
  sub_1CFC9C158();

  v6 = *(*&v17 + 72);
  v5 = *(*&v17 + 80);

  sub_1CFC9F538();
  sub_1CFC9E268();
  v7 = sub_1CFC9E1E8();
  v8 = sub_1CFC9EBB8();
  *(a2 + 72) = v13;
  *(a2 + 88) = v14;
  *(a2 + 104) = v15;
  *(a2 + 120) = v16;
  result = v17;
  *(a2 + 24) = v10;
  *(a2 + 40) = v11;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  *(a2 + 56) = v12;
  *(a2 + 136) = v7;
  *(a2 + 144) = v8;
  return result;
}

id sub_1CFBEF768@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDCC0, &qword_1CFCA3580);
  sub_1CFC9BFF8();
  *a2 = v4;

  return v4;
}

uint64_t sub_1CFBEF7D0(void *a1)
{
  v2 = sub_1CFC9E9F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CFC9CC98();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1;
  sub_1CFC9CC88();
  sub_1CFC9E9E8();
  sub_1CFBF4FC8(&qword_1EC4EDE18, MEMORY[0x1E6995920], MEMORY[0x1E6995918]);
  sub_1CFBF4FC8(&qword_1EC4EDE20, MEMORY[0x1E697C9A8], MEMORY[0x1E697C9A0]);
  sub_1CFC9F0B8();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1CFBEF9D4@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1CFC9E668();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDDD0, &qword_1CFCA3620);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  sub_1CFC9DE28();
  KeyPath = swift_getKeyPath();
  v9 = &v7[*(v5 + 36)];
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDDF0, &qword_1CFCA3628) + 28);
  type metadata accessor for PhonePanedView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB20, &qword_1CFCA2F88);
  sub_1CFC9F258();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAF8, &qword_1CFCA2F60);
  (*(*(v11 - 8) + 56))(v9 + v10, 0, 1, v11);
  *v9 = KeyPath;
  sub_1CFC9E658();
  sub_1CFBF69AC();
  sub_1CFBF4FC8(&qword_1EE04D360, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
  v12 = v19;
  sub_1CFC9EEC8();
  (*(v2 + 8))(v4, v1);
  sub_1CFBC2FB0(v7, &qword_1EC4EDDD0, &qword_1CFCA3620);
  v13 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDDC0, &qword_1CFCA3618) + 36));
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEEE0, &qword_1CFCA3630) + 28);
  v15 = *MEMORY[0x1E697DC10];
  v16 = sub_1CFC9DE78();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  result = swift_getKeyPath();
  *v13 = result;
  return result;
}

uint64_t sub_1CFBEFCC4@<X0>(uint64_t a1@<X8>)
{
  sub_1CFC9E5E8();
  sub_1CFC9F2B8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDDF8, &qword_1CFCA3638);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1CFBEFD30@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v46 = a1;
  v53 = a3;
  v52 = sub_1CFC9E9B8();
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v49 = (&v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1CFC9E858();
  v6 = *(v5 - 8);
  v44 = v5;
  v45 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PhonePanedView(0);
  v10 = *(v9 - 8);
  v48 = v9 - 8;
  v43 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED080, &unk_1CFCA1E20);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED078, &unk_1CFCA3730);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED058, &qword_1CFCA1E08);
  MEMORY[0x1EEE9AC00](v47);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v54 = &v43 - v22;
  sub_1CFBF4E04(a1, &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v24 = swift_allocObject();
  sub_1CFBF4E68(&v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  sub_1CFC9F298();
  sub_1CFC9E848();
  sub_1CFBA57C0(&qword_1EE04D1B8, &unk_1EC4ED080, &unk_1CFCA1E20, MEMORY[0x1E697D680]);
  sub_1CFBF4FC8(&qword_1EE04FFF0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
  v25 = v44;
  sub_1CFC9EEC8();
  (*(v45 + 8))(v8, v25);
  (*(v13 + 8))(v15, v12);
  *&v18[*(v16 + 36)] = sub_1CFC9F108();
  sub_1CFBC2BC0();
  sub_1CFC9F008();
  sub_1CFBC2FB0(v18, &qword_1EC4ED078, &unk_1CFCA3730);
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = [objc_opt_self() bundleForClass_];
  v28 = sub_1CFC9BE28();
  v30 = v29;

  v55 = v28;
  v56 = v30;
  sub_1CFBB4460();
  sub_1CFC9E188();

  sub_1CFBC2FB0(v20, &qword_1EC4ED058, &qword_1CFCA1E08);
  v31 = v46 + *(v48 + 52);
  v32 = *v31;
  v33 = *(v31 + 8);
  v57 = v32;
  v58 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEE0, &qword_1CFCA5670);
  sub_1CFC9F258();
  v34 = swift_allocObject();
  v35 = v51;
  *(v34 + 16) = v51;
  v36 = v35;
  v37 = sub_1CFC9F278();
  v39 = v49;
  v38 = v50;
  *v49 = v37;
  v40 = v52;
  (*(v38 + 104))(v39, *MEMORY[0x1E697C8C0], v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED060, &unk_1CFCA1E10);
  sub_1CFBF6C3C(&qword_1EC4ED068, &qword_1EC4ED058, &qword_1CFCA1E08, sub_1CFBC2BC0);
  sub_1CFBC2D38();
  v41 = v54;
  sub_1CFC9EEF8();

  (*(v38 + 8))(v39, v40);
  return sub_1CFBC2FB0(v41, &qword_1EC4ED058, &qword_1CFCA1E08);
}

uint64_t sub_1CFBF043C(uint64_t a1)
{
  type metadata accessor for PhonePanedView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEE0, &qword_1CFCA5670);
  return sub_1CFC9F248();
}

uint64_t sub_1CFBF04B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9F1A8();
  *a1 = result;
  return result;
}

id sub_1CFBF04F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CFC9F538();
  sub_1CFC9DF68();
  *a2 = a1;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;

  return a1;
}

uint64_t sub_1CFBF0580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a3;
  v5 = sub_1CFC9E858();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED080, &unk_1CFCA1E20);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;

  sub_1CFC9F298();
  sub_1CFC9E848();
  sub_1CFBA57C0(&qword_1EE04D1B8, &unk_1EC4ED080, &unk_1CFCA1E20, MEMORY[0x1E697D680]);
  sub_1CFBF4FC8(&qword_1EE04FFF0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
  v14 = v18;
  sub_1CFC9EEC8();
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  v15 = sub_1CFC9F108();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED078, &unk_1CFCA3730);
  *(v14 + *(result + 36)) = v15;
  return result;
}

uint64_t sub_1CFBF0818@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9F1A8();
  *a1 = result;
  return result;
}

uint64_t sub_1CFBF084C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[1] = a1;
  v29 = a2;
  v2 = sub_1CFC9E858();
  v3 = *(v2 - 8);
  v26 = v2;
  v27 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDDD0, &qword_1CFCA3620);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEB0, &unk_1CFCA3710);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - v10;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDE98, &qword_1CFCA3708);
  MEMORY[0x1EEE9AC00](v28);
  v13 = v25 - v12;
  sub_1CFC9DE28();
  KeyPath = swift_getKeyPath();
  v15 = &v8[*(v6 + 36)];
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDDF0, &qword_1CFCA3628) + 28);
  type metadata accessor for PhonePanedView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB20, &qword_1CFCA2F88);
  sub_1CFC9F258();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAF8, &qword_1CFCA2F60);
  (*(*(v17 - 8) + 56))(v15 + v16, 0, 1, v17);
  *v15 = KeyPath;
  sub_1CFC9E848();
  sub_1CFBF69AC();
  sub_1CFBF4FC8(&qword_1EE04FFF0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
  v18 = v26;
  sub_1CFC9EEC8();
  (*(v27 + 8))(v5, v18);
  sub_1CFBC2FB0(v8, &qword_1EC4EDDD0, &qword_1CFCA3620);
  *&v11[*(v9 + 36)] = sub_1CFC9F108();
  sub_1CFBF6CF0();
  sub_1CFC9F008();
  sub_1CFBC2FB0(v11, &qword_1EC4EDEB0, &unk_1CFCA3710);
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass_];
  v21 = sub_1CFC9BE28();
  v23 = v22;

  v30 = v21;
  v31 = v23;
  sub_1CFBB4460();
  sub_1CFC9E188();

  return sub_1CFBC2FB0(v13, &qword_1EC4EDE98, &qword_1CFCA3708);
}

uint64_t sub_1CFBF0C7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_1CFC9E858();
  v4 = *(v3 - 8);
  v28 = v3;
  v29 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CFC9E138();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CFC9CC98();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEC8, &qword_1CFCA3728);
  v15 = *(v14 - 8);
  v25 = v14;
  v26 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  v18 = a1;
  sub_1CFC9CC88();
  sub_1CFC9E128();
  v19 = sub_1CFBF4FC8(&qword_1EC4EDE18, MEMORY[0x1E6995920], MEMORY[0x1E6995918]);
  v20 = sub_1CFBF4FC8(&qword_1EC4EDED0, MEMORY[0x1E697C150], MEMORY[0x1E697C148]);
  sub_1CFC9F0B8();
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
  v21 = v27;
  sub_1CFC9E848();
  v31 = v10;
  v32 = v6;
  v33 = v19;
  v34 = v20;
  swift_getOpaqueTypeConformance2();
  sub_1CFBF4FC8(&qword_1EE04FFF0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
  v22 = v25;
  v23 = v28;
  sub_1CFC9EEC8();
  (*(v29 + 8))(v21, v23);
  return (*(v26 + 8))(v17, v22);
}
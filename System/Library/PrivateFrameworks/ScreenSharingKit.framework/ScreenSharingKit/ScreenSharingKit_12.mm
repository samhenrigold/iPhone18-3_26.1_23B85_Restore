unint64_t sub_264AFFFDC()
{
  result = qword_27FF8C470;
  if (!qword_27FF8C470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C470);
  }

  return result;
}

unint64_t sub_264B00034()
{
  result = qword_27FF8C478;
  if (!qword_27FF8C478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C478);
  }

  return result;
}

unint64_t sub_264B0008C()
{
  result = qword_27FF8C480;
  if (!qword_27FF8C480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C480);
  }

  return result;
}

unint64_t sub_264B000E4()
{
  result = qword_27FF8C488;
  if (!qword_27FF8C488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C488);
  }

  return result;
}

unint64_t sub_264B0013C()
{
  result = qword_27FF8C490;
  if (!qword_27FF8C490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C490);
  }

  return result;
}

unint64_t sub_264B00194()
{
  result = qword_27FF8C498;
  if (!qword_27FF8C498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C498);
  }

  return result;
}

unint64_t sub_264B001EC()
{
  result = qword_27FF8C4A0;
  if (!qword_27FF8C4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C4A0);
  }

  return result;
}

unint64_t sub_264B00244()
{
  result = qword_27FF8C4A8;
  if (!qword_27FF8C4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C4A8);
  }

  return result;
}

unint64_t sub_264B0029C()
{
  result = qword_27FF8C4B0;
  if (!qword_27FF8C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C4B0);
  }

  return result;
}

unint64_t sub_264B002F4()
{
  result = qword_27FF8C4B8;
  if (!qword_27FF8C4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C4B8);
  }

  return result;
}

unint64_t sub_264B0034C()
{
  result = qword_27FF8C4C0;
  if (!qword_27FF8C4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C4C0);
  }

  return result;
}

unint64_t sub_264B003A4()
{
  result = qword_27FF8C4C8;
  if (!qword_27FF8C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C4C8);
  }

  return result;
}

unint64_t sub_264B003FC()
{
  result = qword_27FF8C4D0;
  if (!qword_27FF8C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C4D0);
  }

  return result;
}

uint64_t sub_264B00450(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_264B41AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65644967617264 && a2 == 0xEE00726569666974 || (sub_264B41AA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69 || (sub_264B41AA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000264B61440 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_264B41AA4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_264B005C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a1;
  v6[11] = a4;
  v9 = sub_264B3FFD4();
  v6[14] = v9;
  v6[15] = *(v9 - 8);
  v6[16] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C510, &qword_264B551D0);
  v6[17] = v10;
  v6[18] = *(v10 - 8);
  v6[19] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C518, &qword_264B551D8);
  v6[20] = v11;
  v6[21] = *(v11 - 8);
  v6[22] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C520, &unk_264B551E0);
  v6[23] = v12;
  v6[24] = *(v12 - 8);
  v6[25] = swift_task_alloc();
  v6[7] = a2;
  v6[8] = a3;

  return MEMORY[0x2822009F8](sub_264B007C8, 0, 0);
}

uint64_t sub_264B007C8()
{
  if (os_variant_allows_internal_security_policies() && (v1 = [objc_opt_self() standardUserDefaults], v2 = sub_264B41014(), v3 = objc_msgSend(v1, sel_BOOLForKey_, v2), v2, v1, v3))
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v4 = sub_264B40964();
    __swift_project_value_buffer(v4, qword_27FFA71B8);
    v5 = sub_264B40944();
    v6 = sub_264B41494();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2649C6000, v5, v6, "------- Timeouts disabled via defaults on internal builds only -------", v7, 2u);
      MEMORY[0x266749940](v7, -1, -1);
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v0 + 176);
  v10 = *(v0 + 160);
  v11 = *(v0 + 168);
  v12 = *(v0 + 88);
  v13 = swift_task_alloc();
  *(v13 + 16) = *(v0 + 96);
  *(v13 + 32) = v8;
  *(v13 + 40) = v0 + 56;
  *(v13 + 48) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B520, &unk_264B50B68);
  (*(v11 + 104))(v9, *MEMORY[0x277D858A0], v10);
  sub_264B413E4();

  sub_264B412C4();
  v14 = swift_task_alloc();
  *(v0 + 208) = v14;
  *v14 = v0;
  v14[1] = sub_264B00A80;
  v15 = *(v0 + 136);

  return MEMORY[0x2822005A8](v0 + 16, 0, 0, v15, v0 + 72);
}

uint64_t sub_264B00A80()
{

  if (v0)
  {
    v1 = sub_264B00EE4;
  }

  else
  {
    v1 = sub_264B00B90;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_264B00B90()
{
  v21 = v0;
  (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
  if (*(v0 + 40))
  {
    v1 = *(v0 + 80);
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    sub_2649D2AAC((v0 + 16), v1);

    v2 = *(v0 + 8);
  }

  else
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    v5 = *(v0 + 112);
    v6 = sub_264B40964();
    __swift_project_value_buffer(v6, qword_27FFA71B8);
    v7 = sub_264B41484();
    sub_264B3FF94();
    v8 = sub_264B3FFA4();
    v10 = v9;
    (*(v4 + 8))(v3, v5);
    v11 = sub_264B40944();
    if (os_log_type_enabled(v11, v7))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20[0] = v13;
      *v12 = 136446978;
      v14 = sub_2649CC004(v8, v10, v20);

      *(v12 + 4) = v14;
      *(v12 + 12) = 2050;
      *(v12 + 14) = 79;
      *(v12 + 22) = 2082;
      *(v12 + 24) = sub_2649CC004(0xD000000000000029, 0x8000000264B5D210, v20);
      *(v12 + 32) = 2082;
      *(v12 + 34) = sub_2649CC004(0xD00000000000001ALL, 0x8000000264B5D180, v20);
      _os_log_impl(&dword_2649C6000, v11, v7, "%{public}s:%{public}ld %{public}s %{public}s", v12, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x266749940](v13, -1, -1);
      MEMORY[0x266749940](v12, -1, -1);
    }

    else
    {
    }

    v16 = *(v0 + 192);
    v15 = *(v0 + 200);
    v17 = *(v0 + 184);
    sub_264A6EA14();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
    (*(v16 + 8))(v15, v17);

    v2 = *(v0 + 8);
  }

  return v2();
}

uint64_t sub_264B00EE4()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  (*(v0[18] + 8))(v0[19], v0[17]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_264B00FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = a8;
  *(v8 + 64) = v15;
  *(v8 + 40) = a5;
  *(v8 + 48) = a7;
  *(v8 + 153) = a6;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 16) = a2;
  v9 = sub_264B41844();
  *(v8 + 72) = v9;
  v10 = *(v9 - 8);
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 + 64);
  *(v8 + 96) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C528, &unk_264B551F0);
  *(v8 + 104) = v11;
  v12 = *(v11 - 8);
  *(v8 + 112) = v12;
  *(v8 + 120) = *(v12 + 64);
  *(v8 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  *(v8 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264B01134, 0, 0);
}

uint64_t sub_264B01134()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 104);
  v29 = *(v0 + 153);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v27 = *(v0 + 24);
  v24 = *(*(sub_264B41274() - 8) + 56);
  (v24)(v1, 1, 1);
  v25 = *(v3 + 16);
  v25(v2, v5, v4);
  v7 = *(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 4) = v27;
  *(v8 + 5) = v6;
  v26 = *(v3 + 32);
  v26(&v8[(v7 + 48) & ~v7], v2, v4);

  sub_264B01A0C(v1, &unk_264B55230, v8);
  sub_2649D04D4(v1, &qword_27FF898C0, &unk_264B44190);
  if ((v29 & 1) == 0)
  {
    v9 = *(v0 + 128);
    v28 = *(v0 + 136);
    v11 = *(v0 + 96);
    v10 = *(v0 + 104);
    v12 = *(v0 + 80);
    v21 = *(v0 + 88);
    v13 = *(v0 + 64);
    v14 = *(v0 + 72);
    v22 = *(v0 + 48);
    v23 = *(v0 + 56);
    v15 = *(v0 + 40);
    v24();
    (*(v12 + 16))(v11, v13, v14);
    v25(v9, v15, v10);
    v16 = (*(v12 + 80) + 48) & ~*(v12 + 80);
    v17 = swift_allocObject();
    *(v17 + 2) = 0;
    *(v17 + 3) = 0;
    *(v17 + 4) = v22;
    *(v17 + 5) = v23;
    (*(v12 + 32))(&v17[v16], v11, v14);
    v26(&v17[(v21 + v7 + v16) & ~v7], v9, v10);
    sub_264B01A0C(v28, &unk_264B55240, v17);
    sub_2649D04D4(v28, &qword_27FF898C0, &unk_264B44190);
  }

  v18 = swift_task_alloc();
  *(v0 + 144) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A368, &qword_264B4A928);
  *v18 = v0;
  v18[1] = sub_264B01494;

  return MEMORY[0x2822002D0](v0 + 152, 0, 0, v19);
}

uint64_t sub_264B01494()
{

  return MEMORY[0x2822009F8](sub_264B01590, 0, 0);
}

uint64_t sub_264B01590()
{
  sub_264B41204();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264B01628(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C530, &qword_264B55268);
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v6[18] = v9;
  *v9 = v6;
  v9[1] = sub_264B0178C;

  return v11(v6 + 2);
}

uint64_t sub_264B0178C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_264B0197C;
  }

  else
  {
    v2 = sub_264B018A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264B018A0()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  sub_2649CB5C0((v0 + 2), (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C528, &unk_264B551F0);
  sub_264B41374();
  (*(v2 + 8))(v1, v3);
  v0[13] = 0;
  sub_264B41384();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_264B0197C()
{
  v0[12] = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C528, &unk_264B551F0);
  sub_264B41384();

  v1 = v0[1];

  return v1();
}

uint64_t sub_264B01A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v21 - v10;
  sub_2649D046C(a1, v21 - v10, &qword_27FF898C0, &unk_264B44190);
  v12 = sub_264B41274();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2649D04D4(v11, &qword_27FF898C0, &unk_264B44190);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_264B411C4();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_264B41264();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v4;
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v19 = (v16 | v14);
  if (v16 | v14)
  {
    v22[0] = 0;
    v22[1] = 0;
    v19 = v22;
    v22[2] = v14;
    v22[3] = v16;
  }

  v21[1] = 1;
  v21[2] = v19;
  v21[3] = v17;
  swift_task_create();
}

uint64_t sub_264B01C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  return MEMORY[0x2822009F8](sub_264B01C48, 0, 0);
}

uint64_t sub_264B01C48()
{
  v16 = v0;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  v0[14] = __swift_project_value_buffer(v1, qword_27FFA71B8);
  v2 = sub_264B40944();
  v3 = sub_264B41484();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    v0[6] = v5;
    v0[7] = v4;
    v8 = sub_264B41064();
    v10 = sub_2649CC004(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2649C6000, v2, v3, "Starting timeout for %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  v11[1] = sub_264B01E38;
  v12 = v0[11];
  v13 = v0[10];

  return sub_2649FE7A8(v13, v12, 0, 0, 1);
}

uint64_t sub_264B01E38()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_264B020E0;
  }

  else
  {
    v2 = sub_264B01F4C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264B01F4C(uint64_t a1)
{
  v16 = v1;
  v2 = sub_264B40944();
  v3 = sub_264B41484();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v1[10];
    v4 = v1[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    v1[4] = v5;
    v1[5] = v4;
    v8 = sub_264B41064();
    v10 = sub_2649CC004(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2649C6000, v2, v3, "Timeout occurred after %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  sub_264A6EA14();
  v11 = swift_allocError();
  *v12 = 0;
  v1[9] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C528, &unk_264B551F0);
  sub_264B41384();
  v13 = v1[1];

  return v13();
}

uint64_t sub_264B020E0(uint64_t a1)
{
  v14 = v1;
  v2 = sub_264B40944();
  v3 = sub_264B41484();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v1[10];
    v4 = v1[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v1[2] = v5;
    v1[3] = v4;
    v8 = sub_264B41064();
    v10 = sub_2649CC004(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2649C6000, v2, v3, "Timeout of %{public}s cancelled", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  v1[8] = v1[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C528, &unk_264B551F0);
  sub_264B41384();
  v11 = v1[1];

  return v11();
}

uint64_t sub_264B02258(uint64_t a1, int a2, uint64_t a3, double a4)
{
  v5 = v4;
  v22 = a3;
  v21 = a2;
  v20 = a1;
  v19 = sub_264B41544();
  v7 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_264B414F4();
  MEMORY[0x28223BE20](v11, v12);
  v13 = sub_264B40EE4();
  MEMORY[0x28223BE20](v13 - 8, v14);
  sub_2649CB2F0();
  sub_264B40EC4();
  v23 = MEMORY[0x277D84F90];
  sub_264B068A8(&qword_27FF88CA0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88CA8, &unk_264B471C0);
  sub_264A5CB98();
  sub_264B41684();
  (*(v7 + 104))(v10, *MEMORY[0x277D85260], v19);
  *(v4 + 48) = sub_264B41574();
  *(v4 + 56) = 0;
  v15 = OBJC_IVAR____TtC16ScreenSharingKit43RapportBackedMediaTransportDeviceDiscoverer_continuation;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C4F8, &qword_264B55190);
  (*(*(v16 - 8) + 56))(v5 + v15, 1, 1, v16);
  *(v5 + 16) = a4;
  *(v5 + 24) = v20;
  *(v5 + 32) = v21 & 1;
  *(v5 + 40) = v22;
  return v5;
}

void sub_264B02520(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  swift_weakInit();
  v22 = sub_264B0678C;
  v23 = v6;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_2649D68F4;
  v21 = &block_descriptor_50;
  v7 = _Block_copy(&v18);

  [a3 setInterruptionHandler_];
  _Block_release(v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v22 = sub_264B067F8;
  v23 = v8;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_2649D68F4;
  v21 = &block_descriptor_54;
  v9 = _Block_copy(&v18);

  [a3 setInvalidationHandler_];
  _Block_release(v9);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a1;
  v11[4] = a2;
  v22 = sub_264B06850;
  v23 = v11;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_2649F5890;
  v21 = &block_descriptor_61;
  v12 = _Block_copy(&v18);

  [a3 setDeviceFoundHandler_];
  _Block_release(v12);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = a2;
  v22 = sub_264B0689C;
  v23 = v14;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_264B03054;
  v21 = &block_descriptor_68_0;
  v15 = _Block_copy(&v18);

  [a3 setDeviceChangedHandler_];
  _Block_release(v15);
  v22 = sub_264B030C8;
  v23 = 0;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_2649F5890;
  v21 = &block_descriptor_71;
  v16 = _Block_copy(&v18);
  [a3 setDeviceLostHandler_];
  _Block_release(v16);
  v22 = sub_264B03214;
  v23 = 0;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_264B03398;
  v21 = &block_descriptor_74;
  v17 = _Block_copy(&v18);
  [a3 setDiscoverySessionStateChangedHandler_];
  _Block_release(v17);
}

uint64_t sub_264B02924(uint64_t a1, uint64_t (*a2)(void), const char *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v31 = a4;
  v32 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C4F8, &qword_264B55190);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C500, &qword_264B551B0);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v30 - v18;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v20 = sub_264B40964();
  __swift_project_value_buffer(v20, qword_27FFA71D0);
  v21 = sub_264B40944();
  v22 = a2();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_2649C6000, v21, v22, a3, v23, 2u);
    MEMORY[0x266749940](v23, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = result;
    v26 = OBJC_IVAR____TtC16ScreenSharingKit43RapportBackedMediaTransportDeviceDiscoverer_continuation;
    swift_beginAccess();
    sub_2649D046C(v25 + v26, v19, &qword_27FF8C500, &qword_264B551B0);
    if ((*(v8 + 48))(v19, 1, v7))
    {
      sub_2649D04D4(v19, &qword_27FF8C500, &qword_264B551B0);
    }

    else
    {
      (*(v8 + 16))(v11, v19, v7);
      v27 = sub_2649D04D4(v19, &qword_27FF8C500, &qword_264B551B0);
      v31(v27);
      v28 = swift_allocError();
      *v29 = 1;
      v33 = v28;
      sub_264B411D4();
      (*(v8 + 8))(v11, v7);
    }

    (*(v8 + 56))(v16, 1, 1, v7);
    swift_beginAccess();
    sub_264B065B0(v16, v25 + v26);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_264B02C98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v8 = sub_264B40964();
    __swift_project_value_buffer(v8, qword_27FFA71D0);
    v9 = a1;
    v10 = sub_264B40944();
    v11 = sub_264B414B4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138543362;
      *(v12 + 4) = v9;
      *v13 = v9;
      v14 = v9;
      _os_log_impl(&dword_2649C6000, v10, v11, "Discovery [Found] - device: %{public}@", v12, 0xCu);
      sub_2649D04D4(v13, &unk_27FF89880, &unk_264B46B20);
      MEMORY[0x266749940](v13, -1, -1);
      MEMORY[0x266749940](v12, -1, -1);
    }

    sub_264B03424(v9, a3, a4);
  }

  return result;
}

uint64_t sub_264B02E34(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v9 = sub_264B40964();
    __swift_project_value_buffer(v9, qword_27FFA71D0);
    v10 = a1;
    v11 = sub_264B40944();
    v12 = sub_264B414B4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v13 = 138543618;
      *(v13 + 4) = v10;
      *v14 = v10;
      *(v13 + 12) = 2082;
      type metadata accessor for RPDeviceChangeFlags(0);
      v15 = v10;
      v16 = sub_264B41064();
      v18 = a5;
      v19 = sub_2649CC004(v16, v17, &v21);

      *(v13 + 14) = v19;
      a5 = v18;
      _os_log_impl(&dword_2649C6000, v11, v12, "Discovery [Changed] - device: %{public}@; flags: %{public}s", v13, 0x16u);
      sub_2649D04D4(v14, &unk_27FF89880, &unk_264B46B20);
      MEMORY[0x266749940](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x266749940](v20, -1, -1);
      MEMORY[0x266749940](v13, -1, -1);
    }

    sub_264B03424(v10, a4, a5);
  }

  return result;
}

void sub_264B03054(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_264B030C8(void *a1)
{
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71D0);
  v3 = a1;
  oslog = sub_264B40944();
  v4 = sub_264B414B4();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&dword_2649C6000, oslog, v4, "Discovery [Lost] - device: %{public}@", v5, 0xCu);
    sub_2649D04D4(v6, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v6, -1, -1);
    MEMORY[0x266749940](v5, -1, -1);
  }
}

void sub_264B03214(char a1)
{
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  __swift_project_value_buffer(v1, qword_27FFA71D0);
  oslog = sub_264B40944();
  v2 = sub_264B414B4();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446210;
    type metadata accessor for RPRemoteDisplayDiscoveryState(0);
    v5 = sub_264B41064();
    v7 = sub_2649CC004(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_2649C6000, oslog, v2, "Discovery state changed to: %{public}s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x266749940](v4, -1, -1);
    MEMORY[0x266749940](v3, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_264B03398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = sub_264B41044();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4(a2, v5, v7);
}

void sub_264B03424(void *a1, uint64_t a2, uint64_t a3)
{
  v80 = a3;
  v81 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C500, &qword_264B551B0);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v76 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C4F8, &qword_264B55190);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v78 = &v76 - v16;
  v17 = sub_264B40F14();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = (&v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v3 + 48);
  *v21 = v22;
  (*(v18 + 104))(v21, *MEMORY[0x277D85200], v17);
  v23 = v22;
  LOBYTE(v22) = sub_264B40F34();
  (*(v18 + 8))(v21, v17);
  if ((v22 & 1) == 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v24 = type metadata accessor for RapportBackedMediaTransportDevice();
  v25 = swift_allocObject();
  v26 = [a1 persistentIdentifier];
  if (!v26)
  {
    swift_deallocPartialClassInstance();
    if (qword_27FF883E8 == -1)
    {
LABEL_13:
      v46 = sub_264B40964();
      __swift_project_value_buffer(v46, qword_27FFA71D0);
      v47 = a1;
      v48 = sub_264B40944();
      v49 = sub_264B41494();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v50 = 138543362;
        *(v50 + 4) = v47;
        *v51 = v47;
        v52 = v47;
        _os_log_impl(&dword_2649C6000, v48, v49, "Found device %{public}@ has no persistentIdentifier, ignoring device", v50, 0xCu);
        sub_2649D04D4(v51, &unk_27FF89880, &unk_264B46B20);
        MEMORY[0x266749940](v51, -1, -1);
        MEMORY[0x266749940](v50, -1, -1);
      }

      return;
    }

LABEL_28:
    swift_once();
    goto LABEL_13;
  }

  v27 = v26;
  v77 = v14;
  v28 = v9;
  v29 = sub_264B41044();
  v31 = v30;

  v25[2] = v29;
  v25[3] = v31;
  v79 = v25;
  v25[4] = a1;
  v32 = v80;
  if ((v29 != v81 || v31 != v80) && (sub_264B41AA4() & 1) == 0)
  {
    v65 = qword_27FF883E8;
    v66 = a1;
    if (v65 != -1)
    {
      swift_once();
    }

    v67 = sub_264B40964();
    __swift_project_value_buffer(v67, qword_27FFA71D0);
    v68 = v66;

    v40 = sub_264B40944();
    v69 = sub_264B41484();

    if (!os_log_type_enabled(v40, v69))
    {
      goto LABEL_25;
    }

    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v72 = v32;
    v73 = swift_slowAlloc();
    v82[0] = v73;
    *v70 = 138543618;
    *(v70 + 4) = v68;
    *v71 = v68;
    *(v70 + 12) = 2082;
    v74 = v68;
    *(v70 + 14) = sub_2649CC004(v81, v72, v82);
    _os_log_impl(&dword_2649C6000, v40, v69, "Found device %{public}@, but it does not match the expectedDeviceID %{public}s, ignoring device", v70, 0x16u);
    sub_2649D04D4(v71, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v71, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v73);
    MEMORY[0x266749940](v73, -1, -1);
    v45 = v70;
    goto LABEL_24;
  }

  v33 = a1;
  v34 = [v33 statusFlags];
  v35 = *(v3 + 40);
  if ((v35 & ~v34) != 0)
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v53 = sub_264B40964();
    __swift_project_value_buffer(v53, qword_27FFA71D0);
    v54 = v33;

    v40 = sub_264B40944();
    v55 = sub_264B41494();

    if (!os_log_type_enabled(v40, v55))
    {
      goto LABEL_25;
    }

    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v82[0] = v58;
    *v56 = 138543874;
    *(v56 + 4) = v54;
    *v57 = v54;
    *(v56 + 12) = 2082;
    v83 = [v54 &off_279B7A5C8 + 7];
    type metadata accessor for RPStatusFlags(0);
    v59 = sub_264B41064();
    v61 = sub_2649CC004(v59, v60, v82);

    *(v56 + 14) = v61;
    *(v56 + 22) = 2082;
    v83 = v35;
    v62 = sub_264B41064();
    v64 = sub_2649CC004(v62, v63, v82);

    *(v56 + 24) = v64;
    _os_log_impl(&dword_2649C6000, v40, v55, "Found device %{public}@ has status flags: %{public}s, which is not a superset of: %{public}s, ignoring device", v56, 0x20u);
    sub_2649D04D4(v57, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v57, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266749940](v58, -1, -1);
    v45 = v56;
    goto LABEL_24;
  }

  v36 = OBJC_IVAR____TtC16ScreenSharingKit43RapportBackedMediaTransportDeviceDiscoverer_continuation;
  swift_beginAccess();
  sub_2649D046C(v3 + v36, v12, &qword_27FF8C500, &qword_264B551B0);
  v37 = v77;
  if ((*(v77 + 48))(v12, 1, v13) == 1)
  {
    sub_2649D04D4(v12, &qword_27FF8C500, &qword_264B551B0);
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v38 = sub_264B40964();
    __swift_project_value_buffer(v38, qword_27FFA71D0);
    v39 = v33;
    v40 = sub_264B40944();
    v41 = sub_264B41494();

    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_25;
    }

    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v42 = 138543362;
    *(v42 + 4) = v39;
    *v43 = v39;
    v44 = v39;
    _os_log_impl(&dword_2649C6000, v40, v41, "Found device %{public}@, but discovery was stopped before we could return it", v42, 0xCu);
    sub_2649D04D4(v43, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v43, -1, -1);
    v45 = v42;
LABEL_24:
    MEMORY[0x266749940](v45, -1, -1);
LABEL_25:

    return;
  }

  v75 = v78;
  (*(v37 + 32))(v78, v12, v13);
  v82[3] = v24;
  v82[4] = sub_264B068A8(&qword_27FF8C538, type metadata accessor for RapportBackedMediaTransportDevice, &unk_264B53B0C);
  v82[0] = v79;
  sub_264B411E4();
  (*(v37 + 8))(v75, v13);
  (*(v37 + 56))(v28, 1, 1, v13);
  swift_beginAccess();
  sub_264B065B0(v28, v3 + v36);
  swift_endAccess();
}

uint64_t sub_264B03DB8()
{
  sub_2649D04D4(v0 + OBJC_IVAR____TtC16ScreenSharingKit43RapportBackedMediaTransportDeviceDiscoverer_continuation, &qword_27FF8C500, &qword_264B551B0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RapportBackedMediaTransportDeviceDiscoverer(uint64_t a1)
{
  result = qword_27FF8C4E0;
  if (!qword_27FF8C4E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264B03E90(uint64_t a1)
{
  sub_264B03F54(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_264B03F54(uint64_t a1)
{
  if (!qword_27FF8C4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8C4F8, &qword_264B55190);
    v1 = sub_264B41614();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF8C4F0);
    }
  }
}

uint64_t sub_264B03FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_264B41844();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C500, &qword_264B551B0);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264B040B4, 0, 0);
}

uint64_t sub_264B040B4()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = OBJC_IVAR____TtC16ScreenSharingKit43RapportBackedMediaTransportDeviceDiscoverer_continuation;
  swift_beginAccess();
  sub_2649D046C(v2 + v3, v1, &qword_27FF8C500, &qword_264B551B0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C4F8, &qword_264B55190);
  LODWORD(v2) = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_2649D04D4(v1, &qword_27FF8C500, &qword_264B551B0);
  if (v2 == 1)
  {
    v5 = v0[8];
    v6 = [objc_allocWithZone(MEMORY[0x277D441E0]) init];
    v0[13] = v6;
    [v6 setDispatchQueue_];
    if ((*(v5 + 32) & 1) == 0)
    {
      [v6 setRssiThreshold_];
    }

    v8 = v0[7];
    v7 = v0[8];
    v9 = v0[6];
    v10 = *(v7 + 56);
    *(v7 + 56) = v6;
    v11 = v6;

    v12 = sub_264B41C04();
    v14 = v13;
    v15 = swift_allocObject();
    v0[14] = v15;
    v15[2] = v7;
    v15[3] = v9;
    v15[4] = v8;
    v15[5] = v11;
    v16 = v11;

    sub_264B41834();
    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_264B04378;
    v18 = v0[11];
    v19 = v0[5];

    return sub_264B005C0(v19, v12, v14, v18, &unk_264B551C0, v15);
  }

  else
  {
    sub_264B04AD4();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_264B04378()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = v2[11];
  v4 = v2[10];
  v5 = v2[9];

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_264B045A8;
  }

  else
  {
    v6 = sub_264B04508;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_264B04508()
{
  v1 = v0[13];
  v2 = v0[8];
  [v1 invalidate];

  v3 = *(v2 + 56);
  *(v2 + 56) = 0;

  v4 = v0[1];

  return v4();
}

uint64_t sub_264B045A8()
{
  v1 = v0[13];
  v2 = v0[8];
  [v1 invalidate];

  v3 = *(v2 + 56);
  *(v2 + 56) = 0;

  v4 = v0[1];

  return v4();
}

uint64_t sub_264B0463C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_264B04664, 0, 0);
}

uint64_t sub_264B04664()
{
  sub_264B41324();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 40);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B520, &unk_264B50B68);
  *v5 = v0;
  v5[1] = sub_264B047C4;
  v7 = *(v0 + 16);

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000013, 0x8000000264B61570, sub_264B065A4, v3, v6);
}

uint64_t sub_264B047C4()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_264B04968;
  }

  else
  {

    v2 = sub_264B048E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264B048E0()
{
  v1 = *(v0 + 72);
  sub_264B41324();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(*(v0 + 16));
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264B04968()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264B049CC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264B04A14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2649CD850;

  return sub_264B0463C(a1, v4, v5, v7, v6);
}

unint64_t sub_264B04AD4()
{
  result = qword_27FF8C508;
  if (!qword_27FF8C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C508);
  }

  return result;
}

uint64_t sub_264B04B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C500, &qword_264B551B0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v25 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C4F8, &qword_264B55190);
  v19 = *(v18 - 8);
  (*(v19 + 16))(v17, a1, v18);
  (*(v19 + 56))(v17, 0, 1, v18);
  v20 = OBJC_IVAR____TtC16ScreenSharingKit43RapportBackedMediaTransportDeviceDiscoverer_continuation;
  swift_beginAccess();
  sub_264B065B0(v17, a2 + v20);
  swift_endAccess();
  sub_264B02520(a3, a4, a5);
  v21 = sub_264B41274();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = a5;
  v22[5] = a2;
  v23 = a5;

  sub_264A10C20(0, 0, v13, &unk_264B55278, v22);
}

uint64_t sub_264B04D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C4F8, &qword_264B55190);
  v5[27] = v6;
  v5[28] = *(v6 - 8);
  v5[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C500, &qword_264B551B0);
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264B04E80, 0, 0);
}

uint64_t sub_264B04E80()
{
  sub_264B41324();
  v1 = v0[25];
  v0[2] = v0;
  v0[3] = sub_264B05148;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB20, &unk_264B46F80);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2649F4D64;
  v0[13] = &block_descriptor_17;
  v0[14] = v2;
  [v1 activateWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_264B05148()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_264B052CC;
  }

  else
  {
    v2 = sub_264B05258;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264B05258()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264B052CC(uint64_t a1)
{
  swift_willThrow();
  v2 = v1[31];
  v3 = v1[32];
  v4 = v1[27];
  v5 = v1[28];
  v6 = v1[26];
  v7 = OBJC_IVAR____TtC16ScreenSharingKit43RapportBackedMediaTransportDeviceDiscoverer_continuation;
  swift_beginAccess();
  sub_2649D046C(v6 + v7, v2, &qword_27FF8C500, &qword_264B551B0);
  if ((*(v5 + 48))(v2, 1, v4))
  {
    v8 = v1[31];

    sub_2649D04D4(v8, &qword_27FF8C500, &qword_264B551B0);
  }

  else
  {
    v9 = v1[31];
    v11 = v1[28];
    v10 = v1[29];
    v12 = v1[27];
    (*(v11 + 16))(v10, v9, v12);
    sub_2649D04D4(v9, &qword_27FF8C500, &qword_264B551B0);
    v1[24] = v3;
    sub_264B411D4();
    (*(v11 + 8))(v10, v12);
  }

  v13 = v1[30];
  (*(v1[28] + 56))(v13, 1, 1, v1[27]);
  swift_beginAccess();
  sub_264B065B0(v13, v6 + v7);
  swift_endAccess();

  v14 = v1[1];

  return v14();
}

uint64_t sub_264B054A8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t a6)
{
  v37 = a3;
  v38 = a6;
  v40 = a4;
  v39 = a2;
  v36 = a1;
  v7 = sub_264B41844();
  v32 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C528, &unk_264B551F0);
  v31 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v31 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v31 - v19;
  v21 = *a5;
  v34 = a5[1];
  v35 = v21;
  v22 = sub_264B41274();
  (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
  (*(v12 + 16))(v16, v36, v11);
  (*(v8 + 16))(&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v38, v7);
  v23 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v24 = v23 + v13;
  v25 = (*(v8 + 80) + (v24 & 0xFFFFFFFFFFFFFFF8) + 24) & ~*(v8 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  v27 = v37;
  *(v26 + 4) = v39;
  *(v26 + 5) = v27;
  (*(v12 + 32))(&v26[v23], v16, v31);
  v26[v24] = v40;
  v28 = &v26[v24 & 0xFFFFFFFFFFFFFFF8];
  v29 = v34;
  *(v28 + 1) = v35;
  *(v28 + 2) = v29;
  (*(v8 + 32))(&v26[v25], v33, v32);

  sub_264A10C20(0, 0, v20, &unk_264B55208, v26);
}

uint64_t sub_264B057B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, _OWORD *a8)
{
  *(v8 + 56) = a6;
  *(v8 + 64) = v10;
  *(v8 + 88) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 32) = a1;
  *(v8 + 16) = *a8;
  return MEMORY[0x2822009F8](sub_264B057F4, 0, 0);
}

uint64_t sub_264B057F4()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *(v4 + 16) = *(v0 + 40);
  *(v4 + 32) = v3;
  *(v4 + 40) = v1;
  *(v4 + 48) = v0 + 16;
  *(v4 + 56) = v2;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_264B05908;
  v6 = *(v0 + 32);
  v7 = MEMORY[0x277D84F78] + 8;
  v8 = MEMORY[0x277D84F78] + 8;
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v6, v7, v8, 0, 0, &unk_264B55218, v4, v9);
}

uint64_t sub_264B05908()
{

  return MEMORY[0x2822009F8](sub_2649F5338, 0, 0);
}

uint64_t sub_264B05A20()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C528, &unk_264B551F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_264B41844();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 24) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

void sub_264B05B8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C528, &unk_264B551F0);
  sub_264B41844();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649CD850;

  JUMPOUT(0x264B057B8);
}

uint64_t sub_264B05D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7)
{
  v14 = *a7;
  v15 = a7[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_2649CD850;

  return sub_264B00FAC(a1, a2, a3, a4, a5, a6, v14, v15);
}

uint64_t sub_264B05E2C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_2649E0EE4;

  return sub_264B05D34(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_264B05F20()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C528, &unk_264B551F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264B05FF8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C528, &unk_264B551F0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2649E0EE4;

  return sub_264B01628(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_264B06108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v12 = *a4;
  v13 = a4[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_2649E0EE4;

  return sub_264B01C24(a1, a2, a3, v12, v13, a5, a6);
}

uint64_t sub_264B061E4()
{
  v1 = sub_264B41844();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C528, &unk_264B551F0);
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

uint64_t sub_264B06340(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_264B41844() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C528, &unk_264B551F0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2649E0EE4;

  return sub_264B06108(a1, v10, v11, v1 + 4, v1 + v6, v1 + v9);
}

uint64_t sub_264B064B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264B064EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2649E0EE4;

  return sub_264A9FC14(a1, v4);
}

uint64_t sub_264B065B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C500, &qword_264B551B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_264B06620()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264B06668(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2649E0EE4;

  return sub_264B04D70(a1, v4, v5, v7, v6);
}

uint64_t sub_264B06754()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t objectdestroy_57Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_264B068A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_264B06904()
{
  result = qword_27FF8C540;
  if (!qword_27FF8C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C540);
  }

  return result;
}

void sub_264B06984(_BYTE *a1@<X8>)
{
  if (*(v1 + 8) < 0)
  {
    *a1 = byte_264B56A36[*v1];
  }

  else
  {
    *a1 = 14;
  }
}

unint64_t sub_264B069B0(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
    case 3:
    case 14:
      result = 0xD000000000000019;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 4:
      result = 0xD00000000000001FLL;
      break;
    case 5:
      result = 0xD000000000000024;
      break;
    case 6:
      result = 0xD000000000000026;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD00000000000001CLL;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
    case 13:
      result = 0xD00000000000001BLL;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 15:
      result = 0xD00000000000002CLL;
      break;
    case 16:
      result = 0xD00000000000001ALL;
      break;
    case 17:
    case 18:
      result = 0xD000000000000010;
      break;
    case 19:
    case 21:
      result = 0xD000000000000011;
      break;
    case 20:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_264B06C70@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_264B0CA34(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_264B06CA4(uint64_t a1)
{
  v2 = sub_264B08D5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B06CE0(uint64_t a1)
{
  v2 = sub_264B08D5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B06D1C(uint64_t a1)
{
  v2 = sub_264B08F00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B06D58(uint64_t a1)
{
  v2 = sub_264B08F00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B06D94(uint64_t a1)
{
  v2 = sub_264B08EAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B06DD0(uint64_t a1)
{
  v2 = sub_264B08EAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B06E0C(uint64_t a1)
{
  v2 = sub_264B09050();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B06E48(uint64_t a1)
{
  v2 = sub_264B09050();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B06E84(uint64_t a1)
{
  v2 = sub_264B09494();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B06EC0(uint64_t a1)
{
  v2 = sub_264B09494();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B06EFC(uint64_t a1)
{
  v2 = sub_264B08DB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B06F38(uint64_t a1)
{
  v2 = sub_264B08DB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B06F74(uint64_t a1)
{
  v2 = sub_264B08E58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B06FB0(uint64_t a1)
{
  v2 = sub_264B08E58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B06FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1885697139 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_264B41AA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_264B07084(uint64_t a1)
{
  v2 = sub_264B09248();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B070C0(uint64_t a1)
{
  v2 = sub_264B09248();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B070FC(uint64_t a1)
{
  v2 = sub_264B09440();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B07138(uint64_t a1)
{
  v2 = sub_264B09440();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B07174(uint64_t a1)
{
  v2 = sub_264B093EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B071B0(uint64_t a1)
{
  v2 = sub_264B093EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B071EC(uint64_t a1)
{
  v2 = sub_264B09344();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B07228(uint64_t a1)
{
  v2 = sub_264B09344();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B07264(uint64_t a1)
{
  v2 = sub_264B092F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B072A0(uint64_t a1)
{
  v2 = sub_264B092F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B072DC(uint64_t a1)
{
  v2 = sub_264B09398();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B07318(uint64_t a1)
{
  v2 = sub_264B09398();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B07354(uint64_t a1)
{
  v2 = sub_264B08E04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B07390(uint64_t a1)
{
  v2 = sub_264B08E04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B073CC(uint64_t a1)
{
  v2 = sub_264B0914C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B07408(uint64_t a1)
{
  v2 = sub_264B0914C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B07444(uint64_t a1)
{
  v2 = sub_264B091F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B07480(uint64_t a1)
{
  v2 = sub_264B091F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B074BC(uint64_t a1)
{
  v2 = sub_264B090F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B074F8(uint64_t a1)
{
  v2 = sub_264B090F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B07534(uint64_t a1)
{
  v2 = sub_264B091A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B07570(uint64_t a1)
{
  v2 = sub_264B091A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B075AC(uint64_t a1)
{
  v2 = sub_264B08FA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B075E8(uint64_t a1)
{
  v2 = sub_264B08FA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B07624(uint64_t a1)
{
  v2 = sub_264B08FFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B07660(uint64_t a1)
{
  v2 = sub_264B08FFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B0769C(uint64_t a1)
{
  v2 = sub_264B08F54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B076D8(uint64_t a1)
{
  v2 = sub_264B08F54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B07714(uint64_t a1)
{
  v2 = sub_264B090A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B07750(uint64_t a1)
{
  v2 = sub_264B090A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B0778C(uint64_t a1)
{
  v2 = sub_264B094E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B077C8(uint64_t a1)
{
  v2 = sub_264B094E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ServerError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C548, &qword_264B55340);
  v152 = *(v3 - 8);
  v153 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v151 = &v96 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C550, &qword_264B55348);
  v149 = *(v6 - 8);
  v150 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v148 = &v96 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C558, &qword_264B55350);
  v146 = *(v9 - 8);
  v147 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v145 = &v96 - v11;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C560, &qword_264B55358);
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144, v12);
  v142 = &v96 - v13;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C568, &qword_264B55360);
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141, v14);
  v139 = &v96 - v15;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C570, &qword_264B55368);
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138, v16);
  v136 = &v96 - v17;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C578, &qword_264B55370);
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135, v18);
  v133 = &v96 - v19;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C580, &qword_264B55378);
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132, v20);
  v130 = &v96 - v21;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C588, &qword_264B55380);
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129, v22);
  v127 = &v96 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C590, &qword_264B55388);
  v158 = *(v24 - 8);
  v159 = v24;
  MEMORY[0x28223BE20](v24, v25);
  v157 = &v96 - v26;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C598, &qword_264B55390);
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126, v27);
  v124 = &v96 - v28;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C5A0, &qword_264B55398);
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123, v29);
  v121 = &v96 - v30;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C5A8, &qword_264B553A0);
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120, v31);
  v118 = &v96 - v32;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C5B0, &qword_264B553A8);
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117, v33);
  v115 = &v96 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C5B8, &qword_264B553B0);
  v155 = *(v35 - 8);
  v156 = v35;
  MEMORY[0x28223BE20](v35, v36);
  v154 = &v96 - v37;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C5C0, &qword_264B553B8);
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114, v38);
  v112 = &v96 - v39;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C5C8, &qword_264B553C0);
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111, v40);
  v109 = &v96 - v41;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C5D0, &qword_264B553C8);
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108, v42);
  v106 = &v96 - v43;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C5D8, &qword_264B553D0);
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105, v44);
  v103 = &v96 - v45;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C5E0, &qword_264B553D8);
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102, v46);
  v100 = &v96 - v47;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C5E8, &qword_264B553E0);
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99, v48);
  v50 = &v96 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C5F0, &qword_264B553E8);
  v97 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v52);
  v54 = &v96 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C5F8, &unk_264B553F0);
  v56 = *(v55 - 8);
  v161 = v55;
  v162 = v56;
  MEMORY[0x28223BE20](v55, v57);
  v59 = &v96 - v58;
  v60 = *v1;
  v61 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264B08D5C();
  v160 = v59;
  sub_264B41BD4();
  if (v61 >> 6)
  {
    if (v61 >> 6 == 1)
    {
      LOBYTE(v163) = 12;
      sub_264B090A4();
      v62 = v157;
      v64 = v160;
      v63 = v161;
      sub_264B419B4();
      v163 = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A3C8, &qword_264B57090);
      sub_264A72DD8(&qword_27FF8A3D0, sub_264A72B38, MEMORY[0x277D83B50]);
      v65 = v159;
      sub_264B41A24();
      (*(v158 + 8))(v62, v65);
      return (*(v162 + 8))(v64, v63);
    }

    else
    {
      switch(v60)
      {
        case 1:
          LOBYTE(v163) = 1;
          sub_264B09494();
          v86 = v160;
          v87 = v161;
          sub_264B419B4();
          (*(v98 + 8))(v50, v99);
          return (*(v162 + 8))(v86, v87);
        case 2:
          LOBYTE(v163) = 2;
          sub_264B09440();
          v82 = v100;
          v72 = v160;
          v71 = v161;
          sub_264B419B4();
          v75 = *(v101 + 8);
          v76 = v82;
          v77 = &v134;
          goto LABEL_26;
        case 3:
          LOBYTE(v163) = 3;
          sub_264B093EC();
          v84 = v103;
          v72 = v160;
          v71 = v161;
          sub_264B419B4();
          v75 = *(v104 + 8);
          v76 = v84;
          v77 = &v137;
          goto LABEL_26;
        case 4:
          LOBYTE(v163) = 4;
          sub_264B09398();
          v79 = v106;
          v72 = v160;
          v71 = v161;
          sub_264B419B4();
          v75 = *(v107 + 8);
          v76 = v79;
          v77 = &v140;
          goto LABEL_26;
        case 5:
          LOBYTE(v163) = 5;
          sub_264B09344();
          v91 = v109;
          v72 = v160;
          v71 = v161;
          sub_264B419B4();
          v75 = *(v110 + 8);
          v76 = v91;
          v77 = &v143;
          goto LABEL_26;
        case 6:
          LOBYTE(v163) = 6;
          sub_264B092F0();
          v93 = v112;
          v72 = v160;
          v71 = v161;
          sub_264B419B4();
          v75 = *(v113 + 8);
          v76 = v93;
          v77 = &v146;
          goto LABEL_26;
        case 7:
          LOBYTE(v163) = 8;
          sub_264B091F4();
          v85 = v115;
          v72 = v160;
          v71 = v161;
          sub_264B419B4();
          v75 = *(v116 + 8);
          v76 = v85;
          v77 = &v149;
          goto LABEL_26;
        case 8:
          LOBYTE(v163) = 9;
          sub_264B091A0();
          v95 = v118;
          v72 = v160;
          v71 = v161;
          sub_264B419B4();
          v75 = *(v119 + 8);
          v76 = v95;
          v77 = &v152;
          goto LABEL_26;
        case 9:
          LOBYTE(v163) = 10;
          sub_264B0914C();
          v81 = v121;
          v72 = v160;
          v71 = v161;
          sub_264B419B4();
          v75 = *(v122 + 8);
          v76 = v81;
          v77 = &v155;
          goto LABEL_26;
        case 10:
          LOBYTE(v163) = 11;
          sub_264B090F8();
          v94 = v124;
          v72 = v160;
          v71 = v161;
          sub_264B419B4();
          v75 = *(v125 + 8);
          v76 = v94;
          v77 = &v158;
          goto LABEL_26;
        case 11:
          LOBYTE(v163) = 13;
          sub_264B09050();
          v78 = v127;
          v72 = v160;
          v71 = v161;
          sub_264B419B4();
          v75 = *(v128 + 8);
          v76 = v78;
          v77 = &v161;
          goto LABEL_26;
        case 12:
          LOBYTE(v163) = 14;
          sub_264B08FFC();
          v80 = v130;
          v72 = v160;
          v71 = v161;
          sub_264B419B4();
          v75 = *(v131 + 8);
          v76 = v80;
          v77 = &v164;
          goto LABEL_26;
        case 13:
          LOBYTE(v163) = 15;
          sub_264B08FA8();
          v92 = v133;
          v72 = v160;
          v71 = v161;
          sub_264B419B4();
          v75 = *(v134 + 8);
          v76 = v92;
          v77 = &v165;
          goto LABEL_26;
        case 14:
          LOBYTE(v163) = 16;
          sub_264B08F54();
          v74 = v136;
          v72 = v160;
          v71 = v161;
          sub_264B419B4();
          v75 = *(v137 + 8);
          v76 = v74;
          v77 = &v166;
          goto LABEL_26;
        case 15:
          LOBYTE(v163) = 17;
          sub_264B08F00();
          v83 = v139;
          v72 = v160;
          v71 = v161;
          sub_264B419B4();
          v75 = *(v140 + 8);
          v76 = v83;
          v77 = &v167;
LABEL_26:
          v75(v76, *(v77 - 32));
          return (*(v162 + 8))(v72, v71);
        case 16:
          LOBYTE(v163) = 18;
          sub_264B08EAC();
          v73 = v142;
          v72 = v160;
          v71 = v161;
          sub_264B419B4();
          (*(v143 + 8))(v73, v144);
          return (*(v162 + 8))(v72, v71);
        case 17:
          LOBYTE(v163) = 19;
          sub_264B08E58();
          v88 = v145;
          v72 = v160;
          v71 = v161;
          sub_264B419B4();
          v90 = v146;
          v89 = v147;
          goto LABEL_30;
        case 18:
          LOBYTE(v163) = 20;
          sub_264B08E04();
          v88 = v148;
          v72 = v160;
          v71 = v161;
          sub_264B419B4();
          v90 = v149;
          v89 = v150;
          goto LABEL_30;
        case 19:
          LOBYTE(v163) = 21;
          sub_264B08DB0();
          v88 = v151;
          v72 = v160;
          v71 = v161;
          sub_264B419B4();
          v90 = v152;
          v89 = v153;
LABEL_30:
          (*(v90 + 8))(v88, v89);
          break;
        default:
          LOBYTE(v163) = 0;
          sub_264B094E8();
          v72 = v160;
          v71 = v161;
          sub_264B419B4();
          (*(v97 + 8))(v54, v51);
          break;
      }

      return (*(v162 + 8))(v72, v71);
    }
  }

  else
  {
    LOBYTE(v163) = 7;
    sub_264B09248();
    v67 = v154;
    v69 = v160;
    v68 = v161;
    sub_264B419B4();
    v163 = v60;
    v164 = v61;
    sub_264B0929C();
    v70 = v156;
    sub_264B41A24();
    (*(v155 + 8))(v67, v70);
    return (*(v162 + 8))(v69, v68);
  }
}

unint64_t sub_264B08D5C()
{
  result = qword_27FF8C600;
  if (!qword_27FF8C600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C600);
  }

  return result;
}

unint64_t sub_264B08DB0()
{
  result = qword_27FF8C608;
  if (!qword_27FF8C608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C608);
  }

  return result;
}

unint64_t sub_264B08E04()
{
  result = qword_27FF8C610;
  if (!qword_27FF8C610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C610);
  }

  return result;
}

unint64_t sub_264B08E58()
{
  result = qword_27FF8C618;
  if (!qword_27FF8C618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C618);
  }

  return result;
}

unint64_t sub_264B08EAC()
{
  result = qword_27FF8C620;
  if (!qword_27FF8C620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C620);
  }

  return result;
}

unint64_t sub_264B08F00()
{
  result = qword_27FF8C628;
  if (!qword_27FF8C628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C628);
  }

  return result;
}

unint64_t sub_264B08F54()
{
  result = qword_27FF8C630;
  if (!qword_27FF8C630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C630);
  }

  return result;
}

unint64_t sub_264B08FA8()
{
  result = qword_27FF8C638;
  if (!qword_27FF8C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C638);
  }

  return result;
}

unint64_t sub_264B08FFC()
{
  result = qword_27FF8C640;
  if (!qword_27FF8C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C640);
  }

  return result;
}

unint64_t sub_264B09050()
{
  result = qword_27FF8C648;
  if (!qword_27FF8C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C648);
  }

  return result;
}

unint64_t sub_264B090A4()
{
  result = qword_27FF8C650;
  if (!qword_27FF8C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C650);
  }

  return result;
}

unint64_t sub_264B090F8()
{
  result = qword_27FF8C658;
  if (!qword_27FF8C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C658);
  }

  return result;
}

unint64_t sub_264B0914C()
{
  result = qword_27FF8C660;
  if (!qword_27FF8C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C660);
  }

  return result;
}

unint64_t sub_264B091A0()
{
  result = qword_27FF8C668;
  if (!qword_27FF8C668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C668);
  }

  return result;
}

unint64_t sub_264B091F4()
{
  result = qword_27FF8C670;
  if (!qword_27FF8C670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C670);
  }

  return result;
}

unint64_t sub_264B09248()
{
  result = qword_27FF8C678;
  if (!qword_27FF8C678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C678);
  }

  return result;
}

unint64_t sub_264B0929C()
{
  result = qword_27FF8C680;
  if (!qword_27FF8C680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C680);
  }

  return result;
}

unint64_t sub_264B092F0()
{
  result = qword_27FF8C688;
  if (!qword_27FF8C688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C688);
  }

  return result;
}

unint64_t sub_264B09344()
{
  result = qword_27FF8C690;
  if (!qword_27FF8C690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C690);
  }

  return result;
}

unint64_t sub_264B09398()
{
  result = qword_27FF8C698;
  if (!qword_27FF8C698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C698);
  }

  return result;
}

unint64_t sub_264B093EC()
{
  result = qword_27FF8C6A0;
  if (!qword_27FF8C6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C6A0);
  }

  return result;
}

unint64_t sub_264B09440()
{
  result = qword_27FF8C6A8;
  if (!qword_27FF8C6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C6A8);
  }

  return result;
}

unint64_t sub_264B09494()
{
  result = qword_27FF8C6B0;
  if (!qword_27FF8C6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C6B0);
  }

  return result;
}

unint64_t sub_264B094E8()
{
  result = qword_27FF8C6B8;
  if (!qword_27FF8C6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C6B8);
  }

  return result;
}

uint64_t ServerError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v183 = a2;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C6C0, &qword_264B55400);
  v161 = *(v182 - 8);
  MEMORY[0x28223BE20](v182, v3);
  v178 = &v116 - v4;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C6C8, &qword_264B55408);
  v159 = *(v160 - 8);
  MEMORY[0x28223BE20](v160, v5);
  v177 = &v116 - v6;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C6D0, &qword_264B55410);
  v157 = *(v158 - 8);
  MEMORY[0x28223BE20](v158, v7);
  v176 = &v116 - v8;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C6D8, &qword_264B55418);
  v155 = *(v156 - 8);
  MEMORY[0x28223BE20](v156, v9);
  v175 = &v116 - v10;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C6E0, &qword_264B55420);
  v153 = *(v154 - 8);
  MEMORY[0x28223BE20](v154, v11);
  v174 = &v116 - v12;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C6E8, &qword_264B55428);
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152, v13);
  v173 = &v116 - v14;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C6F0, &qword_264B55430);
  v149 = *(v150 - 8);
  MEMORY[0x28223BE20](v150, v15);
  v172 = &v116 - v16;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C6F8, &qword_264B55438);
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148, v17);
  v171 = &v116 - v18;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C700, &qword_264B55440);
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144, v19);
  v169 = &v116 - v20;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C708, &qword_264B55448);
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146, v21);
  v170 = &v116 - v22;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C710, &qword_264B55450);
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142, v23);
  v168 = &v116 - v24;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C718, &qword_264B55458);
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140, v25);
  v167 = &v116 - v26;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C720, &qword_264B55460);
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138, v27);
  v166 = &v116 - v28;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C728, &qword_264B55468);
  v134 = *(v136 - 8);
  MEMORY[0x28223BE20](v136, v29);
  v165 = &v116 - v30;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C730, &qword_264B55470);
  v135 = *(v133 - 8);
  MEMORY[0x28223BE20](v133, v31);
  v181 = &v116 - v32;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C738, &qword_264B55478);
  v132 = *(v131 - 8);
  MEMORY[0x28223BE20](v131, v33);
  v180 = &v116 - v34;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C740, &qword_264B55480);
  v130 = *(v129 - 8);
  MEMORY[0x28223BE20](v129, v35);
  v164 = &v116 - v36;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C748, &qword_264B55488);
  v128 = *(v125 - 8);
  MEMORY[0x28223BE20](v125, v37);
  v163 = &v116 - v38;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C750, &qword_264B55490);
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127, v39);
  v179 = &v116 - v40;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C758, &qword_264B55498);
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124, v41);
  v162 = &v116 - v42;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C760, &qword_264B554A0);
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122, v43);
  v45 = &v116 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C768, &qword_264B554A8);
  v120 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v47);
  v49 = &v116 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C770, &unk_264B554B0);
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v52);
  v54 = &v116 - v53;
  v55 = a1[3];
  v191 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v55);
  sub_264B08D5C();
  v56 = v184;
  sub_264B41BC4();
  if (v56)
  {
LABEL_8:
    v72 = v191;
    return __swift_destroy_boxed_opaque_existential_0(v72);
  }

  v117 = v49;
  v116 = v46;
  v118 = v45;
  v57 = v179;
  v58 = v180;
  v59 = v181;
  v119 = 0;
  v61 = v182;
  v60 = v183;
  v184 = v51;
  v62 = sub_264B419A4();
  v63 = (2 * *(v62 + 16)) | 1;
  v187 = v62;
  v188 = v62 + 32;
  v189 = 0;
  v190 = v63;
  v64 = sub_2649E04C4();
  if (v189 != v190 >> 1)
  {
LABEL_6:
    v69 = sub_264B417A4();
    swift_allocError();
    v71 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88900, &qword_264B445C0);
    *v71 = &type metadata for ServerError;
    sub_264B41904();
    sub_264B41794();
    (*(*(v69 - 8) + 104))(v71, *MEMORY[0x277D84160], v69);
    swift_willThrow();
LABEL_7:
    (*(v184 + 8))(v54, v50);
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  switch(v64)
  {
    case 0:
      LOBYTE(v185) = 0;
      sub_264B094E8();
      v65 = v117;
      v66 = v119;
      sub_264B418F4();
      if (v66)
      {
        goto LABEL_7;
      }

      (*(v120 + 8))(v65, v116);
      (*(v184 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v67 = 0;
      v68 = 0x80;
      break;
    case 1:
      LOBYTE(v185) = 1;
      sub_264B09494();
      v95 = v118;
      v96 = v119;
      sub_264B418F4();
      if (v96)
      {
        goto LABEL_7;
      }

      (*(v121 + 8))(v95, v122);
      (*(v184 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v68 = 0x80;
      v67 = 1;
      break;
    case 2:
      LOBYTE(v185) = 2;
      sub_264B09440();
      v87 = v162;
      v88 = v119;
      sub_264B418F4();
      if (v88)
      {
        goto LABEL_7;
      }

      (*(v123 + 8))(v87, v124);
      (*(v184 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v68 = 0x80;
      v67 = 2;
      break;
    case 3:
      LOBYTE(v185) = 3;
      sub_264B093EC();
      v91 = v119;
      sub_264B418F4();
      if (v91)
      {
        goto LABEL_7;
      }

      (*(v126 + 8))(v57, v127);
      (*(v184 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v68 = 0x80;
      v67 = 3;
      break;
    case 4:
      LOBYTE(v185) = 4;
      sub_264B09398();
      v80 = v163;
      v81 = v119;
      sub_264B418F4();
      if (v81)
      {
        goto LABEL_7;
      }

      (*(v128 + 8))(v80, v125);
      (*(v184 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v68 = 0x80;
      v67 = 4;
      break;
    case 5:
      LOBYTE(v185) = 5;
      sub_264B09344();
      v101 = v164;
      v102 = v119;
      sub_264B418F4();
      if (v102)
      {
        goto LABEL_7;
      }

      (*(v130 + 8))(v101, v129);
      (*(v184 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v68 = 0x80;
      v67 = 5;
      break;
    case 6:
      LOBYTE(v185) = 6;
      sub_264B092F0();
      v107 = v119;
      sub_264B418F4();
      if (v107)
      {
        goto LABEL_7;
      }

      (*(v132 + 8))(v58, v131);
      (*(v184 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v68 = 0x80;
      v67 = 6;
      break;
    case 7:
      LOBYTE(v185) = 7;
      sub_264B09248();
      v92 = v119;
      sub_264B418F4();
      if (v92)
      {
        goto LABEL_7;
      }

      sub_264B0B284();
      v93 = v133;
      sub_264B41984();
      v94 = v184;
      (*(v135 + 8))(v59, v93);
      (*(v94 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v67 = v185;
      v68 = v186;
      break;
    case 8:
      LOBYTE(v185) = 8;
      sub_264B091F4();
      v112 = v165;
      v113 = v119;
      sub_264B418F4();
      if (v113)
      {
        goto LABEL_7;
      }

      (*(v134 + 8))(v112, v136);
      (*(v184 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v68 = 0x80;
      v67 = 7;
      break;
    case 9:
      LOBYTE(v185) = 9;
      sub_264B091A0();
      v85 = v166;
      v86 = v119;
      sub_264B418F4();
      if (v86)
      {
        goto LABEL_7;
      }

      (*(v137 + 8))(v85, v138);
      (*(v184 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v68 = 0x80;
      v67 = 8;
      break;
    case 10:
      LOBYTE(v185) = 10;
      sub_264B0914C();
      v110 = v167;
      v111 = v119;
      sub_264B418F4();
      if (v111)
      {
        goto LABEL_7;
      }

      (*(v139 + 8))(v110, v140);
      (*(v184 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v68 = 0x80;
      v67 = 9;
      break;
    case 11:
      LOBYTE(v185) = 11;
      sub_264B090F8();
      v78 = v168;
      v79 = v119;
      sub_264B418F4();
      if (v79)
      {
        goto LABEL_7;
      }

      (*(v141 + 8))(v78, v142);
      (*(v184 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v68 = 0x80;
      v67 = 10;
      break;
    case 12:
      LOBYTE(v185) = 12;
      sub_264B090A4();
      v82 = v170;
      v83 = v119;
      sub_264B418F4();
      if (v83)
      {
        goto LABEL_7;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A3C8, &qword_264B57090);
      sub_264A72DD8(&qword_27FF8A460, sub_264A72E50, MEMORY[0x277D83B70]);
      v84 = v146;
      sub_264B41984();
      (*(v145 + 8))(v82, v84);
      (*(v184 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v67 = v185;
      v68 = 64;
      break;
    case 13:
      LOBYTE(v185) = 13;
      sub_264B09050();
      v105 = v169;
      v106 = v119;
      sub_264B418F4();
      if (v106)
      {
        goto LABEL_7;
      }

      (*(v143 + 8))(v105, v144);
      (*(v184 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v68 = 0x80;
      v67 = 11;
      break;
    case 14:
      LOBYTE(v185) = 14;
      sub_264B08FFC();
      v76 = v171;
      v77 = v119;
      sub_264B418F4();
      if (v77)
      {
        goto LABEL_7;
      }

      (*(v147 + 8))(v76, v148);
      (*(v184 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v68 = 0x80;
      v67 = 12;
      break;
    case 15:
      LOBYTE(v185) = 15;
      sub_264B08FA8();
      v89 = v172;
      v90 = v119;
      sub_264B418F4();
      if (v90)
      {
        goto LABEL_7;
      }

      (*(v149 + 8))(v89, v150);
      (*(v184 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v68 = 0x80;
      v67 = 13;
      break;
    case 16:
      LOBYTE(v185) = 16;
      sub_264B08F54();
      v74 = v173;
      v75 = v119;
      sub_264B418F4();
      if (v75)
      {
        goto LABEL_7;
      }

      (*(v151 + 8))(v74, v152);
      (*(v184 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v68 = 0x80;
      v67 = 14;
      break;
    case 17:
      LOBYTE(v185) = 17;
      sub_264B08F00();
      v97 = v174;
      v98 = v119;
      sub_264B418F4();
      if (v98)
      {
        goto LABEL_7;
      }

      (*(v153 + 8))(v97, v154);
      (*(v184 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v68 = 0x80;
      v67 = 15;
      break;
    case 18:
      LOBYTE(v185) = 18;
      sub_264B08EAC();
      v108 = v175;
      v109 = v119;
      sub_264B418F4();
      if (v109)
      {
        goto LABEL_7;
      }

      (*(v155 + 8))(v108, v156);
      (*(v184 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v68 = 0x80;
      v67 = 16;
      break;
    case 19:
      LOBYTE(v185) = 19;
      sub_264B08E58();
      v114 = v176;
      v115 = v119;
      sub_264B418F4();
      if (v115)
      {
        goto LABEL_7;
      }

      (*(v157 + 8))(v114, v158);
      (*(v184 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v68 = 0x80;
      v67 = 17;
      break;
    case 20:
      LOBYTE(v185) = 20;
      sub_264B08E04();
      v99 = v177;
      v100 = v119;
      sub_264B418F4();
      if (v100)
      {
        goto LABEL_7;
      }

      (*(v159 + 8))(v99, v160);
      (*(v184 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v68 = 0x80;
      v67 = 18;
      break;
    case 21:
      LOBYTE(v185) = 21;
      sub_264B08DB0();
      v103 = v178;
      v104 = v119;
      sub_264B418F4();
      if (v104)
      {
        goto LABEL_7;
      }

      (*(v161 + 8))(v103, v61);
      (*(v184 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v68 = 0x80;
      v67 = 19;
      break;
    default:
      goto LABEL_6;
  }

  v72 = v191;
  *v60 = v67;
  *(v60 + 8) = v68;
  return __swift_destroy_boxed_opaque_existential_0(v72);
}

unint64_t sub_264B0B284()
{
  result = qword_27FF8C778;
  if (!qword_27FF8C778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C778);
  }

  return result;
}

uint64_t _s16ScreenSharingKit11ServerErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 >> 6)
  {
    if (v3 >> 6 == 1)
    {
      if ((v5 & 0xC0) != 0x40)
      {
        goto LABEL_6;
      }
    }

    else
    {
      switch(v2)
      {
        case 1:
          if ((v5 & 0xC0) != 0x80 || v4 != 1)
          {
            goto LABEL_6;
          }

          break;
        case 2:
          if ((v5 & 0xC0) != 0x80 || v4 != 2)
          {
            goto LABEL_6;
          }

          break;
        case 3:
          if ((v5 & 0xC0) != 0x80 || v4 != 3)
          {
            goto LABEL_6;
          }

          break;
        case 4:
          if ((v5 & 0xC0) != 0x80 || v4 != 4)
          {
            goto LABEL_6;
          }

          break;
        case 5:
          if ((v5 & 0xC0) != 0x80 || v4 != 5)
          {
            goto LABEL_6;
          }

          break;
        case 6:
          if ((v5 & 0xC0) != 0x80 || v4 != 6)
          {
            goto LABEL_6;
          }

          break;
        case 7:
          if ((v5 & 0xC0) != 0x80 || v4 != 7)
          {
            goto LABEL_6;
          }

          break;
        case 8:
          if ((v5 & 0xC0) != 0x80 || v4 != 8)
          {
            goto LABEL_6;
          }

          break;
        case 9:
          if ((v5 & 0xC0) != 0x80 || v4 != 9)
          {
            goto LABEL_6;
          }

          break;
        case 10:
          if ((v5 & 0xC0) != 0x80 || v4 != 10)
          {
            goto LABEL_6;
          }

          break;
        case 11:
          if ((v5 & 0xC0) != 0x80 || v4 != 11)
          {
            goto LABEL_6;
          }

          break;
        case 12:
          if ((v5 & 0xC0) != 0x80 || v4 != 12)
          {
            goto LABEL_6;
          }

          break;
        case 13:
          if ((v5 & 0xC0) != 0x80 || v4 != 13)
          {
            goto LABEL_6;
          }

          break;
        case 14:
          if ((v5 & 0xC0) != 0x80 || v4 != 14)
          {
            goto LABEL_6;
          }

          break;
        case 15:
          if ((v5 & 0xC0) != 0x80 || v4 != 15)
          {
            goto LABEL_6;
          }

          break;
        case 16:
          if ((v5 & 0xC0) != 0x80 || v4 != 16)
          {
            goto LABEL_6;
          }

          break;
        case 17:
          if ((v5 & 0xC0) != 0x80 || v4 != 17)
          {
            goto LABEL_6;
          }

          break;
        case 18:
          if ((v5 & 0xC0) != 0x80 || v4 != 18)
          {
            goto LABEL_6;
          }

          break;
        case 19:
          if ((v5 & 0xC0) != 0x80 || v4 != 19)
          {
            goto LABEL_6;
          }

          break;
        default:
          if ((v5 & 0xC0) != 0x80 || v4 != 0)
          {
            goto LABEL_6;
          }

          break;
      }

      if (v5 != 128)
      {
        goto LABEL_6;
      }
    }

LABEL_128:
    v6 = 1;
    goto LABEL_129;
  }

  if (v5 < 0x40)
  {
    goto LABEL_128;
  }

LABEL_6:
  v6 = 0;
LABEL_129:
  sub_2649E1260(*a1, v3);
  sub_2649E1260(v4, v5);
  sub_2649E12A4(v2, v3);
  sub_2649E12A4(v4, v5);
  return v6;
}

uint64_t sub_264B0B5BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 9))
  {
    return (*a1 + 62);
  }

  v3 = (*(a1 + 8) & 0x3C | (*(a1 + 8) >> 6)) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_264B0B60C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 8) = 0;
    *result = a2 - 62;
    if (a3 >= 0x3E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_264B0B670(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x80;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ServerError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ServerError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_264B0B960()
{
  result = qword_27FF8C780;
  if (!qword_27FF8C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C780);
  }

  return result;
}

unint64_t sub_264B0B9B8()
{
  result = qword_27FF8C788;
  if (!qword_27FF8C788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C788);
  }

  return result;
}

unint64_t sub_264B0BA10()
{
  result = qword_27FF8C790;
  if (!qword_27FF8C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C790);
  }

  return result;
}

unint64_t sub_264B0BA68()
{
  result = qword_27FF8C798;
  if (!qword_27FF8C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C798);
  }

  return result;
}

unint64_t sub_264B0BAC0()
{
  result = qword_27FF8C7A0;
  if (!qword_27FF8C7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C7A0);
  }

  return result;
}

unint64_t sub_264B0BB18()
{
  result = qword_27FF8C7A8;
  if (!qword_27FF8C7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C7A8);
  }

  return result;
}

unint64_t sub_264B0BB70()
{
  result = qword_27FF8C7B0;
  if (!qword_27FF8C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C7B0);
  }

  return result;
}

unint64_t sub_264B0BBC8()
{
  result = qword_27FF8C7B8;
  if (!qword_27FF8C7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C7B8);
  }

  return result;
}

unint64_t sub_264B0BC20()
{
  result = qword_27FF8C7C0;
  if (!qword_27FF8C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C7C0);
  }

  return result;
}

unint64_t sub_264B0BC78()
{
  result = qword_27FF8C7C8;
  if (!qword_27FF8C7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C7C8);
  }

  return result;
}

unint64_t sub_264B0BCD0()
{
  result = qword_27FF8C7D0;
  if (!qword_27FF8C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C7D0);
  }

  return result;
}

unint64_t sub_264B0BD28()
{
  result = qword_27FF8C7D8;
  if (!qword_27FF8C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C7D8);
  }

  return result;
}

unint64_t sub_264B0BD80()
{
  result = qword_27FF8C7E0;
  if (!qword_27FF8C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C7E0);
  }

  return result;
}

unint64_t sub_264B0BDD8()
{
  result = qword_27FF8C7E8;
  if (!qword_27FF8C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C7E8);
  }

  return result;
}

unint64_t sub_264B0BE30()
{
  result = qword_27FF8C7F0;
  if (!qword_27FF8C7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C7F0);
  }

  return result;
}

unint64_t sub_264B0BE88()
{
  result = qword_27FF8C7F8;
  if (!qword_27FF8C7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C7F8);
  }

  return result;
}

unint64_t sub_264B0BEE0()
{
  result = qword_27FF8C800;
  if (!qword_27FF8C800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C800);
  }

  return result;
}

unint64_t sub_264B0BF38()
{
  result = qword_27FF8C808;
  if (!qword_27FF8C808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C808);
  }

  return result;
}

unint64_t sub_264B0BF90()
{
  result = qword_27FF8C810;
  if (!qword_27FF8C810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C810);
  }

  return result;
}

unint64_t sub_264B0BFE8()
{
  result = qword_27FF8C818;
  if (!qword_27FF8C818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C818);
  }

  return result;
}

unint64_t sub_264B0C040()
{
  result = qword_27FF8C820;
  if (!qword_27FF8C820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C820);
  }

  return result;
}

unint64_t sub_264B0C098()
{
  result = qword_27FF8C828;
  if (!qword_27FF8C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C828);
  }

  return result;
}

unint64_t sub_264B0C0F0()
{
  result = qword_27FF8C830;
  if (!qword_27FF8C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C830);
  }

  return result;
}

unint64_t sub_264B0C148()
{
  result = qword_27FF8C838;
  if (!qword_27FF8C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C838);
  }

  return result;
}

unint64_t sub_264B0C1A0()
{
  result = qword_27FF8C840;
  if (!qword_27FF8C840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C840);
  }

  return result;
}

unint64_t sub_264B0C1F8()
{
  result = qword_27FF8C848;
  if (!qword_27FF8C848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C848);
  }

  return result;
}

unint64_t sub_264B0C250()
{
  result = qword_27FF8C850;
  if (!qword_27FF8C850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C850);
  }

  return result;
}

unint64_t sub_264B0C2A8()
{
  result = qword_27FF8C858;
  if (!qword_27FF8C858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C858);
  }

  return result;
}

unint64_t sub_264B0C300()
{
  result = qword_27FF8C860;
  if (!qword_27FF8C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C860);
  }

  return result;
}

unint64_t sub_264B0C358()
{
  result = qword_27FF8C868;
  if (!qword_27FF8C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C868);
  }

  return result;
}

unint64_t sub_264B0C3B0()
{
  result = qword_27FF8C870;
  if (!qword_27FF8C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C870);
  }

  return result;
}

unint64_t sub_264B0C408()
{
  result = qword_27FF8C878;
  if (!qword_27FF8C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C878);
  }

  return result;
}

unint64_t sub_264B0C460()
{
  result = qword_27FF8C880;
  if (!qword_27FF8C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C880);
  }

  return result;
}

unint64_t sub_264B0C4B8()
{
  result = qword_27FF8C888;
  if (!qword_27FF8C888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C888);
  }

  return result;
}

unint64_t sub_264B0C510()
{
  result = qword_27FF8C890;
  if (!qword_27FF8C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C890);
  }

  return result;
}

unint64_t sub_264B0C568()
{
  result = qword_27FF8C898;
  if (!qword_27FF8C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C898);
  }

  return result;
}

unint64_t sub_264B0C5C0()
{
  result = qword_27FF8C8A0;
  if (!qword_27FF8C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C8A0);
  }

  return result;
}

unint64_t sub_264B0C618()
{
  result = qword_27FF8C8A8;
  if (!qword_27FF8C8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C8A8);
  }

  return result;
}

unint64_t sub_264B0C670()
{
  result = qword_27FF8C8B0;
  if (!qword_27FF8C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C8B0);
  }

  return result;
}

unint64_t sub_264B0C6C8()
{
  result = qword_27FF8C8B8;
  if (!qword_27FF8C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C8B8);
  }

  return result;
}

unint64_t sub_264B0C720()
{
  result = qword_27FF8C8C0;
  if (!qword_27FF8C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C8C0);
  }

  return result;
}

unint64_t sub_264B0C778()
{
  result = qword_27FF8C8C8;
  if (!qword_27FF8C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C8C8);
  }

  return result;
}

unint64_t sub_264B0C7D0()
{
  result = qword_27FF8C8D0;
  if (!qword_27FF8C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C8D0);
  }

  return result;
}

unint64_t sub_264B0C828()
{
  result = qword_27FF8C8D8;
  if (!qword_27FF8C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C8D8);
  }

  return result;
}

unint64_t sub_264B0C880()
{
  result = qword_27FF8C8E0;
  if (!qword_27FF8C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C8E0);
  }

  return result;
}

unint64_t sub_264B0C8D8()
{
  result = qword_27FF8C8E8;
  if (!qword_27FF8C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C8E8);
  }

  return result;
}

unint64_t sub_264B0C930()
{
  result = qword_27FF8C8F0;
  if (!qword_27FF8C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C8F0);
  }

  return result;
}

unint64_t sub_264B0C988()
{
  result = qword_27FF8C8F8;
  if (!qword_27FF8C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C8F8);
  }

  return result;
}

unint64_t sub_264B0C9E0()
{
  result = qword_27FF8C900[0];
  if (!qword_27FF8C900[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF8C900);
  }

  return result;
}

uint64_t sub_264B0CA34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_264B41AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000264B61640 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000264B61660 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000264B61680 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000264B616A0 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000264B616C0 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000026 && 0x8000000264B616F0 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000264B61720 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000264B61740 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000264B61760 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000264B61780 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000264B617A0 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000264B617C0 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000264B617E0 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000264B61800 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000002CLL && 0x8000000264B61820 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000264B61850 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000264B61870 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000264B61890 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000264B618B0 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000264B618D0 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000264B618F0 == a2)
  {

    return 21;
  }

  else
  {
    v6 = sub_264B41AA4();

    if (v6)
    {
      return 21;
    }

    else
    {
      return 22;
    }
  }
}

uint64_t _s16ScreenSharingKit0aB7SessionC0abD5StateO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 4)
  {
    if (*(a1 + 16) <= 6u)
    {
      if (v4 == 5)
      {
        if (v7 != 5)
        {
          goto LABEL_52;
        }

        goto LABEL_31;
      }

      if (v7 == 6)
      {
        sub_264ACB170(*a2, *(a2 + 8), 6u);
        sub_264ACB170(v3, v2, 6u);
        v13 = sub_264B0EF58(v3, v6);
        sub_264AB62DC(v3, v2, 6u);
        sub_264AB62DC(v6, v5, 6u);
        return v13 & 1;
      }

      goto LABEL_52;
    }

    if (v4 == 7)
    {
      if (v7 == 7)
      {
        sub_264ACB170(*a2, *(a2 + 8), 7u);
        sub_264ACB170(v3, v2, 7u);
        sub_264AB62DC(v3, v2, 7u);
        v8 = v6;
        v9 = v5;
        v10 = 7;
        goto LABEL_34;
      }

      goto LABEL_52;
    }

    if (v4 == 8)
    {
      if (v7 == 8)
      {
        sub_264ACB170(*a2, *(a2 + 8), 8u);
        sub_264ACB170(v3, v2, 8u);
        sub_264AB62DC(v3, v2, 8u);
        v8 = v6;
        v9 = v5;
        v10 = 8;
        goto LABEL_34;
      }

      goto LABEL_52;
    }

    if (v3 <= 1)
    {
      if (!(v3 | v2))
      {
        if (v7 != 9 || v5 | v6)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      }

      if (v7 != 9 || v6 != 1)
      {
        goto LABEL_52;
      }
    }

    else if (v3 ^ 2 | v2)
    {
      if (v3 ^ 3 | v2)
      {
        if (v7 != 9 || v6 != 4)
        {
          goto LABEL_52;
        }
      }

      else if (v7 != 9 || v6 != 3)
      {
        goto LABEL_52;
      }
    }

    else if (v7 != 9 || v6 != 2)
    {
      goto LABEL_52;
    }

    if (v5)
    {
      goto LABEL_52;
    }

LABEL_51:
    sub_264ACB170(*a2, *(a2 + 8), 9u);
    sub_264AB62DC(v3, v2, 9u);
    v8 = v6;
    v9 = v5;
    v10 = 9;
    goto LABEL_34;
  }

  if (*(a1 + 16) > 1u)
  {
    if (v4 == 2)
    {
      if (v7 != 2)
      {
        goto LABEL_52;
      }
    }

    else if (v4 == 3)
    {
      if (v7 != 3)
      {
        goto LABEL_52;
      }
    }

    else if (v7 != 4)
    {
      goto LABEL_52;
    }

    goto LABEL_31;
  }

  if (*(a1 + 16))
  {
    if (v7 == 1)
    {
      goto LABEL_31;
    }
  }

  else if (!*(a2 + 16))
  {
LABEL_31:
    sub_264ACB170(*a2, *(a2 + 8), v7);
    sub_264ACB170(v3, v2, v4);
    sub_264ACB170(v6, v5, v7);
    sub_264ACB170(v3, v2, v4);
    sub_264AB62DC(v3, v2, v4);
    sub_264AB62DC(v6, v5, v7);
    if (v3 != v6 || v2 != v5)
    {
      v12 = sub_264B41AA4();
      sub_264AB62DC(v6, v5, v7);
      sub_264AB62DC(v3, v2, v4);
      return v12 & 1;
    }

    sub_264AB62DC(v3, v2, v7);
    v8 = v3;
    v9 = v2;
    v10 = v4;
LABEL_34:
    sub_264AB62DC(v8, v9, v10);
    return 1;
  }

LABEL_52:
  sub_264ACB170(*a2, *(a2 + 8), v7);
  sub_264ACB170(v3, v2, v4);
  sub_264AB62DC(v3, v2, v4);
  sub_264AB62DC(v6, v5, v7);
  return 0;
}

uint64_t get_enum_tag_for_layout_string_16ScreenSharingKit0aB7SessionC0abD5StateO(uint64_t a1)
{
  if ((*(a1 + 16) & 0xFu) <= 8)
  {
    return *(a1 + 16) & 0xF;
  }

  else
  {
    return (*a1 + 9);
  }
}

uint64_t sub_264B0D490(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 17))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 16);
  if (v3 <= 9)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_264B0D4D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 16) = 0;
    *result = a2 - 247;
    *(result + 8) = 0;
    if (a3 >= 0xF7)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_264B0D51C(uint64_t result, unsigned int a2)
{
  if (a2 >= 9)
  {
    *result = a2 - 9;
    *(result + 8) = 0;
    LOBYTE(a2) = 9;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_264B0D5A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A070, &qword_264B53F20);
  sub_264AF568C();
  return sub_264B40AB4();
}

uint64_t sub_264B0D600()
{
  v1 = v0;
  if (*(v0 + 24))
  {
    goto LABEL_7;
  }

  v2 = *(v0 + 16);
  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  *(v0 + 16) = v3;
  *(v0 + 24) = 0;
  if (qword_27FF88410 != -1)
  {
LABEL_9:
    swift_once();
  }

  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FF8AE88);
  v5 = sub_264B40944();
  v6 = sub_264B41484();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = v3;
    _os_log_impl(&dword_2649C6000, v5, v6, "UHIDKitBackedControlEventConsumerVendor sessionID: %ld", v7, 0xCu);
    MEMORY[0x266749940](v7, -1, -1);
  }

LABEL_7:
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v11 = *(v1 + 40);
  v10 = *(v1 + 48);
  v12 = *(v1 + 32);
  type metadata accessor for UHIDKitBackedControlEventConsumer(0);
  swift_allocObject();

  v13 = v12;
  v14 = sub_264AB0974(v8, v9, v11, v10, v12);

  sub_264B0D83C();
  return v14;
}

uint64_t sub_264B0D788()
{

  return swift_deallocClassInstance();
}

uint64_t sub_264B0D7FC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
}

uint64_t sub_264B0D810@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264B0D600();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_264B0D83C()
{
  result = qword_27FF8B5A8;
  if (!qword_27FF8B5A8)
  {
    type metadata accessor for UHIDKitBackedControlEventConsumer(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B5A8);
  }

  return result;
}

uint64_t sub_264B0D8A8()
{
  if (v0[7])
  {

    sub_264B41304();
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  sub_2649CB67C(v0[8], v0[9]);

  return swift_deallocClassInstance();
}

uint64_t sub_264B0D954(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v17 - v8;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 1;
  if (*(v2 + 56))
  {

    sub_264B41304();
  }

  *(v2 + 56) = 0;

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  *(v2 + 96) = 0;
  v10 = sub_264B41274();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_weakInit();
  sub_2649CB5C0(v2 + 16, v18);
  sub_264B41244();

  v12 = sub_264B41234();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  sub_2649D2AAC(v18, (v13 + 4));
  v13[9] = a1;
  v13[10] = a2;
  v13[11] = v11;

  v15 = sub_2649F62D0(0, 0, v9, &unk_264B56D78, v13);
  sub_264A6E820(v9);
  *(v3 + 56) = v15;
}

uint64_t sub_264B0DB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[5] = a5;
  v8 = sub_264B41844();
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();
  v7[11] = sub_264B41244();
  v7[12] = sub_264B41234();

  return MEMORY[0x2822009F8](sub_264B0DC30, 0, 0);
}

uint64_t sub_264B0DC30(uint64_t a1)
{
  sub_264B41B14();
  v2 = swift_task_alloc();
  v1[13] = v2;
  *v2 = v1;
  v2[1] = sub_264B0DCF0;
  v4 = v1[5];
  v3 = v1[6];

  return sub_2649FE7A8(v4, v3, 0, 0, 1);
}

uint64_t sub_264B0DCF0()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[9];
    v3 = v2[10];
    v5 = v2[8];

    (*(v4 + 8))(v3, v5);
    v6 = sub_264B0DF14;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    (*(v2[9] + 8))(v2[10], v2[8]);
    v9 = sub_264B411C4();
    v11 = v10;
    v6 = sub_264B0DE70;
    v7 = v9;
    v8 = v11;
  }

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_264B0DE70()
{

  if ((sub_264B41314() & 1) == 0)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_264B0DF8C();
    }
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264B0DF14()
{
  v1 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264B0E194, v1, v0);
}

uint64_t sub_264B0DF8C()
{
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;
  if (*(v0 + 56))
  {

    sub_264B41304();
  }

  *(v0 + 56) = 0;

  v2 = *(v0 + 64);
  if (v2)
  {
    v3 = *(v0 + 72);

    v2(v4);

    return sub_2649CB67C(v2, v3);
  }

  return result;
}

uint64_t sub_264B0E040()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264B0E078()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_264B0E0C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649CD850;

  return sub_264B0DB54(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

uint64_t sub_264B0E198()
{

  sub_264B409E4();

  sub_264B40994();

  return swift_deallocClassInstance();
}

uint64_t sub_264B0E248()
{
  v1 = v0;
  v24 = sub_264B41594();
  v2 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C380, &unk_264B56E00);
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v23 - v9;
  v29 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C368, &unk_264B54500);
  swift_allocObject();
  *(v0 + 16) = sub_264B40A14();
  *(v0 + 32) = 0;
  v11 = objc_opt_self();
  v12 = [v11 currentDevice];
  [v12 setBatteryMonitoringEnabled_];

  v13 = [v11 currentDevice];
  v14 = [v13 batteryState];

  v28 = (v14 & 0xFFFFFFFFFFFFFFFELL) == 2;
  sub_264B409F4();
  v15 = [v11 currentDevice];
  v16 = [objc_opt_self() defaultCenter];
  sub_264B415A4();

  *(swift_allocObject() + 16) = v15;
  sub_264AFB1E4();
  v17 = v15;
  v18 = v24;
  sub_264B40AF4();

  (*(v2 + 8))(v5, v18);
  sub_2649CB4C8(&qword_27FF8C390, &qword_27FF8C380, &unk_264B56E00, MEMORY[0x277CBCC08]);
  v19 = v25;
  v20 = sub_264B40AB4();

  (*(v26 + 8))(v10, v19);
  v27 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A638, &unk_264B4BC10);
  sub_2649CB4C8(&qword_27FF8A640, &qword_27FF8A638, &unk_264B4BC10, MEMORY[0x277CBCD90]);
  sub_2649CB4C8(&qword_27FF8C398, &qword_27FF8C368, &unk_264B54500, MEMORY[0x277CBCE40]);
  v21 = sub_264B40B34();

  *(v1 + 24) = v21;
  return v1;
}

uint64_t sub_264B0E654()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C360, &unk_264B56DF0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v9 - v4;
  if (*(v0 + 32))
  {
    v6 = *(v0 + 32);
  }

  else
  {
    v9[1] = *(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C368, &unk_264B54500);
    sub_2649CB4C8(&qword_27FF8C370, &qword_27FF8C368, &unk_264B54500, MEMORY[0x277CBCE48]);
    v7 = v0;
    sub_264B40B44();
    sub_2649CB4C8(&qword_27FF8C378, &qword_27FF8C360, &unk_264B56DF0, MEMORY[0x277CBCBE0]);
    v6 = sub_264B40AB4();
    (*(v2 + 8))(v5, v1);
    *(v7 + 32) = v6;
  }

  return v6;
}

void sub_264B0E834(BOOL *a1@<X8>)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 batteryState];

  *a1 = (v3 & 0xFFFFFFFFFFFFFFFELL) == 2;
}

uint64_t sub_264B0E8A4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264B0E8E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6E49656369766564;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xEB00000000657355;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xD000000000000011;
    v5 = 0x8000000264B58BE0;
  }

  else if (a1 == 3)
  {
    v4 = 0x6F68706F7263696DLL;
    v5 = 0xEF6573556E49656ELL;
  }

  else
  {
    v4 = 0x6E496172656D6163;
    v5 = 0xEB00000000657355;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE700000000000000;
    v7 = 0x6E49656369766564;
    v8 = 0xEB00000000657355;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0xD000000000000011;
    v6 = 0x8000000264B58BE0;
    v7 = 0x6F68706F7263696DLL;
    v8 = 0xEF6573556E49656ELL;
    if (a2 != 3)
    {
      v7 = 0x6E496172656D6163;
      v8 = 0xEB00000000657355;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_264B41AA4();
  }

  return v12 & 1;
}

uint64_t sub_264B0EAA0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE600000000000000;
    v12 = 0xE800000000000000;
    v13 = 0x6E6F697461727544;
    if (a1 != 2)
    {
      v13 = 0x646F43726F727245;
      v12 = 0xE900000000000065;
    }

    v14 = 0x6F436E6F73616552;
    if (a1)
    {
      v11 = 0xEA00000000006564;
    }

    else
    {
      v14 = 0x6E6F73616552;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0x6A624F726F727245;
    v4 = 0xEB00000000746365;
    v5 = 0x7461746E6569724FLL;
    v6 = 0xEB000000006E6F69;
    if (a1 != 7)
    {
      v5 = 0x795468636E75614CLL;
      v6 = 0xEA00000000006570;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0x727453726F727245;
    v8 = 0xEB00000000676E69;
    if (a1 != 4)
    {
      v7 = 0x707954726F727245;
      v8 = 0xE900000000000065;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v17 = 0xEA00000000006564;
        if (v9 != 0x6F436E6F73616552)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v17 = 0xE600000000000000;
        if (v9 != 0x6E6F73616552)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_49;
    }

    if (a2 == 2)
    {
      v17 = 0xE800000000000000;
      if (v9 != 0x6E6F697461727544)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v18 = 0x646F43726F727245;
  }

  else
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v15 = 0x6A624F726F727245;
        v16 = 7627621;
      }

      else
      {
        if (a2 != 7)
        {
          v17 = 0xEA00000000006570;
          if (v9 != 0x795468636E75614CLL)
          {
            goto LABEL_51;
          }

          goto LABEL_49;
        }

        v15 = 0x7461746E6569724FLL;
        v16 = 7237481;
      }

      goto LABEL_40;
    }

    if (a2 == 4)
    {
      v15 = 0x727453726F727245;
      v16 = 6778473;
LABEL_40:
      v17 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      if (v9 != v15)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v18 = 0x707954726F727245;
  }

  v17 = 0xE900000000000065;
  if (v9 != v18)
  {
LABEL_51:
    v19 = sub_264B41AA4();
    goto LABEL_52;
  }

LABEL_49:
  if (v10 != v17)
  {
    goto LABEL_51;
  }

  v19 = 1;
LABEL_52:

  return v19 & 1;
}

uint64_t sub_264B0ED8C(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v2 = 0x646570706F7473;
    }

    else
    {
      v2 = 0x64657472617473;
    }

    v3 = 0xE700000000000000;
  }

  else if (a1 == 2)
  {
    v3 = 0x8000000264B58C30;
    v2 = 0xD000000000000019;
  }

  else if (a1 == 3)
  {
    v2 = 0xD000000000000011;
    v3 = 0x8000000264B58C50;
  }

  else
  {
    v2 = 0x746169746F67656ELL;
    v3 = 0xEF617461446E6F69;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v5 = 0x646570706F7473;
    }

    else
    {
      v5 = 0x64657472617473;
    }

    v4 = 0xE700000000000000;
    if (v2 != v5)
    {
      goto LABEL_26;
    }
  }

  else if (a2 == 2)
  {
    v4 = 0x8000000264B58C30;
    if (v2 != 0xD000000000000019)
    {
      goto LABEL_26;
    }
  }

  else if (a2 == 3)
  {
    v4 = 0x8000000264B58C50;
    if (v2 != 0xD000000000000011)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v4 = 0xEF617461446E6F69;
    if (v2 != 0x746169746F67656ELL)
    {
LABEL_26:
      v6 = sub_264B41AA4();
      goto LABEL_27;
    }
  }

  if (v3 != v4)
  {
    goto LABEL_26;
  }

  v6 = 1;
LABEL_27:

  return v6 & 1;
}

uint64_t sub_264B0EF58(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = *(result + 56);
  v28 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v29 = v9;
  v30 = result;
  if ((v7 & v5) == 0)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    sub_264B41B84();
    v31 = v12;
    sub_264B41084();

    v16 = sub_264B41BB4();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = *(*(a2 + 48) + v18);
      if (v20 <= 1)
      {
        break;
      }

      if (v20 == 2)
      {
        v21 = 0xD000000000000011;
        v22 = 0x8000000264B58BE0;
        if (v15 <= 1)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v20 == 3)
        {
          v21 = 0x6F68706F7263696DLL;
        }

        else
        {
          v21 = 0x6E496172656D6163;
        }

        if (v20 == 3)
        {
          v22 = 0xEF6573556E49656ELL;
        }

        else
        {
          v22 = 0xEB00000000657355;
        }

        if (v15 <= 1)
        {
          goto LABEL_43;
        }
      }

LABEL_24:
      v23 = 0x6F68706F7263696DLL;
      if (v15 != 3)
      {
        v23 = 0x6E496172656D6163;
      }

      v24 = 0xEF6573556E49656ELL;
      if (v15 != 3)
      {
        v24 = 0xEB00000000657355;
      }

      if (v15 == 2)
      {
        v25 = 0xD000000000000011;
      }

      else
      {
        v25 = v23;
      }

      if (v15 == 2)
      {
        v26 = 0x8000000264B58BE0;
      }

      else
      {
        v26 = v24;
      }

      if (v21 == v25)
      {
        goto LABEL_49;
      }

LABEL_50:
      v27 = sub_264B41AA4();

      if (v27)
      {
        goto LABEL_54;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }

    if (*(*(a2 + 48) + v18))
    {
      v21 = 0x6E49656369766564;
    }

    else
    {
      v21 = 0x6E776F6E6B6E75;
    }

    if (*(*(a2 + 48) + v18))
    {
      v22 = 0xEB00000000657355;
    }

    else
    {
      v22 = 0xE700000000000000;
    }

    if (v15 > 1)
    {
      goto LABEL_24;
    }

LABEL_43:
    if (!v15)
    {
      v26 = 0xE700000000000000;
      if (v21 == 0x6E776F6E6B6E75)
      {
        goto LABEL_49;
      }

      goto LABEL_50;
    }

    v26 = 0xEB00000000657355;
    if (v21 != 0x6E49656369766564)
    {
      goto LABEL_50;
    }

LABEL_49:
    if (v22 != v26)
    {
      goto LABEL_50;
    }

LABEL_54:
    v9 = v29;
    v3 = v30;
    v8 = v31;
  }

  while (v31);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v28 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_264B0F340(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_264B41B84();
    MEMORY[0x266748E90](v13);
    result = sub_264B41BB4();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (v13 != *(*(a2 + 48) + v15))
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_264B0F4B0(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6E776F6E6B6E75;
    v7 = 0x64656B636F6C62;
    if (a1 != 2)
    {
      v7 = 0x726F467964616572;
    }

    if (a1)
    {
      v6 = 0x696C616974696E69;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD00000000000001DLL;
    v2 = 0x4973726F736E6573;
    if (a1 != 9)
    {
      v2 = 0x7845726576726573;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000011;
    v4 = 0x657669746361;
    if (a1 != 6)
    {
      v4 = 0xD000000000000017;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_264B0F648(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CA70, &qword_264B57098);
  v88 = *(v3 - 8);
  v89 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v86 = &v61 - v5;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CA78, &qword_264B570A0);
  v85 = *(v87 - 8);
  MEMORY[0x28223BE20](v87, v6);
  v84 = &v61 - v7;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CA80, &qword_264B570A8);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83, v8);
  v81 = &v61 - v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CA88, &qword_264B570B0);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v10);
  v64 = &v61 - v11;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CA90, &qword_264B570B8);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v12);
  v61 = &v61 - v13;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CA98, &qword_264B570C0);
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v14);
  v67 = &v61 - v15;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CAA0, &qword_264B570C8);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72, v16);
  v70 = &v61 - v17;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CAA8, &qword_264B570D0);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75, v18);
  v73 = &v61 - v19;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CAB0, &qword_264B570D8);
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80, v20);
  v78 = &v61 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CAB8, &qword_264B570E0);
  v77 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v61 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CAC0, &qword_264B570E8);
  v76 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v61 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CAC8, &qword_264B570F0);
  v31 = *(v30 - 8);
  v98 = v30;
  v99 = v31;
  MEMORY[0x28223BE20](v30, v32);
  v34 = &v61 - v33;
  v35 = *v1;
  v95 = v1[1];
  v96 = v35;
  v36 = v1[2];
  v37 = v1[3];
  v38 = v1[5];
  v92 = v1[4];
  v90 = v36;
  v91 = v38;
  v93 = v1[6];
  v94 = v37;
  v39 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264B12380();
  v97 = v34;
  sub_264B41BD4();
  v40 = v39 >> 5;
  if (v39 >> 5 <= 2)
  {
    if (!v40)
    {
      v47 = v39 & 0x1F;
      LOBYTE(v100) = 1;
      sub_264B127C4();
      v41 = v97;
      v43 = v98;
      sub_264B419B4();
      v100 = v96;
      v101[0] = v95;
      v101[1] = v90;
      v101[2] = v94;
      v102[0] = v92;
      v102[1] = v91;
      v102[2] = v93;
      v103 = v47;
      sub_264A18A60();
      sub_264B41A24();
      (*(v77 + 8))(v25, v22);
      return (*(v99 + 8))(v41, v43);
    }

    v41 = v97;
    if (v40 == 1)
    {
      LOBYTE(v100) = 2;
      sub_264B12770();
      v42 = v78;
      v43 = v98;
      sub_264B419B4();
      v100 = v96;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A3C8, &qword_264B57090);
      sub_264A72DD8(&qword_27FF8A3D0, sub_264A72B38, MEMORY[0x277D83B50]);
      v44 = v80;
      sub_264B41A24();
      v45 = &v104;
    }

    else
    {
      LOBYTE(v100) = 8;
      sub_264B12524();
      v42 = v81;
      v43 = v98;
      sub_264B419B4();
      LOBYTE(v100) = v96;
      v101[0] = v95;
      sub_264B1298C();
      v44 = v83;
      sub_264B41A24();
      v45 = &v105;
    }

    goto LABEL_11;
  }

  if (v40 == 3)
  {
    LOBYTE(v100) = 9;
    sub_264B1247C();
    v42 = v84;
    v41 = v97;
    v43 = v98;
    sub_264B419B4();
    v100 = v96;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89D80, &qword_264B45588);
    sub_264B128C0(&qword_27FF8CAD8, sub_264B12938, MEMORY[0x277D83B50]);
    v44 = v87;
    sub_264B41A24();
    v45 = &v106;
LABEL_11:
    v46 = *(v45 - 32);
    goto LABEL_12;
  }

  if (v40 == 4)
  {
    LOBYTE(v100) = 10;
    sub_264B123D4();
    v42 = v86;
    v41 = v97;
    v43 = v98;
    sub_264B419B4();
    v100 = v96;
    LOBYTE(v101[0]) = v95;
    sub_264B1286C();
    v44 = v89;
    sub_264B419C4();
    v46 = v88;
LABEL_12:
    (*(v46 + 8))(v42, v44);
    return (*(v99 + 8))(v41, v43);
  }

  v49 = v92 | v91 | v93;
  if (v90 | v95 | v96 | v94 | v49 || v39 != 160)
  {
    v52 = v90 | v95 | v94 | v49;
    if (v39 == 160 && v96 == 1 && !v52)
    {
      LOBYTE(v100) = 3;
      sub_264B1271C();
      v53 = v73;
      v51 = v97;
      v50 = v98;
      sub_264B419B4();
      v54 = *(v74 + 8);
      v55 = v53;
      v56 = &v103;
    }

    else
    {
      v51 = v97;
      if (v39 == 160 && v96 == 2 && !v52)
      {
        LOBYTE(v100) = 4;
        sub_264B126C8();
        v57 = v70;
        v50 = v98;
        sub_264B419B4();
        v54 = *(v71 + 8);
        v55 = v57;
        v56 = v102;
      }

      else if (v39 == 160 && v96 == 3 && !v52)
      {
        LOBYTE(v100) = 5;
        sub_264B12674();
        v58 = v67;
        v50 = v98;
        sub_264B419B4();
        v54 = *(v68 + 8);
        v55 = v58;
        v56 = v101;
      }

      else if (v39 == 160 && v96 == 4 && !v52)
      {
        LOBYTE(v100) = 6;
        sub_264B12620();
        v59 = v61;
        v50 = v98;
        sub_264B419B4();
        v54 = *(v62 + 8);
        v55 = v59;
        v56 = &v95;
      }

      else
      {
        LOBYTE(v100) = 7;
        sub_264B125CC();
        v60 = v64;
        v50 = v98;
        sub_264B419B4();
        v54 = *(v65 + 8);
        v55 = v60;
        v56 = &v98;
      }
    }

    v54(v55, *(v56 - 32));
  }

  else
  {
    LOBYTE(v100) = 0;
    sub_264B12818();
    v51 = v97;
    v50 = v98;
    sub_264B419B4();
    (*(v76 + 8))(v29, v26);
  }

  return (*(v99 + 8))(v51, v50);
}

uint64_t sub_264B1038C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C990, &qword_264B57030);
  v96 = *(v93 - 8);
  MEMORY[0x28223BE20](v93, v3);
  v106 = &v73 - v4;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C998, &qword_264B57038);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95, v5);
  v101 = &v73 - v6;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C9A0, &qword_264B57040);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92, v7);
  v105 = &v73 - v8;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C9A8, &qword_264B57048);
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90, v9);
  v100 = &v73 - v10;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C9B0, &qword_264B57050);
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v11);
  v99 = &v73 - v12;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C9B8, &qword_264B57058);
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86, v13);
  v104 = &v73 - v14;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C9C0, &qword_264B57060);
  v84 = *(v77 - 8);
  MEMORY[0x28223BE20](v77, v15);
  v98 = &v73 - v16;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C9C8, &qword_264B57068);
  v81 = *(v80 - 8);
  MEMORY[0x28223BE20](v80, v17);
  v103 = &v73 - v18;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C9D0, &qword_264B57070);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83, v19);
  v97 = &v73 - v20;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C9D8, &qword_264B57078);
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79, v21);
  v23 = &v73 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C9E0, &qword_264B57080);
  v76 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v73 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C9E8, &qword_264B57088);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v73 - v31;
  v33 = a1[3];
  v117 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_264B12380();
  v34 = v107;
  sub_264B41BC4();
  if (v34)
  {
    goto LABEL_12;
  }

  v75 = v27;
  v74 = v24;
  v36 = v103;
  v35 = v104;
  v107 = 0;
  v37 = v105;
  v38 = v106;
  v39 = sub_264B419A4();
  v40 = (2 * *(v39 + 16)) | 1;
  v113 = v39;
  v114 = v39 + 32;
  v115 = 0;
  v116 = v40;
  v41 = sub_2649E04F8();
  if (v41 != 11 && v115 == v116 >> 1)
  {
    if (v41 > 4u)
    {
      if (v41 <= 7u)
      {
        v42 = v102;
        if (v41 != 5)
        {
          v43 = v107;
          if (v41 == 6)
          {
            LOBYTE(v108) = 6;
            sub_264B12620();
            v44 = v99;
            sub_264B418F4();
            if (!v43)
            {
              (*(v87 + 8))(v44, v88);
              (*(v29 + 8))(v32, v28);
              swift_unknownObjectRelease();
              v45 = 0uLL;
              v46 = -96;
              v47 = 4;
LABEL_39:
              v59 = 0uLL;
              v60 = 0uLL;
              goto LABEL_40;
            }
          }

          else
          {
            LOBYTE(v108) = 7;
            sub_264B125CC();
            v70 = v100;
            sub_264B418F4();
            if (!v43)
            {
              (*(v89 + 8))(v70, v90);
              (*(v29 + 8))(v32, v28);
              swift_unknownObjectRelease();
              v45 = 0uLL;
              v46 = -96;
              v47 = 5;
              goto LABEL_39;
            }
          }

          goto LABEL_44;
        }

        LOBYTE(v108) = 5;
        sub_264B12674();
        v65 = v107;
        sub_264B418F4();
        if (!v65)
        {
          (*(v85 + 8))(v35, v86);
          (*(v29 + 8))(v32, v28);
          swift_unknownObjectRelease();
          v45 = 0uLL;
          v46 = -96;
          v47 = 3;
          goto LABEL_34;
        }

        goto LABEL_44;
      }

      v55 = v102;
      if (v41 == 8)
      {
        LOBYTE(v108) = 8;
        sub_264B12524();
        v66 = v107;
        sub_264B418F4();
        if (v66)
        {
          goto LABEL_44;
        }

        sub_264B12578();
        v67 = v92;
        sub_264B41984();
        (*(v91 + 8))(v37, v67);
        (*(v29 + 8))(v32, v28);
        swift_unknownObjectRelease();
        v47 = v108;
        *&v45 = v109;
        v46 = 64;
      }

      else
      {
        if (v41 == 9)
        {
          LOBYTE(v108) = 9;
          sub_264B1247C();
          v56 = v101;
          v57 = v107;
          sub_264B418F4();
          if (v57)
          {
            goto LABEL_44;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89D80, &qword_264B45588);
          sub_264B128C0(&qword_27FF8CA10, sub_264B124D0, MEMORY[0x277D83B70]);
          v58 = v95;
          sub_264B41984();
          (*(v94 + 8))(v56, v58);
          (*(v29 + 8))(v32, v28);
          swift_unknownObjectRelease();
          v47 = v108;
          v46 = 96;
          goto LABEL_40;
        }

        LOBYTE(v108) = 10;
        sub_264B123D4();
        v71 = v107;
        sub_264B418F4();
        if (v71)
        {
          goto LABEL_44;
        }

        sub_264B12428();
        v72 = v93;
        sub_264B41924();
        (*(v96 + 8))(v38, v72);
        (*(v29 + 8))(v32, v28);
        swift_unknownObjectRelease();
        v47 = v108;
        *&v45 = v109;
        v46 = 0x80;
      }

      v52 = v117;
      v42 = v55;
      goto LABEL_41;
    }

    if (v41 <= 1u)
    {
      v61 = v107;
      if (!v41)
      {
        LOBYTE(v108) = 0;
        sub_264B12818();
        v62 = v75;
        sub_264B418F4();
        if (!v61)
        {
          (*(v76 + 8))(v62, v74);
          (*(v29 + 8))(v32, v28);
          swift_unknownObjectRelease();
          v47 = 0;
          v45 = 0uLL;
          v46 = -96;
          goto LABEL_39;
        }

        goto LABEL_44;
      }

      LOBYTE(v108) = 1;
      sub_264B127C4();
      sub_264B418F4();
      if (v61)
      {
        goto LABEL_44;
      }

      sub_264A18950();
      v69 = v79;
      sub_264B41984();
      (*(v78 + 8))(v23, v69);
      (*(v29 + 8))(v32, v28);
      swift_unknownObjectRelease();
      v47 = v108;
      v45 = v109;
      v59 = v110;
      v60 = v111;
      v46 = v112 & 1;
    }

    else
    {
      v54 = v107;
      if (v41 != 2)
      {
        if (v41 == 3)
        {
          LOBYTE(v108) = 3;
          sub_264B1271C();
          sub_264B418F4();
          v42 = v102;
          if (!v54)
          {
            (*(v81 + 8))(v36, v80);
            (*(v29 + 8))(v32, v28);
            swift_unknownObjectRelease();
            v45 = 0uLL;
            v46 = -96;
            v47 = 1;
LABEL_34:
            v59 = 0uLL;
            v60 = 0uLL;
            v52 = v117;
LABEL_41:
            *v42 = v47;
            *(v42 + 8) = v45;
            *(v42 + 24) = v59;
            *(v42 + 40) = v60;
            *(v42 + 56) = v46;
            return __swift_destroy_boxed_opaque_existential_0(v52);
          }
        }

        else
        {
          LOBYTE(v108) = 4;
          sub_264B126C8();
          v68 = v98;
          sub_264B418F4();
          v42 = v102;
          if (!v54)
          {
            (*(v84 + 8))(v68, v77);
            (*(v29 + 8))(v32, v28);
            swift_unknownObjectRelease();
            v45 = 0uLL;
            v46 = -96;
            v47 = 2;
            goto LABEL_34;
          }
        }

LABEL_44:
        (*(v29 + 8))(v32, v28);
        goto LABEL_11;
      }

      LOBYTE(v108) = 2;
      sub_264B12770();
      v63 = v97;
      sub_264B418F4();
      if (v54)
      {
        goto LABEL_44;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A3C8, &qword_264B57090);
      sub_264A72DD8(&qword_27FF8A460, sub_264A72E50, MEMORY[0x277D83B70]);
      v64 = v83;
      sub_264B41984();
      (*(v82 + 8))(v63, v64);
      (*(v29 + 8))(v32, v28);
      swift_unknownObjectRelease();
      v47 = v108;
      v46 = 32;
    }

LABEL_40:
    v52 = v117;
    v42 = v102;
    goto LABEL_41;
  }

  v48 = sub_264B417A4();
  swift_allocError();
  v49 = v32;
  v51 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88900, &qword_264B445C0);
  *v51 = &type metadata for ServerStatusEvent;
  sub_264B41904();
  sub_264B41794();
  (*(*(v48 - 8) + 104))(v51, *MEMORY[0x277D84160], v48);
  swift_willThrow();
  (*(v29 + 8))(v49, v28);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v52 = v117;
  return __swift_destroy_boxed_opaque_existential_0(v52);
}

uint64_t sub_264B11498(uint64_t a1)
{
  v2 = sub_264B12620();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B114D4(uint64_t a1)
{
  v2 = sub_264B12620();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B11510(uint64_t a1)
{
  v2 = sub_264B12674();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B1154C(uint64_t a1)
{
  v2 = sub_264B12674();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B11588(uint64_t a1)
{
  v2 = sub_264B12770();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B115C4(uint64_t a1)
{
  v2 = sub_264B12770();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B11608@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_264B13630(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_264B1163C(uint64_t a1)
{
  v2 = sub_264B12380();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B11678(uint64_t a1)
{
  v2 = sub_264B12380();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B116D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6556726576726573 && a2 == 0xED00006E6F697372)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_264B41AA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_264B11768(uint64_t a1)
{
  v2 = sub_264B127C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B117A4(uint64_t a1)
{
  v2 = sub_264B127C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B117E0(uint64_t a1)
{
  v2 = sub_264B1271C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B1181C(uint64_t a1)
{
  v2 = sub_264B1271C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B11858(uint64_t a1)
{
  v2 = sub_264B126C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B11894(uint64_t a1)
{
  v2 = sub_264B126C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B118D0(uint64_t a1)
{
  v2 = sub_264B12524();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B1190C(uint64_t a1)
{
  v2 = sub_264B12524();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B11948(uint64_t a1)
{
  v2 = sub_264B125CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B11984(uint64_t a1)
{
  v2 = sub_264B125CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B119C0(uint64_t a1)
{
  v2 = sub_264B1247C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B119FC(uint64_t a1)
{
  v2 = sub_264B1247C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B11A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_264B41AA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_264B11AD0(uint64_t a1)
{
  v2 = sub_264B123D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B11B0C(uint64_t a1)
{
  v2 = sub_264B123D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B11B48(uint64_t a1)
{
  v2 = sub_264B12818();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B11B84(uint64_t a1)
{
  v2 = sub_264B12818();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B11BF4(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v35[0] = *a1;
  v35[1] = v2;
  *v36 = a1[2];
  v3 = *v36;
  v4 = a2[1];
  v37 = *a2;
  *v38 = v4;
  v6 = *a2;
  v5 = a2[1];
  *&v38[16] = a2[2];
  *&v38[25] = *(a2 + 41);
  v7 = *(a1 + 41);
  *&v36[9] = v7;
  v39[0] = v35[0];
  v39[1] = v2;
  v40[0] = v3;
  *(v40 + 9) = v7;
  *&v41[9] = *(a2 + 41);
  v8 = a2[2];
  v40[3] = v5;
  *v41 = v8;
  v40[2] = v6;
  v10 = BYTE8(v35[0]);
  v9 = *&v35[0];
  v11 = HIBYTE(v7) >> 5;
  if (v11 > 2)
  {
    if (v11 != 3)
    {
      if (v11 != 4)
      {
        v18 = *v36 | *&v36[8] | (v7 >> 56);
        if (v2 | *(&v35[0] + 1) | *&v35[0] | *(&v2 + 1) | v18 || HIBYTE(v7) != 160)
        {
          v23 = v2 | *(&v35[0] + 1) | *(&v2 + 1) | v18;
          if (HIBYTE(v7) == 160 && *&v35[0] == 1 && !v23)
          {
            if ((v38[40] & 0xE0) != 0xA0 || v38[40] != 160 || v37 != 1)
            {
              goto LABEL_40;
            }
          }

          else if (HIBYTE(v7) == 160 && *&v35[0] == 2 && !v23)
          {
            if ((v38[40] & 0xE0) != 0xA0 || v38[40] != 160 || v37 != 2)
            {
              goto LABEL_40;
            }
          }

          else if (HIBYTE(v7) == 160 && *&v35[0] == 3 && !v23)
          {
            if ((v38[40] & 0xE0) != 0xA0 || v38[40] != 160 || v37 != 3)
            {
              goto LABEL_40;
            }
          }

          else if (HIBYTE(v7) == 160 && *&v35[0] == 4 && !v23)
          {
            if ((v38[40] & 0xE0) != 0xA0 || v38[40] != 160 || v37 != 4)
            {
              goto LABEL_40;
            }
          }

          else if ((v38[40] & 0xE0) != 0xA0 || v38[40] != 160 || v37 != 5)
          {
            goto LABEL_40;
          }

          v21 = *(&v37 + 1);
          v26 = vorrq_s8(*&v38[8], *&v38[24]);
          v20 = *&vorr_s8(*v26.i8, *&vextq_s8(v26, v26, 8uLL)) | *v38;
        }

        else
        {
          if ((v38[40] & 0xE0) != 0xA0 || v38[40] != 160)
          {
            goto LABEL_40;
          }

          v19 = vorrq_s8(*&v38[8], *&v38[24]);
          v20 = *&vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL)) | *v38;
          v21 = *(&v37 + 1) | v37;
        }

        if (!(v20 | v21))
        {
          sub_264B12188(v39);
          v13 = 1;
          return v13 & 1;
        }

        goto LABEL_40;
      }

      if ((v38[40] & 0xE0) != 0x80)
      {
        sub_2649E124C(*&v35[0], BYTE8(v35[0]));
        goto LABEL_40;
      }

      v14 = v37;
      v15 = BYTE8(v37);
      if (BYTE8(v35[0]) <= 0xFBu)
      {
        *&v29[0] = *&v35[0];
        BYTE8(v29[0]) = BYTE8(v35[0]);
        if (BYTE8(v37) <= 0xFBu)
        {
          v27 = v37;
          v28 = BYTE8(v37);
          sub_264A525C8(&v37, &v32);
          sub_264A525C8(v35, &v32);
          sub_264A525C8(&v37, &v32);
          sub_264A525C8(v35, &v32);
          sub_2649E124C(v9, v10);
          v25 = _s16ScreenSharingKit11ServerErrorO2eeoiySbAC_ACtFZ_0(v29, &v27);
          sub_264B12188(v39);
          sub_2649E12A4(v27, v28);
          sub_2649E12A4(*&v29[0], BYTE8(v29[0]));
          sub_2649E1290(v9, v10);
          if (v25)
          {
            v13 = 1;
            return v13 & 1;
          }

          goto LABEL_41;
        }

        sub_264A525C8(&v37, &v32);
        sub_264A525C8(v35, &v32);
        sub_264A525C8(&v37, &v32);
        sub_264A525C8(v35, &v32);
        sub_2649E124C(v9, v10);
        sub_264B12188(v39);
        sub_2649E12A4(v9, v10);
      }

      else
      {
        sub_264A525C8(&v37, &v32);
        sub_264A525C8(v35, &v32);
        sub_264A525C8(&v37, &v32);
        sub_264A525C8(v35, &v32);
        sub_264B12188(v39);
        if (v15 > 0xFBu)
        {
          sub_2649E1290(v9, v10);
          v13 = 1;
          return v13 & 1;
        }
      }

      sub_2649E1290(v9, v10);
      sub_2649E1290(v14, v15);
      goto LABEL_41;
    }

    if ((v38[40] & 0xE0) != 0x60)
    {
LABEL_18:

LABEL_40:
      sub_264A525C8(&v37, &v32);
      sub_264B12188(v39);
LABEL_41:
      v13 = 0;
      return v13 & 1;
    }

    v13 = sub_264B0F340(*&v35[0], v37);
    sub_264A525C8(&v37, &v32);
    v16 = &v32;
LABEL_16:
    sub_264A525C8(v35, v16);
    goto LABEL_17;
  }

  if (!v11)
  {
    if (v38[40] > 0x1Fu)
    {
      *&v34[9] = *(a1 + 41);
      v22 = a1[1];
      v32 = *a1;
      v33 = v22;
      *v34 = a1[2];
      v34[24] &= 0x1Fu;
      sub_264B121F0(&v32, v29);
      goto LABEL_40;
    }

    v32 = v35[0];
    v33 = v2;
    *v34 = *v36;
    *&v34[16] = v7 >> 56;
    v34[24] = HIBYTE(v7) & 0x1F;
    v29[0] = v37;
    v29[1] = *v38;
    v29[2] = *&v38[16];
    v30 = *&v38[32];
    v31 = v38[40];
    v13 = _s16ScreenSharingKit18ParticipantVersionV2eeoiySbAC_ACtFZ_0(&v32, v29);
    sub_264A525C8(&v37, &v27);
    v16 = &v27;
    goto LABEL_16;
  }

  if (v11 == 1)
  {
    if ((v38[40] & 0xE0) == 0x20)
    {
      v12 = v37;
      sub_264A525C8(&v37, &v32);
      sub_264A525C8(v35, &v32);
      v13 = sub_264B0EF58(v9, v12);
LABEL_17:
      sub_264B12188(v39);
      return v13 & 1;
    }

    goto LABEL_18;
  }

  if ((v38[40] & 0xE0) != 0x40)
  {
    goto LABEL_40;
  }

  sub_264B12188(v39);
  v13 = v37 == LOBYTE(v35[0]) && *(&v35[0] + 1) == *(&v37 + 1);
  return v13 & 1;
}

uint64_t sub_264B12188(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C988, &unk_264B56E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264B121F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B8D0, &qword_264B51990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264B12260(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 57))
  {
    return (*a1 + 123);
  }

  v3 = ((*(a1 + 56) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 56) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_264B122B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 48) = 0;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 56) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_264B12334(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    *(result + 56) = *(result + 56) & 1 | (32 * a2);
  }

  else
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = -96;
  }

  return result;
}

unint64_t sub_264B12380()
{
  result = qword_27FF8C9F0;
  if (!qword_27FF8C9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C9F0);
  }

  return result;
}

unint64_t sub_264B123D4()
{
  result = qword_27FF8C9F8;
  if (!qword_27FF8C9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C9F8);
  }

  return result;
}

unint64_t sub_264B12428()
{
  result = qword_27FF8CA00;
  if (!qword_27FF8CA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CA00);
  }

  return result;
}

unint64_t sub_264B1247C()
{
  result = qword_27FF8CA08;
  if (!qword_27FF8CA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CA08);
  }

  return result;
}

unint64_t sub_264B124D0()
{
  result = qword_27FF8CA18;
  if (!qword_27FF8CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CA18);
  }

  return result;
}

unint64_t sub_264B12524()
{
  result = qword_27FF8CA20;
  if (!qword_27FF8CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CA20);
  }

  return result;
}

unint64_t sub_264B12578()
{
  result = qword_27FF8CA28;
  if (!qword_27FF8CA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CA28);
  }

  return result;
}

unint64_t sub_264B125CC()
{
  result = qword_27FF8CA30;
  if (!qword_27FF8CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CA30);
  }

  return result;
}

unint64_t sub_264B12620()
{
  result = qword_27FF8CA38;
  if (!qword_27FF8CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CA38);
  }

  return result;
}

unint64_t sub_264B12674()
{
  result = qword_27FF8CA40;
  if (!qword_27FF8CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CA40);
  }

  return result;
}

unint64_t sub_264B126C8()
{
  result = qword_27FF8CA48;
  if (!qword_27FF8CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CA48);
  }

  return result;
}

unint64_t sub_264B1271C()
{
  result = qword_27FF8CA50;
  if (!qword_27FF8CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CA50);
  }

  return result;
}

unint64_t sub_264B12770()
{
  result = qword_27FF8CA58;
  if (!qword_27FF8CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CA58);
  }

  return result;
}

unint64_t sub_264B127C4()
{
  result = qword_27FF8CA60;
  if (!qword_27FF8CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CA60);
  }

  return result;
}

unint64_t sub_264B12818()
{
  result = qword_27FF8CA68;
  if (!qword_27FF8CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CA68);
  }

  return result;
}

unint64_t sub_264B1286C()
{
  result = qword_27FF8CAD0;
  if (!qword_27FF8CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CAD0);
  }

  return result;
}

uint64_t sub_264B128C0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FF89D80, &qword_264B45588);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_264B12938()
{
  result = qword_27FF8CAE0;
  if (!qword_27FF8CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CAE0);
  }

  return result;
}

unint64_t sub_264B1298C()
{
  result = qword_27FF8CAE8;
  if (!qword_27FF8CAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CAE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ServerStatusEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ServerStatusEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_264B12BE4()
{
  result = qword_27FF8CAF0;
  if (!qword_27FF8CAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CAF0);
  }

  return result;
}

unint64_t sub_264B12C3C()
{
  result = qword_27FF8CAF8;
  if (!qword_27FF8CAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CAF8);
  }

  return result;
}

unint64_t sub_264B12C94()
{
  result = qword_27FF8CB00;
  if (!qword_27FF8CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB00);
  }

  return result;
}

unint64_t sub_264B12CEC()
{
  result = qword_27FF8CB08;
  if (!qword_27FF8CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB08);
  }

  return result;
}

unint64_t sub_264B12D44()
{
  result = qword_27FF8CB10;
  if (!qword_27FF8CB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB10);
  }

  return result;
}

unint64_t sub_264B12D9C()
{
  result = qword_27FF8CB18;
  if (!qword_27FF8CB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB18);
  }

  return result;
}

unint64_t sub_264B12DF4()
{
  result = qword_27FF8CB20;
  if (!qword_27FF8CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB20);
  }

  return result;
}

unint64_t sub_264B12E4C()
{
  result = qword_27FF8CB28;
  if (!qword_27FF8CB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB28);
  }

  return result;
}

unint64_t sub_264B12EA4()
{
  result = qword_27FF8CB30;
  if (!qword_27FF8CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB30);
  }

  return result;
}

unint64_t sub_264B12EFC()
{
  result = qword_27FF8CB38;
  if (!qword_27FF8CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB38);
  }

  return result;
}

unint64_t sub_264B12F54()
{
  result = qword_27FF8CB40;
  if (!qword_27FF8CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB40);
  }

  return result;
}

unint64_t sub_264B12FAC()
{
  result = qword_27FF8CB48;
  if (!qword_27FF8CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB48);
  }

  return result;
}

unint64_t sub_264B13004()
{
  result = qword_27FF8CB50;
  if (!qword_27FF8CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB50);
  }

  return result;
}

unint64_t sub_264B1305C()
{
  result = qword_27FF8CB58;
  if (!qword_27FF8CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB58);
  }

  return result;
}

unint64_t sub_264B130B4()
{
  result = qword_27FF8CB60;
  if (!qword_27FF8CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB60);
  }

  return result;
}

unint64_t sub_264B1310C()
{
  result = qword_27FF8CB68;
  if (!qword_27FF8CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB68);
  }

  return result;
}

unint64_t sub_264B13164()
{
  result = qword_27FF8CB70;
  if (!qword_27FF8CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB70);
  }

  return result;
}

unint64_t sub_264B131BC()
{
  result = qword_27FF8CB78;
  if (!qword_27FF8CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB78);
  }

  return result;
}

unint64_t sub_264B13214()
{
  result = qword_27FF8CB80;
  if (!qword_27FF8CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB80);
  }

  return result;
}

unint64_t sub_264B1326C()
{
  result = qword_27FF8CB88;
  if (!qword_27FF8CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB88);
  }

  return result;
}

unint64_t sub_264B132C4()
{
  result = qword_27FF8CB90;
  if (!qword_27FF8CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB90);
  }

  return result;
}

unint64_t sub_264B1331C()
{
  result = qword_27FF8CB98;
  if (!qword_27FF8CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB98);
  }

  return result;
}

unint64_t sub_264B13374()
{
  result = qword_27FF8CBA0;
  if (!qword_27FF8CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CBA0);
  }

  return result;
}

unint64_t sub_264B133CC()
{
  result = qword_27FF8CBA8;
  if (!qword_27FF8CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CBA8);
  }

  return result;
}

unint64_t sub_264B13424()
{
  result = qword_27FF8CBB0;
  if (!qword_27FF8CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CBB0);
  }

  return result;
}

unint64_t sub_264B1347C()
{
  result = qword_27FF8CBB8;
  if (!qword_27FF8CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CBB8);
  }

  return result;
}

unint64_t sub_264B134D4()
{
  result = qword_27FF8CBC0;
  if (!qword_27FF8CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CBC0);
  }

  return result;
}

unint64_t sub_264B1352C()
{
  result = qword_27FF8CBC8;
  if (!qword_27FF8CBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CBC8);
  }

  return result;
}

unint64_t sub_264B13584()
{
  result = qword_27FF8CBD0;
  if (!qword_27FF8CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CBD0);
  }

  return result;
}

unint64_t sub_264B135DC()
{
  result = qword_27FF8CBD8;
  if (!qword_27FF8CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CBD8);
  }

  return result;
}

uint64_t sub_264B13630(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_264B41AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696C616974696E69 && a2 == 0xEC000000676E697ALL || (sub_264B41AA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656B636F6C62 && a2 == 0xE700000000000000 || (sub_264B41AA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F467964616572 && a2 == 0xEE006B636F6C6E55 || (sub_264B41AA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F467964616572 && a2 == 0xED00006F65646956 || (sub_264B41AA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000264B61A10 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x657669746361 && a2 == 0xE600000000000000 || (sub_264B41AA4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000264B61A30 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000264B61A50 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4973726F736E6573 && a2 == 0xEC0000006573556ELL || (sub_264B41AA4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7845726576726573 && a2 == 0xED0000676E697469)
  {

    return 10;
  }

  else
  {
    v6 = sub_264B41AA4();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

void sub_264B139C4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (*(v5 + 48) == 1)
  {
    swift_beginAccess();
    v11 = *(v5 + 40);
    if (*(v11 + 16))
    {

      v12 = sub_264A20ACC(a3, a4);
      if (v13)
      {
        v14 = *(*(v11 + 56) + 8 * v12);
      }

      else
      {
        v14 = 0;
      }

      if (a5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v14 = 0;
      if (a5)
      {
LABEL_10:
        if (!v14)
        {
          sub_264B142E0(a3, a4);
          sub_264ACDF24(a1, a2);

          return;
        }

        v15 = qword_27FF88418;

        if (v15 != -1)
        {
          swift_once();
        }

        v16 = sub_264B40964();
        __swift_project_value_buffer(v16, qword_27FF8AEA0);
        sub_2649DEF18(a1, a2);
        sub_2649DEF18(a1, a2);

        v17 = sub_264B40944();
        v18 = sub_264B41494();

        if (!os_log_type_enabled(v17, v18))
        {
          sub_2649DEF6C(a1, a2);
          sub_2649DEF6C(a1, a2);
LABEL_38:

          sub_264ACDF24(a1, a2);

          return;
        }

        v19 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v33 = v32;
        *v19 = 136446722;
        type metadata accessor for ServerDragSurrogateManager();

        v20 = sub_264B41064();
        v22 = sub_2649CC004(v20, v21, &v33);

        *(v19 + 4) = v22;
        *(v19 + 12) = 2082;
        *(v19 + 14) = sub_2649CC004(a3, a4, &v33);
        *(v19 + 22) = 2050;
        v23 = a2 >> 62;
        if ((a2 >> 62) <= 1)
        {
          if (!v23)
          {
            sub_2649DEF6C(a1, a2);
            v24 = BYTE6(a2);
LABEL_37:
            *(v19 + 24) = v24;
            sub_2649DEF6C(a1, a2);
            _os_log_impl(&dword_2649C6000, v17, v18, "%{public}s: Received purportedly the FIRST message for drag identifier %{public}s (size %{public}ld bytes), but a session already exists for that identifier, so it can't be the first message", v19, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x266749940](v32, -1, -1);
            MEMORY[0x266749940](v19, -1, -1);
            goto LABEL_38;
          }

          goto LABEL_34;
        }

        if (v23 != 2)
        {
          sub_2649DEF6C(a1, a2);
          v24 = 0;
          goto LABEL_37;
        }

        a3 = *(a1 + 16);
        a4 = *(a1 + 24);
        sub_2649DEF6C(a1, a2);
        v24 = a4 - a3;
        if (!__OFSUB__(a4, a3))
        {
          goto LABEL_37;
        }

        __break(1u);
        goto LABEL_30;
      }
    }

    if (v14)
    {
      sub_264ACDF24(a1, a2);

      return;
    }

    if (qword_27FF88418 != -1)
    {
      swift_once();
    }

    v25 = sub_264B40964();
    __swift_project_value_buffer(v25, qword_27FF8AEA0);
    sub_2649DEF18(a1, a2);
    sub_2649DEF18(a1, a2);

    v17 = sub_264B40944();
    v19 = sub_264B41494();

    if (!os_log_type_enabled(v17, v19))
    {
      sub_2649DEF6C(a1, a2);
      sub_2649DEF6C(a1, a2);
LABEL_43:

      return;
    }

    v14 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v33 = v18;
    *v14 = 136446722;
    type metadata accessor for ServerDragSurrogateManager();

    v26 = sub_264B41064();
    v28 = sub_2649CC004(v26, v27, &v33);

    *(v14 + 4) = v28;
    *(v14 + 12) = 2050;
    v24 = a2 >> 62;
    if ((a2 >> 62) <= 1)
    {
      if (v24)
      {
        sub_2649DEF6C(a1, a2);
        LODWORD(v29) = HIDWORD(a1) - a1;
        if (__OFSUB__(HIDWORD(a1), a1))
        {
LABEL_46:
          __break(1u);
          return;
        }

        v29 = v29;
      }

      else
      {
        sub_2649DEF6C(a1, a2);
        v29 = BYTE6(a2);
      }

LABEL_42:
      *(v14 + 14) = v29;
      sub_2649DEF6C(a1, a2);
      *(v14 + 22) = 2082;
      *(v14 + 24) = sub_2649CC004(a3, a4, &v33);
      _os_log_impl(&dword_2649C6000, v17, v19, "%{public}s: Dropping drag data of size %{public}ld bytes for drag identifier %{public}s because it's for a surrogate session that has already finished", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266749940](v18, -1, -1);
      MEMORY[0x266749940](v14, -1, -1);
      goto LABEL_43;
    }

LABEL_30:
    if (v24 == 2)
    {
      v31 = *(a1 + 16);
      v30 = *(a1 + 24);
      sub_2649DEF6C(a1, a2);
      v29 = v30 - v31;
      if (__OFSUB__(v30, v31))
      {
        __break(1u);
LABEL_34:
        sub_2649DEF6C(a1, a2);
        LODWORD(v24) = HIDWORD(a1) - a1;
        if (!__OFSUB__(HIDWORD(a1), a1))
        {
          v24 = v24;
          goto LABEL_37;
        }

        __break(1u);
        goto LABEL_46;
      }
    }

    else
    {
      sub_2649DEF6C(a1, a2);
      v29 = 0;
    }

    goto LABEL_42;
  }
}

void sub_264B13F74()
{
  if (*(v0 + 48) == 1)
  {
    v1 = v0;
    if (qword_27FF88418 != -1)
    {
LABEL_22:
      swift_once();
    }

    v2 = sub_264B40964();
    v3 = __swift_project_value_buffer(v2, qword_27FF8AEA0);

    v4 = sub_264B40944();
    v5 = sub_264B414B4();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v26 = v1;
      v27[0] = v7;
      *v6 = 136446210;
      type metadata accessor for ServerDragSurrogateManager();

      v8 = sub_264B41064();
      v10 = v3;
      v11 = sub_2649CC004(v8, v9, v27);

      *(v6 + 4) = v11;
      v3 = v10;
      _os_log_impl(&dword_2649C6000, v4, v5, "%{public}s: Invalidating", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x266749940](v7, -1, -1);
      MEMORY[0x266749940](v6, -1, -1);
    }

    *(v1 + 48) = 0;
    swift_beginAccess();
    v1 = *(v1 + 40);
    v12 = 1 << *(v1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v1 + 64);
    v15 = (v12 + 63) >> 6;

    v16 = 0;
    while (v14)
    {
LABEL_15:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v19 = *(*(v1 + 56) + ((v16 << 9) | (8 * v18)));
      if ((*(v19 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_isFinished) & 1) == 0)
      {
        *(v19 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_isFinished) = 1;

        if (sub_264B40544())
        {

          v20 = sub_264B40944();
          v21 = sub_264B414B4();

          if (os_log_type_enabled(v20, v21))
          {
            v25 = v3;
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            v26 = v23;
            *v22 = 136446210;
            *(v22 + 4) = sub_2649CC004(*(v19 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier), *(v19 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier + 8), &v26);
            _os_log_impl(&dword_2649C6000, v20, v21, "Drag %{public}s: Canceling active surrogate drag controller", v22, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v23);
            MEMORY[0x266749940](v23, -1, -1);
            v24 = v22;
            v3 = v25;
            MEMORY[0x266749940](v24, -1, -1);
          }

          sub_264B404C4();
        }
      }
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_22;
      }

      if (v17 >= v15)
      {
        break;
      }

      v14 = *(v1 + 64 + 8 * v17);
      ++v16;
      if (v14)
      {
        v16 = v17;
        goto LABEL_15;
      }
    }
  }
}

uint64_t sub_264B142E0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_27FF88418 != -1)
  {
    swift_once();
  }

  v6 = sub_264B40964();
  __swift_project_value_buffer(v6, qword_27FF8AEA0);

  v7 = sub_264B40944();
  v8 = sub_264B414B4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26[0] = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_2649CC004(a1, a2, v26);
    _os_log_impl(&dword_2649C6000, v7, v8, "Drag %{public}s: Adding drag surrogate session", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x266749940](v10, -1, -1);
    MEMORY[0x266749940](v9, -1, -1);
  }

  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v13 = *(v3 + 32);
  type metadata accessor for ServerDragSurrogateSession(0);
  swift_allocObject();

  v14 = sub_264AD0378(a1, a2, v11, v12, v13);

  v15 = swift_allocObject();
  swift_weakInit();
  v16 = (v14 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_onDidEndTracking);
  v17 = *(v14 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_onDidEndTracking);
  v18 = *(v14 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_onDidEndTracking + 8);
  *v16 = sub_264B16090;
  v16[1] = v15;

  sub_2649CB67C(v17, v18);

  v19 = swift_allocObject();
  swift_weakInit();
  v20 = (v14 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_onFinish);
  v21 = *(v14 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_onFinish);
  v22 = *(v14 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_onFinish + 8);
  *v20 = sub_264B160B0;
  v20[1] = v19;

  sub_2649CB67C(v21, v22);

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v3 + 40);
  *(v3 + 40) = 0x8000000000000000;
  sub_264A229B8(v14, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v3 + 40) = v25;
  swift_endAccess();
  if (*(v3 + 48) == 1)
  {
    sub_264B146B8();
    sub_264B149A8();
    sub_264B15030();
  }

  return v14;
}

uint64_t sub_264B145F8(uint64_t a1, uint64_t a2)
{
  sub_264B41244();
  sub_264B41704();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 48) == 1)
    {
      sub_264B146B8();
      sub_264B149A8();
      sub_264B15030();
    }
  }

  return result;
}

uint64_t sub_264B146B8()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 40);
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v30 = v0;
  v29 = v2;
  while (v6)
  {
LABEL_11:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    if (*(*(*(v2 + 56) + 8 * v12) + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_isFinished))
    {
      v13 = (*(v2 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      v16 = qword_27FF88418;

      if (v16 != -1)
      {
        swift_once();
      }

      v17 = sub_264B40964();
      __swift_project_value_buffer(v17, qword_27FF8AEA0);

      v18 = sub_264B40944();
      v19 = sub_264B414B4();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v31[0] = v21;
        *v20 = 136446210;
        *(v20 + 4) = sub_2649CC004(v15, v14, v31);
        _os_log_impl(&dword_2649C6000, v18, v19, "Drag %{public}s: Removing drag surrogate session", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        v22 = v21;
        v2 = v29;
        MEMORY[0x266749940](v22, -1, -1);
        v23 = v20;
        v1 = v30;
        MEMORY[0x266749940](v23, -1, -1);
      }

      swift_beginAccess();
      v24 = sub_264A20ACC(v15, v14);
      v26 = v25;

      if (v26)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = *(v1 + 40);
        *(v1 + 40) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_264A23538();
        }

        sub_264A91DA4(v24, v28);
        *(v1 + 40) = v28;
      }

      swift_endAccess();
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_264B149A8()
{
  v55 = sub_264B40104();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v1);
  v54 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v3 = *(v0 + 40);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = sub_264B15234(*(v3 + 16), 0);
    v6 = sub_264B15D98(&v57, v5 + 4, v4, v3);
    v7 = v57;
    swift_bridgeObjectRetain_n();
    sub_264A0E7A0(v7);
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x277D84F90];
LABEL_5:
  v57 = v5;
  sub_264B15340(&v57);

  v9 = v57;
  LODWORD(v10) = v57 < 0 || (v57 & 0x4000000000000000) != 0;
  if (v10 == 1)
  {
    goto LABEL_59;
  }

  for (i = *(v57 + 16); i; i = sub_264B41884())
  {
    v12 = 0;
    v13 = v9 & 0xC000000000000001;
    v14 = v9 + 32;
    ++v53;
    *&v8 = 136446210;
    v42 = v8;
    *&v8 = 136446466;
    v50 = v8;
    v46 = v9 + 32;
    v47 = i;
    v45 = v9;
    v44 = v10;
    v43 = v9 & 0xC000000000000001;
    while (v13)
    {
      v15 = MEMORY[0x266748A70](v12, v9);
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_54;
      }

LABEL_16:
      if (v12 >= 1)
      {
        if (v10)
        {
          if (v12 > sub_264B41884())
          {
            goto LABEL_11;
          }
        }

        else if (v12 > *(v9 + 16))
        {
          goto LABEL_11;
        }

        if (v13)
        {
          v17 = MEMORY[0x266748A70](v12 - 1, v9);
        }

        else
        {
          if ((v12 - 1) >= *(v9 + 16))
          {
            goto LABEL_58;
          }
        }

        v18 = *(v17 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_didEndTracking);

        if ((v18 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      if (*(v15 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_isFinished) != 1)
      {
        v49 = v16;
        v19 = OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_isProcessingData;
        if (*(v15 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_isProcessingData) == 1)
        {

          v16 = v49;
        }

        else
        {
          if (qword_27FF88418 != -1)
          {
            swift_once();
          }

          v20 = sub_264B40964();
          v21 = __swift_project_value_buffer(v20, qword_27FF8AEA0);

          v22 = sub_264B40944();
          v23 = sub_264B414B4();

          v24 = os_log_type_enabled(v22, v23);
          v52 = v21;
          if (v24)
          {
            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            v56[0] = v26;
            *v25 = v42;
            *(v25 + 4) = sub_2649CC004(*(v15 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier), *(v15 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier + 8), v56);
            _os_log_impl(&dword_2649C6000, v22, v23, "Drag %{public}s: Starting to process received data", v25, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v26);
            MEMORY[0x266749940](v26, -1, -1);
            MEMORY[0x266749940](v25, -1, -1);
          }

          *(v15 + v19) = 1;
          v27 = OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_unprocessedData;
          swift_beginAccess();
          v28 = *(v15 + v27);
          *(v15 + v27) = MEMORY[0x277D84F90];
          v29 = *(v28 + 16);
          if (v29)
          {
            v51 = v15 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier;
            v48 = v28;
            v30 = (v28 + 40);
            do
            {
              v10 = *(v30 - 1);
              v32 = *v30;

              sub_2649DEF18(v10, v32);
              v33 = sub_264B40944();
              v9 = sub_264B414B4();

              if (os_log_type_enabled(v33, v9))
              {
                v34 = swift_slowAlloc();
                v35 = swift_slowAlloc();
                v56[0] = v35;
                *v34 = v50;
                *(v34 + 4) = sub_2649CC004(*v51, *(v51 + 8), v56);
                *(v34 + 12) = 2050;
                v36 = v32 >> 62;
                if ((v32 >> 62) > 1)
                {
                  if (v36 == 2)
                  {
                    v39 = *(v10 + 16);
                    v38 = *(v10 + 24);
                    v40 = __OFSUB__(v38, v39);
                    v37 = v38 - v39;
                    if (v40)
                    {
                      goto LABEL_56;
                    }
                  }

                  else
                  {
                    v37 = 0;
                  }
                }

                else if (v36)
                {
                  LODWORD(v37) = HIDWORD(v10) - v10;
                  if (__OFSUB__(HIDWORD(v10), v10))
                  {
                    goto LABEL_57;
                  }

                  v37 = v37;
                }

                else
                {
                  v37 = BYTE6(v32);
                }

                *(v34 + 14) = v37;
                _os_log_impl(&dword_2649C6000, v33, v9, "Drag %{public}s: Surrogate session is processing received drag data of size %{public}ld bytes", v34, 0x16u);
                __swift_destroy_boxed_opaque_existential_0(v35);
                MEMORY[0x266749940](v35, -1, -1);
                MEMORY[0x266749940](v34, -1, -1);
              }

              else
              {
              }

              v30 += 2;
              v31 = v54;
              sub_264B404B4();
              sub_264B40484();
              sub_2649DEF6C(v10, v32);
              (*v53)(v31, v55);
              --v29;
            }

            while (v29);

            v9 = v45;
            LODWORD(v10) = v44;
            i = v47;
            v13 = v43;
          }

          else
          {

            i = v47;
          }

          v14 = v46;
          v16 = v49;
        }

        goto LABEL_12;
      }

LABEL_11:

LABEL_12:
      v12 = v16;
      if (v16 == i)
      {
      }
    }

    if (v12 >= *(v9 + 16))
    {
      goto LABEL_55;
    }

    v15 = *(v14 + 8 * v12);

    v16 = v12 + 1;
    if (!__OFADD__(v12, 1))
    {
      goto LABEL_16;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    ;
  }
}

void sub_264B15030()
{
  swift_beginAccess();
  v1 = *(*(v0 + 40) + 16);
  if (qword_27FF88418 != -1)
  {
    swift_once();
  }

  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FF8AEA0);

  v3 = sub_264B40944();
  v4 = sub_264B414B4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446466;
    type metadata accessor for ServerDragSurrogateManager();

    v7 = sub_264B41064();
    v9 = sub_2649CC004(v7, v8, &v10);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2050;
    *(v5 + 14) = v1;
    _os_log_impl(&dword_2649C6000, v3, v4, "%{public}s: %{public}ld surrogate sessions still exist", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x266749940](v6, -1, -1);
    MEMORY[0x266749940](v5, -1, -1);
  }
}

uint64_t sub_264B151C8()
{

  return swift_deallocClassInstance();
}

void *sub_264B15234(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB50, &unk_264B520F0);
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

void *sub_264B152BC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AD70, &qword_264B4DB90);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_264B15340(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_264B16044(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_264B153BC(v6);
  return sub_264B417E4();
}

char *sub_264B153BC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_264B41A54();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for ServerDragSurrogateSession(0);
        v6 = sub_264B41184();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_264B15538(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_264B154C0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_264B154C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      if (*(v7 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_creationTimestamp) >= *(*v9 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_creationTimestamp))
      {
LABEL_4:
        ++a3;
        v5 += 8;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *v9 = v7;
      v9[1] = v10;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_264B15538(uint64_t result, uint64_t a2, uint64_t *a3, char *a4)
{
  v81 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v6 = *v81;
    if (!*v81)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_264B15D84(v8);
      v8 = result;
    }

    v76 = *(v8 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = *&v8[16 * v76];
        v78 = *&v8[16 * v76 + 24];
        sub_264B15AD4((*a3 + 8 * v77), (*a3 + 8 * *&v8[16 * v76 + 16]), (*a3 + 8 * v78), v6);
        if (v4)
        {
        }

        if (v78 < v77)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_264B15D84(v8);
        }

        if (v76 - 2 >= *(v8 + 2))
        {
          goto LABEL_114;
        }

        v79 = &v8[16 * v76];
        *v79 = v77;
        *(v79 + 1) = v78;
        result = sub_264B15CF8(v76 - 1);
        v76 = *(v8 + 2);
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v6 = a4;
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v5)
    {
      v10 = *(*(*a3 + 8 * v7) + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_creationTimestamp);
      v11 = *(*(*a3 + 8 * v9) + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_creationTimestamp);
      v12 = v9 + 2;
      v13 = v10;
      while (v5 != v12)
      {
        v14 = *(*(*a3 + 8 * v12) + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_creationTimestamp);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v5;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_117;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v5)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_116;
      }

      if (v7 - v9 < v6)
      {
        if (__OFADD__(v9, v6))
        {
          goto LABEL_118;
        }

        if (v9 + v6 < v5)
        {
          v5 = v9 + v6;
        }

        if (v5 < v9)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v7 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2649D7F24(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v31 = *(v8 + 2);
    v30 = *(v8 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_2649D7F24((v30 > 1), v31 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v32;
    v33 = &v8[16 * v31];
    *(v33 + 4) = v9;
    *(v33 + 5) = v7;
    v34 = *v81;
    if (!*v81)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v8 + 4);
          v37 = *(v8 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_104;
          }

          v52 = &v8[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_107;
          }

          v58 = &v8[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_111;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v8[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_106;
        }

        v65 = &v8[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_109;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v6 = v35 - 1;
        if (v35 - 1 >= v32)
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
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v73 = *&v8[16 * v6 + 32];
        v74 = *&v8[16 * v35 + 40];
        sub_264B15AD4((*a3 + 8 * v73), (*a3 + 8 * *&v8[16 * v35 + 32]), (*a3 + 8 * v74), v34);
        if (v4)
        {
        }

        if (v74 < v73)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_264B15D84(v8);
        }

        if (v6 >= *(v8 + 2))
        {
          goto LABEL_101;
        }

        v75 = &v8[16 * v6];
        *(v75 + 4) = v73;
        *(v75 + 5) = v74;
        result = sub_264B15CF8(v35);
        v32 = *(v8 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v8[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_102;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_103;
      }

      v47 = &v8[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_105;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_108;
      }

      if (v51 >= v43)
      {
        v69 = &v8[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_112;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    v6 = a4;
    if (v7 >= v5)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (*(v25 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_creationTimestamp) >= *(*v27 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_creationTimestamp))
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v5)
      {
        goto LABEL_30;
      }

      v7 = v5;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_264B15AD4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_25:
      v17 = v6 - 8;
      v5 -= 8;
      v18 = v14;
      do
      {
        v19 = v5 + 8;
        v21 = *(v18 - 8);
        v18 -= 8;
        v20 = v21;
        if (*(v21 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_creationTimestamp) < *(*v17 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_creationTimestamp))
        {
          if (v19 != v6)
          {
            *v5 = *v17;
          }

          if (v14 <= v4 || (v6 -= 8, v17 <= v7))
          {
            v6 = v17;
            goto LABEL_36;
          }

          goto LABEL_25;
        }

        if (v19 != v14)
        {
          *v5 = v20;
        }

        v5 -= 8;
        v14 = v18;
      }

      while (v18 > v4);
      v14 = v18;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      while (1)
      {
        v15 = *v6;
        if (*(*v6 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_creationTimestamp) >= *(*v4 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_creationTimestamp))
        {
          break;
        }

        v16 = v7 == v6;
        v6 += 8;
        if (!v16)
        {
          goto LABEL_16;
        }

LABEL_17:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_19;
        }
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (v16)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v7 = v15;
      goto LABEL_17;
    }

LABEL_19:
    v6 = v7;
  }

LABEL_36:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}
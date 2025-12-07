unint64_t sub_22DEFF63C()
{
  result = qword_27DA47408;
  if (!qword_27DA47408)
  {
    type metadata accessor for ServiceEventValue(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47408);
  }

  return result;
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

unint64_t sub_22DEFF6E8()
{
  result = qword_27DA475C8;
  if (!qword_27DA475C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA475C8);
  }

  return result;
}

unint64_t sub_22DEFF740()
{
  result = qword_27DA475D0;
  if (!qword_27DA475D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA475D0);
  }

  return result;
}

unint64_t sub_22DEFF798()
{
  result = qword_27DA475D8;
  if (!qword_27DA475D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA475D8);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22DEFF808(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22DEFF850(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void sub_22DEFF8F0(uint64_t a1)
{
  sub_22DF63604();
  if (v1 <= 0x3F)
  {
    sub_22DEFF9AC(319);
    if (v2 <= 0x3F)
    {
      sub_22DEFFA04(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_22DEFF9AC(uint64_t a1)
{
  if (!qword_27DA475E0)
  {
    type metadata accessor for ServiceEventValue(255);
    v1 = sub_22DF63BC4();
    if (!v2)
    {
      atomic_store(v1, &qword_27DA475E0);
    }
  }
}

void sub_22DEFFA04(uint64_t a1)
{
  if (!qword_27DA475E8)
  {
    type metadata accessor for ServiceEventValue(255);
    v1 = sub_22DF63924();
    if (!v2)
    {
      atomic_store(v1, &qword_27DA475E8);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22DEFFA78(uint64_t a1, int a2)
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

uint64_t sub_22DEFFAC0(uint64_t result, int a2, int a3)
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

uint64_t sub_22DEFFB1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceEventValue(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DEFFB80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47620, &unk_22DF660E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_22DEFFBF0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_22DEFFC08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_22DEFFC78()
{
  v0 = NSHomeDirectory();
  sub_22DF639B4();

  sub_22DF63364();
}

uint64_t sub_22DEFFD00()
{
  v1 = *v0;
  sub_22DF642A4();
  MEMORY[0x2318DD240](v1);
  return sub_22DF642D4();
}

uint64_t sub_22DEFFD74(uint64_t a1)
{
  v2 = *v1;
  sub_22DF642A4();
  MEMORY[0x2318DD240](v2);
  return sub_22DF642D4();
}

uint64_t sub_22DEFFDB8()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA493A8);
  __swift_project_value_buffer(v0, qword_27DA493A8);
  return sub_22DF63724();
}

uint64_t DiskCache.__allocating_init(rootCacheURL:)(uint64_t a1)
{
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22DEF4014;

  return DiskCache.init(rootCacheURL:)(a1);
}

uint64_t DiskCache.init(rootCacheURL:)(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v2[18] = *v1;
  type metadata accessor for SQLiteDB.Location(0);
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47650, &qword_22DF68840);
  v2[20] = swift_task_alloc();
  v3 = sub_22DF63444();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF00034, 0, 0);
}

uint64_t sub_22DF00034()
{
  v1 = v0[23];
  v2 = v0[16];
  swift_defaultActor_initialize();
  sub_22DF2FA30(v2, 0x636163746E657665, 0xEB000000002F6568, v1);
  v3 = v0[23];
  v4 = v0[21];
  v5 = v0[22];
  sub_22DF633A4();
  v6 = *(v5 + 8);
  v0[25] = v6;
  v0[26] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47470, &unk_22DF65BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22DF65900;
  v8 = *MEMORY[0x277CBE838];
  *(inited + 32) = *MEMORY[0x277CBE838];
  v9 = v8;
  sub_22DEF9A50(inited);
  swift_setDeallocating();
  sub_22DEF9C44(inited + 32);
  sub_22DF63354();
  v10 = v0[20];

  v11 = sub_22DF632E4();
  v12 = *(v11 - 8);
  (*(v12 + 56))(v10, 0, 1, v11);
  v13 = sub_22DF632C4();
  v15 = v14;
  (*(v12 + 8))(v10, v11);
  if (v15)
  {
    goto LABEL_14;
  }

  v16 = sub_22DF2E5EC();
  swift_beginAccess();
  if (*v16)
  {
    if (v13 <= 0x140000000)
    {
LABEL_14:
      v22 = v0[24];
      v23 = v0[21];
      v24 = v0[22];
      v25 = v0[19];
      type metadata accessor for SQLiteDB();
      (*(v24 + 16))(v25, v22, v23);
      (*(v24 + 56))(v25, 0, 1, v23);
      *(v0[17] + 112) = sub_22DF0B12C(v25);
      v31 = swift_task_alloc();
      v0[27] = v31;
      *v31 = v0;
      v31[1] = sub_22DF0068C;

      return DiskCache.schemaVersion.getter();
    }
  }

  else if (v13 <= 3221225472)
  {
    goto LABEL_14;
  }

  if (*sub_22DF2EAD4())
  {
    if (qword_27DA493A0 != -1)
    {
      swift_once();
    }

    v17 = sub_22DF63734();
    __swift_project_value_buffer(v17, qword_27DA493A8);
    v18 = sub_22DF63714();
    v19 = sub_22DF63D04();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134349312;
      *(v20 + 4) = v13;
      *(v20 + 12) = 2050;
      swift_beginAccess();
      v21 = 3221225472;
      if (*v16)
      {
        v21 = 0x140000000;
      }

      *(v20 + 14) = v21;
      _os_log_impl(&dword_22DEEA000, v18, v19, "cache size %{public}ld exceeded maximum %{public}ld - cache delete overridden", v20, 0x16u);
      MEMORY[0x2318DDBE0](v20, -1, -1);
    }

    goto LABEL_14;
  }

  if (qword_27DA493A0 != -1)
  {
    swift_once();
  }

  v32 = sub_22DF63734();
  __swift_project_value_buffer(v32, qword_27DA493A8);
  v33 = sub_22DF63714();
  v34 = sub_22DF63D04();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 134349312;
    *(v35 + 4) = v13;
    *(v35 + 12) = 2050;
    swift_beginAccess();
    v36 = 3221225472;
    if (*v16)
    {
      v36 = 0x140000000;
    }

    *(v35 + 14) = v36;
    _os_log_impl(&dword_22DEEA000, v33, v34, "cache size %{public}ld exceeded maximum %{public}ld - deleting cache", v35, 0x16u);
    MEMORY[0x2318DDBE0](v35, -1, -1);
  }

  v37 = v0[24];
  v38 = v0[21];

  sub_22DF04394();
  swift_allocError();
  *v39 = 1;
  swift_willThrow();
  v6(v37, v38);
  v26 = v0[21];
  v27 = v0[22];
  v28 = v0[16];
  swift_defaultActor_destroy();
  (*(v27 + 8))(v28, v26);
  swift_deallocPartialClassInstance();

  v29 = v0[1];

  return v29();
}

uint64_t sub_22DF0068C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    sub_22DF059C4(&qword_27DA47658, v6, type metadata accessor for DiskCache, &protocol conformance descriptor for DiskCache);
    swift_getObjectType();
    v7 = sub_22DF63BE4();
    v9 = v8;
    v10 = sub_22DF00C28;
  }

  else
  {
    *(v4 + 224) = a1;
    sub_22DF059C4(&qword_27DA47658, v5, type metadata accessor for DiskCache, &protocol conformance descriptor for DiskCache);
    swift_getObjectType();
    v7 = sub_22DF63BE4();
    v9 = v11;
    v10 = sub_22DF00878;
  }

  return MEMORY[0x2822009F8](v10, v7, v9);
}

uint64_t sub_22DF00878()
{
  v1 = v0[28];
  if (v1 > 8)
  {
    v4 = v0[25];
    v5 = v0[24];
    v6 = v0[21];
    v4(v0[16], v6);
    v4(v5, v6);

    v7 = v0[1];
    v8 = v0[17];

    return v7(v8);
  }

  else
  {
    v2 = swift_task_alloc();
    v0[29] = v2;
    *v2 = v0;
    v2[1] = sub_22DF009BC;

    return sub_22DF010B4(v1);
  }
}

uint64_t sub_22DF009BC()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v4 = sub_22DF059C4(&qword_27DA47658, v3, type metadata accessor for DiskCache, &protocol conformance descriptor for DiskCache);
  if (v0)
  {
    *(v2 + 248) = v4;
    swift_getObjectType();
    v5 = sub_22DF63BE4();
    v7 = v6;
    v8 = sub_22DF00CBC;
  }

  else
  {
    swift_getObjectType();
    v5 = sub_22DF63BE4();
    v7 = v9;
    v8 = sub_22DF00B68;
  }

  return MEMORY[0x2822009F8](v8, v5, v7);
}

uint64_t sub_22DF00B68()
{
  v1 = v0[25];
  v2 = v0[24];
  v3 = v0[21];
  v1(v0[16], v3);
  v1(v2, v3);

  v4 = v0[1];
  v5 = v0[17];

  return v4(v5);
}

uint64_t sub_22DF00C28()
{
  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = sub_22DF009BC;

  return sub_22DF010B4(0);
}

uint64_t sub_22DF00CBC()
{
  v1 = *(*(v0 + 136) + 112);
  *(v0 + 256) = v1;

  return MEMORY[0x2822009F8](sub_22DF00D34, v1, 0);
}

uint64_t sub_22DF00D34()
{
  sub_22DF0B5B0();

  swift_getObjectType();
  v1 = sub_22DF63BE4();

  return MEMORY[0x2822009F8](sub_22DF00DCC, v1, v0);
}

uint64_t sub_22DF00DCC(uint64_t a1)
{
  v2 = v1[25];
  v3 = v1[24];
  v4 = v1[21];
  v5 = v1[16];
  swift_willThrow();
  v2(v5, v4);
  v2(v3, v4);

  v6 = v1[1];

  return v6();
}

uint64_t sub_22DF00EBC()
{
  v1 = *(v0[3] + 112);
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = 0x6E6F6973726576;
  *(v2 + 24) = 0xE700000000000000;

  return MEMORY[0x2822009F8](sub_22DF00F4C, v1, 0);
}

uint64_t sub_22DF00F4C()
{
  sub_22DF0B3D0(0xD000000000000025, 0x800000022DF6D9B0, sub_22DF043E8);
  v0[6] = 0;

  v1 = v0[2];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_22DF01044()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22DF010B4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22DF010D4, v1, 0);
}

uint64_t sub_22DF010D4()
{
  if (v0[2])
  {
    if (qword_27DA493A0 != -1)
    {
      swift_once();
    }

    v1 = sub_22DF63734();
    __swift_project_value_buffer(v1, qword_27DA493A8);
    v2 = sub_22DF63714();
    v3 = sub_22DF63D24();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_22DEEA000, v2, v3, "unsupported prior database version - deleting disk cache", v4, 2u);
      MEMORY[0x2318DDBE0](v4, -1, -1);
    }

    sub_22DF04394();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = *(v0[3] + 112);
    v0[4] = v8;

    return MEMORY[0x2822009F8](sub_22DF01264, v8, 0);
  }
}

uint64_t sub_22DF01264()
{
  sub_22DF0B598(0xD00000000000052CLL, 0x800000022DF6D480);
  *(v0 + 40) = 0;
  v1 = *(v0 + 24);

  return MEMORY[0x2822009F8](sub_22DF01330, v1, 0);
}

uint64_t sub_22DF01330()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v2[2] = 0x6E6F6973726576;
  v2[3] = 0xE700000000000000;
  v2[4] = 9;

  return MEMORY[0x2822009F8](sub_22DF013C0, v1, 0);
}

uint64_t sub_22DF013C0()
{
  v1 = v0[5];
  sub_22DF0B3D0(0xD000000000000060, 0x800000022DF6DF20, sub_22DF05A2C);
  v0[7] = v1;
  if (v1)
  {
    v2 = v0[3];
    v3 = sub_22DF015C0;
  }

  else
  {
    v4 = v0[3];

    v3 = sub_22DF01498;
    v2 = v4;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_22DF01498()
{
  if (qword_27DA493A0 != -1)
  {
    swift_once();
  }

  v1 = sub_22DF63734();
  __swift_project_value_buffer(v1, qword_27DA493A8);
  v2 = sub_22DF63714();
  v3 = sub_22DF63D24();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = 9;
    _os_log_impl(&dword_22DEEA000, v2, v3, "initialized disk cache with version %lld", v4, 0xCu);
    MEMORY[0x2318DDBE0](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22DF015C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22DF01624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47690, &qword_22DF663D8);
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D837D0];
  *(v9 + 16) = xmmword_22DF65910;
  *(v9 + 56) = v10;
  *(v9 + 64) = &off_284193BE8;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  *(v9 + 96) = MEMORY[0x277D84A28];
  *(v9 + 104) = &off_284193BA8;
  *(v9 + 72) = a4;
  v11 = *(*a1 + 192);

  v11(v9);

  if (!v4)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t sub_22DF01730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22DF01754, v3, 0);
}

uint64_t sub_22DF01754()
{
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 40) + 112);
  *(v0 + 48) = v2;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;

  return MEMORY[0x2822009F8](sub_22DF017DC, v2, 0);
}

uint64_t sub_22DF017DC()
{
  sub_22DF0B3D0(0xD0000000000000AFLL, 0x800000022DF6D9E0, sub_22DF04414);
  *(v0 + 64) = 0;
  v1 = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_22DF05A28, v1, 0);
}

uint64_t sub_22DF018B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22DF01918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a1;
  v6 = sub_22DF63594();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a4 + 32))(a3, a4);
  getTimeIntervalSince1970(Date:)(v9);
  v28 = v10;
  (*(v7 + 8))(v9, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47690, &qword_22DF663D8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22DF66110;
  v12 = (*(a4 + 16))(a3, a4);
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = &off_284193BE8;
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  v14 = *(a4 + 8);
  v14(v30, a3, a4);
  v15 = v30[0];
  v16 = v30[1];

  sub_22DEF0FA8(v30);
  *(v11 + 96) = MEMORY[0x277D837D0];
  *(v11 + 104) = &off_284193BE8;
  *(v11 + 72) = v15;
  *(v11 + 80) = v16;
  v14(v31, a3, a4);
  v17 = v31[2];
  v18 = v31[3];

  sub_22DEF0FA8(v31);
  *(v11 + 136) = MEMORY[0x277D837D0];
  *(v11 + 144) = &off_284193BE8;
  *(v11 + 112) = v17;
  *(v11 + 120) = v18;
  v14(v32, a3, a4);
  sub_22DEF0FA8(v32);
  v19 = MEMORY[0x277D839B0];
  v20 = v33;
  *(v11 + 176) = MEMORY[0x277D839B0];
  *(v11 + 184) = &off_284193B68;
  *(v11 + 152) = v20;
  v14(v34, a3, a4);
  sub_22DEF0FA8(v34);
  v21 = v35;
  *(v11 + 216) = v19;
  *(v11 + 224) = &off_284193B68;
  *(v11 + 192) = v21;
  v14(v36, a3, a4);
  v22 = v36[5];
  v23 = v36[6];

  sub_22DEF0FA8(v36);
  *(v11 + 256) = MEMORY[0x277D837D0];
  *(v11 + 264) = &off_284193BE8;
  *(v11 + 232) = v22;
  *(v11 + 240) = v23;
  v24 = v29;
  v25 = (*(a4 + 24))(a3, a4);
  *(v11 + 296) = MEMORY[0x277D839F8];
  *(v11 + 304) = &off_284193BC8;
  *(v11 + 272) = v25;
  *(v11 + 336) = MEMORY[0x277D84A28];
  *(v11 + 344) = &off_284193BA8;
  *(v11 + 312) = v28;
  v26 = v36[9];
  (*(*v24 + 192))(v11);

  if (!v26)
  {
    return (*(*v24 + 176))(result);
  }

  return result;
}

uint64_t sub_22DF01C9C(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = v6;
  *(v7 + 32) = a2;
  *(v7 + 24) = a3;
  *(v7 + 16) = a1;
  return MEMORY[0x2822009F8](sub_22DF01CC8, v6, 0);
}

uint64_t sub_22DF01CC8()
{
  v1 = sub_22DF63544();
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v5 = 0;
    goto LABEL_6;
  }

  if (v4 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    return MEMORY[0x2822009F8](v1, v2, v3);
  }

  v5 = v4;
LABEL_6:
  v6 = sub_22DF04434(v0[5]);
  v0[7] = 0;
  v0[8] = v7;
  v8 = v6;
  v9 = v7;
  v10 = v0[3];
  v11 = v0[2];
  v12 = *(v0[6] + 112);
  v0[9] = v12;
  v13 = swift_task_alloc();
  v0[10] = v13;
  v13[2] = v11;
  v13[3] = v10;
  v13[4] = v5;
  v13[5] = v8;
  v13[6] = v9;
  v1 = sub_22DF01E20;
  v2 = v12;
  v3 = 0;

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_22DF01E20()
{
  v1 = v0[7];
  sub_22DF0B3D0(0xD0000000000000C4, 0x800000022DF6DA90, sub_22DF04770);
  v0[11] = v1;
  if (v1)
  {
    v2 = v0[6];
    v3 = sub_22DF01F04;
  }

  else
  {
    v4 = v0[6];

    v3 = sub_22DF05A28;
    v2 = v4;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_22DF01F04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22DF01F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_22DF01F98, v3, 0);
}

uint64_t sub_22DF01F98()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = *(v1 + 112);
  v0[7] = v5;
  v6 = swift_task_alloc();
  v0[8] = v6;
  v6[2] = v4;
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = v1;

  return MEMORY[0x2822009F8](sub_22DF0202C, v5, 0);
}

uint64_t sub_22DF0202C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47668, &qword_22DF66190);
  sub_22DF0B3D0(0xD000000000000185, 0x800000022DF6DB60, sub_22DF04944);
  *(v0 + 72) = 0;
  v1 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_22DF02118, v1, 0);
}

uint64_t sub_22DF02134()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22DF02198@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47690, &qword_22DF663D8);
  v11 = swift_allocObject();
  v13 = a2[1];
  v25 = *a2;
  v12 = v25;
  *(v11 + 16) = xmmword_22DF66120;
  *(v11 + 32) = v12;
  v14 = MEMORY[0x277D837D0];
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = &off_284193BE8;
  v24 = v13;
  *(v11 + 96) = v14;
  *(v11 + 104) = &off_284193BE8;
  *(v11 + 72) = v13;
  v22 = a2[2];
  v23 = *(a2 + 6);
  v15 = v22;
  v16 = MEMORY[0x277D839B0];
  *(v11 + 136) = MEMORY[0x277D839B0];
  *(v11 + 144) = &off_284193B68;
  *(v11 + 112) = v15;
  v17 = BYTE1(v22);
  *(v11 + 176) = v16;
  *(v11 + 184) = &off_284193B68;
  *(v11 + 152) = v17;
  *(v11 + 216) = v14;
  *(v11 + 224) = &off_284193BE8;
  *(v11 + 192) = *(a2 + 40);
  v18 = MEMORY[0x277D84A28];
  *(v11 + 256) = MEMORY[0x277D84A28];
  *(v11 + 264) = &off_284193BA8;
  *(v11 + 232) = a3;
  *(v11 + 296) = v18;
  *(v11 + 304) = &off_284193BA8;
  *(v11 + 272) = a4;
  v19 = *(*a1 + 192);
  sub_22DF051C0(&v25, v21);
  sub_22DF051C0(&v24, v21);
  sub_22DF05794(&v22, v21);
  v19(v11);

  if (!v5)
  {
    v21[0] = MEMORY[0x277D84F90];
    MEMORY[0x28223BE20](result);
    (*(*a1 + 144))(sub_22DF057F0);
    result = v21[0];
    *a5 = v21[0];
  }

  return result;
}

uint64_t sub_22DF0239C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22DF023BC, v1, 0);
}

uint64_t sub_22DF023BC()
{
  v1 = v0[2];
  v2 = *(v0[3] + 112);
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22DF02438, v2, 0);
}

uint64_t sub_22DF02438()
{
  sub_22DF0B42C(sub_22DF04964);
  *(v0 + 48) = 0;
  v1 = *(v0 + 24);

  return MEMORY[0x2822009F8](sub_22DF05A28, v1, 0);
}

uint64_t sub_22DF024F8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_22DF02518, v1, 0);
}

uint64_t sub_22DF02518()
{
  v1 = v0[3];
  v2 = *(v0[4] + 112);
  v0[5] = v2;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22DF02594, v2, 0);
}

uint64_t sub_22DF02594()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47670, &qword_22DF67510);
  sub_22DF0B3D0(0xD000000000000045, 0x800000022DF6DCF0, sub_22DF04AA0);
  *(v0 + 56) = 0;
  v1 = *(v0 + 32);

  return MEMORY[0x2822009F8](sub_22DF05A44, v1, 0);
}

uint64_t sub_22DF02680()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22DF026E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47690, &qword_22DF663D8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22DF65900;
  *(v7 + 56) = MEMORY[0x277D83B88];
  *(v7 + 64) = &off_284193B88;
  *(v7 + 32) = a2;
  (*(*a1 + 192))();

  if (!v3)
  {
    v9 = MEMORY[0x277D84F90];
    MEMORY[0x28223BE20](result);
    (*(*a1 + 144))(sub_22DF0559C);
    result = v9;
    *a3 = v9;
  }

  return result;
}

uint64_t sub_22DF02838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_22DF0285C, v3, 0);
}

uint64_t sub_22DF0285C()
{
  v1 = *(v0 + 40);
  v5 = *(v0 + 24);
  v2 = *(*(v0 + 48) + 112);
  *(v0 + 56) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *(v3 + 16) = v5;
  *(v3 + 32) = v1;

  return MEMORY[0x2822009F8](sub_22DF028F0, v2, 0);
}

uint64_t sub_22DF028F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47678, &qword_22DF661B8);
  sub_22DF0B3D0(0xD000000000000091, 0x800000022DF6DD40, sub_22DF04ABC);
  *(v0 + 72) = 0;
  v1 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_22DF05A44, v1, 0);
}

uint64_t sub_22DF029DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47690, &qword_22DF663D8);
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D837D0];
  *(v11 + 16) = xmmword_22DF65910;
  *(v11 + 56) = v12;
  *(v11 + 64) = &off_284193BE8;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  *(v11 + 96) = MEMORY[0x277D83B88];
  *(v11 + 104) = &off_284193B88;
  *(v11 + 72) = a4;
  v13 = *(*a1 + 192);

  v13(v11);

  if (!v5)
  {
    v15 = MEMORY[0x277D84F90];
    MEMORY[0x28223BE20](result);
    (*(*a1 + 144))(sub_22DF05380);
    result = v15;
    *a5 = v15;
  }

  return result;
}

uint64_t sub_22DF02B6C(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_22DF02B8C, v1, 0);
}

uint64_t sub_22DF02B8C()
{
  v1 = v0[3];
  v2 = *(v0[4] + 112);
  v0[5] = v2;
  v0[6] = 0;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22DF02C08, v2, 0);
}

uint64_t sub_22DF02C08()
{
  v1 = v0[6];
  sub_22DF0B42C(sub_22DF04ADC);
  v0[8] = v1;
  if (v1)
  {
    v2 = v0[4];
    v3 = sub_22DF018B4;
  }

  else
  {
    v4 = v0[4];

    v3 = sub_22DF02CC8;
    v2 = v4;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_22DF02CC8()
{
  if (v0[2] == 50)
  {
    v0[6] = v0[8];
    v1 = v0[5];
    v2 = v0[3];
    v3 = swift_task_alloc();
    v0[7] = v3;
    *(v3 + 16) = v2;

    return MEMORY[0x2822009F8](sub_22DF02C08, v1, 0);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_22DF02D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v13 = a3;
  v6 = sub_22DF63594();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  (*(v7 + 32))(v10 + v9, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  (*(*a1 + 128))(0xD00000000000004BLL, 0x800000022DF6DFF0, sub_22DF0521C, v10, MEMORY[0x277D84F78] + 8);

  if (!v3)
  {
    result = (*(*a1 + 136))(result);
    *v13 = result;
  }

  return result;
}

uint64_t sub_22DF02F58(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22DF02F7C, v2, 0);
}

uint64_t sub_22DF02F7C()
{
  v1 = v0[3];
  v2 = *(v0[4] + 112);
  v0[5] = v2;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22DF02FF8, v2, 0);
}

uint64_t sub_22DF02FF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47680, &qword_22DF661D0);
  sub_22DF0B3D0(0xD000000000000046, 0x800000022DF6DDE0, sub_22DF04AF8);
  *(v0 + 56) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22DF03110@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22DF0AB08(0, a1, MEMORY[0x277D837D0], &off_284193BD8);
  if (v8)
  {
    sub_22DF0AA90(1, a1, MEMORY[0x277D84A28], &off_284193B98);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47698, &qword_22DF663E0);
    *a2 = v7;
    a2[1] = v8;
    sub_22DF63534();
    return (*(*(v4 - 8) + 56))(a2, 0, 1, v4);
  }

  else
  {
    sub_22DF04394();
    swift_allocError();
    *v6 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_22DF03240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22DF03268, v4, 0);
}

uint64_t sub_22DF03268()
{
  v1 = v0[4];
  v2 = v0[6];
  if (v1)
  {
    v3 = v0[5];
    v5 = v0[2];
    v4 = v0[3];
    v6 = *(v2 + 112);
    v0[7] = v6;
    v7 = swift_task_alloc();
    v0[8] = v7;
    v7[2] = v3;
    v7[3] = v5;
    v7[4] = v4;
    v7[5] = v1;
    v8 = sub_22DF03334;
  }

  else
  {
    v9 = v0[2];
    v6 = *(v2 + 112);
    v0[10] = v6;
    v10 = swift_task_alloc();
    v0[11] = v10;
    *(v10 + 16) = v9;
    v8 = sub_22DF03424;
  }

  return MEMORY[0x2822009F8](v8, v6, 0);
}

uint64_t sub_22DF03334()
{
  sub_22DF0B3D0(0xD0000000000000A8, 0x800000022DF6DE70, sub_22DF04E48);
  *(v0 + 72) = 0;
  v1 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_22DF0340C, v1, 0);
}

uint64_t sub_22DF03424()
{
  sub_22DF0B3D0(0xD000000000000038, 0x800000022DF6DE30, sub_22DF04D20);
  *(v0 + 96) = 0;
  v1 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_22DF05A28, v1, 0);
}

uint64_t sub_22DF034FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22DF0355C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22DF035DC()
{
  v1 = *(v0[3] + 112);
  v0[4] = v1;
  v0[5] = 0;
  return MEMORY[0x2822009F8](sub_22DF03600, v1, 0);
}

uint64_t sub_22DF03600()
{
  v1 = v0[5];
  sub_22DF0B42C(sub_22DF03710);
  v0[6] = v1;
  v2 = v0[3];
  if (v1)
  {
    v3 = sub_22DF036F8;
  }

  else
  {
    v3 = sub_22DF036AC;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_22DF036AC()
{
  if (*(v0 + 16) != 50)
  {
    return (*(v0 + 8))();
  }

  *(v0 + 40) = *(v0 + 48);
  return MEMORY[0x2822009F8](sub_22DF03600, *(v0 + 32), 0);
}

uint64_t sub_22DF03710@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(*a1 + 128))(0xD00000000000001DLL, 0x800000022DF6DFD0, sub_22DF037D0, 0, MEMORY[0x277D84F78] + 8);
  if (!v2)
  {
    result = (*(*a1 + 136))(result);
    *a2 = result;
  }

  return result;
}

uint64_t sub_22DF03808()
{
  v1 = *(v0[3] + 112);
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = 0x554E447473616CLL;
  *(v2 + 24) = 0xE700000000000000;

  return MEMORY[0x2822009F8](sub_22DF03898, v1, 0);
}

uint64_t sub_22DF03898()
{
  sub_22DF0B3D0(0xD000000000000025, 0x800000022DF6D9B0, sub_22DF04FAC);
  v0[6] = 0;

  v1 = v0[2] != 0;
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_22DF03998()
{
  v1 = *(v0 + 48);

  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CC0, &qword_22DF661F0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 56) == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {

    v6 = *(v0 + 8);

    return v6(2);
  }

  else
  {

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_22DF03A9C(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return MEMORY[0x2822009F8](sub_22DF03AC0, v1, 0);
}

uint64_t sub_22DF03AC0()
{
  v1 = *(v0 + 48);
  v2 = *(*(v0 + 16) + 112);
  *(v0 + 24) = v2;
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  v3[2] = 0x554E447473616CLL;
  v3[3] = 0xE700000000000000;
  v3[4] = v1;

  return MEMORY[0x2822009F8](sub_22DF03B58, v2, 0);
}

uint64_t sub_22DF03B58()
{
  sub_22DF0B3D0(0xD000000000000060, 0x800000022DF6DF20, sub_22DF04FD8);
  *(v0 + 40) = 0;
  v1 = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_22DF05A28, v1, 0);
}

uint64_t sub_22DF03C30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22DF03CB4()
{
  v1 = *(*(v0 + 16) + 112);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22DF03CD8, v1, 0);
}

uint64_t sub_22DF03CD8()
{
  sub_22DF0B3D0(0x4D5555434156, 0xE600000000000000, sub_22DF05A0C);
  *(v0 + 32) = 0;
  v1 = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_22DF05A28, v1, 0);
}

uint64_t DiskCache.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t DiskCache.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void *sub_22DF03E68(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA476B0, &qword_22DF663F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA476B8, &unk_22DF66400);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22DF03FB0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA476A8, &qword_22DF663F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22DF040BC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA476A0, &qword_22DF663E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22DF041E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47690, &qword_22DF663D8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22DF65900;
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 64) = &off_284193BE8;
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;
  v14 = *(*a1 + 192);

  v14(v13);

  if (!v6)
  {
    result = (*(*a1 + 160))(&v16, a4, a5);
    *a6 = v16;
  }

  return result;
}

uint64_t sub_22DF04308(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47650, &qword_22DF68840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22DF04394()
{
  result = qword_27DA47660;
  if (!qword_27DA47660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47660);
  }

  return result;
}

char *sub_22DF04434(uint64_t a1)
{
  v3 = sub_22DF63A04();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DF631B4();
  swift_allocObject();
  sub_22DF631A4();
  v26[1] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47590, &unk_22DF65E20);
  sub_22DEF7D64();
  v6 = sub_22DF63194();
  if (v1)
  {

    return v5;
  }

  v8 = v6;
  v9 = v7;

  v11 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    if (!v11)
    {
      v12 = BYTE6(v9);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v11 != 2)
  {
    v12 = 0;
    goto LABEL_13;
  }

  v14 = *(v8 + 16);
  v13 = *(v8 + 24);
  v12 = v13 - v14;
  if (__OFSUB__(v13, v14))
  {
    __break(1u);
LABEL_10:
    if (__OFSUB__(HIDWORD(v8), v8))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v12 = HIDWORD(v8) - v8;
  }

LABEL_13:
  v15 = sub_22DF144E4();
  if (*v15 < v12)
  {
    v16 = v15;
    if (qword_27DA493A0 != -1)
    {
      swift_once();
    }

    v17 = sub_22DF63734();
    __swift_project_value_buffer(v17, qword_27DA493A8);
    sub_22DEF7A88(v8, v9);
    v18 = sub_22DF63714();
    v5 = sub_22DF63D04();
    if (!os_log_type_enabled(v18, v5))
    {
      sub_22DEF7A34(v8, v9);
LABEL_31:

      sub_22DF04394();
      swift_allocError();
      *v25 = 0;
      swift_willThrow();
      sub_22DEF7A34(v8, v9);

      return v5;
    }

    result = swift_slowAlloc();
    *result = 134349312;
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        v19 = 0;
        goto LABEL_30;
      }

      v22 = *(v8 + 16);
      v21 = *(v8 + 24);
      v23 = __OFSUB__(v21, v22);
      v19 = v21 - v22;
      if (!v23)
      {
        goto LABEL_30;
      }

      __break(1u);
    }

    else if (!v11)
    {
      v19 = BYTE6(v9);
LABEL_30:
      *(result + 4) = v19;
      v24 = result;
      sub_22DEF7A34(v8, v9);
      *(v24 + 12) = 2050;
      *(v24 + 14) = *v16;
      _os_log_impl(&dword_22DEEA000, v18, v5, "event too large: (%{public}ld > %{public}lld", v24, 0x16u);
      MEMORY[0x2318DDBE0](v24, -1, -1);
      goto LABEL_31;
    }

    LODWORD(v19) = HIDWORD(v8) - v8;
    if (!__OFSUB__(HIDWORD(v8), v8))
    {
      v19 = v19;
      goto LABEL_30;
    }

    goto LABEL_34;
  }

  sub_22DF639F4();
  result = sub_22DF639D4();
  if (v20)
  {
    v5 = result;
    sub_22DEF7A34(v8, v9);

    return v5;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_22DF04770(uint64_t a1)
{
  v3 = v1;
  v5 = v3[2];
  v6 = v3[3];
  v8 = v3[4];
  v7 = v3[5];
  v9 = v3[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47690, &qword_22DF663D8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22DF66110;
  v22 = *v5;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = &off_284193BE8;
  *(v10 + 32) = *v5;
  v21 = v5[1];
  *(v10 + 96) = v11;
  *(v10 + 104) = &off_284193BE8;
  *(v10 + 72) = v5[1];
  v19 = v5[2];
  v20 = *(v5 + 6);
  v12 = MEMORY[0x277D839B0];
  v13 = v19;
  *(v10 + 136) = MEMORY[0x277D839B0];
  *(v10 + 144) = &off_284193B68;
  *(v10 + 112) = v13;
  v14 = BYTE1(v19);
  *(v10 + 176) = v12;
  *(v10 + 184) = &off_284193B68;
  *(v10 + 152) = v14;
  *(v10 + 216) = v11;
  *(v10 + 224) = &off_284193BE8;
  *(v10 + 192) = *(v5 + 40);
  *(v10 + 256) = MEMORY[0x277D839F8];
  *(v10 + 264) = &off_284193BC8;
  v15 = MEMORY[0x277D84A28];
  *(v10 + 232) = v6;
  *(v10 + 296) = v15;
  *(v10 + 304) = &off_284193BA8;
  *(v10 + 272) = v8;
  *(v10 + 336) = v11;
  *(v10 + 344) = &off_284193BE8;
  *(v10 + 312) = v7;
  *(v10 + 320) = v9;
  v16 = *(*a1 + 192);
  sub_22DF051C0(&v22, v18);
  sub_22DF051C0(&v21, v18);
  sub_22DF05794(&v19, v18);

  v16(v10);

  if (!v2)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t sub_22DF04964(uint64_t result)
{
  v3 = v1;
  v4 = result;
  v5 = *(v3 + 16);
  v6 = *(v5 + 16);
  if (!v6)
  {
    return (*(*v4 + 144))(result);
  }

  v7 = (v5 + 32);
  v8 = MEMORY[0x277D84F78];
  while (1)
  {
    v9 = *v7++;
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    (*(*v4 + 128))(0xD000000000000038, 0x800000022DF6E040, sub_22DF056B8, v10, v8 + 8);

    if (v2)
    {
      break;
    }

    if (!--v6)
    {
      return (*(*v4 + 144))(result);
    }
  }

  return result;
}

void sub_22DF04AF8(uint64_t a1)
{
  v3 = v1;
  v5 = *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47690, &qword_22DF663D8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22DF65910;
  v13 = *v5;
  v7 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = &off_284193BE8;
  *(v6 + 32) = *v5;
  v12 = v5[1];
  *(v6 + 96) = v7;
  *(v6 + 104) = &off_284193BE8;
  *(v6 + 72) = v5[1];
  v8 = *(*a1 + 192);
  sub_22DF051C0(&v13, v11);
  sub_22DF051C0(&v12, v11);
  v8(v6);

  if (!v2)
  {
    v9 = *(*a1 + 152);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47680, &qword_22DF661D0);
    v9(sub_22DF03110, 0, v10);
  }
}

uint64_t sub_22DF04D20(uint64_t a1)
{
  v3 = v1;
  v5 = *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47690, &qword_22DF663D8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22DF65910;
  v12 = *v5;
  v7 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = &off_284193BE8;
  *(v6 + 32) = *v5;
  v11 = v5[1];
  *(v6 + 96) = v7;
  *(v6 + 104) = &off_284193BE8;
  *(v6 + 72) = v5[1];
  v8 = *(*a1 + 192);
  sub_22DF051C0(&v12, v10);
  sub_22DF051C0(&v11, v10);
  v8(v6);

  if (!v2)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t sub_22DF04E48(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v7 = v3[4];
  v6 = v3[5];
  getTimeIntervalSince1970(Date:)(v3[2]);
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47690, &qword_22DF663D8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22DF66130;
  v16 = *v5;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = &off_284193BE8;
  *(v10 + 32) = *v5;
  v15 = v5[1];
  *(v10 + 96) = v11;
  *(v10 + 104) = &off_284193BE8;
  *(v10 + 72) = v5[1];
  *(v10 + 136) = v11;
  *(v10 + 144) = &off_284193BE8;
  *(v10 + 112) = v7;
  *(v10 + 120) = v6;
  *(v10 + 176) = MEMORY[0x277D84A28];
  *(v10 + 184) = &off_284193BA8;
  *(v10 + 152) = v9;
  v12 = *(*a1 + 192);
  sub_22DF051C0(&v16, v14);
  sub_22DF051C0(&v15, v14);

  v12(v10);

  if (!v2)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

unint64_t sub_22DF04FFC()
{
  result = qword_27DA47688;
  if (!qword_27DA47688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47688);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DiskCacheError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DiskCacheError(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_22DF0521C(uint64_t a1)
{
  sub_22DF63594();
  sub_22DF63544();
  v4 = 0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_5;
  }

  if (v3 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v4 = v3;
LABEL_5:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47690, &qword_22DF663D8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22DF65900;
  *(v5 + 56) = MEMORY[0x277D84A28];
  *(v5 + 64) = &off_284193BA8;
  *(v5 + 32) = v4;
  (*(*a1 + 192))();

  if (!v1)
  {
    (*(*a1 + 176))(v6);
  }
}

uint64_t sub_22DF05380(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  sub_22DF0AB08(0, a1, MEMORY[0x277D837D0], &off_284193BD8);
  if (v24)
  {
    sub_22DF0AB08(3, a1, MEMORY[0x277D837D0], &off_284193BD8);
    v6 = MEMORY[0x277D839B0];
    v27 = v3;
    sub_22DF0AA90(1, a1, MEMORY[0x277D839B0], &off_284193B58);
    sub_22DF0AA90(2, a1, v6, &off_284193B58);
    v7 = sub_22DF40530(v23, v23);
    v9 = v8;
    v11 = v10;

    v12 = v11;
    v13 = v27;
    sub_22DF40550(v4, v5, v23, v24, v7 & 0x101, v9, v12, v25);
    v14 = *v13;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v14;
    if ((result & 1) == 0)
    {
      result = sub_22DF040BC(0, *(v14 + 16) + 1, 1, v14);
      v14 = result;
      *v13 = result;
    }

    v17 = *(v14 + 16);
    v16 = *(v14 + 24);
    if (v17 >= v16 >> 1)
    {
      result = sub_22DF040BC((v16 > 1), v17 + 1, 1, v14);
      v14 = result;
      *v13 = result;
    }

    *(v14 + 16) = v17 + 1;
    v18 = v14 + 56 * v17;
    v19 = v25[0];
    v20 = v25[1];
    v21 = v25[2];
    *(v18 + 80) = v26;
    *(v18 + 48) = v20;
    *(v18 + 64) = v21;
    *(v18 + 32) = v19;
  }

  else
  {
    sub_22DF04394();
    swift_allocError();
    *v22 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22DF0559C(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_22DF0AB08(0, a1, MEMORY[0x277D837D0], &off_284193BD8);
  if (v10)
  {
    v3 = *v2;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v3;
    if ((result & 1) == 0)
    {
      result = sub_22DF03FB0(0, *(v3 + 16) + 1, 1, v3);
      v3 = result;
      *v2 = result;
    }

    v6 = *(v3 + 16);
    v5 = *(v3 + 24);
    if (v6 >= v5 >> 1)
    {
      result = sub_22DF03FB0((v5 > 1), v6 + 1, 1, v3);
      v3 = result;
      *v2 = result;
    }

    *(v3 + 16) = v6 + 1;
    v7 = v3 + 16 * v6;
    *(v7 + 32) = v9;
    *(v7 + 40) = v10;
  }

  else
  {
    sub_22DF04394();
    swift_allocError();
    *v8 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22DF056B8(uint64_t a1)
{
  v3 = v1;
  v5 = *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47690, &qword_22DF663D8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22DF65900;
  *(v6 + 56) = MEMORY[0x277D84A28];
  *(v6 + 64) = &off_284193BA8;
  *(v6 + 32) = v5;
  (*(*a1 + 192))();

  if (!v2)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t sub_22DF057F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  sub_22DF0AB08(2, a1, MEMORY[0x277D837D0], &off_284193BD8);
  if (v23)
  {
    sub_22DF0AA90(0, a1, MEMORY[0x277D839F8], &off_284193BB8);
    sub_22DF0AA90(1, a1, MEMORY[0x277D84A28], &off_284193B98);
    result = sub_22DEFA734(v22, 0x4D656E4F646E6553, 0xEE00656761737365, v22, v23);
    if (!v2)
    {
      v9 = result;
      v10 = v6;
      v11 = v7;
      v12 = v8;
      v13 = *v4;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v4 = v13;
      if ((result & 1) == 0)
      {
        result = sub_22DF03E68(0, v13[2] + 1, 1, v13);
        v13 = result;
        *v4 = result;
      }

      v14 = v13[2];
      v15 = v13[3];
      v16 = v14 + 1;
      if (v14 >= v15 >> 1)
      {
        v21 = v14 + 1;
        v19 = v13;
        v20 = v13[2];
        result = sub_22DF03E68((v15 > 1), v14 + 1, 1, v19);
        v14 = v20;
        v16 = v21;
        v13 = result;
        *v4 = result;
      }

      v13[2] = v16;
      v17 = &v13[5 * v14];
      v17[4] = v22;
      v17[5] = v9;
      v17[6] = v10;
      v17[7] = v11;
      v17[8] = v12;
    }
  }

  else
  {
    sub_22DF04394();
    swift_allocError();
    *v18 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22DF059C4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_22DF05A48()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA4E590);
  __swift_project_value_buffer(v0, qword_27DA4E590);
  return sub_22DF63724();
}

uint64_t sub_22DF05B04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22DEF1598;

  return sub_22DF05D94();
}

uint64_t sub_22DF05BA4()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22DF05BD4()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t sub_22DF05C0C()
{
  v4 = (*(*v0 + 88) + **(*v0 + 88));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_22DEEFBD4;

  return v4();
}

double sub_22DF05D1C()
{
  PostInstallActivityConfig.activityFlags.unsafeMutableAddressor();
  swift_beginAccess();

  return result;
}

uint64_t sub_22DF05D60()
{
  v0 = *PostInstallActivityConfig.identifier.unsafeMutableAddressor();

  return v0;
}

uint64_t sub_22DF05D94()
{
  v1 = sub_22DF63344();
  v0[18] = v1;
  v0[19] = *(v1 - 8);
  v0[20] = swift_task_alloc();
  v2 = sub_22DF63444();
  v0[21] = v2;
  v0[22] = *(v2 - 8);
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v0[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF05F08, 0, 0);
}

uint64_t sub_22DF05F08()
{
  v140 = v0;
  v139[9] = *MEMORY[0x277D85DE8];
  v123 = [objc_opt_self() defaultManager];
  if (qword_27DA49748 != -1)
  {
LABEL_66:
    swift_once();
  }

  v1 = *(qword_27DA4E5A8 + 16);
  v126 = v0;
  if (v1)
  {
    v2 = v0[22];
    v3 = v0[19];
    v130 = *MEMORY[0x277CC91C0];
    v128 = (v3 + 104);
    v127 = (v3 + 8);
    v4 = (v2 + 8);
    v134 = (v2 + 16);
    v5 = (qword_27DA4E5A8 + 40);
    v132 = (v2 + 8);
    do
    {
      v6 = v0[26];
      v8 = v0[20];
      v7 = v0[21];
      v9 = v0[18];
      v10 = *(v5 - 1);
      v11 = *v5;
      v136 = v5;

      sub_22DEFFC78();
      v0[14] = v10;
      v0[15] = v11;
      (*v128)(v8, v130, v9);
      sub_22DF06E10();
      sub_22DF63434();
      (*v127)(v8, v9);
      v12 = *v4;
      (*v4)(v6, v7);

      v137 = v12;
      if (sub_22DF633C4())
      {
        if (qword_27DA49740 != -1)
        {
          swift_once();
        }

        v13 = v0[27];
        v14 = v0[25];
        v15 = v0[21];
        v16 = sub_22DF63734();
        __swift_project_value_buffer(v16, qword_27DA4E590);
        v122 = *v134;
        (*v134)(v14, v13, v15);
        v17 = sub_22DF63714();
        v18 = sub_22DF63D24();
        v19 = os_log_type_enabled(v17, v18);
        v20 = v0[25];
        v21 = v0[21];
        if (v19)
        {
          v22 = v1;
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v139[0] = v24;
          *v23 = 136446210;
          v25 = sub_22DF63404();
          v26 = v12;
          v27 = v25;
          v29 = v28;
          v26(v20, v21);
          v30 = sub_22DEF0354(v27, v29, v139);

          *(v23 + 4) = v30;
          _os_log_impl(&dword_22DEEA000, v17, v18, "removing %{public}s", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v24);
          MEMORY[0x2318DDBE0](v24, -1, -1);
          v31 = v23;
          v1 = v22;
          v0 = v126;
          MEMORY[0x2318DDBE0](v31, -1, -1);
        }

        else
        {

          v12(v20, v21);
        }

        v51 = sub_22DF63394();
        v0[16] = 0;
        v52 = [v123 removeItemAtURL:v51 error:v0 + 16];

        v53 = v0[16];
        v54 = v0[27];
        if (v52)
        {
          v55 = v0[21];
          v56 = v53;
          v4 = v132;
          v137(v54, v55);
        }

        else
        {
          v121 = v1;
          v57 = v0[23];
          v58 = v0[21];
          v59 = v53;
          v60 = sub_22DF63334();

          swift_willThrow();
          v122(v57, v54, v58);
          v61 = v60;
          v62 = sub_22DF63714();
          v63 = sub_22DF63D04();

          v64 = os_log_type_enabled(v62, v63);
          v65 = v0[27];
          v66 = v0[23];
          v67 = v0[21];
          if (v64)
          {
            v68 = swift_slowAlloc();
            v125 = v65;
            v69 = swift_slowAlloc();
            v139[0] = v69;
            *v68 = 136446466;
            v70 = sub_22DF63404();
            v72 = v71;
            v137(v66, v67);
            v73 = sub_22DEF0354(v70, v72, v139);

            *(v68 + 4) = v73;
            *(v68 + 12) = 2082;
            swift_getErrorValue();
            v74 = sub_22DF64244();
            v76 = sub_22DEF0354(v74, v75, v139);

            *(v68 + 14) = v76;
            _os_log_impl(&dword_22DEEA000, v62, v63, "failed removing %{public}s: %{public}s", v68, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x2318DDBE0](v69, -1, -1);
            MEMORY[0x2318DDBE0](v68, -1, -1);

            v4 = v132;
            v137(v125, v67);
          }

          else
          {

            v4 = v132;
            v137(v66, v67);
            v137(v65, v67);
          }

          v1 = v121;
        }
      }

      else
      {
        if (qword_27DA49740 != -1)
        {
          swift_once();
        }

        v32 = v0[27];
        v33 = v0[24];
        v34 = v0[21];
        v35 = sub_22DF63734();
        __swift_project_value_buffer(v35, qword_27DA4E590);
        (*v134)(v33, v32, v34);
        v36 = sub_22DF63714();
        v37 = sub_22DF63CF4();
        v38 = os_log_type_enabled(v36, v37);
        v39 = v0[27];
        v40 = v0[24];
        v41 = v0[21];
        if (v38)
        {
          v124 = v0[27];
          v42 = swift_slowAlloc();
          v43 = v1;
          v44 = swift_slowAlloc();
          v139[0] = v44;
          *v42 = 136446210;
          v45 = sub_22DF63404();
          v47 = v46;
          v137(v40, v41);
          v48 = v45;
          v4 = v132;
          v49 = sub_22DEF0354(v48, v47, v139);

          *(v42 + 4) = v49;
          _os_log_impl(&dword_22DEEA000, v36, v37, "skipping %{public}s", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v44);
          v50 = v44;
          v1 = v43;
          v0 = v126;
          MEMORY[0x2318DDBE0](v50, -1, -1);
          MEMORY[0x2318DDBE0](v42, -1, -1);

          v137(v124, v41);
        }

        else
        {

          v137(v40, v41);
          v137(v39, v41);
        }
      }

      v5 = v136 + 2;
      --v1;
    }

    while (v1);
  }

  v77 = sub_22DF2E6B4();
  swift_beginAccess();
  v78 = [*v77 dictionaryRepresentation];
  v79 = sub_22DF638E4();

  v80 = v79 + 64;
  v81 = -1 << *(v79 + 32);
  if (-v81 < 64)
  {
    v82 = ~(-1 << -v81);
  }

  else
  {
    v82 = -1;
  }

  v83 = v82 & *(v79 + 64);
  v133 = v79;

  v138 = v77;
  swift_beginAccess();
  v84 = 0;
  v85 = (63 - v81) >> 6;
  v129 = v79 + 64;
  v131 = v85;
  if (v83)
  {
    do
    {
      while (1)
      {
LABEL_33:
        v87 = (*(v133 + 48) + ((v84 << 10) | (16 * __clz(__rbit64(v83)))));
        v88 = *v87;
        v89 = v87[1];
        v90 = qword_27DA49740;

        if (v90 != -1)
        {
          swift_once();
        }

        v91 = sub_22DF63734();
        __swift_project_value_buffer(v91, qword_27DA4E590);

        v92 = sub_22DF63714();
        v93 = sub_22DF63CF4();

        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v139[0] = v95;
          *v94 = 136446210;
          *(v94 + 4) = sub_22DEF0354(v88, v89, v139);
          _os_log_impl(&dword_22DEEA000, v92, v93, "default set: %{public}s", v94, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v95);
          MEMORY[0x2318DDBE0](v95, -1, -1);
          MEMORY[0x2318DDBE0](v94, -1, -1);
        }

        if (qword_27DA49750 != -1)
        {
          swift_once();
        }

        v135 = (v83 - 1) & v83;
        v96 = qword_27DA4E5B0;
        if (*(qword_27DA4E5B0 + 16))
        {
          sub_22DF642A4();
          sub_22DF63A54();
          v97 = sub_22DF642D4();
          v98 = -1 << *(v96 + 32);
          v99 = v97 & ~v98;
          if ((*(v96 + 56 + ((v99 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v99))
          {
            break;
          }
        }

LABEL_48:
        if (qword_27DA49758 != -1)
        {
          swift_once();
        }

        v103 = qword_27DA4E5B8;
        v104 = *(qword_27DA4E5B8 + 16);
        if (v104)
        {
          swift_beginAccess();
          v105 = v103 + 40;
          do
          {

            v108 = sub_22DF63AE4();

            if (v108)
            {

              v109 = sub_22DF63714();
              v110 = sub_22DF63D24();

              if (os_log_type_enabled(v109, v110))
              {
                v111 = swift_slowAlloc();
                v112 = swift_slowAlloc();
                v139[0] = v112;
                *v111 = 136446210;
                *(v111 + 4) = sub_22DEF0354(v88, v89, v139);
                _os_log_impl(&dword_22DEEA000, v109, v110, "removing default %{public}s", v111, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v112);
                MEMORY[0x2318DDBE0](v112, -1, -1);
                MEMORY[0x2318DDBE0](v111, -1, -1);
              }

              v106 = *v138;
              v107 = sub_22DF63984();
              [v106 removeObjectForKey_];
            }

            v105 += 16;
            --v104;
          }

          while (v104);

          v0 = v126;
          v80 = v129;
        }

        else
        {

          v0 = v126;
        }

        v83 = v135;
        v85 = v131;
        if (!v135)
        {
          goto LABEL_29;
        }
      }

      v100 = ~v98;
      while (1)
      {
        v101 = (*(v96 + 48) + 16 * v99);
        v102 = *v101 == v88 && v101[1] == v89;
        if (v102 || (sub_22DF64184() & 1) != 0)
        {
          break;
        }

        v99 = (v99 + 1) & v100;
        if (((*(v96 + 56 + ((v99 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v99) & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      v113 = sub_22DF63714();
      v114 = sub_22DF63D24();

      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v139[0] = v116;
        *v115 = 136446210;
        *(v115 + 4) = sub_22DEF0354(v88, v89, v139);
        _os_log_impl(&dword_22DEEA000, v113, v114, "removing default %{public}s", v115, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v116);
        MEMORY[0x2318DDBE0](v116, -1, -1);
        MEMORY[0x2318DDBE0](v115, -1, -1);
      }

      v80 = v129;
      v83 = v135;
      v117 = *v138;
      v118 = sub_22DF63984();

      [v117 removeObjectForKey_];

      v0 = v126;
      v85 = v131;
    }

    while (v135);
  }

  while (1)
  {
LABEL_29:
    v86 = v84 + 1;
    if (__OFADD__(v84, 1))
    {
      __break(1u);
      goto LABEL_66;
    }

    if (v86 >= v85)
    {
      break;
    }

    v83 = *(v80 + 8 * v86);
    ++v84;
    if (v83)
    {
      v84 = v86;
      goto LABEL_33;
    }
  }

  v119 = v0[1];

  return v119();
}

unint64_t sub_22DF06D70(uint64_t a1, uint64_t a2)
{
  result = sub_22DF06D98(a1, a2);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22DF06D98(uint64_t a1, uint64_t a2)
{
  result = qword_27DA476C0;
  if (!qword_27DA476C0)
  {
    type metadata accessor for PostInstallActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA476C0);
  }

  return result;
}

unint64_t sub_22DF06E10()
{
  result = qword_27DA476C8;
  if (!qword_27DA476C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA476C8);
  }

  return result;
}

uint64_t sub_22DF06E64@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, uint64_t a5@<X3>)
{
  v23 = a4;
  v19 = type metadata accessor for StorebagSectionMaybeShared(0, a2, a3, a5);
  v7 = *(v19 - 8);
  v8 = MEMORY[0x28223BE20](v19);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v18 = (&v18 - v11);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DF642F4();
  if (v5)
  {

    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_22DF070C0(v20);
    sub_22DEF2388(a1, v22);
    sub_22DF63CA4();
    v13 = v19;
    swift_storeEnumTagMultiPayload();
    v14 = *(v7 + 32);
    v15 = v18;
    v14(v18, v10, v13);
  }

  else
  {
    sub_22DF07128(v20, v22);
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    v12 = sub_22DF64194();
    v15 = v18;
    v13 = v19;
    *v18 = v12;
    v15[1] = v16;
    swift_storeEnumTagMultiPayload();
    __swift_destroy_boxed_opaque_existential_0(v22);
    v14 = *(v7 + 32);
  }

  v14(v23, v15, v13);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22DF070C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA476D0, "DC");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22DF07128(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_22DF0716C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x65756C6176;
  v6 = 0xE600000000000000;
  v7 = 0x6E6F69746361;
  if (a1 != 4)
  {
    v7 = 0x6F697469646E6F63;
    v6 = 0xE90000000000006ELL;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE300000000000000;
  v9 = 7955819;
  if (a1 != 1)
  {
    v9 = 0x7365756C6176;
    v8 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1937335659;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x65756C6176)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6E6F69746361)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE90000000000006ELL;
      if (v10 != 0x6F697469646E6F63)
      {
LABEL_34:
        v13 = sub_22DF64184();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE300000000000000;
      if (v10 != 7955819)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x7365756C6176)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1937335659)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_22DF07334(unsigned __int8 a1)
{
  sub_22DF642A4();
  sub_22DF63A54();

  return sub_22DF642D4();
}

uint64_t sub_22DF07424(uint64_t a1)
{
  sub_22DF63A54();
}

uint64_t sub_22DF07504(uint64_t a1, unsigned __int8 a2)
{
  sub_22DF642A4();
  sub_22DF63A54();

  return sub_22DF642D4();
}

unint64_t sub_22DF075F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22DF08420(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_22DF07620(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1937335659;
  v5 = 0xE500000000000000;
  v6 = 0x65756C6176;
  v7 = 0xE600000000000000;
  v8 = 0x6E6F69746361;
  if (v2 != 4)
  {
    v8 = 0x6F697469646E6F63;
    v7 = 0xE90000000000006ELL;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 7955819;
  if (v2 != 1)
  {
    v10 = 0x7365756C6176;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_22DF076C8()
{
  v1 = *v0;
  v2 = 1937335659;
  v3 = 0x65756C6176;
  v4 = 0x6E6F69746361;
  if (v1 != 4)
  {
    v4 = 0x6F697469646E6F63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 7955819;
  if (v1 != 1)
  {
    v5 = 0x7365756C6176;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_22DF0776C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22DF08420(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22DF077A0(uint64_t a1)
{
  v2 = sub_22DF08BA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DF077DC(uint64_t a1)
{
  v2 = sub_22DF08BA8();

  return MEMORY[0x2821FE720](a1, v2);
}

char *sub_22DF07818(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_22DF03FB0(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

__n128 sub_22DF0790C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_22DF07AD8(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_22DF07974()
{
  v1 = 0x6E6F69746361;
  v2 = 0x7365756C6176;
  if (*v0 != 2)
  {
    v2 = 0x6F697469646E6F63;
  }

  if (*v0)
  {
    v1 = 1937335659;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22DF079E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22DF09094(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22DF07A18(uint64_t a1)
{
  v2 = sub_22DF08BFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DF07A54(uint64_t a1)
{
  v2 = sub_22DF08BFC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_22DF07A90@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_22DF0810C(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_22DF07AD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47720, &unk_22DF667B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DF08BA8();
  sub_22DF64304();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v41 = v6;
  v53 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47670, &qword_22DF67510);
  LOBYTE(v42) = 0;
  sub_22DF08C50();
  sub_22DF64094();
  if (v47[0])
  {
    sub_22DF07818(v47[0]);
  }

  LOBYTE(v42) = 1;
  sub_22DF640E4();
  sub_22DF07818(v47[0]);
  LOBYTE(v47[0]) = 1;
  v40 = sub_22DF640C4();
  v10 = v9;
  v39 = a2;
  v38 = 0;
  v11 = v53;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_22DF03FB0(0, *(v11 + 2) + 1, 1, v11);
  }

  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  v14 = v38;
  if (v13 >= v12 >> 1)
  {
    v37 = sub_22DF03FB0((v12 > 1), v13 + 1, 1, v11);
    v14 = v38;
    v11 = v37;
  }

  *(v11 + 2) = v13 + 1;
  v15 = &v11[16 * v13];
  *(v15 + 4) = v40;
  *(v15 + 5) = v10;
  v53 = v11;
  v16 = v39;
  v52 = MEMORY[0x277D84F90];
  LOBYTE(v42) = 2;
  sub_22DF64094();
  if (v14)
  {
    (*(v41 + 8))(v8, v5);

    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  if (v47[0])
  {
    sub_22DF07818(v47[0]);
  }

  LOBYTE(v42) = 3;
  sub_22DF640E4();
  sub_22DF07818(v47[0]);
  LOBYTE(v47[0]) = 3;
  v18 = sub_22DF640C4();
  v39 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v52;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = sub_22DF03FB0(0, *(v22 + 2) + 1, 1, v22);
  }

  v24 = *(v22 + 2);
  v23 = *(v22 + 3);
  if (v24 >= v23 >> 1)
  {
    v22 = sub_22DF03FB0((v23 > 1), v24 + 1, 1, v22);
  }

  *(v22 + 2) = v24 + 1;
  v25 = &v22[16 * v24];
  *(v25 + 4) = v19;
  *(v25 + 5) = v21;
  v26 = v53;
  LOBYTE(v47[0]) = 4;
  v27 = sub_22DF640C4();
  v29 = v28;
  v40 = v27;
  v48 = 5;
  sub_22DF08D50();
  sub_22DF64094();
  (*(v41 + 8))(v8, v5);
  v41 = v49;
  v30 = v50;
  v38 = *(&v49 + 1);
  v31 = *(&v50 + 1);
  v32 = v51;
  *&v42 = v26;
  *(&v42 + 1) = v22;
  v33 = v40;
  *&v43 = v40;
  *(&v43 + 1) = v29;
  v44 = v49;
  v45 = v50;
  v46 = v51;
  sub_22DF08DA4(&v42, v47);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v47[0] = v26;
  v47[1] = v22;
  v47[2] = v33;
  v47[3] = v29;
  v47[4] = v41;
  v47[5] = v38;
  v47[6] = v30;
  v47[7] = v31;
  v47[8] = v32;
  result = sub_22DF08DDC(v47);
  v34 = v45;
  v35 = v39;
  *(v39 + 32) = v44;
  *(v35 + 48) = v34;
  *(v35 + 64) = v46;
  v36 = v43;
  *v35 = v42;
  *(v35 + 16) = v36;
  return result;
}

uint64_t sub_22DF0810C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA476F8, &unk_22DF667A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DF08BFC();
  sub_22DF64304();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v21) = 0;
  v17 = sub_22DF640C4();
  v18 = a2;
  v19 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47670, &qword_22DF67510);
  v20 = 1;
  sub_22DF08C50();
  sub_22DF64094();
  v16 = v21;
  v20 = 2;
  sub_22DF64094();
  v10 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47708, &qword_22DF667B0);
  v20 = 3;
  sub_22DF08CCC();
  sub_22DF64094();
  (*(v6 + 8))(v8, v5);
  v11 = v21;
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v13 = v18;
  v14 = v19;
  *v18 = v17;
  v13[1] = v14;
  v13[2] = v16;
  v13[3] = v10;
  v13[4] = v11;
  return result;
}

unint64_t sub_22DF08420(uint64_t a1, uint64_t a2)
{
  v2 = sub_22DF64064();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_22DF08470()
{
  result = qword_27DA476D8;
  if (!qword_27DA476D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA476D8);
  }

  return result;
}

unint64_t sub_22DF084C8()
{
  result = qword_27DA476E0;
  if (!qword_27DA476E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA476E0);
  }

  return result;
}

unint64_t sub_22DF08520()
{
  result = qword_27DA476E8;
  if (!qword_27DA476E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA476E8);
  }

  return result;
}

uint64_t sub_22DF0857C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22DF085E8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_22DF08700(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
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

uint64_t get_enum_tag_for_layout_string_19CloudTelemetryTools24StorebagSectionConditionVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22DF088F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_22DF0893C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StorebagSectionFilter.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StorebagSectionFilter.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22DF08B08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_22DF08B50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22DF08BA8()
{
  result = qword_27DA476F0;
  if (!qword_27DA476F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA476F0);
  }

  return result;
}

unint64_t sub_22DF08BFC()
{
  result = qword_27DA49D60[0];
  if (!qword_27DA49D60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA49D60);
  }

  return result;
}

unint64_t sub_22DF08C50()
{
  result = qword_27DA47700;
  if (!qword_27DA47700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA47670, &qword_22DF67510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47700);
  }

  return result;
}

unint64_t sub_22DF08CCC()
{
  result = qword_27DA47710;
  if (!qword_27DA47710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA47708, &qword_22DF667B0);
    sub_22DF08D50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47710);
  }

  return result;
}

unint64_t sub_22DF08D50()
{
  result = qword_27DA47718;
  if (!qword_27DA47718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47718);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StorebagSectionCondition.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StorebagSectionCondition.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22DF08F90()
{
  result = qword_27DA49E70[0];
  if (!qword_27DA49E70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA49E70);
  }

  return result;
}

unint64_t sub_22DF08FE8()
{
  result = qword_27DA49F80;
  if (!qword_27DA49F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA49F80);
  }

  return result;
}

unint64_t sub_22DF09040()
{
  result = qword_27DA49F88[0];
  if (!qword_27DA49F88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA49F88);
  }

  return result;
}

uint64_t sub_22DF09094(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_22DF64184() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1937335659 && a2 == 0xE400000000000000 || (sub_22DF64184() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000 || (sub_22DF64184() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F697469646E6F63 && a2 == 0xEA0000000000736ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_22DF64184();

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

uint64_t SessionConfiguration.Availability.hashValue.getter(unsigned __int8 a1)
{
  sub_22DF642A4();
  MEMORY[0x2318DD240](a1);
  return sub_22DF642D4();
}

uint64_t sub_22DF09280()
{
  v1 = v0;
  v2 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for SessionConfiguration.Backend(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DF09440(v1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22DF09508(v7, type metadata accessor for SessionConfiguration.Backend);
    return 0x6C61636F6CLL;
  }

  else
  {
    sub_22DF094A4(v7, v4);
    v8 = *v4;

    sub_22DF09508(v4, type metadata accessor for SessionConfiguration.BackendHTTP);
  }

  return v8;
}

uint64_t sub_22DF09408(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22DF09440(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionConfiguration.Backend(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DF094A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DF09508(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_22DF0956C()
{
  type metadata accessor for SessionConfiguration.BackendHTTP(0);

  return result;
}

uint64_t sub_22DF095A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>, double a9@<D0>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a9;
  *(a8 + 24) = a3;
  v14 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  v15 = v14[7];
  v16 = sub_22DF63444();
  result = (*(*(v16 - 8) + 32))(a8 + v15, a4, v16);
  *(a8 + v14[8]) = a5;
  *(a8 + v14[9]) = a6;
  *(a8 + v14[10]) = a7;
  return result;
}

uint64_t sub_22DF09670@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

void sub_22DF09680(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v1;
  *(a1 + 16) = 1;
  *(a1 + 24) = 1701736302;
  *(a1 + 32) = 0xE400000000000000;
}

unint64_t sub_22DF096AC()
{
  result = qword_27DA47BE0;
  if (!qword_27DA47BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47BE0);
  }

  return result;
}

uint64_t sub_22DF09700(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_22DF09748(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22DF097B0(uint64_t a1)
{
  result = type metadata accessor for SessionConfiguration.BackendHTTP(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22DF09840(uint64_t a1)
{
  sub_22DF09904();
  if (v1 <= 0x3F)
  {
    sub_22DF63444();
    if (v2 <= 0x3F)
    {
      sub_22DF09954(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DF09904()
{
  if (!qword_27DA47728)
  {
    v0 = sub_22DF63BC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27DA47728);
    }
  }
}

void sub_22DF09954(uint64_t a1)
{
  if (!qword_27DA47730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DA47BB0, "2?");
    v1 = sub_22DF63BC4();
    if (!v2)
    {
      atomic_store(v1, &qword_27DA47730);
    }
  }
}

const char *sub_22DF099C8(int a1, uint64_t a2, unint64_t a3)
{
  v4 = 0x6F727245204C5153;
  if (a3)
  {
    v4 = a2;
  }

  v9 = v4;

  MEMORY[0x2318DCA20](8250, 0xE200000000000000);

  result = sqlite3_errstr(a1);
  if (result)
  {
    v6 = sub_22DF63AA4();
    v8 = v7;

    MEMORY[0x2318DCA20](v6, v8);

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22DF09AA8()
{
  v1 = 0x6465736F6C63;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000026;
  }

  v2 = 0xD00000000000001ALL;
  if (*v0)
  {
    v2 = 0xD000000000000020;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t type metadata accessor for SQLiteDB.Location(uint64_t a1)
{
  result = qword_27DA4A5C0;
  if (!qword_27DA4A5C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22DF09B78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SQLiteDB.Location(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_22DF09BDC(uint64_t a1)
{
  v2 = v1;
  ppDb[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22DF63444();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = ppDb - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SQLiteDB.Location(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = ppDb - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  ppDb[0] = 0;
  sub_22DF09B78(a1, v10);
  if ((*(v5 + 48))(v10, 1, v4) != 1)
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_22DF63404();
    (*(v5 + 8))(v7, v4);
  }

  v11 = sub_22DF63A34();

  v12 = sqlite3_open_v2((v11 + 32), ppDb, 32774, 0);

  v13 = ppDb[0];
  if (!ppDb[0] || v12)
  {
    sub_22DF0A208();
    swift_allocError();
    *v14 = v12;
    *(v14 + 8) = 0xD000000000000017;
    *(v14 + 16) = 0x800000022DF6E3F0;
    swift_willThrow();
    sub_22DF0B374(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_22DF0B374(a1);
    *(v2 + 16) = v13;
  }

  return v2;
}

uint64_t sub_22DF09E94()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    *(v0 + 24) = 1;
    sqlite3_close_v2(*(v0 + 16));
  }

  return swift_deallocClassInstance();
}

uint64_t sub_22DF09EDC()
{
  v1 = sqlite3_expanded_sql(*(v0 + 16));
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22DF63AA4();
  sqlite3_free(v2);
  return v3;
}

uint64_t sub_22DF09F38()
{
  v1 = v0;
  v2 = sqlite3_step(*(v0 + 16));
  if (v2 == 101)
  {
    swift_beginAccess();
    *(v0 + 24) = 1;
    return 0;
  }

  else if (v2 == 100)
  {
  }

  else
  {
    v3 = v2;
    sub_22DF63F24();

    strcpy(v9, "Statement ((");
    BYTE5(v9[1]) = 0;
    HIWORD(v9[1]) = -5120;
    v5 = (*(*v0 + 96))(v4);
    MEMORY[0x2318DCA20](v5);

    MEMORY[0x2318DCA20](0xD000000000000018, 0x800000022DF6E160);
    v1 = v9[0];
    v6 = v9[1];
    sub_22DF0A208();
    swift_allocError();
    *v7 = v3;
    *(v7 + 8) = v1;
    *(v7 + 16) = v6;
    swift_willThrow();
  }

  return v1;
}

void sub_22DF0A08C(void (*a1)(uint64_t))
{
  v4 = *(v1 + 16);
  while (1)
  {
    v5 = sqlite3_step(v4);
    if (v5 != 100)
    {
      break;
    }

    a1(v6);

    if (v2)
    {
      return;
    }
  }

  if (v5 == 101)
  {
    swift_beginAccess();
    *(v1 + 24) = 1;
  }

  else
  {
    v7 = v5;
    sub_22DF63F24();

    strcpy(v13, "Statement ((");
    BYTE5(v13[1]) = 0;
    HIWORD(v13[1]) = -5120;
    v9 = (*(*v1 + 96))(v8);
    MEMORY[0x2318DCA20](v9);

    MEMORY[0x2318DCA20](0xD000000000000018, 0x800000022DF6E160);
    v10 = v13[0];
    v11 = v13[1];
    sub_22DF0A208();
    swift_allocError();
    *v12 = v7;
    *(v12 + 8) = v10;
    *(v12 + 16) = v11;
    swift_willThrow();
  }
}

unint64_t sub_22DF0A208()
{
  result = qword_27DA47738;
  if (!qword_27DA47738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47738);
  }

  return result;
}

uint64_t sub_22DF0A25C@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = v3;
  result = sub_22DF09F38();
  if (!v4)
  {
    if (result)
    {
      a1();
      if (sub_22DF09F38())
      {

        v11 = *(v3 + 16);
        do
        {
          v12 = sqlite3_step(v11);
        }

        while (v12 == 100);
        if (v12 == 101)
        {
          swift_beginAccess();
          v5[24] = 1;
          sub_22DF0A4D0();
          swift_allocError();
          *v13 = 1;
        }

        else
        {
          v14 = v12;
          sub_22DF63F24();

          strcpy(v20, "Statement ((");
          BYTE5(v20[1]) = 0;
          HIWORD(v20[1]) = -5120;
          v16 = (*(*v5 + 96))(v15);
          MEMORY[0x2318DCA20](v16);

          MEMORY[0x2318DCA20](0xD000000000000018, 0x800000022DF6E160);
          v17 = v20[0];
          v18 = v20[1];
          sub_22DF0A208();
          swift_allocError();
          *v19 = v14;
          *(v19 + 8) = v17;
          *(v19 + 16) = v18;
        }

        swift_willThrow();

        return (*(*(a2 - 8) + 8))(a3, a2);
      }

      else
      {
      }
    }

    else
    {
      sub_22DF0A4D0();
      swift_allocError();
      *v10 = 0;
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_22DF0A4D0()
{
  result = qword_27DA47740;
  if (!qword_27DA47740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47740);
  }

  return result;
}

uint64_t sub_22DF0A524(uint64_t a1, uint64_t a2)
{
  v4[2] = a1;
  v4[3] = a2;
  return (*(*v2 + 152))(sub_22DF0A584, v4, a1);
}

uint64_t sub_22DF0A584(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if (sqlite3_column_count(*(a1 + 16)) == 1)
  {
    v4 = *(v2 + 8);

    return v4(v5, 0, v3, v2);
  }

  else
  {
    sub_22DF0A4D0();
    swift_allocError();
    *v7 = 2;
    return swift_willThrow();
  }
}

uint64_t sub_22DF0A640(uint64_t a1, uint64_t a2)
{
  v6[2] = a1;
  v6[3] = a2;
  v3 = *(*v2 + 152);
  v4 = sub_22DF63E24();
  return v3(sub_22DF0A6D0, v6, v4);
}

uint64_t sub_22DF0A6D0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if (sqlite3_column_count(*(a1 + 16)) == 1)
  {
    v4 = *(v2 + 8);

    return v4(v5, 0, v3, v2);
  }

  else
  {
    sub_22DF0A4D0();
    swift_allocError();
    *v7 = 2;
    return swift_willThrow();
  }
}

void sub_22DF0A78C()
{
  v1 = *(v0 + 16);
  do
  {
    v2 = sqlite3_step(v1);
  }

  while (v2 == 100);
  if (v2 == 101)
  {
    swift_beginAccess();
    *(v0 + 24) = 1;
  }

  else
  {
    v3 = v2;
    sub_22DF63F24();

    strcpy(v9, "Statement ((");
    BYTE5(v9[1]) = 0;
    HIWORD(v9[1]) = -5120;
    v5 = (*(*v0 + 96))(v4);
    MEMORY[0x2318DCA20](v5);

    MEMORY[0x2318DCA20](0xD000000000000018, 0x800000022DF6E160);
    v6 = v9[0];
    v7 = v9[1];
    sub_22DF0A208();
    swift_allocError();
    *v8 = v3;
    *(v8 + 8) = v6;
    *(v8 + 16) = v7;
    swift_willThrow();
  }
}

uint64_t sub_22DF0A8D0(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  return (*(v5 + 8))(v2, a1, v4, v5);
}

uint64_t sub_22DF0A944(uint64_t result)
{
  v3 = 0;
  v4 = *(result + 16);
  v5 = result + 32;
  while (1)
  {
    v6 = 0uLL;
    v7 = v4;
    v8 = 0uLL;
    v9 = 0uLL;
    if (v3 != v4)
    {
      if (v3 >= v4)
      {
        goto LABEL_11;
      }

      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_12;
      }

      *&v11[0] = v3;
      result = sub_22DEF2388(v5 + 40 * v3, v11 + 8);
      v6 = v11[0];
      v8 = v11[1];
      v9 = v11[2];
    }

    v12[0] = v6;
    v12[1] = v8;
    v12[2] = v9;
    if (!v9)
    {
      return result;
    }

    v10 = v6;
    sub_22DF07128((v12 + 8), v11);
    result = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    (*(*v1 + 184))(result, v11);
    result = __swift_destroy_boxed_opaque_existential_0(v11);
    v3 = v7;
    if (v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_22DF0AA58()
{
  sqlite3_finalize(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_22DF0AA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 8);

  return v8(a2, a1, a3, a4);
}

uint64_t sub_22DF0AB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 8);

  return v8(a2, a1, a3, a4);
}

uint64_t sub_22DF0AC48(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = a1;
  return result;
}

uint64_t sub_22DF0AC80(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if ((*(*v3 + 96))())
  {
    sub_22DF0A208();
    swift_allocError();
    *v8 = 1;
    *(v8 + 8) = 0xD00000000000001DLL;
    *(v8 + 16) = 0x800000022DF6E180;
    return swift_willThrow();
  }

  else
  {
    result = sub_22DF0AD80(a1, a2);
    if (!v4)
    {
      a3();
    }
  }

  return result;
}

uint64_t sub_22DF0AD80(uint64_t a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(v2 + 112);
  if (*(v3 + 24))
  {
    sub_22DF0A4D0();
    swift_allocError();
    *v4 = 3;
  }

  else
  {
    v11[0] = 0;
    v5 = sub_22DF63A34();
    v6 = *(v5 + 16);
    if (v6 >> 31)
    {
      __break(1u);
    }

    v7 = sqlite3_prepare_v2(*(v3 + 16), (v5 + 32), v6, v11, 0);

    v8 = v11[0];
    if (v11[0] && !v7)
    {
      type metadata accessor for SQLiteDB.Statement();
      result = swift_allocObject();
      *(result + 24) = 0;
      *(result + 16) = v8;
      return result;
    }

    sub_22DF0A208();
    swift_allocError();
    *v10 = v7;
    *(v10 + 8) = 0xD00000000000001BLL;
    *(v10 + 16) = 0x800000022DF6E410;
  }

  return swift_willThrow();
}

uint64_t sub_22DF0AF00(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 112);
  if (*(v3 + 24))
  {
    sub_22DF0A4D0();
    swift_allocError();
    *v4 = 3;
  }

  else
  {
    v5 = *(v3 + 16);
    v6 = sub_22DF63A34();
    v7 = sqlite3_exec(v5, (v6 + 32), 0, 0, 0);

    if (!v7)
    {
      return result;
    }

    sub_22DF0A208();
    swift_allocError();
    *v9 = v7;
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
  }

  return swift_willThrow();
}

uint64_t sub_22DF0AFF4(uint64_t a1, uint64_t a2)
{
  if ((*(*v2 + 96))())
  {
    sub_22DF0A208();
    swift_allocError();
    *v6 = 1;
    *(v6 + 8) = 0xD00000000000001DLL;
    *(v6 + 16) = 0x800000022DF6E180;
    return swift_willThrow();
  }

  else
  {
    result = sub_22DF0AF00(a1, a2);
    if (!v3)
    {
      return (*(*v2 + 104))(1);
    }
  }

  return result;
}

uint64_t sub_22DF0B0F4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22DF0B12C(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_22DF0B17C(a1);
  return v2;
}

void *sub_22DF0B17C(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for SQLiteDB.Location(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  sub_22DF09B78(a1, v7);
  type metadata accessor for SQLiteDB.DBHandle();
  v8 = swift_allocObject();
  sub_22DF09BDC(v7);
  if (!v2)
  {
    v9 = 0xD000000000000013;
    v10 = sqlite3_exec(*(v8 + 16), "PRAGMA journal_mode=WAL;", 0, 0, 0);
    if (v10)
    {
      v11 = v10;
      v12 = "PRAGMA journal_mode=WAL;";
      v9 = 0xD000000000000014;
    }

    else
    {
      v13 = sqlite3_exec(*(v8 + 16), "PRAGMA foreign_keys=ON;", 0, 0, 0);
      if (!v13)
      {
        sub_22DF0B374(a1);
        *(v3 + 112) = v8;
        return v3;
      }

      v11 = v13;
      v12 = "PRAGMA foreign_keys=ON;";
    }

    v14 = v12 | 0x8000000000000000;
    sub_22DF0A208();
    swift_allocError();
    *v15 = v11;
    *(v15 + 8) = v9;
    *(v15 + 16) = v14;
    swift_willThrow();
  }

  swift_defaultActor_destroy();
  sub_22DF0B374(a1);
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_22DF0B374(uint64_t a1)
{
  v2 = type metadata accessor for SQLiteDB.Location(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22DF0B3D0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  result = sub_22DF0AD80(a1, a2);
  if (!v3)
  {
    a3();
  }

  return result;
}

uint64_t sub_22DF0B42C(void (*a1)(uint64_t))
{
  type metadata accessor for SQLiteDB.Transaction();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v1;

  sub_22DF0AF00(0xD000000000000011, 0x800000022DF6E220);
  if (!v2)
  {
    a1(v4);
    swift_beginAccess();
    if ((*(v4 + 24) & 1) == 0)
    {
      sub_22DF0AF00(0x54494D4D4F43, 0xE600000000000000);
    }
  }
}

uint64_t sub_22DF0B5B0()
{
  v1 = *(v0 + 112);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return sqlite3_close_v2(*(v1 + 16));
  }

  return result;
}

uint64_t sub_22DF0B5D0()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22DF0B608(uint64_t result, uint64_t a2, char a3)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = sqlite3_bind_int(*(result + 16), a2, a3 & 1);
  if (result)
  {
    v3 = result;
    sub_22DF0A208();
    swift_allocError();
    *v4 = v3;
    *(v4 + 8) = 0xD000000000000012;
    *(v4 + 16) = 0x800000022DF6E240;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22DF0B6B0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    v4 = sqlite3_column_int(*(result + 16), a2);

    *a3 = v4 > 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_22DF0B73C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a2 < 0xFFFFFFFF80000000 || a3 < 0xFFFFFFFF80000000)
  {
    goto LABEL_9;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  result = sqlite3_bind_int(*(result + 16), a2, a3);
  if (result)
  {
    v3 = result;
    sub_22DF0A208();
    swift_allocError();
    *v4 = v3;
    *(v4 + 8) = 0xD000000000000012;
    *(v4 + 16) = 0x800000022DF6E240;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22DF0B7F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    v4 = sqlite3_column_int(*(result + 16), a2);

    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_22DF0B880@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, sqlite3_int64 *a3@<X8>)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    v4 = sqlite3_column_int64(*(result + 16), a2);

    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_22DF0B8E8(uint64_t result, uint64_t a2)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = sqlite3_bind_int64(*(result + 16), a2, *v2);
  if (result)
  {
    v3 = result;
    sub_22DF0A208();
    swift_allocError();
    *v4 = v3;
    *(v4 + 8) = 0xD000000000000014;
    *(v4 + 16) = 0x800000022DF6E260;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22DF0B990@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    v4 = sqlite3_column_double(*(result + 16), a2);

    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_22DF0B9F8(uint64_t result, uint64_t a2)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = sqlite3_bind_double(*(result + 16), a2, *v2);
  if (result)
  {
    v3 = result;
    sub_22DF0A208();
    swift_allocError();
    *v4 = v3;
    *(v4 + 8) = 0xD000000000000015;
    *(v4 + 16) = 0x800000022DF6E280;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22DF0BAA0(sqlite3_stmt *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22DF63A34();
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(v7 + 16);
  if (!(v4 >> 31))
  {
    a1 = *(a1 + 2);
    if (qword_27DA4A130 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  __break(1u);
LABEL_11:
  v11 = v7;
  swift_once();
  v7 = v11;
LABEL_5:
  v8 = sqlite3_bind_text(a1, a2, (v7 + 32), v4, qword_27DA4A138);

  if (v8)
  {
    sub_22DF0A208();
    swift_allocError();
    *v10 = v8;
    *(v10 + 8) = 0xD000000000000015;
    *(v10 + 16) = 0x800000022DF6E2A0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22DF0BBD0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (sqlite3_column_text(*(result + 16), a2))
  {
    v4 = sub_22DF63AB4();
    v6 = v5;
  }

  else
  {

    v4 = 0;
    v6 = 0;
  }

  *a3 = v4;
  a3[1] = v6;
  return result;
}

unint64_t sub_22DF0BC88()
{
  result = qword_27DA47748;
  if (!qword_27DA47748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47748);
  }

  return result;
}

uint64_t sub_22DF0BCE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22DF0BD3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_22DF0BDFC(uint64_t a1)
{
  v1 = sub_22DF63444();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_22DF0BE94()
{
  v0 = sub_22DF2E6B4();
  swift_beginAccess();
  v1 = *v0;
  v2 = sub_22DF63984();
  v3 = [v1 integerForKey_];

  if (v3 <= 1)
  {
    if (!v3)
    {
LABEL_21:
      v17 = sub_22DF2E5EC();
      swift_beginAccess();
      if (*v17)
      {
        return 1;
      }

      else
      {
        return 3;
      }
    }

    if (v3 == 1)
    {
      v4 = 0;
      goto LABEL_11;
    }

LABEL_16:
    if (qword_27DA4A5D0 != -1)
    {
      swift_once();
    }

    v13 = sub_22DF63734();
    __swift_project_value_buffer(v13, qword_27DA4E5C0);
    v14 = sub_22DF63714();
    v15 = sub_22DF63D04();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134349056;
      *(v16 + 4) = v3;
      _os_log_impl(&dword_22DEEA000, v14, v15, "invalid environmentType override from defaults: %{public}ld", v16, 0xCu);
      MEMORY[0x2318DDBE0](v16, -1, -1);
    }

    goto LABEL_21;
  }

  if (v3 == 2)
  {
    v4 = 1;
    goto LABEL_11;
  }

  if (v3 == 4)
  {
    v4 = 3;
    goto LABEL_11;
  }

  if (v3 != 3)
  {
    goto LABEL_16;
  }

  v4 = 2;
LABEL_11:
  if (qword_27DA4A5D0 != -1)
  {
    swift_once();
  }

  v5 = sub_22DF63734();
  __swift_project_value_buffer(v5, qword_27DA4E5C0);
  v6 = sub_22DF63714();
  v7 = sub_22DF63CE4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19[0] = v9;
    *v8 = 136446466;
    v10 = sub_22DF63A14();
    v12 = sub_22DEF0354(v10, v11, v19);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2050;
    *(v8 + 14) = v3;
    _os_log_impl(&dword_22DEEA000, v6, v7, "overriding environmentType to %{public}s (%{public}ld) from defaults", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x2318DDBE0](v9, -1, -1);
    MEMORY[0x2318DDBE0](v8, -1, -1);
  }

  return v4;
}

void *sub_22DF0C198(void (*a1)(uint64_t *__return_ptr, char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = (a3 + 32);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = *v5++;
    v17 = v8;
    a1(&v15, &v17, a2);
    if (v3)
    {
      break;
    }

    v9 = v16;
    if (v16)
    {
      v10 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_22DF0EC8C(0, v6[2] + 1, 1, v6);
      }

      v12 = v6[2];
      v11 = v6[3];
      if (v12 >= v11 >> 1)
      {
        v6 = sub_22DF0EC8C((v11 > 1), v12 + 1, 1, v6);
      }

      v6[2] = v12 + 1;
      v7 = &v6[2 * v12];
      *(v7 + 32) = v10;
      v7[5] = v9;
    }

    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

uint64_t sub_22DF0C2C8()
{
  v1 = *v0;
  sub_22DF642A4();
  MEMORY[0x2318DD240](v1 + 1);
  return sub_22DF642D4();
}

uint64_t sub_22DF0C340(uint64_t a1)
{
  v2 = *v1;
  sub_22DF642A4();
  MEMORY[0x2318DD240](v2 + 1);
  return sub_22DF642D4();
}

uint64_t sub_22DF0C384@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22DF12118(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_22DF0C3D0()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA4E5C0);
  __swift_project_value_buffer(v0, qword_27DA4E5C0);
  return sub_22DF63724();
}

uint64_t sub_22DF0C448()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v3 = 0x6E695F656C707061;
    if (v1 != 1)
    {
      v3 = 1684366707;
    }

    if (*v0)
    {
      return v3;
    }

    else
    {
      return 0x6D706F6C65766564;
    }
  }

  else if (*v0 > 4u)
  {
    if (v1 == 6)
    {
      return 0x765F646572616873;
    }

    else
    {
      return 0x5F68736572666572;
    }
  }

  else if (v1 == 3)
  {
    return 0x657361656C6572;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_22DF0C548@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>, uint64_t a3@<X0>)
{
  v4 = sub_22DF121D8(a3, a1);

  *a2 = v4;
  return result;
}

uint64_t sub_22DF0C594(uint64_t a1)
{
  v2 = sub_22DF13D6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DF0C5D0(uint64_t a1)
{
  v2 = sub_22DF13D6C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_22DF0C60C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_22DF1245C(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

unint64_t sub_22DF0C654()
{
  v1 = 0xD000000000000010;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000025;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

uint64_t sub_22DF0C6B0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_22DF63314();
  swift_allocObject();
  sub_22DF63304();
  sub_22DF12184();
  sub_22DF632F4();
  if (v4)
  {

    return sub_22DEF7A34(a1, a2);
  }

  else
  {
    v10 = v21;
    if (*(v22 + 16) && (v11 = sub_22DF0FBBC(a3), (v12 & 1) != 0))
    {
      v13 = *(*(v22 + 56) + 8 * v11);
    }

    else
    {
      v13 = sub_22DF12AD8(MEMORY[0x277D84F90]);
    }

    if (v20)
    {
      v14 = 86400;
    }

    else
    {
      v14 = v19;
    }

    v16 = v14;
    if (v21)
    {

      v15 = v18;

      sub_22DEF7A34(a1, a2);
    }

    else
    {
      v15 = v18;

      v10 = sub_22DF12C04(MEMORY[0x277D84F90]);

      sub_22DEF7A34(a1, a2);
    }

    *a4 = v13;
    *(a4 + 8) = v16;
    *(a4 + 16) = v17;
    *(a4 + 24) = v15;
    *(a4 + 32) = v10;
  }

  return result;
}

uint64_t sub_22DF0C880(void *a1)
{
  v70 = a1;
  v2 = 0;
  v3 = sub_22DF63654();
  v67 = *(v3 - 8);
  v68 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22DF63674();
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47770, &qword_22DF66DC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v58 - v10;
  v12 = *v1;
  v13 = 1 << *(v12 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v12 + 64);
  v16 = (v13 + 63) >> 6;

  v65 = 0;
  v66 = MEMORY[0x277D84F90];
  if (!v15)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v18 = *(v12 + 56) + ((v2 << 11) | (32 * v17));
      if (!*(v18 + 24))
      {
        break;
      }

      if (!v15)
      {
        goto LABEL_6;
      }
    }

    v20 = *(v18 + 8);
    v69 = *(v18 + 16);
    v21 = *v18;
    v61 = v20;
    v62 = v21;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = sub_22DF0EFA8(0, *(v66 + 2) + 1, 1, v66);
    }

    v23 = *(v66 + 2);
    v22 = *(v66 + 3);
    v24 = v23 + 1;
    if (v23 >= v22 >> 1)
    {
      v59 = *(v66 + 2);
      v60 = v23 + 1;
      v28 = sub_22DF0EFA8((v22 > 1), v23 + 1, 1, v66);
      v23 = v59;
      v24 = v60;
      v66 = v28;
    }

    v25 = v66;
    *(v66 + 2) = v24;
    v26 = &v25[24 * v23];
    v27 = v61;
    *(v26 + 4) = v62;
    *(v26 + 5) = v27;
    *(v26 + 6) = v69;
  }

  while (v15);
  while (1)
  {
LABEL_6:
    v19 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_63;
    }

    if (v19 >= v16)
    {
      break;
    }

    v15 = *(v12 + 64 + 8 * v19);
    ++v2;
    if (v15)
    {
      v2 = v19;
      goto LABEL_4;
    }
  }

  v29 = *(v66 + 2);
  if (!v29)
  {

    return 6;
  }

  LODWORD(v69) = sub_22DF2EB24();
  sub_22DF63634();
  sub_22DF63664();
  (*(v63 + 8))(v8, v64);
  sub_22DF63644();
  (*(v67 + 8))(v5, v68);
  v30 = sub_22DF63624();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v11, 1, v30) == 1)
  {
    isUniquelyReferenced_nonNull_native = sub_22DEF1364(v11, &qword_27DA47770, &qword_22DF66DC0);
    v67 = 0;
    v68 = 0;
  }

  else
  {
    v67 = sub_22DF63614();
    v68 = v34;
    isUniquelyReferenced_nonNull_native = (*(v31 + 8))(v11, v30);
  }

  v2 = v65;
  v35 = v29 - 1;
  v36 = MEMORY[0x277D84F90];
  v37 = (v66 + 48);
  while (2)
  {
    v38 = *v37;
    MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
    *(&v58 - 2) = v70;

    sub_22DF0D0F8(sub_22DF12E24, v38, &v71);

    v84[10] = v81;
    v84[11] = v82;
    v84[6] = v77;
    v84[7] = v78;
    v84[8] = v79;
    v84[9] = v80;
    v84[2] = v73;
    v84[3] = v74;
    v84[4] = v75;
    v84[5] = v76;
    v84[0] = v71;
    v84[1] = v72;
    v94 = v80;
    v95 = v81;
    v96 = v82;
    v97 = v83;
    v90 = v76;
    v91 = v77;
    v92 = v78;
    v93 = v79;
    v86 = v72;
    v87 = v73;
    v88 = v74;
    v89 = v75;
    v84[12] = v83;
    v85 = v71;
    isUniquelyReferenced_nonNull_native = sub_22DF12EF4(&v85);
    if (isUniquelyReferenced_nonNull_native == 1)
    {
      v39 = v36;
      if (!v35)
      {
        break;
      }

      goto LABEL_55;
    }

    if (v97 == 2)
    {
      v39 = v36;
      if ((v69 & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_33:
      v44 = COERCE_DOUBLE(sub_22DF12D20(*(&v97 + 1), v67, v68));
      if (v45)
      {
        if ((v88 & 1) != 0 || (v46 = *(&v87 + 1), *(&v87 + 1) >= 1.0))
        {
LABEL_36:
          sub_22DEF1364(v84, &qword_27DA47778, &qword_22DF66DC8);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_22DF0EEB4(0, *(v39 + 16) + 1, 1, v39);
            v39 = isUniquelyReferenced_nonNull_native;
          }

          v41 = *(v39 + 16);
          v47 = *(v39 + 24);
          v42 = v41 + 1;
          v43 = 1;
          if (v41 >= v47 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_22DF0EEB4((v47 > 1), v41 + 1, 1, v39);
            v39 = isUniquelyReferenced_nonNull_native;
          }

          goto LABEL_54;
        }
      }

      else
      {
        v46 = v44;
        if (v44 >= 1.0)
        {
          goto LABEL_36;
        }
      }

      v48 = v86;
      if (v86)
      {

        sub_22DEF1364(v84, &qword_27DA47778, &qword_22DF66DC8);
        v65 = type metadata accessor for Session();
        v49 = v70[3];
        v50 = v70[4];
        __swift_project_boxed_opaque_existential_1(v70, v49);
        v51 = (*(v50 + 48))(v49, v50);
        v52 = COERCE_DOUBLE(sub_22DF18918(v48, v51));
        v54 = v53;

        if ((v54 & 1) == 0)
        {
          v39 = v36;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_22DF0EEB4(0, *(v36 + 16) + 1, 1, v36);
            v39 = isUniquelyReferenced_nonNull_native;
          }

          v41 = *(v39 + 16);
          v55 = *(v39 + 24);
          v42 = v41 + 1;
          if (v41 >= v55 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_22DF0EEB4((v55 > 1), v41 + 1, 1, v39);
            v39 = isUniquelyReferenced_nonNull_native;
          }

          v43 = v46 > v52;
          goto LABEL_54;
        }
      }

      else
      {
        sub_22DEF1364(v84, &qword_27DA47778, &qword_22DF66DC8);
      }

      v39 = v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_22DF0EEB4(0, *(v36 + 16) + 1, 1, v36);
        v39 = isUniquelyReferenced_nonNull_native;
      }

      v41 = *(v39 + 16);
      v56 = *(v39 + 24);
      v42 = v41 + 1;
      if (v41 >= v56 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_22DF0EEB4((v56 > 1), v41 + 1, 1, v39);
        v39 = isUniquelyReferenced_nonNull_native;
      }

      v43 = 2;
    }

    else
    {
      v39 = v36;
      if ((v69 | sub_22DF1D000(v97 & 1)))
      {
        goto LABEL_33;
      }

LABEL_27:
      sub_22DEF1364(v84, &qword_27DA47778, &qword_22DF66DC8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_22DF0EEB4(0, *(v39 + 16) + 1, 1, v39);
        v39 = isUniquelyReferenced_nonNull_native;
      }

      v41 = *(v39 + 16);
      v40 = *(v39 + 24);
      v42 = v41 + 1;
      if (v41 >= v40 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_22DF0EEB4((v40 > 1), v41 + 1, 1, v39);
        v39 = isUniquelyReferenced_nonNull_native;
      }

      v43 = 3;
    }

LABEL_54:
    *(v39 + 16) = v42;
    *(v39 + v41 + 32) = v43;
    if (v35)
    {
LABEL_55:
      v36 = v39;
      --v35;
      v37 += 3;
      continue;
    }

    break;
  }

  *&v71 = v39;

  sub_22DF105EC(&v71);
  if (v2)
  {
LABEL_63:

    __break(1u);
    return result;
  }

  if (*(v71 + 16))
  {
    v33 = *(v71 + 32);
  }

  else
  {

    return 5;
  }

  return v33;
}

void sub_22DF0D0F8(uint64_t (*a1)(__int128 *)@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v7 = (a2 + 32);
    while (1)
    {
      v8 = v7[9];
      v9 = v7[11];
      v69 = v7[10];
      v70 = v9;
      v10 = v7[11];
      v71 = v7[12];
      v11 = v7[5];
      v12 = v7[7];
      v65 = v7[6];
      v66 = v12;
      v13 = v7[7];
      v14 = v7[9];
      v67 = v7[8];
      v68 = v14;
      v15 = v7[1];
      v16 = v7[3];
      v61 = v7[2];
      v62 = v16;
      v17 = v7[3];
      v18 = v7[5];
      v63 = v7[4];
      v64 = v18;
      v19 = v7[1];
      v59 = *v7;
      v60 = v19;
      v56 = v69;
      v57 = v10;
      v58 = v7[12];
      v52 = v65;
      v53 = v13;
      v54 = v67;
      v55 = v8;
      v48 = v61;
      v49 = v17;
      v50 = v63;
      v51 = v11;
      v46 = v59;
      v47 = v15;
      sub_22DF13844(&v59, &v33);
      v20 = a1(&v46);
      if (v3)
      {
        v43 = v56;
        v44 = v57;
        v45 = v58;
        v39 = v52;
        v40 = v53;
        v41 = v54;
        v42 = v55;
        v35 = v48;
        v36 = v49;
        v37 = v50;
        v38 = v51;
        v33 = v46;
        v34 = v47;
        sub_22DF138A0(&v33);
        return;
      }

      if (v20)
      {
        break;
      }

      v43 = v56;
      v44 = v57;
      v45 = v58;
      v39 = v52;
      v40 = v53;
      v41 = v54;
      v42 = v55;
      v35 = v48;
      v36 = v49;
      v37 = v50;
      v38 = v51;
      v33 = v46;
      v34 = v47;
      sub_22DF138A0(&v33);
      v7 += 13;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v43 = v56;
    v44 = v57;
    v45 = v58;
    v39 = v52;
    v40 = v53;
    v41 = v54;
    v42 = v55;
    v35 = v48;
    v36 = v49;
    v37 = v50;
    v38 = v51;
    v33 = v46;
    v34 = v47;
    nullsub_1();
    v28 = v44;
    a3[10] = v43;
    a3[11] = v28;
    a3[12] = v45;
    v29 = v40;
    a3[6] = v39;
    a3[7] = v29;
    v30 = v42;
    a3[8] = v41;
    a3[9] = v30;
    v31 = v36;
    a3[2] = v35;
    a3[3] = v31;
    v32 = v38;
    a3[4] = v37;
    a3[5] = v32;
    v27 = v33;
    v26 = v34;
  }

  else
  {
LABEL_6:
    sub_22DF141FC(&v59);
    v21 = v70;
    a3[10] = v69;
    a3[11] = v21;
    a3[12] = v71;
    v22 = v66;
    a3[6] = v65;
    a3[7] = v22;
    v23 = v68;
    a3[8] = v67;
    a3[9] = v23;
    v24 = v62;
    a3[2] = v61;
    a3[3] = v24;
    v25 = v64;
    a3[4] = v63;
    a3[5] = v25;
    v27 = v59;
    v26 = v60;
  }

  *a3 = v27;
  a3[1] = v26;
}

uint64_t sub_22DF0D334@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v237 = a2;
  v5 = type metadata accessor for SessionConfiguration.Backend(0);
  v234 = *(v5 - 8);
  v235 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v236 = (&v223 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v229 = &v223 - v9;
  MEMORY[0x28223BE20](v8);
  v228 = &v223 - v10;
  v11 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  MEMORY[0x28223BE20](v11 - 8);
  v227 = &v223 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47410, &qword_22DF65B80);
  MEMORY[0x28223BE20](v13 - 8);
  v247 = &v223 - v14;
  v251 = sub_22DF63444();
  v15 = *(v251 - 8);
  v16 = MEMORY[0x28223BE20](v251);
  v232 = &v223 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v231 = &v223 - v18;
  v261 = sub_22DF63654();
  v19 = *(v261 - 8);
  v20 = MEMORY[0x28223BE20](v261);
  v250 = &v223 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v253 = &v223 - v22;
  v260 = sub_22DF63674();
  v23 = *(v260 - 8);
  v24 = MEMORY[0x28223BE20](v260);
  v249 = &v223 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v252 = &v223 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47770, &qword_22DF66DC0);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v248 = &v223 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v223 - v30;
  v32 = a1[3];
  v33 = a1[4];
  v255 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  (*(v33 + 8))(v288, v32, v33);
  v290 = v289;
  v270 = *(&v289 + 1);
  v272 = v289;

  sub_22DEF0FA8(v288);
  v240 = v3;
  v34 = *v3;
  v35 = v31;
  v36 = *(v34 + 64);
  v243 = v34 + 64;
  v37 = 1 << *(v34 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & v36;
  v40 = (v37 + 63) >> 6;
  v258 = (v19 + 8);
  v259 = (v23 + 8);
  v246 = (v15 + 48);
  v225 = (v15 + 16);
  v226 = (v15 + 32);
  v224 = (v15 + 8);

  v41 = v39;
  v42 = v40;
  v43 = 0;
  v44 = 0;
  *&v45 = 136315138;
  v239 = v45;
  *&v45 = 136446210;
  v233 = v45;
  v238 = MEMORY[0x277D84F90];
  v241 = MEMORY[0x277D84F90];
  v242 = v34;
  v254 = v31;
  v245 = v40;
  while (1)
  {
LABEL_7:
    if (v41)
    {
      goto LABEL_12;
    }

    do
    {
      v47 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        __break(1u);
        goto LABEL_133;
      }

      if (v47 >= v42)
      {
        sub_22DF13A04(&v290);

        v217 = v240[2];
        v218 = v240[3];

        v219 = sub_22DEF1280();
        result = sub_22DF09670(v238, v241, v219 & 1, v217, v218, &v275);
        v221 = v276;
        v222 = v237;
        *v237 = v275;
        v222[1] = v221;
        *(v222 + 4) = v277;
        return result;
      }

      v41 = *(v243 + 8 * v47);
      ++v43;
    }

    while (!v41);
    v43 = v47;
LABEL_12:
    v48 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v49 = v48 | (v43 << 6);
    v50 = *(v34 + 56) + 32 * v49;
    v52 = *v50;
    v51 = *(v50 + 8);
    v53 = *(v50 + 16);
    v54 = *(v50 + 24);
    v269 = v53;
    v264 = v52;
    if (!v54)
    {
      break;
    }

    if (v54 == 1)
    {
      v256 = v43;
      v257 = v41;
      sub_22DF12F0C(v52, v51, v53, 1);

      v55 = sub_22DF2E5EC();
      swift_beginAccess();
      if (*v55)
      {
        v244 = v51;
        v263 = *(v52 + 16);
        if (v263)
        {
          v56 = 0;
          v57 = (v52 + 96);
          while (1)
          {
            if (v56 >= *(v52 + 16))
            {
              goto LABEL_135;
            }

            v265 = v56;
            v266 = &v223;
            v271 = v44;
            v58 = *(v57 - 8);
            v59 = *(v57 - 7);
            LODWORD(v262) = *(v57 - 48);
            v61 = *(v57 - 5);
            v60 = *(v57 - 4);
            v62 = *(v57 - 24);
            v63 = *(v57 - 2);
            v64 = *(v57 - 1);
            v267 = v58;
            v268 = v63;
            v65 = *v57;
            v275 = v290;
            MEMORY[0x28223BE20](v58);
            *(&v223 - 2) = &v275;

            v66 = v61;
            v67 = v61;
            v68 = v60;
            v69 = v62;
            sub_22DF12FC8(v67, v60, v62);
            v70 = v268;
            v71 = v64;
            v72 = v64;
            v73 = v65;
            sub_22DEEBC28(v268, v72, v65);
            v44 = v271;
            if (sub_22DF10540(sub_22DF12FAC, (&v223 - 4), v267))
            {
              break;
            }

            v56 = (v265 + 1);
            sub_22DF12FE0(v66, v68, v69);
            sub_22DEEBC34(v70, v71, v73);
            v57 += 72;
            v52 = v264;
            v53 = v269;
            if (v263 == v56)
            {
              goto LABEL_4;
            }
          }

          v266 = v66;
          v163 = v68;
          LODWORD(v271) = v69;
          LODWORD(v265) = v73;
          v164 = v71;
          v165 = v264;
          v166 = v244;
          v167 = v269;
          sub_22DF12F5C(v264, v244, v269, 1);
          if (v262)
          {
            v59 = 1.0;
          }

          v168 = v255[3];
          v169 = v255[4];
          __swift_project_boxed_opaque_existential_1(v255, v168);
          v170 = (*(v169 + 24))(v168, v169);
          v35 = v254;
          v34 = v242;
          if (v170 >= v59)
          {

            sub_22DF12FE0(v266, v163, v271);
            sub_22DEEBC34(v268, v164, v265);
            v149 = v165;
            v150 = v166;
            v151 = v167;
            goto LABEL_77;
          }

          v171 = v240[4];
          v172 = v163;
          v173 = sub_22DF13090(v266, v163, v271, v171);
          v174 = v164;
          v175 = v265;
          if (v265)
          {
            if (*(v171 + 16))
            {

              v176 = v268;
              v262 = sub_22DEF08FC(v268, v174);
              LODWORD(v263) = v177;
              sub_22DEEBC34(v176, v174, 1);
              if ((v263 & 1) != 0 && *(*(v171 + 56) + 16 * v262 + 8) == 1)
              {
                goto LABEL_90;
              }

              v175 = 1;
              v179 = MEMORY[0x277D84F90];
            }

            else
            {
              v175 = 1;
              v179 = MEMORY[0x277D84F90];
              v176 = v268;
            }
          }

          else
          {
LABEL_90:

            v176 = v268;
            v179 = v178;
          }

          sub_22DF12FE0(v266, v172, v271);
          sub_22DEEBC34(v176, v174, v175);
          v196 = *(v179 + 16);
          if (v196)
          {
            v265 = v173;
            v271 = v44;
            *&v275 = MEMORY[0x277D84F90];
            sub_22DF1198C(0, v196, 0);
            v197 = v275;
            v268 = v196 - 1;
            v263 = v179;
            for (i = (v179 + 72); ; i += 6)
            {
              v199 = *(i - 5);
              v200 = *(i - 4);
              LODWORD(v266) = *(i - 24);
              v201 = *(i - 1);
              v267 = *(i - 2);
              v202 = *i;
              *&v275 = v197;
              v204 = *(v197 + 16);
              v203 = *(v197 + 24);
              swift_bridgeObjectRetain_n();

              if (v204 >= v203 >> 1)
              {
                sub_22DF1198C((v203 > 1), v204 + 1, 1);
                v197 = v275;
              }

              *(v197 + 16) = v204 + 1;
              v205 = v197 + (v204 << 6);
              *(v205 + 32) = v199;
              *(v205 + 40) = v200;
              *(v205 + 48) = v199;
              *(v205 + 56) = v200;
              *(v205 + 64) = v266;
              v206 = *(&v273 + 3);
              *(v205 + 65) = v273;
              *(v205 + 68) = v206;
              *(v205 + 72) = v267;
              *(v205 + 80) = v201;
              *(v205 + 88) = v202;
              if (!v268)
              {
                break;
              }

              --v268;
            }

            v35 = v254;
            v34 = v242;
            v44 = v271;
            v207 = v269;
            if (*(v197 + 16))
            {
LABEL_120:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47780, &qword_22DF66DD0);
              v208 = sub_22DF64044();
LABEL_123:
              *&v275 = v208;

              sub_22DF0F75C(v209, 1, &v275);
              if (v44)
              {
                goto LABEL_137;
              }

              nullsub_1();
              v210 = v236;
              *v236 = v211;
              v210[1] = v212;
              v210[2] = v213;
              swift_storeEnumTagMultiPayload();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v241 = sub_22DF0F210(0, v241[2] + 1, 1, v241);
              }

              v215 = v241[2];
              v214 = v241[3];
              if (v215 >= v214 >> 1)
              {
                v241 = sub_22DF0F210((v214 > 1), v215 + 1, 1, v241);
              }

              sub_22DF12F5C(v264, v244, v207, 1);
              v216 = v241;
              v241[2] = v215 + 1;
              sub_22DF140DC(v236, v216 + ((*(v234 + 80) + 32) & ~*(v234 + 80)) + *(v234 + 72) * v215, type metadata accessor for SessionConfiguration.Backend);
              v42 = v245;
              v43 = v256;
              v41 = v257;
              v44 = 0;
              continue;
            }
          }

          else
          {

            v207 = v269;
            if (*(MEMORY[0x277D84F90] + 16))
            {
              goto LABEL_120;
            }
          }

          v208 = MEMORY[0x277D84F98];
          goto LABEL_123;
        }

LABEL_4:
        v46 = v244;
        sub_22DF12F5C(v52, v244, v53, 1);
        sub_22DF12F5C(v52, v46, v53, 1);
        v35 = v254;
LABEL_5:
        v34 = v242;
      }

      else
      {
        sub_22DF12F5C(v52, v51, v53, 1);
        v149 = v52;
        v150 = v51;
        v151 = v53;
LABEL_77:
        sub_22DF12F5C(v149, v150, v151, 1);
      }

LABEL_6:
      v42 = v245;
      v43 = v256;
      v41 = v257;
    }
  }

  v268 = *(v53 + 16);
  if (!v268)
  {
    goto LABEL_7;
  }

  v256 = v43;
  v257 = v41;
  v74 = (*(v34 + 48) + 16 * v49);
  v75 = v74[1];
  v230 = *v74;
  v262 = v75;

  v244 = v51;
  sub_22DF12F0C(v52, v51, v53, 0);

  if (*(v53 + 16))
  {
    v76 = 0;
    v267 = v53 + 32;
    while (2)
    {
      v77 = (v267 + 208 * v76);
      v275 = *v77;
      v78 = v77[1];
      v79 = v77[2];
      v80 = v77[4];
      v278 = v77[3];
      v279 = v80;
      v276 = v78;
      v277 = v79;
      v81 = v77[5];
      v82 = v77[6];
      v83 = v77[8];
      v282 = v77[7];
      v283 = v83;
      v280 = v81;
      v281 = v82;
      v84 = v77[9];
      v85 = v77[10];
      v86 = v77[12];
      v286 = v77[11];
      v287 = v86;
      v284 = v84;
      v285 = v85;
      if (__PAIR128__(v270, v272) != v275 && (sub_22DF64184() & 1) == 0)
      {
        goto LABEL_72;
      }

      v87 = v287;
      if (v287 == 2)
      {
        sub_22DF13844(&v275, &v273);
        v88 = 0;
      }

      else
      {
        sub_22DF13844(&v275, &v273);
        v88 = sub_22DF1D000(v87 & 1);
      }

      v89 = BYTE1(v287) != 2 && sub_22DF1D000(BYTE1(v287) & 1);
      if (((sub_22DF2EB24() | v88) & 1) == 0)
      {
        sub_22DF138A0(&v275);

        if (qword_27DA4A5D0 != -1)
        {
          swift_once();
        }

        v152 = sub_22DF63734();
        __swift_project_value_buffer(v152, qword_27DA4E5C0);
        v153 = v262;

        v154 = sub_22DF63714();
        v155 = sub_22DF63CF4();

        v156 = os_log_type_enabled(v154, v155);
        v34 = v242;
        if (v156)
        {
          v157 = swift_slowAlloc();
          v271 = v154;
          v158 = v157;
          v159 = swift_slowAlloc();
          v273 = v159;
          *v158 = v233;
          v160 = sub_22DEF0354(v230, v153, &v273);

          *(v158 + 4) = v160;
          v161 = v155;
          v162 = v271;
          _os_log_impl(&dword_22DEEA000, v271, v161, "skipping %{public}s: dnu disabled", v158, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v159);
          MEMORY[0x2318DDBE0](v159, -1, -1);
          MEMORY[0x2318DDBE0](v158, -1, -1);

          sub_22DF12F5C(v264, v244, v53, 0);
        }

        else
        {

          sub_22DF12F5C(v264, v244, v53, 0);
        }

        goto LABEL_6;
      }

      LODWORD(v265) = v89;
      LODWORD(v266) = v87;
      v90 = sub_22DF63984();
      v91 = MGCopyAnswer();

      if (!v91)
      {
        goto LABEL_136;
      }

      v92 = v280;
      type metadata accessor for CFString();
      v93 = swift_dynamicCastUnknownClassUnconditional();
      v94 = sub_22DF639B4();
      v96 = v95;

      if (v92)
      {
        v273 = v94;
        v274 = v96;
        MEMORY[0x28223BE20](v97);
        *(&v223 - 2) = &v273;

        v98 = sub_22DF10540(sub_22DF144B8, (&v223 - 4), v92);

        if ((v98 & 1) == 0)
        {

LABEL_41:
          sub_22DF138A0(&v275);
          goto LABEL_72;
        }
      }

      v99 = *(&v279 + 1);
      if (*(&v279 + 1))
      {
        v273 = v94;
        v274 = v96;
        MEMORY[0x28223BE20](v97);
        *(&v223 - 2) = &v273;

        v100 = sub_22DF10540(sub_22DF144B8, (&v223 - 4), v99);

        if (v100)
        {
          goto LABEL_41;
        }

        v101 = *(&v286 + 1);
        if (!*(&v286 + 1))
        {
          goto LABEL_46;
        }
      }

      else
      {

        v101 = *(&v286 + 1);
        if (!*(&v286 + 1))
        {
          goto LABEL_46;
        }
      }

      v102 = v252;
      sub_22DF63634();
      v103 = v253;
      sub_22DF63664();
      (*v259)(v102, v260);
      sub_22DF63644();
      (*v258)(v103, v261);
      v104 = sub_22DF63624();
      v105 = *(v104 - 8);
      if ((*(v105 + 48))(v35, 1, v104) == 1)
      {

        sub_22DF138A0(&v275);
        sub_22DEF1364(v35, &qword_27DA47770, &qword_22DF66DC0);
        goto LABEL_72;
      }

      v106 = sub_22DF63614();
      v108 = v107;
      v109 = (*(v105 + 8))(v35, v104);
      v273 = v106;
      v274 = v108;
      MEMORY[0x28223BE20](v109);
      *(&v223 - 2) = &v273;
      LOBYTE(v106) = sub_22DF10540(sub_22DF144B8, (&v223 - 4), v101);

      if ((v106 & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_46:
      v110 = v44;
      v112 = v248;
      v111 = v249;
      sub_22DF63634();
      v113 = v250;
      sub_22DF63664();
      (*v259)(v111, v260);
      sub_22DF63644();
      (*v258)(v113, v261);
      v114 = sub_22DF63624();
      v115 = *(v114 - 8);
      if ((*(v115 + 48))(v112, 1, v114) == 1)
      {
        sub_22DEF1364(v112, &qword_27DA47770, &qword_22DF66DC0);
        goto LABEL_56;
      }

      v116 = *(&v287 + 1);
      v263 = sub_22DF63614();
      v271 = v117;
      v118 = (*(v115 + 8))(v112, v114);
      if (v116)
      {
        v119 = *(v116 + 16);
        v120 = v110;
        if (v119)
        {
          v121 = 0;
          v122 = (v116 + 40);
          while (1)
          {
            if (v121 >= *(v116 + 16))
            {
              goto LABEL_134;
            }

            v123 = *(v122 - 1);
            v124 = *v122;
            v273 = v263;
            v274 = v271;
            MEMORY[0x28223BE20](v118);
            *(&v223 - 2) = &v273;
            swift_bridgeObjectRetain_n();
            v125 = sub_22DF10540(sub_22DF144B8, (&v223 - 4), v123);

            if (v125)
            {
              break;
            }

            ++v121;
            v122 += 2;
            if (v119 == v121)
            {
              goto LABEL_54;
            }
          }

          v53 = v269;
LABEL_60:
          v126 = v276;
          v271 = v120;
          if (v276 && (type metadata accessor for Session(), v127 = v255[3], v128 = v255[4], __swift_project_boxed_opaque_existential_1(v255, v127), v129 = (*(v128 + 48))(v127, v128), v130 = COERCE_DOUBLE(sub_22DF18918(v126, v129)), v132 = v131, , (v132 & 1) == 0))
          {
            if (v130 >= v124)
            {
LABEL_93:

              sub_22DF138A0(&v275);
              sub_22DF12F5C(v264, v244, v53, 0);

              v35 = v254;
              v34 = v242;
LABEL_110:
              v42 = v245;
              v43 = v256;
              v41 = v257;
              v44 = v271;
              goto LABEL_7;
            }
          }

          else
          {
            v133 = v255[3];
            v134 = v255[4];
            __swift_project_boxed_opaque_existential_1(v255, v133);
            if ((*(v134 + 24))(v133, v134) >= v124)
            {
              goto LABEL_93;
            }
          }

          v135 = BYTE1(v286);
          v136 = *(&v283 + 1);
          v137 = v284;
          v138 = BYTE8(v284);
          v139 = *(&v276 + 1);
          v140 = v277;
          v141 = v247;
          sub_22DF63414();
          if ((*v246)(v141, 1, v251) != 1)
          {

            v180 = v231;
            v181 = v141;
            v182 = v251;
            (*v226)(v231, v181, v251);
            v183 = v240[4];
            sub_22DEEBC28(v136, v137, v138);
            v184 = sub_22DF13090(v136, v137, v138, v183);
            sub_22DEEBC34(v136, v137, v138);
            if (v126)
            {
              v185 = v126;
            }

            else
            {
              v185 = MEMORY[0x277D84F90];
            }

            (*v225)(v232, v180, v182);

            sub_22DF138A0(&v275);
            v186 = sub_22DF1D000((v135 == 2) | v135 & 1);
            v187 = v266 != 2 && sub_22DF1D000(v266 & 1);
            v188 = v227;
            v35 = v254;
            v34 = v242;
            sub_22DF095A0(v230, v262, v185, v232, v184, v186, v187, v227, v124);
            v189 = v269;
            if (v265)
            {
              sub_22DF13944(v188, v228);
              swift_storeEnumTagMultiPayload();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v241 = sub_22DF0F210(0, v241[2] + 1, 1, v241);
              }

              v190 = v241;
              v192 = v241[2];
              v191 = v241[3];
              v193 = v192 + 1;
              if (v192 >= v191 >> 1)
              {
                v190 = sub_22DF0F210((v191 > 1), v192 + 1, 1, v241);
                v194 = v228;
                v241 = v190;
              }

              else
              {
                v194 = v228;
              }
            }

            else
            {
              sub_22DF13944(v188, v229);
              swift_storeEnumTagMultiPayload();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v238 = sub_22DF0F210(0, v238[2] + 1, 1, v238);
              }

              v190 = v238;
              v192 = v238[2];
              v195 = v238[3];
              v193 = v192 + 1;
              if (v192 >= v195 >> 1)
              {
                v190 = sub_22DF0F210((v195 > 1), v192 + 1, 1, v238);
                v194 = v229;
                v238 = v190;
              }

              else
              {
                v194 = v229;
              }
            }

            sub_22DF12F5C(v264, v244, v189, 0);
            sub_22DF139A8(v188);
            (*v224)(v231, v251);
            v190[2] = v193;
            sub_22DF140DC(v194, v190 + ((*(v234 + 80) + 32) & ~*(v234 + 80)) + *(v234 + 72) * v192, type metadata accessor for SessionConfiguration.Backend);
            goto LABEL_110;
          }

          sub_22DEF1364(v141, &qword_27DA47410, &qword_22DF65B80);
          if (qword_27DA4A5D0 != -1)
          {
            swift_once();
          }

          v142 = sub_22DF63734();
          __swift_project_value_buffer(v142, qword_27DA4E5C0);
          sub_22DF13844(&v275, &v273);
          v143 = sub_22DF63714();
          v144 = sub_22DF63D04();
          sub_22DF138A0(&v275);
          v145 = os_log_type_enabled(v143, v144);
          v44 = v271;
          v53 = v269;
          if (v145)
          {
            v146 = swift_slowAlloc();
            v147 = swift_slowAlloc();
            v273 = v147;
            *v146 = v239;

            sub_22DF138A0(&v275);
            v148 = sub_22DEF0354(v139, v140, &v273);

            *(v146 + 4) = v148;
            _os_log_impl(&dword_22DEEA000, v143, v144, "invalid URL %s", v146, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v147);
            MEMORY[0x2318DDBE0](v147, -1, -1);
            MEMORY[0x2318DDBE0](v146, -1, -1);
          }

          else
          {

            sub_22DF138A0(&v275);
          }

          v35 = v254;
LABEL_72:
          if (++v76 == v268)
          {

            sub_22DF12F5C(v264, v244, v53, 0);
            goto LABEL_5;
          }

          if (v76 >= *(v53 + 16))
          {
            goto LABEL_133;
          }

          continue;
        }

LABEL_54:

        v53 = v269;
      }

      else
      {

LABEL_56:
        v120 = v110;
      }

      break;
    }

    if (v278)
    {
      v124 = 1.0;
    }

    else
    {
      v124 = *(&v277 + 1);
    }

    goto LABEL_60;
  }

LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void *sub_22DF0EC8C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA477E0, &qword_22DF670C0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA477E8, &qword_22DF670C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22DF0EDC0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA477D8, &unk_22DF670B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_22DF0EEB4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47838, &unk_22DF67100);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_22DF0EFA8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47848, &qword_22DF67110);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22DF0F0C8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47830, &unk_22DF670F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47BB0, "2?");
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22DF0F210(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47810, &unk_22DF69750);
  v10 = *(type metadata accessor for SessionConfiguration.Backend(0) - 8);
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
  v15 = *(type metadata accessor for SessionConfiguration.Backend(0) - 8);
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

void sub_22DF0F3E8(uint64_t a1, char a2, void *a3)
{
  v43 = *(a1 + 16);
  if (!v43)
  {
    goto LABEL_23;
  }

  v7 = *(a1 + 40);
  v6 = *(a1 + 32);
  v8 = *a3;
  v9 = sub_22DF0FBBC(v6);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = v9;
  v15 = v10;
  v16 = v8[3];

  if (v16 >= v13)
  {
    if (a2)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_22DF0FC2C();
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CC0, &qword_22DF661F0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_29;
  }

  sub_22DF0FF38(v13, a2 & 1);
  v17 = sub_22DF0FBBC(v6);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_28:
    sub_22DF64234();
    __break(1u);
LABEL_29:
    sub_22DF63F24();
    MEMORY[0x2318DCA20](0xD00000000000001BLL, 0x800000022DF6E4F0);
    sub_22DF63FF4();
    MEMORY[0x2318DCA20](39, 0xE100000000000000);
    sub_22DF64004();
    __break(1u);
    return;
  }

  v14 = v17;
  if (v15)
  {
    goto LABEL_9;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  *(v21[6] + v14) = v6;
  *(v21[7] + 8 * v14) = v7;
  v22 = v21[2];
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21[2] = v24;
  if (v43 != 1)
  {
    v25 = (a1 + 56);
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      v28 = *v25;
      v27 = *(v25 - 8);
      v29 = *a3;
      v30 = sub_22DF0FBBC(v27);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_25;
      }

      v35 = v30;
      v36 = v31;
      v37 = v29[3];

      if (v37 < v34)
      {
        sub_22DF0FF38(v34, 1);
        v38 = sub_22DF0FBBC(v27);
        if ((v36 & 1) != (v39 & 1))
        {
          goto LABEL_28;
        }

        v35 = v38;
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v40 = *a3;
      *(*a3 + 8 * (v35 >> 6) + 64) |= 1 << v35;
      *(v40[6] + v35) = v27;
      *(v40[7] + 8 * v35) = v28;
      v41 = v40[2];
      v23 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v23)
      {
        goto LABEL_26;
      }

      ++v26;
      v40[2] = v42;
      v25 += 2;
      if (v43 == v26)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

void sub_22DF0F75C(uint64_t a1, char a2, void *a3)
{
  v53 = *(a1 + 16);
  if (!v53)
  {
    goto LABEL_24;
  }

  v5 = *(a1 + 80);
  v61 = *(a1 + 64);
  v62 = v5;
  v6 = *(a1 + 48);
  v59 = *(a1 + 32);
  v60 = v6;
  v7 = v62;
  v8 = *(&v61 + 1);
  v9 = v61;
  v10 = v6;
  v55 = *(&v62 + 1);
  v11 = v59;
  sub_22DF1406C(&v59, v58);
  if (!*(&v11 + 1))
  {
    goto LABEL_24;
  }

  v51 = v8;
  v12 = a2;
  v52 = a1;
  v59 = v11;
  v13 = *a3;
  v15 = sub_22DEF08FC(v11, *(&v11 + 1));
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19 = v14;
  if (v13[3] >= v18)
  {
    if (v12)
    {
      if ((v14 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_22DF0FD88();
      if ((v19 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_22DF101C8(v18, v12 & 1);
  v20 = sub_22DEF08FC(v11, *(&v11 + 1));
  if ((v19 & 1) == (v21 & 1))
  {
    v15 = v20;
    if ((v19 & 1) == 0)
    {
LABEL_13:
      v24 = *a3;
      *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
      *(v24[6] + 16 * v15) = v11;
      v25 = v24[7] + 48 * v15;
      *v25 = v10;
      *(v25 + 16) = v9;
      *(v25 + 24) = v51;
      *(v25 + 32) = v7;
      *(v25 + 40) = v55;
      v26 = v24[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v24[2] = v28;
      v29 = v52;
      if (v53 != 1)
      {
        v30 = (v52 + 96);
        v31 = 1;
        while (v31 < *(v29 + 16))
        {
          v32 = v30[3];
          v61 = v30[2];
          v62 = v32;
          v33 = v30[1];
          v59 = *v30;
          v60 = v33;
          v34 = v62;
          v35 = *(&v61 + 1);
          v36 = v61;
          v37 = v33;
          v56 = *(&v62 + 1);
          v38 = v59;
          sub_22DF1406C(&v59, v58);
          if (!*(&v38 + 1))
          {
            goto LABEL_24;
          }

          v54 = v34;
          v59 = v38;
          v39 = *a3;
          v40 = sub_22DEF08FC(v38, *(&v38 + 1));
          v42 = v39[2];
          v43 = (v41 & 1) == 0;
          v27 = __OFADD__(v42, v43);
          v44 = v42 + v43;
          if (v27)
          {
            goto LABEL_26;
          }

          v45 = v41;
          if (v39[3] < v44)
          {
            sub_22DF101C8(v44, 1);
            v40 = sub_22DEF08FC(v38, *(&v38 + 1));
            if ((v45 & 1) != (v46 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v45)
          {
            goto LABEL_10;
          }

          v47 = *a3;
          *(*a3 + 8 * (v40 >> 6) + 64) |= 1 << v40;
          *(v47[6] + 16 * v40) = v38;
          v48 = v47[7] + 48 * v40;
          *v48 = v37;
          *(v48 + 16) = v36;
          *(v48 + 24) = v35;
          *(v48 + 32) = v54;
          *(v48 + 40) = v56;
          v49 = v47[2];
          v27 = __OFADD__(v49, 1);
          v50 = v49 + 1;
          if (v27)
          {
            goto LABEL_27;
          }

          ++v31;
          v47[2] = v50;
          v30 += 4;
          v29 = v52;
          if (v53 == v31)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_26;
      }

LABEL_24:

      return;
    }

LABEL_10:
    v22 = swift_allocError();
    swift_willThrow();
    v63 = v22;
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CC0, &qword_22DF661F0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_22DF64234();
  __break(1u);
LABEL_29:
  v58[0] = 0;
  v58[1] = 0xE000000000000000;
  sub_22DF63F24();
  MEMORY[0x2318DCA20](0xD00000000000001BLL, 0x800000022DF6E4F0);
  sub_22DF63FF4();
  MEMORY[0x2318DCA20](39, 0xE100000000000000);
  sub_22DF64004();
  __break(1u);
}

unint64_t sub_22DF0FBBC(uint64_t a1)
{
  v1 = a1;
  sub_22DF642A4();
  MEMORY[0x2318DD240](v1 + 1);
  v2 = sub_22DF642D4();

  return sub_22DF104D0(v1, v2);
}

void sub_22DF0FC2C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA477D0, &qword_22DF670A8);
  v2 = *v0;
  v3 = sub_22DF64024();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_22DF0FD88()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47780, &qword_22DF66DD0);
  v2 = *v0;
  v3 = sub_22DF64024();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 48;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        v27 = *(v22 + 32);
        v28 = *(v22 + 40);
        v29 = (*(v4 + 48) + v18);
        *v29 = v21;
        v29[1] = v20;
        v30 = *(v4 + 56) + v17;
        *v30 = v23;
        *(v30 + 8) = v24;
        *(v30 + 16) = v25;
        *(v30 + 24) = v26;
        *(v30 + 32) = v27;
        *(v30 + 40) = v28;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

uint64_t sub_22DF0FF38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA477D0, &qword_22DF670A8);
  v30 = v4;
  result = sub_22DF64034();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_22DF642A4();
      MEMORY[0x2318DD240](v20 + 1);
      result = sub_22DF642D4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22DF101C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47780, &qword_22DF66DD0);
  v38 = v4;
  result = sub_22DF64034();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
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
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = *(v5 + 56) + 48 * v21;
      v25 = *(v24 + 8);
      v42 = *v24;
      v43 = *v22;
      v41 = *(v24 + 16);
      v26 = *(v24 + 32);
      v40 = *(v24 + 24);
      v27 = *(v24 + 40);
      if ((v38 & 1) == 0)
      {
      }

      sub_22DF642A4();
      sub_22DF63A54();
      result = sub_22DF642D4();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v43;
      v16[1] = v23;
      v17 = *(v7 + 56) + 48 * v15;
      *v17 = v42;
      *(v17 + 8) = v25;
      *(v17 + 16) = v41;
      v12 = v39;
      *(v17 + 24) = v40;
      *(v17 + 32) = v26;
      *(v17 + 40) = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_22DF104D0(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_22DF10540(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_22DF105EC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22DF1206C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_22DF10658(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_22DF10658(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_22DF64144();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_22DF63BA4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22DF10838(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_22DF10750(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22DF10750(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = result;
    v7 = *a4;
    sub_22DF141A8();
    v8 = (v7 + v4);
    v9 = v6 - v4;
LABEL_5:
    v10 = v9;
    v11 = v8;
    while (1)
    {
      result = sub_22DF63964();
      if ((result & 1) == 0)
      {
LABEL_4:
        ++v4;
        ++v8;
        --v9;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v7)
      {
        break;
      }

      v12 = *v11;
      *v11 = *(v11 - 1);
      *--v11 = v12;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22DF10838(uint64_t result, uint64_t a2, char **a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v84 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_92:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_124:
      result = sub_22DEF96DC(v10);
      v10 = result;
    }

    v75 = *(v10 + 2);
    if (v75 >= 2)
    {
      while (1)
      {
        v76 = *v7;
        if (!*v7)
        {
          goto LABEL_128;
        }

        v7 = (v75 - 1);
        v77 = *&v10[16 * v75];
        v78 = *&v10[16 * v75 + 24];
        sub_22DF10E54(&v76[v77], &v76[*&v10[16 * v75 + 16]], &v76[v78], v5);
        if (v6)
        {
        }

        if (v78 < v77)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_22DEF96DC(v10);
        }

        if (v75 - 2 >= *(v10 + 2))
        {
          goto LABEL_118;
        }

        v79 = &v10[16 * v75];
        *v79 = v77;
        *(v79 + 1) = v78;
        result = sub_22DEF9650(v7);
        v75 = *(v10 + 2);
        v7 = a3;
        if (v75 <= 1)
        {
        }
      }
    }
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v82 = v6;
      v5 = *v7;
      sub_22DF141A8();
      result = sub_22DF63964();
      v13 = v11;
      v14 = result;
      v81 = v13;
      while (v8 - 2 != v13)
      {
        result = sub_22DF63964();
        ++v13;
        if ((v14 & 1) != (result & 1))
        {
          v8 = v13 + 1;
          break;
        }
      }

      v6 = v82;
      v7 = a3;
      if (v14)
      {
        v11 = v81;
        if (v8 < v81)
        {
          goto LABEL_121;
        }

        if (v81 < v8)
        {
          v15 = v8 - 1;
          v16 = v81;
          do
          {
            if (v16 != v15)
            {
              v19 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v17 = v19[v16];
              v19[v16] = v19[v15];
              v19[v15] = v17;
            }
          }

          while (++v16 < v15--);
        }

        v12 = v8;
      }

      else
      {
        v12 = v8;
        v11 = v81;
      }
    }

    v20 = v7[1];
    if (v12 < v20)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_120;
      }

      if (v12 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_122;
        }

        if (v11 + a4 >= v20)
        {
          v21 = v7[1];
        }

        else
        {
          v21 = (v11 + a4);
        }

        if (v21 < v11)
        {
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (v12 != v21)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v12 < v11)
    {
      goto LABEL_119;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v88 = v12;
    v28 = v6;
    if ((result & 1) == 0)
    {
      result = sub_22DEF78C8(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v30 = *(v10 + 2);
    v29 = *(v10 + 3);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      result = sub_22DEF78C8((v29 > 1), v30 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v31;
    v32 = &v10[16 * v30];
    *(v32 + 4) = v11;
    *(v32 + 5) = v88;
    v33 = *v84;
    if (!*v84)
    {
      goto LABEL_129;
    }

    if (v30)
    {
      v6 = v28;
      while (1)
      {
        v34 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v35 = *(v10 + 4);
          v36 = *(v10 + 5);
          v45 = __OFSUB__(v36, v35);
          v37 = v36 - v35;
          v38 = v45;
LABEL_61:
          if (v38)
          {
            goto LABEL_108;
          }

          v51 = &v10[16 * v31];
          v53 = *v51;
          v52 = *(v51 + 1);
          v54 = __OFSUB__(v52, v53);
          v55 = v52 - v53;
          v56 = v54;
          if (v54)
          {
            goto LABEL_111;
          }

          v57 = &v10[16 * v34 + 32];
          v59 = *v57;
          v58 = *(v57 + 1);
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_114;
          }

          if (__OFADD__(v55, v60))
          {
            goto LABEL_115;
          }

          if (v55 + v60 >= v37)
          {
            if (v37 < v60)
            {
              v34 = v31 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        v61 = &v10[16 * v31];
        v63 = *v61;
        v62 = *(v61 + 1);
        v45 = __OFSUB__(v62, v63);
        v55 = v62 - v63;
        v56 = v45;
LABEL_75:
        if (v56)
        {
          goto LABEL_110;
        }

        v64 = &v10[16 * v34];
        v66 = *(v64 + 4);
        v65 = *(v64 + 5);
        v45 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v45)
        {
          goto LABEL_113;
        }

        if (v67 < v55)
        {
          goto LABEL_4;
        }

LABEL_82:
        v72 = v34 - 1;
        if (v34 - 1 >= v31)
        {
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (!*v7)
        {
          goto LABEL_126;
        }

        v73 = *&v10[16 * v72 + 32];
        v5 = *&v10[16 * v34 + 40];
        sub_22DF10E54(&(*v7)[v73], &(*v7)[*&v10[16 * v34 + 32]], &v5[*v7], v33);
        if (v6)
        {
        }

        if (v5 < v73)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_22DEF96DC(v10);
        }

        if (v72 >= *(v10 + 2))
        {
          goto LABEL_105;
        }

        v74 = &v10[16 * v72];
        *(v74 + 4) = v73;
        *(v74 + 5) = v5;
        result = sub_22DEF9650(v34);
        v31 = *(v10 + 2);
        if (v31 <= 1)
        {
          goto LABEL_4;
        }
      }

      v39 = &v10[16 * v31 + 32];
      v40 = *(v39 - 64);
      v41 = *(v39 - 56);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_106;
      }

      v44 = *(v39 - 48);
      v43 = *(v39 - 40);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_107;
      }

      v46 = &v10[16 * v31];
      v48 = *v46;
      v47 = *(v46 + 1);
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_109;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_112;
      }

      if (v50 >= v42)
      {
        v68 = &v10[16 * v34 + 32];
        v70 = *v68;
        v69 = *(v68 + 1);
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_116;
        }

        if (v37 < v71)
        {
          v34 = v31 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_61;
    }

    v6 = v28;
LABEL_4:
    v8 = v7[1];
    v9 = v88;
    if (v88 >= v8)
    {
      goto LABEL_92;
    }
  }

  v83 = v6;
  v22 = *v7;
  sub_22DF141A8();
  v23 = &v22[v12];
  v24 = v11 - v12;
  v86 = v21;
LABEL_33:
  v87 = v12;
  v25 = v24;
  v5 = v23;
  while (1)
  {
    result = sub_22DF63964();
    if ((result & 1) == 0)
    {
LABEL_32:
      ++v12;
      ++v23;
      --v24;
      if ((v87 + 1) != v86)
      {
        goto LABEL_33;
      }

      v12 = v86;
      v6 = v83;
      v7 = a3;
      goto LABEL_40;
    }

    if (!v22)
    {
      break;
    }

    v26 = *v5;
    *v5 = *(v5 - 1);
    *--v5 = v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_32;
    }
  }

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
  return result;
}
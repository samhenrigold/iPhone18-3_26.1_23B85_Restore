unint64_t sub_21BDAF29C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21BDB06A4(*(v1 + 16));
  *a1 = result;
  a1[1] = v4;
  return result;
}

double sub_21BDAF2C8@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  type metadata accessor for ChecklistStateVars(0);
  sub_21BBEAC94();

  v6 = sub_21BE26E9C();
  sub_21BDC1E84(v3, v4, v5, v6, v7 & 1, v10);
  v8 = v10[1];
  *a1 = v10[0];
  *(a1 + 16) = v8;
  result = *&v11;
  *(a1 + 32) = v11;
  *(a1 + 48) = v12;
  return result;
}

uint64_t sub_21BDAF398()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21BC95680;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCCB0, qword_21BE4C440);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BDAF4B4;
  v0[13] = &block_descriptor_53;
  v0[14] = v2;
  [v1 familyCalendarsWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BDAF4B4(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_21BB3A2A4(0, &qword_27CDBCCB8, 0x277CC59B0);
    v4 = sub_21BE28C3C();
  }

  else
  {
    v4 = 0;
  }

  **(*(v3 + 64) + 40) = v4;

  return MEMORY[0x282200948](v3);
}

id sub_21BDAF544()
{
  v1 = [*v0 primaryAppleAccountSource];

  return v1;
}

uint64_t sub_21BDAF57C(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB8A28;

  return v7(a1, a2);
}

id sub_21BDAF6DC()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
  v2 = [swift_getObjCClassFromMetadata() defaultCenter];
  [v2 removeObserver_];

  v4.receiver = v0;
  v4.super_class = type metadata accessor for SharedFamilyCalendarItemProvider(0);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_21BDAF79C(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 defaultCenter];
  [v4 removeObserver_];

  sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
  v5 = [swift_getObjCClassFromMetadata() defaultCenter];
  [v5 removeObserver_];

  v7.receiver = v3;
  v7.super_class = type metadata accessor for SharedFamilyCalendarItemProvider(0);
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t type metadata accessor for SharedFamilyCalendarItemProvider(uint64_t a1)
{
  result = qword_27CDBCC78;
  if (!qword_27CDBCC78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BDAF940(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_21BE28D7C();
  v1[4] = sub_21BE28D6C();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_21BBCD93C;

  return sub_21BDAFB8C();
}

uint64_t sub_21BDAF9F0(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  sub_21BE28D7C();
  v2[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_21BDAFA88, v4, v3);
}

uint64_t sub_21BDAFA88()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_21BBCDD2C;

    return sub_21BBCBFF4();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_21BDAFB8C()
{
  v1[3] = v0;
  v2 = sub_21BE26A4C();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  sub_21BE28D7C();
  v1[8] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[9] = v4;
  v1[10] = v3;

  return MEMORY[0x2822009F8](sub_21BDAFC8C, v4, v3);
}

uint64_t sub_21BDAFC8C()
{
  v35 = v0;
  v1 = v0[3];
  v3 = *(v1 + qword_27CDB63F0);
  v2 = *(v1 + qword_27CDB63F0 + 8);
  type metadata accessor for FamilySignpost(0);
  swift_allocObject();

  v0[11] = sub_21BC84D18(v3, v2, "computeItems", 12, 2u);
  v4 = *(v1 + qword_27CDD4370 + 24);
  v5 = *(v1 + qword_27CDD4370 + 32);
  __swift_project_boxed_opaque_existential_1Tm((v1 + qword_27CDD4370), v4);
  v6 = (*(v5 + 8))(v4, v5);
  if (v6)
  {
    v7 = v6;
    v8 = sub_21BE2905C();
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v0[12] = v8;
  v9 = (v0[3] + qword_27CDD4378);
  v10 = v9[3];
  v11 = v9[4];
  __swift_project_boxed_opaque_existential_1Tm(v9, v10);
  v12 = (*(v11 + 16))(v10, v11);
  if (v12)
  {

    v13 = v9[3];
    v14 = v9[4];
    __swift_project_boxed_opaque_existential_1Tm(v9, v13);
    v33 = (*(v14 + 8) + **(v14 + 8));
    v15 = swift_task_alloc();
    v0[13] = v15;
    *v15 = v0;
    v15[1] = sub_21BDB0098;

    return v33(v13, v14);
  }

  else
  {

    sub_21BE261BC();
    v17 = sub_21BE26A2C();
    v18 = sub_21BE28FFC();
    v19 = os_log_type_enabled(v17, v18);
    v21 = v0[5];
    v20 = v0[6];
    v22 = v0[4];
    if (v19)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v34 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_21BB3D81C(0x49657475706D6F63, 0xEE002928736D6574, &v34);
      _os_log_impl(&dword_21BB35000, v17, v18, "%s Calendar data class is disabled in iCloud settings", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x21CF05C50](v24, -1, -1);
      MEMORY[0x21CF05C50](v23, -1, -1);
    }

    (*(v21 + 8))(v20, v22);
    v25 = MEMORY[0x277D84F90];
    v26 = sub_21BBBDA48(0, 1, 1, MEMORY[0x277D84F90]);
    v28 = *(v26 + 2);
    v27 = *(v26 + 3);
    if (v28 >= v27 >> 1)
    {
      v26 = sub_21BBBDA48((v27 > 1), v28 + 1, 1, v26);
    }

    v29 = v0[12];
    *(v26 + 2) = v28 + 1;
    v30 = &v26[24 * v28];
    *(v30 + 4) = v25;
    *(v30 + 5) = v29;
    v30[48] = 14;
    v31 = v26;
    sub_21BC852D8();

    v32 = v0[1];

    return v32(v31);
  }
}

uint64_t sub_21BDB0098(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 112) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return MEMORY[0x2822009F8](sub_21BDB01C0, v4, v3);
}

uint64_t sub_21BDB01C0()
{
  v28 = v0;
  v1 = v0[14];

  sub_21BE261BC();

  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[14];
    v26 = v0[7];
    v6 = v0[4];
    v5 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_21BB3D81C(0x49657475706D6F63, 0xEE002928736D6574, &v27);
    *(v7 + 12) = 2080;
    v0[2] = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCCA8, &qword_21BE4C438);
    v9 = sub_21BE28A5C();
    v11 = sub_21BB3D81C(v9, v10, &v27);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_21BB35000, v2, v3, "%s family calendars: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v8, -1, -1);
    MEMORY[0x21CF05C50](v7, -1, -1);

    (*(v5 + 8))(v26, v6);
  }

  else
  {
    v12 = v0[7];
    v13 = v0[4];
    v14 = v0[5];

    (*(v14 + 8))(v12, v13);
  }

  v15 = v0[14];
  v16 = MEMORY[0x277D84F90];
  v17 = sub_21BBBDA48(0, 1, 1, MEMORY[0x277D84F90]);
  v19 = *(v17 + 2);
  v18 = *(v17 + 3);
  if (v19 >= v18 >> 1)
  {
    v17 = sub_21BBBDA48((v18 > 1), v19 + 1, 1, v17);
  }

  if (v15)
  {
    v20 = v1;
  }

  else
  {
    v20 = v16;
  }

  v21 = v0[12];
  *(v17 + 2) = v19 + 1;
  v22 = &v17[24 * v19];
  *(v22 + 4) = v20;
  *(v22 + 5) = v21;
  v22[48] = 14;
  v23 = v17;
  sub_21BC852D8();

  v24 = v0[1];

  return v24(v23);
}

uint64_t sub_21BDB0484(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_21BDB04CC(uint64_t result, int a2, int a3)
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

unint64_t sub_21BDB0520()
{
  result = qword_27CDBCC88;
  if (!qword_27CDBCC88)
  {
    result = swift_getWitnessTable(aE_0, &type metadata for SharedFamilyCalendarItem, v0, v1);
    atomic_store(result, &qword_27CDBCC88);
  }

  return result;
}

unint64_t sub_21BDB0574(uint64_t a1)
{
  *(a1 + 8) = sub_21BDB05A4();
  result = sub_21BDB05F8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21BDB05A4()
{
  result = qword_27CDBCC90;
  if (!qword_27CDBCC90)
  {
    result = swift_getWitnessTable(asc_21BE4C3AC, &type metadata for SharedFamilyCalendarItem, v0, v1);
    atomic_store(result, &qword_27CDBCC90);
  }

  return result;
}

unint64_t sub_21BDB05F8()
{
  result = qword_27CDBCC98;
  if (!qword_27CDBCC98)
  {
    result = swift_getWitnessTable(asc_21BE4C34C, &type metadata for SharedFamilyCalendarItem, v0, v1);
    atomic_store(result, &qword_27CDBCC98);
  }

  return result;
}

unint64_t sub_21BDB0650()
{
  result = qword_27CDBCCA0;
  if (!qword_27CDBCCA0)
  {
    result = swift_getWitnessTable(byte_21BE4D130, &type metadata for SharedFamilyCalendarItemView, v0, v1);
    atomic_store(result, &qword_27CDBCCA0);
  }

  return result;
}

unint64_t sub_21BDB06A4(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x696D694C6D6D6F63;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x69636966656E6562;
      break;
    case 7:
      result = 0x6C5064756F6C4369;
      break;
    case 8:
      result = 0x6D657449656D6F68;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x736143656C707061;
      break;
    case 11:
      result = 0x49746361746E6F63;
      break;
    case 12:
    case 15:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

id sub_21BDB08D4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BDB0940@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = sub_21BE26C0C();
  *a2 = result;
  return result;
}

void *Binding.onceThen<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v41 = a3;
  v6 = *(*(a2 + 16) + 16);
  v44 = a1;
  v45 = v6;
  v7 = sub_21BE2859C();
  v43 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v40 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v9;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v30 - v12;
  v33 = &v30 - v12;
  v42 = a2;
  v14 = *(a2 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v39 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - v17;
  v37 = *(v14 + 16);
  v37(&v30 - v17, v4);
  v36 = *(v8 + 16);
  v36(v13, v44, v7);
  v19 = *(v14 + 80);
  v20 = (v19 + 40) & ~v19;
  v21 = *(v8 + 80);
  v22 = (v15 + v20 + v21) & ~v21;
  v34 = v19 | v21;
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = v45;
  v32 = *(v14 + 32);
  v24 = v42;
  v32(&v23[v20], v18, v42);
  v31 = *(v8 + 32);
  v25 = v43;
  v31(&v23[v22], v33, v43);
  v26 = v39;
  (v37)(v39, v38, v24);
  v27 = v40;
  v36(v40, v44, v25);
  v28 = swift_allocObject();
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  *(v28 + 4) = v45;
  v32(&v28[v20], v26, v42);
  v31(&v28[v22], v27, v43);
  return sub_21BE2857C();
}

uint64_t sub_21BDB0CD0@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  v4 = sub_21BE2946C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = sub_21BE2859C();
  MEMORY[0x21CF036E0](v8);
  v9 = *(a1 - 8);
  if ((*(v9 + 48))(v7, 1, a1) != 1)
  {
    return (*(v9 + 32))(a2, v7, a1);
  }

  (*(v5 + 8))(v7, v4);
  v10 = sub_21BE2859C();
  return MEMORY[0x21CF036E0](v10);
}

uint64_t sub_21BDB0E44@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  sub_21BE2946C();
  sub_21BE2859C();
  sub_21BE2859C();

  return sub_21BDB0CD0(v3, a1);
}

uint64_t sub_21BDB0F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21BE2946C();
  MEMORY[0x28223BE20](v11);
  (*(v8 + 56))(&v14 - v12, 1, 1, a6);
  sub_21BE2859C();
  sub_21BE2854C();
  (*(v8 + 16))(v10, a1, a6);
  sub_21BE2859C();
  return sub_21BE2854C();
}

uint64_t objectdestroyTm_35()
{
  v1 = *(v0 + 32);
  sub_21BE2946C();
  v2 = (sub_21BE2859C() - 8);
  v3 = (*(*v2 + 80) + 40) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  v5 = sub_21BE2859C();
  v6 = *(*(v5 - 8) + 80);
  swift_unknownObjectRelease();

  v7 = v2[10];
  v8 = *(v1 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v7, 1, v1))
  {
    (*(v8 + 8))(v0 + v3 + v7, v1);
  }

  (*(v8 + 8))(v0 + ((v3 + v4 + v6) & ~v6) + *(v5 + 32), v1);

  return swift_deallocObject();
}

uint64_t sub_21BDB12A4(uint64_t a1)
{
  v3 = v1[4];
  sub_21BE2946C();
  v4 = *(sub_21BE2859C() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_21BE2859C() - 8);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_21BDB0F40(a1, v8, v9, v1 + v5, v10, v3);
}

uint64_t sub_21BDB13A0(uint64_t a1)
{
  [*v1 setDelegate_];

  return swift_unknownObjectRelease();
}

uint64_t sub_21BDB1424()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BDB1498(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_21BE28D7C();
  v1[4] = sub_21BE28D6C();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_21BBCD93C;

  return sub_21BDB2024();
}

uint64_t sub_21BDB1548(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  sub_21BE28D7C();
  v2[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_21BDB15E0, v4, v3);
}

uint64_t sub_21BDB15E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_21BBCDD2C;

    return sub_21BBCC29C();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_21BDB16E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_21BE28D7C();
  v4[3] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_21BDB177C, v6, v5);
}

uint64_t sub_21BDB177C()
{
  v1 = v0[2];
  sub_21BDB18D8();
  v2 = *(v1 + qword_27CDD4380);
  if (v2 && !*(v2 + 16))
  {

    v5 = v0[1];

    return v5();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = sub_21BC34664;

    return sub_21BBCC29C();
  }
}

void sub_21BDB1878(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_21BDB4CF8();
}

void sub_21BDB18D8()
{
  v1 = sub_21BE26A4C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = qword_27CDD4388;
  swift_beginAccess();
  v62 = v0;
  sub_21BB3A35C(v0 + v5, v74);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCDB0, &qword_21BE4C770);
  sub_21BB3A2A4(0, &qword_27CDBCDB8, 0x277CD1A90);
  if (swift_dynamicCast())
  {
    v61 = v73;
    v6 = [v73 homes];
    sub_21BB3A2A4(0, &qword_27CDBB4B8, 0x277CD1A60);
    v7 = sub_21BE28C3C();

    v65 = v7;
    if (v7 >> 62)
    {
      goto LABEL_56;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BE2951C())
    {
      v74[0] = MEMORY[0x277D84F90];
      sub_21BC59DD4(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return;
      }

      v9 = 0;
      v66 = i;
      v67 = v65 & 0xC000000000000001;
      v10 = v74[0];
      v63 = v65 + 32;
      v64 = v65 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v70 = v10;
        if (v67)
        {
          v12 = MEMORY[0x21CF047C0]();
        }

        else
        {
          if (v9 >= *(v64 + 16))
          {
            goto LABEL_55;
          }

          v12 = *(v63 + 8 * v9);
        }

        v13 = v12;
        v14 = [v12 users];
        sub_21BB3A2A4(0, &qword_27CDBCDC0, 0x277CD1EE0);
        v15 = sub_21BE28C3C();

        if (v15 >> 62)
        {
          v16 = sub_21BE2951C();
        }

        else
        {
          v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v69 = v11;
        v71 = v13;
        if (v16)
        {
          v73 = MEMORY[0x277D84F90];
          sub_21BC59DF4(0, v16 & ~(v16 >> 63), 0);
          if (v16 < 0)
          {
            goto LABEL_53;
          }

          v17 = 0;
          v18 = v73;
          do
          {
            if ((v15 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x21CF047C0](v17, v15);
            }

            else
            {
              v19 = *(v15 + 8 * v17 + 32);
            }

            v20 = v19;
            v21 = [v19 userID];
            if (v21)
            {
              v22 = v21;
              v23 = sub_21BE28A0C();
              v25 = v24;
            }

            else
            {

              v23 = 0;
              v25 = 0;
            }

            v73 = v18;
            v27 = v18[2];
            v26 = v18[3];
            if (v27 >= v26 >> 1)
            {
              sub_21BC59DF4((v26 > 1), v27 + 1, 1);
              v18 = v73;
            }

            ++v17;
            v18[2] = v27 + 1;
            v28 = &v18[2 * v27];
            v28[4] = v23;
            v28[5] = v25;
          }

          while (v16 != v17);

          v13 = v71;
        }

        else
        {

          v18 = MEMORY[0x277D84F90];
        }

        v29 = [v13 accessories];
        sub_21BB3A2A4(0, &qword_27CDBCDC8, 0x277CD1650);
        v30 = sub_21BE28C3C();

        v31 = [v13 outgoingInvitations];
        sub_21BB3A2A4(0, &unk_27CDBCDD0, 0x277CD1CB8);
        v32 = sub_21BE28C3C();

        if (v32 >> 62)
        {
          v33 = sub_21BE2951C();
          if (!v33)
          {
LABEL_43:

            v35 = MEMORY[0x277D84F90];
            goto LABEL_44;
          }
        }

        else
        {
          v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v33)
          {
            goto LABEL_43;
          }
        }

        v73 = MEMORY[0x277D84F90];
        sub_21BC59DF4(0, v33 & ~(v33 >> 63), 0);
        if (v33 < 0)
        {
          goto LABEL_54;
        }

        v68 = v30;
        v34 = 0;
        v35 = v73;
        v36 = v32;
        v72 = v32 & 0xC000000000000001;
        v37 = v32;
        v38 = v33;
        do
        {
          if (v72)
          {
            v39 = MEMORY[0x21CF047C0](v34, v36);
          }

          else
          {
            v39 = *(v36 + 8 * v34 + 32);
          }

          v40 = v39;
          v41 = [v39 invitee];
          v42 = [v41 userID];

          if (v42)
          {
            v43 = sub_21BE28A0C();
            v45 = v44;
          }

          else
          {

            v43 = 0;
            v45 = 0;
          }

          v73 = v35;
          v47 = v35[2];
          v46 = v35[3];
          if (v47 >= v46 >> 1)
          {
            sub_21BC59DF4((v46 > 1), v47 + 1, 1);
            v35 = v73;
          }

          ++v34;
          v35[2] = v47 + 1;
          v48 = &v35[2 * v47];
          v48[4] = v43;
          v48[5] = v45;
          v36 = v37;
        }

        while (v38 != v34);

        v30 = v68;
LABEL_44:
        v49 = v71;
        v50 = [v71 name];
        v51 = sub_21BE28A0C();
        v53 = v52;

        v10 = v70;
        v74[0] = v70;
        v55 = *(v70 + 16);
        v54 = *(v70 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_21BC59DD4((v54 > 1), v55 + 1, 1);
          v10 = v74[0];
        }

        *(v10 + 16) = v55 + 1;
        v56 = (v10 + 48 * v55);
        v56[4] = v18;
        v56[5] = v30;
        v56[6] = v35;
        v56[7] = v49;
        v56[8] = v51;
        v56[9] = v53;
        v9 = v69;
        if (v69 == v66)
        {

          goto LABEL_58;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      ;
    }

    v10 = MEMORY[0x277D84F90];
LABEL_58:
    *(v62 + qword_27CDD4380) = v10;
  }

  else
  {
    sub_21BE25F9C();
    v57 = sub_21BE263AC();

    if ((v57 & 1) == 0)
    {
      sub_21BE261BC();
      v58 = sub_21BE26A2C();
      v59 = sub_21BE28FDC();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_21BB35000, v58, v59, "Why is this being called w/o a proper home manager?", v60, 2u);
        MEMORY[0x21CF05C50](v60, -1, -1);
      }

      (*(v2 + 8))(v4, v1);
    }
  }
}

uint64_t sub_21BDB2024()
{
  v1[2] = v0;
  v2 = sub_21BE26A4C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = sub_21BE260AC();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  sub_21BE28D7C();
  v1[10] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v1[11] = v5;
  v1[12] = v4;

  return MEMORY[0x2822009F8](sub_21BDB2180, v5, v4);
}

uint64_t sub_21BDB2180()
{
  v1 = v0[2];
  v3 = *(v1 + qword_27CDB63F0);
  v2 = *(v1 + qword_27CDB63F0 + 8);
  type metadata accessor for FamilySignpost(0);
  swift_allocObject();

  v0[13] = sub_21BC84D18(v3, v2, "computeItems", 12, 2u);
  v4 = qword_27CDD4390;
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_21BDB229C;

  return sub_21BE19D18(v1 + v4);
}

uint64_t sub_21BDB229C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 120) = a1;
  *(v4 + 128) = v1;

  v5 = *(v3 + 96);
  v6 = *(v3 + 88);
  if (v1)
  {
    v7 = sub_21BDB322C;
  }

  else
  {
    v7 = sub_21BDB23E0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

void sub_21BDB23E0()
{
  v57 = v0;
  v1 = *(v0 + 16);
  v2 = qword_27CDD4380;
  *(v0 + 136) = qword_27CDD4380;
  if (*(v1 + v2))
  {

    sub_21BDB18D8();
    v3 = *(*(v0 + 16) + *(v0 + 136));
    v47 = v0;
    if (v3)
    {
      v49 = *(v3 + 16);
      if (v49)
      {
        v46 = (*(v0 + 32) + 8);

        v5 = 0;
        v6 = (v4 + 72);
        v55 = MEMORY[0x277D84F90];
        v48 = v4;
        while (v5 < *(v4 + 16))
        {
          v8 = *(v6 - 5);
          v7 = *(v6 - 4);
          v10 = *(v6 - 3);
          v9 = *(v6 - 2);
          v11 = *v6;
          v53 = *(v6 - 1);
          if (v7 >> 62)
          {
            v12 = sub_21BE2951C();
          }

          else
          {
            v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v13 = v9;

          if (v12)
          {
            v14 = sub_21BDB4A54(v8, v10, *(v0 + 120));
            v15 = v14;
            v51 = v9;
            if (v14 >> 62)
            {
              v16 = sub_21BE2951C();
            }

            else
            {
              v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v17 = v55;
            v50 = v16 != 0;

            v18 = v13;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_21BBBDC70(0, *(v55 + 2) + 1, 1, v55);
            }

            v19 = v17;
            v20 = *(v17 + 2);
            v55 = v19;
            v21 = *(v19 + 3);
            if (v20 >= v21 >> 1)
            {
              v55 = sub_21BBBDC70((v21 > 1), v20 + 1, 1, v55);
            }

            *(v55 + 2) = v20 + 1;
            v22 = &v55[72 * v20];
            *(v22 + 4) = v15;
            v22[40] = v50;
            v23 = *(&v56 + 3);
            *(v22 + 41) = v56;
            *(v22 + 11) = v23;
            *(v22 + 6) = v8;
            *(v22 + 7) = v7;
            *(v22 + 8) = v10;
            *(v22 + 9) = v51;
            *(v22 + 10) = v53;
            *(v22 + 11) = v11;
            v22[96] = 8;
            v0 = v47;
          }

          else
          {
            sub_21BE261BC();
            v24 = sub_21BE26A2C();
            v25 = sub_21BE28FFC();
            v26 = os_log_type_enabled(v24, v25);
            v52 = *(v0 + 24);
            v54 = *(v0 + 48);
            if (v26)
            {
              v27 = swift_slowAlloc();
              *v27 = 0;
              _os_log_impl(&dword_21BB35000, v24, v25, "Home has no accessories", v27, 2u);
              v28 = v27;
              v0 = v47;
              MEMORY[0x21CF05C50](v28, -1, -1);
            }

            else
            {
            }

            (*v46)(v54, v52);
          }

          ++v5;
          v6 += 6;
          v4 = v48;
          if (v49 == v5)
          {

            v30 = v55;
            goto LABEL_33;
          }
        }

        __break(1u);
      }

      else
      {
        v30 = MEMORY[0x277D84F90];
LABEL_33:

        sub_21BC852D8();

        v45 = *(v0 + 8);

        v45(v30);
      }
    }

    else
    {
      sub_21BE261BC();
      v31 = sub_21BE26A2C();
      v32 = sub_21BE28FDC();
      v33 = os_log_type_enabled(v31, v32);
      v35 = *(v0 + 32);
      v34 = *(v0 + 40);
      v36 = *(v0 + 24);
      if (v33)
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v56 = v38;
        *v37 = 136315138;
        *(v37 + 4) = sub_21BB3D81C(0xD00000000000003FLL, 0x800000021BE61810, &v56);
        _os_log_impl(&dword_21BB35000, v31, v32, "%s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v38);
        MEMORY[0x21CF05C50](v38, -1, -1);
        v39 = v37;
        v0 = v47;
        MEMORY[0x21CF05C50](v39, -1, -1);
      }

      (*(v35 + 8))(v34, v36);
      v40 = *(v0 + 120);
      v42 = *(v0 + 64);
      v41 = *(v0 + 72);
      v43 = *(v0 + 56);
      (*(v42 + 104))(v41, *MEMORY[0x277D07F50], v43);
      MEMORY[0x21CF01220](0xD00000000000003FLL, 0x800000021BE61810, v41, 0xD000000000000010, 0x800000021BE573A0, 0xD000000000000025, 0x800000021BE617E0);
      (*(v42 + 8))(v41, v43);
      swift_willThrow();

      sub_21BC852D8();

      v44 = *(v0 + 8);

      v44();
    }
  }

  else
  {
    v29 = swift_task_alloc();
    *(v0 + 144) = v29;
    *v29 = v0;
    v29[1] = sub_21BDB2A74;

    sub_21BDB45C4();
  }
}

uint64_t sub_21BDB2A74(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 152) = a1;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);

  return MEMORY[0x2822009F8](sub_21BDB2BBC, v4, v3);
}

void sub_21BDB2BBC()
{
  v57 = v0;
  v1 = *(v0 + 152);

  if (!v1)
  {
    v28 = *(v0 + 120);
    v30 = *(v0 + 64);
    v29 = *(v0 + 72);
    v31 = *(v0 + 56);
    (*(v30 + 104))(v29, *MEMORY[0x277D07F50], v31);
    v32 = 0xD00000000000001DLL;
    v33 = 0x800000021BE617C0;
LABEL_28:
    MEMORY[0x21CF01220](v32, v33, v29, 0xD000000000000010, 0x800000021BE573A0, 0xD000000000000025, 0x800000021BE617E0);
    (*(v30 + 8))(v29, v31);
    swift_willThrow();

    sub_21BC852D8();

    v44 = *(v0 + 8);

    v44();
    return;
  }

  v2 = *(*(v0 + 16) + *(v0 + 136));
  v47 = v0;
  if (!v2)
  {
    sub_21BE261BC();
    v35 = sub_21BE26A2C();
    v36 = sub_21BE28FDC();
    v37 = os_log_type_enabled(v35, v36);
    v39 = *(v0 + 32);
    v38 = *(v0 + 40);
    v40 = *(v0 + 24);
    if (v37)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v56 = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_21BB3D81C(0xD00000000000003FLL, 0x800000021BE61810, &v56);
      _os_log_impl(&dword_21BB35000, v35, v36, "%s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x21CF05C50](v42, -1, -1);
      v43 = v41;
      v0 = v47;
      MEMORY[0x21CF05C50](v43, -1, -1);
    }

    (*(v39 + 8))(v38, v40);
    v28 = *(v0 + 120);
    v30 = *(v0 + 64);
    v29 = *(v0 + 72);
    v31 = *(v0 + 56);
    (*(v30 + 104))(v29, *MEMORY[0x277D07F50], v31);
    v32 = 0xD00000000000003FLL;
    v33 = 0x800000021BE61810;
    goto LABEL_28;
  }

  v49 = *(v2 + 16);
  if (v49)
  {
    v46 = (*(v0 + 32) + 8);

    v4 = 0;
    v5 = (v3 + 72);
    v55 = MEMORY[0x277D84F90];
    v48 = v3;
    while (v4 < *(v3 + 16))
    {
      v7 = *(v5 - 5);
      v6 = *(v5 - 4);
      v9 = *(v5 - 3);
      v8 = *(v5 - 2);
      v10 = *v5;
      v53 = *(v5 - 1);
      if (v6 >> 62)
      {
        v11 = sub_21BE2951C();
      }

      else
      {
        v11 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v8;

      if (v11)
      {
        v13 = sub_21BDB4A54(v7, v9, *(v0 + 120));
        v14 = v13;
        v51 = v8;
        if (v13 >> 62)
        {
          v15 = sub_21BE2951C();
        }

        else
        {
          v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v16 = v55;
        v50 = v15 != 0;

        v17 = v12;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_21BBBDC70(0, *(v55 + 2) + 1, 1, v55);
        }

        v18 = v16;
        v19 = *(v16 + 2);
        v55 = v18;
        v20 = *(v18 + 3);
        if (v19 >= v20 >> 1)
        {
          v55 = sub_21BBBDC70((v20 > 1), v19 + 1, 1, v55);
        }

        *(v55 + 2) = v19 + 1;
        v21 = &v55[72 * v19];
        *(v21 + 4) = v14;
        v21[40] = v50;
        v22 = *(&v56 + 3);
        *(v21 + 41) = v56;
        *(v21 + 11) = v22;
        *(v21 + 6) = v7;
        *(v21 + 7) = v6;
        *(v21 + 8) = v9;
        *(v21 + 9) = v51;
        *(v21 + 10) = v53;
        *(v21 + 11) = v10;
        v21[96] = 8;
        v0 = v47;
      }

      else
      {
        sub_21BE261BC();
        v23 = sub_21BE26A2C();
        v24 = sub_21BE28FFC();
        v25 = os_log_type_enabled(v23, v24);
        v52 = *(v0 + 24);
        v54 = *(v0 + 48);
        if (v25)
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_21BB35000, v23, v24, "Home has no accessories", v26, 2u);
          v27 = v26;
          v0 = v47;
          MEMORY[0x21CF05C50](v27, -1, -1);
        }

        else
        {
        }

        (*v46)(v54, v52);
      }

      ++v4;
      v5 += 6;
      v3 = v48;
      if (v49 == v4)
      {

        v34 = v55;
        goto LABEL_32;
      }
    }

    __break(1u);
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
LABEL_32:

    sub_21BC852D8();

    v45 = *(v0 + 8);

    v45(v34);
  }
}

uint64_t sub_21BDB322C()
{

  sub_21BC852D8();

  v1 = *(v0 + 8);

  return v1();
}

void sub_21BDB32D4()
{
  v1 = sub_21BE26A4C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v19 - v6;
  v8 = qword_27CDD4388;
  swift_beginAccess();
  sub_21BB3A35C(v0 + v8, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCDB0, &qword_21BE4C770);
  sub_21BB3A2A4(0, &qword_27CDBCDB8, 0x277CD1A90);
  if (swift_dynamicCast())
  {
    v9 = v19[1];
    v10 = sub_21BE28DAC();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    sub_21BE28D7C();
    v11 = v0;
    v12 = v9;
    v13 = sub_21BE28D6C();
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D85700];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = v11;
    v14[5] = v12;
    sub_21BBA932C(0, 0, v7, &unk_21BE4C780, v14);
  }

  else
  {
    sub_21BE261BC();
    v16 = sub_21BE26A2C();
    v17 = sub_21BE28FDC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_21BB35000, v16, v17, "homeManager != HMHomeManager in handleNotification", v18, 2u);
      MEMORY[0x21CF05C50](v18, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_21BDB3594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_21BE28D7C();
  *(v4 + 24) = sub_21BE28D6C();
  v6 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BDB362C, v6, v5);
}

uint64_t sub_21BDB362C()
{

  v1.n128_f64[0] = sub_21BDB4CF8();
  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_21BDB3690(void *a1)
{
  v1 = a1;
  sub_21BDB32D4();
}

uint64_t sub_21BDB36D8()
{
  v1 = qword_27CDBCCD0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBCDA0, &unk_21BE4C760);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDD4388));
  return __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDD4390));
}

id sub_21BDB3770()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeItemProvider(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BDB37A8(uint64_t a1)
{
  v2 = qword_27CDBCCD0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBCDA0, &unk_21BE4C760);
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDD4388));
  return __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDD4390));
}

uint64_t type metadata accessor for HomeItemProvider(uint64_t a1)
{
  result = qword_27CDBCD40;
  if (!qword_27CDBCD40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BDB3890(uint64_t a1)
{
  sub_21BDB3934(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_21BDB3934(uint64_t a1)
{
  if (!qword_27CDBCD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDBCD58, &qword_21BE4C530);
    v1 = sub_21BE26CCC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDBCD50);
    }
  }
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_21BDB39D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_21BDB3A1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21BDB3A80(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_21BE26CBC();
}

uint64_t sub_21BDB3AFC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_21BE29ACC();
  MEMORY[0x21CF03CA0](v1, v2);
  sub_21BE28ABC();

  sub_21BC5C62C(v3);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BDB3BAC(uint64_t a1)
{
  v2 = *(v1 + 64);
  MEMORY[0x21CF03CA0](*(v1 + 48), *(v1 + 56));
  sub_21BE28ABC();

  sub_21BC5C62C(v2);
  sub_21BE28ABC();
}

uint64_t sub_21BDB3C50(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  sub_21BE29ACC();
  MEMORY[0x21CF03CA0](v2, v3);
  sub_21BE28ABC();

  sub_21BC5C62C(v4);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BDB3CFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  v3 = *(a2 + 48);
  v4 = *(a2 + 56);
  v5 = *(a2 + 64);
  MEMORY[0x21CF03CA0](*(a1 + 48), *(a1 + 56));
  MEMORY[0x21CF03CA0](v3, v4);

  v6 = sub_21BC5C62C(v2);
  v8 = v7;
  if (v6 == sub_21BC5C62C(v5) && v8 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_21BE2995C();
  }

  return v10 & 1;
}

uint64_t sub_21BDB3E4C@<X0>(void *a1@<X8>)
{
  result = MEMORY[0x21CF03CA0](*(v1 + 48), *(v1 + 56));
  *a1 = 0x6D657449656D6F68;
  a1[1] = 0xE800000000000000;
  return result;
}

unint64_t sub_21BDB3EA4()
{
  result = qword_27CDBCD68;
  if (!qword_27CDBCD68)
  {
    result = swift_getWitnessTable(byte_21BE4C640, &type metadata for HomeDataItem, v0, v1);
    atomic_store(result, &qword_27CDBCD68);
  }

  return result;
}

unint64_t sub_21BDB3EF8(uint64_t a1)
{
  *(a1 + 8) = sub_21BDB3F28();
  result = sub_21BDB3F7C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21BDB3F28()
{
  result = qword_27CDBCD70;
  if (!qword_27CDBCD70)
  {
    result = swift_getWitnessTable(aQ_11, &type metadata for HomeDataItem, v0, v1);
    atomic_store(result, &qword_27CDBCD70);
  }

  return result;
}

unint64_t sub_21BDB3F7C()
{
  result = qword_27CDBCD78;
  if (!qword_27CDBCD78)
  {
    result = swift_getWitnessTable(byte_21BE4C608, &type metadata for HomeDataItem, v0, v1);
    atomic_store(result, &qword_27CDBCD78);
  }

  return result;
}

uint64_t sub_21BDB3FEC@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for HomeView(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_21BD5992C(v1, v8);
  sub_21BD59480(v1, v5);
  sub_21BDB44BC(&qword_27CDBCD98, type metadata accessor for HomeView, byte_21BE47020);
  result = sub_21BE2852C();
  *a1 = result;
  return result;
}

uint64_t sub_21BDB4340(uint64_t a1)
{
  *(a1 + 8) = sub_21BDB44BC(&unk_27CDBCD80, type metadata accessor for HomeItemProvider, byte_21BE34830);
  result = sub_21BDB44BC(&qword_27CDB60C8, type metadata accessor for HomeItemProvider, byte_21BE34878);
  *(a1 + 16) = result;
  return result;
}

void sub_21BDB43C4(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v3;
}

uint64_t sub_21BDB4444(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_21BE26CBC();
}

uint64_t sub_21BDB44BC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BDB4504(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBA6A64;

  return sub_21BDB3594(a1, v4, v5, v6);
}

uint64_t sub_21BDB45C4()
{
  v1[2] = v0;
  v2 = sub_21BE26A4C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_21BE28D7C();
  v1[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x2822009F8](sub_21BDB46B8, v4, v3);
}

uint64_t sub_21BDB46B8()
{
  v1 = v0[2];
  v2 = qword_27CDD4380;
  v0[9] = qword_27CDD4380;
  if (*(v1 + v2))
  {

    v3 = *(v0[2] + v0[9]);

    v4 = v0[1];

    return v4(v3);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = sub_21BDB47B8;

    return MEMORY[0x282200480](250000000);
  }
}

uint64_t sub_21BDB47B8()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_21BDB496C;
  }

  else
  {
    v5 = sub_21BDB48F4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BDB48F4()
{

  v1 = *(v0[2] + v0[9]);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_21BDB496C()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = v0[3];
  v4 = v0[4];

  sub_21BE261BC();
  v5 = v1;
  sub_21BC51D50(v1, 0xD000000000000019, 0x800000021BE61850);

  (*(v4 + 8))(v2, v3);
  v6 = *(v0[2] + v0[9]);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_21BDB4A54(uint64_t a1, uint64_t a2, id a3)
{
  v3 = [a3 members];
  sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
  v4 = sub_21BE28C3C();

  v30 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_33:
    v22 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

LABEL_3:
  v6 = 0;
  v27 = v4 & 0xFFFFFFFFFFFFFF8;
  v28 = v4 & 0xC000000000000001;
  v25 = v4;
  v26 = v4 + 32;
  v24 = v5;
  do
  {
    if (v28)
    {
      v7 = MEMORY[0x21CF047C0](v6, v4);
    }

    else
    {
      if (v6 >= *(v27 + 16))
      {
        goto LABEL_31;
      }

      v7 = *(v26 + 8 * v6);
    }

    v8 = v7;
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_30;
    }

    sub_21BDE5CEC(v10);
    v4 = *(a1 + 16);
    if (v4)
    {
      v11 = 0;
      v12 = (a1 + 40);
      while (1)
      {
        if (v11 >= *(a1 + 16))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          v5 = sub_21BE2951C();
          if (!v5)
          {
            goto LABEL_33;
          }

          goto LABEL_3;
        }

        v14 = *(v12 - 1);
        v13 = *v12;

        v15 = [v8 appleID];
        if (!v15)
        {
          break;
        }

        v16 = v15;
        v17 = sub_21BE28A0C();
        v19 = v18;

        if (!v13)
        {
          goto LABEL_12;
        }

        if (v17 == v14 && v13 == v19)
        {

LABEL_26:

          sub_21BE296BC();
          sub_21BE296EC();
          sub_21BE296FC();
          sub_21BE296CC();
          goto LABEL_5;
        }

        v21 = sub_21BE2995C();

        if (v21)
        {
          goto LABEL_26;
        }

LABEL_13:
        ++v11;
        v12 += 2;
        if (v4 == v11)
        {
          goto LABEL_4;
        }
      }

      if (!v13)
      {
        goto LABEL_26;
      }

LABEL_12:

      goto LABEL_13;
    }

LABEL_4:

LABEL_5:
    v4 = v25;
  }

  while (v6 != v24);
  v22 = v30;
LABEL_34:

  return v22;
}

double sub_21BDB4CF8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_21BE26A4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE261BC();
  v9 = sub_21BE26A2C();
  v10 = sub_21BE28FFC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(0xD00000000000001DLL, 0x800000021BE617A0, &v20);
    _os_log_impl(&dword_21BB35000, v9, v10, "%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v13 = sub_21BE28DAC();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  sub_21BE28D7C();
  v14 = v1;
  v15 = sub_21BE28D6C();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v14;
  sub_21BBA932C(0, 0, v4, &unk_21BE4C790, v16);

  return result;
}

uint64_t sub_21BDB4F94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BDB16E4(a1, v4, v5, v6);
}

uint64_t sub_21BDB5084(uint64_t a1)
{
  sub_21BDB5270(a1, v3);
  v1 = swift_allocObject();
  sub_21BC75660(v3, v1 + 16);
  return sub_21BE2843C();
}

void *sub_21BDB5120(uint64_t *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result didTapAddRemoteGuardianFor_];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21BDB5180@<X0>(uint64_t a1@<X8>)
{
  sub_21BE2767C();
  result = sub_21BE27DAC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_21BDB51F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  sub_21BBC9BE8();
  return sub_21BE2860C();
}

unint64_t sub_21BDB52B0()
{
  result = qword_27CDBCDE0;
  if (!qword_27CDBCDE0)
  {
    v5[5] = v0;
    v5[6] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA8B8, qword_21BE4C890);
    v4 = sub_21BBC9BE8();
    v5[0] = MEMORY[0x277CE1410];
    v5[1] = v4;
    v5[2] = MEMORY[0x277CE1410];
    result = swift_getWitnessTable(MEMORY[0x277CDF0A8], v3, v5);
    atomic_store(result, &qword_27CDBCDE0);
  }

  return result;
}

uint64_t sub_21BDB53B8()
{
  v1 = sub_21BE25D1C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  if ([v0 isOrganizer] || objc_msgSend(v0, sel_isGuardian))
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    v10 = sub_21BE2599C();
  }

  else
  {
    v12 = [v0 birthDate];
    if (v12)
    {
      v13 = v12;
      sub_21BE25CDC();

      (*(v2 + 32))(v7, v5, v1);
      v10 = sub_21BC1F70C(v7);
      if ((sub_21BE2916C() & 1) == 0)
      {

        type metadata accessor for ConfirmChildAgeViewModel();
        v14 = swift_getObjCClassFromMetadata();
        v15 = [objc_opt_self() bundleForClass_];
        v10 = sub_21BE2599C();
      }

      (*(v2 + 8))(v7, v1);
    }

    else
    {
      return 0;
    }
  }

  return v10;
}

uint64_t sub_21BDB56D4()
{
  sub_21BBBF0B4(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

id sub_21BDB5738()
{
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v1 = v7;
  if (v7)
  {
    v2 = [v7 members];

    sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
    v3 = sub_21BE28C3C();

    MEMORY[0x28223BE20](v4);
    v6[2] = v0;
    v1 = sub_21BC241EC(sub_21BDBD8E0, v6, v3);
  }

  return v1;
}

uint64_t sub_21BDB5898(id *a1, void *a2)
{
  v3 = [*a1 altDSID];
  if (v3)
  {
    v4 = v3;
    v5 = sub_21BE28A0C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = [*(*__swift_project_boxed_opaque_existential_1Tm(a2 a2[3]) + 16)];
  if (v8)
  {
    v9 = v8;
    v10 = sub_21BE28A0C();
    v12 = v11;

    if (v7)
    {
      goto LABEL_6;
    }

LABEL_10:
    v13 = 0;
    goto LABEL_13;
  }

  v10 = 0;
  v12 = 0xE000000000000000;
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (v5 == v10 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_21BE2995C();
  }

LABEL_13:

  return v13 & 1;
}

uint64_t sub_21BDB59A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BDB5738();
  if (v4)
  {
    v5 = v4;
    if (qword_27CDB4E58 != -1)
    {
      swift_once();
    }

    if (byte_27CDD41B0)
    {
      v6 = 40.0;
    }

    else
    {
      v6 = 38.0;
    }

    sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
    sub_21BB3CC48(&qword_280BD8A20, &qword_280BD8A10, off_2782F0CC0, protocol conformance descriptor for FAProfilePictureStore);
    LOBYTE(v63) = 0;
    *&v65 = v6;
    *(&v65 + 1) = v5;
    *v66 = sub_21BE2727C();
    *&v66[8] = v7;
    v66[88] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCF90, &qword_21BE4CE68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCF98, &qword_21BE4CE70);
    sub_21BDBD6C0();
    sub_21BDBD7F4();
    sub_21BE2784C();
  }

  else
  {
    v8 = [*(*__swift_project_boxed_opaque_existential_1Tm(a1 a1[3]) + 16)];
    if (v8)
    {
      v9 = v8;
      v10 = sub_21BE28A0C();
      v34 = v11;
      v35 = v10;
    }

    else
    {
      v34 = 0xE000000000000000;
      v35 = 0;
    }

    v12 = *(*__swift_project_boxed_opaque_existential_1Tm(a1, a1[3]) + 16);
    v13 = [v12 firstName];
    if (v13)
    {
      v14 = v13;
      v33 = sub_21BE28A0C();
      v16 = v15;
    }

    else
    {
      v33 = 0;
      v16 = 0xE000000000000000;
    }

    v17 = [v12 lastName];
    if (v17)
    {
      v18 = v17;
      v19 = sub_21BE28A0C();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0xE000000000000000;
    }

    if (qword_27CDB4E58 != -1)
    {
      swift_once();
    }

    if (byte_27CDD41B0)
    {
      v22 = 40.0;
    }

    else
    {
      v22 = 38.0;
    }

    v23 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    v24 = *(*v23 + 24);
    v25 = *(*v23 + 32);
    type metadata accessor for FAFamilyImageLoader(0);
    sub_21BBBF0A0(v24, v25);
    sub_21BDBC510(&qword_27CDB69A8, type metadata accessor for FAFamilyImageLoader, protocol conformance descriptor for FAFamilyImageLoader);
    v26 = sub_21BE26E9C();
    LOBYTE(v61[0]) = v27 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB98D0, &qword_21BE40920);
    sub_21BE283EC();
    LOBYTE(v73) = 0;
    sub_21BBBF0B4(v65, *(&v65 + 1));

    *&v67 = v35;
    *(&v67 + 1) = v34;
    *&v68 = v33;
    *(&v68 + 1) = v16;
    *&v69 = v19;
    *(&v69 + 1) = v21;
    LOBYTE(v70) = 0;
    *(&v70 + 1) = v22;
    *&v71 = v26;
    BYTE8(v71) = v61[0];
    *v72 = v24;
    *&v72[8] = v25;
    *&v72[16] = 0;
    *&v63 = v35;
    *(&v63 + 1) = v34;
    *v64 = v33;
    *&v64[8] = v16;
    *&v64[16] = v19;
    *&v64[24] = v21;
    v64[32] = 0;
    *&v64[40] = v22;
    *&v64[48] = v26;
    v64[56] = v61[0];
    *&v64[64] = v24;
    *&v64[72] = v25;
    *&v64[80] = 0;
    sub_21BCEFD18(&v67, &v65);
    sub_21BDBD66C(&v63);
    *&v66[48] = v71;
    *&v66[64] = *v72;
    *&v66[80] = *&v72[16];
    v65 = v67;
    *v66 = v68;
    *&v66[16] = v69;
    *&v66[32] = v70;
    LOBYTE(v61[0]) = 1;
    v66[88] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCF90, &qword_21BE4CE68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCF98, &qword_21BE4CE70);
    sub_21BDBD6C0();
    sub_21BDBD7F4();
    sub_21BE2784C();
  }

  v28 = sub_21BE2771C();
  LOBYTE(v67) = 1;
  sub_21BDB60D0(a1, &v65);
  v55 = *&v66[16];
  v56 = *&v66[32];
  v57 = *&v66[48];
  v58 = *&v66[64];
  v53 = v65;
  v54 = *v66;
  v60 = *&v66[64];
  v59[2] = *&v66[16];
  v59[3] = *&v66[32];
  v59[4] = *&v66[48];
  v59[0] = v65;
  v59[1] = *v66;
  sub_21BBA3854(&v53, &v63, &qword_27CDBCFC8, &qword_21BE4CE78);
  sub_21BB3A4CC(v59, &qword_27CDBCFC8, &qword_21BE4CE78);
  *&v52[39] = v55;
  *&v52[55] = v56;
  *&v52[71] = v57;
  *&v52[87] = v58;
  *&v52[7] = v53;
  *&v52[23] = v54;
  v29 = v67;
  KeyPath = swift_getKeyPath();
  v50 = v77;
  *v51 = v78[0];
  *&v51[9] = *(v78 + 9);
  v46 = v73;
  v47 = v74;
  v61[0] = v73;
  v61[1] = v74;
  *(v62 + 9) = *(v78 + 9);
  v61[4] = v77;
  v62[0] = v78[0];
  v48 = v75;
  v49 = v76;
  v61[2] = v75;
  v61[3] = v76;
  *&v39[9] = *(v78 + 9);
  v38 = v77;
  *v39 = v78[0];
  v36 = v75;
  v37 = v76;
  v63 = v28;
  v64[0] = v29;
  *&v64[1] = *v52;
  *&v64[17] = *&v52[16];
  *&v64[80] = *&v52[79];
  *&v64[65] = *&v52[64];
  *&v64[49] = *&v52[48];
  *&v64[33] = *&v52[32];
  v40 = *v64;
  v44 = *&v64[64];
  v45 = *&v64[80];
  v42 = *&v64[32];
  v43 = *&v64[48];
  v41 = *&v64[16];
  v31 = v74;
  *a2 = v73;
  *(a2 + 16) = v31;
  *(a2 + 64) = v38;
  *(a2 + 80) = *v39;
  *(a2 + 32) = v36;
  *(a2 + 48) = v37;
  *(a2 + 128) = v40;
  *(a2 + 144) = v41;
  *(a2 + 96) = *&v39[16];
  *(a2 + 112) = v28;
  *(a2 + 192) = v44;
  *(a2 + 208) = v45;
  *(a2 + 160) = v42;
  *(a2 + 176) = v43;
  *(a2 + 224) = 0;
  *(a2 + 232) = 1;
  *(a2 + 240) = 0;
  *(a2 + 248) = KeyPath;
  *(a2 + 256) = 0;
  sub_21BBA3854(v61, &v65, &qword_27CDBCFD0, &qword_21BE4CE80);
  sub_21BBA3854(&v63, &v65, &qword_27CDBCFD8, &qword_21BE4CE88);
  sub_21BDBD8D4(KeyPath, 0);
  sub_21BCBC920(KeyPath, 0);
  *&v66[33] = *&v52[32];
  *&v66[49] = *&v52[48];
  *&v66[65] = *&v52[64];
  *&v66[80] = *&v52[79];
  *&v66[1] = *v52;
  v65 = v28;
  v66[0] = v29;
  *&v66[17] = *&v52[16];
  sub_21BB3A4CC(&v65, &qword_27CDBCFD8, &qword_21BE4CE88);
  v71 = v50;
  *v72 = *v51;
  *&v72[9] = *&v51[9];
  v67 = v46;
  v68 = v47;
  v70 = v49;
  v69 = v48;
  return sub_21BB3A4CC(&v67, &qword_27CDBCFD0, &qword_21BE4CE80);
}

uint64_t sub_21BDB60D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = sub_21BE275DC();
  v4 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BC1FF18(*(*v4 + 16));
  sub_21BB41FA4();
  v5 = sub_21BE27DBC();
  v7 = v6;
  v9 = v8;
  sub_21BE2832C();
  v10 = sub_21BE27D4C();
  v33 = v11;
  v34 = v10;
  v32 = v12;
  v35 = v13;

  sub_21BBC7C7C(v5, v7, v9 & 1);

  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BDB53B8();
  v14 = sub_21BE27DBC();
  v16 = v15;
  v18 = v17;
  sub_21BE27BEC();
  v19 = sub_21BE27D9C();
  v21 = v20;
  v23 = v22;

  sub_21BBC7C7C(v14, v16, v18 & 1);

  sub_21BE2833C();
  v24 = sub_21BE27D4C();
  v26 = v25;
  v28 = v27;
  v30 = v29;

  sub_21BBC7C7C(v19, v21, v23 & 1);

  *a2 = v36;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v34;
  *(a2 + 32) = v33;
  *(a2 + 40) = v32 & 1;
  *(a2 + 48) = v35;
  *(a2 + 56) = v24;
  *(a2 + 64) = v26;
  *(a2 + 72) = v28 & 1;
  *(a2 + 80) = v30;
  sub_21BBA4A38(v34, v33, v32 & 1);

  sub_21BC75900(v24, v26, v28 & 1, v30);
  sub_21BC75944(v24, v26, v28 & 1, v30);
  sub_21BBC7C7C(v34, v33, v32 & 1);
}

void *sub_21BDB6324@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_21BE275DC();
  v10 = 0;
  sub_21BDB59A8(v2, __src);
  memcpy(__dst, __src, 0x101uLL);
  memcpy(v12, __src, 0x101uLL);
  sub_21BBA3854(__dst, &v7, &qword_27CDBCF88, &unk_21BE4CE58);
  sub_21BB3A4CC(v12, &qword_27CDBCF88, &unk_21BE4CE58);
  memcpy(&v9[7], __dst, 0x101uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x108uLL);
}

uint64_t sub_21BDB63F8(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = type metadata accessor for FamilyMemberViewModel();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = xmmword_21BE358A0;
  *(v8 + 40) = 0;
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2841C();
  v10 = v16;
  v11 = v17;
  LOBYTE(v16) = a3;
  v17 = a4;
  sub_21BE283FC();
  v12 = objc_opt_self();
  v13 = &selRef_systemFillColor;
  if (!a3)
  {
    v13 = &selRef_systemBackgroundColor;
  }

  v14 = [v12 *v13];
  sub_21BE2826C();
  v16 = v8;
  v19 = v7;
  v20 = &off_282D96DE8;
  v21 = 0;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v18;
  v26 = sub_21BE2852C();
  v27 = 1;
  KeyPath = swift_getKeyPath();
  v29 = 0;
  if (qword_27CDB4F88 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD030, &qword_21BE4D060);
  type metadata accessor for FAFamilyImageLoader(0);
  sub_21BDBDBE0();
  sub_21BDBC510(&qword_27CDB69A8, type metadata accessor for FAFamilyImageLoader, protocol conformance descriptor for FAFamilyImageLoader);
  sub_21BE27EEC();
  return sub_21BB3A4CC(&v16, &qword_27CDBD030, &qword_21BE4D060);
}

uint64_t sub_21BDB664C()
{
  v1 = *v0;
  v2 = type metadata accessor for FamilyMemberViewModel();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = xmmword_21BE358A0;
  *(v3 + 40) = 0;
  v18 = *(v0 + 16);
  v19 = *(v0 + 32);
  v15 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  sub_21BE2856C();
  v5 = *(&v16 + 1);
  v14 = v16;
  v13 = v17;
  v16 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2841C();
  v6 = v18;
  v7 = v19;
  v18 = *(v0 + 16);
  v19 = *(v0 + 32);
  MEMORY[0x21CF036E0](&v16, v4);
  v8 = &selRef_systemFillColor;
  if ((v16 & 1) == 0)
  {
    v18 = *(v0 + 40);
    sub_21BE283FC();
    if (!v16)
    {
      v8 = &selRef_systemBackgroundColor;
    }
  }

  v9 = [objc_opt_self() *v8];
  *&v18 = sub_21BE2826C();
  v10 = sub_21BE2852C();
  KeyPath = swift_getKeyPath();
  *&v18 = v3;
  v20 = v2;
  v21 = &off_282D96DE8;
  v22 = 0;
  v23 = v15;
  v24 = 0;
  v25 = v14;
  v26 = v5;
  v27 = v13;
  v28 = v6;
  v29 = v7;
  *v30 = v16;
  *&v30[3] = *(&v16 + 3);
  v31 = v10;
  v32 = 1;
  v33 = KeyPath;
  v34 = 0;
  if (qword_27CDB4F88 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCFF0, &qword_21BE4D038);
  type metadata accessor for FAFamilyImageLoader(0);
  sub_21BDBD958();
  sub_21BDBC510(&qword_27CDB69A8, type metadata accessor for FAFamilyImageLoader, protocol conformance descriptor for FAFamilyImageLoader);
  sub_21BE27EEC();
  return sub_21BB3A4CC(&v18, &qword_27CDBCFF0, &qword_21BE4D038);
}

uint64_t sub_21BDB6920@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21BE2754C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for FamilyChecklistCell(0);
  sub_21BBA3854(v1 + *(v10 + 36), v9, &qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21BE27B0C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_21BE28FEC();
    v13 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

id sub_21BDB6B28()
{
  v1 = [*(v0 + 16) incompleteItems];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 integerValue];

    type metadata accessor for FamilyChecklistCell(0);
    type metadata accessor for ChecklistStoreCache();
    sub_21BDBC510(&qword_27CDB8CB8, type metadata accessor for ChecklistStoreCache, protocol conformance descriptor for SimpleFamilyServerCache);
    v4 = sub_21BE26EAC();
    v13 = v3;
    v5 = sub_21BE28E8C();
    v6 = sub_21BE1F55C();
    if (v6)
    {
      v7 = v6;
      v8 = *(v4 + 24);
      v14 = *(v4 + 16);
      v15 = v8;

      MEMORY[0x21CF03CA0](46, 0xE100000000000000);
      MEMORY[0x21CF03CA0](0x746E756F63, 0xE500000000000000);
      v9 = sub_21BE289CC();

      [v7 setValue:v5 forKey:v9];

      v5 = v9;
    }

    else
    {
    }

    sub_21BE26EAC();
    v12 = sub_21BE1F55C();
    [v12 synchronize];

    return v13;
  }

  else
  {
    type metadata accessor for FamilyChecklistCell(0);
    type metadata accessor for ChecklistStoreCache();
    sub_21BDBC510(&qword_27CDB8CB8, type metadata accessor for ChecklistStoreCache, protocol conformance descriptor for SimpleFamilyServerCache);
    sub_21BE26EAC();
    v14 = 0x746E756F63;
    v15 = 0xE500000000000000;
    v10 = sub_21BE20000(&v14);

    if (v10)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v14 = 0;
        LOBYTE(v15) = 1;
        sub_21BE28EAC();

        if (v15 != 1)
        {
          return v14;
        }
      }

      else
      {
      }
    }

    return 0;
  }
}

uint64_t sub_21BDB6E14@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DF0, &unk_21BE33810);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCF30, &qword_21BE4CD70);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v12 = sub_21BE27B0C();
  v42 = *(v12 - 8);
  v43 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21BE26A4C();
  v41 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v1 + 56);
  v19 = *(v1 + 64);
  *&v46 = *(v1 + 48);
  *(&v46 + 1) = v18;
  LOBYTE(v47) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  MEMORY[0x21CF036E0](&v45, v20);
  if (v45 == 1)
  {
    v21 = *(v1 + 16);
    v22 = [*(v2 + 16) incompleteItems];
    if (v22)
    {

      if (qword_27CDB4FE8 != -1)
      {
        swift_once();
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
      }

      else
      {
        v32 = v21;
        sub_21BE2614C();
        v33 = sub_21BE26A2C();
        v34 = sub_21BE28FCC();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_21BB35000, v33, v34, "Launching checklist", v35, 2u);
          MEMORY[0x21CF05C50](v35, -1, -1);
        }

        (*(v41 + 8))(v17, v15);
        v36 = [objc_allocWithZone(FAChecklistViewController) initWithAccountManager:*(v2 + 40) familyCircle:*v2 profilePictureStore:*(v2 + 32) checklistStore:v32];
        swift_unknownObjectWeakAssign();
        v37 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
        v38 = sub_21BDB6920(v14);
        MEMORY[0x28223BE20](v38);
        *(&v40 - 2) = v37;
        *(&v40 - 1) = v2;
        sub_21BE27AFC();

        (*(v42 + 8))(v14, v43);
      }
    }

    else
    {
      *v11 = sub_21BE275DC();
      *(v11 + 1) = 0;
      v11[16] = 0;
      v24 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCF38, &qword_21BE4CD78) + 44)];
      sub_21BE26EEC();
      *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DF8, &unk_21BE38C60) + 36)] = 257;
      v25 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E00, &unk_21BE33820) + 36)];
      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55B0, &qword_21BE3FF90) + 28);
      v27 = *MEMORY[0x277CDF438];
      v28 = sub_21BE26E7C();
      (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
      *v25 = swift_getKeyPath();
      sub_21BE286BC();
      sub_21BE26F2C();
      v29 = &v8[*(v3 + 36)];
      v30 = v47;
      *v29 = v46;
      *(v29 + 1) = v30;
      *(v29 + 2) = v48;
      sub_21BBA3854(v8, v6, &qword_27CDB5DF0, &unk_21BE33810);
      *v24 = 0;
      v24[8] = 1;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAD60, &qword_21BE45410);
      sub_21BBA3854(v6, &v24[*(v31 + 48)], &qword_27CDB5DF0, &unk_21BE33810);
      sub_21BB3A4CC(v8, &qword_27CDB5DF0, &unk_21BE33810);
      sub_21BB3A4CC(v6, &qword_27CDB5DF0, &unk_21BE33810);
      sub_21BB3B038(&qword_27CDBCF40, &qword_27CDBCF30, &qword_21BE4CD70, MEMORY[0x277CE1138]);
    }
  }

  result = sub_21BE2852C();
  *v44 = result;
  return result;
}

void sub_21BDB7420(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FamilyChecklistCell(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  if (a1)
  {
    sub_21BDBCE20(a3, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v10 = swift_allocObject();
    sub_21BDBCE84(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
    aBlock[4] = sub_21BDBD2F4;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21BB42A18;
    aBlock[3] = &block_descriptor_102;
    v11 = _Block_copy(aBlock);

    [a1 presentViewController:a2 animated:1 completion:v11];
    _Block_release(v11);
  }
}

uint64_t sub_21BDB75A0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  sub_21BE2854C();
  if (qword_27CDB4FE8 != -1)
  {
    swift_once();
  }

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21BDB763C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20 = a1;
  v21 = sub_21BE27A2C();
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FamilyChecklistCell(0);
  v18 = *(v5 - 8);
  v6 = *(v18 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v17 = sub_21BE275DC();
  v25 = 0;
  sub_21BDB7A34(v1, v23);
  memcpy(v28, v23, sizeof(v28));
  memcpy(v29, v23, 0x1E0uLL);
  sub_21BBA3854(v28, v22, &qword_27CDBCEC0, &unk_21BE4CD20);
  sub_21BB3A4CC(v29, &qword_27CDBCEC0, &unk_21BE4CD20);
  memcpy(&v24[7], v28, 0x1E0uLL);
  v7 = v25;
  sub_21BDB6B28();
  v8 = 0;
  if ((v9 & 1) == 0)
  {
    v10 = *(v1 + 56);
    v11 = *(v1 + 64);
    v23[0] = *(v1 + 48);
    v23[1] = v10;
    LOBYTE(v23[2]) = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
    MEMORY[0x21CF036E0](v22, v12);
    v8 = LOBYTE(v22[0]) ^ 1;
  }

  KeyPath = swift_getKeyPath();
  v26 = 0;
  sub_21BE286AC();
  sub_21BE2725C();
  *(&v27[6] + 7) = *&v27[21];
  *(&v27[8] + 7) = *&v27[23];
  *(&v27[10] + 7) = *&v27[25];
  *(&v27[12] + 7) = *&v27[27];
  *(v27 + 7) = *&v27[15];
  *(&v27[2] + 7) = *&v27[17];
  *(&v27[4] + 7) = *&v27[19];
  sub_21BDBCE20(v2, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v15 = swift_allocObject();
  sub_21BDBCE84(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v22[0] = v17;
  v22[1] = 0;
  LOBYTE(v22[2]) = v7;
  memcpy(&v22[2] + 1, v24, 0x1E7uLL);
  LOBYTE(v22[63]) = v8 & 1;
  v22[64] = KeyPath;
  LOBYTE(v22[65]) = 0;
  *(&v22[73] + 1) = *&v27[8];
  *(&v22[75] + 1) = *&v27[10];
  *(&v22[77] + 1) = *&v27[12];
  *(&v22[65] + 1) = *v27;
  *(&v22[67] + 1) = *&v27[2];
  *(&v22[69] + 1) = *&v27[4];
  *(&v22[71] + 1) = *&v27[6];
  v22[79] = *(&v27[13] + 7);
  LOBYTE(v22[80]) = 0;
  v22[81] = sub_21BDBCEE8;
  v22[82] = v15;
  sub_21BE27A0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCEC8, &qword_21BE4CD30);
  sub_21BDBCF00();
  sub_21BE2805C();
  (*(v19 + 8))(v4, v21);
  memcpy(v23, v22, sizeof(v23));
  return sub_21BB3A4CC(v23, &qword_27CDBCEC8, &qword_21BE4CD30);
}

uint64_t sub_21BDB7A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BE2771C();
  v22 = 1;
  sub_21BDB7D38(__src);
  memcpy(__dst, __src, 0x121uLL);
  memcpy(v25, __src, 0x121uLL);
  sub_21BBA3854(__dst, v12, &qword_27CDBCF20, &qword_21BE4CD60);
  sub_21BB3A4CC(v25, &qword_27CDBCF20, &qword_21BE4CD60);
  memcpy(&v21[7], __dst, 0x121uLL);
  v5 = v22;
  sub_21BE286AC();
  sub_21BE2725C();
  *(&v23[6] + 7) = *&v23[21];
  *(&v23[8] + 7) = *&v23[23];
  *(&v23[10] + 7) = *&v23[25];
  *(&v23[12] + 7) = *&v23[27];
  *(v23 + 7) = *&v23[15];
  *(&v23[2] + 7) = *&v23[17];
  *(&v23[4] + 7) = *&v23[19];
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  *__src = *(a1 + 48);
  *&__src[8] = v6;
  __src[16] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  MEMORY[0x21CF036E0](v12, v8);
  v9 = 0;
  if (LOBYTE(v12[0]) == 1)
  {
    sub_21BDB6E14(__src);
    v9 = *__src;
  }

  v12[0] = v4;
  v12[1] = 0;
  LOBYTE(v12[2]) = v5;
  memcpy(&v12[2] + 1, v21, 0x128uLL);
  *(&v12[47] + 1) = *&v23[8];
  *(&v12[49] + 1) = *&v23[10];
  *(&v12[51] + 1) = *&v23[12];
  *(&v12[39] + 1) = *v23;
  *(&v12[41] + 1) = *&v23[2];
  *(&v12[43] + 1) = *&v23[4];
  *(&v12[45] + 1) = *&v23[6];
  v12[53] = *(&v23[13] + 7);
  memcpy(&v11[7], v12, 0x1B0uLL);

  sub_21BBA3854(v12, __src, &qword_27CDBCF28, &qword_21BE4CD68);
  *a2 = 9;
  *(a2 + 8) = 0;
  *(a2 + 16) = &unk_282D873B0;
  *(a2 + 24) = &unk_282D873E0;
  *(a2 + 32) = 0;
  memcpy((a2 + 33), v11, 0x1B7uLL);
  *(a2 + 472) = v9;

  *__src = v4;
  *&__src[8] = 0;
  __src[16] = v5;
  memcpy(&__src[17], v21, 0x128uLL);
  v18 = *&v23[8];
  v19 = *&v23[10];
  *v20 = *&v23[12];
  v14 = *v23;
  v15 = *&v23[2];
  v16 = *&v23[4];
  v17 = *&v23[6];
  *&v20[15] = *(&v23[13] + 7);
  sub_21BB3A4CC(__src, &qword_27CDBCF28, &qword_21BE4CD68);
}

uint64_t sub_21BDB7D38@<X0>(void *a1@<X8>)
{
  v73 = a1;
  v68 = sub_21BE25FCC();
  v1 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v3 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass_];
  v7 = sub_21BE2599C();
  v9 = v8;

  *&v115 = v7;
  *(&v115 + 1) = v9;
  sub_21BB41FA4();
  v10 = sub_21BE27DBC();
  v70 = v11;
  v71 = v10;
  LOBYTE(v7) = v12;
  v72 = v13;
  sub_21BE286AC();
  sub_21BE2725C();
  v69 = v7 & 1;
  v133 = v7 & 1;
  v14 = sub_21BDB6B28();
  if (v15)
  {
    v16 = [v5 bundleForClass_];
    v17 = sub_21BE2599C();
    v19 = v18;

    *&v115 = v17;
    *(&v115 + 1) = v19;
    v20 = sub_21BE27DBC();
    v22 = v21;
    LOBYTE(v19) = v23;
    sub_21BE2833C();
    v24 = sub_21BE27D4C();
    v26 = v25;
    v28 = v27;
    v67 = v29;

    sub_21BBC7C7C(v20, v22, v19 & 1);

    sub_21BE27BEC();
    v68 = sub_21BE27D9C();
    v31 = v30;
    v33 = v32;
    v35 = v34;

    sub_21BBC7C7C(v24, v26, v28 & 1);

    sub_21BE286AC();
    sub_21BE2725C();
    LOBYTE(v74[0]) = v33 & 1;
    *&v105 = v68;
    *(&v105 + 1) = v31;
    LOBYTE(v106) = v33 & 1;
    *(&v106 + 1) = v35;
    sub_21BDBD398(&v105);
  }

  else
  {
    v36 = v14;
    v37 = v68;
    (*(v1 + 104))(v3, *MEMORY[0x277D07F38], v68);
    v38 = MEMORY[0x21CF01150](v3);
    (*(v1 + 8))(v3, v37);
    if (v38)
    {
      v39 = 0x800000021BE5ADA0;
      v40 = 0xD00000000000001FLL;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_21BE32770;
      v42 = MEMORY[0x277D83C10];
      *(v41 + 56) = MEMORY[0x277D83B88];
      *(v41 + 64) = v42;
      *(v41 + 32) = v36;

      v43 = [v5 bundleForClass_];
      sub_21BE2599C();

      v40 = sub_21BE289DC();
      v39 = v44;
    }

    *&v115 = v40;
    *(&v115 + 1) = v39;
    v45 = sub_21BE27DBC();
    v47 = v46;
    v49 = v48;
    sub_21BE2833C();
    v50 = sub_21BE27D4C();
    v52 = v51;
    v54 = v53;
    v67 = v55;

    sub_21BBC7C7C(v45, v47, v49 & 1);

    sub_21BE27BEC();
    v68 = sub_21BE27D9C();
    v57 = v56;
    v59 = v58;
    v61 = v60;

    sub_21BBC7C7C(v50, v52, v54 & 1);

    sub_21BE286AC();
    sub_21BE2725C();
    LOBYTE(v74[0]) = v59 & 1;
    *&v105 = v68;
    *(&v105 + 1) = v57;
    LOBYTE(v106) = v59 & 1;
    *(&v106 + 1) = v61;
    sub_21BDBD3A4(&v105);
  }

  v101 = v111;
  v102 = v112;
  v103 = v113;
  v104 = v114;
  v97 = v107;
  v98 = v108;
  v99 = v109;
  v100 = v110;
  v95 = v105;
  v96 = v106;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8C98, &unk_21BE3DAC8);
  sub_21BCA16C0();
  sub_21BE2784C();
  v111 = v121;
  v112 = v122;
  v113 = v123;
  v107 = v117;
  v108 = v118;
  v109 = v119;
  v110 = v120;
  v105 = v115;
  v106 = v116;
  v63 = v70;
  v62 = v71;
  *&v86 = v71;
  *(&v86 + 1) = v70;
  v64 = v69;
  LOBYTE(v87) = v69;
  *(&v87 + 1) = *v132;
  DWORD1(v87) = *&v132[3];
  v65 = v72;
  *(&v87 + 1) = v72;
  v92 = v129;
  v93 = v130;
  v88 = v125;
  v89 = v126;
  v90 = v127;
  v91 = v128;
  v85[6] = v129;
  v85[7] = v130;
  v85[2] = v125;
  v85[3] = v126;
  v85[4] = v127;
  v85[5] = v128;
  v85[0] = v86;
  v85[1] = v87;
  v102 = v122;
  v103 = v123;
  v98 = v118;
  v99 = v119;
  v100 = v120;
  v101 = v121;
  v94 = v131;
  v95 = v115;
  v96 = v116;
  v97 = v117;
  v85[16] = v122;
  v85[17] = v123;
  v85[12] = v118;
  v85[13] = v119;
  v85[14] = v120;
  v85[15] = v121;
  v85[8] = v131;
  v85[9] = v115;
  v114 = v124;
  v104 = v124;
  LOBYTE(v85[18]) = v124;
  v85[10] = v116;
  v85[11] = v117;
  memcpy(v73, v85, 0x121uLL);
  sub_21BBA3854(&v86, v74, &qword_27CDB8C98, &unk_21BE3DAC8);
  sub_21BBA3854(&v95, v74, &qword_27CDBCF48, &unk_21BE4CD80);
  sub_21BB3A4CC(&v105, &qword_27CDBCF48, &unk_21BE4CD80);
  v74[0] = v62;
  v74[1] = v63;
  v75 = v64;
  *v76 = *v132;
  *&v76[3] = *&v132[3];
  v77 = v65;
  v82 = v129;
  v83 = v130;
  v84 = v131;
  v78 = v125;
  v79 = v126;
  v81 = v128;
  v80 = v127;
  return sub_21BB3A4CC(v74, &qword_27CDB8C98, &unk_21BE3DAC8);
}

void *sub_21BDB8644(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  result = MEMORY[0x21CF036E0](&v10);
  if ((v10 & 1) == 0)
  {
    if (qword_27CDB4F68 != -1)
    {
      swift_once();
    }

    sub_21BB3A2A4(0, &qword_27CDBCF18, off_2782F0B88);
    v5 = sub_21BE29BBC();
    v7 = v6;
    LOBYTE(v11) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21BE32770;
    *(inited + 32) = 0x6976614E77656976;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = &protocol witness table for String;
    *(inited + 40) = 0xEF6F546465746167;
    *(inited + 48) = v5;
    *(inited + 56) = v7;

    v9 = sub_21BBB5E60(inited);
    swift_setDeallocating();
    sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
    sub_21BCA55DC(&v11, v9);

    v11 = v1;
    v12 = v2;
    v13 = v3;
    v10 = 1;
    return sub_21BE2854C();
  }

  return result;
}

void *sub_21BDB880C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v18 - v3;
  v5 = sub_21BE26A4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v9 = sub_21BCE6070(0xD000000000000011, 0x800000021BE57B00, v18[0]);

  if (!v9)
  {
    sub_21BE2614C();
    v10 = sub_21BE26A2C();
    v11 = sub_21BE28FFC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_21BB35000, v10, v11, "No location sharing service found, trying service load", v12, 2u);
      MEMORY[0x21CF05C50](v12, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    v13 = sub_21BE28DAC();
    (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
    sub_21BDBCA44(v1, v18);
    sub_21BE28D7C();
    v14 = sub_21BE28D6C();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    *(v15 + 16) = v14;
    *(v15 + 24) = v16;
    sub_21BDBCA7C(v18, v15 + 32);
    sub_21BBA932C(0, 0, v4, &unk_21BE4CD10, v15);
  }

  return v9;
}

uint64_t sub_21BDB8AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v4[4] = swift_task_alloc();
  v4[5] = sub_21BE28D7C();
  v4[6] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_21BDB8BB4, v6, v5);
}

uint64_t sub_21BDB8BB4(uint64_t a1)
{
  v1[9] = *(v1[3] + 136);
  v1[10] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v1[11] = v3;
  v1[12] = v2;

  return MEMORY[0x2822009F8](sub_21BC76CD4, v3, v2);
}

uint64_t sub_21BDB8C4C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCE48, &unk_21BE4CC00);
  v46 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v45 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB50C0, &qword_21BE31098);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCE50, &qword_21BE4CC10);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  sub_21BDB92BC(v2, (&v37 - v10));
  sub_21BDBC7C4();
  v43 = v8;
  sub_21BE2809C();
  sub_21BB57F4C(v11);
  v44 = v2;
  sub_21BDBCA44(v2, v50);
  sub_21BE28D7C();
  v12 = sub_21BE28D6C();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  sub_21BDBCA7C(v50, v13 + 32);
  v15 = sub_21BE28DAC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = &v37 - v18;
  sub_21BE28D8C();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v41 = sub_21BE2715C();
    v42 = &v37;
    v40 = *(v41 - 8);
    MEMORY[0x28223BE20](v41);
    v38 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_21BE295EC();

    v48 = 0xD000000000000042;
    v49 = 0x800000021BE619C0;
    v47 = 385;
    v21 = sub_21BE2992C();
    MEMORY[0x21CF03CA0](v21);

    v39 = v4;
    MEMORY[0x28223BE20](v22);
    (*(v16 + 16))(&v37 - v18, &v37 - v18, v15);
    v23 = v38;
    sub_21BE2714C();
    (*(v16 + 8))(v19, v15);
    v4 = v39;
    v24 = v45;
    sub_21BB57FB8(v43, v45);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB50C8, &unk_21BE310A0);
    (*(v40 + 32))(v24 + *(v25 + 36), v23, v41);
  }

  else
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB50D0, &unk_21BE4CC50);
    v24 = v45;
    v27 = (v45 + *(v26 + 36));
    v28 = sub_21BE2701C();
    (*(v16 + 32))(&v27[*(v28 + 20)], v19, v15);
    *v27 = &unk_21BE4CC40;
    *(v27 + 1) = v13;
    sub_21BB57FB8(v43, v24);
  }

  sub_21BDBCA44(v44, v50);
  v29 = swift_allocObject();
  sub_21BDBCA7C(v50, v29 + 16);
  type metadata accessor for NavigationManager(0);
  sub_21BDBC510(&qword_27CDB69B0, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
  v30 = sub_21BE26E9C();
  v32 = v31;
  LOBYTE(v48) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6A10, &qword_21BE35CE0);
  sub_21BE283EC();
  v33 = v50[0];
  v34 = v51;
  (*(v46 + 32))(a1, v24, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCE98, &qword_21BE4CC48);
  v36 = a1 + *(result + 36);
  *v36 = sub_21BDBCB58;
  *(v36 + 8) = v29;
  *(v36 + 16) = v30;
  *(v36 + 24) = v32 & 1;
  *(v36 + 32) = v33;
  *(v36 + 40) = v34;
  return result;
}

uint64_t sub_21BDB92BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v55 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCE88, &qword_21BE4CC30);
  v3 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v5 = &v45 - v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCE80, &qword_21BE4CC28);
  v45 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v7 = &v45 - v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCEA0, &qword_21BE4CC60);
  v8 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v10 = &v45 - v9;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCEA8, &qword_21BE4CC68);
  MEMORY[0x28223BE20](v50);
  v53 = &v45 - v11;
  v48 = sub_21BE2721C();
  v49 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCEB0, &unk_21BE4CC70);
  v46 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v15 = &v45 - v14;
  v16 = *(a1 + 104);
  LOBYTE(v60) = *(a1 + 96);
  *(&v60 + 1) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  if (v56 == 1)
  {
    sub_21BDBCA44(a1, &v60);
    v17 = swift_allocObject();
    sub_21BDBCA7C(&v60, v17 + 16);
    sub_21BDBCA44(a1, &v60);
    v18 = swift_allocObject();
    sub_21BDBCA7C(&v60, v18 + 16);
    LOBYTE(v56) = 0;
    sub_21BE283EC();
    v19 = v60;
    v20 = *(&v60 + 1);
    type metadata accessor for NavigationManager(0);
    sub_21BDBC510(&qword_27CDB69B0, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
    v21 = sub_21BE26E9C();
    v59 = v22 & 1;
    *&v56 = &unk_21BE4CC88;
    *(&v56 + 1) = v17;
    *&v57 = sub_21BDBCCE0;
    *(&v57 + 1) = v18;
    v58[0] = v19;
    *&v58[8] = v20;
    *&v58[16] = v21;
    v58[24] = v22 & 1;
    sub_21BE2720C();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCE70, &qword_21BE4CC20);
    v24 = sub_21BB3B038(&qword_27CDBCE78, &qword_27CDBCE70, &qword_21BE4CC20, protocol conformance descriptor for Link<A, B>);
    v25 = sub_21BDBC510(&qword_27CDBC430, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    v26 = v48;
    sub_21BE27ECC();
    (*(v49 + 8))(v13, v26);
    v60 = v56;
    v61 = v57;
    v62[0] = *v58;
    *(v62 + 9) = *&v58[9];
    sub_21BB3A4CC(&v60, &qword_27CDBCE70, &qword_21BE4CC20);
    v27 = v46;
    v28 = v52;
    (*(v46 + 16))(v53, v15, v52);
    swift_storeEnumTagMultiPayload();
    *&v56 = v23;
    *(&v56 + 1) = v26;
    *&v57 = v24;
    *(&v57 + 1) = v25;
    swift_getOpaqueTypeConformance2();
    v29 = sub_21BB3B038(&qword_27CDBCE90, &qword_27CDBCE88, &qword_21BE4CC30, MEMORY[0x277CDF028]);
    *&v56 = v47;
    *(&v56 + 1) = v29;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v56 = v51;
    *(&v56 + 1) = v26;
    *&v57 = OpaqueTypeConformance2;
    *(&v57 + 1) = v25;
    swift_getOpaqueTypeConformance2();
    sub_21BE2784C();
    return (*(v27 + 8))(v15, v28);
  }

  else
  {
    sub_21BDBCA44(a1, &v60);
    v32 = swift_allocObject();
    v33 = sub_21BDBCA7C(&v60, v32 + 16);
    v46 = v8;
    MEMORY[0x28223BE20](v33);
    *(&v45 - 2) = a1;
    sub_21BDBCB70();
    sub_21BE2843C();
    v34 = *(a1 + 120);
    LOBYTE(v56) = *(a1 + 112);
    *(&v56 + 1) = v34;
    sub_21BE2841C();
    v35 = sub_21BB3B038(&qword_27CDBCE90, &qword_27CDBCE88, &qword_21BE4CC30, MEMORY[0x277CDF028]);
    v36 = v47;
    sub_21BE280DC();

    (*(v3 + 8))(v5, v36);
    sub_21BE2720C();
    *&v60 = v36;
    *(&v60 + 1) = v35;
    v47 = swift_getOpaqueTypeConformance2();
    v37 = sub_21BDBC510(&qword_27CDBC430, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    v38 = v51;
    v39 = v45;
    v40 = v48;
    sub_21BE27ECC();
    (*(v49 + 8))(v13, v40);
    (*(v39 + 8))(v7, v38);
    v41 = v46;
    v42 = v54;
    (*(v46 + 16))(v53, v10, v54);
    swift_storeEnumTagMultiPayload();
    v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCE70, &qword_21BE4CC20);
    v44 = sub_21BB3B038(&qword_27CDBCE78, &qword_27CDBCE70, &qword_21BE4CC20, protocol conformance descriptor for Link<A, B>);
    *&v60 = v43;
    *(&v60 + 1) = v40;
    *&v61 = v44;
    *(&v61 + 1) = v37;
    swift_getOpaqueTypeConformance2();
    *&v60 = v38;
    *(&v60 + 1) = v40;
    *&v61 = v47;
    *(&v61 + 1) = v37;
    swift_getOpaqueTypeConformance2();
    sub_21BE2784C();
    return (*(v41 + 8))(v10, v42);
  }
}

uint64_t sub_21BDB9D7C(uint64_t a1, uint64_t a2)
{
  v2[19] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v2[20] = swift_task_alloc();
  v3 = sub_21BE25B9C();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v2[24] = swift_task_alloc();
  v2[25] = sub_21BE28D7C();
  v2[26] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v2[27] = v5;
  v2[28] = v4;

  return MEMORY[0x2822009F8](sub_21BDB9EE4, v5, v4);
}

uint64_t sub_21BDB9EE4(uint64_t a1)
{
  v1[29] = *(v1[19] + 136);
  v1[30] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v1[31] = v3;
  v1[32] = v2;

  return MEMORY[0x2822009F8](sub_21BDB9F7C, v3, v2);
}

void sub_21BDB9F7C()
{
  v1 = *(v0[29] + 40);
  v0[33] = v1;
  if (v1)
  {
    v2 = v0[24];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v6 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

    v4 = swift_task_alloc();
    v0[34] = v4;
    *v4 = v0;
    v4[1] = sub_21BDBA090;
    v5 = v0[24];

    v6(v0 + 18, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BDBA090()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 192);
  if (v0)
  {

    sub_21BB3A4CC(v4, &qword_27CDB5790, &qword_21BE32800);
    v5 = *(v3 + 248);
    v6 = *(v3 + 256);
    v7 = sub_21BDBA524;
  }

  else
  {
    sub_21BB3A4CC(v4, &qword_27CDB5790, &qword_21BE32800);

    v5 = *(v3 + 248);
    v6 = *(v3 + 256);
    v7 = sub_21BDBA220;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21BDBA220()
{

  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  return MEMORY[0x2822009F8](sub_21BDBA28C, v1, v2);
}

uint64_t sub_21BDBA28C()
{
  if (*(v0[19] + 48) != 1)
  {
    goto LABEL_6;
  }

  v1 = sub_21BDB880C();
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = v1;
  v3 = [v1 actionURLString];

  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v0[21];
  v5 = v0[22];
  v6 = v0[20];
  sub_21BE28A0C();

  sub_21BE25B7C();

  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v7 = v0[20];

    sub_21BB3A4CC(v7, &unk_27CDB57F0, &qword_21BE328A0);
LABEL_7:

    v8 = v0[1];

    return v8();
  }

  (*(v0[22] + 32))(v0[23], v0[20], v0[21]);
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[35] = Strong;
  if (!Strong)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);
LABEL_6:

    goto LABEL_7;
  }

  v11 = Strong;
  v12 = sub_21BE25B2C();
  v0[36] = v12;
  v0[2] = v0;
  v0[3] = sub_21BDBA588;
  v13 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5948, &qword_21BE4DE90);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BD44BD8;
  v0[13] = &block_descriptor_54;
  v0[14] = v13;
  [v11 didSelectSubscriptionWithURL:v12 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BDBA524()
{

  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  return MEMORY[0x2822009F8](sub_21BDBDF10, v1, v2);
}

uint64_t sub_21BDBA588()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);

  return MEMORY[0x2822009F8](sub_21BDBA690, v2, v1);
}

uint64_t sub_21BDBA690()
{
  v1 = v0[36];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];

  (*(v3 + 8))(v2, v4);
  swift_unknownObjectRelease();

  v5 = v0[1];

  return v5();
}

double sub_21BDBA750@<D0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21BE2858C();
  v5 = *(a2 + 32);
  type metadata accessor for LocationViewModel(0);
  sub_21BDBC510(&qword_27CDBDC20, type metadata accessor for LocationViewModel, protocol conformance descriptor for LocationViewModel);
  v6 = v5;
  v7 = sub_21BE270CC();
  v9 = v8;
  sub_21BE286AC();
  sub_21BE2725C();
  KeyPath = swift_getKeyPath();
  *(a3 + 88) = v15;
  *(a3 + 104) = v16;
  *(a3 + 120) = v17;
  *(a3 + 136) = v18;
  result = *&v12;
  *(a3 + 40) = v12;
  *(a3 + 56) = v13;
  *a3 = v12;
  *(a3 + 16) = v13;
  *(a3 + 24) = v7;
  *(a3 + 32) = v9;
  *(a3 + 72) = v14;
  *(a3 + 152) = 1;
  *(a3 + 160) = KeyPath;
  *(a3 + 168) = 0;
  return result;
}

uint64_t sub_21BDBA918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2841C();
  v4 = *(a1 + 32);
  type metadata accessor for LocationViewModel(0);
  sub_21BDBC510(&qword_27CDBDC20, type metadata accessor for LocationViewModel, protocol conformance descriptor for LocationViewModel);
  v5 = v4;
  result = sub_21BE270CC();
  *a2 = v8;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = result;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_21BDBA9F8@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E18, &qword_21BE33870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v28 - v2;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass_];
  v7 = sub_21BE2599C();
  v9 = v8;

  v33 = v7;
  v34 = v9;
  sub_21BB41FA4();
  v10 = sub_21BE27DBC();
  v30 = v11;
  v31 = v10;
  v28[3] = v12;
  v29 = v13;
  v14 = [v5 bundleForClass_];
  v15 = sub_21BE2599C();
  v17 = v16;

  v33 = v15;
  v34 = v17;
  sub_21BE27DBC();
  v18 = [v5 bundleForClass_];
  v19 = sub_21BE2599C();
  v21 = v20;

  v33 = v19;
  v34 = v21;
  v22 = sub_21BE27DBC();
  v24 = v23;
  LOBYTE(v9) = v25;
  sub_21BE2824C();
  sub_21BBC7C7C(v22, v24, v9 & 1);

  v26 = sub_21BE2825C();
  (*(*(v26 - 8) + 56))(v3, 0, 1, v26);
  return sub_21BE2821C();
}

uint64_t sub_21BDBACFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v3[4] = swift_task_alloc();
  v3[5] = sub_21BE28D7C();
  v3[6] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x2822009F8](sub_21BDBADD0, v5, v4);
}

uint64_t sub_21BDBADD0(uint64_t a1)
{
  v1[9] = *(v1[3] + 136);
  v1[10] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v1[11] = v3;
  v1[12] = v2;

  return MEMORY[0x2822009F8](sub_21BDBAE68, v3, v2);
}

void sub_21BDBAE68()
{
  v1 = *(v0[9] + 40);
  v0[13] = v1;
  if (v1)
  {
    v2 = v0[4];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v6 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

    v4 = swift_task_alloc();
    v0[14] = v4;
    *v4 = v0;
    v4[1] = sub_21BDBAF7C;
    v5 = v0[4];

    v6(v0 + 2, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BDBAF7C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 32);
  if (v0)
  {

    sub_21BB3A4CC(v4, &qword_27CDB5790, &qword_21BE32800);
    v5 = *(v3 + 88);
    v6 = *(v3 + 96);
    v7 = sub_21BC76FE4;
  }

  else
  {
    sub_21BB3A4CC(v4, &qword_27CDB5790, &qword_21BE32800);

    v5 = *(v3 + 88);
    v6 = *(v3 + 96);
    v7 = sub_21BDBB10C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21BDBB10C()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return MEMORY[0x2822009F8](sub_21BC77590, v1, v2);
}

__n128 sub_21BDBB178@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_21BDFD940(*(a1 + 32), *(a1 + 16), 0, v6);
  v3 = v6[5];
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v3;
  *(a2 + 96) = v7;
  v4 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v4;
  result = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_21BDBB200@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DF0, &unk_21BE33810);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCE28, &qword_21BE4CB38);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v35 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v37 = &v33[-v11];
  v36 = sub_21BE2771C();
  v12 = 1;
  LOBYTE(v43) = 1;
  sub_21BDBB818(&v40);
  v56 = v41[9];
  v57 = v41[10];
  v58 = v41[11];
  v52 = v41[5];
  v53 = v41[6];
  v54 = v41[7];
  v55 = v41[8];
  v48 = v41[1];
  v49 = v41[2];
  v50 = v41[3];
  v51 = v41[4];
  v46 = v40;
  v47 = v41[0];
  v60[10] = v41[9];
  v60[11] = v41[10];
  v60[12] = v41[11];
  v60[6] = v41[5];
  v60[7] = v41[6];
  v60[8] = v41[7];
  v60[9] = v41[8];
  v60[2] = v41[1];
  v60[3] = v41[2];
  v60[4] = v41[3];
  v60[5] = v41[4];
  v59 = *&v41[12];
  v61 = *&v41[12];
  v60[0] = v40;
  v60[1] = v41[0];
  sub_21BBA3854(&v46, &v38, &qword_27CDBCE30, &unk_21BE4CB40);
  sub_21BB3A4CC(v60, &qword_27CDBCE30, &unk_21BE4CB40);
  *(&v42[10] + 7) = v56;
  *(&v42[11] + 7) = v57;
  *(&v42[12] + 7) = v58;
  *(&v42[6] + 7) = v52;
  *(&v42[7] + 7) = v53;
  *(&v42[8] + 7) = v54;
  *(&v42[9] + 7) = v55;
  *(&v42[2] + 7) = v48;
  *(&v42[3] + 7) = v49;
  *(&v42[4] + 7) = v50;
  *(&v42[5] + 7) = v51;
  *(v42 + 7) = v46;
  *(&v42[13] + 7) = v59;
  *(&v42[1] + 7) = v47;
  v34 = v43;
  v40 = *a1;
  LOBYTE(v41[0]) = *(a1 + 16);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  MEMORY[0x21CF036E0](&v38, v13);
  if (v38 == 1)
  {
    sub_21BE26EEC();
    *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DF8, &unk_21BE38C60) + 36)] = 257;
    v14 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E00, &unk_21BE33820) + 36)];
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55B0, &qword_21BE3FF90) + 28);
    v16 = *MEMORY[0x277CDF438];
    v17 = sub_21BE26E7C();
    (*(*(v17 - 8) + 104))(v14 + v15, v16, v17);
    *v14 = swift_getKeyPath();
    sub_21BE286BC();
    sub_21BE26F2C();
    v18 = &v7[*(v4 + 36)];
    v19 = v44;
    *v18 = v43;
    v18[1] = v19;
    v18[2] = v45;
    sub_21BDBC754(v7, v37);
    v12 = 0;
  }

  v20 = v37;
  (*(v5 + 56))(v37, v12, 1, v4);
  v21 = v35;
  sub_21BBA3854(v20, v35, &qword_27CDBCE28, &qword_21BE4CB38);
  *(&v39[10] + 1) = v42[10];
  *(&v39[11] + 1) = v42[11];
  *(&v39[12] + 1) = v42[12];
  v39[13] = *(&v42[12] + 15);
  *(&v39[6] + 1) = v42[6];
  *(&v39[7] + 1) = v42[7];
  *(&v39[8] + 1) = v42[8];
  *(&v39[9] + 1) = v42[9];
  *(&v39[2] + 1) = v42[2];
  *(&v39[3] + 1) = v42[3];
  *(&v39[4] + 1) = v42[4];
  *(&v39[5] + 1) = v42[5];
  *(v39 + 1) = v42[0];
  *(&v39[1] + 1) = v42[1];
  v22 = v39[9];
  *(a2 + 216) = v39[10];
  v23 = v39[12];
  *(a2 + 232) = v39[11];
  *(a2 + 248) = v23;
  *(a2 + 264) = v39[13];
  v24 = v39[5];
  *(a2 + 152) = v39[6];
  v25 = v39[8];
  *(a2 + 168) = v39[7];
  *(a2 + 184) = v25;
  *(a2 + 200) = v22;
  v26 = v39[1];
  *(a2 + 88) = v39[2];
  v27 = v39[4];
  *(a2 + 104) = v39[3];
  v28 = v36;
  v38 = v36;
  v29 = v34;
  LOBYTE(v39[0]) = v34;
  *(a2 + 120) = v27;
  *(a2 + 136) = v24;
  v30 = v39[0];
  *(a2 + 40) = v38;
  *(a2 + 56) = v30;
  *a2 = 269;
  *(a2 + 8) = 0;
  *(a2 + 16) = &unk_282D87410;
  *(a2 + 24) = &unk_282D87440;
  *(a2 + 32) = 0;
  *(a2 + 72) = v26;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCE38, &qword_21BE4CB50);
  sub_21BBA3854(v21, a2 + *(v31 + 64), &qword_27CDBCE28, &qword_21BE4CB38);

  sub_21BBA3854(&v38, &v40, &qword_27CDBCE40, &unk_21BE4CB58);
  sub_21BB3A4CC(v20, &qword_27CDBCE28, &qword_21BE4CB38);
  sub_21BB3A4CC(v21, &qword_27CDBCE28, &qword_21BE4CB38);
  *(&v41[10] + 1) = v42[10];
  *(&v41[11] + 1) = v42[11];
  *(&v41[12] + 1) = v42[12];
  v41[13] = *(&v42[12] + 15);
  *(&v41[6] + 1) = v42[6];
  *(&v41[7] + 1) = v42[7];
  *(&v41[8] + 1) = v42[8];
  *(&v41[9] + 1) = v42[9];
  *(&v41[2] + 1) = v42[2];
  *(&v41[3] + 1) = v42[3];
  *(&v41[4] + 1) = v42[4];
  *(&v41[5] + 1) = v42[5];
  *(v41 + 1) = v42[0];
  v40 = v28;
  LOBYTE(v41[0]) = v29;
  *(&v41[1] + 1) = v42[1];
  sub_21BB3A4CC(&v40, &qword_27CDBCE40, &unk_21BE4CB58);
}

uint64_t sub_21BDBB818@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  v4 = sub_21BE27DBC();
  v40 = v5;
  v41 = v4;
  v39 = v6;
  v42 = v7;
  sub_21BCCCA8C();
  v8 = sub_21BE27DBC();
  v10 = v9;
  v12 = v11;
  sub_21BE27BEC();
  v13 = sub_21BE27D9C();
  v15 = v14;
  v17 = v16;

  sub_21BBC7C7C(v8, v10, v12 & 1);

  sub_21BE2833C();
  v18 = sub_21BE27D4C();
  v20 = v19;
  LOBYTE(v8) = v21;
  v23 = v22;

  sub_21BBC7C7C(v13, v15, v17 & 1);

  KeyPath = swift_getKeyPath();
  v25 = swift_getKeyPath();
  v69 = v8 & 1;
  v67 = 0;
  sub_21BE286AC();
  sub_21BE2725C();
  *&v70[55] = v71[3];
  *&v70[71] = v71[4];
  *&v70[87] = v71[5];
  *&v70[103] = v72;
  *&v70[7] = v71[0];
  *&v70[23] = v71[1];
  *&v70[39] = v71[2];
  *&v44 = v18;
  *(&v44 + 1) = v20;
  LOBYTE(v45) = v8 & 1;
  DWORD1(v45) = *&v68[3];
  *(&v45 + 1) = *v68;
  *(&v45 + 1) = v23;
  *&v46 = KeyPath;
  *(&v46 + 1) = 1;
  LOBYTE(v47) = 0;
  DWORD1(v47) = *&v66[3];
  *(&v47 + 1) = *v66;
  *(&v47 + 1) = v25;
  v48[0] = 1;
  *&v48[49] = *&v70[48];
  v27 = *&v70[32];
  v26 = *&v70[48];
  *&v48[33] = *&v70[32];
  *&v48[17] = *&v70[16];
  v28 = *v70;
  v29 = *&v70[16];
  *&v48[1] = *v70;
  *&v48[112] = *(&v72 + 1);
  *&v48[97] = *&v70[96];
  v31 = *&v70[80];
  v30 = *&v70[96];
  *&v48[81] = *&v70[80];
  v32 = *&v70[64];
  *&v48[65] = *&v70[64];
  v33 = v47;
  *(a1 + 64) = v46;
  *(a1 + 80) = v33;
  v34 = v45;
  *(a1 + 32) = v44;
  *(a1 + 48) = v34;
  v35 = *&v48[48];
  *(a1 + 128) = *&v48[32];
  *(a1 + 144) = v35;
  v36 = *&v48[16];
  *(a1 + 96) = *v48;
  *(a1 + 112) = v36;
  v37 = *&v48[96];
  *(a1 + 176) = *&v48[80];
  *(a1 + 192) = v37;
  *(a1 + 160) = *&v48[64];
  v62 = v26;
  v61 = v27;
  v60 = v29;
  v43[184] = v39 & 1;
  *a1 = v41;
  *(a1 + 8) = v40;
  *(a1 + 16) = v39 & 1;
  *(a1 + 24) = v42;
  *(a1 + 208) = *&v48[112];
  v49[0] = v18;
  v49[1] = v20;
  v50 = v8 & 1;
  *v51 = *v68;
  *&v51[3] = *&v68[3];
  v52 = v23;
  v53 = KeyPath;
  v54 = 1;
  v55 = 0;
  *v56 = *v66;
  *&v56[3] = *&v66[3];
  v57 = v25;
  v58 = 1;
  v59 = v28;
  *&v65[15] = *&v70[111];
  *v65 = v30;
  v64 = v31;
  v63 = v32;
  sub_21BBA4A38(v41, v40, v39 & 1);

  sub_21BBA3854(&v44, v43, &qword_27CDB90A8, &qword_21BE3E898);
  sub_21BB3A4CC(v49, &qword_27CDB90A8, &qword_21BE3E898);
  sub_21BBC7C7C(v41, v40, v39 & 1);
}

uint64_t sub_21BDBBC3C@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v7[0] = *v2;
  v7[1] = v4;
  v8 = *(v2 + 32);
  *a2 = sub_21BE275DC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCE18, &qword_21BE4CB20);
  sub_21BDBB200(v7, a2 + *(v5 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCE20, &unk_21BE4CB28);
  *(a2 + *(result + 36)) = 0;
  return result;
}

void sub_21BDBBCC0(UIImage *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = UIImagePNGRepresentation(a1);
  if (v7)
  {
    v8 = v7;
    v9 = sub_21BE25BFC();
    v11 = v10;

    v12 = sub_21BE25BCC();
    sub_21BBBEF94(v9, v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_opt_self();
  swift_getKeyPath();
  sub_21BDBC510(&qword_27CDB69A8, type metadata accessor for FAFamilyImageLoader, protocol conformance descriptor for FAFamilyImageLoader);
  sub_21BE25F1C();

  v14 = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__monogramDiameter;
  swift_beginAccess();
  v15 = [v13 circularImageData:v12 withDiameter:*(v4 + v14) crop:{0.0, 0.0, 0.0, 0.0}];

  if (v15)
  {
    v16 = sub_21BE25BFC();
    v18 = v17;

    v19 = objc_allocWithZone(MEMORY[0x277D755B8]);

    sub_21BBBEE74(v16, v18);
    v20 = sub_21BE25BCC();
    v21 = [v19 initWithData_];

    sub_21BBBEF94(v16, v18);
    swift_beginAccess();
    sub_21BD404AC(v21, a2, a3);
    swift_endAccess();
    sub_21BBBEF94(v16, v18);
  }
}

uint64_t sub_21BDBBED8(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  sub_21BE28D7C();
  v3[8] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BDBBF74, v5, v4);
}

uint64_t sub_21BDBBF74()
{
  v1 = v0[7];

  v2 = OBJC_IVAR____TtC14FamilyCircleUI30FAFamilyImageLoaderForPreviews_images;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v5 = v0[5];
    v4 = v0[6];

    v6 = sub_21BBB3108(v5, v4);
    if (v7)
    {
      v8 = *(*(v3 + 56) + 8 * v6);
      v9 = v8;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = v0[1];

  return v10(v8);
}

id sub_21BDBC05C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FAFamilyImageLoaderForPreviews(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BDBC114(uint64_t a1, int a2)
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

uint64_t sub_21BDBC15C(uint64_t result, int a2, int a3)
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

uint64_t sub_21BDBC1B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_21BDBC1FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_21BDBC2B8(uint64_t a1)
{
  sub_21BB3A2A4(319, &qword_280BD6980, 0x277D08248);
  if (v1 <= 0x3F)
  {
    sub_21BDBC3D4(319);
    if (v2 <= 0x3F)
    {
      sub_21BBDAE70(319);
      if (v3 <= 0x3F)
      {
        sub_21BB3A2A4(319, &qword_27CDB6918, 0x277CED1D0);
        if (v4 <= 0x3F)
        {
          sub_21BD39D4C();
          if (v5 <= 0x3F)
          {
            sub_21BBDAF50(319);
            if (v6 <= 0x3F)
            {
              sub_21BDBC47C(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_21BDBC3D4(uint64_t a1)
{
  if (!qword_27CDBCE08)
  {
    sub_21BB3A2A4(255, &qword_27CDB6928, off_2782F0B80);
    sub_21BB3CC48(&qword_27CDB6930, &qword_27CDB6928, off_2782F0B80, protocol conformance descriptor for FAChecklistStore);
    v1 = sub_21BE270DC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDBCE08);
    }
  }
}

void sub_21BDBC47C(uint64_t a1)
{
  if (!qword_27CDBCE10)
  {
    type metadata accessor for ChecklistStoreCache();
    sub_21BDBC510(&qword_27CDB8CB8, type metadata accessor for ChecklistStoreCache, protocol conformance descriptor for SimpleFamilyServerCache);
    v1 = sub_21BE26EBC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDBCE10);
    }
  }
}

uint64_t sub_21BDBC510(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BDBC5D0(uint64_t a1)
{
  v2 = sub_21BE26E7C();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return MEMORY[0x21CF024B0](v4);
}

uint64_t sub_21BDBC698@<X0>(uint64_t a1@<X8>)
{
  result = sub_21BE274FC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_21BDBC6FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BE2737C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21BDBC754(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DF0, &unk_21BE33810);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21BDBC7C4()
{
  result = qword_27CDBCE58;
  if (!qword_27CDBCE58)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCE50, &qword_21BE4CC10);
    v4[0] = sub_21BDBC848();
    result = swift_getWitnessTable(MEMORY[0x277CE0FB0], v3, v4);
    atomic_store(result, &qword_27CDBCE58);
  }

  return result;
}

unint64_t sub_21BDBC848()
{
  result = qword_27CDBCE60;
  if (!qword_27CDBCE60)
  {
    v8[16] = v0;
    v8[17] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCE68, &qword_21BE4CC18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCE70, &qword_21BE4CC20);
    v4 = sub_21BE2721C();
    sub_21BB3B038(&qword_27CDBCE78, &qword_27CDBCE70, &qword_21BE4CC20, protocol conformance descriptor for Link<A, B>);
    v5 = sub_21BDBC510(&qword_27CDBC430, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCE80, &qword_21BE4CC28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCE88, &qword_21BE4CC30);
    sub_21BB3B038(&qword_27CDBCE90, &qword_27CDBCE88, &qword_21BE4CC30, MEMORY[0x277CDF028]);
    v8[2] = v7;
    v8[3] = v4;
    v8[4] = swift_getOpaqueTypeConformance2();
    v8[5] = v5;
    v8[0] = OpaqueTypeConformance2;
    v8[1] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v8);
    atomic_store(result, &qword_27CDBCE60);
  }

  return result;
}

uint64_t sub_21BDBCAB4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBB7EB8;

  return sub_21BDBACFC(v2, v3, v0 + 32);
}

unint64_t sub_21BDBCB70()
{
  result = qword_27CDBCEB8;
  if (!qword_27CDBCEB8)
  {
    result = swift_getWitnessTable(byte_21BE4CAC0, &type metadata for LocationCellView, v0, v1);
    atomic_store(result, &qword_27CDBCEB8);
  }

  return result;
}

uint64_t sub_21BDBCBC4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBA6A64;

  return sub_21BDB9D7C(a1, v1 + 16);
}

uint64_t objectdestroy_63Tm()
{
  MEMORY[0x21CF05D90](v0 + 9);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_36()
{
  swift_unknownObjectRelease();

  MEMORY[0x21CF05D90](v0 + 11);

  return swift_deallocObject();
}

uint64_t sub_21BDBCD70(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBA6A64;

  return sub_21BDB8AE0(a1, v4, v5, v1 + 32);
}

uint64_t sub_21BDBCE20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyChecklistCell(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BDBCE84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyChecklistCell(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21BDBCF00()
{
  result = qword_27CDBCED0;
  if (!qword_27CDBCED0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCEC8, &qword_21BE4CD30);
    v4[0] = sub_21BDBCF8C();
    v4[1] = sub_21BBDD1FC();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBCED0);
  }

  return result;
}

unint64_t sub_21BDBCF8C()
{
  result = qword_27CDBCED8;
  if (!qword_27CDBCED8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCEE0, &qword_21BE4CD38);
    v4[0] = sub_21BDBD044();
    v4[1] = sub_21BB3B038(&qword_27CDB6188, &qword_27CDB6190, &qword_21BE33F40, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBCED8);
  }

  return result;
}

unint64_t sub_21BDBD044()
{
  result = qword_27CDBCEE8;
  if (!qword_27CDBCEE8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCEF0, &qword_21BE4CD40);
    v4[0] = sub_21BDBD0D0();
    v4[1] = MEMORY[0x277CDFC60];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBCEE8);
  }

  return result;
}

unint64_t sub_21BDBD0D0()
{
  result = qword_27CDBCEF8;
  if (!qword_27CDBCEF8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCF00, &qword_21BE4CD48);
    v4[0] = sub_21BB3B038(&qword_27CDBCF08, &qword_27CDBCF10, &unk_21BE4CD50, MEMORY[0x277CE1138]);
    v4[1] = sub_21BBDD1A8();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBCEF8);
  }

  return result;
}

uint64_t objectdestroy_93Tm()
{
  v1 = type metadata accessor for FamilyChecklistCell(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));

  v3 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21BE27B0C();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_21BC0C59C(*(v2 + *(v1 + 40)), *(v2 + *(v1 + 40) + 8));

  return swift_deallocObject();
}

uint64_t sub_21BDBD30C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for FamilyChecklistCell(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t block_copy_helper_100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21BDBD3BC()
{
  result = qword_27CDBCF50;
  if (!qword_27CDBCF50)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCE20, &unk_21BE4CB28);
    v4[0] = sub_21BB3B038(&qword_27CDBCF58, &qword_27CDBCF60, &qword_21BE4CDF8, MEMORY[0x277CE1138]);
    v4[1] = sub_21BB3B038(&qword_27CDB6188, &qword_27CDB6190, &qword_21BE33F40, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBCF50);
  }

  return result;
}

unint64_t sub_21BDBD4A0()
{
  result = qword_27CDBCF68;
  if (!qword_27CDBCF68)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCE98, &qword_21BE4CC48);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB50C0, &qword_21BE31098);
    v4[3] = sub_21BDBD594();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_21BB3B038(&qword_27CDBCF78, &qword_27CDBCF80, &qword_21BE4CE00, byte_21BE36938);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBCF68);
  }

  return result;
}

unint64_t sub_21BDBD594()
{
  result = qword_27CDBCF70;
  if (!qword_27CDBCF70)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB50C0, &qword_21BE31098);
    v4[0] = sub_21BDBC7C4();
    v4[1] = sub_21BDBC510(&qword_27CDB6790, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBCF70);
  }

  return result;
}

unint64_t sub_21BDBD6C0()
{
  result = qword_27CDBCFA0;
  if (!qword_27CDBCFA0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCF90, &qword_21BE4CE68);
    v4[0] = sub_21BDBD74C();
    v4[1] = sub_21BDBD7A0();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBCFA0);
  }

  return result;
}

unint64_t sub_21BDBD74C()
{
  result = qword_27CDBCFA8;
  if (!qword_27CDBCFA8)
  {
    result = swift_getWitnessTable(aQ_12, &type metadata for FAFamilyMemberImageView, v0, v1);
    atomic_store(result, &qword_27CDBCFA8);
  }

  return result;
}

unint64_t sub_21BDBD7A0()
{
  result = qword_27CDBCFB0;
  if (!qword_27CDBCFB0)
  {
    result = swift_getWitnessTable(byte_21BE49A68, &type metadata for FamilyRowImageSizer, v0, v1);
    atomic_store(result, &qword_27CDBCFB0);
  }

  return result;
}

unint64_t sub_21BDBD7F4()
{
  result = qword_27CDBCFB8;
  if (!qword_27CDBCFB8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCF98, &qword_21BE4CE70);
    v4[0] = sub_21BDBD880();
    v4[1] = sub_21BDBD7A0();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBCFB8);
  }

  return result;
}

unint64_t sub_21BDBD880()
{
  result = qword_27CDBCFC0;
  if (!qword_27CDBCFC0)
  {
    result = swift_getWitnessTable(byte_21BE418A8, &type metadata for FAProfileImageView, v0, v1);
    atomic_store(result, &qword_27CDBCFC0);
  }

  return result;
}

uint64_t sub_21BDBD8D4(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_21BDBD958()
{
  result = qword_27CDBCFF8;
  if (!qword_27CDBCFF8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCFF0, &qword_21BE4D038);
    v4[0] = sub_21BDBD9E4();
    v4[1] = sub_21BBDD1A8();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBCFF8);
  }

  return result;
}

unint64_t sub_21BDBD9E4()
{
  result = qword_27CDBD000;
  if (!qword_27CDBD000)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD008, &qword_21BE4D040);
    v4[0] = sub_21BDBDA9C();
    v4[1] = sub_21BB3B038(&qword_27CDBB1D0, &qword_27CDBB1D8, &qword_21BE46178, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBD000);
  }

  return result;
}

unint64_t sub_21BDBDA9C()
{
  result = qword_27CDBD010;
  if (!qword_27CDBD010)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD018, &qword_21BE4D048);
    v4[0] = sub_21BDBDB28();
    v4[1] = sub_21BD09C8C();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBD010);
  }

  return result;
}

unint64_t sub_21BDBDB28()
{
  result = qword_27CDBD020;
  if (!qword_27CDBD020)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD028, &unk_21BE4D050);
    v4[0] = sub_21BC75D1C();
    v4[1] = sub_21BB3B038(&qword_27CDB6188, &qword_27CDB6190, &qword_21BE33F40, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBD020);
  }

  return result;
}

unint64_t sub_21BDBDBE0()
{
  result = qword_27CDBD038;
  if (!qword_27CDBD038)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD030, &qword_21BE4D060);
    v4[0] = sub_21BDBDC6C();
    v4[1] = sub_21BBDD1A8();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBD038);
  }

  return result;
}

unint64_t sub_21BDBDC6C()
{
  result = qword_27CDBD040;
  if (!qword_27CDBD040)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD048, &qword_21BE4D068);
    v4[0] = sub_21BDBDD24();
    v4[1] = sub_21BB3B038(&qword_27CDBB1D0, &qword_27CDBB1D8, &qword_21BE46178, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBD040);
  }

  return result;
}

unint64_t sub_21BDBDD24()
{
  result = qword_27CDBD050;
  if (!qword_27CDBD050)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD058, &qword_21BE4D070);
    v4[0] = sub_21BDBDB28();
    v4[1] = sub_21BD09BAC();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBD050);
  }

  return result;
}

uint64_t sub_21BDBDDB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21BDBDDF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t get_witness_table_qd0__7SwiftUI4ViewHD3_AaBPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyAA15ModifiedContentVyAIyAIyAIy012FamilyCircleB00I10MemberCellVAA01_H13ShapeModifierVyAA9RectangleVGGAJ013CreateContactN0VGAA013_TraitWritingN0VyAA017ListRowBackgroundR3KeyVGGAJ24NavigationLinkAppearanceVG_AJ19FAFamilyImageLoaderCQo_HOTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  type metadata accessor for FAFamilyImageLoader(255);
  a4();
  sub_21BDBC510(&qword_27CDB69A8, type metadata accessor for FAFamilyImageLoader, protocol conformance descriptor for FAFamilyImageLoader);
  return swift_getOpaqueTypeConformance2();
}

FamilyCircleUI::FamilyRowStatus __swiftcall FAFamilyCircle.rowStatusForFamily()()
{
  v2 = v0;
  v3 = sub_21BE2626C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21BE25FCC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, *MEMORY[0x277D07F18], v7);
  v11 = MEMORY[0x21CF01150](v10);
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    sub_21BE2909C();
    if (sub_21BE261FC())
    {
      result = (*(v4 + 8))(v6, v3);
      v13 = 0;
      goto LABEL_14;
    }

    v16 = [v1 me];
    if (v16)
    {
    }

    else if (sub_21BE2622C())
    {
      v17 = sub_21BE2624C();
      result = (*(v4 + 8))(v6, v3);
      v18 = v17 == 1;
      v13 = 3;
      goto LABEL_12;
    }

    v19 = sub_21BE2621C();
    result = (*(v4 + 8))(v6, v3);
    v18 = (v19 & 1) == 0;
    v13 = 1;
LABEL_12:
    if (!v18)
    {
      ++v13;
    }

    goto LABEL_14;
  }

  v14 = sub_21BE2905C();
  if (v14 >> 62)
  {
    v15 = sub_21BE2951C();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = v15 != 0;
LABEL_14:
  *v2 = v13;
  return result;
}

void sub_21BDBE1E0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BDC158C(&qword_27CDB6858, type metadata accessor for SharedCalendarItemModel, byte_21BE35698);
  sub_21BE25F1C();

  *a2 = *(v3 + 16);
}

void sub_21BDBE2B0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BDC158C(&qword_27CDB6858, type metadata accessor for SharedCalendarItemModel, byte_21BE35698);
  sub_21BE25F1C();

  *a2 = *(v3 + 17);
}

uint64_t sub_21BDBE380@<X0>(void *a1@<X8>)
{
  v65 = a1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8170, &unk_21BE3AE70);
  MEMORY[0x28223BE20](v63);
  v64 = &v54 - v1;
  v59 = sub_21BE2723C();
  MEMORY[0x28223BE20](v59);
  v61 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8100, &unk_21BE4D1C0);
  MEMORY[0x28223BE20](v62);
  v4 = &v54 - v3;
  v5 = sub_21BE2838C();
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x28223BE20](v5);
  v56 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21BE25E6C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21BE25D1C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE25D0C();
  sub_21BE25E4C();
  v15 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v16 = sub_21BE25CAC();
  v17 = sub_21BE25E1C();
  v18 = [v15 initWithDate:v16 calendar:v17 format:0];

  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
  v19 = [objc_opt_self() imageDescriptorNamed_];
  v20 = [v18 prepareImageForDescriptor_];

  if (v20)
  {
    v60 = v18;
    v21 = [v20 CGImage];
    if (v21)
    {
      v22 = v21;
      [v20 iconSize];
      [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

      sub_21BE2836C();
      v24 = v56;
      v23 = v57;
      v25 = v58;
      (*(v57 + 104))(v56, *MEMORY[0x277CE0FE0], v58);
      v26 = sub_21BE283CC();

      (*(v23 + 8))(v24, v25);
      sub_21BE2869C();
      sub_21BE26F2C();
      v27 = v66;
      LODWORD(v58) = v67;
      v28 = v68;
      LODWORD(v57) = v69;
      v56 = v70;
      v55 = v71;
      v29 = *(v59 + 20);
      v30 = *MEMORY[0x277CE0118];
      v31 = sub_21BE276AC();
      v32 = v61;
      (*(*(v31 - 8) + 104))(&v61[v29], v30, v31);
      __asm { FMOV            V0.2D, #9.0 }

      *v32 = _Q0;
      sub_21BE282AC();
      v38 = sub_21BE2831C();

      *&v72 = v38;
      sub_21BDC258C();
      v39 = sub_21BE2835C();
      sub_21BE26ECC();
      v40 = &v4[*(v62 + 36)];
      sub_21BC691F8(v32, v40);
      v41 = v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8178, &unk_21BE4D270) + 36);
      v42 = v73;
      *v41 = v72;
      *(v41 + 16) = v42;
      *(v41 + 32) = v74;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8180, &qword_21BE3AE80);
      *(v40 + *(v43 + 52)) = v39;
      *(v40 + *(v43 + 56)) = 256;
      v44 = sub_21BE2869C();
      v46 = v45;
      sub_21BC6925C(v32);
      v47 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8188, &unk_21BE4D280) + 36));
      *v47 = v44;
      v47[1] = v46;
      v48 = sub_21BE2869C();
      v50 = v49;
      v51 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8120, &qword_21BE4D1D0) + 36));
      *v51 = v48;
      v51[1] = v50;
      *v4 = v26;
      *(v4 + 1) = v27;
      v4[16] = v58;
      *(v4 + 3) = v28;
      v4[32] = v57;
      v52 = v55;
      *(v4 + 5) = v56;
      *(v4 + 6) = v52;
      sub_21BBA3854(v4, v64, &qword_27CDB8100, &unk_21BE4D1C0);
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8110, &unk_21BE3AE10);
      sub_21BC65DF0();
      sub_21BC65EA8();
      sub_21BE2784C();

      return sub_21BB3A4CC(v4, &qword_27CDB8100, &unk_21BE4D1C0);
    }

    __break(1u);
  }

  result = sub_21BE2978C();
  __break(1u);
  return result;
}

uint64_t sub_21BDBEAEC()
{
  v54 = sub_21BE26A4C();
  v1 = *(v54 - 8);
  v2 = MEMORY[0x28223BE20](v54);
  v4 = (&v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v5 = *(v0 + 8);
  v66[0] = *v0;
  v6 = v66[0] >> 62;
  v58 = v66[0];
  v59 = &v45 - v7;
  if (v66[0] >> 62)
  {
    goto LABEL_42;
  }

  if (*((v66[0] & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    return 0;
  }

  while (1)
  {
    v65 = v5;
    v8 = v5 >> 62;
    if (v5 >> 62)
    {
      v44 = v5;
      result = sub_21BE2951C();
      v5 = v44;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v61 = MEMORY[0x277D84FA0];
    v50 = v5;
    v10 = v6 ? sub_21BE2951C() : *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = *(v0 + 24);
    v64 = *(v0 + 32);
    v12 = *(v0 + 40);
    v62 = *(v0 + 48);
    v63 = v11;
    sub_21BBA3854(v66, v60, &qword_27CDBD078, &unk_21BE4D1A8);
    sub_21BBA3854(&v65, v60, &qword_27CDB5CC8, &qword_21BE36190);
    sub_21BBA3854(&v63, v60, &qword_27CDB5C50, &qword_21BE33490);
    v51 = v12;

    sub_21BBA3854(&v62, v60, &qword_27CDBD080, &qword_21BE4D1B8);
    if (!v10)
    {
      break;
    }

    v6 = v10;
    v46 = v8;
    v47 = v4;
    v14 = 0;
    v57 = v58 & 0xC000000000000001;
    v55 = 0;
    v56 = v58 & 0xFFFFFFFFFFFFFF8;
    v48 = v1;
    v52 = (v1 + 8);
    *&v13 = 136315138;
    v49 = v13;
    v53 = v10;
    v4 = &qword_21BE4D1B8;
    while (1)
    {
      if (v57)
      {
        v15 = MEMORY[0x21CF047C0](v14, v58);
      }

      else
      {
        if (v14 >= *(v56 + 16))
        {
          goto LABEL_41;
        }

        v15 = *(v58 + 8 * v14 + 32);
      }

      v16 = v15;
      v1 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v17 = [v15 sharees];
      if (v17 && (v18 = v17, v19 = sub_21BE28E4C(), v18, sub_21BDBF34C(v19), v0 = v20, , v0))
      {
        sub_21BBA3854(v66, v60, &qword_27CDBD078, &unk_21BE4D1A8);
        sub_21BBA3854(&v65, v60, &qword_27CDB5CC8, &qword_21BE36190);
        sub_21BBA3854(&v63, v60, &qword_27CDB5C50, &qword_21BE33490);

        sub_21BBA3854(&v62, v60, &qword_27CDBD080, &qword_21BE4D1B8);
        v21 = v55;
        sub_21BDC177C(v0, v50, &v61);
        v55 = v21;
        v6 = v53;
        sub_21BB3A4CC(v66, &qword_27CDBD078, &unk_21BE4D1A8);
        sub_21BB3A4CC(&v65, &qword_27CDB5CC8, &qword_21BE36190);
        sub_21BB3A4CC(&v63, &qword_27CDB5C50, &qword_21BE33490);

        sub_21BB3A4CC(&v62, &qword_27CDBD080, &qword_21BE4D1B8);
      }

      else
      {
        sub_21BE261BC();
        v0 = sub_21BE26A2C();
        v22 = sub_21BE28FDC();
        if (os_log_type_enabled(v0, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v60[0] = v24;
          *v23 = v49;
          *(v23 + 4) = sub_21BB3D81C(0x64616548627573, 0xE700000000000000, v60);
          _os_log_impl(&dword_21BB35000, v0, v22, "%s unable to get calendar sharees", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v24);
          v25 = v54;
          MEMORY[0x21CF05C50](v24, -1, -1);
          v26 = v59;
          v6 = v53;
          MEMORY[0x21CF05C50](v23, -1, -1);

          (*v52)(v26, v25);
        }

        else
        {

          (*v52)(v59, v54);
        }
      }

      ++v14;
      if (v1 == v6)
      {
        v27 = v61;
        v1 = v48;
        v4 = v47;
        v8 = v46;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    v42 = v5;
    v43 = sub_21BE2951C();
    v5 = v42;
    if (v43 < 1)
    {
      return 0;
    }
  }

  v27 = MEMORY[0x277D84FA0];
LABEL_25:
  sub_21BB3A4CC(v66, &qword_27CDBD078, &unk_21BE4D1A8);
  sub_21BB3A4CC(&v65, &qword_27CDB5CC8, &qword_21BE36190);
  sub_21BB3A4CC(&v63, &qword_27CDB5C50, &qword_21BE33490);

  sub_21BB3A4CC(&v62, &qword_27CDBD080, &qword_21BE4D1B8);
  if ((v27 & 0xC000000000000001) == 0)
  {
    if (*(v27 + 16))
    {
      goto LABEL_27;
    }

    goto LABEL_30;
  }

  if (!sub_21BE2951C())
  {
LABEL_30:
    sub_21BE261BC();
    v31 = sub_21BE26A2C();
    v32 = sub_21BE28FDC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v60[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_21BB3D81C(0x64616548627573, 0xE700000000000000, v60);
      _os_log_impl(&dword_21BB35000, v31, v32, "%s no calendar sharee is part of family", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x21CF05C50](v34, -1, -1);
      MEMORY[0x21CF05C50](v33, -1, -1);
    }

    (*(v1 + 8))(v4, v54);

    return 0;
  }

LABEL_27:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_21BE33260;
  v29 = v50;
  if ((v27 & 0xC000000000000001) != 0)
  {
    v30 = sub_21BE2951C();
  }

  else
  {
    v30 = *(v27 + 16);
  }

  v35 = MEMORY[0x277D83B88];
  v36 = MEMORY[0x277D83C10];
  *(v28 + 56) = MEMORY[0x277D83B88];
  *(v28 + 64) = v36;
  *(v28 + 32) = v30;
  if (v8)
  {
    v37 = sub_21BE2951C();
  }

  else
  {
    v37 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v28 + 96) = v35;
  *(v28 + 104) = v36;
  *(v28 + 72) = v37;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v39 = objc_opt_self();

  v40 = [v39 bundleForClass_];
  sub_21BE2599C();

  v41 = sub_21BE289DC();

  return v41;
}

void sub_21BDBF34C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD0C8, &qword_21BE4D290);
    v2 = sub_21BE295CC();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v3 = sub_21BB3A2A4(0, &qword_27CDBD0B8, 0x277CC5AC0);
  v30[5] = v2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  v8 = v5 + 63;
  if (v3 == MEMORY[0x277D837D0])
  {
    v25 = v8 >> 6;

    v26 = 0;
    if (!v7)
    {
      goto LABEL_28;
    }

    do
    {
      v27 = v26;
LABEL_31:
      sub_21BBB71DC(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v27 << 6)), v30);
      v28 = sub_21BE2954C();
      sub_21BBB7238(v30);
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (!v29)
      {

        return;
      }

      v7 &= v7 - 1;
      sub_21BDC163C(v29);
      v26 = v27;
    }

    while (v7);
LABEL_28:
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= v25)
      {
LABEL_34:

        return;
      }

      v7 = *(v4 + 8 * v27);
      ++v26;
      if (v7)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 56;

    v11 = 0;
    while (v7)
    {
LABEL_16:
      sub_21BBB71DC(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v11 << 6)), v30);
      v14 = sub_21BE2954C();
      sub_21BBB7238(v30);
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (!v15)
      {

        return;
      }

      v16 = v15;
      v17 = sub_21BE293FC();
      v18 = -1 << *(v2 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v10 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v10 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v10 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v2 + 48) + 8 * v12) = v16;
      ++*(v2 + 16);
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {
        goto LABEL_34;
      }

      v7 = *(v4 + 8 * v13);
      ++v11;
      if (v7)
      {
        v11 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
}

double sub_21BDBF670@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v126 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v111 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v109 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v110 = &v97 - v6;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB80C0, &qword_21BE3ADD8);
  v113 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v114 = (&v97 - v7);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD060, &qword_21BE4D180);
  v112 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v108 = &v97 - v8;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD068, &qword_21BE4D188);
  MEMORY[0x28223BE20](v121);
  v123 = &v97 - v9;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB80E0, &qword_21BE4D190);
  v10 = MEMORY[0x28223BE20](v120);
  v118 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v119 = (&v97 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD070, &unk_21BE4D198);
  MEMORY[0x28223BE20](v13 - 8);
  v122 = &v97 - v14;
  v15 = sub_21BE2754C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = *(v2 + 32);
  v19 = *(v2 + 24);
  v159 = v19;
  if (v160 == 1)
  {
    v140 = v19;
  }

  else
  {

    sub_21BE28FEC();
    v20 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BB3A4CC(&v159, &qword_27CDB5C50, &qword_21BE33490);
    (*(v16 + 8))(v18, v15);
  }

  v21 = swift_allocBox();
  v23 = v22;
  type metadata accessor for ChecklistStateVars(0);
  sub_21BDC158C(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
  sub_21BE2864C();
  v24 = *v2;
  v25 = *(v2 + 8);
  v117 = *(v2 + 16);
  v158 = v24;
  v116 = v24;
  if (v24 >> 62)
  {
    v26 = sub_21BE2951C();
  }

  else
  {
    v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v127 = v21;
  v157 = v25;
  v115 = v25;
  if (v26)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v28 = objc_opt_self();
    sub_21BBA3854(&v158, &v140, &qword_27CDBD078, &unk_21BE4D1A8);
    sub_21BBA3854(&v157, &v140, &qword_27CDB5CC8, &qword_21BE36190);
    v29 = [v28 bundleForClass_];
    v114 = sub_21BE2599C();
    v31 = v30;

    v32 = sub_21BDBEAEC();
    v34 = v33;
    v35 = [v28 bundleForClass_];
    v36 = sub_21BE2599C();
    v38 = v37;

    v39 = v119;
    sub_21BDBE380(v119);
    v128[0] = *(v2 + 48);
    v40 = swift_allocObject();
    v41 = *(v2 + 16);
    *(v40 + 16) = *v2;
    *(v40 + 32) = v41;
    *(v40 + 48) = *(v2 + 32);
    *(v40 + 64) = *(v2 + 48);
    v153 = &type metadata for SharedFamilyCalendarItem;
    v154 = sub_21BBDAB68();
    v150 = v116;
    v151 = v115;
    v152 = v117;
    v140 = v114;
    v141 = v31;
    v142 = v32;
    v143 = v34;
    v144 = v36;
    v145 = v38;
    sub_21BBA3854(v39, v118, &qword_27CDB80E0, &qword_21BE4D190);
    sub_21BBA3854(&v159, &v132, &qword_27CDB5C50, &qword_21BE33490);
    sub_21BBA3854(&v158, &v132, &qword_27CDBD078, &unk_21BE4D1A8);
    sub_21BBA3854(&v157, &v132, &qword_27CDB5CC8, &qword_21BE36190);

    sub_21BBA3854(v128, &v132, &qword_27CDBD080, &qword_21BE4D1B8);
    sub_21BC65D64();
    v42 = sub_21BE2852C();
    sub_21BB3A4CC(v39, &qword_27CDB80E0, &qword_21BE4D190);
    v155 = v42;
    v148 = v40;
    v149 = 0;
    v146 = 0;
    v147 = sub_21BDC2820;
    sub_21BBC7A18(&v140, v123);
    swift_storeEnumTagMultiPayload();
    sub_21BBC24D4();
    v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD088, &unk_21BE4D1D8);
    v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8130, &qword_21BE3ED60);
    v45 = sub_21BBC2528();
    v46 = sub_21BB41FA4();
    v47 = sub_21BB3B038(&qword_27CDB8138, &qword_27CDB8130, &qword_21BE3ED60, MEMORY[0x277CE14C0]);
    v132 = &type metadata for ChecklistNotSetupButtonCell;
    v133 = MEMORY[0x277D837D0];
    v134 = v44;
    v135 = MEMORY[0x277CE0BD8];
    v136 = v45;
    v137 = v46;
    v138 = v47;
    v139 = MEMORY[0x277CE0BC8];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v49 = sub_21BDC1480();
    v132 = v124;
    v133 = v43;
    v134 = OpaqueTypeConformance2;
    v135 = v49;
    swift_getOpaqueTypeConformance2();
    v50 = v122;
    sub_21BE2784C();
    sub_21BBC7A74(&v140);
  }

  else
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    v51 = swift_getObjCClassFromMetadata();
    v52 = objc_opt_self();
    sub_21BBA3854(&v158, &v140, &qword_27CDBD078, &unk_21BE4D1A8);
    sub_21BBA3854(&v157, &v140, &qword_27CDB5CC8, &qword_21BE36190);
    v53 = [v52 bundleForClass_];
    v54 = sub_21BE2599C();
    v102 = v55;
    v103 = v54;

    v56 = v52;
    v57 = v52;
    v98 = v52;
    v99 = v51;
    v58 = v51;
    v59 = [v56 bundleForClass_];
    v60 = sub_21BE2599C();
    v100 = v61;
    v101 = v60;

    v62 = v119;
    sub_21BDBE380(v119);
    v63 = *(v2 + 48);
    v107 = *(v2 + 40);
    v105 = v63;
    v156 = v63;
    v64 = swift_allocObject();
    v65 = *(v2 + 16);
    *(v64 + 16) = *v2;
    *(v64 + 32) = v65;
    *(v64 + 48) = *(v2 + 32);
    *(v64 + 64) = *(v2 + 48);
    sub_21BBA3854(&v159, &v140, &qword_27CDB5C50, &qword_21BE33490);
    sub_21BBA3854(&v158, &v140, &qword_27CDBD078, &unk_21BE4D1A8);
    sub_21BBA3854(&v157, &v140, &qword_27CDB5CC8, &qword_21BE36190);

    sub_21BBA3854(&v156, &v140, &qword_27CDBD080, &qword_21BE4D1B8);
    v66 = [v57 bundleForClass_];
    v67 = sub_21BE2599C();
    v106 = v23;
    v104 = v3;
    v69 = v68;

    v153 = &type metadata for SharedFamilyCalendarItem;
    v154 = sub_21BBDAB68();
    v150 = v116;
    v151 = v115;
    v152 = v117;
    v140 = v103;
    v141 = v102;
    v142 = v101;
    v143 = v100;
    sub_21BBA3854(v62, v118, &qword_27CDB80E0, &qword_21BE4D190);
    sub_21BC65D64();
    v70 = sub_21BE2852C();
    sub_21BB3A4CC(v62, &qword_27CDB80E0, &qword_21BE4D190);
    v155 = v70;
    v146 = v64;
    v147 = v67;
    v148 = v69;
    v149 = 0;
    v144 = 0;
    v145 = sub_21BDC1560;
    v71 = [v98 bundleForClass_];
    v72 = sub_21BE2599C();
    v74 = v73;
    v118 = v73;

    v130 = v72;
    v131 = v74;
    v128[0] = v107;
    v128[1] = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD0A0, &qword_21BE4D1E8);
    sub_21BE2841C();
    v75 = v132;
    v76 = v133;
    v77 = v134;
    swift_getKeyPath();
    v132 = v75;
    v133 = v76;
    v134 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD0A8, &qword_21BE4D218);
    sub_21BE2855C();

    v117 = v129;

    v116 = &v97;
    MEMORY[0x28223BE20](v78);
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8130, &qword_21BE3ED60);
    v79 = sub_21BBC2528();
    v80 = sub_21BB41FA4();
    v120 = sub_21BB3B038(&qword_27CDB8138, &qword_27CDB8130, &qword_21BE3ED60, MEMORY[0x277CE14C0]);
    sub_21BE280EC();

    sub_21BBC79C4(&v140);
    v81 = v111;
    v82 = v109;
    v83 = v104;
    (*(v111 + 16))(v109, v106, v104);
    v84 = v110;
    sub_21BE2863C();
    v85 = *(v81 + 8);
    v85(v82, v83);
    swift_getKeyPath();
    sub_21BE2865C();

    v85(v84, v83);
    v86 = swift_allocObject();
    v87 = *(v2 + 16);
    *(v86 + 16) = *v2;
    *(v86 + 32) = v87;
    *(v86 + 48) = *(v2 + 32);
    *(v86 + 64) = *(v2 + 48);
    sub_21BBA3854(&v159, &v140, &qword_27CDB5C50, &qword_21BE33490);
    sub_21BBA3854(&v158, &v140, &qword_27CDBD078, &unk_21BE4D1A8);
    sub_21BBA3854(&v157, &v140, &qword_27CDB5CC8, &qword_21BE36190);

    sub_21BBA3854(&v156, &v140, &qword_27CDBD080, &qword_21BE4D1B8);
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD088, &unk_21BE4D1D8);
    v140 = &type metadata for ChecklistNotSetupButtonCell;
    v141 = MEMORY[0x277D837D0];
    v142 = v119;
    v143 = MEMORY[0x277CE0BD8];
    v144 = v79;
    v145 = v80;
    v146 = v120;
    v147 = MEMORY[0x277CE0BC8];
    v95 = swift_getOpaqueTypeConformance2();
    v96 = sub_21BDC1480();
    v89 = v108;
    v90 = v124;
    v91 = v114;
    sub_21BE2812C();

    (*(v113 + 8))(v91, v90);
    v92 = v112;
    v93 = v125;
    (*(v112 + 16))(v123, v89, v125);
    swift_storeEnumTagMultiPayload();
    sub_21BBC24D4();
    v140 = v90;
    v141 = v88;
    v142 = v95;
    v143 = v96;
    swift_getOpaqueTypeConformance2();
    v50 = v122;
    sub_21BE2784C();
    (*(v92 + 8))(v89, v93);
  }

  sub_21BB58168(v50, v126);

  return result;
}

uint64_t sub_21BDC07D4@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v54 = a1;
  v61 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8158, &unk_21BE3AE50);
  MEMORY[0x28223BE20](v4 - 8);
  v56 = &v51 - v5;
  v55 = sub_21BE271FC();
  v6 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  v53 = *(v62 - 8);
  v9 = MEMORY[0x28223BE20](v62);
  v60 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8160, &unk_21BE3AE60);
  v58 = *(v13 - 8);
  v59 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v57 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v51 - v16;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = objc_opt_self();
  v20 = [v19 bundleForClass_];
  v21 = sub_21BE2599C();
  v23 = v22;

  v64 = v21;
  v65 = v23;
  sub_21BB41FA4();

  sub_21BE2845C();
  sub_21BE271EC();
  sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460, MEMORY[0x277CDF028]);
  v24 = v17;
  v52 = v17;
  v25 = v62;
  sub_21BE27FBC();
  (*(v6 + 8))(v8, v55);
  v26 = v53;
  v54 = *(v53 + 8);
  v55 = v53 + 8;
  v54(v12, v25);
  v27 = [v19 bundleForClass_];
  v28 = sub_21BE2599C();
  v30 = v29;

  v64 = v28;
  v65 = v30;
  v31 = v56;
  sub_21BE26DEC();
  v32 = sub_21BE26DFC();
  (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  v33 = *a2;
  v69 = a2[1];
  v70 = v33;
  v34 = a2[3];
  v68 = *(a2 + 32);
  v66 = a2[6];
  v67 = v34;
  v35 = swift_allocObject();
  v36 = *(a2 + 1);
  *(v35 + 16) = *a2;
  *(v35 + 32) = v36;
  *(v35 + 48) = *(a2 + 2);
  *(v35 + 64) = a2[6];
  sub_21BBA3854(&v70, v63, &qword_27CDBD078, &unk_21BE4D1A8);
  sub_21BBA3854(&v69, v63, &qword_27CDB5CC8, &qword_21BE36190);
  sub_21BBA3854(&v67, v63, &qword_27CDB5C50, &qword_21BE33490);

  sub_21BBA3854(&v66, v63, &qword_27CDBD080, &qword_21BE4D1B8);
  v51 = v12;
  sub_21BE2844C();
  v37 = v57;
  v38 = v58;
  v39 = *(v58 + 16);
  v40 = v24;
  v41 = v59;
  v39(v57, v40, v59);
  v42 = *(v26 + 16);
  v43 = v60;
  v44 = v12;
  v45 = v62;
  v42(v60, v44, v62);
  v46 = v61;
  v39(v61, v37, v41);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8168, &qword_21BE48080);
  v42(&v46[*(v47 + 48)], v43, v45);
  v48 = v54;
  v54(v51, v45);
  v49 = *(v38 + 8);
  v49(v52, v41);
  v48(v43, v45);
  return (v49)(v37, v41);
}

double sub_21BDC0E44(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - v3;
  v5 = swift_projectBox();
  (*(v2 + 16))(v4, v5, v1);
  sub_21BE2862C();
  (*(v2 + 8))(v4, v1);
  v6 = v9[3];
  swift_beginAccess();
  if (*(v6 + 16) == 1)
  {
    *(v6 + 16) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v9[-2] = v6;
    LOBYTE(v9[-1]) = 1;
    v9[2] = v6;
    sub_21BDC158C(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
    sub_21BE25F0C();
  }

  return result;
}

double sub_21BDC104C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD0A0, &qword_21BE4D1E8);
  sub_21BE283FC();
  if (*(v3 + 17))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BDC158C(&qword_27CDB6858, type metadata accessor for SharedCalendarItemModel, byte_21BE35698);
    sub_21BE25F0C();
  }

  else
  {
    *(v3 + 17) = 0;
  }

  return result;
}

uint64_t sub_21BDC1190@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  result = sub_21BE27DBC();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

void sub_21BDC1270(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD0A0, &qword_21BE4D1E8);
  sub_21BE283FC();
  type metadata accessor for ChecklistStateVars(0);
  sub_21BDC158C(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
  v3 = sub_21BE26E9C();
  v5 = v4;
  if (*(v7 + 16) == 1)
  {
    *(v7 + 16) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BDC158C(&qword_27CDB6858, type metadata accessor for SharedCalendarItemModel, byte_21BE35698);

    sub_21BE25F0C();
  }

  *a2 = v3;
  *(a2 + 8) = v5 & 1;
  *(a2 + 16) = v7;
}

unint64_t sub_21BDC1480()
{
  result = qword_27CDBD090;
  if (!qword_27CDBD090)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD088, &unk_21BE4D1D8);
    v4[0] = sub_21BDC150C();
    v4[1] = sub_21BC66030();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBD090);
  }

  return result;
}

unint64_t sub_21BDC150C()
{
  result = qword_27CDBD098;
  if (!qword_27CDBD098)
  {
    result = swift_getWitnessTable(byte_21BE3DBA0, &type metadata for SharedFamilyCalendarFlowView, v0, v1);
    atomic_store(result, &qword_27CDBD098);
  }

  return result;
}

uint64_t sub_21BDC158C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_37()
{

  return swift_deallocObject();
}

void sub_21BDC163C(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_21BE293FC();
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = v4 & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    sub_21BB3A2A4(0, &qword_27CDBD0B8, 0x277CC5AC0);
    while (1)
    {
      v12 = *(*(v3 + 48) + 8 * v7);
      v13 = sub_21BE2940C();

      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if (((1 << v7) & v9) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v3 + 48);
    v16 = *(v15 + 8 * v7);
    *(v15 + 8 * v7) = a1;
  }

  else
  {
LABEL_5:
    v14 = *(v3 + 16);
    if (v14 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v8) = v10 | v9;
      *(*(v3 + 48) + 8 * v7) = a1;
      *(v3 + 16) = v14 + 1;
    }
  }
}

void sub_21BDC177C(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_21BE2950C();
    sub_21BB3A2A4(0, &qword_27CDBD0B8, 0x277CC5AC0);
    sub_21BDC25E0();
    v4 = a2;
    sub_21BE28E7C();
    v5 = v84;
    v76 = v83;
    v6 = v85;
    v7 = v86;
    v8 = v87;
  }

  else
  {
    v4 = a2;
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v10 = ~v9;
    v11 = -v9;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v8 = v12 & *(a1 + 56);
    v76 = a1;

    v6 = v10;
    v7 = 0;
  }

  v13 = (v6 + 64) >> 6;
  v70 = v13;
  v71 = v4 & 0xFFFFFFFFFFFFFF8;
  v79 = v4 + 32;
  v80 = v4 & 0xC000000000000001;
  v72 = v4 >> 62;
  v73 = v5;
  v77 = a3;
  while (1)
  {
    if (v76 < 0)
    {
      if (!sub_21BE2953C() || (sub_21BB3A2A4(0, &qword_27CDBD0B8, 0x277CC5AC0), swift_dynamicCast(), v17 = v88, v74 = v8, v75 = v7, !v88))
      {
LABEL_84:
        sub_21BC50480(v76);
        return;
      }
    }

    else
    {
      v14 = v7;
      v15 = v8;
      v16 = v7;
      if (!v8)
      {
        while (1)
        {
          v16 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v16 >= v13)
          {
            goto LABEL_84;
          }

          v15 = *(v5 + 8 * v16);
          ++v14;
          if (v15)
          {
            goto LABEL_14;
          }
        }

LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

LABEL_14:
      v74 = (v15 - 1) & v15;
      v75 = v16;
      v17 = *(*(v76 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
      if (!v17)
      {
        goto LABEL_84;
      }
    }

    if (v72)
    {
      break;
    }

    v18 = *(v71 + 16);
    if (v18)
    {
      goto LABEL_20;
    }

LABEL_8:

    v8 = v74;
    v7 = v75;
    v5 = v73;
    v13 = v70;
  }

  v18 = sub_21BE2951C();
  if (!v18)
  {
    goto LABEL_8;
  }

LABEL_20:
  if (v18 >= 1)
  {
    v19 = 0;
    v81 = v18;
    v82 = v17;
    while (1)
    {
      if (v80)
      {
        v22 = MEMORY[0x21CF047C0](v19, v4);
      }

      else
      {
        v22 = *(v79 + 8 * v19);
      }

      v23 = v22;
      v24 = [v22 appleID];
      if (v24)
      {
        v25 = v24;
        v26 = sub_21BE28A0C();
        v28 = v27;
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      v29 = [v17 emailAddress];
      if (v29)
      {
        v30 = v29;
        v31 = sub_21BE28A0C();
        v33 = v32;

        if (v28)
        {
          if (v33)
          {
            if (v26 == v31 && v28 == v33)
            {
              goto LABEL_49;
            }

            v34 = sub_21BE2995C();

            if (v34)
            {
              goto LABEL_55;
            }

            goto LABEL_41;
          }
        }

        else if (!v33)
        {
          goto LABEL_55;
        }
      }

      else if (!v28)
      {
        goto LABEL_55;
      }

LABEL_41:
      v35 = [v23 memberPhoneNumbers];
      if (v35)
      {
        v36 = v35;
        v37 = sub_21BE28A0C();
        v39 = v38;
      }

      else
      {
        v37 = 0;
        v39 = 0;
      }

      v40 = [v82 phoneNumber];
      if (v40)
      {
        v41 = v40;
        v42 = sub_21BE28A0C();
        v44 = v43;

        if (v39)
        {
          if (!v44)
          {
            goto LABEL_53;
          }

          if (v37 != v42 || v39 != v44)
          {
            v45 = sub_21BE2995C();

            if ((v45 & 1) == 0)
            {

              goto LABEL_23;
            }

            goto LABEL_55;
          }

LABEL_49:

          goto LABEL_55;
        }

        if (v44)
        {
LABEL_53:

          goto LABEL_23;
        }
      }

      else if (v39)
      {
        goto LABEL_53;
      }

LABEL_55:
      v46 = *a3;
      if ((*a3 & 0xC000000000000001) != 0)
      {
        if (v46 < 0)
        {
          v47 = *a3;
        }

        else
        {
          v47 = v46 & 0xFFFFFFFFFFFFFF8;
        }

        v48 = v23;

        v49 = sub_21BE2952C();

        if (v49)
        {

          sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
          swift_dynamicCast();
        }

        else
        {
          v56 = sub_21BE2951C();
          if (__OFADD__(v56, 1))
          {
            goto LABEL_86;
          }

          v57 = sub_21BC6613C(v47, v56 + 1);
          v88 = v57;
          v58 = *(v57 + 16);
          if (*(v57 + 24) <= v58)
          {
            sub_21BC667FC(v58 + 1);
          }

          v59 = v48;
          v60 = sub_21BE293FC();
          v61 = v57 + 56;
          v62 = -1 << *(v57 + 32);
          v63 = v60 & ~v62;
          v64 = v63 >> 6;
          if (((-1 << v63) & ~*(v57 + 56 + 8 * (v63 >> 6))) != 0)
          {
            v65 = __clz(__rbit64((-1 << v63) & ~*(v57 + 56 + 8 * (v63 >> 6)))) | v63 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v66 = 0;
            v67 = (63 - v62) >> 6;
            do
            {
              if (++v64 == v67 && (v66 & 1) != 0)
              {
                __break(1u);
                goto LABEL_85;
              }

              v68 = v64 == v67;
              if (v64 == v67)
              {
                v64 = 0;
              }

              v66 |= v68;
              v69 = *(v61 + 8 * v64);
            }

            while (v69 == -1);
            v65 = __clz(__rbit64(~v69)) + (v64 << 6);
          }

          *(v61 + ((v65 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v65;
          *(*(v57 + 48) + 8 * v65) = v59;
          ++*(v57 + 16);

          *a3 = v57;
        }
      }

      else
      {
        sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
        v50 = sub_21BE293FC();
        v51 = -1 << *(v46 + 32);
        v52 = v50 & ~v51;
        if ((*(v46 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52))
        {
          v53 = ~v51;
          while (1)
          {
            v54 = *(*(v46 + 48) + 8 * v52);
            v55 = sub_21BE2940C();

            if (v55)
            {
              break;
            }

            v52 = (v52 + 1) & v53;
            if (((*(v46 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          a3 = v77;
          v4 = a2;
        }

        else
        {
LABEL_22:
          a3 = v77;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v88 = *v77;
          v21 = v23;
          sub_21BC68380(v21, v52, isUniquelyReferenced_nonNull_native);
          *v77 = v88;

          v4 = a2;
        }
      }

LABEL_23:
      v17 = v82;
      if (++v19 == v81)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_87:
  __break(1u);
}

void *sub_21BDC1E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  type metadata accessor for SharedCalendarItemModel(0);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = [objc_allocWithZone(MEMORY[0x277CC5A40]) init];
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  v13 = *(qword_280BD7CD0 + OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_aidaAccountManager);
  *(v12 + 32) = v13;
  v14 = v13;
  sub_21BE25F4C();
  result = sub_21BE283EC();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  *(a6 + 40) = v16;
  *(a6 + 48) = v17;
  return result;
}

uint64_t sub_21BDC1FAC()
{
  v14[1] = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v14 - v1;
  v3 = objc_opt_self();
  v14[0] = 0;
  v4 = [v3 urlDestinationTo:12 error:v14];
  v5 = v14[0];
  if (v4)
  {
    v6 = v4;
    sub_21BE25B5C();
    v7 = v5;

    v8 = 0;
  }

  else
  {
    v9 = v14[0];
    v10 = sub_21BE25A8C();

    swift_willThrow();
    v8 = 1;
  }

  v11 = sub_21BE25B9C();
  (*(*(v11 - 8) + 56))(v2, v8, 1, v11);
  sub_21BDEF00C(v2);
  return sub_21BB3A4CC(v2, &unk_27CDB57F0, &qword_21BE328A0);
}

double sub_21BDC212C(unint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_21BE2754C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v12 = v8;
    v13 = sub_21BE2951C();
    v8 = v12;
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:

    sub_21BDC1FAC();
    return result;
  }

  v14 = v8;

  if ((a3 & 1) == 0)
  {
    sub_21BE28FEC();
    v15 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v14);
    a2 = v17[3];
  }

  swift_beginAccess();
  if (*(a2 + 16) == 1)
  {
    *(a2 + 16) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v17[-2] = a2;
    LOBYTE(v17[-1]) = 1;
    v17[2] = a2;
    sub_21BDC158C(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
    sub_21BE25F0C();
  }

  return result;
}

double sub_21BDC23CC(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD0A0, &qword_21BE4D1E8);
  sub_21BE283FC();
  v8 = [*(v11 + 24) primaryAppleAccountSource];

  if (v8)
  {

    return sub_21BDC212C(a1, a2, a3 & 1);
  }

  else
  {
    sub_21BE283FC();
    if (*(v11 + 17) == 1)
    {
      *(v11 + 17) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_21BDC158C(&qword_27CDB6858, type metadata accessor for SharedCalendarItemModel, byte_21BE35698);
      sub_21BE25F0C();
    }
  }

  return result;
}

unint64_t sub_21BDC258C()
{
  result = qword_27CDBD0B0;
  if (!qword_27CDBD0B0)
  {
    result = swift_getWitnessTable(MEMORY[0x277CE0F90], MEMORY[0x277CE0F78], v0, v1);
    atomic_store(result, &qword_27CDBD0B0);
  }

  return result;
}

unint64_t sub_21BDC25E0()
{
  result = qword_27CDBD0C0;
  if (!qword_27CDBD0C0)
  {
    v3 = sub_21BB3A2A4(255, &qword_27CDBD0B8, 0x277CC5AC0);
    result = swift_getWitnessTable(MEMORY[0x277D85378], v3, v0, v1);
    atomic_store(result, &qword_27CDBD0C0);
  }

  return result;
}

unint64_t sub_21BDC2658()
{
  result = qword_27CDBD0D0;
  if (!qword_27CDBD0D0)
  {
    v7[20] = v0;
    v7[21] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD070, &unk_21BE4D198);
    v4 = sub_21BBC24D4();
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB80C0, &qword_21BE3ADD8);
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD088, &unk_21BE4D1D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8130, &qword_21BE3ED60);
    v7[6] = sub_21BBC2528();
    v7[7] = sub_21BB41FA4();
    v7[8] = sub_21BB3B038(&qword_27CDB8138, &qword_27CDB8130, &qword_21BE3ED60, MEMORY[0x277CE14C0]);
    v7[9] = MEMORY[0x277CE0BC8];
    v7[2] = v5;
    v7[3] = v6;
    v7[4] = swift_getOpaqueTypeConformance2();
    v7[5] = sub_21BDC1480();
    v7[0] = v4;
    v7[1] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v7);
    atomic_store(result, &qword_27CDBD0D0);
  }

  return result;
}

uint64_t sub_21BDC2930(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14FamilyCircleUI37FAPrivacyDisclosureAcknowledgmentHook_delegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_21BDC2988(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14FamilyCircleUI37FAPrivacyDisclosureAcknowledgmentHook_delegate;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_21BDC2AF8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_21BDC2B1C, 0, 0);
}

id sub_21BDC2B1C()
{
  result = [*(v0 + 16) attributes];
  if (result)
  {
    v2 = result;
    v4 = *(v0 + 24);
    v3 = *(v0 + 32);
    v5 = sub_21BE2890C();

    sub_21BDC3AC4(v5);

    sub_21BDC2BF0(v4, v3);
    v6 = *(v0 + 8);

    return v6(1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21BDC2BF0(uint64_t a1, uint64_t a2)
{
  strcpy(v14, "shouldDismiss");
  v14[7] = -4864;
  sub_21BE2958C();
  if (*(a1 + 16) && (v4 = sub_21BBB31E8(v13), (v5 & 1) != 0))
  {
    sub_21BB3DCD4(*(a1 + 56) + 32 * v4, v15);
    sub_21BBB7238(v13);
    swift_dynamicCast();
  }

  else
  {
    sub_21BBB7238(v13);
  }

  v6 = sub_21BE28A6C();
  v8 = v7;

  if (v6 == 1702195828 && v8 == 0xE400000000000000)
  {
  }

  else
  {
    v9 = sub_21BE2995C();

    if ((v9 & 1) == 0)
    {
      return;
    }
  }

  v10 = OBJC_IVAR____TtC14FamilyCircleUI37FAPrivacyDisclosureAcknowledgmentHook_delegate;
  swift_beginAccess();
  v11 = *(a2 + v10);
  if (v11)
  {
    v13[4] = nullsub_1;
    v13[5] = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_21BB42A18;
    v13[3] = &block_descriptor_55;
    v12 = _Block_copy(v13);
    [v11 dismissObjectModelsAnimated:1 completion:v12];
    _Block_release(v12);
  }
}

uint64_t sub_21BDC2F90(void *a1, uint64_t a2, int a3, void *aBlock, void *a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v5[5] = sub_21BE2890C();
  v8 = a1;
  v9 = a5;

  return MEMORY[0x2822009F8](sub_21BDC3048, 0, 0);
}

id sub_21BDC3048()
{
  result = [*(v0 + 16) attributes];
  if (result)
  {
    v2 = result;
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);
    v6 = *(v0 + 16);
    v5 = *(v0 + 24);
    v7 = sub_21BE2890C();

    sub_21BDC3AC4(v7);

    sub_21BDC2BF0(v3, v5);

    v4[2](v4, 1, 0);
    _Block_release(v4);
    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21BDC3170()
{
  result = [*(v0 + 16) clientInfo];
  if (result)
  {
    v2 = result;
    v3 = sub_21BE2890C();

    sub_21BDC3AC4(v3);

    v4 = *(v0 + 8);

    return v4(1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BDC33B4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_21BDC3440, 0, 0);
}

id sub_21BDC3440()
{
  result = [*(v0 + 16) clientInfo];
  if (result)
  {
    v2 = result;
    v4 = *(v0 + 24);
    v3 = *(v0 + 32);
    v5 = *(v0 + 16);
    v6 = sub_21BE2890C();

    sub_21BDC3AC4(v6);

    v3[2](v3, 1, 0);
    _Block_release(v3);
    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BDC3534(char a1, void *a2)
{
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_21BE295EC();

  v17 = 0xD00000000000002DLL;
  v18 = 0x800000021BE61C20;
  if (a1)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (a1)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x21CF03CA0](v8, v9);

  v10 = v18;
  if (a2)
  {
    sub_21BC51D50(a2, 0xD00000000000002ELL, 0x800000021BE61C50);
  }

  else
  {
    v11 = v17;

    v12 = sub_21BE26A2C();
    v13 = sub_21BE28FFC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_21BB3D81C(v11, v10, &v17);
      _os_log_impl(&dword_21BB35000, v12, v13, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x21CF05C50](v15, -1, -1);
      MEMORY[0x21CF05C50](v14, -1, -1);
    }
  }

  return (*(v5 + 8))(v7, v4);
}

id FAPrivacyDisclosureAcknowledgmentHook.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FAPrivacyDisclosureAcknowledgmentHook.init()()
{
  *&v0[OBJC_IVAR____TtC14FamilyCircleUI37FAPrivacyDisclosureAcknowledgmentHook_delegate] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FAPrivacyDisclosureAcknowledgmentHook();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FAPrivacyDisclosureAcknowledgmentHook.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FAPrivacyDisclosureAcknowledgmentHook();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BDC3894(void *a1)
{
  v1 = [a1 name];
  if (v1)
  {
    v2 = v1;
    v3 = sub_21BE28A0C();
    v5 = v4;

    if (v3 == 0xD00000000000001FLL && 0x800000021BE61C80 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_21BE2995C();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_21BDC3940(void *a1)
{
  v1 = [a1 clientInfo];
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_21BE2890C();

  sub_21BE28A0C();
  sub_21BE2958C();
  if (!*(v3 + 16) || (v4 = sub_21BBB31E8(v8), (v5 & 1) == 0))
  {

    sub_21BBB7238(v8);
LABEL_10:
    v9 = 0u;
    v10 = 0u;
    goto LABEL_11;
  }

  sub_21BB3DCD4(*(v3 + 56) + 32 * v4, &v9);
  sub_21BBB7238(v8);

  if (!*(&v10 + 1))
  {
LABEL_11:
    sub_21BBBC274(&v9);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v6 = 0;
    return v6 & 1;
  }

  if (v8[0] == 0xD00000000000001FLL && 0x800000021BE61C80 == v8[1])
  {

    v6 = 1;
  }

  else
  {
    v6 = sub_21BE2995C();
  }

  return v6 & 1;
}

uint64_t sub_21BDC3AC4(uint64_t a1)
{
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v41 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - v10;
  sub_21BE2614C();

  v12 = sub_21BE26A2C();
  v13 = sub_21BE28FFC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v41 = v3;
    v42 = v2;
    v15 = v14;
    v16 = v9;
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v15 = 136315138;
    v18 = sub_21BE2891C();
    v20 = sub_21BB3D81C(v18, v19, aBlock);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_21BB35000, v12, v13, "FAPrivacyDisclosureAcknowledgmentHook, got attributes %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    v21 = v17;
    v9 = v16;
    MEMORY[0x21CF05C50](v21, -1, -1);
    v22 = v15;
    v3 = v41;
    v2 = v42;
    MEMORY[0x21CF05C50](v22, -1, -1);
  }

  v23 = *(v3 + 8);
  v23(v11, v2);
  v24 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4F08 != -1)
  {
    swift_once();
  }

  [v24 postNotificationName:qword_27CDB7EB0 object:0 userInfo:0 deliverImmediately:1];

  aBlock[6] = 0x4449656C646E7562;
  aBlock[7] = 0xE800000000000000;
  sub_21BE2958C();
  if (*(a1 + 16) && (v25 = sub_21BBB31E8(aBlock), (v26 & 1) != 0))
  {
    sub_21BB3DCD4(*(a1 + 56) + 32 * v25, v44);
    sub_21BBB7238(aBlock);
    if (swift_dynamicCast())
    {
      v27 = objc_allocWithZone(MEMORY[0x277CEE3D0]);
      v28 = sub_21BE289CC();

      v29 = [v27 initWithPrivacyIdentifier_];

      v30 = [v29 acknowledgePrivacy];
      aBlock[4] = sub_21BDC3534;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21BD197D4;
      aBlock[3] = &block_descriptor_31;
      v31 = _Block_copy(aBlock);
      [v30 addFinishBlock_];
      _Block_release(v31);
      sub_21BE2614C();
      v32 = sub_21BE26A2C();
      v33 = sub_21BE28FFC();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        aBlock[0] = v35;
        *v34 = 136315138;
        *(v34 + 4) = sub_21BB3D81C(0xD00000000000002CLL, 0x800000021BE61BF0, aBlock);
        _os_log_impl(&dword_21BB35000, v32, v33, "%s completed", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v35);
        MEMORY[0x21CF05C50](v35, -1, -1);
        MEMORY[0x21CF05C50](v34, -1, -1);
      }

      v36 = v9;
      return (v23)(v36, v2);
    }
  }

  else
  {
    sub_21BBB7238(aBlock);
  }

  sub_21BE2614C();
  v37 = sub_21BE26A2C();
  v38 = sub_21BE28FFC();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_21BB35000, v37, v38, "FAPrivacyDisclosureAcknowledgmentHook, no bundle id found", v39, 2u);
    MEMORY[0x21CF05C50](v39, -1, -1);
  }

  v36 = v6;
  return (v23)(v36, v2);
}

uint64_t dispatch thunk of FAPrivacyDisclosureAcknowledgmentHook.shouldMatch(_:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x78))();
}

uint64_t dispatch thunk of FAPrivacyDisclosureAcknowledgmentHook.processElement(_:attributes:objectModel:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x80);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21BBB8C3C;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of FAPrivacyDisclosureAcknowledgmentHook.processObjectModel(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBE9D64;

  return v7(a1);
}

uint64_t sub_21BDC4408()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBB7EB8;

  return sub_21BDC33B4(v2, v3, v4);
}

uint64_t sub_21BDC44BC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_21BBA6A64;

  return sub_21BDC2F90(v2, v3, v4, v5, v6);
}

uint64_t FAFamilyCircleFetcher.fetchCachedFamilyCircle(qualityOfService:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21BBDEAC0;

  return sub_21BDC524C(0, a1);
}

uint64_t sub_21BDC47BC(uint64_t a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_21BDC58F8;

  return sub_21BDC524C(0, a1);
}

uint64_t FAFamilyCircleFetcher.forceFetchFamilyCircle(qualityOfService:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21BBDE3D4;

  return sub_21BDC524C(2, a1);
}

uint64_t sub_21BDC4AA4(uint64_t a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_21BDC4B5C;

  return sub_21BDC524C(2, a1);
}

uint64_t sub_21BDC4B5C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;

  v7 = *(v5 + 16);
  if (v3)
  {
    v8 = sub_21BE25A7C();

    (v7)[2](v7, 0, v8);
    _Block_release(v7);
  }

  else
  {
    (v7)[2](v7, a1, 0);
    _Block_release(v7);
  }

  v9 = *(v6 + 8);

  return v9();
}

id FAFamilyCircleFetcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FAFamilyCircleFetcher.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FAFamilyCircleFetcher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BDC4DC0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_21BBB7EB8;

  return v6();
}

uint64_t sub_21BDC4EA8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_21BBA6A64;

  return v7();
}

uint64_t sub_21BDC4F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_21BC39020(a3, v23 - v10);
  v12 = sub_21BE28DAC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21BBDE578(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_21BE28D9C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_21BE28D0C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_21BE28A8C() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_21BBDE578(a3);

    return v21;
  }

LABEL_8:
  sub_21BBDE578(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_21BDC524C(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x2822009F8](sub_21BDC526C, 0, 0);
}

uint64_t sub_21BDC526C()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
  v0[21] = v3;
  [v3 setQualityOfService_];
  [v3 setCachePolicy_];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21BDC53D4;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC830, &qword_21BE4B460);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BBB25CC;
  v0[13] = &block_descriptor_56;
  v0[14] = v4;
  [v3 startRequestWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BDC53D4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_21BDC554C;
  }

  else
  {
    v2 = sub_21BDC54E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21BDC54E4()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21BDC554C(uint64_t a1)
{
  v2 = *(v1 + 168);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_21BDC55E0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBA6A64;

  return sub_21BDC4AA4(v2, v3);
}

uint64_t sub_21BDC5694(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB7EB8;

  return sub_21BB42FF0(a1, v4);
}

uint64_t sub_21BDC574C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBA6A64;

  return sub_21BB42FF0(a1, v4);
}

uint64_t objectdestroyTm_38()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_21BDC5844()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBB7EB8;

  return sub_21BDC47BC(v2, v3);
}

uint64_t FamilyOutofProcessUIExtension.configuration.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v6, a1);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  (*(v4 + 32))(v8 + v7, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_21BE25F7C();
}

id AgeRangeAlertFlowStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FamilyOutofProcessUIScene.init(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0x746C7561666564;
  a3[1] = 0xE700000000000000;
  result = [objc_allocWithZone(type metadata accessor for AgeRangeAlertFlowStore(0)) init];
  a3[2] = result;
  a3[3] = a1;
  a3[4] = a2;
  return result;
}

uint64_t type metadata accessor for AgeRangeAlertFlowStore(uint64_t a1)
{
  result = qword_27CDBD240;
  if (!qword_27CDBD240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FamilyOutofProcessUIScene.body.getter(uint64_t a1)
{
  v3 = v1[1];
  v13 = *v1;
  v14 = v3;
  v15 = *(v1 + 4);
  v4 = swift_allocObject();
  v5 = *(a1 + 24);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = v5;
  v6 = v1[1];
  *(v4 + 32) = *v1;
  *(v4 + 48) = v6;
  *(v4 + 64) = *(v1 + 4);
  v7 = v14;
  *(swift_allocObject() + 16) = v14;

  (*(*(a1 - 8) + 16))(v12, &v13, a1);
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD150, &qword_21BE4D4D0);
  v9 = sub_21BE2719C();
  v11[0] = v5;
  v11[1] = sub_21BB3B038(&qword_27CDBD158, &qword_27CDBD150, &qword_21BE4D4D0, MEMORY[0x277CE0868]);
  swift_getWitnessTable(MEMORY[0x277CDFAD8], v9, v11);
  return sub_21BE25F6C();
}

uint64_t sub_21BDC5D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a4;
  v22 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD150, &qword_21BE4D4D0);
  v9 = sub_21BE2719C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v21 - v15;
  (*(a1 + 24))(v14);
  swift_getKeyPath();
  v25 = *(a1 + 16);
  v17 = v25;
  sub_21BE27EFC();

  (*(v22 + 8))(v8, a2);
  v18 = sub_21BB3B038(&qword_27CDBD158, &qword_27CDBD150, &qword_21BE4D4D0, MEMORY[0x277CE0868]);
  v24[0] = a3;
  v24[1] = v18;
  swift_getWitnessTable(MEMORY[0x277CDFAD8], v9, v24);
  sub_21BD37338();
  v19 = *(v10 + 8);
  v19(v13, v9);
  sub_21BD37338();
  return (v19)(v16, v9);
}

uint64_t EnvironmentValues.flowStore.getter()
{
  sub_21BDC6168();
  sub_21BE2755C();
  return v1;
}

void *sub_21BDC6058@<X0>(void *a1@<X8>)
{
  sub_21BDC6168();
  result = sub_21BE2755C();
  *a1 = v3;
  return result;
}

uint64_t sub_21BDC60A8(id *a1)
{
  v1 = *a1;
  sub_21BDC6168();
  v2 = v1;
  return sub_21BE2756C();
}

unint64_t sub_21BDC6168()
{
  result = qword_27CDBD160;
  if (!qword_27CDBD160)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AgeRangeAlertFlowStoreKey, &type metadata for AgeRangeAlertFlowStoreKey, v0, v1);
    atomic_store(result, &qword_27CDBD160);
  }

  return result;
}

uint64_t sub_21BDC61BC(void *a1)
{
  v2 = v1;
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  v8 = sub_21BE26A2C();
  v9 = sub_21BE28FFC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_21BB35000, v8, v9, "AgeRangeAlertFlowStore (Extension): configuring XPC connection", v10, 2u);
    MEMORY[0x21CF05C50](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  [a1 setExportedObject_];
  v11 = objc_opt_self();
  v12 = [v11 interfaceWithProtocol_];
  [a1 setExportedInterface_];

  v13 = [v11 interfaceWithProtocol_];
  [a1 setRemoteObjectInterface_];

  [a1 resume];
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  *(v14 + 24) = a1;
  v15 = a1;
  v16 = v2;
  sub_21BDCEAC8(sub_21BDCF070, v14);

  return 1;
}

void sub_21BDC6424(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  AgeRangeAlertFlowStore.ageRangeRequestModel.setter(v1);
}

void AgeRangeAlertFlowStore.ageRangeRequestModel.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__ageRangeRequestModel;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore, protocol conformance descriptor for AgeRangeAlertFlowStore);
    sub_21BE25F0C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_21BB3A2A4(0, &qword_27CDBD180, 0x277D08218);
  v6 = v5;
  v7 = a1;
  v8 = sub_21BE2940C();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t (*AgeRangeAlertFlowStore.ageRangeRequestModel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore, protocol conformance descriptor for AgeRangeAlertFlowStore);
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  swift_beginAccess();
  return sub_21BDC674C;
}

uint64_t AgeRangeAlertFlowStore.clientMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore, protocol conformance descriptor for AgeRangeAlertFlowStore);
  sub_21BE25F1C();

  v3 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__clientMetadata;
  swift_beginAccess();
  return sub_21BBA3854(v5 + v3, a1, &qword_27CDBD190, &qword_21BE4D528);
}

uint64_t sub_21BDC6830@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore, protocol conformance descriptor for AgeRangeAlertFlowStore);
  sub_21BE25F1C();

  v4 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__clientMetadata;
  swift_beginAccess();
  return sub_21BBA3854(v3 + v4, a2, &qword_27CDBD190, &qword_21BE4D528);
}

uint64_t sub_21BDC6908(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD190, &qword_21BE4D528);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_21BBA3854(a1, &v9[-v5], &qword_27CDBD190, &qword_21BE4D528);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore, protocol conformance descriptor for AgeRangeAlertFlowStore);
  sub_21BE25F0C();

  return sub_21BB3A4CC(v6, &qword_27CDBD190, &qword_21BE4D528);
}

uint64_t AgeRangeAlertFlowStore.clientMetadata.setter(uint64_t a1)
{
  swift_getKeyPath();
  sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore, protocol conformance descriptor for AgeRangeAlertFlowStore);
  sub_21BE25F0C();

  return sub_21BB3A4CC(a1, &qword_27CDBD190, &qword_21BE4D528);
}

uint64_t sub_21BDC6B38(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__clientMetadata;
  swift_beginAccess();
  sub_21BDCF000(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t (*AgeRangeAlertFlowStore.clientMetadata.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore, protocol conformance descriptor for AgeRangeAlertFlowStore);
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  swift_beginAccess();
  return sub_21BDC6D08;
}

void *sub_21BDC6D28(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore, protocol conformance descriptor for AgeRangeAlertFlowStore);
  sub_21BE25F1C();

  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = v5;
  return v5;
}

id sub_21BDC6DF8@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore, protocol conformance descriptor for AgeRangeAlertFlowStore);
  sub_21BE25F1C();

  v7 = *a3;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *a4 = v8;

  return v8;
}

void sub_21BDC6ED0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  AgeRangeAlertFlowStore.ageRangeAlertModel.setter(v1);
}

void AgeRangeAlertFlowStore.ageRangeAlertModel.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__ageRangeAlertModel;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore, protocol conformance descriptor for AgeRangeAlertFlowStore);
    sub_21BE25F0C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_21BB3A2A4(0, &qword_27CDBD1A0, 0x277D08208);
  v6 = v5;
  v7 = a1;
  v8 = sub_21BE2940C();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t (*AgeRangeAlertFlowStore.ageRangeAlertModel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore, protocol conformance descriptor for AgeRangeAlertFlowStore);
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  swift_beginAccess();
  return sub_21BDC71F8;
}

void sub_21BDC722C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  AgeRangeAlertFlowStore.privacyVersion.setter(v1);
}

void AgeRangeAlertFlowStore.privacyVersion.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__privacyVersion;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore, protocol conformance descriptor for AgeRangeAlertFlowStore);
    sub_21BE25F0C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
  v6 = v5;
  v7 = a1;
  v8 = sub_21BE2940C();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_21BDC73E8(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  v6 = *(a1 + v5);
  *(a1 + v5) = a2;
  v7 = a2;
}

uint64_t (*AgeRangeAlertFlowStore.privacyVersion.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore, protocol conformance descriptor for AgeRangeAlertFlowStore);
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  swift_beginAccess();
  return sub_21BDC75C0;
}

void sub_21BDC75CC(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_endAccess();
  *v3 = v3[3];
  swift_getKeyPath();
  sub_21BE25F2C();

  free(v3);
}

uint64_t sub_21BDC7650()
{
  v1 = sub_21BE26A4C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = (v5 + 16);
  v7 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__connection);
  if (v7)
  {
    aBlock[4] = sub_21BDCEFA4;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21BD94E40;
    aBlock[3] = &block_descriptor_90_0;
    v8 = _Block_copy(aBlock);
    v9 = v7;

    v10 = [v9 remoteObjectProxyWithErrorHandler_];
    _Block_release(v8);

    sub_21BE294BC();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD260, &unk_21BE4D860);
    if (swift_dynamicCast())
    {
      v11 = aBlock[7];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  swift_beginAccess();
  v12 = *v6;
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    if (v11)
    {

      return v11;
    }

    sub_21BE2614C();
    v15 = sub_21BE26A2C();
    v16 = sub_21BE28FFC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21BB35000, v15, v16, "FamilyExtension: proxy is nil", v17, 2u);
      MEMORY[0x21CF05C50](v17, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    sub_21BDCEFAC();
    swift_allocError();
  }

  swift_willThrow();

  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_21BDC7954(void *a1, uint64_t a2)
{
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(a2 + 16);
  *(a2 + 16) = a1;

  v9 = a1;
  sub_21BE2614C();
  v10 = a1;
  v11 = sub_21BE26A2C();
  v12 = sub_21BE28FFC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = a1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_21BB35000, v11, v12, "FamilyExtension: failed to get proxy %@", v13, 0xCu);
    sub_21BB3A4CC(v14, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v14, -1, -1);
    MEMORY[0x21CF05C50](v13, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_21BDC7B2C(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD190, &qword_21BE4D528);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v50 - v4;
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v50 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v50 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    sub_21BE2614C();
    v18 = sub_21BE26A2C();
    v19 = sub_21BE28FFC();
    v20 = os_log_type_enabled(v18, v19);
    v52 = v5;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v51 = v13;
      v22 = v10;
      v23 = v6;
      v24 = v7;
      v25 = v21;
      v26 = swift_slowAlloc();
      v54 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_21BB3D81C(0xD000000000000028, 0x800000021BE60C50, &v54);
      _os_log_impl(&dword_21BB35000, v18, v19, "Extension: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x21CF05C50](v26, -1, -1);
      MEMORY[0x21CF05C50](v25, -1, -1);

      v27 = v24;
      v6 = v23;
      v10 = v22;
      v13 = v51;
    }

    else
    {

      v27 = v7;
    }

    v28 = *(v27 + 8);
    v28(v15, v6);
    v29 = a2;
    AgeRangeAlertFlowStore.ageRangeRequestModel.setter(a2);
    v30 = *&v17[OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__connection];
    if (!v30)
    {
      [sub_21BDC7650() dismissWithError:0 response:0];
      swift_unknownObjectRelease();
      sub_21BDC83CC();

      return;
    }

    v51 = v6;
    swift_getKeyPath();
    v31 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore___observationRegistrar;
    v54 = v17;
    sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore, protocol conformance descriptor for AgeRangeAlertFlowStore);
    v32 = v30;
    sub_21BE25F1C();

    v33 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__ageRangeRequestModel;
    swift_beginAccess();
    v34 = *&v17[v33];
    if (v34)
    {
      v50[1] = v31;
      v35 = v34;
      v36 = [v35 userAgeOverride];
      if (v36 || (v36 = [v35 attestedAtOverrideInDays]) != 0 || (v36 = objc_msgSend(v35, sel_altDSID)) != 0 || (v36 = objc_msgSend(v35, sel_bundleID)) != 0)
      {

        sub_21BE2614C();
        v37 = sub_21BE26A2C();
        v38 = sub_21BE28FFC();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_21BB35000, v37, v38, "Checking for internal entitlement", v39, 2u);
          MEMORY[0x21CF05C50](v39, -1, -1);
        }

        v28(v13, v51);
        v40 = v32;
        v41 = v52;
        sub_21BE2630C();
        v42 = sub_21BE2632C();
        (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        v50[-2] = v17;
        v50[-1] = v41;
        v53 = v17;
        sub_21BE25F0C();

LABEL_19:
        sub_21BB3A4CC(v41, &qword_27CDBD190, &qword_21BE4D528);
        return;
      }
    }

    sub_21BE2614C();
    v44 = sub_21BE26A2C();
    v45 = sub_21BE28FFC();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_21BB35000, v44, v45, "Checking for public entitlement", v46, 2u);
      MEMORY[0x21CF05C50](v46, -1, -1);
    }

    v28(v10, v51);
    v47 = v32;
    v41 = v52;
    sub_21BE2630C();
    v48 = sub_21BE2632C();
    (*(*(v48 - 8) + 56))(v41, 0, 1, v48);
    v49 = swift_getKeyPath();
    MEMORY[0x28223BE20](v49);
    v50[-2] = v17;
    v50[-1] = v41;
    v53 = v17;
    sub_21BE25F0C();

    goto LABEL_19;
  }
}

double AgeRangeAlertFlowStore.dismiss(error:response:)(uint64_t a1, uint64_t a2)
{
  [sub_21BDC7650() dismissWithError:a1 response:a2];
  swift_unknownObjectRelease();

  return sub_21BDC83CC();
}

double sub_21BDC83CC()
{
  v1 = v0;
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  v6 = sub_21BE26A2C();
  v7 = sub_21BE28FFC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_21BB35000, v6, v7, "AgeRangeAlertFlowStore (Extension): invalidating", v8, 2u);
    MEMORY[0x21CF05C50](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__connection;
  v10 = *(v1 + OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__connection);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  [v11 invalidate];

  v12 = *(v1 + v9);
  *(v1 + v9) = 0;

  v13 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__ageRangeRequestModel;
  swift_beginAccess();
  if (*(v1 + v13))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v16[-2] = v1;
    v16[-1] = 0;
    v16[2] = v1;
    sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore, protocol conformance descriptor for AgeRangeAlertFlowStore);
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BDC864C(const char **a1)
{
  [sub_21BDC7650() *a1];

  return swift_unknownObjectRelease();
}

id AgeRangeAlertFlowStore.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__ageRangeRequestModel] = 0;
  v2 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__clientMetadata;
  v3 = sub_21BE2632C();
  v4 = *(*(v3 - 8) + 56);
  v4(&v0[v2], 1, 1, v3);
  v4(&v0[v2], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__ageRangeAlertModel] = 0;
  *&v0[OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__privacyVersion] = 0;
  *&v0[OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__connection] = 0;
  sub_21BE25F4C();
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id AgeRangeAlertFlowStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21BDC88F4()
{
  result = [objc_allocWithZone(type metadata accessor for AgeRangeAlertFlowStore(0)) init];
  qword_27CDBD148 = result;
  return result;
}

id static AgeRangeAlertFlowStoreKey.defaultValue.getter()
{
  if (qword_27CDB4FF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27CDBD148;

  return v0;
}

void static AgeRangeAlertFlowStoreKey.defaultValue.setter(uint64_t a1)
{
  if (qword_27CDB4FF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CDBD148;
  qword_27CDBD148 = a1;
}

uint64_t (*static AgeRangeAlertFlowStoreKey.defaultValue.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27CDB4FF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_21BDC8AB4@<X0>(void *a1@<X8>)
{
  if (qword_27CDB4FF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CDBD148;
  *a1 = qword_27CDBD148;

  return v2;
}

void sub_21BDC8B40(id *a1)
{
  v1 = qword_27CDB4FF0;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_27CDBD148;
  qword_27CDBD148 = v2;
}

uint64_t sub_21BDC8BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21BDCEF1C(&qword_27CDBD258, type metadata accessor for AgeRangeAlertFlowStore, MEMORY[0x277D85380]);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

void (*EnvironmentValues.flowStore.modify(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  a1[3] = sub_21BDC6168();
  sub_21BE2755C();
  return sub_21BDC8CBC;
}

void sub_21BDC8CBC(uint64_t a1, char a2)
{
  v2 = *a1;
  *(a1 + 8) = *a1;
  if (a2)
  {
    v4 = v2;
    sub_21BE2756C();
    v5 = *a1;
  }

  else
  {
    sub_21BE2756C();
  }
}

void sub_21BDC8D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_21BE28D6C();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_21BDCEEF4();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_21BE295EC();
    MEMORY[0x21CF03CA0](0xD00000000000003FLL, 0x800000021BE61E30);
    v11 = sub_21BE29BBC();
    MEMORY[0x21CF03CA0](v11);

    MEMORY[0x21CF03CA0](46, 0xE100000000000000);
    sub_21BE2978C();
    __break(1u);
  }
}

void AgeRangeAlertFlowStore.handlePrimaryButtonAction(ageRangeContext:ageRangeController:openURL:)(void **a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  swift_getKeyPath();
  v28[0] = v4;
  sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore, protocol conformance descriptor for AgeRangeAlertFlowStore);
  sub_21BE25F1C();

  v14 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__ageRangeAlertModel;
  swift_beginAccess();
  v15 = *&v4[v14];
  if (!v15)
  {
    goto LABEL_6;
  }

  v16 = v15;
  if (![v16 shouldPrompt])
  {
LABEL_5:

LABEL_6:
    v19 = sub_21BE28DAC();
    (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
    sub_21BE28D7C();
    sub_21BDC9D64(v11, v12);
    v20 = v4;
    v21 = a2;
    v22 = sub_21BE28D6C();
    v23 = swift_allocObject();
    v24 = MEMORY[0x277D85700];
    v23[2] = v22;
    v23[3] = v24;
    v23[4] = v11;
    v23[5] = v12;
    v23[6] = v13;
    v23[7] = v20;
    v23[8] = v21;
    sub_21BBA932C(0, 0, v10, &unk_21BE4D590, v23);

    return;
  }

  v17 = [v16 ageRangeResponse];
  if (v17)
  {
    v18 = v17;

    v16 = v18;
    goto LABEL_5;
  }

  sub_21BBA3854(a3, &v26, qword_27CDBD1B8, &unk_21BE4D598);
  if (v27)
  {
    sub_21BB3D104(&v26, v28);
    AgeRangeAlertFlowStore.handleLearnMoreAction(openURL:)(v28);

    __swift_destroy_boxed_opaque_existential_0Tm(v28);
  }

  else
  {

    sub_21BB3A4CC(&v26, qword_27CDBD1B8, &unk_21BE4D598);
  }
}

void AgeRangeAlertFlowStore.handleLearnMoreAction(openURL:)(void *a1)
{
  v2 = v1;
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  v11 = sub_21BE25B9C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE25B7C();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_21BB3A4CC(v10, &unk_27CDB57F0, &qword_21BE328A0);
    [sub_21BDC7650() dismissWithError:0 response:0];
    swift_unknownObjectRelease();
    sub_21BDC83CC();
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    sub_21BE261CC();
    v15 = sub_21BE26A2C();
    v16 = sub_21BE28FCC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v22[0] = v2;
      v18 = v17;
      *v17 = 0;
      _os_log_impl(&dword_21BB35000, v15, v16, "Opening learn more url.", v17, 2u);
      MEMORY[0x21CF05C50](v18, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v19 = a1[3];
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1Tm(a1, v19);
    (*(v20 + 8))(v14, v19, v20);
    [sub_21BDC7650() dismissWithError:0 response:0];
    swift_unknownObjectRelease();
    v21 = sub_21BDC83CC();
    (*(v12 + 8))(v14, v11, v21);
  }
}

uint64_t sub_21BDC9500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[12] = a4;
  sub_21BE28D7C();
  v8[17] = sub_21BE28D6C();
  v10 = sub_21BE28D0C();
  v8[18] = v10;
  v8[19] = v9;

  return MEMORY[0x2822009F8](sub_21BDC95A0, v10, v9);
}

uint64_t sub_21BDC95A0()
{
  v1 = v0[12];
  if (v1 && v1[2])
  {
    v2 = v0[13];
    v4 = v1[4];
    v3 = v1[5];
    v0[20] = v3;
    sub_21BDC9D64(v1, v2);

    v5 = swift_task_alloc();
    v0[21] = v5;
    *v5 = v0;
    v5[1] = sub_21BDC9790;
    v6 = v0[16];

    return AgeRangeAlertFlowStore.saveAgeRange(with:response:responseType:altDSID:)(v6, 1, 1, v4, v3);
  }

  else
  {

    type metadata accessor for AgeRangeError(0);
    v0[8] = -4004;
    sub_21BDCE614(MEMORY[0x277D84F90]);
    sub_21BDCEF1C(&qword_27CDB5258, type metadata accessor for AgeRangeError, byte_21BE317FC);
    sub_21BE25A6C();
    v8 = v0[7];
    v9 = sub_21BE25A7C();

    [sub_21BDC7650() dismissWithError:v9 response:0];
    swift_unknownObjectRelease();
    sub_21BDC83CC();

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_21BDC9790()
{
  v2 = *v1;
  v2[22] = v0;

  if (v0)
  {
    v3 = v2[18];
    v4 = v2[19];

    return MEMORY[0x2822009F8](sub_21BDC9BF0, v3, v4);
  }

  else
  {
    v5 = v2[16];

    v6 = v5;
    v7 = swift_task_alloc();
    v2[23] = v7;
    *v7 = v2;
    v7[1] = sub_21BDC9924;
    v8 = v2[16];

    return FamilyDeclaredAgeRangeAnalyticsPackage.init(from:)((v2 + 5), v8);
  }
}

uint64_t sub_21BDC9924()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x2822009F8](sub_21BDC9A44, v3, v2);
}

uint64_t sub_21BDC9A44()
{
  v17 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 120);

  v3 = *(v0 + 48);
  v4 = *(v0 + 49);
  v5 = *(v0 + 51);
  v13 = *(v0 + 40);
  v14 = v3;
  v15 = v4;
  v16 = v5;
  sub_21BD5EA78(&v13);
  swift_getKeyPath();
  *(v0 + 88) = v2;
  sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore, protocol conformance descriptor for AgeRangeAlertFlowStore);
  sub_21BE25F1C();

  v6 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__ageRangeAlertModel;
  swift_beginAccess();
  v7 = [*(v2 + v6) ageRangeResponse];
  v8 = sub_21BDC7650();
  if (v1)
  {
  }

  else
  {
    [v8 dismissWithError:0 response:v7];
    swift_unknownObjectRelease();
  }

  v10 = *(v0 + 96);
  v9 = *(v0 + 104);
  sub_21BDC83CC();

  sub_21BDCEF64(v10, v9);
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_21BDC9BF0()
{
  v2 = v0[12];
  v1 = v0[13];

  sub_21BDCEF64(v2, v1);
  type metadata accessor for AgeRangeError(0);
  v0[10] = -4006;
  sub_21BDCE614(MEMORY[0x277D84F90]);
  sub_21BDCEF1C(&qword_27CDB5258, type metadata accessor for AgeRangeError, byte_21BE317FC);
  sub_21BE25A6C();
  v3 = v0[9];
  v4 = sub_21BE25A7C();

  [sub_21BDC7650() dismissWithError:v4 response:0];
  swift_unknownObjectRelease();
  v5 = v0[22];
  sub_21BDC83CC();

  v6 = v0[1];

  return v6();
}

id sub_21BDC9D64(id result, void *a2)
{
  if (result)
  {

    return a2;
  }

  return result;
}

uint64_t sub_21BDC9DA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_21BBA6A64;

  return sub_21BDC9500(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t AgeRangeAlertFlowStore.saveAgeRange(with:response:responseType:altDSID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[44] = a5;
  v6[45] = v5;
  v6[42] = a3;
  v6[43] = a4;
  v6[40] = a1;
  v6[41] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  v6[46] = swift_task_alloc();
  v7 = sub_21BE25D1C();
  v6[47] = v7;
  v6[48] = *(v7 - 8);
  v6[49] = swift_task_alloc();
  v8 = sub_21BE26A4C();
  v6[50] = v8;
  v6[51] = *(v8 - 8);
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();
  sub_21BE28D7C();
  v6[55] = sub_21BE28D6C();
  v10 = sub_21BE28D0C();
  v6[56] = v10;
  v6[57] = v9;

  return MEMORY[0x2822009F8](sub_21BDCA028, v10, v9);
}

uint64_t sub_21BDCA028()
{
  v59 = v0;
  v1 = v0[45];
  swift_getKeyPath();
  v0[37] = v1;
  sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore, protocol conformance descriptor for AgeRangeAlertFlowStore);
  sub_21BE25F1C();

  v2 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__ageRangeAlertModel;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 && (v4 = [v3 ageRangeResponse], (v0[58] = v4) != 0))
  {
    v5 = v4;
    v61 = AgeRangeAlertFlowStore.getAppMetadata()();
    if (v61.bundleID.value._object)
    {
      object = v61.bundleID.value._object;
      if (v61.appID.value._object)
      {
        countAndFlagsBits = v61.bundleID.value._countAndFlagsBits;
        sub_21BE261CC();

        v8 = sub_21BE26A2C();
        v9 = sub_21BE28FCC();

        v10 = os_log_type_enabled(v8, v9);
        v11 = v0[54];
        v12 = v0[50];
        v13 = v0[51];
        if (v10)
        {
          v56 = v0[54];
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v58 = v15;
          *v14 = 136315138;
          *(v14 + 4) = sub_21BB3D81C(countAndFlagsBits, object, &v58);
          _os_log_impl(&dword_21BB35000, v8, v9, "Extension: bundleID from xpc connection: %s", v14, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v15);
          MEMORY[0x21CF05C50](v15, -1, -1);
          MEMORY[0x21CF05C50](v14, -1, -1);

          (*(v13 + 8))(v56, v12);
        }

        else
        {

          (*(v13 + 8))(v11, v12);
        }

        v31 = v0[48];
        v33 = v0[46];
        v32 = v0[47];
        v57 = [v5 lowerbound];
        v55 = [v5 upperbound];
        sub_21BE25CEC();
        (*(v31 + 56))(v33, 1, 1, v32);
        v54 = [v5 validationLevel];
        v34 = sub_21BE289CC();
        v35 = sub_21BE289CC();

        v36 = sub_21BE25CAC();
        if ((*(v31 + 48))(v33, 1, v32) == 1)
        {
          v37 = 0;
        }

        else
        {
          v39 = v0[47];
          v38 = v0[48];
          v40 = v0[46];
          v37 = sub_21BE25CAC();
          (*(v38 + 8))(v40, v39);
        }

        v41 = v0[48];
        v52 = v0[47];
        v53 = v0[49];
        v42 = v0[41];
        v0[59] = [objc_allocWithZone(MEMORY[0x277D08200]) initWithAltDSID:v34 bundleID:v35 lowerbound:v57 upperbound:v55 response:v42 responseType:1 createdAt:v36 invalidatedAt:v37 validationLevel:v54];

        (*(v41 + 8))(v53, v52);
        if (v42 == 1 && !v0[42])
        {
          v43 = v0 + 10;
          v47 = v0[40];
          v48 = sub_21BE289CC();
          v0[60] = v48;

          v49 = [v5 lowerbound];
          v0[61] = v49;
          v50 = [v5 upperbound];
          v0[62] = v50;
          v0[10] = v0;
          v0[11] = sub_21BDCA8B0;
          v51 = swift_continuation_init();
          v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB97F8, &qword_21BE40530);
          v0[26] = MEMORY[0x277D85DD0];
          v0[27] = 1107296256;
          v0[28] = sub_21BCF8794;
          v0[29] = &block_descriptor_26;
          v0[30] = v51;
          [v47 postAgeRangeNotificationWith:v48 lowerAgeBound:v49 upperAgeBound:v50 completion:v0 + 26];
        }

        else
        {

          v43 = v0 + 2;
          v44 = v0[59];
          v45 = v0[40];
          v0[2] = v0;
          v0[3] = sub_21BDCAB18;
          v46 = swift_continuation_init();
          v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB97F8, &qword_21BE40530);
          v0[18] = MEMORY[0x277D85DD0];
          v0[19] = 1107296256;
          v0[20] = sub_21BCF8794;
          v0[21] = &block_descriptor_57;
          v0[22] = v46;
          [v45 saveAgeRangeWith:v44 completion:v0 + 18];
        }

        return MEMORY[0x282200938](v43);
      }
    }

    sub_21BE261CC();
    v24 = sub_21BE26A2C();
    v25 = sub_21BE28FCC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_21BB35000, v24, v25, "Extension: Failed to save age range from extension, nil bundleID", v26, 2u);
      MEMORY[0x21CF05C50](v26, -1, -1);
    }

    v27 = v0[53];
    v28 = v0[50];
    v29 = v0[51];

    (*(v29 + 8))(v27, v28);
    type metadata accessor for AgeRangeError(0);
    v0[39] = -4014;
    sub_21BDCE614(MEMORY[0x277D84F90]);
    sub_21BDCEF1C(&qword_27CDB5258, type metadata accessor for AgeRangeError, byte_21BE317FC);
    sub_21BE25A6C();
    swift_willThrow();

    v23 = v0[1];
  }

  else
  {

    sub_21BE261CC();
    v16 = sub_21BE26A2C();
    v17 = sub_21BE28FCC();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[51];
    v19 = v0[52];
    v21 = v0[50];
    if (v18)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_21BB35000, v16, v17, "Extension: Skipping saving age range from extension, nil ageRangeResponse", v22, 2u);
      MEMORY[0x21CF05C50](v22, -1, -1);
    }

    (*(v20 + 8))(v19, v21);

    v23 = v0[1];
  }

  return v23();
}

uint64_t sub_21BDCA8B0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 504) = v2;
  v3 = *(v1 + 456);
  v4 = *(v1 + 448);
  if (v2)
  {
    v5 = sub_21BDCACF8;
  }

  else
  {
    v5 = sub_21BDCA9E0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BDCA9E0()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 480);

  v3 = *(v0 + 472);
  v4 = *(v0 + 320);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_21BDCAB18;
  v5 = swift_continuation_init();
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB97F8, &qword_21BE40530);
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_21BCF8794;
  *(v0 + 168) = &block_descriptor_57;
  *(v0 + 176) = v5;
  [v4 saveAgeRangeWith:v3 completion:v0 + 144];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_21BDCAB18()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 512) = v2;
  v3 = *(v1 + 456);
  v4 = *(v1 + 448);
  if (v2)
  {
    v5 = sub_21BDCADCC;
  }

  else
  {
    v5 = sub_21BDCAC48;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BDCAC48()
{
  v1 = *(v0 + 464);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21BDCACF8()
{
  v1 = v0[62];
  v3 = v0[60];
  v2 = v0[61];
  v5 = v0[58];
  v4 = v0[59];

  swift_willThrow();

  v6 = v0[1];

  return v6();
}
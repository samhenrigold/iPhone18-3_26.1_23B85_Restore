uint64_t sub_2278353F8(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v5 = v1[2];
  v4 = v1[3];
  sub_2278C7340();
  sub_2278C7580();
  (*(v3 + 8))(v2, v4);
  v6 = __swift_project_boxed_opaque_existential_1((v5 + 56), *(v5 + 80));
  v7 = *(*v6 + 144);
  if (v7 < 2)
  {
    goto LABEL_6;
  }

  v8 = *(*v6 + 136);
  v9 = v7;
  if ([v8 isPausedForActivitySummaryCacheIndex_] || (sub_2278C79E0() & 1) == 0 || sub_2278C7A00() < 2)
  {
    sub_227836DCC(v7);
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6190, &qword_2278CADF8);
  v13 = sub_2278C6E60();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2278C9140;
  *(v10 + v15) = v9;
  (*(v14 + 104))(v10 + v15, *MEMORY[0x277D09920], v13);
LABEL_7:

  v11 = v1[1];

  return v11(v10);
}

uint64_t sub_2278355FC()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6198, &qword_2278CAE00);
  v1[3] = swift_task_alloc();
  v2 = sub_2278C7280();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_2278C75A0();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227835750, 0, 0);
}

uint64_t sub_227835750(uint64_t a1)
{
  v3 = v1[8];
  v2 = v1[9];
  v4 = v1[7];
  v5 = v1[2];
  sub_2278C7340();
  sub_2278C7580();
  (*(v3 + 8))(v2, v4);
  v6 = *(*__swift_project_boxed_opaque_existential_1((v5 + 56), *(v5 + 80)) + 144);
  v1[10] = v6;
  if (v6 >= 2)
  {
    __swift_project_boxed_opaque_existential_1((v1[2] + 480), *(v1[2] + 504));
    v9 = v6;
    v10 = swift_task_alloc();
    v1[11] = v10;
    *v10 = v1;
    v10[1] = sub_2278358F0;
    v11 = v1[3];

    return sub_2278A9AAC(v11, v9);
  }

  else
  {

    v7 = v1[1];

    return v7(0);
  }
}

uint64_t sub_2278358F0()
{

  return MEMORY[0x2822009F8](sub_2278359EC, 0, 0);
}

uint64_t sub_2278359EC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = *(v0 + 80);
  if (v4 == 1)
  {
    sub_227836DCC(*(v0 + 80));
    sub_227802FC4(v3, &qword_27D7D6198, &qword_2278CAE00);
    v6 = 0;
  }

  else
  {
    v7 = *(v0 + 48);
    (*(v2 + 32))(v7, v3, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6190, &qword_2278CADF8);
    v8 = sub_2278C6E60();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_2278C9140;
    (*(v2 + 16))(v6 + v10, v7, v1);
    (*(v9 + 104))(v6 + v10, *MEMORY[0x277D09918], v8);
    sub_227836DCC(v5);
    (*(v2 + 8))(v7, v1);
  }

  v11 = *(v0 + 8);

  return v11(v6);
}

uint64_t sub_227835BFC()
{
  v1[2] = v0;
  v2 = sub_2278C75A0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227835CBC, 0, 0);
}

uint64_t sub_227835CBC(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v5 = v1[2];
  v4 = v1[3];
  sub_2278C7340();
  sub_2278C7580();
  (*(v3 + 8))(v2, v4);
  v6 = __swift_project_boxed_opaque_existential_1((v5 + 56), *(v5 + 80));
  v7 = *(*v6 + 144);
  if (v7 < 2)
  {
    goto LABEL_8;
  }

  v8 = *(*v6 + 136);
  v9 = v7;
  if ([v8 isPausedForActivitySummaryCacheIndex_] || (sub_2278C79E0() & 1) == 0 || sub_2278C7A00() < 1)
  {
    sub_227836DCC(v7);
LABEL_8:
    v15 = 0;
    goto LABEL_9;
  }

  v10 = *(v1[2] + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6190, &qword_2278CADF8);
  v11 = sub_2278C6E60();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  v15 = v14;
  *(v14 + 16) = xmmword_2278C9140;
  if (v10 == 1)
  {
    *(v14 + v13) = v9;
    (*(v12 + 104))(v14 + v13, *MEMORY[0x277D09920], v11);
  }

  else
  {
    (*(v12 + 104))(v14 + v13, *MEMORY[0x277D098C8], v11);
    sub_227836DCC(v7);
  }

LABEL_9:

  v16 = v1[1];

  return v16(v15);
}

uint64_t sub_227835F08()
{
  v1[2] = v0;
  v2 = sub_2278C75A0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227835FC8, 0, 0);
}

uint64_t sub_227835FC8(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v5 = v1[2];
  v4 = v1[3];
  sub_2278C7340();
  sub_2278C7580();
  (*(v3 + 8))(v2, v4);
  v6 = __swift_project_boxed_opaque_existential_1((v5 + 56), *(v5 + 80));
  v7 = *(*v6 + 144);
  if (v7 >= 2)
  {
    v8 = *(*v6 + 136);
    v9 = v7;
    if (![v8 isPausedForActivitySummaryCacheIndex_] && (sub_2278C79E0() & 1) != 0)
    {
      __swift_project_boxed_opaque_existential_1((v5 + 56), *(v5 + 80));
      if (sub_22784BFA4(0.5))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6190, &qword_2278CADF8);
        v10 = sub_2278C6E60();
        v11 = *(v10 - 8);
        v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_2278C9140;
        *(v13 + v12) = v9;
        (*(v11 + 104))(v13 + v12, *MEMORY[0x277D09900], v10);
        goto LABEL_8;
      }
    }

    sub_227836DCC(v7);
  }

  v13 = 0;
LABEL_8:

  v14 = v1[1];

  return v14(v13);
}

uint64_t sub_2278361E8()
{
  v1[2] = v0;
  v2 = sub_2278C75A0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278362A8, 0, 0);
}

uint64_t sub_2278362A8(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v5 = v1[2];
  v4 = v1[3];
  sub_2278C7340();
  sub_2278C7580();
  (*(v3 + 8))(v2, v4);
  v6 = __swift_project_boxed_opaque_existential_1((v5 + 56), *(v5 + 80));
  v7 = *(*v6 + 144);
  if (v7 >= 2)
  {
    v9 = *(*v6 + 136);
    v10 = v7;
    if ([v9 isPausedForActivitySummaryCacheIndex_])
    {
      sub_227836DCC(v7);
      v8 = 0;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6190, &qword_2278CADF8);
      v11 = sub_2278C6E60();
      v12 = *(v11 - 8);
      v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_2278C9140;
      *(v8 + v13) = v10;
      (*(v12 + 104))(v8 + v13, *MEMORY[0x277D098F8], v11);
    }
  }

  else
  {
    v8 = 0;
  }

  v14 = v1[1];

  return v14(v8);
}

uint64_t sub_2278364A4(uint64_t a1, char a2, double a3)
{
  *(v4 + 368) = a2;
  *(v4 + 352) = a1;
  *(v4 + 360) = v3;
  *(v4 + 344) = a3;
  return MEMORY[0x2822009F8](sub_2278364CC, 0, 0);
}

uint64_t sub_2278364CC()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 344);
  v3 = *(v0 + 368);
  __swift_project_boxed_opaque_existential_1((*(v0 + 360) + 392), *(*(v0 + 360) + 416));
  LOBYTE(v1) = sub_2278B7BE4(v1, v3 & 1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6148, &unk_2278CD390);
  if (v1 & 1) == 0 || (v3)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2278C9140;
    *(v0 + 296) = sub_2278C7700();
    *(v0 + 304) = v10;
    sub_2278C7BF0();
    *(inited + 96) = MEMORY[0x277D83B88];
    *(inited + 72) = 1;
    v8 = sub_2278C3BA4(inited);
    swift_setDeallocating();
    sub_227802FC4(inited + 32, &qword_27D7D6150, &unk_2278CAAE0);
  }

  else
  {
    v4 = *(v0 + 352);
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_2278C9F50;
    *(v0 + 312) = sub_2278C7700();
    *(v0 + 320) = v6;
    sub_2278C7BF0();
    *(v5 + 96) = MEMORY[0x277D83B88];
    *(v5 + 72) = 5;
    *(v0 + 328) = sub_2278C7700();
    *(v0 + 336) = v7;
    sub_2278C7BF0();
    *(v5 + 168) = MEMORY[0x277D839F8];
    *(v5 + 144) = v4;
    v8 = sub_2278C3BA4(v5);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6150, &unk_2278CAAE0);
    swift_arrayDestroy();
  }

  v11 = *(v0 + 8);

  return v11(v8);
}

uint64_t sub_2278366EC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_2278C6F40();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_2278C7180();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_2278C6E60();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22783687C, 0, 0);
}

uint64_t sub_22783687C(uint64_t a1)
{
  v2 = sub_2278C6F60();
  if (*(v2 + 16))
  {
    v3 = v1[14];
    v4 = v1[15];
    v6 = v1[12];
    v5 = v1[13];
    v7 = v1[11];
    v8 = *(v6 + 16);
    v8(v3, v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v7);

    (*(v6 + 32))(v4, v3, v7);
    v8(v5, v4, v7);
    v9 = (*(v6 + 88))(v5, v7);
    if (v9 == *MEMORY[0x277D098E0])
    {
      v10 = v1[15];
      v12 = v1[12];
      v11 = v1[13];
      v14 = v1[10];
      v13 = v1[11];
      v15 = v1[8];
      v16 = v1[9];
      v17 = v1[4];
      (*(v12 + 96))(v11, v13);
      v18 = *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6188, &qword_2278CADF0) + 48));
      (*(v16 + 32))(v14, v11, v15);
      __swift_project_boxed_opaque_existential_1((v17 + 392), *(v17 + 416));
      sub_2278C7170();
      v20 = sub_2278B7BE4(v18, 0, v19);
      (*(v16 + 8))(v14, v15);
      (*(v12 + 8))(v10, v13);
      goto LABEL_9;
    }

    v21 = v1[15];
    v23 = v1[12];
    v22 = v1[13];
    v24 = v1[11];
    if (v9 == *MEMORY[0x277D09910])
    {
      v26 = v1[6];
      v25 = v1[7];
      v27 = v1[4];
      v28 = v1[5];
      (*(v23 + 96))(v22, v24);
      v29 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6170, &qword_2278CADE0) + 48);
      v36 = *v29;
      v35 = *(v29 + 8);
      (*(v26 + 32))(v25, v22, v28);
      __swift_project_boxed_opaque_existential_1((v27 + 392), *(v27 + 416));
      v1[2] = sub_2278C6F30();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6178, &qword_2278CADE8);
      sub_227836D00();
      sub_2278C7920();
      v31 = v30;

      v20 = sub_2278B7BE4(v36, v35, v31);
      (*(v26 + 8))(v25, v28);
      (*(v23 + 8))(v21, v24);
      goto LABEL_9;
    }

    v32 = *(v23 + 8);
    v32(v1[15], v1[11]);
    v32(v22, v24);
  }

  else
  {
  }

  v20 = 0;
LABEL_9:

  v33 = v1[1];

  return v33(v20 & 1);
}

void *sub_227836C28()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0(v0 + 49);
  __swift_destroy_boxed_opaque_existential_0(v0 + 54);
  __swift_destroy_boxed_opaque_existential_0(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0(v0 + 65);
  return v0;
}

uint64_t sub_227836CA8()
{
  sub_227836C28();

  return swift_deallocClassInstance();
}

unint64_t sub_227836D00()
{
  result = qword_27D7D6180;
  if (!qword_27D7D6180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7D6178, &qword_2278CADE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D6180);
  }

  return result;
}

uint64_t sub_227836D64(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v3 = sub_2278C7700();
  v4 = *(*(v2 + 64) + 40);
  *v4 = v3;
  v4[1] = v5;

  return MEMORY[0x282200948](v2);
}

void sub_227836DCC(id a1)
{
  if (a1 != 1)
  {
  }
}

unint64_t sub_227836E08(uint64_t a1, unint64_t a2)
{
  v4 = sub_2278C75A0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - v9;
  v11 = objc_allocWithZone(MEMORY[0x277CE8CE0]);
  v12 = sub_2278C6660();
  v13 = [v11 initWithData_];

  if (v13)
  {
    v14 = [objc_allocWithZone(MEMORY[0x277CE8CB0]) initWithCodable_];
    sub_227839268(0, &qword_2813B9B00, 0x277CBEB38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61D0, qword_2278CB330);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_2278C9140;
    v16 = sub_2278C7700();
    v17 = MEMORY[0x277D837D0];
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    *(v15 + 88) = MEMORY[0x277D83B88];
    *(v15 + 56) = v17;
    *(v15 + 64) = 4;
    sub_227839268(0, &qword_2813B9B70, 0x277CBEAC0);
    v19 = sub_2278C7940();
    v20 = sub_2278C7930();

    ACHEncodeAchievementIntoUserInfoDictionary();
    v40 = 0;
    v21 = v20;
    sub_2278C7650();

    v22 = v40;
    if (v40)
    {
    }

    else
    {
      sub_2278C7340();
      v30 = v21;
      v31 = sub_2278C7590();
      v32 = sub_2278C7950();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v39 = v4;
        v34 = v33;
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        *(v34 + 4) = v30;
        *v35 = v20;
        v36 = v30;
        _os_log_impl(&dword_2277F7000, v31, v32, "Unable to encode achievement into dictionary: %@", v34, 0xCu);
        sub_227802FC4(v35, &qword_27D7D64B0, &qword_2278CA010);
        MEMORY[0x22AA9E860](v35, -1, -1);
        v37 = v34;
        v4 = v39;
        MEMORY[0x22AA9E860](v37, -1, -1);
      }

      (*(v5 + 8))(v10, v4);
      v22 = sub_2278C3BA4(MEMORY[0x277D84F90]);
    }
  }

  else
  {
    sub_2278C7340();
    sub_227837280(a1, a2);
    v23 = sub_2278C7590();
    v24 = sub_2278C7950();
    sub_2278372D4(a1, a2);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v40 = v26;
      *v25 = 136315138;
      v27 = sub_2278C6650();
      v29 = sub_2278021B4(v27, v28, &v40);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_2277F7000, v23, v24, "Unable to decode achievement from data: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AA9E860](v26, -1, -1);
      MEMORY[0x22AA9E860](v25, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    return sub_2278C3BA4(MEMORY[0x277D84F90]);
  }

  return v22;
}

uint64_t sub_227837280(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2278372D4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_227837328(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61B0, &qword_2278CAE18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227837398()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EC8C();
}

uint64_t sub_227837428(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2278004C0;

  return sub_22782EA90(a1, v4);
}

uint64_t sub_2278374E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782ED1C();
}

uint64_t sub_227837570()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F34C();
}

uint64_t sub_227837600()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_227830C50();
}

uint64_t sub_227837690()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_2278305F8();
}

uint64_t sub_227837720()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EC8C();
}

uint64_t sub_2278377B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782ED1C();
}

uint64_t sub_227837840()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EE3C();
}

uint64_t sub_2278378D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F07C();
}

uint64_t sub_227837960()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F34C();
}

uint64_t sub_2278379F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_227830968();
}

uint64_t sub_227837A80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_2278305F8();
}

uint64_t sub_227837B10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EC8C();
}

uint64_t sub_227837BA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782ED1C();
}

uint64_t sub_227837C30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EE3C();
}

uint64_t sub_227837CC0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EECC();
}

uint64_t sub_227837D50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F07C();
}

uint64_t sub_227837DE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F34C();
}

uint64_t sub_227837E70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F46C();
}

uint64_t sub_227837F00()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_227806768;

  return sub_22782FDC8(v0);
}

uint64_t sub_227837F90()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_227806768;

  return sub_22782FF2C(v0);
}

uint64_t sub_227838020()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EC8C();
}

uint64_t sub_2278380B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782ED1C();
}

uint64_t sub_227838140()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F10C();
}

uint64_t sub_2278381D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F34C();
}

uint64_t sub_227838260()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_227830090();
}

uint64_t sub_2278382F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EA00();
}

uint64_t sub_227838380()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EC8C();
}

uint64_t sub_227838410()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782ED1C();
}

uint64_t sub_2278384A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EDAC();
}

uint64_t sub_227838530()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EE3C();
}

uint64_t sub_2278385C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EF5C();
}

uint64_t sub_227838650()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22780523C;

  return sub_22782F7EC();
}

uint64_t sub_2278386E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F07C();
}

uint64_t sub_227838770()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F19C();
}

uint64_t sub_227838800()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F2BC();
}

uint64_t sub_227838890()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F97C();
}

uint64_t sub_227838920()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EA00();
}

uint64_t sub_2278389B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EC8C();
}

uint64_t sub_227838A40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782ED1C();
}

uint64_t sub_227838AD0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EDAC();
}

uint64_t sub_227838B60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EE3C();
}

uint64_t sub_227838BF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EECC();
}

uint64_t sub_227838C80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EF5C();
}

uint64_t sub_227838D10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EFEC();
}

uint64_t sub_227838DA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F07C();
}

uint64_t sub_227838E30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F10C();
}

uint64_t sub_227838EC0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F19C();
}

uint64_t sub_227838F50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F22C();
}

uint64_t sub_227838FE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F2BC();
}

uint64_t sub_227839070()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F34C();
}

uint64_t sub_227839100()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F3DC();
}

uint64_t sub_227839190()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F46C();
}

uint64_t sub_227839220(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227839268(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_2278392B0()
{
  result = qword_2813B9A98;
  if (!qword_2813B9A98)
  {
    sub_227839268(255, &qword_2813B9AA0, 0x277CE90F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813B9A98);
  }

  return result;
}

uint64_t sub_22783935C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  sub_2278040AC(v1, v59);
  sub_2278040AC(v1 + 40, v58);
  v3 = sub_2278C6FD0();
  swift_allocObject();
  v4 = sub_2278C6FC0();
  v43 = *(v2 + 80);
  sub_2278040AC(v2 + 88, v57);
  sub_2278040AC(v2 + 128, v56);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v58, v58[3]);
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v57, v57[3]);
  MEMORY[0x28223BE20](v9);
  v11 = (&v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v56, v56[3]);
  MEMORY[0x28223BE20](v13);
  v15 = (&v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v11;
  v18 = *v15;
  v19 = type metadata accessor for DateProvider(0);
  v54 = v19;
  v55 = &off_283AE99D8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v53);
  sub_2278238F8(v7, boxed_opaque_existential_1);
  v52 = MEMORY[0x277D09A20];
  v51 = v3;
  *&v50 = v4;
  v49[3] = &type metadata for PauseRingsSampleQuery;
  v49[4] = &off_283AECC40;
  v49[0] = v17;
  v21 = type metadata accessor for NotificationRequestScheduler();
  v48[3] = v21;
  v48[4] = &off_283AEA0D0;
  v48[0] = v18;
  v22 = type metadata accessor for PauseRingsService();
  v23 = swift_allocObject();
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v53, v54);
  MEMORY[0x28223BE20](v24);
  v26 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26);
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v49, &type metadata for PauseRingsSampleQuery);
  MEMORY[0x28223BE20](v28);
  v30 = (&v43 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v48, v21);
  MEMORY[0x28223BE20](v32);
  v34 = (&v43 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = *v30;
  v37 = *v34;
  v46 = v19;
  v47 = &off_283AE99D8;
  v38 = __swift_allocate_boxed_opaque_existential_1(&v45);
  sub_2278238F8(v26, v38);
  v23[21] = &type metadata for PauseRingsSampleQuery;
  v23[22] = &off_283AECC40;
  v23[18] = v36;
  v23[26] = v21;
  v23[27] = &off_283AEA0D0;
  v23[23] = v37;
  sub_2277F9D0C(v59, (v23 + 2));
  sub_2277F9D0C(&v45, (v23 + 7));
  sub_2277F9D0C(&v50, (v23 + 12));
  v39 = v43;
  v23[17] = v43;
  v40 = v39;
  __swift_destroy_boxed_opaque_existential_0(v48);
  __swift_destroy_boxed_opaque_existential_0(v49);
  __swift_destroy_boxed_opaque_existential_0(v53);
  __swift_destroy_boxed_opaque_existential_0(v56);
  __swift_destroy_boxed_opaque_existential_0(v57);
  result = __swift_destroy_boxed_opaque_existential_0(v58);
  v42 = v44;
  v44[3] = v22;
  v42[4] = &off_283AE9FE8;
  *v42 = v23;
  return result;
}

uint64_t sub_227839950()
{
  v0 = sub_2278C75A0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C73A0();
  v4 = sub_2278C7590();
  v5 = sub_2278C7970();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2277F7000, v4, v5, "Biome subscription completed", v6, 2u);
    MEMORY[0x22AA9E860](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_227839A84(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_227839AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  v8 = sub_2278C75A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C73A0();
  v12 = sub_2278C7590();
  v13 = sub_2278C7970();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2277F7000, v12, v13, "Received first pickup event", v14, 2u);
    MEMORY[0x22AA9E860](v14, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  v15 = sub_2278C7840();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a2;
  v16[5] = a3;

  sub_22788B134(0, 0, v7, &unk_2278CB450, v16);
}

uint64_t sub_227839D18(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_227839D78(void *a1)
{
  v2 = sub_2278C75A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C73A0();
  v6 = sub_2278C7590();
  v7 = sub_2278C7970();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2277F7000, v6, v7, "Canceling Biome registration", v8, 2u);
    MEMORY[0x22AA9E860](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return [a1 cancel];
}

id sub_227839EC8(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v58 = a1;
  v2 = sub_2278C75A0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v59 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v54 - v6;
  sub_2278C73A0();
  sub_2278C7580();
  v8 = *(v3 + 8);
  v61 = v3 + 8;
  v62 = v2;
  v60 = v8;
  v8(v7, v2);
  v9 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  v10 = objc_opt_self();
  v11 = sub_2278C76F0();
  v12 = [v10 withClassName:v11 selector:sel_firstEventOfDayWithEvent_timestamp_lastTimestampBuffer_dayStartOffset_];

  v13 = sub_227822F54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61D0, qword_2278CB330);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D837D0];
  *(v14 + 16) = xmmword_2278C9140;
  *(v14 + 56) = v15;
  strcpy((v14 + 32), "dayStartOffset");
  *(v14 + 47) = -18;
  *(v14 + 88) = sub_227839268(0, &qword_2813B9A80, 0x277CCABB0);
  *(v14 + 64) = v13;
  sub_227839268(0, &qword_2813B9B70, 0x277CBEAC0);
  v16 = sub_2278C7940();
  v17 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v18 = [v17 ScreenLocked];
  swift_unknownObjectRelease();
  v57 = v18;
  v19 = [v18 DSLPublisher];
  v20 = v9;
  v21 = sub_2278C76F0();
  v22 = [v19 insertState:v20 as:v21];

  v56 = v20;
  v23 = v16;
  v24 = sub_2278C76F0();
  v25 = [v22 insertState:v23 as:v24];

  v26 = sub_2278C76F0();
  v27 = sub_2278C7A70();
  v28 = [v25 filterWithKeyPath:v26 value:v27];

  v29 = v12;
  sub_2278A69C8(&unk_283AE9058);
  v30 = sub_2278C7790();

  v31 = [v28 mapWithTransform:v29 keyPaths:v30];

  v32 = sub_2278C76F0();
  v33 = sub_2278C7A70();
  v34 = [v31 filterWithKeyPath:v32 comparison:1 value:v33];

  sub_227839268(0, &qword_2813B9B10, 0x277D85C78);
  v35 = sub_2278C7A60();
  v36 = objc_allocWithZone(MEMORY[0x277CF1918]);
  v37 = sub_2278C76F0();
  v38 = [v36 initWithIdentifier:v37 targetQueue:v35];

  v39 = [v34 subscribeOn_];
  v67 = sub_227839950;
  v68 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v64 = 1107296256;
  v65 = sub_227839A84;
  v66 = &block_descriptor_8;
  v40 = _Block_copy(&aBlock);
  v41 = swift_allocObject();
  v42 = v55;
  *(v41 + 16) = v58;
  *(v41 + 24) = v42;
  v67 = sub_22783A63C;
  v68 = v41;
  aBlock = MEMORY[0x277D85DD0];
  v64 = 1107296256;
  v65 = sub_227839D18;
  v66 = &block_descriptor_4;
  v43 = _Block_copy(&aBlock);

  v44 = [v39 sinkWithCompletion:v40 receiveInput:v43];
  _Block_release(v43);
  _Block_release(v40);

  v45 = v59;
  sub_2278C73A0();
  v46 = v45;
  v47 = sub_2278C7590();
  v48 = sub_2278C7970();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_2277F7000, v47, v48, "Subscribed for first pickup event with Biome", v49, 2u);
    MEMORY[0x22AA9E860](v49, -1, -1);
    v50 = v23;
    v51 = v29;
    v52 = v56;
    v29 = v57;
  }

  else
  {
    v52 = v47;
    v47 = v56;
    v50 = v57;
    v51 = v34;
    v34 = v23;
  }

  v60(v46, v62);
  return v44;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22783A644(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278003CC;

  return sub_227829B14(a1, v4, v5, v6);
}

uint64_t sub_22783A70C(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2278004C0;

  return v7(a1, a2);
}

uint64_t sub_22783A824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2278004C0;

  return v9(a1, a2, a3);
}

uint64_t sub_22783A950(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2278004C0;

  return v7(a1, a2);
}

uint64_t sub_22783AA68(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2278004C0;

  return v7(a1, a2);
}

uint64_t sub_22783AB80(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2278003CC;

  return v7(a1, a2);
}

uint64_t sub_22783AC98()
{
  v1 = v0;
  v2 = sub_2278C75A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Pickup = type metadata accessor for FirstPickupObserver.State(0);
  MEMORY[0x28223BE20](Pickup);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver_state;
  swift_beginAccess();
  sub_22783F1E8(v1 + v9, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v12 = *v8;
    v13 = v8[8];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v11 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61E0, &unk_2278CB5F0) + 48)];
    v12 = *v11;
    v13 = v11[8];
    v14 = sub_2278C6820();
    (*(*(v14 - 8) + 8))(v8, v14);
LABEL_5:
    sub_22783D5C0(v12, v13);

    goto LABEL_9;
  }

  sub_2278C73A0();
  v15 = sub_2278C7590();
  v16 = sub_2278C7970();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2277F7000, v15, v16, "De-initialized before activation", v17, 2u);
    MEMORY[0x22AA9E860](v17, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
LABEL_9:
  __swift_destroy_boxed_opaque_existential_0((v1 + 112));
  __swift_destroy_boxed_opaque_existential_0((v1 + 152));
  __swift_destroy_boxed_opaque_existential_0((v1 + 192));
  __swift_destroy_boxed_opaque_existential_0((v1 + 232));

  sub_22780117C(*(v1 + 288), *(v1 + 296));
  sub_22783F24C(v1 + v9);
  __swift_destroy_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver_store));
  v18 = OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver__biomeFirstPickupEnabled;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61D8, &qword_2278CB5D8);
  (*(*(v19 - 8) + 8))(v1 + v18, v19);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_22783AF94()
{
  sub_22783AC98();

  return MEMORY[0x282200960](v0);
}

void sub_22783AFE8(uint64_t a1)
{
  type metadata accessor for FirstPickupObserver.State(319);
  if (v1 <= 0x3F)
  {
    sub_22783DCF0();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

id sub_22783B0EC()
{
  v0 = sub_2278C75A0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C73A0();
  v4 = sub_2278C7590();
  v5 = sub_2278C7970();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2277F7000, v4, v5, "Registering for Duet screen unlock events", v6, 2u);
    MEMORY[0x22AA9E860](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  v7 = swift_allocObject();
  swift_weakInit();

  v8 = sub_227829DD8(1u, &unk_2278CB618, v7);

  return v8;
}

uint64_t sub_22783B2CC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_227821F5C;

    return sub_22783B678();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

id sub_22783B3B4()
{
  v0 = sub_2278C75A0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C73A0();
  v4 = sub_2278C7590();
  v5 = sub_2278C7970();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2277F7000, v4, v5, "Registering for Biome screen unlock events", v6, 2u);
    MEMORY[0x22AA9E860](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  v7 = swift_allocObject();
  swift_weakInit();

  v8 = sub_227839EC8(&unk_2278CB608, v7);

  return v8;
}

uint64_t sub_22783B590()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_22783F4DC;

    return sub_22783B678();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_22783B678()
{
  v1[5] = v0;
  v2 = sub_2278C6820();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = type metadata accessor for FirstPickupObserver.State(0);
  v1[10] = swift_task_alloc();
  v3 = sub_2278C75A0();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22783B7D0, v0, 0);
}

uint64_t sub_22783B7D0(uint64_t a1)
{
  sub_2278C73A0();
  v2 = sub_2278C7590();
  v3 = sub_2278C7970();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2277F7000, v2, v3, "Screen unlocked", v4, 2u);
    MEMORY[0x22AA9E860](v4, -1, -1);
  }

  v5 = *(v1 + 112);
  v6 = *(v1 + 88);
  v7 = *(v1 + 96);
  v8 = *(v1 + 80);
  v9 = *(v1 + 40);

  v10 = *(v7 + 8);
  v10(v5, v6);
  v11 = OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver_state;
  swift_beginAccess();
  sub_22783F1E8(v9 + v11, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v19 = *(v1 + 80);
    v17 = *v19;
    v18 = *(v19 + 8);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v13 = *(v1 + 80);
    v14 = *(v1 + 48);
    v15 = *(v1 + 56);
    v16 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61E0, &unk_2278CB5F0) + 48);
    v17 = *v16;
    v18 = *(v16 + 8);
    (*(v15 + 8))(v13, v14);
LABEL_7:
    *(v1 + 136) = v18;
    *(v1 + 120) = v17;
    v20 = *(v1 + 64);
    __swift_project_boxed_opaque_existential_1((*(v1 + 40) + 152), *(*(v1 + 40) + 176));
    v21 = off_283AE99E0;
    type metadata accessor for DateProvider(0);
    v21(v20);
    v22 = swift_task_alloc();
    *(v1 + 128) = v22;
    *v22 = v1;
    v22[1] = sub_22783BB04;
    v23 = *(v1 + 64);

    return sub_22783BCDC(v23, v17, v18);
  }

  sub_2278C73A0();
  v25 = sub_2278C7590();
  v26 = sub_2278C7960();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2277F7000, v25, v26, "Screen lock called before activation", v27, 2u);
    MEMORY[0x22AA9E860](v27, -1, -1);
  }

  v10(*(v1 + 104), *(v1 + 88));

  v28 = *(v1 + 8);

  return v28();
}

uint64_t sub_22783BB04()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 56);
  v6 = *v0;

  (*(v3 + 8))(*(v1 + 64), *(v1 + 48));

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_22783BCDC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 48) = a2;
  *(v4 + 56) = v3;
  *(v4 + 192) = a3;
  *(v4 + 40) = a1;
  *(v4 + 64) = type metadata accessor for FirstPickupObserver.State(0);
  *(v4 + 72) = swift_task_alloc();
  v5 = sub_2278C75A0();
  *(v4 + 80) = v5;
  *(v4 + 88) = *(v5 - 8);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  v6 = sub_2278C6920();
  *(v4 + 112) = v6;
  *(v4 + 120) = *(v6 - 8);
  *(v4 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  *(v4 + 136) = swift_task_alloc();
  v7 = sub_2278C6820();
  *(v4 + 144) = v7;
  *(v4 + 152) = *(v7 - 8);
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22783BEE8, v3, 0);
}

uint64_t sub_22783BEE8()
{
  v59 = v0;
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((*(v0 + 56) + 192), *(*(v0 + 56) + 216));
  if (sub_227855624(v1))
  {
    v2 = *(v0 + 144);
    v3 = *(v0 + 152);
    v4 = *(v0 + 136);
    __swift_project_boxed_opaque_existential_1((*(v0 + 56) + OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver_store), *(*(v0 + 56) + OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver_store + 24));
    sub_227802948(v4);
    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      sub_22783F30C(*(v0 + 136));
LABEL_15:
      v42 = *(v0 + 144);
      v43 = *(v0 + 152);
      v44 = *(v0 + 72);
      v45 = *(v0 + 48);
      v46 = *(v0 + 56);
      v47 = *(v0 + 40);
      v48 = *(v0 + 192);
      sub_227802C5C();
      v49 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61E0, &unk_2278CB5F0) + 48);
      (*(v43 + 16))(v44, v47, v42);
      *v49 = v45;
      *(v49 + 8) = v48 & 1;
      swift_storeEnumTagMultiPayload();
      v50 = OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver_state;
      swift_beginAccess();
      v51 = v45;
      sub_22783F2A8(v44, v46 + v50);
      swift_endAccess();
      v52 = swift_task_alloc();
      *(v0 + 184) = v52;
      *v52 = v0;
      v52[1] = sub_22783C4B0;

      return sub_22783C6DC();
    }

    v24 = *(v0 + 168);
    v25 = *(v0 + 152);
    v26 = *(v0 + 128);
    v27 = *(v0 + 120);
    v55 = *(v0 + 144);
    v57 = *(v0 + 112);
    v28 = *(v0 + 56);
    (*(v25 + 32))(*(v0 + 176), *(v0 + 136));
    __swift_project_boxed_opaque_existential_1((v28 + 152), *(v28 + 176));
    sub_227804920();
    __swift_project_boxed_opaque_existential_1((v28 + 152), *(v28 + 176));
    v29 = off_283AE99E0;
    type metadata accessor for DateProvider(0);
    v29(v24);
    v30 = sub_2278C68F0();
    v31 = *(v25 + 8);
    v31(v24, v55);
    (*(v27 + 8))(v26, v57);
    if ((v30 & 1) == 0)
    {
      v31(*(v0 + 176), *(v0 + 144));
      goto LABEL_15;
    }

    sub_2278C73A0();
    v32 = sub_2278C7590();
    v33 = sub_2278C7970();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_2277F7000, v32, v33, "Already set first pickup date today", v34, 2u);
      MEMORY[0x22AA9E860](v34, -1, -1);
    }

    v35 = *(v0 + 176);
    v36 = *(v0 + 144);
    v37 = *(v0 + 104);
    v38 = *(v0 + 80);
    v39 = *(v0 + 88);

    (*(v39 + 8))(v37, v38);
    sub_22783D36C();
    v31(v35, v36);
  }

  else
  {
    v6 = *(v0 + 152);
    v5 = *(v0 + 160);
    v7 = *(v0 + 144);
    v8 = *(v0 + 40);
    sub_2278C73A0();
    (*(v6 + 16))(v5, v8, v7);
    v9 = sub_2278C7590();
    v10 = sub_2278C7970();
    v11 = os_log_type_enabled(v9, v10);
    v13 = *(v0 + 152);
    v12 = *(v0 + 160);
    v14 = *(v0 + 144);
    v16 = *(v0 + 88);
    v15 = *(v0 + 96);
    v17 = *(v0 + 80);
    if (v11)
    {
      v56 = *(v0 + 80);
      v18 = swift_slowAlloc();
      v53 = v10;
      v19 = swift_slowAlloc();
      v58 = v19;
      *v18 = 136315138;
      sub_22783F494(&qword_2813BC158, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v20 = sub_2278C7DA0();
      v54 = v15;
      v22 = v21;
      (*(v13 + 8))(v12, v14);
      v23 = sub_2278021B4(v20, v22, &v58);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_2277F7000, v9, v53, "Invalid first pickup date %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x22AA9E860](v19, -1, -1);
      MEMORY[0x22AA9E860](v18, -1, -1);

      (*(v16 + 8))(v54, v56);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
      (*(v16 + 8))(v15, v17);
    }
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_22783C4B0()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_22783C5C0, v1, 0);
}

uint64_t sub_22783C5C0()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 272);
  if (qword_2813BB670 != -1)
  {
    v5 = *(v1 + 272);
    swift_once();
    v2 = v5;
  }

  [v2 postNotificationName:qword_2813BC3B0 object:?];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22783C6DC()
{
  v1[6] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61D8, &qword_2278CB5D8);
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = sub_2278C75A0();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22783C810, v0, 0);
}

uint64_t sub_22783C810(uint64_t a1)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v6 = *(v1 + 64);
  v5 = *(v1 + 72);
  v8 = *(v1 + 48);
  v7 = *(v1 + 56);
  sub_2278C73A0();
  sub_2278C7580();
  (*(v4 + 8))(v2, v3);
  sub_227802EC8(0);
  (*(v6 + 16))(v5, v8 + OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver__biomeFirstPickupEnabled, v7);
  sub_2278C6E00();
  (*(v6 + 8))(v5, v7);
  if (*(v1 + 112) == 1)
  {
    v9 = *(v1 + 48);
    v10 = *(v9 + 296);
    if (v10 != 255)
    {
      v11 = *(v9 + 288);
      *(v9 + 288) = 0;
      *(v9 + 296) = -1;
      sub_227829CA8(v11, v10 & 1);
      sub_22780117C(v11, v10);
    }
  }

  v12 = *(v1 + 8);

  return v12();
}

uint64_t sub_22783CB14()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61D8, &qword_2278CB5D8);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_2278C75A0();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22783CC54, v0, 0);
}

uint64_t sub_22783CC54(uint64_t a1)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v6 = *(v1 + 32);
  v5 = *(v1 + 40);
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  sub_2278C73A0();
  sub_2278C7580();
  v9 = *(v4 + 8);
  v9(v2, v3);
  (*(v6 + 16))(v5, v8 + OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver__biomeFirstPickupEnabled, v7);
  sub_2278C6E00();
  (*(v6 + 8))(v5, v7);
  if (*(v1 + 96) == 1)
  {
    if (sub_227802D60())
    {
      v10 = swift_task_alloc();
      *(v1 + 88) = v10;
      *v10 = v1;
      v10[1] = sub_22783CF14;

      return sub_22783D088();
    }

    v12 = (v1 + 72);
    sub_2278C73A0();
    v13 = sub_2278C7590();
    v14 = sub_2278C7970();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = "Retry disabled for activation";
      goto LABEL_10;
    }

LABEL_11:
    v16 = *v12;
    goto LABEL_12;
  }

  v12 = (v1 + 64);
  sub_2278C73A0();
  v13 = sub_2278C7590();
  v14 = sub_2278C7970();
  if (!os_log_type_enabled(v13, v14))
  {
    goto LABEL_11;
  }

  v15 = "Biome not enabled for retry";
LABEL_10:
  v16 = *v12;
  v17 = swift_slowAlloc();
  *v17 = 0;
  _os_log_impl(&dword_2277F7000, v13, v14, v15, v17, 2u);
  MEMORY[0x22AA9E860](v17, -1, -1);
LABEL_12:
  v18 = *(v1 + 48);

  v9(v16, v18);

  v19 = *(v1 + 8);

  return v19();
}

uint64_t sub_22783CF14()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22783D088()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61D8, &qword_2278CB5D8);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_2278C75A0();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22783D1B0, v0, 0);
}

uint64_t sub_22783D1B0(uint64_t a1)
{
  v3 = *(v1 + 56);
  v2 = *(v1 + 64);
  v5 = *(v1 + 40);
  v4 = *(v1 + 48);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 16);
  sub_2278C73A0();
  sub_2278C7580();
  (*(v3 + 8))(v2, v4);
  (*(v7 + 16))(v5, v8 + OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver__biomeFirstPickupEnabled, v6);
  sub_2278C6E00();
  (*(v7 + 8))(v5, v6);
  if (*(v1 + 72) == 1)
  {
    v9 = *(v1 + 16);
    if (*(v9 + 296) == 255)
    {
      v12 = sub_22783B0EC();
      v14 = v13 & 1;
      v15 = *(v9 + 288);
      *(v9 + 288) = v12;
      v16 = *(v9 + 296);
      *(v9 + 296) = v14;
      sub_22780117C(v15, v16);
    }
  }

  sub_227802EC8(1);

  v10 = *(v1 + 8);

  return v10();
}

id sub_22783D36C()
{
  v1 = v0;
  v2 = sub_2278C75A0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  if (sub_227802D60())
  {
    sub_2278C73A0();
    v9 = sub_2278C7590();
    v10 = sub_2278C7970();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2277F7000, v9, v10, "Retry enabled posting first pickup updated", v11, 2u);
      MEMORY[0x22AA9E860](v11, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    v12 = *(v1 + 272);
    if (qword_2813BB670 != -1)
    {
      v17 = *(v1 + 272);
      swift_once();
      v12 = v17;
    }

    return [v12 postNotificationName:qword_2813BC3B0 object:v1];
  }

  else
  {
    sub_2278C73A0();
    v14 = sub_2278C7590();
    v15 = sub_2278C7970();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2277F7000, v14, v15, "Retry disabled", v16, 2u);
      MEMORY[0x22AA9E860](v16, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }
}

void sub_22783D5C0(uint64_t a1, char a2)
{
  v5 = sub_2278C75A0();
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61D8, &qword_2278CB5D8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v10 - v8;
  (*(v7 + 16))(&v10 - v8, v2 + OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver__biomeFirstPickupEnabled, v6);
  sub_2278C6E00();
  (*(v7 + 8))(v9, v6);
  if ((v11 & 1) == 0)
  {
    sub_227829CA8(a1, a2 & 1);
  }
}

void sub_22783D894(void *a1, char a2)
{
  v4 = v2;
  Pickup = type metadata accessor for FirstPickupObserver.State(0);
  MEMORY[0x28223BE20](Pickup);
  v46 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61D8, &qword_2278CB5D8);
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v9 = &v41 - v8;
  v10 = sub_2278C75A0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  if ((a2 & 1) == 0)
  {
    v43 = a1;
    v44 = v3;
    v17 = a1;
    sub_2278C73A0();
    v18 = sub_2278C7590();
    v19 = sub_2278C7970();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v42 = v17;
      v21 = v4;
      v22 = v20;
      *v20 = 0;
      _os_log_impl(&dword_2277F7000, v18, v19, "Resetting biome registration", v20, 2u);
      v23 = v22;
      v4 = v21;
      v17 = v42;
      MEMORY[0x22AA9E860](v23, -1, -1);
    }

    v24 = *(v11 + 8);
    v24(v16, v10);
    sub_227839D78(v17);
    sub_2278C73A0();
    v25 = sub_2278C7590();
    v26 = sub_2278C7970();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = v4;
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2277F7000, v25, v26, "Re-registering for biome", v28, 2u);
      v29 = v28;
      v4 = v27;
      MEMORY[0x22AA9E860](v29, -1, -1);
    }

    v24(v14, v10);
    v30 = v47;
    v31 = v49;
    (*(v47 + 16))(v9, v4 + OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver__biomeFirstPickupEnabled, v49);
    sub_2278C6E00();
    (*(v30 + 8))(v9, v31);
    if (v48 == 1)
    {
      v32 = v44;
      v33 = sub_22783B3B4();
      if (v32)
      {
LABEL_8:

        return;
      }
    }

    else
    {
      v35 = v44;
      v33 = sub_22783B0EC();
      if (v35)
      {
        goto LABEL_8;
      }
    }

    v36 = v33;
    v37 = v34;
    v38 = v4;

    v39 = v46;
    *v46 = v36;
    *(v39 + 8) = v37 & 1;
    swift_storeEnumTagMultiPayload();
    v40 = OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver_state;
    swift_beginAccess();
    sub_22783F2A8(v39, v38 + v40);
    swift_endAccess();
  }
}

uint64_t sub_22783DCB8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22783DCF0()
{
  if (!qword_2813BC110)
  {
    v0 = sub_2278C6E10();
    if (!v1)
    {
      atomic_store(v0, &qword_2813BC110);
    }
  }
}

void sub_22783DD98(uint64_t a1)
{
  sub_22783DE04(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_22783DE04(uint64_t a1)
{
  if (!qword_2813BC140)
  {
    sub_2278C6820();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813BC140);
    }
  }
}

uint64_t sub_22783DE6C()
{
  v1[8] = v0;
  v1[9] = type metadata accessor for FirstPickupObserver.State(0);
  v1[10] = swift_task_alloc();
  v2 = sub_2278C6920();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  v1[14] = swift_task_alloc();
  v3 = sub_2278C6820();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61D8, &qword_2278CB5D8);
  v1[19] = v4;
  v1[20] = *(v4 - 8);
  v1[21] = swift_task_alloc();
  v5 = sub_2278C75A0();
  v1[22] = v5;
  v1[23] = *(v5 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v6 = sub_2278C7420();
  v1[26] = v6;
  v1[27] = *(v6 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22783E134, v0, 0);
}

uint64_t sub_22783E134()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[27];
  sub_2278C7430();
  sub_2278C73E0();
  sub_22783F494(&qword_2813BC0F0, MEMORY[0x277D09B28], MEMORY[0x277D09B30]);
  v5 = sub_2278C7AE0();
  v6 = *(v4 + 8);
  v6(v1, v3);
  v6(v2, v3);
  if (v5)
  {
    v7 = v0[25];
    v8 = v0[22];
    v9 = v0[23];
    sub_2278C73A0();
    sub_2278C7580();
    (*(v9 + 8))(v7, v8);
    v10 = swift_task_alloc();
    v0[30] = v10;
    *v10 = v0;
    v10[1] = sub_22783E418;

    return sub_22783CB14();
  }

  else
  {
    sub_2278C73A0();
    v12 = sub_2278C7590();
    v13 = sub_2278C7970();
    v14 = os_log_type_enabled(v12, v13);
    v16 = v0[23];
    v15 = v0[24];
    v17 = v0[22];
    if (v14)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2277F7000, v12, v13, "FirstPickupObserver not supported", v18, 2u);
      MEMORY[0x22AA9E860](v18, -1, -1);
    }

    (*(v16 + 8))(v15, v17);

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_22783E418()
{
  v2 = *v1;
  v2[31] = v0;

  if (v0)
  {

    v3 = v2[1];

    return v3();
  }

  else
  {
    v5 = v2[8];

    return MEMORY[0x2822009F8](sub_22783E5E4, v5, 0);
  }
}

uint64_t sub_22783E5E4()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  (*(v2 + 16))(v1, *(v0 + 64) + OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver__biomeFirstPickupEnabled, v3);
  sub_2278C6E00();
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 248);
  if (*(v0 + 256) == 1)
  {
    v5 = sub_22783B3B4();
    if (v4)
    {
LABEL_3:

      v7 = *(v0 + 8);
      goto LABEL_12;
    }
  }

  else
  {
    v5 = sub_22783B0EC();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v8 = v5;
  v9 = v6;
  v11 = *(v0 + 120);
  v10 = *(v0 + 128);
  v12 = *(v0 + 112);
  __swift_project_boxed_opaque_existential_1((*(v0 + 64) + OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver_store), *(*(v0 + 64) + OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver_store + 24));
  sub_227802948(v12);
  if ((*(v10 + 48))(v12, 1, v11) == 1)
  {
    sub_22783F30C(*(v0 + 112));
LABEL_10:
    v29 = *(v0 + 80);
    v30 = *(v0 + 64);
    *v29 = v8;
    *(v29 + 8) = v9 & 1;
    swift_storeEnumTagMultiPayload();
    v31 = OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver_state;
    swift_beginAccess();
    v27 = v30 + v31;
    v28 = v29;
    goto LABEL_11;
  }

  v36 = v9;
  v37 = v8;
  v13 = *(v0 + 136);
  v14 = *(v0 + 128);
  v15 = *(v0 + 104);
  v16 = *(v0 + 96);
  v34 = *(v0 + 120);
  v35 = *(v0 + 88);
  v17 = *(v0 + 64);
  v33 = *(v14 + 32);
  (v33)(*(v0 + 144), *(v0 + 112));
  __swift_project_boxed_opaque_existential_1((v17 + 152), *(v17 + 176));
  sub_227804920();
  __swift_project_boxed_opaque_existential_1((v17 + 152), *(v17 + 176));
  v18 = off_283AE99E0;
  type metadata accessor for DateProvider(0);
  v18(v13);
  v19 = sub_2278C68F0();
  v20 = *(v14 + 8);
  v20(v13, v34);
  (*(v16 + 8))(v15, v35);
  v21 = *(v0 + 144);
  v22 = *(v0 + 120);
  if ((v19 & 1) == 0)
  {
    v20(*(v0 + 144), *(v0 + 120));
    v9 = v36;
    goto LABEL_10;
  }

  v23 = *(v0 + 80);
  v24 = *(v0 + 64);
  v25 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61E0, &unk_2278CB5F0) + 48);
  v33(v23, v21, v22);
  *v25 = v37;
  *(v25 + 8) = v36 & 1;
  swift_storeEnumTagMultiPayload();
  v26 = OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver_state;
  swift_beginAccess();
  v27 = v24 + v26;
  v28 = v23;
LABEL_11:
  sub_22783F2A8(v28, v27);
  swift_endAccess();

  v7 = *(v0 + 8);
LABEL_12:

  return v7();
}

uint64_t sub_22783E9F8(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_2278C6920();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = type metadata accessor for FirstPickupObserver.State(0);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v4 = sub_2278C6820();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22783EB5C, v1, 0);
}

uint64_t sub_22783EB5C()
{
  v1 = v0[15];
  v2 = v0[9];
  v3 = OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver_state;
  swift_beginAccess();
  sub_22783F1E8(v2 + v3, v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = v0[18];
    v4 = v0[19];
    v7 = v0[16];
    v6 = v0[17];
    v22 = v7;
    v8 = v0[15];
    v21 = v0[12];
    v9 = v0[9];
    v23 = v0[11];
    v24 = v0[10];
    v10 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61E0, &unk_2278CB5F0) + 48);
    v25 = *v10;
    v26 = *(v10 + 8);
    v20 = *(v6 + 32);
    v20(v4, v8, v7);
    __swift_project_boxed_opaque_existential_1((v9 + 152), *(v9 + 176));
    sub_227804920();
    __swift_project_boxed_opaque_existential_1((v9 + 152), *(v9 + 176));
    v11 = off_283AE99E0;
    type metadata accessor for DateProvider(0);
    (v11)(v5);
    LOBYTE(v11) = sub_2278C68F0();
    v12 = *(v6 + 8);
    v12(v5, v22);
    (*(v23 + 8))(v21, v24);
    v13 = v0[19];
    v14 = v0[16];
    if (v11)
    {
      v15 = v0[8];

      v20(v15, v13, v14);
      v16 = 0;
      goto LABEL_7;
    }

    v17 = v0[14];
    v12(v0[19], v0[16]);
    *v17 = v25;
    *(v17 + 8) = v26;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_22783F2A8(v17, v2 + v3);
    swift_endAccess();
  }

  else
  {
    sub_22783F24C(v0[15]);
  }

  v16 = 1;
LABEL_7:
  (*(v0[17] + 56))(v0[8], v16, 1, v0[16]);

  v18 = v0[1];

  return v18();
}

uint64_t sub_22783EE28()
{
  v1[5] = v0;
  v1[6] = type metadata accessor for FirstPickupObserver.State(0);
  v1[7] = swift_task_alloc();
  v2 = sub_2278C75A0();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22783EF18, v0, 0);
}

uint64_t sub_22783EF18(uint64_t a1)
{
  sub_2278C73A0();
  v2 = sub_2278C7590();
  v3 = sub_2278C7970();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2277F7000, v2, v3, "Clearing stored first pickup date", v4, 2u);
    MEMORY[0x22AA9E860](v4, -1, -1);
  }

  v6 = v1[9];
  v5 = v1[10];
  v8 = v1[7];
  v7 = v1[8];
  v9 = v1[5];

  (*(v6 + 8))(v5, v7);
  sub_227803024();
  v10 = OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver_state;
  swift_beginAccess();
  sub_22783F1E8(v9 + v10, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v17 = v1[7];
    v14 = *v17;
    v15 = *(v17 + 8);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v12 = v1[7];
    v13 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61E0, &unk_2278CB5F0) + 48);
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = sub_2278C6820();
    (*(*(v16 - 8) + 8))(v12, v16);
LABEL_7:
    sub_22783D894(v14, v15);

    v20 = v1[1];
    goto LABEL_9;
  }

  v18 = sub_2278C6EA0();
  sub_22783F494(&qword_27D7D61C8, MEMORY[0x277D09980], MEMORY[0x277D09988]);
  swift_allocError();
  (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D09970], v18);
  swift_willThrow();

  v20 = v1[1];
LABEL_9:

  return v20();
}

uint64_t sub_22783F1E8(uint64_t a1, uint64_t a2)
{
  Pickup = type metadata accessor for FirstPickupObserver.State(0);
  (*(*(Pickup - 8) + 16))(a2, a1, Pickup);
  return a2;
}

uint64_t sub_22783F24C(uint64_t a1)
{
  Pickup = type metadata accessor for FirstPickupObserver.State(0);
  (*(*(Pickup - 8) + 8))(a1, Pickup);
  return a1;
}

uint64_t sub_22783F2A8(uint64_t a1, uint64_t a2)
{
  Pickup = type metadata accessor for FirstPickupObserver.State(0);
  (*(*(Pickup - 8) + 40))(a2, a1, Pickup);
  return a2;
}

uint64_t sub_22783F30C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22783F374()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2278004C0;

  return sub_22783B570(v0);
}

uint64_t sub_22783F404()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2278003CC;

  return sub_22783B2AC(v0);
}

uint64_t sub_22783F494(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22783F4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2278003CC;

  return v11(a1, a2, a3, a4);
}

double sub_22783F614(void (*a1)(double *__return_ptr, double *, id *), double a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2278C7B80())
  {
    v8 = 0;
    while (1)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x22AA9DBF0](v8, a4);
      }

      else
      {
        if (v8 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v9 = *(a4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v15 = v9;
      a1(&v14, &v16, &v15);

      if (!v4)
      {
        a2 = v14;
        v16 = v14;
        ++v8;
        if (v11 != i)
        {
          continue;
        }
      }

      return a2;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  return a2;
}

char *sub_22783F738(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61E8, &qword_2278CB6C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_2278C7260();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v31 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v28 = &v24 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v15 = *(sub_2278C6FB0() - 8);
  v25 = v10;
  v29 = (v10 + 32);
  v30 = (v10 + 48);
  v16 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v17 = *(v15 + 72);
  v32 = MEMORY[0x277D84F90];
  v26 = v9;
  v27 = a1;
  v24 = v17;
  while (1)
  {
    a1(v16);
    if (v3)
    {
      break;
    }

    if ((*v30)(v8, 1, v9) == 1)
    {
      sub_227802FC4(v8, &qword_27D7D61E8, &qword_2278CB6C0);
    }

    else
    {
      v18 = v28;
      v19 = *v29;
      (*v29)(v28, v8, v9);
      v19(v31, v18, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_227801E54(0, *(v32 + 2) + 1, 1, v32);
      }

      v21 = *(v32 + 2);
      v20 = *(v32 + 3);
      if (v21 >= v20 >> 1)
      {
        v32 = sub_227801E54((v20 > 1), v21 + 1, 1, v32);
      }

      v22 = v32;
      *(v32 + 2) = v21 + 1;
      v9 = v26;
      v19(&v22[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21], v31, v26);
      a1 = v27;
      v17 = v24;
    }

    v16 += v17;
    if (!--v14)
    {
      return v32;
    }
  }

  return v32;
}

uint64_t sub_22783FA64(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 96) = a3;
  *(v4 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61E8, &qword_2278CB6C0);
  *(v4 + 40) = swift_task_alloc();
  v5 = sub_2278C7260();
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22783FB64, 0, 0);
}

uint64_t sub_22783FB64()
{
  if (qword_27D7D5CC0 != -1)
  {
    swift_once();
  }

  v1 = qword_27D7D8858;
  if (qword_27D7D5CE0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 96);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = qword_27D7D8878;
  v6 = swift_task_alloc();
  *(v6 + 16) = &unk_283AE9440;
  *(v6 + 24) = v2;
  *(v6 + 32) = v5;
  *(v6 + 40) = v3;
  *(v6 + 48) = 2;
  *(v6 + 56) = v4;
  v7 = sub_22783F738(sub_227845AC0, v6, v1);
  *(v0 + 72) = v7;

  if (qword_27D7D5CD8 != -1)
  {
    swift_once();
  }

  v8 = qword_27D7D8870;
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *v9 = v0;
  v9[1] = sub_22783FD28;

  return sub_22784001C(v7, v8, 0.4);
}

uint64_t sub_22783FD28(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_22783FE48, 0, 0);
}

uint64_t sub_22783FE48()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  sub_2278404D8(v0[11], v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_227802FC4(v0[5], &qword_27D7D61E8, &qword_2278CB6C0);
    v4 = sub_2278C7310();
    v5 = *(v4 - 8);
    v6 = 1;
  }

  else
  {
    v7 = v0[8];
    v8 = v0[6];
    v9 = v0[2];
    v10 = *(v0[7] + 32);
    v10(v7, v0[5], v8);
    v10(v9, v7, v8);
    v11 = *MEMORY[0x277D09B08];
    v4 = sub_2278C7310();
    v5 = *(v4 - 8);
    (*(v5 + 104))(v9, v11, v4);
    v6 = 0;
  }

  (*(v5 + 56))(v0[2], v6, 1, v4);

  v12 = v0[1];

  return v12();
}

uint64_t sub_22784001C(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 40) = v3;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = sub_2278C75A0();
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278400E4, 0, 0);
}

uint64_t sub_2278400E4()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[9] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_2278401D4;
  v6 = v0[2];

  return sub_2278431E4(&unk_2278CB6D8, v4, v6);
}

uint64_t sub_2278401D4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22784034C, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_22784034C(uint64_t a1)
{
  v2 = v1[11];
  sub_2278C7340();
  v3 = v2;
  v4 = sub_2278C7590();
  v5 = sub_2278C7950();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[11];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2277F7000, v4, v5, "Error fetching best overall distance: %@", v7, 0xCu);
    sub_227802FC4(v8, &qword_27D7D64B0, &qword_2278CA010);
    MEMORY[0x22AA9E860](v8, -1, -1);
    MEMORY[0x22AA9E860](v7, -1, -1);
  }

  v11 = v1[11];
  v13 = v1[7];
  v12 = v1[8];
  v14 = v1[6];

  (*(v13 + 8))(v12, v14);

  v15 = v1[1];
  v16 = MEMORY[0x277D84F90];

  return v15(v16);
}

uint64_t sub_2278404D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_27D7D5CD0 != -1)
  {
    swift_once();
  }

  v4 = qword_27D7D8868;
  v14 = a1;

  sub_227847C74(&v14, v4);

  v5 = v14;
  if (*(v14 + 16))
  {
    v6 = sub_2278C7260();
    v13 = *(v6 - 8);
    (*(v13 + 16))(a2, v5 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v6);

    v7 = *(v13 + 56);
    v8 = a2;
    v9 = 0;
    v10 = v6;
  }

  else
  {

    v11 = sub_2278C7260();
    v7 = *(*(v11 - 8) + 56);
    v10 = v11;
    v8 = a2;
    v9 = 1;
  }

  return v7(v8, v9, 1, v10);
}

uint64_t sub_227840688(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 128) = a3;
  *(v4 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61E8, &qword_2278CB6C0);
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 48) = swift_task_alloc();
  v5 = sub_2278C7260();
  *(v4 + 56) = v5;
  *(v4 + 64) = *(v5 - 8);
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278407A0, 0, 0);
}

uint64_t sub_2278407A0()
{
  if (qword_27D7D5CD0 != -1)
  {
    swift_once();
  }

  v1 = qword_27D7D8868;
  if (qword_27D7D5CE0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 128);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = qword_27D7D8878;
  *(v0 + 88) = qword_27D7D8878;
  v6 = swift_task_alloc();
  *(v6 + 16) = &unk_283AE9440;
  *(v6 + 24) = v2;
  *(v6 + 32) = v5;
  *(v6 + 40) = v3;
  *(v6 + 48) = 2;
  *(v6 + 56) = v4;
  v7 = sub_22783F738(sub_227848210, v6, v1);
  *(v0 + 96) = v7;
  *(v0 + 104) = 0;

  if (qword_27D7D5CD8 != -1)
  {
    swift_once();
  }

  v8 = qword_27D7D8870;
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_22784096C;

  return sub_22784001C(v7, v8, 0.7);
}

uint64_t sub_22784096C(uint64_t a1)
{
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_227840A8C, 0, 0);
}

uint64_t sub_227840A8C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  sub_2278404D8(*(v0 + 120), v3);

  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    sub_227802FC4(*(v0 + 48), &qword_27D7D61E8, &qword_2278CB6C0);
    if (qword_27D7D5CC8 != -1)
    {
      swift_once();
    }

    v27 = qword_27D7D8860;
    if (qword_27D7D5CB8 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 88);
    v26 = *(v0 + 56);
    v6 = *(v0 + 32);
    v7 = *(v0 + 40);
    v8 = *(v0 + 128);
    v9 = *(v0 + 24);
    v10 = swift_task_alloc();
    *(v10 + 16) = &unk_283AE9440;
    *(v10 + 24) = v8;
    *(v10 + 32) = v5;
    *(v10 + 40) = v6;
    *(v10 + 48) = 3;
    *(v10 + 56) = v9;
    v11 = sub_22783F738(sub_227848210, v10, v27);

    sub_227840DF8(v11, v7);

    if (v4(v7, 1, v26) == 1)
    {
      sub_227802FC4(*(v0 + 40), &qword_27D7D61E8, &qword_2278CB6C0);
      v12 = sub_2278C7310();
      v13 = *(v12 - 8);
      v14 = 1;
      goto LABEL_11;
    }

    v20 = *(v0 + 72);
    v21 = *(v0 + 56);
    v17 = *(v0 + 16);
    v22 = *(*(v0 + 64) + 32);
    v22(v20, *(v0 + 40), v21);
    v22(v17, v20, v21);
    v19 = MEMORY[0x277D09B10];
  }

  else
  {
    v15 = *(v0 + 80);
    v16 = *(v0 + 56);
    v17 = *(v0 + 16);
    v18 = *(*(v0 + 64) + 32);
    v18(v15, *(v0 + 48), v16);
    v18(v17, v15, v16);
    v19 = MEMORY[0x277D09B18];
  }

  v23 = *v19;
  v12 = sub_2278C7310();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v17, v23, v12);
  v14 = 0;
LABEL_11:
  (*(v13 + 56))(*(v0 + 16), v14, 1, v12);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_227840DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_2278C7260();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v31 - v8;
  MEMORY[0x28223BE20](v7);
  v12 = &v31 - v11;
  v13 = *(a1 + 16);
  v32 = v10;
  if (v13)
  {
    v15 = v10 + 16;
    v14 = *(v10 + 16);
    v33 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v16 = a1 + v33;
    v39 = *(v10 + 72);
    v40 = 0;
    v37 = (v10 + 8);
    v38 = v14;
    v17 = v16;
    v18 = v13;
    v14(v12, v16, v3);
    while (1)
    {
      if (v40 < sub_2278C7220())
      {
        v40 = sub_2278C7220();
      }

      v19 = *v37;
      (*v37)(v12, v3);
      v17 += v39;
      if (!--v18)
      {
        break;
      }

      v38(v12, v17, v3);
    }

    v36 = (v32 + 32);
    v20 = MEMORY[0x277D84F90];
    v34 = v15;
    v35 = v6;
    do
    {
      v38(v9, v16, v3);
      if (sub_2278C7220() == v40)
      {
        v22 = *v36;
        (*v36)(v6, v9, v3);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2278B48A4(0, *(v20 + 16) + 1, 1);
          v20 = v41;
        }

        v21 = v39;
        v25 = *(v20 + 16);
        v24 = *(v20 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_2278B48A4((v24 > 1), v25 + 1, 1);
          v21 = v39;
          v20 = v41;
        }

        *(v20 + 16) = v25 + 1;
        v6 = v35;
        v22((v20 + v33 + v25 * v21), v35, v3);
      }

      else
      {
        v19(v9, v3);
        v21 = v39;
      }

      v16 += v21;
      --v13;
    }

    while (v13);
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  if (qword_27D7D5CC8 != -1)
  {
    swift_once();
  }

  v26 = qword_27D7D8860;
  v41 = v20;

  sub_227847C74(&v41, v26);

  if (*(v41 + 16))
  {
    v27 = v31;
    v28 = v32;
    (*(v32 + 16))(v31, v41 + ((*(v32 + 80) + 32) & ~*(v32 + 80)), v3);
    v29 = 0;
  }

  else
  {
    v29 = 1;
    v27 = v31;
    v28 = v32;
  }

  return (*(v28 + 56))(v27, v29, 1, v3);
}

uint64_t sub_2278411D4()
{
  v1[2] = v0;
  v2 = sub_2278C75A0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_2278C6820();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = sub_2278C6540();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v5 = sub_2278C6920();
  v1[12] = v5;
  v1[13] = *(v5 - 8);
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278413A8, 0, 0);
}

uint64_t sub_2278413A8()
{
  v2 = v0[7];
  v1 = v0[8];
  v13 = v0[6];
  v3 = v0[2];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_227804920();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v4 = off_283AE99E0;
  type metadata accessor for DateProvider(0);
  v4(v1);
  sub_2278C6720();
  (*(v2 + 8))(v1, v13);
  v6 = v3[8];
  v5 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v6);
  sub_2278C78B0();
  v8 = v7;
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_227841528;
  v10 = v0[11];
  v11.n128_u64[0] = v8;

  return MEMORY[0x2821602E0](v10, v6, v5, v11);
}

uint64_t sub_227841528(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_227841728;
  }

  else
  {
    *(v4 + 136) = a1;
    v5 = sub_227841650;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227841650()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5(v1);
}

uint64_t sub_227841728(uint64_t a1)
{
  v2 = v1[16];
  sub_2278C7340();
  v3 = v2;
  v4 = sub_2278C7590();
  v5 = sub_2278C7950();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[16];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2277F7000, v4, v5, "Error fetching this week workouts for summation: %@", v7, 0xCu);
    sub_227802FC4(v8, &qword_27D7D64B0, &qword_2278CA010);
    MEMORY[0x22AA9E860](v8, -1, -1);
    MEMORY[0x22AA9E860](v7, -1, -1);
  }

  v11 = v1[16];
  v13 = v1[4];
  v12 = v1[5];
  v14 = v1[3];

  (*(v13 + 8))(v12, v14);
  v16 = v1[13];
  v15 = v1[14];
  v17 = v1[12];
  (*(v1[10] + 8))(v1[11], v1[9]);
  (*(v16 + 8))(v15, v17);

  v18 = v1[1];
  v19 = MEMORY[0x277D84F90];

  return v18(v19);
}

uint64_t sub_22784190C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(sub_2278C6FB0() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_227848070(&qword_27D7D61F0, MEMORY[0x277D09A10], MEMORY[0x277D09A18]);
  v7 = 0;
  while ((sub_2278C76E0() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_227841A2C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, _UNKNOWN **a8@<X8>)
{
  v9 = v8;
  v61 = a7;
  v58 = a5;
  v16 = sub_2278C6FB0();
  v59 = *(v16 - 8);
  v60 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2278C6FA0();
  v20 = *(a2 + 16);
  v21 = (a2 + 32);
  do
  {
    if (!v20)
    {
      goto LABEL_5;
    }

    v22 = *v21++;
    --v20;
  }

  while (v22 != v19);
  if ((a3 & 1) == 0)
  {
LABEL_20:
    v36 = sub_2278C7260();
    return (*(*(v36 - 8) + 56))(a8, 1, 1, v36);
  }

LABEL_5:
  v23 = sub_2278C6FA0();
  if (!*(a4 + 16))
  {
    goto LABEL_20;
  }

  v24 = sub_2278AE46C(v23);
  if ((v25 & 1) == 0)
  {
    goto LABEL_20;
  }

  v55 = a6;
  MEMORY[0x28223BE20](v24);
  *(&v51 - 2) = a1;
  v56 = v26;
  v27 = v61;

  v28 = sub_2278A90E4(sub_227847FE4, (&v51 - 4), v27);
  v29 = v28;
  v57 = v9;
  v63 = MEMORY[0x277D84F90];
  v53 = v28 >> 62;
  if (v28 >> 62)
  {
LABEL_33:
    v30 = sub_2278C7B80();
  }

  else
  {
    v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v62 = v29;
  v54 = a1;
  if (v30)
  {
    v51 = v18;
    v52 = a8;
    v31 = 0;
    v18 = (v29 & 0xC000000000000001);
    a1 = v29 & 0xFFFFFFFFFFFFFF8;
    a8 = &off_2785DA000;
    do
    {
      if (v18)
      {
        v32 = MEMORY[0x22AA9DBF0](v31, v29);
      }

      else
      {
        if (v31 >= *(a1 + 16))
        {
          goto LABEL_32;
        }

        v32 = *(v29 + 8 * v31 + 32);
      }

      v33 = v32;
      v34 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      [v32 duration];
      if (v35 < 0.0)
      {
      }

      else
      {
        sub_2278C7CB0();
        sub_2278C7CE0();
        v29 = v62;
        sub_2278C7CF0();
        sub_2278C7CC0();
      }

      ++v31;
    }

    while (v34 != v30);
    v38 = v63;
    v18 = v51;
    a8 = v52;
    if ((v63 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
    {
LABEL_24:
      if ((v38 & 0x4000000000000000) == 0)
      {
        v39 = *(v38 + 16);
        goto LABEL_26;
      }
    }
  }

  v39 = sub_2278C7B80();
LABEL_26:
  if (v39 >= v55)
  {
    sub_227848004();
    v41 = MEMORY[0x22AA9D8F0](*MEMORY[0x277CCC918]);
    v42 = objc_opt_self();
    v43 = [v42 kilocalorieUnit];
    v44 = MEMORY[0x28223BE20](v43);
    v45 = v57;
    v46 = v58;
    *(&v51 - 4) = v58;
    *(&v51 - 3) = v41;
    *(&v51 - 2) = v44;
    sub_22783F614(sub_227848050, 0.0, (&v51 - 6), v61);

    v47 = [v42 meterUnit];
    v48 = MEMORY[0x28223BE20](v47);
    v49 = v56;
    *(&v51 - 4) = v46;
    *(&v51 - 3) = v49;
    *(&v51 - 2) = v48;
    sub_22783F614(sub_227848228, 0.0, (&v51 - 6), v38);
    v57 = v45;

    (*(v59 + 16))(v18, v54, v60);
    if (v53)
    {
      sub_2278C7B80();
    }

    sub_2278C7240();

    v50 = sub_2278C7260();
    return (*(*(v50 - 8) + 56))(a8, 0, 1, v50);
  }

  else
  {

    v40 = sub_2278C7260();
    return (*(*(v40 - 8) + 56))(a8, 1, 1, v40);
  }
}

BOOL sub_227841F78(void **a1, uint64_t a2)
{
  v4 = sub_2278C7130();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v11 = *a1;
  v12 = sub_2278C6FA0();
  v24 = v11;
  v13 = [v11 workoutActivityType];
  v22 = v12;
  v14 = v12 == v13;
  v25 = a2;
  sub_2278C6F80();
  v15 = *MEMORY[0x277D09AA0];
  v23 = *(v5 + 104);
  v23(v8, v15, v4);
  sub_227848070(&qword_27D7D6238, MEMORY[0x277D09AA8], MEMORY[0x277D09AB0]);
  LOBYTE(a2) = sub_2278C76E0();
  v16 = *(v5 + 8);
  v16(v8, v4);
  v16(v10, v4);
  if ((a2 & 1) == 0)
  {
    v17 = v22 == v13;
    IsIndoor = _HKWorkoutIsIndoor(v24);
    sub_2278C6F80();
    v19 = MEMORY[0x277D09A90];
    if (!IsIndoor)
    {
      v19 = MEMORY[0x277D09A98];
    }

    v23(v8, *v19, v4);
    v20 = sub_2278C7120();
    v16(v8, v4);
    v16(v10, v4);
    return v17 & v20;
  }

  return v14;
}

double sub_2278421E4@<D0>(double *a1@<X0>, id *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, double *a5@<X8>)
{
  v7 = *a1;
  v8 = [*a2 statisticsForType_];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 sumQuantity];
    if (v10)
    {
      v11 = v10;
      [v10 doubleValueForUnit_];
      v13 = v12;

      v9 = v11;
    }

    else
    {
      v13 = 0.0;
    }
  }

  else
  {
    v13 = 0.0;
  }

  result = v7 + v13;
  *a5 = v7 + v13;
  return result;
}

uint64_t sub_2278422A4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 40) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  v5 = sub_2278C6FB0();
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22784236C, 0, 0);
}

uint64_t sub_22784236C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_2278C7250();
  v4 = sub_2278C6FA0();
  v0[9] = v4;
  (*(v2 + 8))(v1, v3);
  if (qword_27D7D5CE0 != -1)
  {
    swift_once();
  }

  v5 = qword_27D7D8878;
  if (*(qword_27D7D8878 + 16) && (v6 = sub_2278AE46C(v4), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    v0[10] = v8;
    v9 = v8;
    v10 = swift_task_alloc();
    v0[11] = v10;
    *v10 = v0;
    v10[1] = sub_2278424FC;

    return sub_227842768(v4, v9);
  }

  else
  {

    v12 = v0[1];

    return v12(0);
  }
}

uint64_t sub_2278424FC(double a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_2278426F4;
  }

  else
  {
    v4 = sub_227842614;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227842614()
{
  if (*(*(v0 + 32) + 16) && (v1 = sub_2278AE46C(*(v0 + 72)), (v2 & 1) != 0) && (v3 = *(v0 + 96), *(*(*(v0 + 32) + 56) + 8 * v1) < v3))
  {
    v4 = *(v0 + 80);
    v5 = *(v0 + 40);
    sub_2278C7230();
    v7 = v6;

    if (v3 * v5 < v7)
    {
      v8 = 1;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v8 = 0;
LABEL_8:

  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t sub_2278426F4()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_227842768(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_2278C6540();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v5 = sub_2278C6910();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_2278C6820();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v7 = sub_2278C6920();
  v3[21] = v7;
  v3[22] = *(v7 - 8);
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227842994, 0, 0);
}

uint64_t sub_227842994()
{
  v1 = v0[20];
  v2 = v0[18];
  v23 = v0[17];
  v16 = v0[15];
  v17 = v0[14];
  v24 = v0[13];
  v25 = v0[12];
  v13 = v0[11];
  v14 = v0[10];
  v15 = v0[9];
  v18 = v0[8];
  v19 = v0[6];
  v20 = v0[7];
  v21 = v0[5];
  v3 = v0[4];
  v22 = v0[3];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_227804920();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v4 = off_283AE99E0;
  type metadata accessor for DateProvider(0);
  v4(v1);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v4(v2);
  sub_2278C66C0();
  v5 = *(v24 + 8);
  v0[24] = v5;
  v0[25] = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v25);
  v6 = *(v14 + 104);
  v6(v13, *MEMORY[0x277CC99A8], v15);
  sub_2278C66E0();
  v7 = *(v14 + 8);
  v7(v13, v15);
  v6(v13, *MEMORY[0x277CC9968], v15);
  sub_2278C66E0();
  v7(v13, v15);
  sub_2278C66C0();
  v8 = *(v24 + 16);
  v8(v2, v16, v25);
  v8(v17, v23, v25);
  sub_2278C6520();
  __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
  v0[26] = sub_2278C6E70();
  sub_2278C70D0();
  (*(v19 + 16))(v20, v18, v21);

  v0[27] = sub_2278C70C0();
  v9 = swift_task_alloc();
  v0[28] = v9;
  *(v9 + 16) = v3;
  *(v9 + 24) = v22;
  v10 = swift_task_alloc();
  v0[29] = v10;
  *v10 = v0;
  v10[1] = sub_227842D60;
  v11.n128_u64[0] = 0;

  return (sub_227843CD4)(&unk_2278CB700, v9, v11);
}

uint64_t sub_227842D60(double a1)
{
  v4 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {

    v5 = sub_227843048;
  }

  else
  {
    *(v4 + 248) = a1;

    v5 = sub_227842EA8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227842EA8()
{
  v1 = v0[24];
  v2 = v0[22];
  v15 = v0[21];
  v16 = v0[23];
  v13 = v0[19];
  v14 = v0[20];
  v11 = v0[16];
  v12 = v0[17];
  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[6];

  (*(v7 + 8))(v5, v6);
  v1(v3, v4);
  v1(v11, v4);
  v1(v12, v4);
  v1(v13, v4);
  v1(v14, v4);
  (*(v2 + 8))(v16, v15);

  v8 = v0[1];
  v9.n128_u64[0] = v0[31];

  return v8(v9);
}

uint64_t sub_227843048()
{
  v1 = v0[24];
  v2 = v0[22];
  v14 = v0[21];
  v15 = v0[23];
  v12 = v0[19];
  v13 = v0[20];
  v10 = v0[16];
  v11 = v0[17];
  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[6];

  (*(v7 + 8))(v5, v6);
  v1(v3, v4);
  v1(v10, v4);
  v1(v11, v4);
  v1(v12, v4);
  v1(v13, v4);
  (*(v2 + 8))(v15, v14);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2278431E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_2278C7260();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278432B4, 0, 0);
}

uint64_t sub_2278432B4()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  *(v0 + 72) = v2;
  if (v2)
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    v6 = *(v5 + 16);
    v5 += 16;
    v7 = *(v5 + 64);
    *(v0 + 136) = v7;
    *(v0 + 80) = *(v5 + 56);
    *(v0 + 88) = v6;
    *(v0 + 96) = MEMORY[0x277D84F90];
    *(v0 + 104) = 0;
    v8 = *(v0 + 64);
    *(v0 + 112) = v5 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v8, v1 + ((v7 + 32) & ~v7), v4);
    v14 = (v3 + *v3);
    v9 = swift_task_alloc();
    *(v0 + 120) = v9;
    *v9 = v0;
    v9[1] = sub_227843454;
    v10 = *(v0 + 64);

    return v14(v10);
  }

  else
  {

    v12 = *(v0 + 8);
    v13 = MEMORY[0x277D84F90];

    return v12(v13);
  }
}

uint64_t sub_227843454(char a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {

    v5 = sub_227843838;
  }

  else
  {
    *(v4 + 140) = a1 & 1;
    v5 = sub_227843588;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227843588()
{
  if (*(v0 + 140))
  {
    (*(v0 + 88))(*(v0 + 56), *(v0 + 64), *(v0 + 40));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v2 = *(v0 + 96);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2 = sub_227801E54(0, *(v2 + 2) + 1, 1, *(v0 + 96));
    }

    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_227801E54((v3 > 1), v4 + 1, 1, v2);
    }

    v5 = *(v0 + 80);
    v6 = *(v0 + 56);
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    v9 = (*(v0 + 136) + 32) & ~*(v0 + 136);
    (*(v8 + 8))(*(v0 + 64), v7);
    *(v2 + 2) = v4 + 1;
    (*(v8 + 32))(&v2[v9 + v5 * v4], v6, v7);
  }

  else
  {
    (*(*(v0 + 48) + 8))(*(v0 + 64), *(v0 + 40));
    v2 = *(v0 + 96);
  }

  v10 = *(v0 + 104) + 1;
  if (v10 == *(v0 + 72))
  {

    v11 = *(v0 + 8);

    return v11(v2);
  }

  else
  {
    *(v0 + 96) = v2;
    *(v0 + 104) = v10;
    v13 = *(v0 + 88);
    v14 = *(v0 + 64);
    v15 = *(v0 + 40);
    v16 = *(v0 + 16);
    v17 = *(v0 + 32) + ((*(v0 + 136) + 32) & ~*(v0 + 136)) + *(v0 + 80) * v10;
    *(v0 + 112) = (*(v0 + 48) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v14, v17, v15);
    v20 = (v16 + *v16);
    v18 = swift_task_alloc();
    *(v0 + 120) = v18;
    *v18 = v0;
    v18[1] = sub_227843454;
    v19 = *(v0 + 64);

    return v20(v19);
  }
}

uint64_t sub_227843838()
{
  (*(v0[6] + 8))(v0[8], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2278438C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a3;
  v5[6] = *a2;
  return MEMORY[0x2822009F8](sub_2278438EC, 0, 0);
}

uint64_t sub_2278438EC()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_2278439C8;
  v3.n128_u64[0] = 0;

  return (sub_227844538)(&unk_2278CB728, v1, v3);
}

uint64_t sub_2278439C8(double a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_227843B24;
  }

  else
  {
    *(v4 + 80) = a1;

    v5 = sub_227843AF4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227843AF4()
{
  v1 = *(v0 + 80);
  if (v1 < *(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  **(v0 + 16) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_227843B24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227843B88(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v5[4] = *a2;
  v5[5] = *a3;
  return MEMORY[0x2822009F8](sub_227843BB8, 0, 0);
}

uint64_t sub_227843BB8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = [objc_opt_self() meterUnit];
  v4 = [v1 statisticsForType_];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 sumQuantity];
    if (v6)
    {
      v7 = v6;
      [v6 doubleValueForUnit_];
      v9 = v8;

      v5 = v7;
    }

    else
    {
      v9 = 0.0;
    }
  }

  else
  {
    v9 = 0.0;
  }

  v10 = *(v0 + 32);
  v11 = *(v0 + 16);

  *v11 = v9 + v10;
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_227843CD4(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = v3;
  *(v4 + 56) = a1;
  *(v4 + 48) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61F8, &qword_2278CB710);
  *(v4 + 80) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6200, &qword_2278CB718);
  *(v4 + 88) = v5;
  *(v4 + 96) = *(v5 - 8);
  *(v4 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227843DE0, 0, 0);
}

uint64_t sub_227843DE0()
{
  v1 = v0[9];
  v0[2] = v0[6];
  v0[4] = v1;
  v0[14] = sub_2278C70D0();
  v2 = MEMORY[0x277D09A68];
  sub_227848070(&qword_27D7D6208, MEMORY[0x277D09A68], MEMORY[0x277D09A78]);

  sub_2278C7850();
  v0[15] = v0[6];
  v3 = sub_227848070(&qword_27D7D6210, v2, MEMORY[0x277D09A70]);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_227843F3C;
  v5 = v0[14];
  v6 = v0[10];

  return MEMORY[0x282200308](v6, v5, v3);
}

uint64_t sub_227843F3C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {

    v2 = sub_227844224;
  }

  else
  {
    v2 = sub_227844058;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227844058()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_227802FC4(v3, &qword_27D7D61F8, &qword_2278CB710);

    v4 = v0[1];
    v5.n128_u64[0] = v0[15];

    return v4(v5);
  }

  else
  {
    v7 = v0[7];
    (*(v2 + 32))(v0[13], v3, v1);
    v10 = (v7 + *v7);
    v8 = swift_task_alloc();
    v0[18] = v8;
    *v8 = v0;
    v8[1] = sub_227844294;
    v9 = v0[13];

    return (v10)(v0 + 5, v0 + 2, v9);
  }
}

uint64_t sub_227844224()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227844294()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  (*(v2[12] + 8))(v2[13], v2[11]);
  if (v0)
  {

    v3 = sub_2278444C8;
  }

  else
  {
    v3 = sub_2278443E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2278443E0()
{
  v1 = v0[5];
  v0[2] = v1;
  v0[15] = v1;
  v2 = sub_227848070(&qword_27D7D6210, MEMORY[0x277D09A68], MEMORY[0x277D09A70]);
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_227843F3C;
  v4 = v0[14];
  v5 = v0[10];

  return MEMORY[0x282200308](v5, v4, v2);
}

uint64_t sub_2278444C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227844538(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = v3;
  *(v4 + 56) = a1;
  *(v4 + 48) = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6200, &qword_2278CB718);
  *(v4 + 80) = v5;
  *(v4 + 88) = *(v5 - 8);
  *(v4 + 96) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6218, &qword_2278CB738);
  *(v4 + 104) = v6;
  *(v4 + 112) = *(v6 - 8);
  *(v4 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227844674, 0, 0);
}

uint64_t sub_227844674()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v0[2] = v0[6];
  (*(v1 + 16))(v2, v3, v4);
  sub_227847F9C(&qword_27D7D6220, &qword_27D7D6200, &qword_2278CB718, MEMORY[0x277D858E0]);
  sub_2278C7850();
  v0[16] = v0[6];
  v5 = sub_227847F9C(&qword_27D7D6228, &qword_27D7D6218, &qword_2278CB738, MEMORY[0x277D858D0]);
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_2278447CC;
  v7 = v0[13];

  return MEMORY[0x282200308](v0 + 4, v7, v5);
}

uint64_t sub_2278447CC()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    (*(v2[14] + 8))(v2[15], v2[13]);
    v3 = sub_227844A80;
  }

  else
  {
    v3 = sub_2278448F8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2278448F8()
{
  v1 = v0[4];
  v0[19] = v1;
  if (v1)
  {
    v2 = v0[7];
    v0[3] = v1;
    v7 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[20] = v3;
    *v3 = v0;
    v3[1] = sub_227844AF0;

    return (v7)(v0 + 5, v0 + 2, v0 + 3);
  }

  else
  {
    (*(v0[14] + 8))(v0[15], v0[13]);

    v5 = v0[1];
    v6.n128_u64[0] = v0[16];

    return v5(v6);
  }
}

uint64_t sub_227844A80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227844AF0()
{
  v2 = *v1;
  v2[21] = v0;

  v3 = v2[19];
  if (v0)
  {
    v5 = v2[14];
    v4 = v2[15];
    v6 = v2[13];

    (*(v5 + 8))(v4, v6);
    v7 = sub_227844D2C;
  }

  else
  {

    v7 = sub_227844C48;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_227844C48()
{
  v1 = v0[5];
  v0[2] = v1;
  v0[16] = v1;
  v2 = sub_227847F9C(&qword_27D7D6228, &qword_27D7D6218, &qword_2278CB738, MEMORY[0x277D858D0]);
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_2278447CC;
  v4 = v0[13];

  return MEMORY[0x282200308](v0 + 4, v4, v2);
}

uint64_t sub_227844D2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227844D9C(uint64_t a1, char a2)
{
  *(v3 + 200) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_2278C6910();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  v5 = sub_2278C6920();
  *(v3 + 56) = v5;
  *(v3 + 64) = *(v5 - 8);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v6 = sub_2278C6820();
  *(v3 + 88) = v6;
  *(v3 + 96) = *(v6 - 8);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227844F48, 0, 0);
}

uint64_t sub_227844F48()
{
  v1 = v0[16];
  v29 = v0[9];
  v2 = v0[8];
  v30 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  v27 = v0[4];
  v28 = v0[6];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v5 = off_283AE99E0;
  type metadata accessor for DateProvider(0);
  v5(v1);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_227804920();
  sub_2278C66C0();
  v25 = *MEMORY[0x277CC9968];
  v24 = *(v3 + 104);
  v24(v28);
  sub_2278C6900();
  sub_2278C6750();
  v6 = *(v2 + 8);
  v0[17] = v6;
  v0[18] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v26 = v6;
  v6(v29, v30);
  v7 = *(v3 + 8);
  v7(v28, v27);
  if (sub_2278C68F0())
  {
    v8 = swift_task_alloc();
    v0[19] = v8;
    *v8 = v0;
    v9 = sub_227845360;
LABEL_5:
    v8[1] = v9;

    return sub_2278411D4();
  }

  v10 = v0[9];
  v12 = v0[6];
  v11 = v0[7];
  v13 = v0[4];
  (v24)(v12, v25, v13);
  sub_2278C6900();
  sub_2278C6750();
  v26(v10, v11);
  v7(v12, v13);
  if (sub_2278C68F0())
  {
    v8 = swift_task_alloc();
    v0[22] = v8;
    *v8 = v0;
    v9 = sub_227845704;
    goto LABEL_5;
  }

  v15 = v0[15];
  v16 = v0[16];
  v17 = v0[14];
  v18 = v0[11];
  v19 = v0[10];
  v20 = v0[7];
  v31 = v0[2];
  v21 = *(v0[12] + 8);
  v21(v0[13], v18);
  v21(v17, v18);
  v21(v15, v18);
  v26(v19, v20);
  v21(v16, v18);
  v22 = sub_2278C7310();
  (*(*(v22 - 8) + 56))(v31, 1, 1, v22);

  v23 = v0[1];

  return v23();
}

uint64_t sub_227845360(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  *(v3 + 160) = a1;

  v5 = swift_task_alloc();
  *(v3 + 168) = v5;
  *v5 = v4;
  v5[1] = sub_2278454D0;
  v6 = *(v3 + 200);
  v7 = *(v3 + 16);

  return sub_22783FA64(v7, a1, v6);
}

uint64_t sub_2278454D0()
{

  return MEMORY[0x2822009F8](sub_2278455E8, 0, 0);
}

uint64_t sub_2278455E8()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[11];
  v5 = v0[10];
  v6 = v0[7];
  v7 = *(v0[12] + 8);
  v7(v0[14], v4);
  v7(v2, v4);
  v1(v5, v6);
  v7(v3, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_227845704(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  *(v3 + 184) = a1;

  v5 = swift_task_alloc();
  *(v3 + 192) = v5;
  *v5 = v4;
  v5[1] = sub_227845874;
  v6 = *(v3 + 200);
  v7 = *(v3 + 16);

  return sub_227840688(v7, a1, v6);
}

uint64_t sub_227845874()
{

  return MEMORY[0x2822009F8](sub_22784598C, 0, 0);
}

uint64_t sub_22784598C()
{
  v1 = v0[17];
  v2 = v0[15];
  v10 = v0[16];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[10];
  v6 = v0[7];
  v7 = *(v0[12] + 8);
  v7(v0[13], v4);
  v7(v3, v4);
  v7(v2, v4);
  v1(v5, v6);
  v7(v10, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_227845AD8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_2278C7260();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_227845BBC(unint64_t a1, unint64_t a2, char *a3, unint64_t a4, uint64_t a5)
{
  v91 = a5;
  v9 = sub_2278C6FB0();
  v80 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v75 = &v74 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v74 - v15;
  v17 = sub_2278C7260();
  v81 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v84 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v82 = &v74 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v87 = &v74 - v23;
  result = MEMORY[0x28223BE20](v22);
  v86 = &v74 - v25;
  v83 = *(v26 + 72);
  if (!v83)
  {
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v83 == -1)
  {
    goto LABEL_76;
  }

  v27 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v83 == -1)
  {
    goto LABEL_77;
  }

  v28 = (a2 - a1) / v83;
  v94 = a1;
  v93 = a4;
  v85 = v17;
  if (v28 >= v27 / v83)
  {
    v30 = v27 / v83 * v83;
    if (a4 < a2 || a2 + v30 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v54 = a4 + v30;
    if (v30 >= 1)
    {
      v55 = -v83;
      v77 = (v81 + 16);
      v78 = (v80 + 8);
      v76 = (v81 + 8);
      v56 = a4 + v30;
      v88 = a1;
      v89 = a4;
      v86 = -v83;
      do
      {
        v74 = v54;
        v57 = a2;
        v58 = a2 + v55;
        v59 = v54;
        v90 = v58;
        v81 = v57;
        while (1)
        {
          if (v57 <= a1)
          {
            v94 = v57;
            v92 = v74;
            goto LABEL_74;
          }

          v60 = a3;
          v79 = v59;
          v83 = v56;
          v61 = *v77;
          v87 = (v56 + v55);
          (v61)(v82);
          (v61)(v84, v58, v17);
          sub_2278C7250();
          v62 = *(v91 + 16);
          if (v62)
          {
            v63 = v91 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
            v64 = *(v80 + 72);
            sub_227848070(&qword_27D7D61F0, MEMORY[0x277D09A10], MEMORY[0x277D09A18]);
            v65 = 0;
            while ((sub_2278C76E0() & 1) == 0)
            {
              ++v65;
              v63 += v64;
              if (v62 == v65)
              {
                goto LABEL_56;
              }
            }

            v67 = *v78;
            (*v78)(v12, v9);
            v68 = v75;
            sub_2278C7250();
            v69 = sub_22784190C(v68, v91);
            v71 = v70;
            v67(v68, v9);
            v66 = (v71 & 1) != 0 || v65 < v69;
          }

          else
          {
LABEL_56:
            (*v78)(v12, v9);
            v66 = 0;
          }

          v17 = v85;
          a3 = &v60[v86];
          v72 = *v76;
          (*v76)(v84, v85);
          v72(v82, v17);
          v73 = v89;
          if (v66)
          {
            break;
          }

          v59 = v87;
          v58 = v90;
          if (v60 < v83 || a3 >= v83)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v88;
          }

          else
          {
            a1 = v88;
            if (v60 != v83)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v56 = v59;
          v55 = v86;
          v57 = v81;
          if (v87 <= v73)
          {
            v54 = v59;
            a2 = v81;
            goto LABEL_73;
          }
        }

        a2 = v90;
        if (v60 < v81 || a3 >= v81)
        {
          swift_arrayInitWithTakeFrontToBack();
          a1 = v88;
        }

        else
        {
          a1 = v88;
          if (v60 != v81)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v56 = v83;
        v54 = v79;
        v55 = v86;
      }

      while (v83 > v73);
    }

LABEL_73:
    v94 = a2;
    v92 = v54;
  }

  else
  {
    v29 = v28 * v83;
    if (a4 < a1 || a1 + v29 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v84 = (a4 + v29);
    v92 = a4 + v29;
    if (v29 >= 1 && a2 < a3)
    {
      v32 = *(v81 + 16);
      v81 += 16;
      v82 = v32;
      v77 = (v81 - 8);
      v78 = (v80 + 8);
      v79 = a3;
      do
      {
        v88 = a1;
        v90 = a2;
        v33 = a2;
        v34 = v82;
        (v82)(v86, v33, v17);
        v89 = a4;
        v34(v87, a4, v17);
        sub_2278C7250();
        v35 = *(v91 + 16);
        if (v35)
        {
          v36 = v91 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
          v37 = *(v80 + 72);
          sub_227848070(&qword_27D7D61F0, MEMORY[0x277D09A10], MEMORY[0x277D09A18]);
          v38 = 0;
          while ((sub_2278C76E0() & 1) == 0)
          {
            ++v38;
            v36 += v37;
            if (v35 == v38)
            {
              goto LABEL_25;
            }
          }

          v44 = *v78;
          (*v78)(v16, v9);
          v45 = v75;
          v46 = v87;
          sub_2278C7250();
          v47 = sub_22784190C(v45, v91);
          v49 = v48;
          v44(v45, v9);
          if (v49)
          {
            v50 = *v77;
            v51 = v46;
            v17 = v85;
            (*v77)(v51, v85);
            v50(v86, v17);
            a4 = v89;
            a2 = v90;
LABEL_35:
            v40 = v83;
            v42 = v88;
            v43 = v79;
            if (v88 < a2 || v88 >= a2 + v83)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v88 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v40;
            goto LABEL_41;
          }

          v52 = *v77;
          v53 = v46;
          v17 = v85;
          (*v77)(v53, v85);
          v52(v86, v17);
          a4 = v89;
          a2 = v90;
          if (v38 < v47)
          {
            goto LABEL_35;
          }
        }

        else
        {
LABEL_25:
          (*v78)(v16, v9);
          v39 = *v77;
          v17 = v85;
          (*v77)(v87, v85);
          v39(v86, v17);
          a4 = v89;
          a2 = v90;
        }

        v40 = v83;
        v41 = a4 + v83;
        v42 = v88;
        v43 = v79;
        if (v88 < a4 || v88 >= v41)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v88 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v93 = v41;
        a4 += v40;
LABEL_41:
        a1 = v42 + v40;
        v94 = a1;
      }

      while (a4 < v84 && a2 < v43);
    }
  }

LABEL_74:
  sub_227845AD8(&v94, &v93, &v92);
  return 1;
}

void sub_22784650C(char **a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v26 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v26 = sub_22786934C(v26);
  }

  v21 = v6;
  *v6 = v26;
  v8 = v26 + 16;
  v9 = *(v26 + 2);
  if (v9 < 2)
  {
LABEL_10:

    *v21 = v26;
  }

  else
  {
    v22 = (v26 + 16);
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = &v26[16 * v9];
      v6 = *v11;
      v12 = &v8[16 * v9];
      v13 = *v12;
      v14 = *(v12 + 1);
      v15 = *(*(sub_2278C7260() - 8) + 72);
      v16 = v10 + v15 * v6;
      v17 = v10 + v15 * v13;
      v18 = (v10 + v15 * v14);

      sub_227845BBC(v16, v17, v18, a2, a4);

      if (v5)
      {
        *v21 = v26;

        return;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v8 = v26 + 16;
      v19 = *v22;
      if (v9 - 2 >= *v22)
      {
        goto LABEL_13;
      }

      *v11 = v6;
      *(v11 + 1) = v14;
      v20 = v19 - v9;
      if (v19 < v9)
      {
        goto LABEL_14;
      }

      v9 = v19 - 1;
      memmove(v12, v12 + 16, 16 * v20);
      *v22 = v9;
      if (v9 <= 1)
      {
        goto LABEL_10;
      }
    }

    *v21 = v26;
    __break(1u);
  }
}

void sub_2278466CC(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v174 = a4;
  v176 = a1;
  v7 = sub_2278C6FB0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v209 = &v173 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v208 = &v173 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v173 - v13;
  v207 = sub_2278C7260();
  v15 = MEMORY[0x28223BE20](v207);
  v179 = &v173 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v178 = &v173 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v20 = MEMORY[0x28223BE20](v19);
  v195 = &v173 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v203 = &v173 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v202 = &v173 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  MEMORY[0x28223BE20](v26);
  v177 = &v173 - v30;
  v210 = MEMORY[0x277D84F90];
  v192 = a3;
  v31 = a3[1];
  if (v31 >= 1)
  {
    v175 = v29;
    v194 = v28;
    v200 = (v8 + 8);
    v201 = v27 + 16;
    v199 = (v27 + 8);
    v186 = v27;
    v181 = (v27 + 32);
    swift_bridgeObjectRetain_n();
    v32 = 0;
    v33 = MEMORY[0x277D84F90];
    v204 = v7;
    v205 = a5;
    v191 = v8;
    v193 = v14;
    while (1)
    {
      v34 = v32;
      v189 = v33;
      v180 = v32;
      v206 = v32 + 1;
      if (v32 + 1 >= v31)
      {
        v44 = v32;
      }

      else
      {
        v187 = v31;
        v35 = *v192;
        v36 = *(v186 + 72);
        v37 = *(v186 + 16);
        v37(v177, *v192 + v36 * (v32 + 1), v207);
        v190 = v36;
        v185 = v35;
        v184 = v37;
        v37(v175, v35 + v36 * v34, v207);
        sub_2278C7250();
        v38 = sub_22784190C(v14, a5);
        LOBYTE(v35) = v39;
        v40 = v7;
        v41 = *v200;
        (*v200)(v14, v40);
        if (v35)
        {
          LODWORD(v188) = 0;
          v33 = v189;
          v42 = v190;
          v43 = v41;
        }

        else
        {
          sub_2278C7250();
          v45 = sub_22784190C(v14, a5);
          v47 = v46;
          v41(v14, v40);
          v43 = v41;
          v48 = (v47 & 1) != 0 || v38 < v45;
          LODWORD(v188) = v48;
          a5 = v205;
          v33 = v189;
          v42 = v190;
        }

        v49 = *v199;
        v50 = v207;
        (*v199)(v175, v207);
        v183 = v49;
        v49(v177, v50);
        v51 = (v42 * v206);
        v52 = v42 * (v180 + 2);
        do
        {
          v61 = v43;
          v62 = v206;
          v63 = v51;
          v60 = v52;
          v64 = ++v206 < v187;
          v182 = v62;
          if (!v64)
          {
            break;
          }

          v196 = v51;
          v197 = v52;
          v65 = v185;
          v66 = v207;
          v67 = v184;
          v184(v202, v185 + (v62 + 1) * v42, v207);
          v67(v203, v65 + v62 * v42, v66);
          sub_2278C7250();
          v68 = *(a5 + 16);
          if (v68)
          {
            v69 = a5 + ((*(v191 + 80) + 32) & ~*(v191 + 80));
            v70 = *(v191 + 72);
            sub_227848070(&qword_27D7D61F0, MEMORY[0x277D09A10], MEMORY[0x277D09A18]);
            v71 = 0;
            v63 = v196;
            v43 = v61;
            v72 = v204;
            while ((sub_2278C76E0() & 1) == 0)
            {
              ++v71;
              v69 += v70;
              if (v68 == v71)
              {
                goto LABEL_25;
              }
            }

            v43(v208, v72);
            v53 = v193;
            sub_2278C7250();
            a5 = v205;
            v54 = sub_22784190C(v53, v205);
            v56 = v55;
            v43(v53, v72);
            v57 = (v56 & 1) != 0 || v71 < v54;
          }

          else
          {
            v63 = v196;
            v43 = v61;
            v72 = v204;
LABEL_25:
            v43(v208, v72);
            v57 = 0;
            a5 = v205;
          }

          v58 = v207;
          v59 = v183;
          v183(v203, v207);
          v59(v202, v58);
          v33 = v189;
          v42 = v190;
          v51 = &v63[v190];
          v60 = v197;
          v52 = v197 + v190;
        }

        while (v188 == v57);
        if (v188)
        {
          v44 = v180;
          if (v206 < v180)
          {
            goto LABEL_150;
          }

          if (v180 >= v206)
          {
            v14 = v193;
            v7 = v204;
          }

          else
          {
            v73 = v180 * v42;
            v74 = v180;
            v75 = v182;
            v7 = v204;
            do
            {
              if (v74 != v75)
              {
                v76 = *v192;
                if (!*v192)
                {
                  goto LABEL_155;
                }

                v77 = v75;
                v78 = v60;
                v79 = *v181;
                (*v181)(v179, v76 + v73, v207);
                if (v73 < v63 || v76 + v73 >= v76 + v78)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v73 != v63)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                v79(&v63[v76], v179, v207);
                v44 = v180;
                v42 = v190;
                v60 = v78;
                v75 = v77;
              }

              ++v74;
              v63 -= v42;
              v60 -= v42;
              v73 += v42;
              v64 = v74 < v75--;
            }

            while (v64);
            a5 = v205;
            v14 = v193;
            v33 = v189;
          }
        }

        else
        {
          v14 = v193;
          v44 = v180;
          v7 = v204;
        }
      }

      v80 = v192[1];
      if (v206 >= v80)
      {
        break;
      }

      if (__OFSUB__(v206, v44))
      {
        goto LABEL_149;
      }

      if (v206 - v44 < v174)
      {
        v81 = v44 + v174;
        if (__OFADD__(v44, v174))
        {
          goto LABEL_151;
        }

        if (v81 >= v80)
        {
          v81 = v192[1];
        }

        if (v81 < v44)
        {
LABEL_152:
          __break(1u);
LABEL_153:
          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_154:
          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_155:
          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_156:
          swift_bridgeObjectRelease_n();
          __break(1u);
          goto LABEL_157;
        }

        v82 = v206;
        if (v206 != v81)
        {
          v197 = *v192;
          v83 = *(a5 + 16);
          v190 = *(v186 + 72);
          v188 = *(v186 + 16);
          v84 = v206;
          v184 = v81;
          do
          {
            v206 = v84;
            while (1)
            {
              v85 = a5;
              v86 = v197;
              v87 = v190;
              v88 = (v197 + v190 * v84--);
              v196 = v88;
              v89 = v207;
              v90 = v188;
              v188(v195);
              v91 = v86 + v84 * v87;
              v90(v194, v91, v89);
              sub_2278C7250();
              if (!v83)
              {
                break;
              }

              v92 = v85 + ((*(v191 + 80) + 32) & ~*(v191 + 80));
              v93 = *(v191 + 72);
              sub_227848070(&qword_27D7D61F0, MEMORY[0x277D09A10], MEMORY[0x277D09A18]);
              v94 = 0;
              v7 = v204;
              while ((sub_2278C76E0() & 1) == 0)
              {
                ++v94;
                v92 += v93;
                if (v83 == v94)
                {
                  goto LABEL_64;
                }
              }

              v187 = v91;
              v95 = *v200;
              (*v200)(v209, v7);
              v97 = v193;
              v96 = v194;
              sub_2278C7250();
              v185 = sub_22784190C(v97, v205);
              v99 = v98;
              v95(v97, v7);
              if (v99)
              {
                v100 = *v199;
                v101 = v96;
                v102 = v207;
                (*v199)(v101, v207);
                v100(v195, v102);
              }

              else
              {
                v103 = *v199;
                v104 = v96;
                v105 = v207;
                (*v199)(v104, v207);
                v103(v195, v105);
                if (v94 >= v185)
                {
                  goto LABEL_65;
                }
              }

              a5 = v205;
              if (!v197)
              {
                goto LABEL_154;
              }

              v106 = *v181;
              v107 = v178;
              v108 = v207;
              (*v181)(v178, v196, v207);
              v109 = v187;
              swift_arrayInitWithTakeFrontToBack();
              v106(v109, v107, v108);
              v7 = v204;
              if (v84 == v180)
              {
                goto LABEL_66;
              }
            }

            v7 = v204;
LABEL_64:
            (*v200)(v209, v7);
            v110 = *v199;
            v111 = v207;
            (*v199)(v194, v207);
            v110(v195, v111);
LABEL_65:
            a5 = v205;
LABEL_66:
            v84 = v206 + 1;
          }

          while ((v206 + 1) != v184);
          v82 = v184;
          v14 = v193;
          v33 = v189;
          v44 = v180;
          if (v184 < v180)
          {
            goto LABEL_148;
          }

          goto LABEL_73;
        }

        goto LABEL_70;
      }

      v82 = v206;
      if (v206 < v44)
      {
        goto LABEL_148;
      }

LABEL_73:
      v206 = v82;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_22780202C(0, *(v33 + 2) + 1, 1, v33);
      }

      v113 = *(v33 + 2);
      v112 = *(v33 + 3);
      v114 = v113 + 1;
      if (v113 >= v112 >> 1)
      {
        v33 = sub_22780202C((v112 > 1), v113 + 1, 1, v33);
      }

      *(v33 + 2) = v114;
      v115 = v33 + 32;
      v116 = &v33[16 * v113 + 32];
      v117 = v206;
      *v116 = v44;
      *(v116 + 1) = v117;
      v197 = *v176;
      if (!v197)
      {
        goto LABEL_156;
      }

      if (v113)
      {
        v196 = v33 + 32;
        while (1)
        {
          v118 = v114 - 1;
          if (v114 >= 4)
          {
            break;
          }

          if (v114 == 3)
          {
            v119 = *(v33 + 4);
            v120 = *(v33 + 5);
            v129 = __OFSUB__(v120, v119);
            v121 = v120 - v119;
            v122 = v129;
LABEL_93:
            if (v122)
            {
              goto LABEL_138;
            }

            v135 = &v33[16 * v114];
            v137 = *v135;
            v136 = *(v135 + 1);
            v138 = __OFSUB__(v136, v137);
            v139 = v136 - v137;
            v140 = v138;
            if (v138)
            {
              goto LABEL_140;
            }

            v141 = &v115[16 * v118];
            v143 = *v141;
            v142 = *(v141 + 1);
            v129 = __OFSUB__(v142, v143);
            v144 = v142 - v143;
            if (v129)
            {
              goto LABEL_143;
            }

            if (__OFADD__(v139, v144))
            {
              goto LABEL_145;
            }

            if (v139 + v144 >= v121)
            {
              if (v121 < v144)
              {
                v118 = v114 - 2;
              }

              goto LABEL_115;
            }

            goto LABEL_108;
          }

          if (v114 < 2)
          {
            goto LABEL_146;
          }

          v145 = &v33[16 * v114];
          v147 = *v145;
          v146 = *(v145 + 1);
          v129 = __OFSUB__(v146, v147);
          v139 = v146 - v147;
          v140 = v129;
LABEL_108:
          if (v140)
          {
            goto LABEL_142;
          }

          v148 = &v115[16 * v118];
          v150 = *v148;
          v149 = *(v148 + 1);
          v129 = __OFSUB__(v149, v150);
          v151 = v149 - v150;
          if (v129)
          {
            goto LABEL_144;
          }

          if (v151 < v139)
          {
            goto LABEL_3;
          }

LABEL_115:
          if (v118 - 1 >= v114)
          {
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
            goto LABEL_152;
          }

          v156 = *v192;
          if (!*v192)
          {
            goto LABEL_153;
          }

          v157 = v33;
          v158 = &v115[16 * v118 - 16];
          v159 = *v158;
          v160 = v118;
          v161 = &v115[16 * v118];
          v162 = *(v161 + 1);
          v163 = *(v186 + 72);
          v164 = v156 + v163 * *v158;
          v165 = v156 + v163 * *v161;
          v166 = (v156 + v163 * v162);
          v167 = v205;

          v168 = v164;
          v169 = v198;
          sub_227845BBC(v168, v165, v166, v197, v167);
          v198 = v169;
          if (v169)
          {

            v210 = v157;
            goto LABEL_128;
          }

          v14 = v193;
          if (v162 < v159)
          {
            goto LABEL_133;
          }

          v170 = *(v157 + 2);
          if (v160 > v170)
          {
            goto LABEL_134;
          }

          *v158 = v159;
          *(v158 + 1) = v162;
          if (v160 >= v170)
          {
            goto LABEL_135;
          }

          v114 = v170 - 1;
          memmove(v161, v161 + 16, 16 * (v170 - 1 - v160));
          v33 = v157;
          *(v157 + 2) = v170 - 1;
          v115 = v196;
          v7 = v204;
          if (v170 <= 2)
          {
            goto LABEL_3;
          }
        }

        v123 = &v115[16 * v114];
        v124 = *(v123 - 8);
        v125 = *(v123 - 7);
        v129 = __OFSUB__(v125, v124);
        v126 = v125 - v124;
        if (v129)
        {
          goto LABEL_136;
        }

        v128 = *(v123 - 6);
        v127 = *(v123 - 5);
        v129 = __OFSUB__(v127, v128);
        v121 = v127 - v128;
        v122 = v129;
        if (v129)
        {
          goto LABEL_137;
        }

        v130 = &v33[16 * v114];
        v132 = *v130;
        v131 = *(v130 + 1);
        v129 = __OFSUB__(v131, v132);
        v133 = v131 - v132;
        if (v129)
        {
          goto LABEL_139;
        }

        v129 = __OFADD__(v121, v133);
        v134 = v121 + v133;
        if (v129)
        {
          goto LABEL_141;
        }

        if (v134 >= v126)
        {
          v152 = &v115[16 * v118];
          v154 = *v152;
          v153 = *(v152 + 1);
          v129 = __OFSUB__(v153, v154);
          v155 = v153 - v154;
          if (v129)
          {
            goto LABEL_147;
          }

          if (v121 < v155)
          {
            v118 = v114 - 2;
          }

          goto LABEL_115;
        }

        goto LABEL_93;
      }

LABEL_3:
      v31 = v192[1];
      a5 = v205;
      v32 = v206;
      if (v206 >= v31)
      {
        v210 = v33;
        goto LABEL_125;
      }
    }

    v82 = v206;
LABEL_70:
    if (v82 < v44)
    {
      goto LABEL_148;
    }

    goto LABEL_73;
  }

  swift_bridgeObjectRetain_n();
LABEL_125:
  v171 = *v176;
  v172 = v198;
  if (*v176)
  {

    sub_22784650C(&v210, v171, v192, a5);
    if (v172)
    {

LABEL_128:
      swift_bridgeObjectRelease_n();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
LABEL_157:
    swift_bridgeObjectRelease_n();
    __break(1u);
  }
}

uint64_t sub_22784763C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v68 = a5;
  v50 = a1;
  v8 = sub_2278C6FB0();
  v61 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v51 = &v47[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = &v47[-v11];
  v13 = sub_2278C7260();
  v14 = MEMORY[0x28223BE20](v13);
  v49 = &v47[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v62 = &v47[-v17];
  result = MEMORY[0x28223BE20](v16);
  v69 = &v47[-v20];
  v52 = a2;
  if (a3 != a2)
  {
    v67 = *a4;
    v21 = *(v68 + 16);
    v23 = *(v19 + 16);
    v22 = v19 + 16;
    v57 = *(v22 + 56);
    v58 = v23;
    v55 = (v22 - 8);
    v56 = (v61 + 8);
    v59 = v22;
    v60 = v13;
    v48 = (v22 + 16);
    v54 = v12;
    while (2)
    {
      v63 = a3;
      v24 = a3;
      while (1)
      {
        v25 = v67;
        v27 = v57;
        v26 = v58;
        v65 = v67 + v57 * v24;
        (v58)(v69);
        v66 = v24 - 1;
        v28 = v25 + (v24 - 1) * v27;
        v29 = v62;
        v64 = v28;
        v26();
        v30 = v54;
        sub_2278C7250();
        if (!v21)
        {
          break;
        }

        v31 = v68 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
        v32 = *(v61 + 72);
        sub_227848070(&qword_27D7D61F0, MEMORY[0x277D09A10], MEMORY[0x277D09A18]);
        v33 = 0;
        while ((sub_2278C76E0() & 1) == 0)
        {
          ++v33;
          v31 += v32;
          if (v21 == v33)
          {
            goto LABEL_15;
          }
        }

        v34 = *v56;
        (*v56)(v30, v8);
        v35 = v51;
        v36 = v29;
        sub_2278C7250();
        v53 = sub_22784190C(v35, v68);
        v38 = v37;
        v34(v35, v8);
        if (v38)
        {
          v39 = *v55;
          v40 = v60;
          (*v55)(v36, v60);
          result = v39(v69, v40);
          v24 = v66;
        }

        else
        {
          v41 = *v55;
          v40 = v60;
          (*v55)(v36, v60);
          result = v41(v69, v40);
          v24 = v66;
          if (v33 >= v53)
          {
            goto LABEL_16;
          }
        }

        if (!v67)
        {
          __break(1u);
          return result;
        }

        v42 = v49;
        v43 = *v48;
        (*v48)(v49, v65, v40);
        v44 = v64;
        swift_arrayInitWithTakeFrontToBack();
        result = v43(v44, v42, v40);
        if (v24 == v50)
        {
          goto LABEL_16;
        }
      }

LABEL_15:
      (*v56)(v30, v8);
      v45 = *v55;
      v46 = v60;
      (*v55)(v29, v60);
      result = v45(v69, v46);
LABEL_16:
      a3 = v63 + 1;
      if (v63 + 1 != v52)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_227847AF0(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  v5 = sub_2278C7D90();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2278C7260();
        v8 = sub_2278C77D0();
        *(v8 + 16) = v7;
      }

      v9 = *(sub_2278C7260() - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;

      sub_2278466CC(v10, v11, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_22784763C(0, v4, 1, a1, a2);
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_227847C74(uint64_t *a1, uint64_t a2)
{
  v4 = *(sub_2278C7260() - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_22786A178(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  sub_227847AF0(v8, a2);

  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_227847D5C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22780523C;

  return sub_2278422A4(a1, v4, v5, v6);
}

uint64_t sub_227847E14(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2278004C0;

  return sub_2278438C0(a1, a2, a3, v9, v8);
}

uint64_t sub_227847ED8(uint64_t a1, void *a2, void *a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2278003CC;

  return sub_227843B88(a1, a2, a3, v9, v8);
}

uint64_t sub_227847F9C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_227848004()
{
  result = qword_27D7D6230;
  if (!qword_27D7D6230)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7D6230);
  }

  return result;
}

uint64_t sub_227848070(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _HKWorkoutIsIndoor(void *a1)
{
  v1 = a1;
  v2 = [v1 metadata];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CCC4C0]];
  v4 = [v3 BOOLValue];

  return v4;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_227848164(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2278481AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_227848240(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2278003CC;

  return v7(a1, a2);
}

uint64_t sub_227848358(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22781659C;

  return v7(a1, a2);
}

uint64_t sub_227848488()
{
  v1[2] = v0;
  v2 = sub_2278C75A0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227848554, 0, 0);
}

uint64_t sub_227848554()
{
  v3 = (*MEMORY[0x277CE9488] + MEMORY[0x277CE9488]);
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_2278485FC;

  return v3();
}

uint64_t sub_2278485FC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_22784884C;
  }

  else
  {
    v4 = sub_227848710;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227848710(uint64_t a1)
{
  if (*(v1 + 64))
  {
    v2 = sub_227848C48(*(v1 + 64));
  }

  else
  {
    sub_2278C73A0();
    v3 = sub_2278C7590();
    v4 = sub_2278C7950();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v1 + 48);
    v7 = *(v1 + 24);
    v8 = *(v1 + 32);
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2277F7000, v3, v4, "Received nil friends list", v9, 2u);
      MEMORY[0x22AA9E860](v9, -1, -1);
    }

    (*(v8 + 8))(v6, v7);
    v2 = MEMORY[0x277D84F90];
  }

  v10 = *(v1 + 8);

  return v10(v2);
}

uint64_t sub_22784884C(uint64_t a1)
{
  v2 = v1[9];
  sub_2278C73A0();
  v3 = v2;
  v4 = sub_2278C7590();
  v5 = sub_2278C7950();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2277F7000, v4, v5, "Error fetching activity sharing friends: %@", v7, 0xCu);
    sub_227848BE0(v8);
    MEMORY[0x22AA9E860](v8, -1, -1);
    MEMORY[0x22AA9E860](v7, -1, -1);
  }

  v11 = v1[9];
  v13 = v1[4];
  v12 = v1[5];
  v14 = v1[3];

  (*(v13 + 8))(v12, v14);

  v15 = v1[1];
  v16 = MEMORY[0x277D84F90];

  return v15(v16);
}

uint64_t sub_2278489D0()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ActivitySharingQuery.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ActivitySharingQuery.State(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_227848B8C()
{
  result = qword_27D7D6240;
  if (!qword_27D7D6240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D6240);
  }

  return result;
}

uint64_t sub_227848BE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D64B0, &qword_2278CA010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227848C48(uint64_t *a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_2278C7B80();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_2278A65C4();

    v1 = sub_2278A4588(&v5, (v3 + 32), v2, v1);
    sub_227806704(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void sub_227848CF8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_227848DDC();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D63E0, &unk_2278CC430);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

unint64_t sub_227848DDC()
{
  result = qword_2813B9B20;
  if (!qword_2813B9B20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813B9B20);
  }

  return result;
}

unint64_t sub_227848E44()
{
  result = qword_27D7D6248;
  if (!qword_27D7D6248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D6248);
  }

  return result;
}

uint64_t sub_227848EA0()
{
  sub_2278C7E60();
  MEMORY[0x22AA9DDE0](0);
  return sub_2278C7E90();
}

uint64_t sub_227848F0C(uint64_t a1)
{
  sub_2278C7E60();
  MEMORY[0x22AA9DDE0](0);
  return sub_2278C7E90();
}

uint64_t sub_227848F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2278004C0;

  return v9(a1, a2, a3);
}

uint64_t sub_227849074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2278004C0;

  return v9(a1, a2, a3);
}

uint64_t sub_22784919C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2278004C0;

  return v9(a1, a2, a3);
}

uint64_t sub_2278492C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2278003CC;

  return v9(a1, a2, a3);
}

uint64_t sub_227849424()
{
  v1 = *MEMORY[0x277D09BB0];
  v2 = sub_227849B34();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 objectForKey_];

    if (v4)
    {
      sub_2278C7AD0();
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    *(v0 + 16) = v12;
    *(v0 + 32) = v13;
    if (*(v0 + 40))
    {
      v5 = *(v0 + 48);
      v6 = sub_2278C6820();
      v7 = swift_dynamicCast();
      (*(*(v6 - 8) + 56))(v5, v7 ^ 1u, 1, v6);
      goto LABEL_9;
    }
  }

  else
  {

    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
  }

  v8 = *(v0 + 48);
  sub_227802FC4(v0 + 16, &qword_27D7D60A0, qword_2278C98D0);
  v9 = sub_2278C6820();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
LABEL_9:
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2278495CC@<X0>(char *a1@<X8>)
{
  v45 = a1;
  v1 = sub_2278C75A0();
  v44 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v36 - v5;
  v7 = sub_2278C6820();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  v14 = *MEMORY[0x277D09BB8];
  v43 = sub_2278C7700();
  v16 = v15;
  v17 = v14;
  v18 = sub_227849B34();
  if (!v18)
  {

    v48 = 0u;
    v49 = 0u;
LABEL_10:
    sub_227802FC4(&v48, &qword_27D7D60A0, qword_2278C98D0);
    v22 = *(v8 + 56);
    v22(v6, 1, 1, v7);
    goto LABEL_11;
  }

  v19 = v18;
  v42 = v1;
  v20 = [v18 objectForKey_];

  if (v20)
  {
    sub_2278C7AD0();
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  v48 = v46;
  v49 = v47;
  if (!*(&v47 + 1))
  {

    goto LABEL_10;
  }

  v21 = swift_dynamicCast();
  v22 = *(v8 + 56);
  v22(v6, v21 ^ 1u, 1, v7);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

LABEL_11:
    sub_227802FC4(v6, &qword_27D7D60A8, qword_2278C9730);
    return (v22)(v45, 1, 1, v7);
  }

  v40 = *(v8 + 32);
  v41 = v8 + 32;
  v40(v13, v6, v7);
  sub_2278C7330();
  (*(v8 + 16))(v11, v13, v7);

  v24 = sub_2278C7590();
  v25 = sub_2278C7970();

  v39 = v25;
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v37 = v26;
    v38 = swift_slowAlloc();
    *&v48 = v38;
    *v26 = 136315394;
    v27 = sub_2278021B4(v43, v16, &v48);

    v28 = v37;
    *(v37 + 1) = v27;
    *(v28 + 6) = 2080;
    sub_22784A014();
    v43 = v24;
    v29 = sub_2278C7DA0();
    v31 = v30;
    (*(v8 + 8))(v11, v7);
    v32 = sub_2278021B4(v29, v31, &v48);

    *(v28 + 14) = v32;
    v33 = v43;
    _os_log_impl(&dword_2277F7000, v43, v39, "Scheduled Date from Date: (%s) = %s", v28, 0x16u);
    v34 = v38;
    swift_arrayDestroy();
    MEMORY[0x22AA9E860](v34, -1, -1);
    MEMORY[0x22AA9E860](v28, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  (*(v44 + 8))(v3, v42);
  v35 = v45;
  v40(v45, v13, v7);
  return (v22)(v35, 0, 1, v7);
}

id sub_227849B34()
{
  v0 = sub_2278C75A0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!result)
  {
    sub_2278C73A0();
    v5 = sub_2278C7590();
    v6 = sub_2278C7950();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2277F7000, v5, v6, "Failed to create notification settings user defaults", v7, 2u);
      MEMORY[0x22AA9E860](v7, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }

  return result;
}

uint64_t sub_227849C98(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_2278C6820();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_2278C75A0();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227849DB4, 0, 0);
}

uint64_t sub_227849DB4(uint64_t a1)
{
  v31 = v1;
  v3 = v1[4];
  v2 = v1[5];
  v5 = v1[2];
  v4 = v1[3];
  sub_2278C7330();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_2278C7590();
  v7 = sub_2278C7970();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v1[7];
  v9 = v1[8];
  v11 = v1[5];
  v12 = v1[6];
  v14 = v1[3];
  v13 = v1[4];
  if (v8)
  {
    v29 = v1[6];
    v15 = swift_slowAlloc();
    v27 = v7;
    v16 = swift_slowAlloc();
    v30 = v16;
    *v15 = 136315138;
    sub_22784A014();
    v17 = sub_2278C7DA0();
    v28 = v9;
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = sub_2278021B4(v17, v19, &v30);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_2277F7000, v6, v27, "Set mostRecentAlertDate = %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AA9E860](v16, -1, -1);
    MEMORY[0x22AA9E860](v15, -1, -1);

    (*(v10 + 8))(v28, v29);
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    (*(v10 + 8))(v9, v12);
  }

  v21 = *MEMORY[0x277D09BB0];
  v22 = sub_227849B34();
  if (v22)
  {
    v23 = v22;
    v24 = sub_2278C67D0();
    [v23 setObject:v24 forKey:v21];
  }

  v25 = v1[1];

  return v25();
}

unint64_t sub_22784A014()
{
  result = qword_2813BC158;
  if (!qword_2813BC158)
  {
    sub_2278C6820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BC158);
  }

  return result;
}

uint64_t sub_22784A06C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_2278C6820();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_2278C75A0();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22784A188, 0, 0);
}

uint64_t sub_22784A188(uint64_t a1)
{
  v31 = v1;
  v3 = v1[4];
  v2 = v1[5];
  v5 = v1[2];
  v4 = v1[3];
  sub_2278C7330();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_2278C7590();
  v7 = sub_2278C7970();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v1[7];
  v9 = v1[8];
  v11 = v1[5];
  v12 = v1[6];
  v14 = v1[3];
  v13 = v1[4];
  if (v8)
  {
    v29 = v1[6];
    v15 = swift_slowAlloc();
    v27 = v7;
    v16 = swift_slowAlloc();
    v30 = v16;
    *v15 = 136315138;
    sub_22784A014();
    v17 = sub_2278C7DA0();
    v28 = v9;
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = sub_2278021B4(v17, v19, &v30);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_2277F7000, v6, v27, "Set scheduledDate = %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AA9E860](v16, -1, -1);
    MEMORY[0x22AA9E860](v15, -1, -1);

    (*(v10 + 8))(v28, v29);
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    (*(v10 + 8))(v9, v12);
  }

  v21 = *MEMORY[0x277D09BB8];
  v22 = sub_227849B34();
  if (v22)
  {
    v23 = v22;
    v24 = sub_2278C67D0();
    [v23 setObject:v24 forKey:v21];
  }

  v25 = v1[1];

  return v25();
}

uint64_t sub_22784A3F8()
{
  v1 = *v0;
  sub_2278C7E60();
  MEMORY[0x22AA9DDE0](v1 + 1);
  return sub_2278C7E90();
}

uint64_t sub_22784A470(uint64_t a1)
{
  v2 = *v1;
  sub_2278C7E60();
  MEMORY[0x22AA9DDE0](v2 + 1);
  return sub_2278C7E90();
}

void *sub_22784A4B4@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result >= 4uLL)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2010003u >> (8 * *result);
  }

  *a2 = v2;
  return result;
}

unint64_t sub_22784A4F0()
{
  result = qword_27D7D6250;
  if (!qword_27D7D6250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D6250);
  }

  return result;
}

uint64_t sub_22784A544(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_22784A58C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_22784A648(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22784A690(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
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
      *(result + 176) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22784A70C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v33[5] = *MEMORY[0x277D85DE8];
  v4 = sub_2278C6EF0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2278C75A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C7350();
  sub_2278C7580();
  (*(v9 + 8))(v11, v8);
  v12 = *(v2 + 40);
  sub_2278C6EE0();
  v13 = FIExperienceTypeWithHealthStoreAndDefaultExperienceType();
  sub_2278040AC(v2, v33);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v33, v33[3]);
  MEMORY[0x28223BE20](v14);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = sub_22786311C(v16, v12);
  __swift_destroy_boxed_opaque_existential_0(v33);
  v33[0] = 0;
  v19 = [v12 wheelchairUseWithError_];
  if (v19)
  {
    v20 = v19;
    v21 = v33[0];
    v22 = [v20 wheelchairUse];

    a1[3] = &type metadata for GoalProgressService;
    a1[4] = &off_283AEA4D0;
    v23 = swift_allocObject();
    *a1 = v23;
    v24 = MEMORY[0x277D099E0];
    *(v23 + 40) = v4;
    *(v23 + 48) = v24;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v23 + 16));
    (*(v5 + 16))(boxed_opaque_existential_1, v7, v4);
    v26 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
    *(v23 + 80) = &type metadata for ContactStore;
    *(v23 + 88) = &off_283AEC2E0;
    *(v23 + 56) = v26;
    sub_2278040AC(v2, v23 + 96);
    sub_2278040AC(v2 + 48, v23 + 144);
    sub_2278040AC(v2 + 88, v23 + 184);
    sub_2278040AC(v2 + 128, v23 + 232);
    v27 = *(v2 + 168);
    *(v23 + 304) = type metadata accessor for WalkSuggestionProvider();
    *(v23 + 312) = &off_283AEB600;
    *(v23 + 280) = v18;
    v28 = v27;
    v29 = sub_2278C7440();
    result = (*(v5 + 8))(v7, v4);
    *(v23 + 136) = v13;
    *(v23 + 224) = v29;
    *(v23 + 272) = v28;
    *(v23 + 320) = v22;
  }

  else
  {
    v31 = v33[0];
    sub_2278C65F0();

    swift_willThrow();
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_22784AB80(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2278003CC;

  return v7(a1, a2);
}

uint64_t sub_22784ACC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22781659C;

  return v9(a1, a2, a3);
}

uint64_t sub_22784ADFC()
{
  v1[3] = v0;
  v2 = sub_2278C7160();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6258, &qword_2278CBE30);
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = sub_2278C65D0();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v5 = sub_2278C6820();
  v1[14] = v5;
  v1[15] = *(v5 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v6 = sub_2278C6540();
  v1[18] = v6;
  v1[19] = *(v6 - 8);
  v1[20] = swift_task_alloc();
  v7 = sub_2278C6920();
  v1[21] = v7;
  v1[22] = *(v7 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22784B0B8, 0, 0);
}

uint64_t sub_22784B0B8()
{
  v1 = v0[22];
  v13 = v0[23];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v12 = v0[14];
  v14 = v0[21];
  v15 = v0[5];
  v16 = v0[6];
  v5 = v0[3];
  v17 = v0[4];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v5[5]);
  sub_227804920();
  __swift_project_boxed_opaque_existential_1(v5 + 2, v5[5]);
  v6 = off_283AE99E0;
  type metadata accessor for DateProvider(0);
  v6(v2);
  sub_2278C67A0();
  v7 = *(v4 + 8);
  v7(v2, v12);
  sub_2278C6900();
  sub_2278C66F0();
  v8 = *(v1 + 8);
  v0[25] = v8;
  v0[26] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v13, v14);
  v7(v3, v12);
  sub_2278C6530();
  sub_2278C6730();
  v7(v3, v12);
  sub_2278C6510();
  sub_2278C6730();
  v7(v3, v12);
  __swift_project_boxed_opaque_existential_1(v5 + 7, v5[10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6260, &qword_2278CBE38);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2278C9140;
  sub_2278C7150();
  v0[2] = v9;
  sub_22784B9AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6158, &qword_2278CBE40);
  sub_227847F9C(&qword_2813B9BB8, &qword_27D7D6158, &qword_2278CBE40, MEMORY[0x277D83970]);
  sub_2278C7AF0();
  sub_2278C6FE0();
  (*(v15 + 8))(v16, v17);
  v10 = swift_task_alloc();
  v0[27] = v10;
  *v10 = v0;
  v10[1] = sub_22784B418;

  return sub_22785B1C8();
}

uint64_t sub_22784B418(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v4 = sub_22784B714;
  }

  else
  {
    v4 = sub_22784B52C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22784B52C()
{
  v1 = v0[28];
  if (v1 >> 62)
  {
    result = sub_2278C7B80();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v16 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x22AA9DBF0](0, v0[28]);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[28] + 32);
  }

  v16 = v3;

LABEL_9:
  v15 = v0[25];
  v4 = v0[24];
  v5 = v0[20];
  v14 = v0[21];
  v6 = v0[18];
  v7 = v0[19];
  v8 = v0[12];
  v9 = v0[13];
  v10 = v0[10];
  v11 = v0[11];
  (*(v0[8] + 8))();
  v12 = *(v11 + 8);
  v12(v8, v10);
  v12(v9, v10);
  (*(v7 + 8))(v5, v6);
  v15(v4, v14);

  v13 = v0[1];

  return v13(v16);
}

uint64_t sub_22784B714()
{
  v13 = v0[25];
  v1 = v0[24];
  v2 = v0[20];
  v12 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[11];
  (*(v0[8] + 8))();
  v9 = *(v8 + 8);
  v9(v5, v7);
  v9(v6, v7);
  (*(v3 + 8))(v2, v4);
  v13(v1, v12);

  v10 = v0[1];

  return v10();
}

uint64_t sub_22784B878()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));

  sub_227836DCC(*(v0 + 144));

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_23FitnessCoachingServices31FirstGlanceActivityDataProviderC5StateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22784B918(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void *sub_22784B974(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

unint64_t sub_22784B9AC()
{
  result = qword_2813BC0F8;
  if (!qword_2813BC0F8)
  {
    sub_2278C7160();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BC0F8);
  }

  return result;
}

uint64_t sub_22784BA04()
{
  v1[2] = v0;
  v2 = sub_2278C75A0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22784BAC4, 0, 0);
}

uint64_t sub_22784BAC4(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[3];
  sub_2278C7340();
  sub_2278C7580();
  (*(v3 + 8))(v2, v4);
  v5 = swift_task_alloc();
  v1[6] = v5;
  *v5 = v1;
  v5[1] = sub_22784BBB8;

  return sub_22784ADFC();
}

uint64_t sub_22784BBB8(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 56) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22784BD08, 0, 0);
  }
}

uint64_t sub_22784BD08()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 96), *(*(v0 + 16) + 120));
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_22784BDA8;

  return sub_2278A7844();
}

uint64_t sub_22784BDA8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_22784BF38;
  }

  else
  {
    v2 = sub_22784BEBC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22784BEBC()
{
  v1 = v0[2];
  v2 = *(v1 + 144);
  *(v1 + 144) = v0[7];
  sub_227836DCC(v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_22784BF38()
{

  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_22784BFA4(double a1)
{
  if (v1[18] == 1)
  {
    return 0;
  }

  sub_2278C79F0();
  v5 = v4;
  sub_2278C79F0();
  v7 = v6;
  sub_2278C79F0();
  v9 = v8;
  v10 = *(*__swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]) + OBJC_IVAR____TtC23FitnessCoachingServices18TypicalDayProvider_state);
  if (!v10)
  {
    if (v5 >= a1)
    {
      v12 = 0.0;
      if (v7 >= a1)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    return 1;
  }

  [v10 projectedDayDuration];
  if (v5 < a1)
  {
    return 1;
  }

  v12 = v11;
  if (v7 >= a1)
  {
    goto LABEL_11;
  }

LABEL_9:
  sub_2278C78A0();
  if (v13 * 0.5 < v12)
  {
    return 1;
  }

LABEL_11:
  if (v9 >= a1)
  {
    return 0;
  }

  sub_2278C78A0();
  return v14 * 12.0 < v12;
}

uint64_t sub_22784C0AC(char a1)
{
  *(v2 + 40) = v1;
  *(v2 + 352) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6268, &qword_2278CBE50);
  *(v2 + 48) = v3;
  *(v2 + 56) = *(v3 - 8);
  *(v2 + 64) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6270, &qword_2278CBE58);
  *(v2 + 72) = v4;
  *(v2 + 80) = *(v4 - 8);
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  v5 = sub_2278C7160();
  *(v2 + 104) = v5;
  *(v2 + 112) = *(v5 - 8);
  *(v2 + 120) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6258, &qword_2278CBE30);
  *(v2 + 128) = v6;
  *(v2 + 136) = *(v6 - 8);
  *(v2 + 144) = swift_task_alloc();
  *(v2 + 152) = swift_task_alloc();
  v7 = sub_2278C65D0();
  *(v2 + 160) = v7;
  *(v2 + 168) = *(v7 - 8);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v8 = sub_2278C6910();
  *(v2 + 192) = v8;
  *(v2 + 200) = *(v8 - 8);
  *(v2 + 208) = swift_task_alloc();
  v9 = sub_2278C6920();
  *(v2 + 216) = v9;
  *(v2 + 224) = *(v9 - 8);
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  v10 = sub_2278C6820();
  *(v2 + 248) = v10;
  *(v2 + 256) = *(v10 - 8);
  *(v2 + 264) = swift_task_alloc();
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = swift_task_alloc();
  *(v2 + 288) = swift_task_alloc();
  *(v2 + 296) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22784C478, 0, 0);
}

uint64_t sub_22784C478()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  v45 = *(v0 + 216);
  v4 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  v5 = off_283AE99E0;
  type metadata accessor for DateProvider(0);
  v5(v1);
  sub_2278C6900();
  sub_2278C6780();
  v6 = *(v3 + 8);
  *(v0 + 304) = v6;
  *(v0 + 312) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v45);
  __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  sub_227804920();
  v7 = sub_2278C66A0();
  v8 = *(v0 + 296);
  if (v7)
  {
    v10 = *(v0 + 200);
    v9 = *(v0 + 208);
    v11 = *(v0 + 192);
    sub_2278C66C0();
    sub_2278C6890();
    (*(v10 + 104))(v9, *MEMORY[0x277CC99A8], v11);
    sub_2278C66E0();
    (*(v10 + 8))(v9, v11);
    sub_2278C6690();
    v13 = v12;
    sub_2278C6690();
    v14 = *(v0 + 280);
    if (v13 < v15)
    {
      v37 = *(v0 + 152);
      v38 = *(v0 + 136);
      v16 = *(v0 + 120);
      v39 = *(v0 + 144);
      v40 = *(v0 + 128);
      v18 = *(v0 + 104);
      v17 = *(v0 + 112);
      v42 = *(v0 + 96);
      v43 = *(v0 + 80);
      v44 = *(v0 + 72);
      v46 = *(v0 + 88);
      v19 = 3;
      if (*(v0 + 352) == 1)
      {
        v19 = 1;
      }

      v41 = v19;
      v20 = *(v0 + 40);
      sub_2278C6730();
      sub_2278C6730();
      __swift_project_boxed_opaque_existential_1((v20 + 56), *(v20 + 80));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6260, &qword_2278CBE38);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_2278C9140;
      sub_2278C7150();
      *(v0 + 16) = v21;
      sub_22784B9AC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6158, &qword_2278CBE40);
      sub_227847F9C(&qword_2813B9BB8, &qword_27D7D6158, &qword_2278CBE40, MEMORY[0x277D83970]);
      sub_2278C7AF0();
      sub_2278C6FE0();
      (*(v17 + 8))(v16, v18);
      (*(v38 + 16))(v39, v37, v40);
      *(swift_allocObject() + 16) = v41;
      sub_227847F9C(&qword_2813B9BA8, &qword_27D7D6258, &qword_2278CBE30, MEMORY[0x277D858E0]);
      sub_2278C7D60();
      (*(v43 + 16))(v46, v42, v44);
      sub_227847F9C(&qword_2813B9A68, &qword_27D7D6270, &qword_2278CBE58, MEMORY[0x277D859A0]);
      sub_2278C7850();
      v22 = sub_227847F9C(&qword_2813B9A70, &qword_27D7D6268, &qword_2278CBE50, MEMORY[0x277D85998]);
      *(v0 + 320) = v22;
      v23 = swift_task_alloc();
      *(v0 + 328) = v23;
      *v23 = v0;
      v23[1] = sub_22784CB54;
      v24 = *(v0 + 48);

      return MEMORY[0x282200308](v0 + 24, v24, v22);
    }

    v29 = *(v0 + 288);
    v47 = *(v0 + 296);
    v30 = *(v0 + 272);
    v31 = *(v0 + 248);
    v32 = *(v0 + 232);
    v33 = *(v0 + 216);
    v34 = *(*(v0 + 256) + 8);
    v34(*(v0 + 264), v31);
    v34(v30, v31);
    v34(v14, v31);
    v6(v32, v33);
    v34(v29, v31);
    v34(v47, v31);
  }

  else
  {
    v25 = *(v0 + 288);
    v26 = *(v0 + 248);
    v27 = *(v0 + 256);
    v6(*(v0 + 232), *(v0 + 216));
    v28 = *(v27 + 8);
    v28(v25, v26);
    v28(v8, v26);
  }

  v35 = *(v0 + 8);

  return v35(0);
}

uint64_t sub_22784CB54()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[7];
    v3 = v2[8];
    v5 = v2[6];

    (*(v4 + 8))(v3, v5);
    v6 = sub_22784CF88;
  }

  else
  {
    v6 = sub_22784CC94;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22784CC94()
{
  v1 = v0[3];
  if (v1)
  {
    v0[43] = v1;
    v2 = swift_task_alloc();
    v0[42] = v2;
    *v2 = v0;
    v2[1] = sub_22784D1C8;
    v3 = v0[40];
    v4 = v0[6];

    return MEMORY[0x282200308](v0 + 4, v4, v3);
  }

  else
  {
    (*(v0[7] + 8))(v0[8], v0[6]);
    v25 = v0[37];
    v23 = v0[38];
    v24 = v0[36];
    v5 = v0[32];
    v18 = v0[33];
    v19 = v0[34];
    v6 = v0[31];
    v21 = v0[29];
    v22 = v0[35];
    v20 = v0[27];
    v7 = v0[22];
    v8 = v0[23];
    v9 = v0[20];
    v10 = v0[21];
    v11 = v0[19];
    v13 = v0[16];
    v12 = v0[17];
    (*(v0[10] + 8))(v0[12], v0[9]);
    (*(v12 + 8))(v11, v13);
    v14 = *(v10 + 8);
    v14(v7, v9);
    v14(v8, v9);
    v15 = *(v5 + 8);
    v15(v18, v6);
    v15(v19, v6);
    v15(v22, v6);
    v23(v21, v20);
    v15(v24, v6);
    v15(v25, v6);

    v16 = v0[1];

    return v16(0);
  }
}

uint64_t sub_22784CF88()
{
  v21 = v0[37];
  v19 = v0[38];
  v20 = v0[36];
  v1 = v0[32];
  v14 = v0[33];
  v15 = v0[34];
  v2 = v0[31];
  v17 = v0[29];
  v18 = v0[35];
  v16 = v0[27];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[20];
  v6 = v0[21];
  v7 = v0[19];
  v9 = v0[16];
  v8 = v0[17];
  (*(v0[10] + 8))(v0[12], v0[9]);
  (*(v8 + 8))(v7, v9);
  v10 = *(v6 + 8);
  v10(v3, v5);
  v10(v4, v5);
  v11 = *(v1 + 8);
  v11(v14, v2);
  v11(v15, v2);
  v11(v18, v2);
  v19(v17, v16);
  v11(v20, v2);
  v11(v21, v2);

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_22784D1C8()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[43];
    v5 = v2[7];
    v4 = v2[8];
    v6 = v2[6];

    (*(v5 + 8))(v4, v6);
    v7 = sub_22784CF88;
  }

  else
  {
    v7 = sub_22784D318;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22784D318()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 344);
  if (v1)
  {
    sub_2278C7A10();
    v4 = v3;
    sub_2278C7A10();
    if (v4 >= v5)
    {
    }

    else
    {

      *(v0 + 344) = v1;
    }

    v19 = swift_task_alloc();
    *(v0 + 336) = v19;
    *v19 = v0;
    v19[1] = sub_22784D1C8;
    v20 = *(v0 + 320);
    v21 = *(v0 + 48);

    return MEMORY[0x282200308](v0 + 32, v21, v20);
  }

  else
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    v29 = *(v0 + 296);
    v27 = *(v0 + 304);
    v28 = *(v0 + 288);
    v22 = *(v0 + 264);
    v23 = *(v0 + 272);
    v30 = v2;
    v7 = *(v0 + 248);
    v6 = *(v0 + 256);
    v25 = *(v0 + 232);
    v26 = *(v0 + 280);
    v24 = *(v0 + 216);
    v9 = *(v0 + 176);
    v8 = *(v0 + 184);
    v10 = *(v0 + 160);
    v11 = *(v0 + 168);
    v12 = *(v0 + 152);
    v14 = *(v0 + 128);
    v13 = *(v0 + 136);
    (*(*(v0 + 80) + 8))(*(v0 + 96), *(v0 + 72));
    (*(v13 + 8))(v12, v14);
    v15 = *(v11 + 8);
    v15(v9, v10);
    v15(v8, v10);
    v16 = *(v6 + 8);
    v16(v22, v7);
    v16(v23, v7);
    v16(v26, v7);
    v27(v25, v24);
    v16(v28, v7);
    v16(v29, v7);

    v17 = *(v0 + 8);

    return v17(v30);
  }
}

uint64_t sub_22784D648(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 16) = a2;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_22784D66C, 0, 0);
}

uint64_t sub_22784D66C()
{
  v1 = *(v0 + 16);
  v2 = sub_2278C7A00() >= v1;
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_22784D6D4(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22781659C;

  return sub_22784D648(a1, v4);
}

uint64_t sub_22784D770(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22781659C;

  return v7(a1, a2);
}

uint64_t sub_22784D888(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22781659C;

  return v7(a1, a2);
}

uint64_t sub_22784D9A0@<X0>(char *a1@<X8>)
{
  v45 = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6298, qword_2278CBF40);
  v1 = MEMORY[0x28223BE20](v43);
  v44 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v41 = &v40 - v3;
  v49 = sub_2278C7630();
  v42 = *(v49 - 8);
  v4 = MEMORY[0x28223BE20](v49);
  v48 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v50 = &v40 - v6;
  v51 = sub_2278C6820();
  v47 = *(v51 - 8);
  v7 = v47;
  v8 = MEMORY[0x28223BE20](v51);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  v13 = sub_2278C6870();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2278C6920();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v40 - v22;
  (*(v14 + 104))(v16, *MEMORY[0x277CC9830], v13);
  sub_2278C6880();
  (*(v14 + 8))(v16, v13);
  sub_2278C6810();
  v24 = *(v7 + 16);
  v46 = v12;
  v24(v10, v12, v51);
  v25 = *(v18 + 16);
  v25(v21, v23, v17);
  sub_2278C7620();
  sub_2278C6900();
  sub_2278C67A0();
  v26 = *(v18 + 8);
  v26(v21, v17);
  v25(v21, v23, v17);
  v27 = v49;
  v28 = v48;
  sub_2278C7620();
  sub_227850400(&qword_2813B9BD8, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
  LOBYTE(v10) = sub_2278C76D0();
  (*(v47 + 8))(v46, v51);
  result = (v26)(v23, v17);
  if (v10)
  {
    v31 = v41;
    v30 = v42;
    v32 = *(v42 + 32);
    v32(v41, v28, v27);
    v33 = v43;
    v32((v31 + *(v43 + 48)), v50, v27);
    v34 = v44;
    sub_227850448(v31, v44, &qword_27D7D6298, qword_2278CBF40);
    v35 = *(v33 + 48);
    v36 = v45;
    v32(v45, v34, v27);
    v37 = *(v30 + 8);
    v37(v34 + v35, v27);
    sub_2278504B0(v31, v34);
    v38 = *(v33 + 48);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6288, &qword_2278CBF38);
    v32(&v36[*(v39 + 36)], (v34 + v38), v27);
    return (v37)(v34, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22784DF30()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = sub_2278C75A0();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_2278C6AD0();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = sub_2278C6B10();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  v5 = sub_2278C6B90();
  v1[13] = v5;
  v1[14] = *(v5 - 8);
  v1[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6288, &qword_2278CBF38);
  v1[16] = swift_task_alloc();
  v6 = sub_2278C6AA0();
  v1[17] = v6;
  v1[18] = *(v6 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v7 = sub_2278C6870();
  v1[21] = v7;
  v1[22] = *(v7 - 8);
  v1[23] = swift_task_alloc();
  v8 = sub_2278C6920();
  v1[24] = v8;
  v1[25] = *(v8 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22784E290, 0, 0);
}

uint64_t sub_22784E290()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[18];
  v14 = v0[24];
  v15 = v0[19];
  v9 = v0[16];
  v16 = v0[17];
  v17 = v0[2];
  (*(v4 + 104))(v5, *MEMORY[0x277CC9830], v6);
  sub_2278C6880();
  (*(v4 + 8))(v5, v6);
  sub_22784D9A0(v9);
  (*(v3 + 16))(v1, v2, v14);
  sub_2278C6A90();
  (*(v8 + 16))(v15, v7, v16);
  sub_2278C6B80();
  v10 = *(v17 + 16);
  v11 = swift_task_alloc();
  v0[28] = v11;
  *v11 = v0;
  v11[1] = sub_22784E434;
  v12 = v0[12];

  return MEMORY[0x282168950](v12, v10, 0, 0);
}

uint64_t sub_22784E434()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_22784E770;
  }

  else
  {
    v2 = sub_22784E548;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22784E548()
{
  v1 = v0[8];
  result = sub_2278C6B00();
  v3 = result;
  v4 = 0;
  v5 = *(result + 16);
  do
  {
    v6 = v4;
    if (v5 == v4)
    {
      break;
    }

    if (v4 >= *(v3 + 16))
    {
      __break(1u);
      return result;
    }

    v7 = v0[9];
    v8 = v0[7];
    v9 = (*(v1 + 16))(v7, v3 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v4++, v8);
    v10 = MEMORY[0x22AA9CA30](v9);
    v11 = sub_2278C74B0();
    result = (*(v1 + 8))(v7, v8);
  }

  while (v10 < v11);
  v25 = v5 != v6;
  v12 = v0[25];
  v23 = v0[24];
  v24 = v0[27];
  v13 = v0[18];
  v21 = v0[17];
  v22 = v0[20];
  v14 = v0[14];
  v15 = v0[15];
  v17 = v0[12];
  v16 = v0[13];
  v18 = v0[10];
  v19 = v0[11];

  (*(v19 + 8))(v17, v18);
  (*(v14 + 8))(v15, v16);
  (*(v13 + 8))(v22, v21);
  (*(v12 + 8))(v24, v23);

  v20 = v0[1];

  return v20(v25);
}

uint64_t sub_22784E770(uint64_t a1)
{
  v36 = v1;
  v2 = v1[29];
  sub_2278C7340();
  v3 = v2;
  v4 = sub_2278C7590();
  v5 = sub_2278C7970();

  v29 = v5;
  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[27];
  v9 = v1[24];
  v8 = v1[25];
  v10 = v1[20];
  v12 = v1[17];
  v11 = v1[18];
  v13 = v1[14];
  v34 = v1[15];
  v32 = v1[29];
  v33 = v1[13];
  v14 = v1[5];
  v30 = v1[4];
  v31 = v1[6];
  if (v6)
  {
    v28 = v1[25];
    v15 = swift_slowAlloc();
    v27 = v9;
    v16 = swift_slowAlloc();
    v26 = v7;
    v17 = swift_slowAlloc();
    v35 = v17;
    *v15 = 136315394;
    v18 = sub_2278C7EA0();
    v25 = v12;
    v20 = sub_2278021B4(v18, v19, &v35);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2112;
    v21 = v32;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v22;
    *v16 = v22;
    _os_log_impl(&dword_2277F7000, v4, v29, "%s received error when querying body balance: %@", v15, 0x16u);
    sub_227802FC4(v16, &qword_27D7D64B0, &qword_2278CA010);
    MEMORY[0x22AA9E860](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA9E860](v17, -1, -1);
    MEMORY[0x22AA9E860](v15, -1, -1);

    (*(v14 + 8))(v31, v30);
    (*(v13 + 8))(v34, v33);
    (*(v11 + 8))(v10, v25);
    (*(v28 + 8))(v26, v27);
  }

  else
  {

    (*(v14 + 8))(v31, v30);
    (*(v13 + 8))(v34, v33);
    (*(v11 + 8))(v10, v12);
    (*(v8 + 8))(v7, v9);
  }

  v23 = v1[1];

  return v23(0);
}

uint64_t sub_22784EAB0()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = sub_2278C75A0();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_2278C6A80();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6278, &qword_2278CBF28);
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6280, &qword_2278CBF30);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v4 = sub_2278C6AF0();
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();
  v5 = sub_2278C6B60();
  v1[18] = v5;
  v1[19] = *(v5 - 8);
  v1[20] = swift_task_alloc();
  v6 = sub_2278C6AB0();
  v1[21] = v6;
  v1[22] = *(v6 - 8);
  v1[23] = swift_task_alloc();
  v7 = sub_2278C6B40();
  v1[24] = v7;
  v1[25] = *(v7 - 8);
  v1[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6288, &qword_2278CBF38);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v8 = sub_2278C6870();
  v1[29] = v8;
  v1[30] = *(v8 - 8);
  v1[31] = swift_task_alloc();
  v9 = sub_2278C6920();
  v1[32] = v9;
  v1[33] = *(v9 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22784EEF8, 0, 0);
}

uint64_t sub_22784EEF8()
{
  v1 = v0[35];
  v2 = v0[33];
  v14 = v0[34];
  v15 = v0[32];
  v3 = v0[30];
  v4 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[27];
  v9 = v0[22];
  v8 = v0[23];
  v16 = v0[21];
  v17 = v0[2];
  (*(v3 + 104))(v4, *MEMORY[0x277CC9830], v5);
  sub_2278C6880();
  (*(v3 + 8))(v4, v5);
  sub_22784D9A0(v6);
  sub_227850448(v6, v7, &qword_27D7D6288, &qword_2278CBF38);
  (*(v2 + 16))(v14, v1, v15);
  (*(v9 + 104))(v8, *MEMORY[0x277D0FEE8], v16);
  sub_2278C6B30();
  v10 = *(v17 + 16);
  v11 = swift_task_alloc();
  v0[36] = v11;
  *v11 = v0;
  v11[1] = sub_22784F0B0;
  v12 = v0[20];

  return MEMORY[0x2821688D8](v12, v10);
}

uint64_t sub_22784F0B0()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_22784F798;
  }

  else
  {
    v2 = sub_22784F1C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22784F1C4()
{
  result = sub_2278C6B50();
  v54 = *(result + 16);
  v56 = result;
  if (v54)
  {
    v2 = result;
    v3 = 0;
    v4 = v0[16];
    v51 = result + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v52 = v0[10];
    v5 = v0[8];
    v50 = (v5 + 104);
    v49 = (v5 + 56);
    v6 = (v5 + 48);
    v39 = (v5 + 32);
    v42 = (v5 + 8);
    v53 = v4;
    v48 = (v4 + 8);
    v47 = *MEMORY[0x277D0FE90];
    v7 = &qword_27D7D6280;
    v8 = &qword_2278CBF30;
    v40 = (v5 + 48);
    while (1)
    {
      if (v3 >= *(v2 + 16))
      {
        __break(1u);
        return result;
      }

      v12 = v0[14];
      v13 = v0[13];
      v14 = v0[11];
      v15 = v0[7];
      (*(v53 + 16))(v0[17], v51 + *(v53 + 72) * v3, v0[15]);
      sub_2278C6AE0();
      (*v50)(v13, v47, v15);
      (*v49)(v13, 0, 1, v15);
      v16 = *(v52 + 48);
      sub_227850448(v12, v14, v7, v8);
      v57 = v16;
      sub_227850448(v13, v14 + v16, v7, v8);
      v17 = v7;
      v18 = *v6;
      if ((*v6)(v14, 1, v15) == 1)
      {
        break;
      }

      v19 = v0[7];
      sub_227850448(v0[11], v0[12], v17, v8);
      v20 = v18(v14 + v57, 1, v19);
      v44 = v0[15];
      v46 = v0[17];
      v43 = v0[14];
      v21 = v8;
      v23 = v0[12];
      v22 = v0[13];
      if (v20 == 1)
      {
        v24 = v0[7];
        sub_227802FC4(v0[13], v17, v8);
        sub_227802FC4(v43, v17, v8);
        (*v48)(v46, v44);
        (*v42)(v23, v24);
        v2 = v56;
LABEL_4:
        result = sub_227802FC4(v0[11], &qword_27D7D6278, &qword_2278CBF28);
        v7 = &qword_27D7D6280;
        goto LABEL_5;
      }

      v41 = v0[11];
      v25 = v0[9];
      v26 = v0[7];
      (*v39)(v25, v14 + v57, v26);
      sub_227850400(&qword_27D7D6290, MEMORY[0x277D0FEA0], MEMORY[0x277D0FEA8]);
      v58 = sub_2278C76E0();
      v27 = *v42;
      v28 = v25;
      v6 = v40;
      (*v42)(v28, v26);
      sub_227802FC4(v22, v17, v21);
      sub_227802FC4(v43, v17, v21);
      (*v48)(v46, v44);
      v27(v23, v26);
      result = sub_227802FC4(v41, v17, v21);
      v2 = v56;
      v7 = v17;
      v8 = v21;
      if (v58)
      {
        goto LABEL_14;
      }

LABEL_5:
      if (v54 == ++v3)
      {
        goto LABEL_12;
      }
    }

    v9 = v0[17];
    v10 = v0[14];
    v11 = v0[15];
    v45 = v0[7];
    sub_227802FC4(v0[13], v17, v8);
    sub_227802FC4(v10, v17, v8);
    (*v48)(v9, v11);
    v2 = v56;
    if (v18(v14 + v57, 1, v45) == 1)
    {
      sub_227802FC4(v0[11], &qword_27D7D6280, &qword_2278CBF30);
LABEL_14:
      v59 = 1;
      goto LABEL_15;
    }

    goto LABEL_4;
  }

LABEL_12:
  v59 = 0;
LABEL_15:
  v55 = v0[35];
  v30 = v0[32];
  v29 = v0[33];
  v31 = v0[28];
  v33 = v0[25];
  v32 = v0[26];
  v34 = v0[24];
  v35 = v0[19];
  v36 = v0[20];
  v37 = v0[18];

  (*(v35 + 8))(v36, v37);
  (*(v33 + 8))(v32, v34);
  sub_227802FC4(v31, &qword_27D7D6288, &qword_2278CBF38);
  (*(v29 + 8))(v55, v30);

  v38 = v0[1];

  return v38(v59);
}

uint64_t sub_22784F798(uint64_t a1)
{
  v33 = v1;
  v2 = v1[37];
  sub_2278C7340();
  v3 = v2;
  v4 = sub_2278C7590();
  v5 = sub_2278C7970();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[35];
  v9 = v1[32];
  v8 = v1[33];
  v10 = v1[28];
  v12 = v1[25];
  v11 = v1[26];
  v30 = v1[37];
  v31 = v1[24];
  v13 = v1[5];
  v28 = v1[4];
  v29 = v1[6];
  if (v6)
  {
    v27 = v1[33];
    v14 = swift_slowAlloc();
    v26 = v9;
    v15 = swift_slowAlloc();
    v25 = v7;
    v16 = swift_slowAlloc();
    v32 = v16;
    *v14 = 136315394;
    v17 = sub_2278C7EA0();
    v24 = v11;
    v19 = sub_2278021B4(v17, v18, &v32);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    v20 = v30;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v21;
    *v15 = v21;
    _os_log_impl(&dword_2277F7000, v4, v5, "%s received error when querying workout load: %@", v14, 0x16u);
    sub_227802FC4(v15, &qword_27D7D64B0, &qword_2278CA010);
    MEMORY[0x22AA9E860](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AA9E860](v16, -1, -1);
    MEMORY[0x22AA9E860](v14, -1, -1);

    (*(v13 + 8))(v29, v28);
    (*(v12 + 8))(v24, v31);
    sub_227802FC4(v10, &qword_27D7D6288, &qword_2278CBF38);
    (*(v27 + 8))(v25, v26);
  }

  else
  {

    (*(v13 + 8))(v29, v28);
    (*(v12 + 8))(v11, v31);
    sub_227802FC4(v10, &qword_27D7D6288, &qword_2278CBF38);
    (*(v8 + 8))(v7, v9);
  }

  v22 = v1[1];

  return v22(0);
}

uint64_t sub_22784FB14()
{
  v1[4] = v0;
  v1[5] = *v0;
  v2 = sub_2278C75A0();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_2278C75F0();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = sub_2278C75E0();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v5 = sub_2278C7610();
  v1[15] = v5;
  v1[16] = *(v5 - 8);
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22784FD10, 0, 0);
}

uint64_t sub_22784FD10()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  sub_2278C75C0();
  sub_2278C7600();
  sub_2278C75D0();
  (*(v2 + 8))(v1, v3);
  v4 = sub_227850400(qword_2813B9BE0, MEMORY[0x277CCB668], MEMORY[0x277CCB670]);
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_22784FE50;
  v6 = v0[12];

  return MEMORY[0x282200308](v0 + 2, v6, v4);
}

uint64_t sub_22784FE50()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_227850074;
  }

  else
  {
    v2 = sub_22784FF64;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22784FF88()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = [*(v0 + 160) state];
  }

  else
  {
    v2 = 0;
  }

  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 120);
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  (*(v4 + 8))(v3, v5);

  v6 = *(v0 + 8);

  return v6(v2);
}

uint64_t sub_227850074()
{
  *(v0 + 24) = *(v0 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6110, qword_2278CA030);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_227850108, 0, 0);
}

uint64_t sub_227850108()
{
  v29 = v0;
  v1 = v0[19];
  (*(v0[13] + 8))(v0[14], v0[12]);
  sub_2278C7340();
  v2 = v1;
  v3 = sub_2278C7590();
  v4 = sub_2278C7950();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[19];
  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[15];
  v11 = v0[7];
  v10 = v0[8];
  v12 = v0[6];
  if (v5)
  {
    v27 = v0[15];
    v26 = v0[6];
    v13 = swift_slowAlloc();
    v25 = v7;
    v14 = swift_slowAlloc();
    v23 = v6;
    v15 = swift_slowAlloc();
    v28 = v15;
    *v13 = 136315394;
    v16 = sub_2278C7EA0();
    v24 = v10;
    v18 = sub_2278021B4(v16, v17, &v28);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    v19 = v23;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    _os_log_impl(&dword_2277F7000, v3, v4, "[%s] Error when trying to get model from pregnancy state query: %@", v13, 0x16u);
    sub_227802FC4(v14, &qword_27D7D64B0, &qword_2278CA010);
    MEMORY[0x22AA9E860](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AA9E860](v15, -1, -1);
    MEMORY[0x22AA9E860](v13, -1, -1);

    (*(v11 + 8))(v24, v26);
    (*(v8 + 8))(v25, v27);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
    (*(v8 + 8))(v7, v9);
  }

  v21 = v0[1];

  return v21(0);
}

uint64_t sub_2278503A4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_227850400(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227850448(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2278504B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6298, qword_2278CBF40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_227850584(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WalkSuggestionProvider();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_227850628(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v44 = sub_2278C75A0();
  v43 = *(v44 - 8);
  v5 = MEMORY[0x28223BE20](v44);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  v10 = sub_2278C6920();
  v40 = *(v10 - 8);
  v41 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2278C6820();
  v39 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2278C6540();
  v17 = MEMORY[0x28223BE20](v16);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 == 2)
  {
    sub_2278C73A0();
    v21 = sub_2278C7590();
    v22 = sub_2278C7970();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2277F7000, v21, v22, "No walk suggestion for wheelchair user", v23, 2u);
      MEMORY[0x22AA9E860](v23, -1, -1);
    }

    (*(v43 + 8))(v7, v44);
  }

  else
  {
    v37 = v18;
    v38 = v17;
    v24 = [objc_allocWithZone(MEMORY[0x277D09588]) initWithHealthStore_];
    if (v24)
    {
      v36 = v24;
      [v24 populateExistingCharacteristics];
      v25 = (v2 + OBJC_IVAR____TtC23FitnessCoachingServices22WalkSuggestionProvider_dateProvider);
      __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC23FitnessCoachingServices22WalkSuggestionProvider_dateProvider), *(v2 + OBJC_IVAR____TtC23FitnessCoachingServices22WalkSuggestionProvider_dateProvider + 24));
      v44 = v3;
      v26 = off_283AE99E0;
      type metadata accessor for DateProvider(0);
      v43 = v2;
      v26(v15);
      v27 = v25[3];
      v28 = v25;
      v29 = v36;
      __swift_project_boxed_opaque_existential_1(v28, v27);
      sub_227804920();
      sub_2278C66F0();
      (*(v40 + 8))(v12, v41);
      (*(v39 + 8))(v15, v13);
      v30 = objc_allocWithZone(MEMORY[0x277D095D0]);
      v31 = sub_2278C6500();
      v32 = [v30 initForDateInterval:v31 delegate:v43];

      [v32 handleUpdatedCurrentActivitySummary_];
      sub_227850F60(v29, v32);
      (*(v37 + 8))(v20, v38);
    }

    else
    {
      sub_2278C73A0();
      v33 = sub_2278C7590();
      v34 = sub_2278C7950();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_2277F7000, v33, v34, "Failed to create activity settings controller for walk suggestion", v35, 2u);
        MEMORY[0x22AA9E860](v35, -1, -1);
      }

      (*(v43 + 8))(v9, v44);
      sub_227850F0C();
      swift_allocError();
      swift_willThrow();
    }
  }
}

unint64_t sub_227850F0C()
{
  result = qword_27D7D6318;
  if (!qword_27D7D6318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D6318);
  }

  return result;
}

id sub_227850F60(uint64_t a1, id a2)
{
  if (![a2 shouldSuggestWalkWithActivitySettingsController_])
  {
    return 0;
  }

  result = [a2 briskWalkTimeToCompleteMoveGoalWithAcitivitySettingsController_];
  v6 = ceil(v5 / 60.0);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v6 > -9.22337204e18)
  {
    if (v6 < 9.22337204e18)
    {
      return v6;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for AchievementError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AchievementError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22785117C()
{
  result = qword_27D7D6320;
  if (!qword_27D7D6320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D6320);
  }

  return result;
}

uint64_t sub_2278511D0(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2278003CC;

  return v7(a1, a2);
}

uint64_t sub_2278512E8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_2278C75A0();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278513A8, v1, 0);
}

uint64_t sub_2278513A8(uint64_t a1)
{
  v3 = v1[10];
  v2 = v1[11];
  v5 = v1[8];
  v4 = v1[9];
  sub_2278C7360();
  sub_2278C7580();
  (*(v3 + 8))(v2, v4);
  __swift_project_boxed_opaque_existential_1((v5 + 112), *(v5 + 136));
  sub_227824F80(v1 + 2);
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v6 = swift_task_alloc();
  v1[12] = v6;
  *v6 = v1;
  v6[1] = sub_2278268AC;
  v7 = v1[7];

  return sub_227880BF4(v7);
}

uint64_t sub_227851548(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 40) = a2;
  *(v2 + 48) = v3;
  return MEMORY[0x2822009F8](sub_22785156C, 0, 0);
}

uint64_t sub_22785156C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_227824038;
    v3 = v0[6];

    return sub_2278512E8(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_22785165C()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](sub_22785167C, v2, 0);
}

uint64_t sub_22785167C()
{
  v1 = v0[2];
  v2 = v1[22];
  v3 = v1[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v2);
  v4 = swift_allocObject();
  v0[3] = v4;
  swift_weakInit();
  v5 = swift_task_alloc();
  v0[4] = v5;
  v6 = sub_227851834();
  *v5 = v0;
  v5[1] = sub_227824318;
  v7 = MEMORY[0x277D09B78];

  return MEMORY[0x2821603D0](3, &unk_2278CC158, v4, v2, v6, v3, v7);
}

uint64_t sub_22785179C(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2278003CC;

  return sub_227851548(a1, v1);
}

unint64_t sub_227851834()
{
  result = qword_2813B9AD0;
  if (!qword_2813B9AD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813B9AD0);
  }

  return result;
}

uint64_t sub_227851880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2278003CC;

  return v9(a1, a2, a3);
}

uint64_t sub_2278519A8(uint64_t a1)
{
  v2 = sub_2278C75A0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19 - v8;
  if (a1 <= 3)
  {
    if ((a1 - 1) < 3)
    {

      return MEMORY[0x2821604E0](v7);
    }

    if (!a1)
    {
      v10 = v7;
      sub_2278C73B0();
      v11 = sub_2278C7590();
      v12 = sub_2278C7960();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_2277F7000, v11, v12, "Move Mode notification attempted to present with undefined notification type", v13, 2u);
        MEMORY[0x22AA9E860](v13, -1, -1);
      }

      (*(v3 + 8))(v9, v10);
      return sub_2278C72C0();
    }

LABEL_18:
    v14 = v7;
    sub_2278C73B0();
    v15 = sub_2278C7590();
    v16 = sub_2278C7960();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2277F7000, v15, v16, "Move Mode notification attempted to present with an unknown notification type", v17, 2u);
      MEMORY[0x22AA9E860](v17, -1, -1);
    }

    (*(v3 + 8))(v6, v14);
    return sub_2278C72C0();
  }

  if ((a1 - 4) >= 2)
  {
    if (a1 == 6)
    {

      return sub_2278C72C0();
    }

    goto LABEL_18;
  }

  return MEMORY[0x2821604E8](v7);
}
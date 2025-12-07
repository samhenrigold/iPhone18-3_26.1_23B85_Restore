uint64_t sub_251BC9924(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void, void))
{
  if (a1)
  {
    v8 = a1;
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v9 = sub_251C70764();
    __swift_project_value_buffer(v9, qword_2813E8130);
    v10 = a1;

    v11 = a3;
    v12 = sub_251C70744();
    v13 = sub_251C713D4();

    if (!os_log_type_enabled(v12, v13))
    {

      return a4(0, 0);
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v36 = v15;
    *v14 = 136315650;
    *(v14 + 4) = sub_251B10780(*(a2 + 144), *(a2 + 152), &v36);
    *(v14 + 12) = 2080;
    v16 = [v11 name];
    v17 = sub_251C70F14();
    v19 = v18;

    v20 = sub_251B10780(v17, v19, &v36);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2080;
    v21 = a1;
    sub_251A82284();
    v22 = sub_251C70F74();
    v24 = sub_251B10780(v22, v23, &v36);

    *(v14 + 24) = v24;
    _os_log_impl(&dword_251A6C000, v12, v13, "%s: activity %s failed: %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v15, -1, -1);
    MEMORY[0x25308E2B0](v14, -1, -1);
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v25 = sub_251C70764();
    __swift_project_value_buffer(v25, qword_2813E8130);

    v26 = a3;
    v12 = sub_251C70744();
    v27 = sub_251C713F4();

    if (os_log_type_enabled(v12, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v36 = v29;
      *v28 = 136315394;
      *(v28 + 4) = sub_251B10780(*(a2 + 144), *(a2 + 152), &v36);
      *(v28 + 12) = 2080;
      v30 = [v26 name];
      v31 = sub_251C70F14();
      v33 = v32;

      v34 = sub_251B10780(v31, v33, &v36);

      *(v28 + 14) = v34;
      _os_log_impl(&dword_251A6C000, v12, v27, "%s: activity %s succeeded", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v29, -1, -1);
      MEMORY[0x25308E2B0](v28, -1, -1);
    }
  }

  return a4(0, 0);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_251BC9E44(uint64_t *a1, int a2)
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

uint64_t sub_251BC9E8C(uint64_t result, int a2, int a3)
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

void sub_251BC9EF0(uint64_t a1)
{
  if (!qword_2813E1BA8)
  {
    v1 = MEMORY[0x277D83D88];
    sub_251BCA880(255, &qword_2813E1BB0, sub_251BC9FBC, MEMORY[0x277D83D88]);
    sub_251BCA880(255, &unk_2813E1D60, type metadata accessor for HKClinicalSharingReason, v1);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813E1BA8);
    }
  }
}

unint64_t sub_251BC9FBC()
{
  result = qword_2813E1BB8;
  if (!qword_2813E1BB8)
  {
    type metadata accessor for HKClinicalSharingReason(255);
    sub_251BCA034();
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &qword_2813E1BB8);
  }

  return result;
}

unint64_t sub_251BCA034()
{
  result = qword_2813E1B90;
  if (!qword_2813E1B90)
  {
    sub_251BCA880(255, &qword_2813E1C20, sub_251A82284, MEMORY[0x277D83D88]);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_2813E1B90);
  }

  return result;
}

void sub_251BCA0FC(uint64_t a1, void *a2, uint64_t a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v9 = a2;
  swift_unknownObjectRetain();
  v6(v9, a3, sub_251B2E650, v8);

  swift_unknownObjectRelease();
}

void *sub_251BCA1D4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_251BCA228()
{
  result = qword_2813E3090;
  if (!qword_2813E3090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E3090);
  }

  return result;
}

uint64_t sub_251BCA27C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t objectdestroyTm_7()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_251BCA3A0(uint64_t a1)
{
  sub_251BCA880(0, &qword_27F47BB38, MEMORY[0x277CC9AE8], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251BCA42C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_251BCA474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251BC6A64(a2, a3);
  if (!v4)
  {
    return 0;
  }

  return result;
}

void *sub_251BCA688(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    v6 = result;
  }

  return result;
}

unint64_t sub_251BCA6D4()
{
  result = qword_27F47BB50;
  if (!qword_27F47BB50)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F47BB50);
  }

  return result;
}

unint64_t sub_251BCA71C()
{
  result = qword_2813E3088;
  if (!qword_2813E3088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E3088);
  }

  return result;
}

uint64_t sub_251BCA794(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_251BCA7DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_251BCA82C()
{
  result = qword_2813E30A8[0];
  if (!qword_2813E30A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813E30A8);
  }

  return result;
}

void sub_251BCA880(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_251BCA8E4(void *a1)
{
  sub_251BCAB78(0, &qword_2813E1C98, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_251BCA82C();
  sub_251C71B04();
  if (!v1)
  {
    type metadata accessor for HKClinicalSharingReason(0);
    v11 = 0;
    sub_251BCA42C(&qword_2813E1D78, type metadata accessor for HKClinicalSharingReason, &protocol conformance descriptor for HKClinicalSharingReason);
    sub_251C718A4();
    v8 = v12;
    sub_251BCA880(0, &qword_2813E1F80, MEMORY[0x277CC9578], MEMORY[0x277D83940]);
    v11 = 1;
    sub_251BCABDC(&qword_2813E1F70, &qword_2813E7508, MEMORY[0x277CC95A0], MEMORY[0x277D83978]);
    sub_251C718D4();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

void sub_251BCAB78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_251BCA82C();
    v7 = a3(a1, &type metadata for ClinicalSharingSyncTaskScheduler.AdHocSyncState.Storage.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_251BCABDC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_251BCA880(255, &qword_2813E1F80, MEMORY[0x277CC9578], MEMORY[0x277D83940]);
    sub_251BCA42C(a2, MEMORY[0x277CC9578], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_251BCACB4()
{
  result = qword_27F47BB58;
  if (!qword_27F47BB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BB58);
  }

  return result;
}

unint64_t sub_251BCAD0C()
{
  result = qword_2813E3098;
  if (!qword_2813E3098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E3098);
  }

  return result;
}

unint64_t sub_251BCAD64()
{
  result = qword_2813E30A0;
  if (!qword_2813E30A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E30A0);
  }

  return result;
}

uint64_t sub_251BCADDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_251BCAE24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

unint64_t sub_251BCAE80(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    if (!a3)
    {
      goto LABEL_13;
    }

    if (a3 != 1)
    {
      sub_251C716A4();

      v5 = 9;
      goto LABEL_12;
    }

    sub_251C716A4();

    v6 = 0xD00000000000001CLL;
  }

  else
  {
    if (a3 <= 4u)
    {
      if (a3 == 3)
      {
        sub_251C716A4();

        v5 = 11;
LABEL_12:
        v6 = v5 | 0xD000000000000020;
        goto LABEL_15;
      }

LABEL_13:
      sub_251C716A4();

      v6 = 0xD000000000000020;
      goto LABEL_15;
    }

    if (a3 == 5)
    {
      sub_251C716A4();

      v6 = 0xD000000000000023;
    }

    else
    {
      sub_251C716A4();

      v6 = 0xD000000000000021;
    }
  }

LABEL_15:
  v8 = v6;
  MEMORY[0x25308CDA0](a1, a2);
  return v8;
}

uint64_t sub_251BCB0AC(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 2u)
  {
    if (a3 > 4u)
    {
      if (a3 == 5)
      {
        if (a6 == 5)
        {
          goto LABEL_9;
        }
      }

      else if (a6 == 6)
      {
        goto LABEL_9;
      }
    }

    else if (a3 == 3)
    {
      if (a6 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (a6 == 4)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      if (a6 == 2)
      {
        goto LABEL_9;
      }

      return 0;
    }

    if (a6 != 1)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

LABEL_9:
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_251C719D4();
  }
}

void sub_251BCB170(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_251BCB1E8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v32 = a7;
  v33 = a8;
  v31 = a3;
  sub_251ABCCD4(0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;

  v30 = sub_251C70034();
  sub_251AC553C(a5, v19);
  v21 = sub_251C70014();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  v24 = 0;
  if (v23(v19, 1, v21) != 1)
  {
    v24 = sub_251C6FF94();
    (*(v22 + 8))(v19, v21);
  }

  sub_251AC553C(a6, v17);
  if (v23(v17, 1, v21) != 1)
  {
    v25 = sub_251C6FF94();
    (*(v22 + 8))(v17, v21);
    if (a10)
    {
      goto LABEL_5;
    }

LABEL_7:
    v26 = 0;
    goto LABEL_8;
  }

  v25 = 0;
  if (!a10)
  {
    goto LABEL_7;
  }

LABEL_5:
  v26 = sub_251C70EE4();
LABEL_8:
  v27 = swift_allocObject();
  *(v27 + 16) = sub_251AD96B8;
  *(v27 + 24) = v20;
  aBlock[4] = sub_251BCB5BC;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251BCB170;
  aBlock[3] = &block_descriptor_15;
  v28 = _Block_copy(aBlock);

  v29 = v30;
  [v31 updateClinicalSharingStatusForAccountWithIdentifier:v30 firstSharedDate:v24 lastSharedDate:v25 userStatus:v32 multiDeviceStatus:v33 primaryDeviceName:v26 completion:v28];
  _Block_release(v28);
}

uint64_t sub_251BCB4BC(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

void sub_251BCB4FC(char a1, id a2, void (*a3)(uint64_t, uint64_t))
{
  if (a1)
  {
    a3(1, 0);
  }

  else
  {
    if (a2)
    {
      v4 = a2;
    }

    else
    {
      sub_251AC6624();
      v4 = swift_allocError();
      v6 = v5;
      a2 = 0;
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 2;
    }

    v7 = a2;
    a3(v4, 1);
  }
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_251BCB5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[30] = a3;
  v4[31] = a4;
  v4[28] = a1;
  v4[29] = a2;
  sub_251BD1C78(0);
  v4[32] = v5;
  v4[33] = *(v5 - 8);
  v4[34] = swift_task_alloc();
  sub_251BD1AF0(0, &qword_2813E1E00, MEMORY[0x277D85720]);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251BCB6F4, 0, 0);
}

uint64_t sub_251BCB6F4()
{
  v1 = v0[29];
  if (v1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
  {
    v3 = 0;
    v32 = v1 & 0xFFFFFFFFFFFFFF8;
    v33 = v1 & 0xC000000000000001;
    v30 = v0[29] + 32;
    v31 = i;
    while (v33)
    {
      v7 = MEMORY[0x25308D460](v3, v0[29]);
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_22;
      }

LABEL_9:
      v34 = v3;
      v35 = v8;
      v9 = v0[36];
      v10 = v0[30];
      v11 = v0[31];
      v12 = v0[28];
      v13 = v7;
      v14 = sub_251C71214();
      v15 = *(v14 - 8);
      (*(v15 + 56))(v9, 1, 1, v14);
      v16 = swift_allocObject();
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = v10;
      v16[5] = v11;
      v16[6] = v13;
      v1 = *v12;

      v17 = swift_taskGroup_addPending();
      v18 = v0[36];
      if (v17)
      {
        v29 = v1;
        v19 = v0[35];
        sub_251B346F4(v18, v19);
        v20 = (*(v15 + 48))(v19, 1, v14);
        v21 = v0[35];
        if (v20 == 1)
        {
          sub_251BD1C1C(v0[35], &qword_2813E1E00, MEMORY[0x277D85720]);
        }

        else
        {
          sub_251C71204();
          (*(v15 + 8))(v21, v14);
        }

        v5 = v34;
        v6 = v35;
        if (v16[2])
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v22 = sub_251C711C4();
          v24 = v23;
          swift_unknownObjectRelease();
        }

        else
        {
          v22 = 0;
          v24 = 0;
        }

        v4 = v31;

        if (v24 | v22)
        {
          v25 = v0 + 20;
          v0[20] = 0;
          v0[21] = 0;
          v0[22] = v22;
          v0[23] = v24;
        }

        else
        {
          v25 = 0;
        }

        v1 = v0[36];
        v0[24] = 1;
        v0[25] = v25;
        v0[26] = v29;
        swift_task_create();

        sub_251BD1C1C(v1, &qword_2813E1E00, MEMORY[0x277D85720]);
      }

      else
      {
        sub_251BD1C1C(v18, &qword_2813E1E00, MEMORY[0x277D85720]);

        v4 = v31;
        v5 = v34;
        v6 = v35;
      }

      v3 = v5 + 1;
      if (v6 == v4)
      {
        goto LABEL_25;
      }
    }

    if (v3 >= *(v32 + 16))
    {
      goto LABEL_23;
    }

    v7 = *(v30 + 8 * v3);
    v8 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

LABEL_25:
  sub_251A82284();
  sub_251C71234();
  v0[37] = MEMORY[0x277D84F90];
  v26 = swift_task_alloc();
  v0[38] = v26;
  *v26 = v0;
  v26[1] = sub_251BCBB14;
  v27 = v0[32];

  return MEMORY[0x2822004E8](v0 + 2, 0, 0, v27, v0 + 27);
}

uint64_t sub_251BCBB14()
{

  if (v0)
  {

    v1 = sub_251BCBE0C;
  }

  else
  {
    v1 = sub_251BCBC2C;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_251BCBC2C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
    *(v0 + 104) = *(v0 + 32);
    v2 = *(v0 + 64);
    *(v0 + 120) = *(v0 + 48);
    *(v0 + 136) = v2;
    *(v0 + 152) = *(v0 + 80);
    *(v0 + 88) = v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *(v0 + 296);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_251C39454(0, *(v4 + 2) + 1, 1, v4);
    }

    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_251C39454((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v7 = &v4[72 * v6];
    *(v7 + 2) = *(v0 + 88);
    v8 = *(v0 + 104);
    v9 = *(v0 + 120);
    v10 = *(v0 + 136);
    *(v7 + 12) = *(v0 + 152);
    *(v7 + 4) = v9;
    *(v7 + 5) = v10;
    *(v7 + 3) = v8;
    *(v0 + 296) = v4;
    v11 = swift_task_alloc();
    *(v0 + 304) = v11;
    *v11 = v0;
    v11[1] = sub_251BCBB14;
    v12 = *(v0 + 256);

    return MEMORY[0x2822004E8](v0 + 16, 0, 0, v12, v0 + 216);
  }

  else
  {
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));

    v13 = *(v0 + 8);
    v14 = *(v0 + 296);

    return v13(v14);
  }
}

uint64_t sub_251BCBE0C()
{
  (*(v0[33] + 8))(v0[34], v0[32]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_251BCBEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  sub_251BD1A70(0, &qword_27F47BB90, &qword_27F47BB70, 0x277D12478, MEMORY[0x277D85830]);
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  sub_251BD1AF0(0, &qword_2813E1E00, MEMORY[0x277D85720]);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251BCBFEC, 0, 0);
}

uint64_t sub_251BCBFEC()
{
  v1 = v0[13];
  if (v1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
  {
    v3 = 0;
    v34 = v1 & 0xFFFFFFFFFFFFFF8;
    v35 = v1 & 0xC000000000000001;
    v32 = v0[13] + 32;
    v33 = i;
    while (v35)
    {
      v7 = MEMORY[0x25308D460](v3, v0[13]);
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_22;
      }

LABEL_9:
      v36 = v3;
      v37 = v8;
      v9 = v0[20];
      v10 = v0[14];
      v11 = v0[15];
      v12 = v0[12];
      v13 = v7;
      v14 = sub_251C71214();
      v15 = *(v14 - 8);
      (*(v15 + 56))(v9, 1, 1, v14);
      v16 = swift_allocObject();
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = v10;
      v16[5] = v11;
      v16[6] = v13;
      v1 = *v12;

      v17 = swift_taskGroup_addPending();
      v18 = v0[20];
      if (v17)
      {
        v31 = v1;
        v19 = v0[19];
        sub_251B346F4(v18, v19);
        v20 = (*(v15 + 48))(v19, 1, v14);
        v21 = v0[19];
        if (v20 == 1)
        {
          sub_251BD1C1C(v0[19], &qword_2813E1E00, MEMORY[0x277D85720]);
        }

        else
        {
          sub_251C71204();
          (*(v15 + 8))(v21, v14);
        }

        v5 = v36;
        v6 = v37;
        if (v16[2])
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v22 = sub_251C711C4();
          v24 = v23;
          swift_unknownObjectRelease();
        }

        else
        {
          v22 = 0;
          v24 = 0;
        }

        sub_251A8223C(0, &qword_27F47BB70, 0x277D12478);

        if (v24 | v22)
        {
          v25 = v0 + 2;
          v0[2] = 0;
          v0[3] = 0;
          v0[4] = v22;
          v0[5] = v24;
        }

        else
        {
          v25 = 0;
        }

        v26 = v0[20];
        v0[6] = 1;
        v0[7] = v25;
        v0[8] = v31;
        v1 = swift_task_create();

        sub_251BD1C1C(v26, &qword_2813E1E00, MEMORY[0x277D85720]);
        v4 = v33;
      }

      else
      {
        sub_251BD1C1C(v18, &qword_2813E1E00, MEMORY[0x277D85720]);

        v4 = v33;
        v5 = v36;
        v6 = v37;
      }

      v3 = v5 + 1;
      if (v6 == v4)
      {
        goto LABEL_25;
      }
    }

    if (v3 >= *(v34 + 16))
    {
      goto LABEL_23;
    }

    v7 = *(v32 + 8 * v3);
    v8 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

LABEL_25:
  v27 = MEMORY[0x277D84F90];
  v0[9] = MEMORY[0x277D84F90];
  sub_251A8223C(0, &qword_27F47BB70, 0x277D12478);
  sub_251A82284();
  sub_251C71234();
  v0[21] = v27;
  v28 = swift_task_alloc();
  v0[22] = v28;
  *v28 = v0;
  v28[1] = sub_251BCC440;
  v29 = v0[16];

  return MEMORY[0x2822004E8](v0 + 10, 0, 0, v29, v0 + 11);
}

uint64_t sub_251BCC440()
{

  if (v0)
  {

    v1 = sub_251BCC6DC;
  }

  else
  {
    v1 = sub_251BCC558;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_251BCC558()
{
  if (v0[10])
  {
    MEMORY[0x25308CEE0]();
    if (*((v0[9] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[9] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_251C71174();
    }

    sub_251C71194();
    v0[21] = v0[9];
    v1 = swift_task_alloc();
    v0[22] = v1;
    *v1 = v0;
    v1[1] = sub_251BCC440;
    v2 = v0[16];

    return MEMORY[0x2822004E8](v0 + 10, 0, 0, v2, v0 + 11);
  }

  else
  {
    (*(v0[17] + 8))(v0[18], v0[16]);

    v3 = v0[1];
    v4 = v0[21];

    return v3(v4);
  }
}

uint64_t sub_251BCC6DC()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

id sub_251BCC778()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_251BCC7E4(uint64_t a1, uint64_t a2)
{
  swift_getMetatypeMetadata();
  v5 = sub_251C70F74();

  MEMORY[0x25308CDA0](46, 0xE100000000000000);

  MEMORY[0x25308CDA0](a1, a2);

  return v5;
}

uint64_t sub_251BCC8A8(uint64_t a1, uint64_t a2)
{
  v3[40] = a2;
  v3[41] = v2;
  v3[39] = a1;
  return MEMORY[0x2822009F8](sub_251BCC8CC, 0, 0);
}

uint64_t sub_251BCC8CC()
{
  v13 = v0[39];
  v14 = v0[40];
  v1 = [objc_allocWithZone(MEMORY[0x277D123B0]) init];
  v0[42] = v1;
  sub_251A8223C(0, &qword_2813E1D40, 0x277CCAD38);
  v2 = sub_251B37FB0();
  v3 = [objc_allocWithZone(type metadata accessor for URLSessionCertVerificationDelegate()) init];
  type metadata accessor for WebRequestPerformer();
  v4 = swift_allocObject();
  v0[43] = v4;
  v5 = [objc_opt_self() sessionWithConfiguration:v2 delegate:v3 delegateQueue:0];

  *(v4 + 16) = v5;
  *(v4 + 24) = 1;
  v6 = sub_251BCC778();
  v7 = [objc_allocWithZone(MEMORY[0x277D124A8]) initWithHealthStore_];
  v0[44] = v7;

  v0[36] = &type metadata for WellKnownJWKSHandler;
  sub_251BD17C0();

  v8 = v7;
  v0[34] = sub_251C70F74();
  v0[35] = v9;
  v0[45] = v9;
  v0[2] = v0;
  v0[7] = v0 + 37;
  v0[3] = sub_251BCCB50;
  v10 = swift_continuation_init();
  sub_251BD1A70(0, &qword_27F47BB98, &qword_27F47BBA0, 0x277D123A8, MEMORY[0x277D85808]);
  v0[25] = v11;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_251BD1E30;
  v0[21] = &block_descriptor_65;
  v0[22] = v10;
  [v1 preprocessSignedClinicalData:v13 options:v14 completion:v0 + 18];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_251BCCB50()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 368) = v2;
  if (v2)
  {

    v3 = sub_251BCD178;
  }

  else
  {
    *(v1 + 376) = *(v1 + 272);
    v3 = sub_251BCCC78;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251BCCC78()
{
  v1 = v0[44];
  v2 = v0[37];
  v0[48] = v2;
  v3 = swift_task_alloc();
  v0[49] = v3;
  *v3 = v0;
  v3[1] = sub_251BCCD24;
  v4 = v0[47];
  v5 = v0[45];
  v6 = v0[43];

  return sub_251C1A6DC(v2, v6, v1, v4, v5);
}

uint64_t sub_251BCCD24(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 400) = a1;
  *(v3 + 408) = v1;

  if (v1)
  {
    v4 = sub_251BCD20C;
  }

  else
  {
    v4 = sub_251BCCE38;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_251BCCE38()
{
  v1 = v0[50];
  v2 = v0[42];
  v0[10] = v0;
  v0[15] = v0 + 38;
  v0[11] = sub_251BCCF84;
  v3 = swift_continuation_init();
  sub_251BD1A70(0, &qword_27F47BB68, &qword_27F47BB70, 0x277D12478, MEMORY[0x277D85808]);
  v0[33] = v4;
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_251BD1E30;
  v0[29] = &block_descriptor_69;
  v0[30] = v3;
  [v2 processSignedClinicalDataContextCollection:v1 completion:v0 + 26];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_251BCCF84()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 416) = v2;
  if (v2)
  {

    v3 = sub_251BCD2A0;
  }

  else
  {
    v3 = sub_251BCD0A4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251BCD0A4()
{
  v1 = v0[50];
  v2 = v0[48];
  v3 = v0[44];
  v4 = v0[42];
  v5 = v0[38];
  v6 = [v5 muxed];

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_251BCD178(uint64_t a1, uint64_t a2)
{
  v3 = v2[44];
  v4 = v2[42];
  swift_willThrow();

  v5 = v2[1];

  return v5();
}

uint64_t sub_251BCD20C()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 336);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_251BCD2A0(uint64_t a1, uint64_t a2)
{
  v3 = v2[50];
  v4 = v2[48];
  v5 = v2[44];
  v6 = v2[42];
  swift_willThrow();

  v7 = v2[1];

  return v7();
}

uint64_t sub_251BCD34C(uint64_t a1, uint64_t a2)
{
  v3[40] = a2;
  v3[41] = v2;
  v3[39] = a1;
  return MEMORY[0x2822009F8](sub_251BCD370, 0, 0);
}

uint64_t sub_251BCD370()
{
  v14 = v0[40];
  v1 = [objc_allocWithZone(MEMORY[0x277D123B0]) init];
  v0[42] = v1;
  sub_251A8223C(0, &qword_2813E1D40, 0x277CCAD38);
  v2 = sub_251B37FB0();
  v3 = [objc_allocWithZone(type metadata accessor for URLSessionCertVerificationDelegate()) init];
  type metadata accessor for WebRequestPerformer();
  v4 = swift_allocObject();
  v0[43] = v4;
  v5 = [objc_opt_self() sessionWithConfiguration:v2 delegate:v3 delegateQueue:0];

  *(v4 + 16) = v5;
  *(v4 + 24) = 1;
  v6 = sub_251BCC778();
  v7 = [objc_allocWithZone(MEMORY[0x277D124A8]) initWithHealthStore_];
  v0[44] = v7;

  v0[36] = &type metadata for WellKnownJWKSHandler;
  sub_251BD17C0();

  v8 = v7;
  v0[34] = sub_251C70F74();
  v0[35] = v9;
  v0[45] = v9;
  sub_251A8223C(0, &qword_27F47BB60, 0x277D12398);
  v10 = sub_251C71144();
  v0[46] = v10;
  v0[2] = v0;
  v0[7] = v0 + 37;
  v0[3] = sub_251BCD628;
  v11 = swift_continuation_init();
  sub_251BD1A70(0, &qword_27F47BB98, &qword_27F47BBA0, 0x277D123A8, MEMORY[0x277D85808]);
  v0[25] = v12;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_251BD1E30;
  v0[21] = &block_descriptor_57;
  v0[22] = v11;
  [v1 reprocessOriginalSignedClinicalDataRecords:v10 options:v14 completion:v0 + 18];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_251BCD628()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 376) = v2;
  if (v2)
  {

    v3 = sub_251BCDC24;
  }

  else
  {
    *(v1 + 384) = *(v1 + 272);
    v3 = sub_251BCD750;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251BCD750()
{
  v1 = v0[46];
  v2 = v0[44];
  v3 = v0[37];
  v0[49] = v3;

  v4 = swift_task_alloc();
  v0[50] = v4;
  *v4 = v0;
  v4[1] = sub_251BCD804;
  v5 = v0[48];
  v6 = v0[45];
  v7 = v0[43];

  return sub_251C1A6DC(v3, v7, v2, v5, v6);
}

uint64_t sub_251BCD804(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 408) = a1;
  *(v3 + 416) = v1;

  if (v1)
  {
    v4 = sub_251BCDCC4;
  }

  else
  {

    v4 = sub_251BCD928;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_251BCD928()
{
  v1 = v0[51];
  v2 = v0[42];
  v0[10] = v0;
  v0[15] = v0 + 38;
  v0[11] = sub_251BCDA74;
  v3 = swift_continuation_init();
  sub_251BD1A70(0, &qword_27F47BB68, &qword_27F47BB70, 0x277D12478, MEMORY[0x277D85808]);
  v0[33] = v4;
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_251BD1E30;
  v0[29] = &block_descriptor_61;
  v0[30] = v3;
  [v2 processSignedClinicalDataContextCollection:v1 completion:v0 + 26];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_251BCDA74()
{
  v1 = *(*v0 + 112);
  *(*v0 + 424) = v1;
  if (v1)
  {
    v2 = sub_251BCDD58;
  }

  else
  {
    v2 = sub_251BCDB84;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251BCDB84()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 352);
  v3 = *(v0 + 336);

  v4 = *(v0 + 304);
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_251BCDC24(uint64_t a1, uint64_t a2)
{
  v3 = v2[46];
  v4 = v2[44];
  v5 = v2[42];
  swift_willThrow();

  v6 = v2[1];

  return v6();
}

uint64_t sub_251BCDCC4()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 336);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_251BCDD58(uint64_t a1, uint64_t a2)
{
  v3 = v2[51];
  v4 = v2[49];
  v5 = v2[44];
  v6 = v2[42];
  swift_willThrow();

  v7 = v2[1];

  return v7();
}

uint64_t sub_251BCDE04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  return MEMORY[0x2822009F8](sub_251BCDE28, 0, 0);
}

uint64_t sub_251BCDE28()
{
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v0[21] = [objc_allocWithZone(MEMORY[0x277D123B0]) init];
  sub_251A8223C(0, &qword_2813E1D40, 0x277CCAD38);
  v4 = sub_251B37FB0();
  v5 = [objc_allocWithZone(type metadata accessor for URLSessionCertVerificationDelegate()) init];
  type metadata accessor for WebRequestPerformer();
  v6 = swift_allocObject();
  v0[22] = v6;
  v7 = [objc_opt_self() sessionWithConfiguration:v4 delegate:v5 delegateQueue:0];

  *(v6 + 16) = v7;
  *(v6 + 24) = 1;
  v8 = sub_251BCC778();
  v9 = [objc_allocWithZone(MEMORY[0x277D124A8]) initWithHealthStore_];
  v0[23] = v9;

  v0[13] = &type metadata for WellKnownJWKSHandler;
  sub_251BD17C0();

  v10 = v9;
  v0[11] = sub_251C70F74();
  v0[12] = v11;
  v0[24] = v11;
  v12 = [objc_allocWithZone(MEMORY[0x277D123E8]) initWithHealthStore_];
  v0[8] = sub_251A8223C(0, &qword_27F47BB80, 0x277D123E8);
  v0[9] = &off_2863FF338;
  v0[5] = v12;
  sub_251C70344();
  v13 = v3;
  v14 = v2;
  v0[10] = sub_251C70334();
  v0[2] = v6;
  v0[3] = v13;
  v0[4] = v14;
  v15 = swift_task_alloc();
  v0[25] = v15;
  *v15 = v0;
  v15[1] = sub_251BCE078;
  v16 = v0[19];

  return sub_251C2E048(v16);
}

uint64_t sub_251BCE078(uint64_t a1)
{
  v3 = *v2;
  v3[26] = a1;
  v3[27] = v1;

  if (v1)
  {
    v4 = swift_task_alloc();
    v3[34] = v4;
    *v4 = v3;
    v5 = sub_251BCE998;
  }

  else
  {
    v3[28] = v3[11];
    v4 = swift_task_alloc();
    v3[29] = v4;
    *v4 = v3;
    v5 = sub_251BCE1FC;
  }

  v4[1] = v5;
  v6 = v3[18];

  return sub_251C2E414(v6);
}

uint64_t sub_251BCE1FC()
{

  return MEMORY[0x2822009F8](sub_251BCE2F8, 0, 0);
}

uint64_t sub_251BCE2F8()
{
  v1 = v0[28];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[19];
  v8 = swift_allocObject();
  v0[30] = v8;
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = v5;
  v8[5] = v4;
  v8[6] = v1;
  v8[7] = v3;
  v0[15] = v2;

  v9 = v4;
  v10 = v6;

  v11 = sub_251A8223C(0, &qword_27F47BB70, 0x277D12478);
  sub_251BD1938(0);
  v13 = v12;
  v14 = swift_task_alloc();
  v0[31] = v14;
  v14[2] = v0 + 15;
  v14[3] = &unk_251C84908;
  v14[4] = v8;
  v15 = swift_task_alloc();
  v0[32] = v15;
  *v15 = v0;
  v15[1] = sub_251BCE488;

  return MEMORY[0x282200740](v0 + 16, v11, v13, 0, 0, &unk_251C84918, v14, v11);
}

uint64_t sub_251BCE488()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_251BCE8E4;
  }

  else
  {

    v2 = sub_251BCE5A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251BCE5A4()
{

  v1 = v0[16];
  v0[14] = v1;
  v2 = v0 + 14;
  v3 = (v0 + 2);
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while (1)
    {
      sub_251BD0ED4();
      v5 = *v2;
      v26 = v3;
      v27 = v0;
      if (*v2 >> 62)
      {
        v25 = v4;
        v0 = sub_251C717F4();
        v4 = v25;
      }

      else
      {
        v0 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v6 = v4;
      v2 = v6;
      v28 = v6;
      if (!v0)
      {
        break;
      }

      v7 = 0;
      v8 = v6;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x25308D460](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v9 = *(v5 + 8 * v7 + 32);
        }

        v10 = v9;
        v3 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v11 = [v8 items];
        sub_251A8223C(0, &qword_27F479268, 0x277D12488);
        sub_251C71154();

        v12 = [v10 items];
        v13 = v0;
        v14 = sub_251C71154();

        sub_251BFF844(v14);
        v15 = sub_251C71144();

        v2 = [v8 copyWithItems_];

        v0 = v13;
        ++v7;
        v8 = v2;
        if (v3 == v13)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      if (!sub_251C717F4())
      {
        goto LABEL_18;
      }
    }

LABEL_14:
    v0 = v27;
    v16 = v27[23];
    v17 = v27[21];

    sub_251BD1808(v26);
  }

  else
  {
LABEL_18:
    v18 = v0[23];
    v19 = v0[21];
    v20 = v0[19];

    v21 = objc_allocWithZone(MEMORY[0x277D12478]);
    sub_251A8223C(0, &qword_27F479268, 0x277D12488);
    v22 = sub_251C71144();
    v2 = [v21 initWithItems:v22 options:v20];

    sub_251BD1808(v3);
  }

  v23 = v0[1];

  return v23(v2);
}

uint64_t sub_251BCE8E4()
{
  v1 = v0[23];
  v2 = v0[21];

  sub_251BD1808((v0 + 2));
  v3 = v0[1];

  return v3();
}

uint64_t sub_251BCE998()
{

  return MEMORY[0x2822009F8](sub_251BCEA94, 0, 0);
}

uint64_t sub_251BCEA94(uint64_t a1, uint64_t a2)
{
  v3 = v2[23];
  v4 = v2[21];
  swift_willThrow();

  sub_251BD1808((v2 + 2));
  v5 = v2[1];

  return v5();
}

uint64_t sub_251BCEB34(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[40] = a6;
  v8[41] = a7;
  v8[38] = a4;
  v8[39] = a5;
  v8[36] = a1;
  v8[37] = a3;
  v9 = *a2;
  v8[42] = a8;
  v8[43] = v9;
  return MEMORY[0x2822009F8](sub_251BCEB64, 0, 0);
}

uint64_t sub_251BCEB64()
{
  v1 = v0[43];
  v3 = v0[37];
  v2 = v0[38];
  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = sub_251BCECB4;
  v4 = swift_continuation_init();
  sub_251BD1A70(0, &qword_27F47BB98, &qword_27F47BBA0, 0x277D123A8, MEMORY[0x277D85808]);
  v0[25] = v5;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_251BD1E30;
  v0[21] = &block_descriptor_41;
  v0[22] = v4;
  [v3 preprocessSignedClinicalDataFHIRResourceObject:v1 options:v2 completion:v0 + 18];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_251BCECB4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 352) = v1;
  if (v1)
  {
    v2 = sub_251BCF24C;
  }

  else
  {
    v2 = sub_251BCEDC4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251BCEDC4()
{
  v1 = v0[34];
  v0[45] = v1;
  v2 = swift_task_alloc();
  v0[46] = v2;
  *v2 = v0;
  v2[1] = sub_251BCEE64;
  v3 = v0[41];
  v4 = v0[42];
  v5 = v0[39];
  v6 = v0[40];

  return sub_251C1A6DC(v1, v5, v6, v3, v4);
}

uint64_t sub_251BCEE64(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {
    v4 = sub_251BCF2B8;
  }

  else
  {
    v4 = sub_251BCEF78;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_251BCEF78()
{
  v1 = v0[47];
  v2 = v0[37];
  v0[10] = v0;
  v0[15] = v0 + 35;
  v0[11] = sub_251BCF0C4;
  v3 = swift_continuation_init();
  sub_251BD1A70(0, &qword_27F47BB68, &qword_27F47BB70, 0x277D12478, MEMORY[0x277D85808]);
  v0[33] = v4;
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_251BD1E30;
  v0[29] = &block_descriptor_45;
  v0[30] = v3;
  [v2 processSignedClinicalDataContextCollection:v1 completion:v0 + 26];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_251BCF0C4()
{
  v1 = *(*v0 + 112);
  *(*v0 + 392) = v1;
  if (v1)
  {
    v2 = sub_251BCF31C;
  }

  else
  {
    v2 = sub_251BCF1D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251BCF1D4()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 288);

  *v2 = *(v0 + 280);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_251BCF24C(uint64_t a1, uint64_t a2)
{
  swift_willThrow();
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_251BCF2B8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_251BCF31C(uint64_t a1, uint64_t a2)
{
  v3 = v2[47];
  v4 = v2[45];
  swift_willThrow();

  v5 = v2[1];

  return v5();
}

void sub_251BCF398(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_251BD1AF0(0, &qword_2813E74D0, MEMORY[0x277CC95F0]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v58 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v58 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v58 - v15;
  sub_251C70734();
  swift_allocObject();
  v17 = sub_251C70724();
  sub_251C706F4();
  if (v18)
  {

    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v19 = sub_251C70764();
    __swift_project_value_buffer(v19, qword_2813E8130);

    v20 = a1;
    v21 = sub_251C70744();
    v22 = sub_251C713F4();

    if (os_log_type_enabled(v21, v22))
    {
      v60 = v17;
      v23 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v67 = v59;
      *v23 = 136315394;
      aBlock = v4;
      swift_getMetatypeMetadata();
      aBlock = sub_251C70F74();
      v62 = v24;

      MEMORY[0x25308CDA0](46, 0xE100000000000000);

      MEMORY[0x25308CDA0](0xD00000000000001ELL, 0x8000000251C8F9C0);

      v25 = sub_251B10780(aBlock, v62, &v67);

      *(v23 + 4) = v25;
      *(v23 + 12) = 2080;
      v26 = [v20 originIdentifier];
      v27 = [v26 signedClinicalDataRecordIdentifier];

      if (v27)
      {
        sub_251C70054();

        v28 = 0;
      }

      else
      {
        v28 = 1;
      }

      v40 = sub_251C70074();
      v41 = *(v40 - 8);
      (*(v41 + 56))(v14, v28, 1, v40);
      sub_251BD0C04(v14, v16);
      if ((*(v41 + 48))(v16, 1, v40) == 1)
      {
        v42 = 0x7D6C696E7BLL;
        sub_251BD1C1C(v16, &qword_2813E74D0, MEMORY[0x277CC95F0]);
        v43 = 0xE500000000000000;
      }

      else
      {
        v42 = sub_251C70024();
        v43 = v44;
        (*(v41 + 8))(v16, v40);
      }

      v45 = sub_251B10780(v42, v43, &v67);

      *(v23 + 14) = v45;
      _os_log_impl(&dword_251A6C000, v21, v22, "%s will update Wallet pass for record with sync identifier %s by re-adding it", v23, 0x16u);
      v46 = v59;
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v46, -1, -1);
      MEMORY[0x25308E2B0](v23, -1, -1);

      v17 = v60;
    }

    else
    {
    }

    v47 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    v48 = [objc_allocWithZone(MEMORY[0x277D124A8]) initWithHealthStore_];
    v49 = swift_allocObject();
    *(v49 + 24) = 0;
    *(v49 + 32) = 0;
    *(v49 + 16) = v2;
    *(v49 + 40) = 0;
    *(v49 + 48) = v17;
    *(v49 + 56) = v20;
    v65 = sub_251BD1794;
    v66 = v49;
    aBlock = MEMORY[0x277D85DD0];
    v62 = 1107296256;
    v63 = sub_251AD9914;
    v64 = &block_descriptor_18;
    v50 = _Block_copy(&aBlock);

    v51 = v20;

    [v48 fetchSignedClinicalDataGroupBackingMedicalRecord:v51 options:11 completion:v50];

    _Block_release(v50);
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v29 = sub_251C70764();
    __swift_project_value_buffer(v29, qword_2813E8130);

    v30 = a1;
    v60 = sub_251C70744();
    v31 = sub_251C713C4();

    if (os_log_type_enabled(v60, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v67 = v33;
      *v32 = 136315394;
      aBlock = v4;
      swift_getMetatypeMetadata();
      aBlock = sub_251C70F74();
      v62 = v34;

      MEMORY[0x25308CDA0](46, 0xE100000000000000);

      MEMORY[0x25308CDA0](0xD00000000000001ELL, 0x8000000251C8F9C0);

      v35 = sub_251B10780(aBlock, v62, &v67);

      *(v32 + 4) = v35;
      *(v32 + 12) = 2080;
      v36 = [v30 originIdentifier];
      v37 = [v36 signedClinicalDataRecordIdentifier];

      if (v37)
      {
        sub_251C70054();

        v38 = 0;
      }

      else
      {
        v38 = 1;
      }

      v52 = sub_251C70074();
      v53 = *(v52 - 8);
      (*(v53 + 56))(v8, v38, 1, v52);
      sub_251BD0C04(v8, v11);
      if ((*(v53 + 48))(v11, 1, v52) == 1)
      {
        v54 = 0x7D6C696E7BLL;
        sub_251BD1C1C(v11, &qword_2813E74D0, MEMORY[0x277CC95F0]);
        v55 = 0xE500000000000000;
      }

      else
      {
        v54 = sub_251C70024();
        v55 = v56;
        (*(v53 + 8))(v11, v52);
      }

      v57 = sub_251B10780(v54, v55, &v67);

      *(v32 + 14) = v57;
      _os_log_impl(&dword_251A6C000, v60, v31, "%s no Wallet pass exists for record with sync identifier %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v33, -1, -1);
      MEMORY[0x25308E2B0](v32, -1, -1);
    }

    else
    {

      v39 = v60;
    }
  }
}

void sub_251BCFCD8(void *a1, void *a2, uint64_t a3, void (*a4)(void, void *), uint64_t a5, char a6, uint64_t a7, void *a8)
{
  sub_251BD1AF0(0, &qword_2813E74D0, MEMORY[0x277CC95F0]);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  MEMORY[0x28223BE20](v16);
  if (a1)
  {
    v17 = a1;
    if (a6)
    {
      sub_251C706E4();
    }

    v18 = swift_allocObject();
    v18[2] = a3;
    v18[3] = a8;
    v18[4] = a4;
    v18[5] = a5;

    v19 = a8;
    sub_251A7E910(a4, a5);
    sub_251C70704();
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v20 = sub_251C70764();
    __swift_project_value_buffer(v20, qword_2813E8130);

    v21 = a2;
    v22 = sub_251C70744();
    v23 = sub_251C713D4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33 = v25;
      *v24 = 136315394;
      v26 = sub_251BCC7E4(0xD000000000000039, 0x8000000251C8F940);
      v28 = sub_251B10780(v26, v27, &v33);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      if (a2)
      {
        swift_getErrorValue();
        v29 = sub_251C71A44();
        v31 = v30;
      }

      else
      {
        v29 = 0x7D6C696E7BLL;
        v31 = 0xE500000000000000;
      }

      v32 = sub_251B10780(v29, v31, &v33);

      *(v24 + 14) = v32;
      _os_log_impl(&dword_251A6C000, v22, v23, "%s failed to retrieve SCD group with error: %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v25, -1, -1);
      MEMORY[0x25308E2B0](v24, -1, -1);
    }

    if (a4)
    {
      a4(0, a2);
    }
  }
}

void sub_251BD03DC(void *a1, uint64_t a2, void *a3, void (*a4)(void, void), uint64_t a5)
{
  v62 = a5;
  sub_251BD1AF0(0, &qword_2813E74D0, MEMORY[0x277CC95F0]);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v60 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v60 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v60 - v18;
  if (a1)
  {
    v20 = a1;
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v21 = sub_251C70764();
    __swift_project_value_buffer(v21, qword_2813E8130);
    v22 = a1;

    v23 = a3;
    v24 = sub_251C70744();
    v25 = sub_251C713D4();

    if (os_log_type_enabled(v24, v25))
    {
      v61 = a4;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v63 = v27;
      *v26 = 136315650;
      v28 = sub_251BCC7E4(0xD000000000000039, 0x8000000251C8F940);
      v30 = sub_251B10780(v28, v29, &v63);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      v31 = [v23 originIdentifier];
      v32 = [v31 signedClinicalDataRecordIdentifier];

      if (v32)
      {
        sub_251C70054();

        v33 = sub_251C70074();
        (*(*(v33 - 8) + 56))(v17, 0, 1, v33);
      }

      else
      {
        v33 = sub_251C70074();
        (*(*(v33 - 8) + 56))(v17, 1, 1, v33);
      }

      sub_251BD0C04(v17, v19);
      sub_251C70074();
      v46 = *(v33 - 8);
      if ((*(v46 + 48))(v19, 1, v33) == 1)
      {
        v47 = 0x7D6C696E7BLL;
        sub_251BD1C1C(v19, &qword_2813E74D0, MEMORY[0x277CC95F0]);
        v48 = 0xE500000000000000;
      }

      else
      {
        v47 = sub_251C70024();
        v48 = v49;
        (*(v46 + 8))(v19, v33);
      }

      v50 = sub_251B10780(v47, v48, &v63);

      *(v26 + 14) = v50;
      *(v26 + 22) = 2080;
      swift_getErrorValue();
      v51 = sub_251C71A44();
      v53 = sub_251B10780(v51, v52, &v63);

      *(v26 + 24) = v53;
      _os_log_impl(&dword_251A6C000, v24, v25, "%s failed to add Wallet pass for record with sync identifier %s: %s", v26, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v27, -1, -1);
      MEMORY[0x25308E2B0](v26, -1, -1);

      a4 = v61;
      if (!v61)
      {
        goto LABEL_22;
      }
    }

    else
    {

      if (!a4)
      {
        goto LABEL_22;
      }
    }

    v54 = a1;
    a4(0, a1);

LABEL_22:
    return;
  }

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v34 = sub_251C70764();
  __swift_project_value_buffer(v34, qword_2813E8130);

  v35 = a3;
  v36 = sub_251C70744();
  v37 = sub_251C713F4();

  if (os_log_type_enabled(v36, v37))
  {
    v61 = a4;
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v63 = v39;
    *v38 = 136315394;
    v40 = sub_251BCC7E4(0xD000000000000039, 0x8000000251C8F940);
    v42 = sub_251B10780(v40, v41, &v63);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2080;
    v43 = [v35 originIdentifier];
    v44 = [v43 signedClinicalDataRecordIdentifier];

    if (v44)
    {
      sub_251C70054();

      v45 = sub_251C70074();
      (*(*(v45 - 8) + 56))(v11, 0, 1, v45);
    }

    else
    {
      v45 = sub_251C70074();
      (*(*(v45 - 8) + 56))(v11, 1, 1, v45);
    }

    sub_251BD0C04(v11, v14);
    sub_251C70074();
    v55 = *(v45 - 8);
    if ((*(v55 + 48))(v14, 1, v45) == 1)
    {
      v56 = 0x7D6C696E7BLL;
      sub_251BD1C1C(v14, &qword_2813E74D0, MEMORY[0x277CC95F0]);
      v57 = 0xE500000000000000;
    }

    else
    {
      v56 = sub_251C70024();
      v57 = v58;
      (*(v55 + 8))(v14, v45);
    }

    v59 = sub_251B10780(v56, v57, &v63);

    *(v38 + 14) = v59;
    _os_log_impl(&dword_251A6C000, v36, v37, "%s did add Wallet pass for record with sync identifier %s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v39, -1, -1);
    MEMORY[0x25308E2B0](v38, -1, -1);

    a4 = v61;
    if (v61)
    {
      goto LABEL_28;
    }
  }

  else
  {

    if (a4)
    {
LABEL_28:
      a4(1, 0);
    }
  }
}

uint64_t sub_251BD0C04(uint64_t a1, uint64_t a2)
{
  sub_251BD1AF0(0, &qword_2813E74D0, MEMORY[0x277CC95F0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251BD0C84(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, void *a6)
{
  *(v6 + 16) = *a6;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  *(v6 + 24) = v8;
  *v8 = v6;
  v8[1] = sub_251BD0D90;

  return v10(a1, v6 + 16);
}

uint64_t sub_251BD0D90()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_251BD0EBC;
  }

  else
  {
    v2 = sub_251BD0EA4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_251BD0ED4()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_251C717F4())
  {
    if (sub_251C717F4())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x25308D460](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_251C717F4();
LABEL_13:
      if (v3)
      {
        sub_251C5D060(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_251BD0FAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = *a3;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_251BD1064;

  return sub_251BCBEA8(a2, v9, a4, a5);
}

uint64_t sub_251BD1064(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_251BD1174(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, void *a6)
{
  v6[4] = a1;
  v6[3] = *a6;
  v9 = a4 + *a4;
  v7 = swift_task_alloc();
  v6[5] = v7;
  *v7 = v6;
  v7[1] = sub_251BD127C;

  return (v9)(v6 + 2, v6 + 3);
}

uint64_t sub_251BD127C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_251BD13B4;
  }

  else
  {
    v2 = sub_251BD1390;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251BD13CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x2822009F8](sub_251BD13EC, 0, 0);
}

uint64_t sub_251BD13EC()
{
  v1 = v0[20];
  v2 = [objc_allocWithZone(MEMORY[0x277D123B0]) init];
  v0[21] = v2;
  sub_251A8223C(0, &qword_27F47BB60, 0x277D12398);
  v3 = sub_251C71144();
  v0[22] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_251BD1584;
  v4 = swift_continuation_init();
  sub_251BD1A70(0, &qword_27F47BB68, &qword_27F47BB70, 0x277D12478, MEMORY[0x277D85808]);
  v0[17] = v5;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_251BD1E30;
  v0[13] = &block_descriptor_16;
  v0[14] = v4;
  [v2 processOriginalSignedClinicalDataRecords:v3 options:v1 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_251BD1584()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_251BD1704;
  }

  else
  {
    v2 = sub_251BD1694;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251BD1694()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 144);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_251BD1704(uint64_t a1, uint64_t a2)
{
  v3 = v2[22];
  v4 = v2[21];
  swift_willThrow();

  v5 = v2[1];

  return v5();
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  return sub_251A83384(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_destroy_helper_17(uint64_t a1)
{
}

{
}

unint64_t sub_251BD17C0()
{
  result = qword_27F47BB78;
  if (!qword_27F47BB78)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F47BB78);
  }

  return result;
}

uint64_t sub_251BD185C(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_251AF4F78;

  return sub_251BCEB34(a1, a2, v6, v7, v8, v9, v11, v10);
}

void sub_251BD1938(uint64_t a1)
{
  if (!qword_27F47BB88)
  {
    sub_251A8223C(255, &qword_27F47BB70, 0x277D12478);
    v1 = sub_251C711A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47BB88);
    }
  }
}

uint64_t sub_251BD19A0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_251B14FE8;

  return sub_251BD0FAC(a1, a2, v6, v7, v8);
}

void sub_251BD1A70(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v8 = sub_251A8223C(255, a3, a4);
    v9 = sub_251A82284();
    v10 = a5(a1, v8, v9, MEMORY[0x277D84950]);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_251BD1AF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251BD1B44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_251B14FE8;

  return sub_251BD1174(a1, v4, v5, v6, v7, v1 + 6);
}

uint64_t sub_251BD1C1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251BD1AF0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_251BD1C78(uint64_t a1)
{
  if (!qword_27F47BBA8)
  {
    sub_251A82284();
    v1 = sub_251C71254();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47BBA8);
    }
  }
}

uint64_t objectdestroy_32Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_251BD1D28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_251B14FE8;

  return sub_251BD0C84(a1, v4, v5, v6, v7, v1 + 6);
}

void sub_251BD1E34(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v12 = sub_251C70764();
  __swift_project_value_buffer(v12, qword_2813E8130);

  v13 = a1;
  oslog = sub_251C70744();
  v14 = sub_251C713D4();

  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315906;
    *(v15 + 4) = sub_251B10780(a2, a3, &v22);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_251B10780(a4, a5, &v22);
    *(v15 + 22) = 2048;
    *(v15 + 24) = a6;
    *(v15 + 32) = 2080;
    v17 = a1;
    sub_251A82284();
    v18 = sub_251C70F74();
    v20 = sub_251B10780(v18, v19, &v22);

    *(v15 + 34) = v20;
    _os_log_impl(&dword_251A6C000, oslog, v14, "Sending message to remote object proxy failed at %s:%s:%ld: %s", v15, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v16, -1, -1);
    MEMORY[0x25308E2B0](v15, -1, -1);
  }

  else
  {
  }
}

void sub_251BD206C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = MEMORY[0x277D84F90];
  sub_251BD21BC();
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = v13;
  v14[5] = sub_251AD96B8;
  v14[6] = v12;

  v15 = a4;
  v16 = a6;

  v17 = sub_251C714D4();
  [a3 executeQuery_];
}

unint64_t sub_251BD21BC()
{
  result = qword_27F47BBB0;
  if (!qword_27F47BBB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F47BBB0);
  }

  return result;
}

void sub_251BD2208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(id, uint64_t))
{
  v11 = sub_251C714C4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v14, a2, v11);
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == *MEMORY[0x277CCB720])
  {
    (*(v12 + 96))(v14, v11);
    v16 = *v14;
    v17 = [*v14 quantityForLead_];
    if (v17)
    {
      v18 = v17;
      [v17 doubleValueForUnit_];
      v20 = v19;

      swift_beginAccess();
      v21 = *(a5 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a5 + 16) = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = sub_251C39724(0, *(v21 + 2) + 1, 1, v21);
        *(a5 + 16) = v21;
      }

      v24 = *(v21 + 2);
      v23 = *(v21 + 3);
      if (v24 >= v23 >> 1)
      {
        v21 = sub_251C39724((v23 > 1), v24 + 1, 1, v21);
      }

      v25 = v20;
      *(v21 + 2) = v24 + 1;
      *&v21[4 * v24 + 32] = v25;
      *(a5 + 16) = v21;
    }
  }

  else if (v15 == *MEMORY[0x277CCB730])
  {
    (*(v12 + 96))(v14, v11);
    v26 = *v14;
    v27 = *v14;
    a6(v26, 1);
  }

  else if (v15 == *MEMORY[0x277CCB728])
  {
    swift_beginAccess();

    a6(v28, 0);
  }

  else
  {
    v29[1] = 0;
    v29[2] = 0xE000000000000000;
    sub_251C716A4();
    MEMORY[0x25308CDA0](0xD00000000000002BLL, 0x8000000251C8FAA0);
    sub_251C717C4();
    sub_251C717E4();
    __break(1u);
  }
}

void sub_251BD25B8(uint64_t a1)
{
  type metadata accessor for ClinicalSharingSyncContext(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for HKClinicalSharingReason(319);
    if (v2 <= 0x3F)
    {
      sub_251C70014();
      if (v3 <= 0x3F)
      {
        sub_251BD2AD0(319, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_251BD26BC()
{
  sub_251BD2AD0(0, &qword_2813E1C58, sub_251B29AC0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251C78260;
  *(inited + 32) = 0xD00000000000001DLL;
  *(inited + 40) = 0x8000000251C8B180;
  v2 = type metadata accessor for ClinicalSharingOperationalMetric(0);
  v3 = *(v0 + *(v2 + 36));
  *(inited + 72) = &type metadata for IHRMetricField;
  *(inited + 80) = &off_2863F6C30;
  *(inited + 48) = v3;
  *(inited + 88) = 0x7361655268737570;
  *(inited + 96) = 0xEA00000000006E6FLL;
  v4 = v0[1];
  *(inited + 128) = &type metadata for PushReasonMetricField;
  *(inited + 136) = &off_2863FBF98;
  *(inited + 104) = v4;
  *(inited + 144) = 0x73736563637573;
  *(inited + 152) = 0xE700000000000000;
  v5 = *v0;
  v6 = *(*v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error);
  *(inited + 184) = &type metadata for SyncSuccessMetricField;
  *(inited + 192) = &off_2863FBF80;
  *(inited + 160) = v6 == 0;
  *(inited + 200) = 0x6D6F44726F727265;
  *(inited + 208) = 0xEB000000006E6961;
  *(inited + 240) = &type metadata for ErrorDomainMetricField;
  *(inited + 248) = &off_2863F6C18;
  strcpy((inited + 256), "errorMessage");
  *(inited + 269) = 0;
  *(inited + 270) = -5120;
  v25 = v2;
  v26 = v6;
  *(inited + 216) = v6;
  *(inited + 296) = &type metadata for ErrorMessageMetricField;
  *(inited + 304) = &off_2863F6C00;
  *(inited + 272) = v6;
  *(inited + 312) = 0xD000000000000014;
  *(inited + 320) = 0x8000000251C8FAD0;
  v7 = v2;
  v8 = *(v2 + 28);
  PushMetricField = type metadata accessor for MinutesSinceLastPushMetricField(0);
  *(inited + 352) = PushMetricField;
  *(inited + 360) = &off_2863FBF68;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 328));
  sub_251AC553C(v0 + v8, boxed_opaque_existential_1);
  v11 = *(v7 + 24);
  v12 = *(PushMetricField + 20);
  v13 = sub_251C70014();
  v14 = *(*(v13 - 8) + 16);
  v14(boxed_opaque_existential_1 + v12, v0 + v11, v13);
  *(inited + 368) = 0xD00000000000001ELL;
  *(inited + 376) = 0x8000000251C8FAF0;
  v15 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_lastSync;
  swift_beginAccess();
  SuccessfulPushMetricField = type metadata accessor for MinutesSinceLastSuccessfulPushMetricField(0);
  *(inited + 408) = SuccessfulPushMetricField;
  *(inited + 416) = &off_2863FBF50;
  v17 = __swift_allocate_boxed_opaque_existential_1((inited + 384));
  sub_251AC553C(v5 + v15, v17);
  v14(v17 + *(SuccessfulPushMetricField + 20), v0 + v11, v13);
  *(inited + 424) = 0xD000000000000011;
  *(inited + 432) = 0x8000000251C8FB10;
  v18 = *(v25 + 32);
  v19 = type metadata accessor for OperationDurationMetricField(0);
  *(inited + 464) = v19;
  *(inited + 472) = &off_2863FBF38;
  v20 = __swift_allocate_boxed_opaque_existential_1((inited + 440));
  v14(v20, v0 + v18, v13);
  v14(v20 + *(v19 + 20), v0 + v11, v13);
  v21 = v26;
  v22 = v26;
  v23 = sub_251C4C2A0(inited);
  swift_setDeallocating();
  sub_251B29AC0(0);
  swift_arrayDestroy();
  return v23;
}

uint64_t sub_251BD2A88(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));

  return v2;
}

void sub_251BD2AD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_251BD2B94(uint64_t a1@<X8>)
{
  v2 = *v1;
  if (*v1 > 3)
  {
    if (v2 == 4)
    {
      *a1 = 0x676E6974736574;
      *(a1 + 8) = 0xE700000000000000;
      return;
    }

    if (v2 != 5)
    {
      if (v2 == 6)
      {
        *a1 = 0xD000000000000010;
        *(a1 + 8) = 0x8000000251C8A720;
        return;
      }

      goto LABEL_12;
    }

    strcpy(a1, "user-initiated");
    *(a1 + 15) = -18;
  }

  else
  {
    if (v2 == 1)
    {
      strcpy(a1, "authorization");
      *(a1 + 14) = -4864;
      return;
    }

    if (v2 != 2)
    {
      if (v2 == 3)
      {
        *a1 = 0x756F72676B636162;
        *(a1 + 8) = 0xEA0000000000646ELL;
        return;
      }

LABEL_12:
      *a1 = 0x6E776F6E6B6E75;
      *(a1 + 8) = 0xE700000000000000;
      return;
    }

    *a1 = 0x617461642D77656ELL;
    *(a1 + 8) = 0xE800000000000000;
  }
}

uint64_t sub_251BD2CB4@<X0>(uint64_t a1@<X8>)
{
  result = sub_251BD2D00(type metadata accessor for MinutesSinceLastPushMetricField);
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_251BD2D00(void (*a1)(void))
{
  v3 = sub_251C70014();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BD2AD0(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  sub_251AC553C(v1, &v15 - v8);
  v10 = (*(v4 + 48))(v9, 1, v3);
  result = 0;
  if (v10 != 1)
  {
    (*(v4 + 32))(v6, v9, v3);
    a1(0);
    sub_251C6FF74();
    v13 = v12;
    result = (*(v4 + 8))(v6, v3);
    v14 = v13 / 60.0;
    if (COERCE__INT64(fabs(v13 / 60.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v14 > -9.22337204e18)
    {
      if (v14 < 9.22337204e18)
      {
        return v14;
      }

LABEL_9:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_251BD2F1C@<X0>(uint64_t a1@<X8>)
{
  result = sub_251BD2D00(type metadata accessor for MinutesSinceLastSuccessfulPushMetricField);
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

void sub_251BD2F68(uint64_t a1@<X8>)
{
  sub_251C6FF74();
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v3 = v2;
  if (v2 >= 181)
  {
    v3 = 181;
  }

  *a1 = v3;
  *(a1 + 8) = 0;
}

uint64_t sub_251BD3030(uint64_t a1)
{
  result = sub_251C70014();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_17Tm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_251BD2AD0(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_251C70014();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t __swift_store_extra_inhabitant_index_18Tm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_251BD2AD0(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_251C70014();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_251BD3338(uint64_t a1)
{
  sub_251BD2AD0(319, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_251C70014();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_251BD3410()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_date;
  v2 = sub_251C70014();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar;
  v4 = sub_251C701E4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_251BD3534(uint64_t a1)
{
  result = sub_251C70014();
  if (v2 <= 0x3F)
  {
    result = sub_251C701E4();
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

void sub_251BD366C(uint64_t a1)
{
  type metadata accessor for PBTypedData(319);
  if (v1 <= 0x3F)
  {
    sub_251BBF120(319);
    if (v2 <= 0x3F)
    {
      sub_251BD3708();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251BD3708()
{
  if (!qword_2813E3AE0[0])
  {
    v0 = sub_251C71574();
    if (!v1)
    {
      atomic_store(v0, qword_2813E3AE0);
    }
  }
}

uint64_t sub_251BD3768(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_251B1B1EC();
  if ((sub_251C71534() & 1) == 0)
  {
    return 0;
  }

  return sub_251A94D14(v2, v3);
}

uint64_t sub_251BD37E4(uint64_t a1, uint64_t a2)
{
  if (sub_251A911BC())
  {
    Output = type metadata accessor for ClinicalSharingQueryOutput(0);
    if (sub_251BBF35C(*(a1 + *(Output + 20)), *(a2 + *(Output + 20))))
    {
      v5 = *(Output + 24);
      v6 = a1 + v5;
      v7 = *(a1 + v5);
      v8 = a2 + v5;
      v9 = *v8;
      if (v7)
      {
        if (v9)
        {
          v10 = *(v6 + 8);
          v11 = *(v8 + 8);
          sub_251B1B1EC();
          v12 = v9;

          if (sub_251C71534())
          {
            v13 = sub_251A94D14(v10, v11);

            if (v13)
            {
              return 1;
            }
          }

          else
          {
          }
        }
      }

      else if (!v9)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t type metadata accessor for FHIRServerWebRequest(uint64_t a1)
{
  result = qword_27F47BC08;
  if (!qword_27F47BC08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251BD3948(void *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v4 = sub_251C70074();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_251C6FE64();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v43 - v12;
  v48 = type metadata accessor for ClinicalDocumentDownloadRequest(0);
  v14 = &a2[v48[7]];
  *v14 = xmmword_251C74660;
  *(a2 + 1) = 0;
  *a2 = 2;
  v15 = [a1 webURL];
  if (v15)
  {
    v16 = v15;
    v17 = a1;
    sub_251C6FE14();

    (*(v8 + 32))(v13, v11, v7);
    (*(v8 + 16))(&a2[v48[6]], v13, v7);
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_251C716A4();

    v46 = 0xD000000000000020;
    v47 = 0x8000000251C8FBD0;
    v18 = 0xE700000000000000;
    v19 = *a2;
    v20 = 0x5443454E4E4F43;
    v21 = 0xE300000000000000;
    v22 = 5526864;
    if (v19 != 6)
    {
      v22 = 0x4543415254;
      v21 = 0xE500000000000000;
    }

    v23 = 0xE700000000000000;
    v24 = 0x534E4F4954504FLL;
    if (v19 != 4)
    {
      v24 = 1414745936;
      v23 = 0xE400000000000000;
    }

    if (*a2 <= 5u)
    {
      v22 = v24;
      v21 = v23;
    }

    v25 = 0xE300000000000000;
    v26 = 5522759;
    if (v19 != 2)
    {
      v26 = 1145128264;
      v25 = 0xE400000000000000;
    }

    if (*a2)
    {
      v20 = 0x4554454C4544;
      v18 = 0xE600000000000000;
    }

    if (*a2 > 1u)
    {
      v20 = v26;
      v18 = v25;
    }

    if (*a2 <= 3u)
    {
      v27 = v20;
    }

    else
    {
      v27 = v22;
    }

    if (*a2 <= 3u)
    {
      v28 = v18;
    }

    else
    {
      v28 = v21;
    }

    MEMORY[0x25308CDA0](v27, v28);

    MEMORY[0x25308CDA0](32, 0xE100000000000000);
    v29 = [a1 identifier];
    sub_251C70054();

    sub_251BD3E8C();
    v30 = v45;
    v31 = sub_251C719A4();
    MEMORY[0x25308CDA0](v31);

    (*(v44 + 8))(v6, v30);
    v32 = v46;
    v33 = v47;
    (*(v8 + 8))(v13, v7);
    v34 = v17;
    v35 = &a2[v48[8]];
    *v35 = v32;
    *(v35 + 1) = v33;
    v36 = [v17 contentType];
    if (v36)
    {
      v37 = v36;
      v38 = sub_251C70F14();
      v40 = v39;

      sub_251BD40D0(0, &qword_27F47A080, &type metadata for HTTPHeader, MEMORY[0x277D84560]);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_251C74800;
      *(v41 + 32) = 0x747065636341;
      *(v41 + 40) = 0xE600000000000000;
      *(v41 + 48) = v38;
      *(v41 + 56) = v40;

      *(a2 + 1) = v41;
    }

    else
    {
    }
  }

  else
  {
    sub_251BD3E38();
    swift_allocError();
    *v42 = 0;
    swift_willThrow();

    sub_251A8596C(*v14, *(v14 + 1));
  }
}

uint64_t type metadata accessor for ClinicalDocumentDownloadRequest(uint64_t a1)
{
  result = qword_27F47BC20;
  if (!qword_27F47BC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_251BD3E38()
{
  result = qword_27F47BC18;
  if (!qword_27F47BC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BC18);
  }

  return result;
}

unint64_t sub_251BD3E8C()
{
  result = qword_27F479418;
  if (!qword_27F479418)
  {
    sub_251C70074();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479418);
  }

  return result;
}

uint64_t sub_251BD3EE4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_251BD3F34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_251BD3F88(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_251BD3FA0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_251BD3FF8(uint64_t a1)
{
  sub_251A85C78(319);
  if (v1 <= 0x3F)
  {
    sub_251C6FE64();
    if (v2 <= 0x3F)
    {
      sub_251BD40D0(319, &qword_2813E7518, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251BD40D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_251BD4130(uint64_t a1)
{
  sub_251BD5078(0);
  v25 = v2;
  v27 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BD520C(0, &qword_27F47BC60, type metadata accessor for PBTypedData);
  v26 = v5;
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  sub_251BD52B8(0);
  v9 = *(v8 - 8);
  v29 = v8;
  v30 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C70F14();
  v12 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v13 = sub_251C70EE4();

  v14 = [v12 initWithKey:v13 ascending:0];

  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  sub_251A82418();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_251C74560;
  *(v15 + 32) = v14;
  v24 = v14;
  v16 = sub_251C2A734(v15);

  v31 = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_251BD52D8;
  *(v17 + 24) = a1;
  sub_251BD5134(0);
  sub_251A8223C(0, &qword_27F47BC50, 0x277CCD580);
  sub_251BD5324(&qword_27F47BC58, sub_251BD5134, MEMORY[0x277CBCD90]);

  sub_251C70AA4();

  v18 = swift_allocObject();
  *(v18 + 16) = sub_251BD5314;
  *(v18 + 24) = a1;
  type metadata accessor for PBTypedData(0);

  v19 = v25;
  sub_251C70774();

  (*(v27 + 8))(v4, v19);
  type metadata accessor for ClinicalSharingQueryOutput(0);

  v20 = v26;
  sub_251C70774();

  (*(v28 + 8))(v7, v20);
  sub_251BD5324(&qword_27F47BC70, sub_251BD52B8, MEMORY[0x277CBCB10]);
  v21 = v29;
  v22 = sub_251C70A94();

  (*(v30 + 8))(v11, v21);
  return v22;
}

id sub_251BD45F0(unint64_t a1)
{
  v1 = sub_251B1513C(a1);
  if (!v1)
  {
    goto LABEL_13;
  }

  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
    v5 = v1;
    v6 = sub_251C717F4();
    v1 = v5;
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_9:

    return 0;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x25308D460](0);
    goto LABEL_7;
  }

  if (*(v2 + 16))
  {
    v3 = *(v1 + 32);
LABEL_7:
    v4 = v3;

    return v4;
  }

  __break(1u);
LABEL_13:
  result = sub_251C717E4();
  __break(1u);
  return result;
}

char *sub_251BD46EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a2;
  sub_251BD536C(0, &qword_27F478D90, MEMORY[0x277CC88A8]);
  MEMORY[0x28223BE20](v5 - 8);
  v68 = &v57 - v6;
  v7 = type metadata accessor for PBDateRange(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v67 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PBTypedData(0);
  v70 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBActiveMedications(0);
  v14 = MEMORY[0x28223BE20](v13);
  v66 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = (&v57 - v16);
  v73 = sub_251C70074();
  v18 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v61 = a1;
    v21 = [v61 linkCollection];
    v64 = a3;
    v65 = v17;
    v62 = v8;
    v63 = v7;
    if (v21)
    {
      v60 = v13;
      v22 = v21;
      v23 = [v21 links];

      sub_251A8223C(0, &qword_27F47BC78, 0x277CCDB00);
      v24 = sub_251C71154();

      v25 = v24;
      if (v24 >> 62)
      {
        v26 = sub_251C717F4();
        v25 = v24;
        if (v26)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v26)
        {
LABEL_5:
          v27 = v18;
          v28 = v25;
          v58 = v12;
          v59 = v10;
          v74 = MEMORY[0x277D84F90];
          v72 = v26;
          result = sub_251C0B6AC(0, v26 & ~(v26 >> 63), 0);
          if (v72 < 0)
          {
            __break(1u);
            return result;
          }

          v30 = 0;
          v31 = v74;
          v32 = v28;
          v71 = v28 & 0xC000000000000001;
          v33 = (v27 + 8);
          v34 = v28;
          do
          {
            if (v71)
            {
              v35 = MEMORY[0x25308D460](v30, v32);
            }

            else
            {
              v35 = *(v32 + 8 * v30 + 32);
            }

            v36 = v35;
            v37 = [v35 targetUUID];
            sub_251C70054();

            v38 = sub_251C70024();
            v40 = v39;

            (*v33)(v20, v73);
            v74 = v31;
            v42 = *(v31 + 16);
            v41 = *(v31 + 24);
            if (v42 >= v41 >> 1)
            {
              sub_251C0B6AC((v41 > 1), v42 + 1, 1);
              v31 = v74;
            }

            ++v30;
            *(v31 + 16) = v42 + 1;
            v43 = v31 + 16 * v42;
            *(v43 + 32) = v38;
            *(v43 + 40) = v40;
            v32 = v34;
          }

          while (v72 != v30);

          v12 = v58;
          v10 = v59;
          v17 = v65;
          goto LABEL_20;
        }
      }

      v31 = MEMORY[0x277D84F90];
    }

    else
    {
      v31 = 0;
    }

LABEL_20:
    *v17 = MEMORY[0x277D84F90];
    sub_251C703A4();
    if (v31)
    {
      *v17 = v31;
    }

    *v12 = 0;
    v12[8] = 1;
    v45 = *(v10 + 20);
    v46 = type metadata accessor for PBTypedData.OneOf_Raw(0);
    v47 = *(v46 - 8);
    v72 = *(v47 + 56);
    v73 = v47 + 56;
    (v72)(&v12[v45], 1, 1, v46);
    sub_251C703A4();
    v48 = *(v10 + 28);
    v49 = v63;
    v50 = *(v62 + 56);
    v50(&v12[v48], 1, 1, v63);
    v51 = sub_251C6FAE4();
    v52 = v68;
    (*(*(v51 - 8) + 56))(v68, 1, 1, v51);
    v53 = v67;
    sub_251BFC468();

    sub_251BD5428(v52, &qword_27F478D90, MEMORY[0x277CC88A8]);
    sub_251BD5428(&v12[v48], qword_2813E6EE8, type metadata accessor for PBDateRange);
    sub_251BD5484(v53, &v12[v48], type metadata accessor for PBDateRange);
    v50(&v12[v48], 0, 1, v49);
    *v12 = 132;
    v12[8] = 1;
    v55 = v65;
    v54 = v66;
    sub_251BD53C0(v65, v66, type metadata accessor for PBActiveMedications);
    sub_251BD5428(&v12[v45], qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251BD5484(v54, &v12[v45], type metadata accessor for PBActiveMedications);
    swift_storeEnumTagMultiPayload();
    (v72)(&v12[v45], 0, 1, v46);
    v56 = v64;
    sub_251BD5484(v12, v64, type metadata accessor for PBTypedData);
    (*(v70 + 56))(v56, 0, 1, v10);
    return sub_251BD54EC(v55);
  }

  v44 = *(v70 + 56);

  return v44(a3, 1, 1, v10);
}

uint64_t sub_251BD4E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_251C702E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(a2 + 56);
  (*(v7 + 104))(v9, *MEMORY[0x277D112F8], v6);
  v18 = v9;
  v11 = sub_251BF1DA0(MEMORY[0x277D84F90], sub_251AD6374, v17, v10);
  (*(v7 + 8))(v9, v6);
  if (*(v11 + 16))
  {
    sub_251BD53C0(a1, a3, type metadata accessor for PBTypedData);
    v12 = sub_251BFAE40(v11);

    Output = type metadata accessor for ClinicalSharingQueryOutput(0);
    *(a3 + *(Output + 20)) = v12;
    v14 = (a3 + *(Output + 24));
    *v14 = 0;
    v14[1] = 0;
    return (*(*(Output - 8) + 56))(a3, 0, 1, Output);
  }

  else
  {
    v16 = type metadata accessor for ClinicalSharingQueryOutput(0);
    (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
  }
}

void sub_251BD5078(uint64_t a1)
{
  if (!qword_27F47BC30)
  {
    sub_251BD5134(255);
    sub_251A8223C(255, &qword_27F47BC50, 0x277CCD580);
    sub_251BD5324(&qword_27F47BC58, sub_251BD5134, MEMORY[0x277CBCD90]);
    v1 = sub_251C70784();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47BC30);
    }
  }
}

void sub_251BD5134(uint64_t a1)
{
  if (!qword_27F47BC38)
  {
    sub_251BD51A4(255);
    sub_251A82284();
    v1 = sub_251C70974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47BC38);
    }
  }
}

void sub_251BD51A4(uint64_t a1)
{
  if (!qword_27F47BC40)
  {
    sub_251A8223C(255, &qword_27F47BC48, 0x277CCDAF0);
    v1 = sub_251C711A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47BC40);
    }
  }
}

void sub_251BD520C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_251BD5134(255);
    a3(255);
    sub_251BD5324(&qword_27F47BC58, sub_251BD5134, MEMORY[0x277CBCD90]);
    v5 = sub_251C70784();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_251BD52E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_251BD5324(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_251BD536C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251BD53C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251BD5428(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251BD536C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251BD5484(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251BD54EC(uint64_t a1)
{
  v2 = type metadata accessor for PBActiveMedications(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_19HealthRecordsDaemon31FHIRServerOperationRequestErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_251BD5560(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_251BD55BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_251BD560C(void *result, int a2)
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

uint64_t sub_251BD5640(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
      return 0xD000000000000013;
    case 1:
      return 0xD000000000000011;
    case 2:
      return 0x6569746170206F4ELL;
  }

  sub_251C716A4();

  MEMORY[0x25308CDA0](a1, a2);
  return 0xD000000000000019;
}

void sub_251BD5744(uint64_t *a1@<X8>)
{
  sub_251A8223C(0, &qword_2813E1D40, 0x277CCAD38);
  v2 = sub_251B37FB0();
  v3 = [objc_allocWithZone(type metadata accessor for URLSessionCertVerificationDelegate()) init];
  v4 = type metadata accessor for WebRequestPerformer();
  v5 = swift_allocObject();
  v6 = [objc_opt_self() sessionWithConfiguration:v2 delegate:v3 delegateQueue:0];

  *(v5 + 16) = v6;
  *(v5 + 24) = 0;
  a1[3] = v4;
  a1[4] = &protocol witness table for WebRequestPerformer;
  *a1 = v5;
}

void sub_251BD581C(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_251C6FD74();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

id sub_251BD58BC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HealthRecordsIngestionServiceServer();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_251BD5924(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  ObjectType = swift_getObjectType();
  sub_251BDB154(0, &qword_2813E1E00, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v27 - v10;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v12 = sub_251C70764();
  __swift_project_value_buffer(v12, qword_2813E8130);
  v13 = v4;
  v14 = sub_251C70744();
  v15 = sub_251C713F4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = a3;
    v18 = v17;
    v32 = v17;
    *v16 = 136315138;
    v28 = a1;
    v30 = ObjectType;
    swift_getMetatypeMetadata();
    v30 = sub_251C70F74();
    v31 = v19;

    MEMORY[0x25308CDA0](46, 0xE100000000000000);

    a1 = v28;
    MEMORY[0x25308CDA0](0xD000000000000035, 0x8000000251C8FF60);

    v20 = sub_251B10780(v30, v31, &v32);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_251A6C000, v14, v15, "%s starting", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v21 = v18;
    a3 = v27;
    MEMORY[0x25308E2B0](v21, -1, -1);
    MEMORY[0x25308E2B0](v16, -1, -1);
  }

  v22 = sub_251C71214();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v13;
  v23[5] = a1;
  v23[6] = v29;
  v23[7] = a3;
  v23[8] = a4;
  v24 = v13;
  v25 = a1;

  sub_251C56428(0, 0, v11, &unk_251C84F60, v23);
}

uint64_t sub_251BD5C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[13] = a4;
  return MEMORY[0x2822009F8](sub_251BD5C68, 0, 0);
}

uint64_t sub_251BD5C68()
{
  type metadata accessor for SignedClinicalDataManager();
  inited = swift_initStackObject();
  v0[18] = inited;
  *(inited + 16) = 0;
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_251BD5D18;
  v4 = v0[14];
  v3 = v0[15];

  return sub_251BCC8A8(v4, v3);
}

uint64_t sub_251BD5D18(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v4 = sub_251BD600C;
  }

  else
  {
    v4 = sub_251BD5E2C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_251BD5E2C()
{
  v18 = v0;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = sub_251C70764();
  __swift_project_value_buffer(v2, qword_2813E8130);
  v3 = v1;
  v4 = sub_251C70744();
  v5 = sub_251C713F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v8 = sub_251B2DA28(0xD000000000000035, 0x8000000251C8FF60);
    v10 = sub_251B10780(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_251A6C000, v4, v5, "%s finished successfully", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x25308E2B0](v7, -1, -1);
    MEMORY[0x25308E2B0](v6, -1, -1);
  }

  v11 = v0[20];
  v12 = v0[18];
  v13 = v0[16];
  v14 = v11;
  v13(v11, 0);

  swift_setDeallocating();
  v15 = v0[1];

  return v15();
}

uint64_t sub_251BD600C()
{
  v23 = v0;
  v1 = v0[18];
  swift_setDeallocating();

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v3 = v0[13];
  v4 = sub_251C70764();
  __swift_project_value_buffer(v4, qword_2813E8130);
  v5 = v3;
  v6 = v2;
  v7 = sub_251C70744();
  v8 = sub_251C713D4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315394;
    v11 = sub_251B2DA28(0xD000000000000035, 0x8000000251C8FF60);
    v13 = sub_251B10780(v11, v12, &v22);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v14 = sub_251BBFFA4(v0[9], v0[10]);
    v16 = sub_251B10780(v14, v15, &v22);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_251A6C000, v7, v8, "%s failed with %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v10, -1, -1);
    MEMORY[0x25308E2B0](v9, -1, -1);
  }

  v17 = v0[21];
  v18 = v0[16];
  swift_getErrorValue();
  v19 = sub_251BC0124(v0[6], v0[7]);
  v18(0, v19);

  v20 = v0[1];

  return v20();
}

uint64_t sub_251BD62A8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  ObjectType = swift_getObjectType();
  sub_251BDB154(0, &qword_2813E1E00, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29 - v10;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v12 = sub_251C70764();
  __swift_project_value_buffer(v12, qword_2813E8130);
  v13 = v4;
  v14 = sub_251C70744();
  v15 = sub_251C713F4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v34 = v18;
    *v17 = 136315138;
    v30 = a2;
    v32 = ObjectType;
    swift_getMetatypeMetadata();
    v32 = sub_251C70F74();
    v33 = v19;

    MEMORY[0x25308CDA0](46, 0xE100000000000000);

    a2 = v30;
    MEMORY[0x25308CDA0](0xD00000000000003DLL, 0x8000000251C8FF20);

    v20 = sub_251B10780(v32, v33, &v34);

    *(v17 + 4) = v20;
    _os_log_impl(&dword_251A6C000, v14, v15, "%s starting", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x25308E2B0](v18, -1, -1);
    v21 = v17;
    a1 = v29;
    MEMORY[0x25308E2B0](v21, -1, -1);
  }

  v22 = sub_251C71214();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v13;
  v23[5] = a1;
  v24 = v31;
  v23[6] = a2;
  v23[7] = v24;
  v23[8] = a4;
  v25 = v13;
  v26 = a1;
  v27 = a2;

  sub_251C56428(0, 0, v11, &unk_251C84F50, v23);
}

uint64_t sub_251BD65C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[13] = a4;
  return MEMORY[0x2822009F8](sub_251BD65F0, 0, 0);
}

uint64_t sub_251BD65F0()
{
  type metadata accessor for SignedClinicalDataManager();
  inited = swift_initStackObject();
  v0[18] = inited;
  *(inited + 16) = 0;
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_251BD66A4;
  v4 = v0[14];
  v3 = v0[15];

  return sub_251BCDE04(v4, v3, 0);
}

uint64_t sub_251BD66A4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v4 = sub_251BD6998;
  }

  else
  {
    v4 = sub_251BD67B8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_251BD67B8()
{
  v18 = v0;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = sub_251C70764();
  __swift_project_value_buffer(v2, qword_2813E8130);
  v3 = v1;
  v4 = sub_251C70744();
  v5 = sub_251C713F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v8 = sub_251B2DA28(0xD00000000000003DLL, 0x8000000251C8FF20);
    v10 = sub_251B10780(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_251A6C000, v4, v5, "%s finished successfully", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x25308E2B0](v7, -1, -1);
    MEMORY[0x25308E2B0](v6, -1, -1);
  }

  v11 = v0[20];
  v12 = v0[18];
  v13 = v0[16];
  v14 = v11;
  v13(v11, 0);

  swift_setDeallocating();
  v15 = v0[1];

  return v15();
}

uint64_t sub_251BD6998()
{
  v23 = v0;
  v1 = v0[18];
  swift_setDeallocating();

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v3 = v0[13];
  v4 = sub_251C70764();
  __swift_project_value_buffer(v4, qword_2813E8130);
  v5 = v3;
  v6 = v2;
  v7 = sub_251C70744();
  v8 = sub_251C713D4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315394;
    v11 = sub_251B2DA28(0xD00000000000003DLL, 0x8000000251C8FF20);
    v13 = sub_251B10780(v11, v12, &v22);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v14 = sub_251BBFFA4(v0[9], v0[10]);
    v16 = sub_251B10780(v14, v15, &v22);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_251A6C000, v7, v8, "%s failed with %s)", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v10, -1, -1);
    MEMORY[0x25308E2B0](v9, -1, -1);
  }

  v17 = v0[21];
  v18 = v0[16];
  swift_getErrorValue();
  v19 = sub_251BC0124(v0[6], v0[7]);
  v18(0, v19);

  v20 = v0[1];

  return v20();
}

uint64_t sub_251BD6CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  ObjectType = swift_getObjectType();
  sub_251BDB154(0, &qword_2813E1E00, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - v10;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v12 = sub_251C70764();
  __swift_project_value_buffer(v12, qword_2813E8130);
  v13 = v4;
  v14 = sub_251C70744();
  v15 = sub_251C713F4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = a3;
    v18 = v17;
    v31 = v17;
    *v16 = 136315138;
    v27 = a1;
    v29 = ObjectType;
    swift_getMetatypeMetadata();
    v29 = sub_251C70F74();
    v30 = v19;

    MEMORY[0x25308CDA0](46, 0xE100000000000000);

    a1 = v27;
    MEMORY[0x25308CDA0](0xD000000000000046, 0x8000000251C8FED0);

    v20 = sub_251B10780(v29, v30, &v31);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_251A6C000, v14, v15, "%s starting", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v21 = v18;
    a3 = v26;
    MEMORY[0x25308E2B0](v21, -1, -1);
    MEMORY[0x25308E2B0](v16, -1, -1);
  }

  v22 = sub_251C71214();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v13;
  v23[5] = a1;
  v23[6] = v28;
  v23[7] = a3;
  v23[8] = a4;
  v24 = v13;

  sub_251C56428(0, 0, v11, &unk_251C84F40, v23);
}

uint64_t sub_251BD6FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[10] = a4;
  v11 = swift_task_alloc();
  v8[13] = v11;
  *v11 = v8;
  v11[1] = sub_251BD7098;

  return sub_251BD13CC(a5, a6);
}

uint64_t sub_251BD7098(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_251BD7378;
  }

  else
  {
    v4 = sub_251BD71AC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_251BD71AC()
{
  v17 = v0;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_251C70764();
  __swift_project_value_buffer(v2, qword_2813E8130);
  v3 = v1;
  v4 = sub_251C70744();
  v5 = sub_251C713F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v8 = sub_251B2DA28(0xD000000000000046, 0x8000000251C8FED0);
    v10 = sub_251B10780(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_251A6C000, v4, v5, "%s finished successfully", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x25308E2B0](v7, -1, -1);
    MEMORY[0x25308E2B0](v6, -1, -1);
  }

  v11 = v0[14];
  v12 = v0[11];
  v13 = v11;
  v12(v11, 0);

  v14 = v0[1];

  return v14();
}

uint64_t sub_251BD7378()
{
  v22 = v0;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[10];
  v3 = sub_251C70764();
  __swift_project_value_buffer(v3, qword_2813E8130);
  v4 = v2;
  v5 = v1;
  v6 = sub_251C70744();
  v7 = sub_251C713D4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315394;
    v10 = sub_251B2DA28(0xD000000000000046, 0x8000000251C8FED0);
    v12 = sub_251B10780(v10, v11, &v21);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v13 = sub_251BBFFA4(v0[6], v0[7]);
    v15 = sub_251B10780(v13, v14, &v21);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_251A6C000, v6, v7, "%s failed with %s)", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v9, -1, -1);
    MEMORY[0x25308E2B0](v8, -1, -1);
  }

  v16 = v0[15];
  v17 = v0[11];
  swift_getErrorValue();
  v18 = sub_251BC0124(v0[3], v0[4]);
  v17(0, v18);

  v19 = v0[1];

  return v19();
}

uint64_t sub_251BD76A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  ObjectType = swift_getObjectType();
  sub_251BDB154(0, &qword_2813E1E00, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v27 - v10;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v12 = sub_251C70764();
  __swift_project_value_buffer(v12, qword_2813E8130);
  v13 = v4;
  v14 = sub_251C70744();
  v15 = sub_251C713F4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = a3;
    v18 = v17;
    v32 = v17;
    *v16 = 136315138;
    v28 = a1;
    v30 = ObjectType;
    swift_getMetatypeMetadata();
    v30 = sub_251C70F74();
    v31 = v19;

    MEMORY[0x25308CDA0](46, 0xE100000000000000);

    a1 = v28;
    MEMORY[0x25308CDA0](0xD000000000000031, 0x8000000251C8FE90);

    v20 = sub_251B10780(v30, v31, &v32);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_251A6C000, v14, v15, "%s starting", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v21 = v18;
    a3 = v27;
    MEMORY[0x25308E2B0](v21, -1, -1);
    MEMORY[0x25308E2B0](v16, -1, -1);
  }

  v22 = sub_251C71214();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v13;
  v23[5] = a1;
  v23[6] = v29;
  v23[7] = a3;
  v23[8] = a4;
  v24 = v13;
  v25 = a1;

  sub_251C56428(0, 0, v11, &unk_251C84F30, v23);
}

uint64_t sub_251BD79BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[13] = a4;
  return MEMORY[0x2822009F8](sub_251BD79E4, 0, 0);
}

uint64_t sub_251BD79E4()
{
  v1 = v0[14];
  type metadata accessor for SignedClinicalDataManager();
  inited = swift_initStackObject();
  v0[18] = inited;
  *(inited + 16) = 0;
  sub_251A82418();
  v3 = swift_allocObject();
  v0[19] = v3;
  *(v3 + 16) = xmmword_251C74560;
  *(v3 + 32) = v1;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_251BD7AD4;
  v6 = v0[15];

  return sub_251BCD34C(v3, v6);
}

uint64_t sub_251BD7AD4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = sub_251BD7DE8;
  }

  else
  {
    v4 = sub_251BD7C08;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_251BD7C08()
{
  v18 = v0;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = sub_251C70764();
  __swift_project_value_buffer(v2, qword_2813E8130);
  v3 = v1;
  v4 = sub_251C70744();
  v5 = sub_251C713F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v8 = sub_251B2DA28(0xD000000000000031, 0x8000000251C8FE90);
    v10 = sub_251B10780(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_251A6C000, v4, v5, "%s finished successfully", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x25308E2B0](v7, -1, -1);
    MEMORY[0x25308E2B0](v6, -1, -1);
  }

  v11 = v0[21];
  v12 = v0[18];
  v13 = v0[16];
  v14 = v11;
  v13(v11, 0);

  swift_setDeallocating();
  v15 = v0[1];

  return v15();
}

uint64_t sub_251BD7DE8()
{
  v23 = v0;
  v1 = v0[18];
  swift_setDeallocating();

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v2 = v0[22];
  v3 = v0[13];
  v4 = sub_251C70764();
  __swift_project_value_buffer(v4, qword_2813E8130);
  v5 = v3;
  v6 = v2;
  v7 = sub_251C70744();
  v8 = sub_251C713D4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315394;
    v11 = sub_251B2DA28(0xD000000000000031, 0x8000000251C8FE90);
    v13 = sub_251B10780(v11, v12, &v22);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v14 = sub_251BBFFA4(v0[9], v0[10]);
    v16 = sub_251B10780(v14, v15, &v22);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_251A6C000, v7, v8, "%s failed with %s)", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v10, -1, -1);
    MEMORY[0x25308E2B0](v9, -1, -1);
  }

  v17 = v0[22];
  v18 = v0[16];
  swift_getErrorValue();
  v19 = sub_251BC0124(v0[6], v0[7]);
  v18(0, v19);

  v20 = v0[1];

  return v20();
}

uint64_t sub_251BD8084(void *a1, int a2, void *a3, uint64_t a4, void *aBlock, uint64_t a6, uint64_t a7, void (*a8)(id, uint64_t, uint64_t, uint64_t))
{
  v13 = _Block_copy(aBlock);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = a3;
  v16 = a1;
  a8(v15, a4, a7, v14);
}

uint64_t sub_251BD813C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v7 = sub_251C70764();
  __swift_project_value_buffer(v7, qword_2813E8130);
  v8 = v3;
  v9 = sub_251C70744();
  v10 = sub_251C713F4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136315138;
    v25 = v12;
    swift_getMetatypeMetadata();
    aBlock = sub_251C70F74();
    v27 = v13;

    MEMORY[0x25308CDA0](46, 0xE100000000000000);

    MEMORY[0x25308CDA0](0xD000000000000027, 0x8000000251C8FE60);

    v14 = sub_251B10780(aBlock, v27, &v25);

    *(v11 + 4) = v14;
    _os_log_impl(&dword_251A6C000, v9, v10, "%s starting", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x25308E2B0](v12, -1, -1);
    MEMORY[0x25308E2B0](v11, -1, -1);
  }

  type metadata accessor for SignedClinicalDataManager();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = swift_allocObject();
  v16[2] = v8;
  v16[3] = a2;
  v16[4] = a3;
  sub_251C70734();
  swift_allocObject();
  v17 = v8;

  v18 = sub_251C70724();
  v19 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v20 = [objc_allocWithZone(MEMORY[0x277D124A8]) initWithHealthStore_];
  v21 = swift_allocObject();
  *(v21 + 16) = v15;
  *(v21 + 24) = sub_251BDB248;
  *(v21 + 32) = v16;
  *(v21 + 40) = 1;
  *(v21 + 48) = v18;
  *(v21 + 56) = a1;
  v30 = sub_251BD1794;
  v31 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_251AD9914;
  v29 = &block_descriptor_36;
  v22 = _Block_copy(&aBlock);

  v23 = a1;

  [v20 fetchSignedClinicalDataGroupBackingMedicalRecord:v23 options:11 completion:v22];

  _Block_release(v22);
}

uint64_t sub_251BD84EC(char a1, uint64_t a2, void *a3, uint64_t (*a4)(void, uint64_t))
{
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v8 = sub_251C70764();
  __swift_project_value_buffer(v8, qword_2813E8130);
  v9 = a3;
  v10 = sub_251C70744();
  v11 = sub_251C713F4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    v14 = sub_251B2DA28(0xD000000000000027, 0x8000000251C8FE60);
    v16 = sub_251B10780(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_251A6C000, v10, v11, "%s finished", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x25308E2B0](v13, -1, -1);
    MEMORY[0x25308E2B0](v12, -1, -1);
  }

  return a4(a1 & 1, a2);
}

uint64_t sub_251BD872C(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_251C70BF4();
  v37 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_251C70C24();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v33 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_251C70C04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v10 = sub_251C70764();
  __swift_project_value_buffer(v10, qword_2813E8130);
  v11 = v1;
  v12 = sub_251C70744();
  v13 = sub_251C713F4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v31 = v3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136315138;
    v30 = "ataRecord(with:)";
    aBlock = ObjectType;
    swift_getMetatypeMetadata();
    v17 = sub_251C70F74();
    ObjectType = a1;
    aBlock = v17;
    v40 = v18;

    MEMORY[0x25308CDA0](46, 0xE100000000000000);

    MEMORY[0x25308CDA0](0xD00000000000002CLL, v30 | 0x8000000000000000);

    v19 = sub_251B10780(aBlock, v40, &v38);

    *(v15 + 4) = v19;
    a1 = ObjectType;
    _os_log_impl(&dword_251A6C000, v12, v13, "%s starting", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x25308E2B0](v16, -1, -1);
    v20 = v15;
    v3 = v31;
    MEMORY[0x25308E2B0](v20, -1, -1);
  }

  sub_251A8223C(0, &qword_27F47BD00, 0x277D85C78);
  (*(v7 + 104))(v9, *MEMORY[0x277D851D0], v6);
  v21 = sub_251C71494();
  (*(v7 + 8))(v9, v6);
  v22 = swift_allocObject();
  *(v22 + 16) = v11;
  *(v22 + 24) = a1;
  v43 = sub_251BDB240;
  v44 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_251BD8E14;
  v42 = &block_descriptor_24;
  v23 = _Block_copy(&aBlock);
  v24 = v11;
  v25 = a1;
  v26 = v33;
  sub_251C70C14();
  v38 = MEMORY[0x277D84F90];
  sub_251BDB0FC();
  sub_251BDB154(0, &qword_27F47BD10, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_251BDB1B8();
  v27 = v35;
  sub_251C715E4();
  MEMORY[0x25308D230](0, v26, v27, v23);
  _Block_release(v23);

  (*(v37 + 8))(v27, v3);
  (*(v34 + 8))(v26, v36);
}

void sub_251BD8C68(void *a1, void *a2)
{
  type metadata accessor for SignedClinicalDataManager();
  *(swift_allocObject() + 16) = 0;
  sub_251BCF398(a2);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v4 = sub_251C70764();
  __swift_project_value_buffer(v4, qword_2813E8130);
  v5 = a1;
  oslog = sub_251C70744();
  v6 = sub_251C713F4();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    v9 = sub_251B2DA28(0xD00000000000002CLL, 0x8000000251C8FE30);
    v11 = sub_251B10780(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_251A6C000, oslog, v6, "%s finished", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x25308E2B0](v8, -1, -1);
    MEMORY[0x25308E2B0](v7, -1, -1);
  }
}

uint64_t sub_251BD8E14(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_251BD8EC0(uint64_t a1)
{
  v44 = a1;
  ObjectType = swift_getObjectType();
  v2 = sub_251C70BF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v47 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_251C70C24();
  v46 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v45 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_251C70074();
  v7 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v41 = v8;
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_251C70C04();
  v9 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v12 = sub_251C70764();
  __swift_project_value_buffer(v12, qword_2813E8130);
  v13 = v1;
  v14 = sub_251C70744();
  v15 = sub_251C713F4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v38 = v2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v37 = v3;
    v19 = v18;
    v48 = v18;
    *v17 = 136315138;
    v36 = "stry(options:completion:)";
    aBlock = ObjectType;
    swift_getMetatypeMetadata();
    v20 = sub_251C70F74();
    ObjectType = v5;
    aBlock = v20;
    v50 = v21;

    MEMORY[0x25308CDA0](46, 0xE100000000000000);

    MEMORY[0x25308CDA0](0xD000000000000030, v36 | 0x8000000000000000);

    v22 = sub_251B10780(aBlock, v50, &v48);

    *(v17 + 4) = v22;
    v5 = ObjectType;
    _os_log_impl(&dword_251A6C000, v14, v15, "%s starting", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    v23 = v19;
    v3 = v37;
    MEMORY[0x25308E2B0](v23, -1, -1);
    v24 = v17;
    v2 = v38;
    MEMORY[0x25308E2B0](v24, -1, -1);
  }

  sub_251A8223C(0, &qword_27F47BD00, 0x277D85C78);
  v25 = v40;
  (*(v9 + 104))(v11, *MEMORY[0x277D851D0], v40);
  v26 = sub_251C71494();
  (*(v9 + 8))(v11, v25);
  v28 = v42;
  v27 = v43;
  (*(v7 + 16))(v42, v44, v43);
  v29 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v13;
  (*(v7 + 32))(v30 + v29, v28, v27);
  v53 = sub_251BDB080;
  v54 = v30;
  aBlock = MEMORY[0x277D85DD0];
  v50 = 1107296256;
  v51 = sub_251BD8E14;
  v52 = &block_descriptor_17;
  v31 = _Block_copy(&aBlock);
  v32 = v13;
  v33 = v45;
  sub_251C70C14();
  v48 = MEMORY[0x277D84F90];
  sub_251BDB0FC();
  sub_251BDB154(0, &qword_27F47BD10, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_251BDB1B8();
  v34 = v47;
  sub_251C715E4();
  MEMORY[0x25308D230](0, v33, v34, v31);
  _Block_release(v31);

  (*(v3 + 8))(v34, v2);
  (*(v46 + 8))(v33, v5);
}

void sub_251BD94D0(void *a1, uint64_t a2)
{
  type metadata accessor for SignedClinicalDataManager();
  *(swift_initStackObject() + 16) = 0;
  sub_251C70734();
  swift_allocObject();
  sub_251C70724();
  sub_251C70714();

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v3 = sub_251C70764();
  __swift_project_value_buffer(v3, qword_2813E8130);
  v4 = a1;
  v5 = sub_251C70744();
  v6 = sub_251C713F4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    v9 = sub_251B2DA28(0xD000000000000030, 0x8000000251C8FDF0);
    v11 = sub_251B10780(v9, v10, &v12);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_251A6C000, v5, v6, "%s finished", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x25308E2B0](v8, -1, -1);
    MEMORY[0x25308E2B0](v7, -1, -1);
  }
}

uint64_t sub_251BD977C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  sub_251BDB154(0, &qword_2813E1E00, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v11 = sub_251C70764();
  __swift_project_value_buffer(v11, qword_2813E8130);
  v12 = v3;
  v13 = sub_251C70744();
  v14 = sub_251C713F4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v30 = v17;
    *v16 = 136315138;
    v27 = a3;
    v28 = ObjectType;
    swift_getMetatypeMetadata();
    v28 = sub_251C70F74();
    v29 = v18;

    MEMORY[0x25308CDA0](46, 0xE100000000000000);

    a3 = v27;
    MEMORY[0x25308CDA0](0xD000000000000039, 0x8000000251C8FDB0);

    v19 = sub_251B10780(v28, v29, &v30);

    *(v16 + 4) = v19;
    _os_log_impl(&dword_251A6C000, v13, v14, "%s starting", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x25308E2B0](v17, -1, -1);
    v20 = v16;
    a1 = v26;
    MEMORY[0x25308E2B0](v20, -1, -1);
  }

  v21 = sub_251C71214();
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = a1;
  v22[5] = v12;
  v22[6] = a2;
  v22[7] = a3;
  v23 = v12;

  sub_251C56428(0, 0, v10, &unk_251C84F20, v22);
}

uint64_t sub_251BD9A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  return MEMORY[0x2822009F8](sub_251BD9AA8, 0, 0);
}

uint64_t sub_251BD9AA8()
{
  sub_251BD5744(v0 + 2);
  type metadata accessor for IssuerDirectoryDownloadTaskManager();
  v1 = swift_allocObject();
  v2 = v0[5];
  v3 = v0[6];
  v4 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v2);
  v5 = *(v2 - 8);
  v6 = swift_task_alloc();
  (*(v5 + 16))(v6, v4, v2);
  v0[15] = sub_251B14AC4(v6, 0, v1, v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_251BD9C1C;
  v8 = v0[11];

  return sub_251B110E4(v8);
}

uint64_t sub_251BD9C1C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[17] = a1;
  v4[18] = a2;
  v4[19] = v2;

  if (v2)
  {
    v5 = sub_251BD9F9C;
  }

  else
  {
    v5 = sub_251BD9D34;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_251BD9D34()
{
  v19 = v0;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = sub_251C70764();
  __swift_project_value_buffer(v2, qword_2813E8130);
  swift_bridgeObjectRetain_n();
  v3 = v1;
  v4 = sub_251C70744();
  v5 = sub_251C713F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[17];
    v7 = v0[18];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315650;
    v10 = sub_251B2DA28(0xD000000000000039, 0x8000000251C8FDB0);
    v12 = sub_251B10780(v10, v11, &v18);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v7;
    *(v8 + 22) = 2048;
    if (v6 >> 62)
    {
      v13 = sub_251C717F4();
    }

    else
    {
      v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v8 + 24) = v13;

    _os_log_impl(&dword_251A6C000, v4, v5, "%s finished. Version: %ld, new issuer entries count: %ld", v8, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x25308E2B0](v9, -1, -1);
    MEMORY[0x25308E2B0](v8, -1, -1);
  }

  else
  {
    v6 = v0[17];
    swift_bridgeObjectRelease_n();
  }

  v14 = v0[13];
  v15 = sub_251C712A4();
  v14(v6, v15, 0);

  v16 = v0[1];

  return v16();
}

uint64_t sub_251BD9F9C()
{
  v22 = v0;

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[12];
  v3 = sub_251C70764();
  __swift_project_value_buffer(v3, qword_2813E8130);
  v4 = v2;
  v5 = v1;
  v6 = sub_251C70744();
  v7 = sub_251C713D4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315394;
    v10 = sub_251B2DA28(0xD000000000000039, 0x8000000251C8FDB0);
    v12 = sub_251B10780(v10, v11, &v21);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v13 = sub_251BBFFA4(v0[8], v0[9]);
    v15 = sub_251B10780(v13, v14, &v21);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_251A6C000, v6, v7, "%s failed with %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v9, -1, -1);
    MEMORY[0x25308E2B0](v8, -1, -1);
  }

  v16 = v0[19];
  v17 = v0[13];
  v18 = v16;
  v17(0, 0, v16);

  v19 = v0[1];

  return v19();
}

uint64_t sub_251BDA218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  sub_251BDB154(0, &qword_2813E1E00, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v11 = sub_251C70764();
  __swift_project_value_buffer(v11, qword_2813E8130);
  v12 = v3;
  v13 = sub_251C70744();
  v14 = sub_251C713F4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v30 = v17;
    *v16 = 136315138;
    v27 = a3;
    v28 = ObjectType;
    swift_getMetatypeMetadata();
    v28 = sub_251C70F74();
    v29 = v18;

    MEMORY[0x25308CDA0](46, 0xE100000000000000);

    a3 = v27;
    MEMORY[0x25308CDA0](0xD000000000000035, 0x8000000251C8FD70);

    v19 = sub_251B10780(v28, v29, &v30);

    *(v16 + 4) = v19;
    _os_log_impl(&dword_251A6C000, v13, v14, "%s starting", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x25308E2B0](v17, -1, -1);
    v20 = v16;
    a1 = v26;
    MEMORY[0x25308E2B0](v20, -1, -1);
  }

  v21 = sub_251C71214();
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = a1;
  v22[5] = v12;
  v22[6] = a2;
  v22[7] = a3;
  v23 = v12;

  sub_251C56428(0, 0, v10, &unk_251C84F10, v22);
}

uint64_t sub_251BDA520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  return MEMORY[0x2822009F8](sub_251BDA544, 0, 0);
}

uint64_t sub_251BDA544()
{
  sub_251BD5744(v0 + 2);
  type metadata accessor for IssuerDirectoryDownloadTaskManager();
  v1 = swift_allocObject();
  v2 = v0[5];
  v3 = v0[6];
  v4 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v2);
  v5 = *(v2 - 8);
  v6 = swift_task_alloc();
  (*(v5 + 16))(v6, v4, v2);
  v0[15] = sub_251B14AC4(v6, 0, v1, v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_251BDA6B8;
  v8 = v0[11];

  return sub_251B11608(v8);
}

uint64_t sub_251BDA6B8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[17] = a1;
  v4[18] = a2;
  v4[19] = v2;

  if (v2)
  {
    v5 = sub_251BDAA38;
  }

  else
  {
    v5 = sub_251BDA7D0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_251BDA7D0()
{
  v19 = v0;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = sub_251C70764();
  __swift_project_value_buffer(v2, qword_2813E8130);
  swift_bridgeObjectRetain_n();
  v3 = v1;
  v4 = sub_251C70744();
  v5 = sub_251C713F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[17];
    v7 = v0[18];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315650;
    v10 = sub_251B2DA28(0xD000000000000035, 0x8000000251C8FD70);
    v12 = sub_251B10780(v10, v11, &v18);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v7;
    *(v8 + 22) = 2048;
    if (v6 >> 62)
    {
      v13 = sub_251C717F4();
    }

    else
    {
      v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v8 + 24) = v13;

    _os_log_impl(&dword_251A6C000, v4, v5, "%s finished. Version: %ld, new public key entries count: %ld", v8, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x25308E2B0](v9, -1, -1);
    MEMORY[0x25308E2B0](v8, -1, -1);
  }

  else
  {
    v6 = v0[17];
    swift_bridgeObjectRelease_n();
  }

  v14 = v0[13];
  v15 = sub_251C712A4();
  v14(v6, v15, 0);

  v16 = v0[1];

  return v16();
}

uint64_t sub_251BDAA38()
{
  v22 = v0;

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[12];
  v3 = sub_251C70764();
  __swift_project_value_buffer(v3, qword_2813E8130);
  v4 = v2;
  v5 = v1;
  v6 = sub_251C70744();
  v7 = sub_251C713D4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315394;
    v10 = sub_251B2DA28(0xD000000000000035, 0x8000000251C8FD70);
    v12 = sub_251B10780(v10, v11, &v21);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v13 = sub_251BBFFA4(v0[8], v0[9]);
    v15 = sub_251B10780(v13, v14, &v21);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_251A6C000, v6, v7, "%s failed with %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v9, -1, -1);
    MEMORY[0x25308E2B0](v8, -1, -1);
  }

  v16 = v0[19];
  v17 = v0[13];
  v18 = v16;
  v17(0, 0, v16);

  v19 = v0[1];

  return v19();
}

uint64_t sub_251BDACB4(void *a1, int a2, uint64_t a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a1;
  a7(a3, a6, v12);
}

void sub_251BDAD50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v9 = a1;
  if (a1)
  {
    sub_251A8223C(0, a5, a6);
    v9 = sub_251C71144();
  }

  if (a3)
  {
    v10 = sub_251C6FD74();
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  (*(a4 + 16))(a4, v9, a2);
}

uint64_t sub_251BDAE64(uint64_t a1)
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
  v10[1] = sub_251B14FE8;

  return sub_251BDA520(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_4Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_251BDAFAC(uint64_t a1)
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
  v10[1] = sub_251B14FE8;

  return sub_251BD9A84(a1, v4, v5, v6, v7, v9, v8);
}

void sub_251BDB080()
{
  v1 = *(sub_251C70074() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_251BD94D0(v2, v3);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_251BDB0FC()
{
  result = qword_27F47BD08;
  if (!qword_27F47BD08)
  {
    sub_251C70BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BD08);
  }

  return result;
}

void sub_251BDB154(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_251BDB1B8()
{
  result = qword_27F47BD18;
  if (!qword_27F47BD18)
  {
    sub_251BDB154(255, &qword_27F47BD10, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BD18);
  }

  return result;
}

uint64_t sub_251BDB270(uint64_t a1)
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
  v11[1] = sub_251B14FE8;

  return sub_251BD79BC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_251BDB34C(uint64_t a1)
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
  v11[1] = sub_251AF4F78;

  return sub_251BD6FDC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_251BDB428(uint64_t a1)
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
  v11[1] = sub_251B14FE8;

  return sub_251BD65C8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_41Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_251BDB554(uint64_t a1)
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
  v11[1] = sub_251B14FE8;

  return sub_251BD5C40(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_251BDB684(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BE51C4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251BDB710(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BE7074();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251BDB79C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BE80B8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251BDB7EC@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = xmmword_251C745D0;
  *(a1 + 88) = xmmword_251C745D0;
  *(a1 + 104) = xmmword_251C745D0;
  *(a1 + 120) = xmmword_251C745D0;
  *(a1 + 136) = xmmword_251C745D0;
  *(a1 + 152) = xmmword_251C745D0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 1;
  v2 = type metadata accessor for PBState(0);
  sub_251C703A4();
  v3 = *(v2 + 68);
  v4 = sub_251C70384();
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 72);
  v6 = type metadata accessor for PBOtherData(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t sub_251BDB920@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_251BDB980@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t sub_251BDB9BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BE7190();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251BDBA08()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2758);
  __swift_project_value_buffer(v0, qword_27F4A2758);
  sub_251BE161C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C763E0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 0;
  *v7 = "UNDEFINED";
  *(v7 + 8) = 9;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "HEALTH_APP";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "DASHBOARD";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 3;
  *v15 = "UNIVERSAL";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251BDBC8C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2770);
  __swift_project_value_buffer(v0, qword_27F4A2770);
  sub_251BE161C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_251C84F70;
  v5 = v62 + v4;
  v6 = v62 + v4 + *(v2 + 56);
  *(v62 + v4) = 0;
  *v6 = "UNDEFINED_EVENT";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v62 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "INITIATE";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v62 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "ABORT";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v62 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "GEO_ACCEPT";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v62 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "GEO_DENY";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  v17 = (v62 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "PA_DELIVERY";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v9();
  v19 = (v62 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "PA_GENERATE_ERROR";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v9();
  v21 = (v62 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "PB_VERIFY_SUCCESS";
  *(v22 + 1) = 17;
  v22[16] = 2;
  v9();
  v23 = v62 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 8;
  *v23 = "PB_VERIFY_ERROR";
  *(v23 + 8) = 15;
  *(v23 + 16) = 2;
  v9();
  v24 = (v62 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 9;
  *v25 = "CONFIRMATIONA_DELIVERY";
  *(v25 + 1) = 22;
  v25[16] = 2;
  v9();
  v26 = (v62 + v4 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 10;
  *v27 = "CONFIRMATIONA_GENERATE_ERROR";
  *(v27 + 1) = 28;
  v27[16] = 2;
  v9();
  v28 = (v62 + v4 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 11;
  *v29 = "CONFIRMATIONB_VERIFY_SUCCESS";
  *(v29 + 1) = 28;
  v29[16] = 2;
  v9();
  v30 = (v62 + v4 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 12;
  *v31 = "CONFIRMATIONB_VERIFY_ERROR";
  *(v31 + 1) = 26;
  v31[16] = 2;
  v9();
  v32 = (v62 + v4 + 13 * v3);
  v33 = v32 + *(v2 + 56);
  *v32 = 13;
  *v33 = "LOOKUPINFO_DELIVERY";
  *(v33 + 1) = 19;
  v33[16] = 2;
  v9();
  v34 = (v62 + v4 + 14 * v3);
  v35 = v34 + *(v2 + 56);
  *v34 = 14;
  *v35 = "LOOKUPINFO_RECEIVED";
  *(v35 + 1) = 19;
  v35[16] = 2;
  v9();
  v36 = (v62 + v4 + 15 * v3);
  v37 = v36 + *(v2 + 56);
  *v36 = 15;
  *v37 = "ACCESS_CODE_DELIVERY";
  *(v37 + 1) = 20;
  v37[16] = 2;
  v9();
  v38 = v62 + v4 + 16 * v3 + *(v2 + 56);
  *(v5 + 16 * v3) = 16;
  *v38 = "GEO_DELIVERY";
  *(v38 + 8) = 12;
  *(v38 + 16) = 2;
  v9();
  v39 = (v62 + v4 + 17 * v3);
  v40 = v39 + *(v2 + 56);
  *v39 = 17;
  *v40 = "PB_DELIVERY";
  *(v40 + 1) = 11;
  v40[16] = 2;
  v9();
  v41 = (v62 + v4 + 18 * v3);
  v42 = v41 + *(v2 + 56);
  *v41 = 18;
  *v42 = "PB_GENERATE_ERROR";
  *(v42 + 1) = 17;
  v42[16] = 2;
  v9();
  v43 = (v62 + v4 + 19 * v3);
  v44 = v43 + *(v2 + 56);
  *v43 = 19;
  *v44 = "PA_VERIFY_SUCCESS";
  *(v44 + 1) = 17;
  v44[16] = 2;
  v9();
  v45 = (v62 + v4 + 20 * v3);
  v46 = v45 + *(v2 + 56);
  *v45 = 20;
  *v46 = "PA_VERIFY_ERROR";
  *(v46 + 1) = 15;
  v46[16] = 2;
  v9();
  v47 = (v62 + v4 + 21 * v3);
  v48 = v47 + *(v2 + 56);
  *v47 = 21;
  *v48 = "CONFIRMATIONB_DELIVERY";
  *(v48 + 1) = 22;
  v48[16] = 2;
  v9();
  v49 = (v62 + v4 + 22 * v3);
  v50 = v49 + *(v2 + 56);
  *v49 = 22;
  *v50 = "CONFIRMATIONB_GENERATE_ERROR";
  *(v50 + 1) = 28;
  v50[16] = 2;
  v9();
  v51 = (v62 + v4 + 23 * v3);
  v52 = v51 + *(v2 + 56);
  *v51 = 23;
  *v52 = "CONFIRMATIONA_VERIFY_SUCCESS";
  *(v52 + 1) = 28;
  v52[16] = 2;
  v9();
  v53 = (v62 + v4 + 24 * v3);
  v54 = v53 + *(v2 + 56);
  *v53 = 24;
  *v54 = "CONFIRMATIONA_VERIFY_ERROR";
  *(v54 + 1) = 26;
  v54[16] = 2;
  v9();
  v55 = (v62 + v4 + 25 * v3);
  v56 = v55 + *(v2 + 56);
  *v55 = 25;
  *v56 = "LOOKUPINFO_DEREF_SUCCESS";
  *(v56 + 1) = 24;
  v56[16] = 2;
  v9();
  v57 = (v62 + v4 + 26 * v3);
  v58 = v57 + *(v2 + 56);
  *v57 = 26;
  *v58 = "LOOKUPINFO_DEREF_FAIL";
  *(v58 + 1) = 21;
  v58[16] = 2;
  v9();
  v59 = (v62 + v4 + 27 * v3);
  v60 = v59 + *(v2 + 56);
  *v59 = 27;
  *v60 = "SHARE_OTHER_DATA";
  *(v60 + 1) = 16;
  v60[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251BDC4AC()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2788);
  __swift_project_value_buffer(v0, qword_27F4A2788);
  sub_251BE161C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_251C7C210;
  v5 = v42 + v4;
  v6 = v42 + v4 + *(v2 + 56);
  *(v42 + v4) = 0;
  *v6 = "UNDEFINED_STEP";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v42 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "ABORTED";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v42 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "DISPLAY_COMPOSITE_CODE";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v42 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "PENDING_SUBMIT_GEO";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v42 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "PENDING_ACKNOWLEDGE_GEO";
  *(v16 + 1) = 23;
  v16[16] = 2;
  v9();
  v17 = (v42 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "GENERATE_PA";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v9();
  v19 = (v42 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "GENERATE_PB";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v9();
  v21 = (v42 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "PENDING_VERIFY_PB";
  *(v22 + 1) = 17;
  v22[16] = 2;
  v9();
  v23 = v42 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 8;
  *v23 = "PENDING_VERIFY_PA";
  *(v23 + 8) = 17;
  *(v23 + 16) = 2;
  v9();
  v24 = (v42 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 9;
  *v25 = "GENERATE_CONFIRMATIONA";
  *(v25 + 1) = 22;
  v25[16] = 2;
  v9();
  v26 = (v42 + v4 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 10;
  *v27 = "GENERATE_CONFIRMATIONB";
  *(v27 + 1) = 22;
  v27[16] = 2;
  v9();
  v28 = (v42 + v4 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 11;
  *v29 = "PENDING_VERIFY_CONFIRMATIONB";
  *(v29 + 1) = 28;
  v29[16] = 2;
  v9();
  v30 = (v42 + v4 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 12;
  *v31 = "PENDING_VERIFY_CONFIRMATIONA";
  *(v31 + 1) = 28;
  v31[16] = 2;
  v9();
  v32 = (v42 + v4 + 13 * v3);
  v33 = v32 + *(v2 + 56);
  *v32 = 13;
  *v33 = "PENDING_LOOKUPINFO_DELIVERY";
  *(v33 + 1) = 27;
  v33[16] = 2;
  v9();
  v34 = (v42 + v4 + 14 * v3);
  v35 = v34 + *(v2 + 56);
  *v34 = 14;
  *v35 = "VERIFY_LOOKUPINFO_DELIVERED";
  *(v35 + 1) = 27;
  v35[16] = 2;
  v9();
  v36 = (v42 + v4 + 15 * v3);
  v37 = v36 + *(v2 + 56);
  *v36 = 15;
  *v37 = "PENDING_DATA_TRANSFER_SUCCESS";
  *(v37 + 1) = 29;
  v37[16] = 2;
  v9();
  v38 = v42 + v4 + 16 * v3 + *(v2 + 56);
  *(v5 + 16 * v3) = 16;
  *v38 = "DATA_TRANSFER_SUCCESS";
  *(v38 + 8) = 21;
  *(v38 + 16) = 2;
  v9();
  v39 = (v42 + v4 + 17 * v3);
  v40 = v39 + *(v2 + 56);
  *v39 = 17;
  *v40 = "OTHER_DATA";
  *(v40 + 1) = 10;
  v40[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251BDCA80()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A27A0);
  __swift_project_value_buffer(v0, qword_27F4A27A0);
  sub_251BE161C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "actor";
  *(v7 + 8) = 5;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "mailbox_id";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251BDCC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C70444();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_251BE51C4();
        sub_251C70494();
      }

      else if (result == 2)
      {
        sub_251C70534();
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251BDCD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_251BE51C4(), result = sub_251C70604(), !v4))
  {
    v6 = v3[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_251C70674(), !v4))
    {
      type metadata accessor for PBPollParameters(0);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251BDCE08@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  return sub_251C703A4();
}

uint64_t sub_251BDCE88(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BE4824(&qword_27F47BF10, type metadata accessor for PBPollParameters, &unk_251C85E3C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251BDCF28(uint64_t a1)
{
  v2 = sub_251BE4824(&qword_27F47BEF8, type metadata accessor for PBPollParameters, &unk_251C85E74);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251BDCF94(uint64_t a1, uint64_t a2)
{
  sub_251BE4824(&qword_27F47BEF8, type metadata accessor for PBPollParameters, &unk_251C85E74);

  return sub_251C705C4();
}

uint64_t sub_251BDD02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBPollStateRequest(0);
  type metadata accessor for PBPollParameters(0);
  sub_251BE4824(&qword_27F47BEF8, type metadata accessor for PBPollParameters, &unk_251C85E74);
  return sub_251C70564();
}

uint64_t sub_251BDD0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251BE161C(0, &qword_27F47BF28, type metadata accessor for PBPollParameters, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBPollParameters(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBPollStateRequest(0);
  sub_251BE7FC8(a1 + *(v12 + 24), v7, &qword_27F47BF28, type metadata accessor for PBPollParameters);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BE8048(v7, &qword_27F47BF28, type metadata accessor for PBPollParameters);
  }

  sub_251BE6F30(v7, v11, type metadata accessor for PBPollParameters);
  sub_251BE4824(&qword_27F47BEF8, type metadata accessor for PBPollParameters, &unk_251C85E74);
  sub_251C706A4();
  return sub_251BE6F98(v11, type metadata accessor for PBPollParameters);
}

uint64_t sub_251BDD3E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BE4824(&qword_27F47BF20, type metadata accessor for PBPollStateRequest, &unk_251C85CD4);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251BDD480(uint64_t a1)
{
  v2 = sub_251BE4824(&qword_27F47BED8, type metadata accessor for PBPollStateRequest, &unk_251C85D0C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251BDD4EC(uint64_t a1, uint64_t a2)
{
  sub_251BE4824(&qword_27F47BED8, type metadata accessor for PBPollStateRequest, &unk_251C85D0C);

  return sub_251C705C4();
}

uint64_t sub_251BDD56C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A27D0);
  __swift_project_value_buffer(v0, qword_27F4A27D0);
  sub_251BE161C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "version";
  *(v7 + 8) = 7;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "value";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251BDD74C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_251C70444();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_251C704F4();
    }

    else if (result == 2)
    {
      sub_251C70534();
    }
  }

  return result;
}

uint64_t sub_251BDD7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_251C70644(), !v4))
  {
    v6 = *(v3 + 16);
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *(v3 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_251C70674(), !v4))
    {
      type metadata accessor for PBOtherData(0);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251BDD88C@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  return sub_251C703A4();
}

uint64_t sub_251BDD904(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BE4824(&qword_27F47BF38, type metadata accessor for PBOtherData, &unk_251C85B6C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251BDD9A4(uint64_t a1)
{
  v2 = sub_251BE4824(&qword_27F47BEB8, type metadata accessor for PBOtherData, &unk_251C85BA4);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251BDDA10(uint64_t a1, uint64_t a2)
{
  sub_251BE4824(&qword_27F47BEB8, type metadata accessor for PBOtherData, &unk_251C85BA4);

  return sub_251C705C4();
}

uint64_t sub_251BDDA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v3 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  sub_251C703B4();
  sub_251BE4824(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251BDDB60()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A27E8);
  __swift_project_value_buffer(v0, qword_27F4A27E8);
  sub_251BE161C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_251C84F80;
  v5 = v31 + v4;
  v6 = v31 + v4 + *(v2 + 56);
  *(v31 + v4) = 1;
  *v6 = "actor";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v31 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "mailbox_id";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v31 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "access_code";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v31 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "confirmation_b";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v31 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "pb";
  *(v16 + 1) = 2;
  v16[16] = 2;
  v9();
  v17 = (v31 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "geo_encrypted";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v9();
  v19 = (v31 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "confirmation_a";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v9();
  v21 = (v31 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "lookupinfo_encrypted";
  *(v22 + 1) = 20;
  v22[16] = 2;
  v9();
  v23 = v31 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v23 = "pa";
  *(v23 + 8) = 2;
  *(v23 + 16) = 2;
  v9();
  v24 = (v31 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 10;
  *v25 = "root_dlid";
  *(v25 + 1) = 9;
  v25[16] = 2;
  v9();
  v26 = (v31 + v4 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 12;
  *v27 = "other_data";
  *(v27 + 1) = 10;
  v27[16] = 2;
  v9();
  v28 = (v31 + v4 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 11;
  *v29 = "event_type";
  *(v29 + 1) = 10;
  v29[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251BDDFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 6)
      {
        if (result <= 9)
        {
          if (result == 7)
          {
            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 4;
          }

          else if (result == 8)
          {
            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 5;
          }

          else
          {
            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 6;
          }

          goto LABEL_5;
        }

        switch(result)
        {
          case 10:
            v16 = a1;
            v17 = v5;
            v18 = a2;
            v19 = a3;
            v20 = 7;
LABEL_28:
            sub_251BDE458(v16, v17, v18, v19, v20);
            break;
          case 11:
            sub_251BDE6A4(a1, v5, a2, a3);
            break;
          case 12:
            sub_251BDE718(v5, a1, a2, a3);
            break;
        }
      }

      else
      {
        if (result > 3)
        {
          if (result == 4)
          {
            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 1;
          }

          else if (result == 5)
          {
            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 2;
          }

          else
          {
            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 3;
          }

LABEL_5:
          sub_251BDE1E4(v11, v12, v13, v14, v15);
          goto LABEL_6;
        }

        if (result == 1)
        {
          sub_251BE51C4();
          sub_251C70494();
          goto LABEL_6;
        }

        if (result != 2)
        {
          if (result != 3)
          {
            goto LABEL_6;
          }

          v16 = a1;
          v17 = v5;
          v18 = a2;
          v19 = a3;
          v20 = 0;
          goto LABEL_28;
        }

        sub_251C70534();
      }

LABEL_6:
      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251BDE1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  sub_251BE161C(0, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v21 = xmmword_251C74660;
  sub_251C704C4();
  v11 = v21;
  if (v5 || *(&v21 + 1) >> 60 == 15)
  {
    return sub_251A8596C(v21, *(&v21 + 1));
  }

  v22 = a5;
  v20 = (a2 + *(type metadata accessor for PBUpdateParameters(0) + 24));
  sub_251BE7FC8(v20, v10, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  v12 = type metadata accessor for PBUpdateParameters.OneOf_Data(0);
  v18 = *(v12 - 8);
  v19 = v12;
  v13 = (*(v18 + 48))(v10, 1);
  sub_251A858C4(v11, *(&v11 + 1));
  sub_251BE8048(v10, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  if (v13 != 1)
  {
    sub_251C70454();
  }

  sub_251A8596C(v11, *(&v11 + 1));
  v15 = v20;
  sub_251BE8048(v20, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  *v15 = v11;
  v16 = v19;
  swift_storeEnumTagMultiPayload();
  return (*(v18 + 56))(v15, 0, 1, v16);
}

uint64_t sub_251BDE458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  sub_251BE161C(0, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  v20 = 0;
  v21 = 0;
  result = sub_251C70524();
  if (v5)
  {
  }

  if (v21)
  {
    v22 = v21;
    v19 = a5;
    v18 = v20;
    v12 = (a2 + *(type metadata accessor for PBUpdateParameters(0) + 24));
    sub_251BE7FC8(v12, v10, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
    v13 = type metadata accessor for PBUpdateParameters.OneOf_Data(0);
    v17 = *(v13 - 8);
    v14 = (*(v17 + 48))(v10, 1, v13);
    sub_251BE8048(v10, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
    if (v14 != 1)
    {
      sub_251C70454();
    }

    sub_251BE8048(v12, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
    v15 = v22;
    *v12 = v18;
    v12[1] = v15;
    swift_storeEnumTagMultiPayload();
    return (*(v17 + 56))(v12, 0, 1, v13);
  }

  return result;
}

uint64_t sub_251BDE6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBUpdateParameters(0);
  sub_251BE7074();
  return sub_251C70494();
}

uint64_t sub_251BDE718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v48 = a1;
  v4 = type metadata accessor for PBOtherData(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v41 = type metadata accessor for PBUpdateParameters.OneOf_Data;
  v9 = MEMORY[0x277D83D88];
  sub_251BE161C(0, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for PBUpdateParameters.OneOf_Data(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_251BE161C(0, &qword_27F47BD70, type metadata accessor for PBOtherData, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v40 = v5;
  v25 = *(v5 + 56);
  v44 = v4;
  v25(&v36 - v23, 1, 1, v4);
  v37 = *(type metadata accessor for PBUpdateParameters(0) + 24);
  sub_251BE7FC8(v48 + v37, v12, &qword_27F47BF48, v41);
  v41 = v14;
  v26 = (*(v14 + 48))(v12, 1, v13);
  if (v26 == 1)
  {
    sub_251BE8048(v12, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
    v27 = v44;
    v28 = v13;
  }

  else
  {
    sub_251BE6F30(v12, v19, type metadata accessor for PBUpdateParameters.OneOf_Data);
    sub_251BE6F30(v19, v17, type metadata accessor for PBUpdateParameters.OneOf_Data);
    v28 = v13;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_251BE8048(v24, &qword_27F47BD70, type metadata accessor for PBOtherData);
      v29 = v39;
      sub_251BE6F30(v17, v39, type metadata accessor for PBOtherData);
      sub_251BE6F30(v29, v24, type metadata accessor for PBOtherData);
      v27 = v44;
      v25(v24, 0, 1, v44);
    }

    else
    {
      sub_251BE6F98(v17, type metadata accessor for PBUpdateParameters.OneOf_Data);
      v27 = v44;
    }
  }

  v30 = v42;
  sub_251BE4824(&qword_27F47BEB8, type metadata accessor for PBOtherData, &unk_251C85BA4);
  v31 = v43;
  sub_251C70564();
  if (v31)
  {
    return sub_251BE8048(v24, &qword_27F47BD70, type metadata accessor for PBOtherData);
  }

  sub_251BE7FC8(v24, v30, &qword_27F47BD70, type metadata accessor for PBOtherData);
  if ((*(v40 + 48))(v30, 1, v27) == 1)
  {
    sub_251BE8048(v24, &qword_27F47BD70, type metadata accessor for PBOtherData);
    return sub_251BE8048(v30, &qword_27F47BD70, type metadata accessor for PBOtherData);
  }

  else
  {
    v33 = v38;
    sub_251BE6F30(v30, v38, type metadata accessor for PBOtherData);
    if (v26 != 1)
    {
      sub_251C70454();
    }

    sub_251BE8048(v24, &qword_27F47BD70, type metadata accessor for PBOtherData);
    v34 = v48;
    v35 = v37;
    sub_251BE8048(v48 + v37, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
    sub_251BE6F30(v33, v34 + v35, type metadata accessor for PBOtherData);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 7))(v34 + v35, 0, 1, v28);
  }
}

uint64_t sub_251BDED74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  sub_251BE161C(0, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data, MEMORY[0x277D83D88]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  if (*v3)
  {
    v15 = *(v3 + 8);
    v27 = *v3;
    v28 = v15;
    sub_251BE51C4();
    result = sub_251C70604();
    if (v4)
    {
      return result;
    }
  }

  v17 = *(v3 + 24);
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    result = sub_251C70674();
    if (v4)
    {
      return result;
    }
  }

  v19 = v4;
  v20 = type metadata accessor for PBUpdateParameters(0);
  sub_251BE7FC8(v3 + *(v20 + 24), v14, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  v21 = type metadata accessor for PBUpdateParameters.OneOf_Data(0);
  if ((*(*(v21 - 8) + 48))(v14, 1, v21) == 1)
  {
    goto LABEL_26;
  }

  sub_251BE7FC8(v14, v12, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_251BE6F98(v12, type metadata accessor for PBUpdateParameters.OneOf_Data);
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_251BDF4D0(v5);
      }

      else
      {
        sub_251BDF68C(v5);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      sub_251BDF314(v5);
    }

    else
    {
      sub_251BDF164(v5, a1, a2, a3);
    }

LABEL_24:
    v19 = v4;
    if (v4)
    {
      return sub_251BE8048(v14, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
    }

    goto LABEL_26;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_251BDF848(v5);
    }

    else
    {
      sub_251BDFA04(v5);
    }

    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 6)
  {
    sub_251BDFBC0(v5);
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 7)
  {
    sub_251BDFD7C(v5, a1, a2, a3);
    goto LABEL_24;
  }

LABEL_26:
  sub_251BE8048(v14, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  v23 = v5 + *(v20 + 28);
  v24 = *v23;
  v25 = *(v23 + 8);
  if (sub_251BB3774(*v23, v25, 0))
  {
    v26 = v19;
  }

  else
  {
    v27 = v24;
    v28 = v25;
    sub_251BE7074();
    v26 = v19;
    result = sub_251C70604();
    if (v19)
    {
      return result;
    }
  }

  result = sub_251BDFF30(v5, a1, a2, a3);
  if (!v26)
  {
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251BDF164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_251BE161C(0, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for PBUpdateParameters(0);
  sub_251BE7FC8(a1 + *(v8 + 24), v7, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  v9 = type metadata accessor for PBUpdateParameters.OneOf_Data(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_251BE8048(v7, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_251C70674();
  }

  result = sub_251BE6F98(v7, type metadata accessor for PBUpdateParameters.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_251BDF314(uint64_t a1)
{
  sub_251BE161C(0, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v10 - v3);
  v5 = type metadata accessor for PBUpdateParameters(0);
  sub_251BE7FC8(a1 + *(v5 + 24), v4, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  v6 = type metadata accessor for PBUpdateParameters.OneOf_Data(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_251BE8048(v4, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v4;
    v7 = v4[1];
    sub_251C70624();
    return sub_251A83028(v8, v7);
  }

  result = sub_251BE6F98(v4, type metadata accessor for PBUpdateParameters.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_251BDF4D0(uint64_t a1)
{
  sub_251BE161C(0, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v10 - v3);
  v5 = type metadata accessor for PBUpdateParameters(0);
  sub_251BE7FC8(a1 + *(v5 + 24), v4, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  v6 = type metadata accessor for PBUpdateParameters.OneOf_Data(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_251BE8048(v4, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    v8 = *v4;
    v7 = v4[1];
    sub_251C70624();
    return sub_251A83028(v8, v7);
  }

  result = sub_251BE6F98(v4, type metadata accessor for PBUpdateParameters.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_251BDF68C(uint64_t a1)
{
  sub_251BE161C(0, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v10 - v3);
  v5 = type metadata accessor for PBUpdateParameters(0);
  sub_251BE7FC8(a1 + *(v5 + 24), v4, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  v6 = type metadata accessor for PBUpdateParameters.OneOf_Data(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_251BE8048(v4, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    v8 = *v4;
    v7 = v4[1];
    sub_251C70624();
    return sub_251A83028(v8, v7);
  }

  result = sub_251BE6F98(v4, type metadata accessor for PBUpdateParameters.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_251BDF848(uint64_t a1)
{
  sub_251BE161C(0, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v10 - v3);
  v5 = type metadata accessor for PBUpdateParameters(0);
  sub_251BE7FC8(a1 + *(v5 + 24), v4, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  v6 = type metadata accessor for PBUpdateParameters.OneOf_Data(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_251BE8048(v4, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    v8 = *v4;
    v7 = v4[1];
    sub_251C70624();
    return sub_251A83028(v8, v7);
  }

  result = sub_251BE6F98(v4, type metadata accessor for PBUpdateParameters.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_251BDFA04(uint64_t a1)
{
  sub_251BE161C(0, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v10 - v3);
  v5 = type metadata accessor for PBUpdateParameters(0);
  sub_251BE7FC8(a1 + *(v5 + 24), v4, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  v6 = type metadata accessor for PBUpdateParameters.OneOf_Data(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_251BE8048(v4, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    v8 = *v4;
    v7 = v4[1];
    sub_251C70624();
    return sub_251A83028(v8, v7);
  }

  result = sub_251BE6F98(v4, type metadata accessor for PBUpdateParameters.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_251BDFBC0(uint64_t a1)
{
  sub_251BE161C(0, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v10 - v3);
  v5 = type metadata accessor for PBUpdateParameters(0);
  sub_251BE7FC8(a1 + *(v5 + 24), v4, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  v6 = type metadata accessor for PBUpdateParameters.OneOf_Data(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_251BE8048(v4, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    v8 = *v4;
    v7 = v4[1];
    sub_251C70624();
    return sub_251A83028(v8, v7);
  }

  result = sub_251BE6F98(v4, type metadata accessor for PBUpdateParameters.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_251BDFD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_251BE161C(0, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for PBUpdateParameters(0);
  sub_251BE7FC8(a1 + *(v8 + 24), v7, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  v9 = type metadata accessor for PBUpdateParameters.OneOf_Data(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_251BE8048(v7, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_251C70674();
  }

  result = sub_251BE6F98(v7, type metadata accessor for PBUpdateParameters.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_251BDFF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  sub_251BE161C(0, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v16 - v6;
  v8 = type metadata accessor for PBOtherData(0);
  MEMORY[0x28223BE20](v8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBUpdateParameters(0);
  sub_251BE7FC8(a1 + *(v11 + 24), v7, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  v12 = type metadata accessor for PBUpdateParameters.OneOf_Data(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    return sub_251BE8048(v7, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  }

  if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_251BE6F30(v7, v10, type metadata accessor for PBOtherData);
    sub_251BE4824(&qword_27F47BEB8, type metadata accessor for PBOtherData, &unk_251C85BA4);
    sub_251C706A4();
    v14 = type metadata accessor for PBOtherData;
    v15 = v10;
  }

  else
  {
    v14 = type metadata accessor for PBUpdateParameters.OneOf_Data;
    v15 = v7;
  }

  return sub_251BE6F98(v15, v14);
}

uint64_t sub_251BE01A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  v4 = *(a1 + 24);
  v5 = type metadata accessor for PBUpdateParameters.OneOf_Data(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 28);
  *v6 = 0;
  *(v6 + 8) = 1;
  return sub_251C703A4();
}

uint64_t sub_251BE0288(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BE4824(&qword_27F47BF40, type metadata accessor for PBUpdateParameters, &unk_251C85A04);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251BE0328(uint64_t a1)
{
  v2 = sub_251BE4824(&qword_27F47BE98, type metadata accessor for PBUpdateParameters, &unk_251C85A3C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251BE0394(uint64_t a1, uint64_t a2)
{
  sub_251BE4824(&qword_27F47BE98, type metadata accessor for PBUpdateParameters, &unk_251C85A3C);

  return sub_251C705C4();
}

uint64_t sub_251BE042C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_251C706D4();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  sub_251BE161C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 72);
  v9 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_251C75800;
  v11 = (v10 + v9);
  v12 = v10 + v9 + *(v7 + 56);
  *v11 = 1;
  *v12 = "blob_auth";
  *(v12 + 8) = 9;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x277D21888];
  v14 = sub_251C706B4();
  v15 = *(*(v14 - 8) + 104);
  (v15)(v12, v13, v14);
  v16 = v11 + v8 + *(v7 + 56);
  *(v11 + v8) = 2;
  *v16 = a3;
  *(v16 + 1) = a4;
  v16[16] = 2;
  v15();
  return sub_251C706C4();
}

uint64_t sub_251BE0604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = sub_251C70444();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_251BE06B0(a1, v9, a2, a3, a4);
    }

    else if (result == 2)
    {
      a5(a1, v9, a2, a3);
    }
  }

  return result;
}

uint64_t sub_251BE06B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for PBBlobAuth(0);
  sub_251BE4824(&qword_27F47A8F8, type metadata accessor for PBBlobAuth, &unk_251C7B710);
  return sub_251C70564();
}

uint64_t sub_251BE0768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBUpdateStateRequest(0);
  type metadata accessor for PBUpdateParameters(0);
  sub_251BE4824(&qword_27F47BE98, type metadata accessor for PBUpdateParameters, &unk_251C85A3C);
  return sub_251C70564();
}

uint64_t sub_251BE081C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = sub_251BE0898(v5, a1, a2, a3, a4);
  if (!v6)
  {
    a5(v5, a1, a2, a3);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251BE0898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v16[3] = a4;
  v16[0] = a2;
  v16[1] = a3;
  sub_251BE161C(0, qword_2813E7028, type metadata accessor for PBBlobAuth, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v16 - v8;
  v10 = type metadata accessor for PBBlobAuth(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a5(0);
  sub_251BE7FC8(a1 + *(v14 + 20), v9, qword_2813E7028, type metadata accessor for PBBlobAuth);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_251BE8048(v9, qword_2813E7028, type metadata accessor for PBBlobAuth);
  }

  sub_251BE6F30(v9, v13, type metadata accessor for PBBlobAuth);
  sub_251BE4824(&qword_27F47A8F8, type metadata accessor for PBBlobAuth, &unk_251C7B710);
  sub_251C706A4();
  return sub_251BE6F98(v13, type metadata accessor for PBBlobAuth);
}

uint64_t sub_251BE0AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251BE161C(0, &qword_27F47BF70, type metadata accessor for PBUpdateParameters, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBUpdateParameters(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBUpdateStateRequest(0);
  sub_251BE7FC8(a1 + *(v12 + 24), v7, &qword_27F47BF70, type metadata accessor for PBUpdateParameters);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BE8048(v7, &qword_27F47BF70, type metadata accessor for PBUpdateParameters);
  }

  sub_251BE6F30(v7, v11, type metadata accessor for PBUpdateParameters);
  sub_251BE4824(&qword_27F47BE98, type metadata accessor for PBUpdateParameters, &unk_251C85A3C);
  sub_251C706A4();
  return sub_251BE6F98(v11, type metadata accessor for PBUpdateParameters);
}

uint64_t sub_251BE0D4C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  sub_251C703A4();
  v6 = *(a1 + 20);
  v7 = type metadata accessor for PBBlobAuth(0);
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  v8 = *(a1 + 24);
  v9 = a2(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a3 + v8, 1, 1, v9);
}

uint64_t sub_251BE0EB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BE4824(&qword_27F47BF68, type metadata accessor for PBUpdateStateRequest, &unk_251C8589C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251BE0F54(uint64_t a1)
{
  v2 = sub_251BE4824(&qword_27F47BE78, type metadata accessor for PBUpdateStateRequest, &unk_251C858D4);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251BE0FC0(uint64_t a1, uint64_t a2)
{
  sub_251BE4824(&qword_27F47BE78, type metadata accessor for PBUpdateStateRequest, &unk_251C858D4);

  return sub_251C705C4();
}

uint64_t sub_251BE1040()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2818);
  __swift_project_value_buffer(v0, qword_27F4A2818);
  sub_251BE161C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C763E0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "mailbox_id";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "state";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "msg";
  *(v13 + 1) = 3;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "result_code";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251BE12B4()
{
  type metadata accessor for PBStateResponse._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__state;
  v2 = type metadata accessor for PBState(0);
  result = (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v4 = (v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__msg);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__resultCode;
  *v5 = 0;
  *(v5 + 8) = 1;
  qword_27F47BD28 = v0;
  return result;
}

uint64_t sub_251BE1370()
{

  sub_251BE8048(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__state, &qword_27F47BD58, type metadata accessor for PBState);

  return swift_deallocClassInstance();
}

void sub_251BE1434(uint64_t a1)
{
  sub_251BE161C(319, &qword_27F47BD58, type metadata accessor for PBState, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_251BE1574(uint64_t a1)
{
  result = sub_251C703B4();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PBStateResponse._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_251BE161C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_251BE16B4(uint64_t a1)
{
  sub_251C703B4();
  if (v1 <= 0x3F)
  {
    sub_251BE161C(319, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_251BE161C(319, &qword_27F47BD70, type metadata accessor for PBOtherData, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_251BE1854()
{
  result = qword_27F47BD98;
  if (!qword_27F47BD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BD98);
  }

  return result;
}

unint64_t sub_251BE18DC()
{
  result = qword_27F47BDB0;
  if (!qword_27F47BDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BDB0);
  }

  return result;
}

unint64_t sub_251BE1934()
{
  result = qword_27F47BDB8;
  if (!qword_27F47BDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BDB8);
  }

  return result;
}

unint64_t sub_251BE198C()
{
  result = qword_27F47BDC0;
  if (!qword_27F47BDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BDC0);
  }

  return result;
}

unint64_t sub_251BE1A14()
{
  result = qword_27F47BDD8;
  if (!qword_27F47BDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BDD8);
  }

  return result;
}

unint64_t sub_251BE1A6C()
{
  result = qword_27F47BDE0;
  if (!qword_27F47BDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BDE0);
  }

  return result;
}

unint64_t sub_251BE1AC4()
{
  result = qword_27F47BDE8;
  if (!qword_27F47BDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BDE8);
  }

  return result;
}

unint64_t sub_251BE1B4C()
{
  result = qword_27F47BE00;
  if (!qword_27F47BE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BE00);
  }

  return result;
}

unint64_t sub_251BE1BA4()
{
  result = qword_27F47BE08;
  if (!qword_27F47BE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BE08);
  }

  return result;
}

uint64_t sub_251BE1BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for PBStateResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for PBStateResponse._StorageClass(0);
    swift_allocObject();
    v12 = sub_251BE7C50(v11);

    *(v4 + v8) = v12;
    v10 = v12;
  }

  return sub_251BE1CAC(v10, a1, a2, a3);
}

uint64_t sub_251BE1CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_251C70444();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_251BE1E6C(a2, a1, a3, a4);
      }

      else if (result == 4)
      {
        sub_251BE1EF8(a2, a1, a3, a4);
      }
    }

    else if (result == 1)
    {
      sub_251B98414(a2, a1, a3, a4);
    }

    else if (result == 2)
    {
      sub_251BE1D90(a2, a1, a3, a4);
    }
  }

  return result;
}

uint64_t sub_251BE1D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for PBState(0);
  sub_251BE4824(&qword_27F47BE18, type metadata accessor for PBState, &unk_251C85474);
  sub_251C70564();
  return swift_endAccess();
}

uint64_t sub_251BE1E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251BE1EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_251BE7190();
  sub_251C70494();
  return swift_endAccess();
}

uint64_t sub_251BE1F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for PBStateResponse(0);
  result = sub_251BE2000(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251BE2000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = *(a1 + 24);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (, sub_251C70674(), result = , !v4))
  {
    result = sub_251BE21AC(a1, a2, a3, a4);
    if (!v4)
    {
      v12 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__msg);
      swift_beginAccess();
      v13 = *v12;
      v14 = v12[1];
      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = v13 & 0xFFFFFFFFFFFFLL;
      }

      if (v15)
      {

        sub_251C70674();
      }

      v16 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__resultCode);
      result = swift_beginAccess();
      if (*v16)
      {
        sub_251BE7190();
        return sub_251C70604();
      }
    }
  }

  return result;
}

uint64_t sub_251BE21AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  sub_251BE161C(0, &qword_27F47BD58, type metadata accessor for PBState, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBState(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__state;
  swift_beginAccess();
  sub_251BE7FC8(a1 + v12, v7, &qword_27F47BD58, type metadata accessor for PBState);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BE8048(v7, &qword_27F47BD58, type metadata accessor for PBState);
  }

  sub_251BE6F30(v7, v11, type metadata accessor for PBState);
  sub_251BE4824(&qword_27F47BE18, type metadata accessor for PBState, &unk_251C85474);
  sub_251C706A4();
  return sub_251BE6F98(v11, type metadata accessor for PBState);
}

BOOL sub_251BE2404(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBState(0);
  v38 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BE7F50(0, &qword_27F47BF90, &qword_27F47BD58, type metadata accessor for PBState);
  v8 = v7;
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - v9;
  sub_251BE161C(0, &qword_27F47BD58, type metadata accessor for PBState, MEMORY[0x277D83D88]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v37 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - v14;
  swift_beginAccess();
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  swift_beginAccess();
  if (__PAIR128__(v17, v16) != *(a2 + 16) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v36 = v6;
  v18 = v4;
  v19 = OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__state;
  swift_beginAccess();
  sub_251BE7FC8(a1 + v19, v15, &qword_27F47BD58, type metadata accessor for PBState);
  v20 = OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__state;
  v21 = a2;
  swift_beginAccess();
  v22 = *(v8 + 48);
  sub_251BE7FC8(v15, v10, &qword_27F47BD58, type metadata accessor for PBState);
  sub_251BE7FC8(a2 + v20, &v10[v22], &qword_27F47BD58, type metadata accessor for PBState);
  v23 = *(v38 + 48);
  if (v23(v10, 1, v18) == 1)
  {

    sub_251BE8048(v15, &qword_27F47BD58, type metadata accessor for PBState);
    if (v23(&v10[v22], 1, v18) == 1)
    {
      sub_251BE8048(v10, &qword_27F47BD58, type metadata accessor for PBState);
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v24 = v37;
  sub_251BE7FC8(v10, v37, &qword_27F47BD58, type metadata accessor for PBState);
  if (v23(&v10[v22], 1, v18) == 1)
  {

    sub_251BE8048(v15, &qword_27F47BD58, type metadata accessor for PBState);
    sub_251BE6F98(v24, type metadata accessor for PBState);
LABEL_8:
    sub_251BE6FF8(v10, &qword_27F47BF90, &qword_27F47BD58, type metadata accessor for PBState);
LABEL_9:

    return 0;
  }

  v26 = v36;
  sub_251BE6F30(&v10[v22], v36, type metadata accessor for PBState);

  v27 = sub_251BE71E4(v24, v26);
  sub_251BE6F98(v26, type metadata accessor for PBState);
  sub_251BE8048(v15, &qword_27F47BD58, type metadata accessor for PBState);
  sub_251BE6F98(v24, type metadata accessor for PBState);
  sub_251BE8048(v10, &qword_27F47BD58, type metadata accessor for PBState);
  if ((v27 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_12:
  v28 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__msg);
  swift_beginAccess();
  v29 = *v28;
  v30 = v28[1];
  v31 = (v21 + OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__msg);
  swift_beginAccess();
  if ((v29 != *v31 || v30 != v31[1]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_9;
  }

  v32 = OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__resultCode;
  swift_beginAccess();
  v33 = *(a1 + v32);

  v34 = v21 + OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__resultCode;
  swift_beginAccess();
  v35 = *v34;
  LODWORD(v34) = *(v34 + 8);

  if (v34 == 1)
  {
    if (v35 <= 2)
    {
      if (v35)
      {
        if (v35 == 1)
        {
          if (v33 == 1)
          {
            return 1;
          }
        }

        else if (v33 == 2)
        {
          return 1;
        }
      }

      else if (!v33)
      {
        return 1;
      }
    }

    else if (v35 > 4)
    {
      if (v35 == 5)
      {
        if (v33 == 5)
        {
          return 1;
        }
      }

      else if (v33 == 6)
      {
        return 1;
      }
    }

    else if (v35 == 3)
    {
      if (v33 == 3)
      {
        return 1;
      }
    }

    else if (v33 == 4)
    {
      return 1;
    }

    return 0;
  }

  return v33 == v35;
}

uint64_t sub_251BE2A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_251C703A4();
  v4 = *(a1 + 20);
  if (qword_27F478910 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_27F47BD28;
}

uint64_t sub_251BE2B0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BE4824(&qword_27F47BF80, type metadata accessor for PBStateResponse, &unk_251C85734);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251BE2BAC(uint64_t a1)
{
  v2 = sub_251BE4824(&qword_27F47BE58, type metadata accessor for PBStateResponse, &unk_251C8576C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251BE2C18(uint64_t a1, uint64_t a2)
{
  sub_251BE4824(&qword_27F47BE58, type metadata accessor for PBStateResponse, &unk_251C8576C);

  return sub_251C705C4();
}

uint64_t sub_251BE2C98()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2830);
  __swift_project_value_buffer(v0, qword_27F4A2830);
  sub_251BE161C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_251C75420;
  v5 = v21 + v4 + *(v2 + 56);
  *(v21 + v4) = 0;
  *v5 = "UNDEFINED";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_251C706B4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v21 + v4 + v3 + *(v2 + 56);
  *(v21 + v4 + v3) = 1;
  *v9 = "OK";
  *(v9 + 8) = 2;
  *(v9 + 16) = 2;
  v8();
  v10 = (v21 + v4 + 2 * v3);
  v11 = v10 + *(v2 + 56);
  *v10 = 2;
  *v11 = "STATE_UPDATED";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v21 + v4 + 3 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "STATE_NOT_UPDATED";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = (v21 + v4 + 4 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "SERVER_ERROR";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v21 + v4 + 5 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 5;
  *v17 = "MAILBOX_NOT_FOUND";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v21 + v4 + 6 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 6;
  *v19 = "UNAUTHORIZED";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  return sub_251C706C4();
}

uint64_t sub_251BE2FCC()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2848);
  __swift_project_value_buffer(v0, qword_27F4A2848);
  sub_251BE161C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "latitude";
  *(v7 + 8) = 8;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "longitude";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "radius";
  *(v12 + 8) = 6;
  *(v12 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251BE31F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_251C70664(), !v4))
  {
    if (!*(v3 + 8) || (result = sub_251C70664(), !v4))
    {
      if (!*(v3 + 16) || (result = sub_251C70644(), !v4))
      {
        type metadata accessor for PBGeo(0);
        return sub_251C70394();
      }
    }
  }

  return result;
}

uint64_t sub_251BE32F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BE4824(&qword_27F47BFA0, type metadata accessor for PBGeo, &unk_251C855A4);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251BE3398(uint64_t a1)
{
  v2 = sub_251BE4824(&qword_27F47BE38, type metadata accessor for PBGeo, &unk_251C855DC);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251BE3404(uint64_t a1, uint64_t a2)
{
  sub_251BE4824(&qword_27F47BE38, type metadata accessor for PBGeo, &unk_251C855DC);

  return sub_251C705C4();
}

uint64_t sub_251BE3484()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2860);
  __swift_project_value_buffer(v0, qword_27F4A2860);
  sub_251BE161C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_251C7C1E0;
  v5 = v35 + v4;
  v6 = v35 + v4 + *(v2 + 56);
  *(v35 + v4) = 1;
  *v6 = "mailbox_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v35 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "actor";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v35 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "access_code";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v35 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "sid";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  v15 = (v35 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "composite_code_trials";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  v17 = (v35 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "expiration_time";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  v19 = (v35 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "geo_encrypted";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v9();
  v21 = (v35 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "pa";
  *(v22 + 1) = 2;
  v22[16] = 2;
  v9();
  v23 = v35 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v23 = "pb";
  *(v23 + 8) = 2;
  *(v23 + 16) = 2;
  v9();
  v24 = (v35 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 10;
  *v25 = "confirmation_a";
  *(v25 + 1) = 14;
  v25[16] = 2;
  v9();
  v26 = (v35 + v4 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 11;
  *v27 = "confirmation_b";
  *(v27 + 1) = 14;
  v27[16] = 2;
  v9();
  v28 = (v35 + v4 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 12;
  *v29 = "lookupinfo_encrypted";
  *(v29 + 1) = 20;
  v29[16] = 2;
  v9();
  v30 = (v35 + v4 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 13;
  *v31 = "step";
  *(v31 + 1) = 4;
  v31[16] = 2;
  v9();
  v32 = (v35 + v4 + 13 * v3);
  v33 = v32 + *(v2 + 56);
  *v32 = 14;
  *v33 = "other_data";
  *(v33 + 1) = 10;
  v33[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251BE3958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
        case 3:
        case 4:
          sub_251C70534();
          break;
        case 2:
          v11 = v4;
          sub_251BE51C4();
          goto LABEL_12;
        case 5:
          sub_251C704F4();
          break;
        case 6:
          sub_251BE3AF8(a1, v5, a2, a3);
          break;
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
          sub_251C704D4();
          break;
        case 13:
          v11 = v4;
          sub_251BE80B8();
LABEL_12:
          v4 = v11;
          sub_251C70494();
          break;
        case 14:
          sub_251BE3BAC(a1, v5, a2, a3);
          break;
        default:
          break;
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251BE3AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBState(0);
  sub_251C70384();
  sub_251BE4824(&qword_27F47A968, MEMORY[0x277D21570], MEMORY[0x277D21568]);
  return sub_251C70564();
}

uint64_t sub_251BE3BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBState(0);
  type metadata accessor for PBOtherData(0);
  sub_251BE4824(&qword_27F47BEB8, type metadata accessor for PBOtherData, &unk_251C85BA4);
  return sub_251C70564();
}

uint64_t sub_251BE3C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_251C70674(), !v4))
  {
    if (!*(v3 + 16) || (sub_251BE51C4(), result = sub_251C70604(), !v4))
    {
      v11 = *(v3 + 40);
      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = *(v3 + 32) & 0xFFFFFFFFFFFFLL;
      }

      if (!v12 || (result = sub_251C70674(), !v4))
      {
        v13 = *(v3 + 56);
        v14 = HIBYTE(v13) & 0xF;
        if ((v13 & 0x2000000000000000) == 0)
        {
          v14 = *(v3 + 48) & 0xFFFFFFFFFFFFLL;
        }

        if (!v14 || (result = sub_251C70674(), !v4))
        {
          if (!*(v3 + 64) || (result = sub_251C70644(), !v4))
          {
            result = sub_251BE4058(v3, a1, a2, a3);
            if (!v4)
            {
              v15 = *(v3 + 72);
              v16 = *(v3 + 80);
              v17 = v16 >> 62;
              if ((v16 >> 62) > 1)
              {
                if (v17 != 2)
                {
                  goto LABEL_28;
                }

                v18 = *(v15 + 16);
                v19 = *(v15 + 24);
              }

              else
              {
                if (!v17)
                {
                  if ((v16 & 0xFF000000000000) == 0)
                  {
LABEL_28:
                    v20 = *(v3 + 88);
                    v21 = *(v3 + 96);
                    v22 = v21 >> 62;
                    if ((v21 >> 62) > 1)
                    {
                      if (v22 != 2)
                      {
                        goto LABEL_37;
                      }

                      v23 = *(v20 + 16);
                      v24 = *(v20 + 24);
                    }

                    else
                    {
                      if (!v22)
                      {
                        if ((v21 & 0xFF000000000000) == 0)
                        {
LABEL_37:
                          v25 = *(v3 + 104);
                          v26 = *(v3 + 112);
                          v27 = v26 >> 62;
                          if ((v26 >> 62) > 1)
                          {
                            if (v27 != 2)
                            {
                              goto LABEL_46;
                            }

                            v28 = *(v25 + 16);
                            v29 = *(v25 + 24);
                          }

                          else
                          {
                            if (!v27)
                            {
                              if ((v26 & 0xFF000000000000) == 0)
                              {
LABEL_46:
                                v30 = *(v3 + 120);
                                v31 = *(v3 + 128);
                                v32 = v31 >> 62;
                                if ((v31 >> 62) > 1)
                                {
                                  if (v32 != 2)
                                  {
                                    goto LABEL_55;
                                  }

                                  v33 = *(v30 + 16);
                                  v34 = *(v30 + 24);
                                }

                                else
                                {
                                  if (!v32)
                                  {
                                    if ((v31 & 0xFF000000000000) == 0)
                                    {
LABEL_55:
                                      v35 = *(v3 + 136);
                                      v36 = *(v3 + 144);
                                      v37 = v36 >> 62;
                                      if ((v36 >> 62) > 1)
                                      {
                                        if (v37 != 2)
                                        {
                                          goto LABEL_64;
                                        }

                                        v38 = *(v35 + 16);
                                        v39 = *(v35 + 24);
                                      }

                                      else
                                      {
                                        if (!v37)
                                        {
                                          if ((v36 & 0xFF000000000000) == 0)
                                          {
LABEL_64:
                                            v40 = *(v3 + 152);
                                            v41 = *(v3 + 160);
                                            v42 = v41 >> 62;
                                            if ((v41 >> 62) > 1)
                                            {
                                              if (v42 != 2)
                                              {
                                                goto LABEL_73;
                                              }

                                              v43 = *(v40 + 16);
                                              v44 = *(v40 + 24);
                                            }

                                            else
                                            {
                                              if (!v42)
                                              {
                                                if ((v41 & 0xFF000000000000) == 0)
                                                {
                                                  goto LABEL_73;
                                                }

                                                goto LABEL_72;
                                              }

                                              v43 = v40;
                                              v44 = v40 >> 32;
                                            }

                                            if (v43 != v44)
                                            {
LABEL_72:
                                              sub_251C70624();
                                            }

LABEL_73:
                                            if (*(v3 + 168))
                                            {
                                              sub_251BE80B8();
                                              sub_251C70604();
                                            }

                                            sub_251BE42A4(v3, a1, a2, a3);
                                            type metadata accessor for PBState(0);
                                            return sub_251C70394();
                                          }

LABEL_63:
                                          sub_251C70624();
                                          goto LABEL_64;
                                        }

                                        v38 = v35;
                                        v39 = v35 >> 32;
                                      }

                                      if (v38 == v39)
                                      {
                                        goto LABEL_64;
                                      }

                                      goto LABEL_63;
                                    }

LABEL_54:
                                    sub_251C70624();
                                    goto LABEL_55;
                                  }

                                  v33 = v30;
                                  v34 = v30 >> 32;
                                }

                                if (v33 == v34)
                                {
                                  goto LABEL_55;
                                }

                                goto LABEL_54;
                              }

LABEL_45:
                              sub_251C70624();
                              goto LABEL_46;
                            }

                            v28 = v25;
                            v29 = v25 >> 32;
                          }

                          if (v28 == v29)
                          {
                            goto LABEL_46;
                          }

                          goto LABEL_45;
                        }

LABEL_36:
                        sub_251C70624();
                        goto LABEL_37;
                      }

                      v23 = v20;
                      v24 = v20 >> 32;
                    }

                    if (v23 == v24)
                    {
                      goto LABEL_37;
                    }

                    goto LABEL_36;
                  }

LABEL_27:
                  sub_251C70624();
                  goto LABEL_28;
                }

                v18 = v15;
                v19 = v15 >> 32;
              }

              if (v18 == v19)
              {
                goto LABEL_28;
              }

              goto LABEL_27;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_251BE4058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = MEMORY[0x277D21570];
  sub_251BE161C(0, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  v9 = sub_251C70384();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBState(0);
  sub_251BE7FC8(a1 + *(v13 + 68), v8, &qword_27F479130, v5);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BE8048(v8, &qword_27F479130, MEMORY[0x277D21570]);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_251BE4824(&qword_27F47A968, MEMORY[0x277D21570], MEMORY[0x277D21568]);
  sub_251C706A4();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_251BE42A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251BE161C(0, &qword_27F47BD70, type metadata accessor for PBOtherData, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBOtherData(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBState(0);
  sub_251BE7FC8(a1 + *(v12 + 72), v7, &qword_27F47BD70, type metadata accessor for PBOtherData);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BE8048(v7, &qword_27F47BD70, type metadata accessor for PBOtherData);
  }

  sub_251BE6F30(v7, v11, type metadata accessor for PBOtherData);
  sub_251BE4824(&qword_27F47BEB8, type metadata accessor for PBOtherData, &unk_251C85BA4);
  sub_251C706A4();
  return sub_251BE6F98(v11, type metadata accessor for PBOtherData);
}

uint64_t sub_251BE4514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 64);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_251BE4588(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_251BE4650(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BE4824(&qword_27F47BFA8, type metadata accessor for PBState, &unk_251C8543C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251BE46F0(uint64_t a1)
{
  v2 = sub_251BE4824(&qword_27F47BE18, type metadata accessor for PBState, &unk_251C85474);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251BE475C(uint64_t a1, uint64_t a2)
{
  sub_251BE4824(&qword_27F47BE18, type metadata accessor for PBState, &unk_251C85474);

  return sub_251C705C4();
}

uint64_t sub_251BE4824(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_251BE51C4()
{
  result = qword_27F47BF18;
  if (!qword_27F47BF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BF18);
  }

  return result;
}

uint64_t sub_251BE5218(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  type metadata accessor for PBGeo(0);
  sub_251C703B4();
  sub_251BE4824(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251BE52E0(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v3 = type metadata accessor for PBUpdateParameters(0);
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v43 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D83D88];
  sub_251BE161C(0, &qword_27F47BF70, type metadata accessor for PBUpdateParameters, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v44 = (&v42 - v7);
  sub_251BE7F50(0, &qword_27F47BF78, &qword_27F47BF70, type metadata accessor for PBUpdateParameters);
  v46 = v8;
  MEMORY[0x28223BE20](v8);
  v49 = &v42 - v9;
  v10 = type metadata accessor for PBBlobAuth(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251BE161C(0, qword_2813E7028, type metadata accessor for PBBlobAuth, v5);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v42 - v15);
  sub_251BE7F50(0, &qword_27F47A940, qword_2813E7028, type metadata accessor for PBBlobAuth);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v42 - v19;
  v45 = type metadata accessor for PBUpdateStateRequest(0);
  v21 = *(v45 + 20);
  v22 = *(v18 + 56);
  v50 = a1;
  sub_251BE7FC8(a1 + v21, v20, qword_2813E7028, type metadata accessor for PBBlobAuth);
  v23 = v51 + v21;
  v24 = v51;
  sub_251BE7FC8(v23, &v20[v22], qword_2813E7028, type metadata accessor for PBBlobAuth);
  v25 = *(v11 + 48);
  if (v25(v20, 1, v10) == 1)
  {
    if (v25(&v20[v22], 1, v10) == 1)
    {
      sub_251BE8048(v20, qword_2813E7028, type metadata accessor for PBBlobAuth);
      goto LABEL_4;
    }

LABEL_9:
    v31 = &qword_27F47A940;
    v32 = qword_2813E7028;
    v33 = type metadata accessor for PBBlobAuth;
    v34 = v20;
LABEL_21:
    sub_251BE6FF8(v34, v31, v32, v33);
    goto LABEL_22;
  }

  sub_251BE7FC8(v20, v16, qword_2813E7028, type metadata accessor for PBBlobAuth);
  if (v25(&v20[v22], 1, v10) == 1)
  {
    sub_251BE6F98(v16, type metadata accessor for PBBlobAuth);
    goto LABEL_9;
  }

  sub_251BE6F30(&v20[v22], v13, type metadata accessor for PBBlobAuth);
  if ((sub_251A9C778(*v16, *v13) & 1) == 0 || !sub_251A9D1F0(v16[1], v16[2], v13[1], v13[2]) || (v16[3] != v13[3] || v16[4] != v13[4]) && (sub_251C719D4() & 1) == 0)
  {
    sub_251BE6F98(v13, type metadata accessor for PBBlobAuth);
    sub_251BE6F98(v16, type metadata accessor for PBBlobAuth);
    sub_251BE8048(v20, qword_2813E7028, type metadata accessor for PBBlobAuth);
    goto LABEL_22;
  }

  sub_251C703B4();
  sub_251BE4824(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v35 = sub_251C70ED4();
  sub_251BE6F98(v13, type metadata accessor for PBBlobAuth);
  sub_251BE6F98(v16, type metadata accessor for PBBlobAuth);
  sub_251BE8048(v20, qword_2813E7028, type metadata accessor for PBBlobAuth);
  if ((v35 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_4:
  v26 = *(v45 + 24);
  v27 = *(v46 + 48);
  v28 = v49;
  sub_251BE7FC8(v50 + v26, v49, &qword_27F47BF70, type metadata accessor for PBUpdateParameters);
  sub_251BE7FC8(v24 + v26, v28 + v27, &qword_27F47BF70, type metadata accessor for PBUpdateParameters);
  v29 = v48;
  v30 = *(v47 + 48);
  if (v30(v28, 1, v48) == 1)
  {
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_251BE8048(v28, &qword_27F47BF70, type metadata accessor for PBUpdateParameters);
LABEL_25:
      sub_251C703B4();
      sub_251BE4824(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v37 = sub_251C70ED4();
      return v37 & 1;
    }

    goto LABEL_20;
  }

  v36 = v44;
  sub_251BE7FC8(v28, v44, &qword_27F47BF70, type metadata accessor for PBUpdateParameters);
  if (v30(v28 + v27, 1, v29) == 1)
  {
    sub_251BE6F98(v36, type metadata accessor for PBUpdateParameters);
LABEL_20:
    v31 = &qword_27F47BF78;
    v32 = &qword_27F47BF70;
    v33 = type metadata accessor for PBUpdateParameters;
    v34 = v28;
    goto LABEL_21;
  }

  v39 = v28 + v27;
  v40 = v43;
  sub_251BE6F30(v39, v43, type metadata accessor for PBUpdateParameters);
  v41 = sub_251BE5AA0(v36, v40);
  sub_251BE6F98(v40, type metadata accessor for PBUpdateParameters);
  sub_251BE6F98(v36, type metadata accessor for PBUpdateParameters);
  sub_251BE8048(v28, &qword_27F47BF70, type metadata accessor for PBUpdateParameters);
  if (v41)
  {
    goto LABEL_25;
  }

LABEL_22:
  v37 = 0;
  return v37 & 1;
}

uint64_t sub_251BE5AA0(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for PBUpdateParameters.OneOf_Data(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BE161C(0, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v24 - v9);
  sub_251BE7F50(0, &qword_27F47BF58, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - v13;
  v15 = *a1;
  v16 = *a2;
  if (*(a2 + 8) != 1)
  {
    if (v15 == v16)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      if (v15 != 2)
      {
        goto LABEL_26;
      }
    }

    else if (v15 != 3)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (!v16)
    {
      if (!v15)
      {
        goto LABEL_7;
      }

LABEL_26:
      v22 = 0;
      return v22 & 1;
    }

    if (v15 != 1)
    {
      goto LABEL_26;
    }
  }

LABEL_7:
  if ((a1[2] != *(a2 + 16) || a1[3] != *(a2 + 24)) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_26;
  }

  v24 = v7;
  v25 = type metadata accessor for PBUpdateParameters(0);
  v17 = *(v25 + 24);
  v18 = *(v12 + 48);
  sub_251BE7FC8(a1 + v17, v14, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  sub_251BE7FC8(a2 + v17, &v14[v18], &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  v19 = *(v5 + 48);
  if (v19(v14, 1, v4) == 1)
  {
    if (v19(&v14[v18], 1, v4) == 1)
    {
      sub_251BE8048(v14, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  sub_251BE7FC8(v14, v10, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  if (v19(&v14[v18], 1, v4) == 1)
  {
    sub_251BE6F98(v10, type metadata accessor for PBUpdateParameters.OneOf_Data);
LABEL_18:
    sub_251BE6FF8(v14, &qword_27F47BF58, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
    goto LABEL_26;
  }

  v20 = v24;
  sub_251BE6F30(&v14[v18], v24, type metadata accessor for PBUpdateParameters.OneOf_Data);
  v21 = sub_251BE5F28(v10, v20);
  sub_251BE6F98(v20, type metadata accessor for PBUpdateParameters.OneOf_Data);
  sub_251BE6F98(v10, type metadata accessor for PBUpdateParameters.OneOf_Data);
  sub_251BE8048(v14, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  if ((v21 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_24:
  if (!sub_251BB3774(*(a1 + *(v25 + 28)), *(a1 + *(v25 + 28) + 8), *(a2 + *(v25 + 28))))
  {
    goto LABEL_26;
  }

  sub_251C703B4();
  sub_251BE4824(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v22 = sub_251C70ED4();
  return v22 & 1;
}

uint64_t sub_251BE5F28(uint64_t *a1, char *a2)
{
  v70 = a1;
  v71 = a2;
  v66 = type metadata accessor for PBOtherData(0);
  MEMORY[0x28223BE20](v66);
  v67 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for PBUpdateParameters.OneOf_Data(0);
  v4 = MEMORY[0x28223BE20](v3);
  v69 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v68 = (&v66 - v7);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v66 - v9);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v66 - v12);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v66 - v15);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v66 - v18);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = (&v66 - v21);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = (&v66 - v24);
  MEMORY[0x28223BE20](v23);
  v27 = (&v66 - v26);
  sub_251BE70C8(0);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = &v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = &v31[*(v29 + 56)];
  sub_251BE712C(v70, v31);
  v70 = v32;
  sub_251BE712C(v71, v32);
  v71 = v31;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v41 = v70;
      v42 = v71;
      if (!EnumCaseMultiPayload)
      {
        sub_251BE712C(v71, v27);
        v44 = *v27;
        v43 = v27[1];
        if (!swift_getEnumCaseMultiPayload())
        {
          if (v44 != *v41 || v43 != v41[1])
          {
            v65 = sub_251C719D4();

            v40 = v65 << 31 >> 31;
            v49 = type metadata accessor for PBUpdateParameters.OneOf_Data;
            goto LABEL_29;
          }

          goto LABEL_53;
        }

LABEL_28:
        LOBYTE(v40) = 0;
        v49 = sub_251BE70C8;
        goto LABEL_29;
      }

      sub_251BE712C(v71, v25);
      v53 = *v25;
      v54 = v25[1];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_23;
      }

      goto LABEL_26;
    }

    v41 = v70;
    v42 = v71;
    if (EnumCaseMultiPayload != 2)
    {
      sub_251BE712C(v71, v19);
      v53 = *v19;
      v54 = v19[1];
      v55 = swift_getEnumCaseMultiPayload();
      if (v55 == 3)
      {
        goto LABEL_23;
      }

      goto LABEL_26;
    }

    sub_251BE712C(v71, v22);
    v53 = *v22;
    v54 = v22[1];
    if (swift_getEnumCaseMultiPayload() != 2)
    {
LABEL_26:
      v50 = v53;
      v51 = v54;
      goto LABEL_27;
    }

LABEL_23:
    v46 = *v41;
    v45 = v41[1];
    LOBYTE(v40) = sub_251A9D1F0(v53, v54, v46, v45);
    sub_251A83028(v46, v45);
    v47 = v53;
    v48 = v54;
LABEL_24:
    sub_251A83028(v47, v48);
    v49 = type metadata accessor for PBUpdateParameters.OneOf_Data;
    goto LABEL_29;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      v42 = v71;
      sub_251BE712C(v71, v13);
      v60 = *v13;
      v59 = v13[1];
      v61 = v70;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v63 = *v61;
        v62 = v61[1];
        LOBYTE(v40) = sub_251A9D1F0(v60, v59, v63, v62);
        sub_251A83028(v63, v62);
        v47 = v60;
        v48 = v59;
        goto LABEL_24;
      }

      v50 = v60;
      v51 = v59;
LABEL_27:
      sub_251A83028(v50, v51);
      goto LABEL_28;
    }

    v42 = v71;
    sub_251BE712C(v71, v16);
    v53 = *v16;
    v54 = v16[1];
    v41 = v70;
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v42 = v71;
    sub_251BE712C(v71, v10);
    v53 = *v10;
    v54 = v10[1];
    v41 = v70;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  if (EnumCaseMultiPayload != 7)
  {
    v42 = v71;
    v56 = v69;
    sub_251BE712C(v71, v69);
    v57 = v70;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      v58 = v67;
      sub_251BE6F30(v57, v67, type metadata accessor for PBOtherData);
      if (*v56 != *v58 || (*(v56 + 8) != *(v58 + 8) || *(v56 + 16) != *(v58 + 16)) && (sub_251C719D4() & 1) == 0 || (sub_251C703B4(), sub_251BE4824(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]), (sub_251C70ED4() & 1) == 0))
      {
        sub_251BE6F98(v58, type metadata accessor for PBOtherData);
        sub_251BE6F98(v56, type metadata accessor for PBOtherData);
        LOBYTE(v40) = 0;
        v49 = type metadata accessor for PBUpdateParameters.OneOf_Data;
        goto LABEL_29;
      }

      sub_251BE6F98(v58, type metadata accessor for PBOtherData);
      sub_251BE6F98(v56, type metadata accessor for PBOtherData);
LABEL_53:
      LOBYTE(v40) = 1;
      v49 = type metadata accessor for PBUpdateParameters.OneOf_Data;
      goto LABEL_29;
    }

    sub_251BE6F98(v56, type metadata accessor for PBOtherData);
    goto LABEL_28;
  }

  v34 = v68;
  sub_251BE712C(v71, v68);
  v36 = *v34;
  v35 = v34[1];
  v37 = v70;
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    if (v36 == *v37 && v35 == v37[1])
    {

      LOBYTE(v40) = 1;
    }

    else
    {
      v39 = sub_251C719D4();

      v40 = v39 << 31 >> 31;
    }

    v49 = type metadata accessor for PBUpdateParameters.OneOf_Data;
    v42 = v71;
  }

  else
  {

    LOBYTE(v40) = 0;
    v49 = sub_251BE70C8;
    v42 = v71;
  }

LABEL_29:
  sub_251BE6F98(v42, v49);
  return v40 & 1;
}
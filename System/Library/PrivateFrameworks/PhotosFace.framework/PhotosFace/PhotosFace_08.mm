uint64_t sub_22FE2E45C()
{
  swift_beginAccess();
  v1 = sub_22FDB13CC(0xD000000000000015, 0x800000022FE485C0, 0x94049F30F7200000);
  v3 = v2;
  sub_22FE43D44();
  *(v0 + 64) = v1;
  *(v0 + 72) = v3;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;

  return MEMORY[0x2822009F8](sub_22FE2E52C, 0, 0);
}

uint64_t sub_22FE2E52C()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = sub_22FE4194C(&qword_27DAE4710, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_22FE43D24();
  sub_22FE4194C(&qword_27DAE4718, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_22FE43A34();
  v5 = *(v2 + 8);
  v0[22] = v5;
  v0[23] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_22FE2E6B0;
  v8 = v0[16];
  v7 = v0[17];

  return MEMORY[0x2822008C8](v8, v0 + 5, v7, v4);
}

uint64_t sub_22FE2E6B0()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    (*(v2 + 176))(*(v2 + 128), *(v2 + 104));
    v3 = sub_22FE2EA64;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = *(v2 + 144);
    v6 = *(v2 + 152);
    v8 = *(v2 + 136);
    (*(v2 + 176))(*(v2 + 128), *(v2 + 104));
    (*(v7 + 8))(v6, v8);
    v4 = *(v2 + 160);
    v5 = *(v2 + 168);
    v3 = sub_22FE2E810;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22FE2E810()
{
  v13 = v0;
  if (*(*(*(v0 + 80) + 40) + 16))
  {
    sub_22FE2F07C(*(v0 + 88), *(v0 + 96));
    v1 = sub_22FDB13CC(0xD000000000000015, 0x800000022FE485C0, 0x94049F30F7200000);
    v3 = v2;
    sub_22FE43D44();
    *(v0 + 64) = v1;
    *(v0 + 72) = v3;
    *(v0 + 40) = 0;
    *(v0 + 48) = 0;
    *(v0 + 56) = 1;

    return MEMORY[0x2822009F8](sub_22FE2E52C, 0, 0);
  }

  else
  {
    if (qword_28148B0E0 != -1)
    {
      swift_once();
    }

    v4 = sub_22FE42D34();
    __swift_project_value_buffer(v4, qword_28148B0E8);

    v5 = sub_22FE42D14();
    v6 = sub_22FE436C4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 80);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v12 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_22FD98218(*(v7 + 16), *(v7 + 24), &v12);
      _os_log_impl(&dword_22FD6D000, v5, v6, "%s: No More Requests, all done!", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x23190C380](v9, -1, -1);
      MEMORY[0x23190C380](v8, -1, -1);
    }

    *(*(v0 + 80) + 72) = 0;

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_22FE2EA64()
{
  (*(v0[18] + 8))(v0[19], v0[17]);
  v1 = v0[20];
  v2 = v0[21];

  return MEMORY[0x2822009F8](sub_22FE2EAD8, v1, v2);
}

uint64_t sub_22FE2EAD8()
{
  v17 = v0;
  if (qword_28148B0E0 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = sub_22FE42D34();
  __swift_project_value_buffer(v2, qword_28148B0E8);

  v3 = v1;
  v4 = sub_22FE42D14();
  v5 = sub_22FE436C4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[25];
  if (v6)
  {
    v8 = v0[10];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_22FD98218(*(v8 + 16), *(v8 + 24), &v16);
    *(v9 + 12) = 2112;
    v12 = v7;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_22FD6D000, v4, v5, "%s: Failed to sleep during timeout task: %@", v9, 0x16u);
    sub_22FD93E6C(v10, &qword_27DAE4208, &qword_22FE4ACE0);
    MEMORY[0x23190C380](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23190C380](v11, -1, -1);
    MEMORY[0x23190C380](v9, -1, -1);
  }

  else
  {
  }

  *(v0[10] + 72) = 0;

  v14 = v0[1];

  return v14();
}

uint64_t sub_22FE2ED10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = sub_22FD73F54;

  return sub_22FE2E2A4(a4, a5, a6);
}

uint64_t sub_22FE2EDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE3188, &qword_22FE49380);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_22FD764B4(a3, v25 - v10, qword_27DAE3188, &qword_22FE49380);
  v12 = sub_22FE43404();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22FD93E6C(v11, qword_27DAE3188, &qword_22FE49380);
  }

  else
  {
    sub_22FE433F4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22FE43374();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22FE430C4() + 32;
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

void sub_22FE2F07C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v58 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v5 = &v51 - v4;
  v6 = sub_22FE43A14();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v51 - v11;
  swift_beginAccess();
  if (*(*(v2 + 40) + 16))
  {
    if (qword_28148B0E0 != -1)
    {
      swift_once();
    }

    v13 = sub_22FE42D34();
    v14 = __swift_project_value_buffer(v13, qword_28148B0E8);

    v56 = v14;
    v15 = sub_22FE42D14();
    v16 = sub_22FE43694();

    LODWORD(v55) = v16;
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v61 = v53;
      *v17 = 136315394;
      *(v17 + 4) = sub_22FD98218(*(v3 + 16), *(v3 + 24), &v61);
      *(v17 + 12) = 2080;
      v18 = sub_22FE43E64();
      v54 = v6;
      v20 = v9;
      v21 = v12;
      v22 = v7;
      v23 = sub_22FD98218(v18, v19, &v61);
      v6 = v54;

      *(v17 + 14) = v23;
      v7 = v22;
      v12 = v21;
      v9 = v20;
      v24 = v15;
      _os_log_impl(&dword_22FD6D000, v15, v55, "%s: Checking for timeout requests that are over %s old.", v17, 0x16u);
      v25 = v53;
      swift_arrayDestroy();
      MEMORY[0x23190C380](v25, -1, -1);
      MEMORY[0x23190C380](v17, -1, -1);
    }

    else
    {
    }

    sub_22FE439E4();
    sub_22FE43EA4();
    sub_22FE43E84();
    sub_22FE43A04();
    v31 = *(v7 + 8);
    v31(v9, v6);
    sub_22FE2D82C(v12);
    v33 = v32;
    v31(v12, v6);
    if (*(v33 + 16))
    {

      v34 = sub_22FE42D14();
      v35 = sub_22FE436C4();

      if (os_log_type_enabled(v34, v35))
      {
        LODWORD(v56) = v35;
        v36 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v61 = v55;
        *v36 = 136315650;
        *(v36 + 4) = sub_22FD98218(*(v3 + 16), *(v3 + 24), &v61);
        *(v36 + 12) = 2048;
        v37 = *(v33 + 16);
        *(v36 + 14) = v37;
        *(v36 + 22) = 2080;
        if (v37)
        {
          v52 = v36;
          v54 = v34;
          v60 = MEMORY[0x277D84F90];
          sub_22FD927B4(0, v37, 0);
          v38 = v60;
          v39 = *(v57 + 80);
          v40 = &qword_27DAE2CA8;
          v53 = v33;
          v41 = v33 + ((v39 + 32) & ~v39);
          v58 = *(v57 + 72);
          do
          {
            sub_22FD764B4(v41, v5, v40, &unk_22FE4BE90);
            if (qword_28148B410 != -1)
            {
              swift_once();
            }

            type metadata accessor for CommunicationActor();
            sub_22FE4194C(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
            sub_22FE43374();
            if ((swift_task_isCurrentExecutor() & 1) == 0)
            {
              swift_task_reportUnexpectedExecutor();
            }

            v42 = *&v5[*(v59 + 32)];
            v43 = v40;
            sub_22FD93E6C(v5, v40, &unk_22FE4BE90);
            v60 = v38;
            v45 = *(v38 + 16);
            v44 = *(v38 + 24);
            if (v45 >= v44 >> 1)
            {
              sub_22FD927B4((v44 > 1), v45 + 1, 1);
              v38 = v60;
            }

            *(v38 + 16) = v45 + 1;
            *(v38 + 4 * v45 + 32) = v42;
            v41 += v58;
            --v37;
            v40 = v43;
          }

          while (v37);

          v34 = v54;
          v36 = v52;
        }

        else
        {

          v38 = MEMORY[0x277D84F90];
        }

        v46 = MEMORY[0x23190AE90](v38, MEMORY[0x277D84CC0]);
        v48 = v47;

        v49 = sub_22FD98218(v46, v48, &v61);

        *(v36 + 24) = v49;
        _os_log_impl(&dword_22FD6D000, v34, v56, "%s: Timed out %ld requests: %s", v36, 0x20u);
        v50 = v55;
        swift_arrayDestroy();
        MEMORY[0x23190C380](v50, -1, -1);
        MEMORY[0x23190C380](v36, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }
    }

    else
    {
    }
  }

  else
  {
    if (qword_28148B0E0 != -1)
    {
      swift_once();
    }

    v26 = sub_22FE42D34();
    __swift_project_value_buffer(v26, qword_28148B0E8);

    v27 = sub_22FE42D14();
    v28 = sub_22FE43694();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v61 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_22FD98218(*(v3 + 16), *(v3 + 24), &v61);
      _os_log_impl(&dword_22FD6D000, v27, v28, "%s: Checked timeout requests, is empty, returning.", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x23190C380](v30, -1, -1);
      MEMORY[0x23190C380](v29, -1, -1);
    }
  }
}

Swift::Void __swiftcall XPCMessageCenter.Server.activate()()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_22FE42DD4();
  MEMORY[0x28223BE20](v3);
  v4 = qword_28148B420;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_28148B428;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52B8, &unk_22FE4F940);
  *(swift_allocObject() + 16) = xmmword_22FE49F60;
  v6 = v5;
  sub_22FE42DC4();
  sub_22FE4194C(qword_28148AE90, MEMORY[0x277D855D8], MEMORY[0x277D855E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52C0, &qword_22FE4F740);
  sub_22FDBC930(&qword_28148AE70, &qword_27DAE52C0, &qword_22FE4F740, MEMORY[0x277D83970]);
  sub_22FE43824();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = *(v2 + 80);
  *(v8 + 24) = *(v2 + 88);
  *(v8 + 32) = *(v2 + 96);
  *(v8 + 48) = *(v2 + 112);
  *(v8 + 56) = v7;
  sub_22FE42E44();
  swift_allocObject();
  v1[4] = sub_22FE42E24();

  if (v1[4])
  {

    sub_22FE42E34();
  }
}

uint64_t XPCMessageCenter.Server.registerData<A>(request:callback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = *(*v5 + 80);
  v12 = MEMORY[0x28223BE20](a1);
  (*(v14 + 16))(v17 - v13, v12);
  v15 = swift_allocObject();
  v15[2] = v11;
  v15[3] = a4;
  v15[4] = v10[11];
  v15[5] = v10[12];
  v15[6] = a5;
  v15[7] = v10[13];
  v15[8] = v10[14];
  v15[9] = a2;
  v15[10] = a3;
  v17[4] = &unk_22FE4F958;
  v17[5] = v15;
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE5360, &qword_22FE4F9A0);
  sub_22FE42FA4();
  sub_22FE42FC4();
  return swift_endAccess();
}

uint64_t XPCMessageCenter.Client.sendData(request:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *v4;
  v5[7] = *v4;
  v7 = *(v6 + 80);
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v5[10] = *(v8 + 64);
  v5[11] = swift_task_alloc();
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE4194C(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v10 = sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FE2FEBC, v10, v9);
}

uint64_t sub_22FE2FEBC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v15 = v0[5];
  v16 = v0[2];
  (*(v4 + 16))(v1, v0[3], v3);
  v8 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  *(v10 + 24) = *(v6 + 88);
  *(v10 + 32) = *(v6 + 96);
  *(v10 + 48) = *(v6 + 112);
  *(v10 + 56) = v5;
  (*(v4 + 32))(v10 + v8, v1, v3);
  v11 = (v10 + v9);
  *v11 = v7;
  v11[1] = v15;

  sub_22FDB4380(v7, v15);
  v12 = sub_22FE275DC(&unk_22FE4F9B8, v10);

  *v16 = v12;

  v13 = v0[1];

  return v13();
}

uint64_t sub_22FE3002C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7165527472617473 && a2 == 0xEC00000074736575;
  if (v4 || (sub_22FE43CB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x78654E6863746566 && a2 == 0xE900000000000074)
  {

    return 1;
  }

  else
  {
    v6 = sub_22FE43CB4();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22FE30104(char a1)
{
  if (a1)
  {
    return 0x78654E6863746566;
  }

  else
  {
    return 0x7165527472617473;
  }
}

uint64_t sub_22FE301E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_22FE30238(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_22FE3028C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_22FE43CB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_22FE43CB4();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22FE30348(char a1)
{
  if (a1)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_22FE30360(void *a1, void *a2)
{
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v8 = a2[6];
  v50 = a2[2];
  v5 = v50;
  v51 = v4;
  v52 = v7;
  v53 = v6;
  v54 = v8;
  NextCodingKeys = type metadata accessor for XPCMessageCenter.XPCRequest.FetchNextCodingKeys(255, &v50);
  WitnessTable = swift_getWitnessTable();
  v9 = sub_22FE43C04();
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x28223BE20](v9);
  v37 = &v32 - v10;
  v50 = v5;
  v51 = v4;
  v52 = v7;
  v53 = v6;
  v54 = v8;
  started = type metadata accessor for XPCMessageCenter.XPCRequest.StartRequestCodingKeys(255, &v50);
  v34 = swift_getWitnessTable();
  v35 = started;
  v12 = sub_22FE43C04();
  v41 = *(v12 - 8);
  v42 = v12;
  MEMORY[0x28223BE20](v12);
  v49 = &v32 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v46 = &v32 - v14;
  v15 = *(a2 - 1);
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v5;
  v51 = v4;
  v52 = v7;
  v53 = v6;
  v43 = v8;
  v54 = v8;
  type metadata accessor for XPCMessageCenter.XPCRequest.CodingKeys(255, &v50);
  swift_getWitnessTable();
  v44 = sub_22FE43C04();
  v47 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v20 = &v32 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FE43E44();
  (*(v15 + 16))(v18, v45, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    LOBYTE(v50) = 1;
    v21 = v37;
    v22 = v44;
    sub_22FE43BC4();
    v23 = v40;
    sub_22FE43BF4();
    (*(v39 + 8))(v21, v23);
    return (*(v47 + 8))(v20, v22);
  }

  else
  {
    v25 = AssociatedTypeWitness;
    v26 = &v18[*(swift_getTupleTypeMetadata2() + 48)];
    v27 = v26[1];
    v45 = *v26;
    v28 = v32;
    (*(v32 + 32))(v46, v18, v25);
    LOBYTE(v50) = 0;
    v29 = v44;
    sub_22FE43BC4();
    LOBYTE(v50) = 0;
    v30 = v42;
    v31 = v48;
    sub_22FE43BE4();
    if (v31)
    {
      sub_22FD917D4(v45, v27);
      (*(v41 + 8))(v49, v30);
      (*(v28 + 8))(v46, v25);
      return (*(v47 + 8))(v20, v29);
    }

    else
    {
      v50 = v45;
      v51 = v27;
      v55 = 1;
      sub_22FE421D4();
      sub_22FE43BE4();
      (*(v41 + 8))(v49, v30);
      (*(v28 + 8))(v46, v25);
      (*(v47 + 8))(v20, v29);
      return sub_22FD917D4(v45, v27);
    }
  }
}

uint64_t sub_22FE30988@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v85 = a1;
  v77 = a7;
  *&v82 = a2;
  *(&v82 + 1) = a3;
  *&v83 = a4;
  *(&v83 + 1) = a5;
  v84 = a6;
  NextCodingKeys = type metadata accessor for XPCMessageCenter.XPCRequest.FetchNextCodingKeys(255, &v82);
  WitnessTable = swift_getWitnessTable();
  v71 = NextCodingKeys;
  v62 = sub_22FE43BB4();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v72 = &v56 - v13;
  *&v82 = a2;
  *(&v82 + 1) = a3;
  *&v83 = a4;
  *(&v83 + 1) = a5;
  v84 = a6;
  started = type metadata accessor for XPCMessageCenter.XPCRequest.StartRequestCodingKeys(255, &v82);
  v68 = swift_getWitnessTable();
  v69 = started;
  v67 = sub_22FE43BB4();
  v63 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v75 = &v56 - v15;
  *&v82 = a2;
  *(&v82 + 1) = a3;
  *&v83 = a4;
  *(&v83 + 1) = a5;
  v84 = a6;
  type metadata accessor for XPCMessageCenter.XPCRequest.CodingKeys(255, &v82);
  swift_getWitnessTable();
  v76 = sub_22FE43BB4();
  v78 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v17 = &v56 - v16;
  v64 = a2;
  *&v82 = a2;
  *(&v82 + 1) = a3;
  v65 = a4;
  *&v83 = a4;
  *(&v83 + 1) = a5;
  v66 = a5;
  v84 = a6;
  v18 = type metadata accessor for XPCMessageCenter.XPCRequest(0, &v82);
  v73 = *(v18 - 8);
  v74 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v56 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v56 - v25;
  __swift_project_boxed_opaque_existential_1(v85, v85[3]);
  v27 = v79;
  sub_22FE43E34();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_0(v85);
  }

  v57 = v20;
  v60 = 0;
  v59 = v23;
  v28 = v75;
  v58 = v26;
  v30 = v76;
  v29 = v77;
  v79 = v17;
  *&v80 = sub_22FE43BA4();
  sub_22FE43354();
  swift_getWitnessTable();
  *&v82 = sub_22FE43814();
  *(&v82 + 1) = v31;
  *&v83 = v32;
  *(&v83 + 1) = v33;
  sub_22FE43804();
  swift_getWitnessTable();
  sub_22FE43604();
  v34 = v80;
  if (v80 == 2 || (v56 = v82, v80 = v82, v81 = v83, (sub_22FE43644() & 1) == 0))
  {
    v44 = sub_22FE43964();
    swift_allocError();
    v46 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE55B8, &qword_22FE4FF30);
    *v46 = v74;
    v47 = v79;
    sub_22FE43B64();
    sub_22FE43954();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D84160], v44);
    swift_willThrow();
    (*(v78 + 8))(v47, v30);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v85);
  }

  if ((v34 & 1) == 0)
  {
    LOBYTE(v80) = 0;
    v36 = v79;
    v48 = v60;
    sub_22FE43B54();
    v38 = v73;
    if (!v48)
    {
      v39 = v29;
      v49 = v28;
      swift_getAssociatedTypeWitness();
      LOBYTE(v80) = 0;
      v51 = v59;
      sub_22FE43B84();
      swift_getTupleTypeMetadata2();
      LOBYTE(v80) = 1;
      sub_22FE422A0();
      v53 = v67;
      sub_22FE43B84();
      (*(v63 + 8))(v49, v53);
      (*(v78 + 8))(v36, v30);
      swift_unknownObjectRelease();
      v52 = v74;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  LOBYTE(v80) = 1;
  v35 = v72;
  v36 = v79;
  v37 = v60;
  sub_22FE43B54();
  v38 = v73;
  if (v37)
  {
LABEL_10:
    (*(v78 + 8))(v36, v30);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v85);
  }

  v39 = v29;
  v40 = v62;
  v41 = sub_22FE43B94();
  v42 = v35;
  v43 = v78;
  (*(v61 + 8))(v42, v40);
  (*(v43 + 8))(v36, v30);
  swift_unknownObjectRelease();
  v51 = v57;
  *v57 = v41;
  v52 = v74;
LABEL_12:
  swift_storeEnumTagMultiPayload();
  v54 = *(v38 + 32);
  v55 = v58;
  v54(v58, v51, v52);
  v54(v39, v55, v52);
  return __swift_destroy_boxed_opaque_existential_0(v85);
}

uint64_t sub_22FE312B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7274537472617473 && a2 == 0xEB000000006D6165;
  if (v4 || (sub_22FE43CB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1954047342 && a2 == 0xE400000000000000 || (sub_22FE43CB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6563637553646E65 && a2 == 0xEA00000000007373 || (sub_22FE43CB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F727245646E65 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_22FE43CB4();

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

uint64_t sub_22FE31460(unsigned __int8 a1)
{
  sub_22FE43DB4();
  MEMORY[0x23190B9C0](a1);
  return sub_22FE43E04();
}

uint64_t sub_22FE314A8(unsigned __int8 a1)
{
  v1 = 0x7274537472617473;
  v2 = 0x6563637553646E65;
  if (a1 != 2)
  {
    v2 = 0x726F727245646E65;
  }

  if (a1)
  {
    v1 = 1954047342;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22FE31528(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22FE43CB4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22FE31598(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v66 = a4;
  v64 = a3;
  v65 = a2;
  v72 = a5;
  v73 = a6;
  v74 = a7;
  v75 = a8;
  v76 = a9;
  v14 = type metadata accessor for XPCMessageCenter.XPCResponse.EndErrorCodingKeys(255, &v72);
  WitnessTable = swift_getWitnessTable();
  v58 = v14;
  v15 = sub_22FE43C04();
  v62 = *(v15 - 8);
  v63 = v15;
  MEMORY[0x28223BE20](v15);
  v60 = v43 - v16;
  v72 = a5;
  v73 = a6;
  v74 = a7;
  v75 = a8;
  v76 = a9;
  v17 = type metadata accessor for XPCMessageCenter.XPCResponse.EndSuccessCodingKeys(255, &v72);
  v18 = swift_getWitnessTable();
  v56 = v17;
  v54 = v18;
  v55 = sub_22FE43C04();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v52 = v43 - v19;
  v72 = a5;
  v73 = a6;
  v74 = a7;
  v75 = a8;
  v76 = a9;
  CodingKeys = type metadata accessor for XPCMessageCenter.XPCResponse.NextCodingKeys(255, &v72);
  v21 = swift_getWitnessTable();
  v48 = CodingKeys;
  v47 = v21;
  v51 = sub_22FE43C04();
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = v43 - v22;
  v72 = a5;
  v73 = a6;
  v74 = a7;
  v75 = a8;
  v76 = a9;
  type metadata accessor for XPCMessageCenter.XPCResponse.StartStreamCodingKeys(255, &v72);
  v43[1] = swift_getWitnessTable();
  v46 = sub_22FE43C04();
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v44 = v43 - v23;
  v72 = a5;
  v73 = a6;
  v59 = a7;
  v74 = a7;
  v75 = a8;
  v61 = a8;
  v76 = a9;
  type metadata accessor for XPCMessageCenter.XPCResponse.CodingKeys(255, &v72);
  swift_getWitnessTable();
  v24 = sub_22FE43C04();
  v68 = *(v24 - 8);
  v69 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = v43 - v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v67 = v26;
  sub_22FE43E44();
  if (v66 > 1u)
  {
    if (v66 == 2)
    {
      LOBYTE(v72) = 3;
      v32 = v60;
      v33 = v69;
      v34 = v67;
      sub_22FE43BC4();
      v70 = v65;
      v71 = v64;
      v72 = a5;
      v73 = a6;
      v74 = v59;
      v75 = v61;
      v76 = a9;
      type metadata accessor for XPCMessageCenter.XPCErrorResponse(0, &v72);
      swift_getWitnessTable();
      v35 = v63;
      sub_22FE43BE4();
      (*(v62 + 8))(v32, v35);
      return (*(v68 + 8))(v34, v33);
    }

    else
    {
      LOBYTE(v72) = 2;
      v40 = v52;
      v41 = v69;
      v42 = v67;
      sub_22FE43BC4();
      (*(v53 + 8))(v40, v55);
      return (*(v68 + 8))(v42, v41);
    }
  }

  else if (v66)
  {
    LOBYTE(v72) = 1;
    v36 = v49;
    v37 = v69;
    v38 = v67;
    sub_22FE43BC4();
    v72 = v65;
    v73 = v64;
    sub_22FE421D4();
    v39 = v51;
    sub_22FE43BE4();
    (*(v50 + 8))(v36, v39);
    return (*(v68 + 8))(v38, v37);
  }

  else
  {
    LOBYTE(v72) = 0;
    v27 = v44;
    v28 = v69;
    v29 = v67;
    sub_22FE43BC4();
    v30 = v46;
    sub_22FE43BF4();
    (*(v45 + 8))(v27, v30);
    return (*(v68 + 8))(v29, v28);
  }
}

uint64_t sub_22FE31CC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v83 = a2;
  *(&v83 + 1) = a3;
  *&v84 = a4;
  *(&v84 + 1) = a5;
  v85 = a6;
  v12 = type metadata accessor for XPCMessageCenter.XPCResponse.EndErrorCodingKeys(255, &v83);
  WitnessTable = swift_getWitnessTable();
  v72 = v12;
  v63 = sub_22FE43BB4();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v73 = &v51 - v13;
  *&v83 = a2;
  *(&v83 + 1) = a3;
  *&v84 = a4;
  *(&v84 + 1) = a5;
  v85 = a6;
  v14 = type metadata accessor for XPCMessageCenter.XPCResponse.EndSuccessCodingKeys(255, &v83);
  v15 = swift_getWitnessTable();
  v70 = v14;
  v69 = v15;
  v61 = sub_22FE43BB4();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v68 = &v51 - v16;
  *&v83 = a2;
  *(&v83 + 1) = a3;
  *&v84 = a4;
  *(&v84 + 1) = a5;
  v85 = a6;
  CodingKeys = type metadata accessor for XPCMessageCenter.XPCResponse.NextCodingKeys(255, &v83);
  v18 = swift_getWitnessTable();
  v66 = CodingKeys;
  v65 = v18;
  v59 = sub_22FE43BB4();
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v67 = &v51 - v19;
  *&v83 = a2;
  *(&v83 + 1) = a3;
  *&v84 = a4;
  *(&v84 + 1) = a5;
  v85 = a6;
  started = type metadata accessor for XPCMessageCenter.XPCResponse.StartStreamCodingKeys(255, &v83);
  v64 = swift_getWitnessTable();
  v57 = sub_22FE43BB4();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v22 = &v51 - v21;
  *&v83 = a2;
  *(&v83 + 1) = a3;
  v74 = a4;
  v75 = a3;
  *&v84 = a4;
  *(&v84 + 1) = a5;
  v77 = a5;
  v78 = a6;
  v85 = a6;
  type metadata accessor for XPCMessageCenter.XPCResponse.CodingKeys(255, &v83);
  swift_getWitnessTable();
  v76 = sub_22FE43BB4();
  v23 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v25 = &v51 - v24;
  v26 = a1[3];
  v86 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  v27 = v79;
  sub_22FE43E34();
  if (!v27)
  {
    v52 = started;
    v53 = v22;
    v55 = a2;
    v54 = 0;
    v28 = v77;
    started = v78;
    v79 = v23;
    v29 = v76;
    v30 = v25;
    *&v83 = sub_22FE43BA4();
    sub_22FE43354();
    swift_getWitnessTable();
    *&v81 = sub_22FE43814();
    *(&v81 + 1) = v31;
    *&v82 = v32;
    *(&v82 + 1) = v33;
    sub_22FE43804();
    swift_getWitnessTable();
    sub_22FE43604();
    v34 = v83;
    v35 = v29;
    if (v83 == 4 || (v51 = v81, v83 = v81, v84 = v82, (sub_22FE43644() & 1) == 0))
    {
      v40 = sub_22FE43964();
      swift_allocError();
      v42 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE55B8, &qword_22FE4FF30);
      *&v83 = v55;
      *(&v83 + 1) = v75;
      *&v84 = v74;
      *(&v84 + 1) = v28;
      v85 = started;
      *v42 = type metadata accessor for XPCMessageCenter.XPCResponse(0, &v83);
      sub_22FE43B64();
      sub_22FE43954();
      (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D84160], v40);
      swift_willThrow();
      (*(v79 + 8))(v30, v29);
    }

    else
    {
      if (v34 > 1)
      {
        v36 = v79;
        if (v34 == 2)
        {
          LOBYTE(v83) = 2;
          started = v68;
          v43 = v54;
          sub_22FE43B54();
          if (!v43)
          {
            (*(v60 + 8))(started, v61);
            (*(v36 + 8))(v30, v29);
            swift_unknownObjectRelease();
            started = 0;
            goto LABEL_18;
          }
        }

        else
        {
          LOBYTE(v83) = 3;
          v47 = v73;
          v48 = v54;
          sub_22FE43B54();
          if (!v48)
          {
            *&v83 = v55;
            *(&v83 + 1) = v75;
            *&v84 = v74;
            *(&v84 + 1) = v28;
            v85 = started;
            type metadata accessor for XPCMessageCenter.XPCErrorResponse(0, &v83);
            swift_getWitnessTable();
            v49 = v63;
            sub_22FE43B84();
            (*(v62 + 8))(v47, v49);
            (*(v36 + 8))(v30, v35);
            swift_unknownObjectRelease();
            started = v80;
            goto LABEL_18;
          }
        }
      }

      else
      {
        v36 = v79;
        if (v34)
        {
          LOBYTE(v83) = 1;
          v44 = v67;
          v45 = v54;
          sub_22FE43B54();
          if (!v45)
          {
            sub_22FE422A0();
            v46 = v59;
            sub_22FE43B84();
            (*(v58 + 8))(v44, v46);
            (*(v36 + 8))(v30, v29);
            swift_unknownObjectRelease();
            started = v83;
            goto LABEL_18;
          }
        }

        else
        {
          LOBYTE(v83) = 0;
          v37 = v53;
          v38 = v54;
          sub_22FE43B54();
          if (!v38)
          {
            v39 = v57;
            LODWORD(started) = sub_22FE43B94();
            (*(v56 + 8))(v37, v39);
            (*(v36 + 8))(v30, v35);
            swift_unknownObjectRelease();
            started = started;
            goto LABEL_18;
          }
        }
      }

      (*(v36 + 8))(v30, v35);
    }

    swift_unknownObjectRelease();
  }

LABEL_18:
  __swift_destroy_boxed_opaque_existential_0(v86);
  return started;
}

uint64_t sub_22FE3272C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22FE43CB4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22FE327A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a3;
  v15[0] = a4;
  v15[1] = a5;
  v15[2] = a6;
  v15[3] = a7;
  v15[4] = a8;
  type metadata accessor for XPCMessageCenter.XPCErrorResponse.CodingKeys(255, v15);
  swift_getWitnessTable();
  v9 = sub_22FE43C04();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15[-1] - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FE43E44();
  sub_22FE43BD4();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_22FE32914(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  type metadata accessor for XPCMessageCenter.XPCErrorResponse.CodingKeys(255, v15);
  swift_getWitnessTable();
  v8 = sub_22FE43BB4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15[-1] - v10;
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FE43E34();
  if (!v6)
  {
    v12 = sub_22FE43B74();
    (*(v9 + 8))(v11, v8);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v12;
}

uint64_t sub_22FE32AF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_22FE32B48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_22FE32C0C(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void *, void, void, void, void, void, void))
{
  sub_22FE43DB4();
  a4(v8, *v4, a2[2], a2[3], a2[4], a2[5], a2[6]);
  return sub_22FE43E04();
}

uint64_t sub_22FE32CBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_22FE32D10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_22FE32DE8(uint64_t a1)
{
  sub_22FE43DB4();
  sub_22FE31438(v3, *v1);
  return sub_22FE43E04();
}

uint64_t sub_22FE32E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5], a3[6]);
  *a5 = result;
  return result;
}

uint64_t sub_22FE32EBC@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6]);
  *a3 = result;
  return result;
}

uint64_t sub_22FE32EFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_22FE32F50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_22FE32FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22FE31528(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22FE32FE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_22FE33034(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_22FE33094@<X0>(_BYTE *a2@<X8>)
{
  v3 = sub_22FE32AC8();

  *a2 = v3 & 1;
  return result;
}

uint64_t sub_22FE330E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_22FE3313C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_22FE33190(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_22FE331E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_22FE33238(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_22FE3328C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_22FE332E0@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_22FE31CC8(a1, a2[2], a2[3], a2[4], a2[5], a2[6]);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6;
    *(a3 + 16) = v7;
  }

  return result;
}

uint64_t sub_22FE3335C()
{
  sub_22FE43DB4();
  MEMORY[0x23190B9C0](0);
  return sub_22FE43E04();
}

uint64_t sub_22FE333A0(uint64_t a1)
{
  sub_22FE43DB4();
  MEMORY[0x23190B9C0](0);
  return sub_22FE43E04();
}

uint64_t sub_22FE333F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22FE3272C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22FE33434@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22FE33478(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_22FE334CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_22FE33520@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_22FE32914(a1, a2[2], a2[3], a2[4], a2[5], a2[6]);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

uint64_t sub_22FE33588()
{
  v2 = v1;
  v3 = v0;
  v4 = *v0;
  v5 = sub_22FE42D84();
  MEMORY[0x28223BE20](v5 - 8);
  if (v0[4])
  {
    v6 = v0[4];
LABEL_3:

    return v6;
  }

  sub_22FE42DB4();
  v7 = qword_28148B420;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_28148B428;
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = *(v4 + 80);
  *(v10 + 24) = *(v4 + 88);
  *(v10 + 32) = *(v4 + 96);
  *(v10 + 48) = *(v4 + 112);
  *(v10 + 56) = v9;
  v11 = v8;

  sub_22FE42D74();
  v6 = sub_22FE42D64();

  if (!v2)
  {
    v3[4] = v6;

    goto LABEL_3;
  }

  return v6;
}

uint64_t sub_22FE3377C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = sub_22FE42E54();
    sub_22FE4194C(&qword_27DAE5358, MEMORY[0x277D855E8], MEMORY[0x277D855F0]);
    v5 = swift_allocError();
    (*(*(v4 - 8) + 16))(v6, a2, v4);
    XPCMessageCenter.Client.onCancel(error:)(v5);
  }

  return result;
}

uint64_t XPCMessageCenter.Client.onCancel(error:)(void *a1)
{
  v2 = v1;
  if (qword_28148B100 != -1)
  {
    swift_once();
  }

  v4 = sub_22FE42D34();
  __swift_project_value_buffer(v4, qword_28148B108);
  v5 = a1;
  v6 = sub_22FE42D14();
  v7 = sub_22FE436A4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = a1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22FD6D000, v6, v7, "Session Cancelled: %@", v8, 0xCu);
    sub_22FD93E6C(v9, &qword_27DAE4208, &qword_22FE4ACE0);
    MEMORY[0x23190C380](v9, -1, -1);
    MEMORY[0x23190C380](v8, -1, -1);
  }

  *(v2 + 32) = 0;
}

void *XPCMessageCenter.Client.init(serviceName:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v2[4] = 0;
  v2[2] = a1;
  return v2;
}

uint64_t XPCMessageCenter.Client.deinit()
{
  if (*(v0 + 32))
  {

    sub_22FE42DA4();
  }

  return v0;
}

uint64_t XPCMessageCenter.Client.__deallocating_deinit()
{
  XPCMessageCenter.Client.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22FE33AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 144) = a5;
  *(v6 + 152) = a6;
  *(v6 + 128) = a3;
  *(v6 + 136) = a4;
  *(v6 + 112) = a1;
  *(v6 + 120) = a2;
  v7 = *a3;
  v8 = *(*a3 + 80);
  *(v6 + 160) = v8;
  v9 = v7[11];
  *(v6 + 168) = v9;
  v10 = v7[12];
  *(v6 + 176) = v10;
  v11 = v7[13];
  *(v6 + 184) = v11;
  v12 = v7[14];
  *&v13 = v8;
  *(&v13 + 1) = v9;
  *&v14 = v10;
  *(&v14 + 1) = v11;
  *(v6 + 192) = v12;
  *(v6 + 32) = v14;
  *(v6 + 16) = v13;
  *(v6 + 48) = v12;
  v15 = type metadata accessor for XPCMessageCenter.XPCRequest(0, v6 + 16);
  *(v6 + 200) = v15;
  *(v6 + 208) = *(v15 - 8);
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FE33C10, 0, 0);
}

uint64_t sub_22FE33C10()
{
  v1 = v0[28];
  v2 = v0[19];
  v3 = v0[18];
  swift_getAssociatedTypeWitness();
  v4 = (v1 + *(swift_getTupleTypeMetadata2() + 48));
  sub_22FE43254();
  *v4 = v3;
  v4[1] = v2;
  swift_storeEnumTagMultiPayload();
  sub_22FDB4380(v3, v2);
  v5 = swift_task_alloc();
  v0[29] = v5;
  *v5 = v0;
  v5[1] = sub_22FE33D48;
  v6 = v0[28];

  return sub_22FE34788(v6);
}

uint64_t sub_22FE33D48(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[30] = a1;
  v6[31] = a2;
  *(v6 + 328) = a3;
  v6[32] = v3;

  v7 = v5[28];
  v8 = v5[26];
  v9 = v5[25];
  v12 = *(v8 + 8);
  v10 = v8 + 8;
  v11 = v12;
  if (v3)
  {
    v11(v7, v9);
    v13 = sub_22FE346A4;
  }

  else
  {
    v6[33] = v11;
    v6[34] = v10 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v7, v9);
    v13 = sub_22FE33ED8;
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

uint64_t sub_22FE33ED8()
{
  v1 = *(v0 + 328);
  if (v1)
  {
    v3 = *(v0 + 240);
    v2 = *(v0 + 248);
    sub_22FDD4264();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
    sub_22FE28D40(v3, v2, v1);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    **(v0 + 216) = *(v0 + 240);
    swift_storeEnumTagMultiPayload();
    v7 = swift_task_alloc();
    *(v0 + 280) = v7;
    *v7 = v0;
    v7[1] = sub_22FE3402C;
    v8 = *(v0 + 216);

    return sub_22FE34788(v8);
  }
}

uint64_t sub_22FE3402C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  v7 = *v4;
  v7[36] = a1;
  v7[37] = a2;
  v7[38] = v3;

  v8 = v6[33];
  v9 = v6[27];
  v10 = v6[25];
  if (v3)
  {
    v8(v9, v10);
    v11 = sub_22FE34710;
  }

  else
  {
    *(v7 + 329) = a3;
    v8(v9, v10);
    v11 = sub_22FE341BC;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_22FE341BC()
{
  if (*(v0 + 329) > 1u)
  {
    if (*(v0 + 329) != 2)
    {
      sub_22FE28D40(*(v0 + 240), *(v0 + 248), 0);

      v8 = *(v0 + 8);
      goto LABEL_11;
    }

    *(v0 + 56) = *(v0 + 160);
    v5 = *(v0 + 288);
    v4 = *(v0 + 296);
    v2 = *(v0 + 240);
    v1 = *(v0 + 248);
    v6 = *(v0 + 192);
    *(v0 + 72) = *(v0 + 176);
    *(v0 + 88) = v6;
    type metadata accessor for XPCMessageCenter.XPCErrorResponse(0, v0 + 56);
    swift_getWitnessTable();
    swift_allocError();
    *v7 = v5;
    v7[1] = v4;
LABEL_6:
    swift_willThrow();
    sub_22FE28D40(v2, v1, 0);

    v8 = *(v0 + 8);
LABEL_11:

    return v8();
  }

  if (!*(v0 + 329))
  {
    v2 = *(v0 + 240);
    v1 = *(v0 + 248);
    sub_22FDD4264();
    swift_allocError();
    *v3 = 1;
    goto LABEL_6;
  }

  v9 = *(v0 + 288);
  v10 = *(v0 + 296);
  v11 = *(v0 + 112);
  *(v0 + 96) = v9;
  *(v0 + 104) = v10;
  sub_22FDB4380(v9, v10);
  v14 = (v11 + *v11);
  v12 = swift_task_alloc();
  *(v0 + 312) = v12;
  *v12 = v0;
  v12[1] = sub_22FE34410;

  return v14(v0 + 96);
}

uint64_t sub_22FE34410()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_22FE345F8;
  }

  else
  {
    v2 = sub_22FE34524;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FE34524()
{
  v1 = v0[36];
  v2 = v0[37];
  sub_22FE28D40(v1, v2, 1);
  sub_22FE28D40(v1, v2, 1);
  *v0[27] = v0[30];
  swift_storeEnumTagMultiPayload();
  v3 = swift_task_alloc();
  v0[35] = v3;
  *v3 = v0;
  v3[1] = sub_22FE3402C;
  v4 = v0[27];

  return sub_22FE34788(v4);
}

uint64_t sub_22FE345F8()
{
  v1 = v0[36];
  v2 = v0[37];
  v4 = v0[30];
  v3 = v0[31];
  sub_22FE28D40(v1, v2, 1);
  sub_22FE28D40(v1, v2, 1);
  sub_22FE28D40(v4, v3, 0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_22FE346A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FE34710()
{
  sub_22FE28D40(v0[30], v0[31], 0);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22FE34788(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v2[12] = *v1;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  v2[13] = off_28148B418;
  type metadata accessor for CommunicationActor();
  v2[14] = sub_22FE4194C(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v4 = sub_22FE43374();
  v2[15] = v4;
  v2[16] = v3;

  return MEMORY[0x2822009F8](sub_22FE348A8, v4, v3);
}

uint64_t sub_22FE348A8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  v4[1] = vextq_s8(*(v0 + 80), *(v0 + 80), 8uLL);
  v5 = swift_task_alloc();
  *(v0 + 144) = v5;
  v6 = *(v3 + 112);
  v7 = *(v3 + 96);
  *(v0 + 16) = *(v3 + 80);
  *(v0 + 32) = v7;
  *(v0 + 48) = v6;
  v8 = type metadata accessor for XPCMessageCenter.XPCResponse(0, v0 + 16);
  *v5 = v0;
  v5[1] = sub_22FE349D8;

  return MEMORY[0x2822008A0](v0 + 56, v1, v2, 0x73656D28646E6573, 0xEE00293A65676173, sub_22FE41380, v4, v8);
}

uint64_t sub_22FE349D8()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_22FE34B14;
  }

  else
  {

    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_22FE34AF4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_22FE34B14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FE34B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v29 = a1;
  v3 = *(*a2 + 80);
  v4 = *(*a2 + 88);
  v5 = *(*a2 + 96);
  v6 = *(*a2 + 104);
  v25 = *(*a2 + 112);
  v26 = v3;
  v30 = v3;
  v31 = v4;
  v32 = v5;
  v33 = v6;
  v34 = v25;
  v7 = type metadata accessor for XPCMessageCenter.XPCResponse(255, &v30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  v27 = v7;
  v8 = sub_22FE433A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - v10;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE4194C(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  sub_22FE43374();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = sub_22FE33588();
  (*(v9 + 16))(v11, v29, v8);
  v13 = *(v9 + 80);
  v24[2] = v12;
  v14 = (v13 + 56) & ~v13;
  v15 = swift_allocObject();
  v16 = v6;
  v17 = v5;
  v18 = v4;
  v19 = v26;
  *(v15 + 2) = v26;
  *(v15 + 3) = v18;
  *(v15 + 4) = v17;
  *(v15 + 5) = v16;
  v20 = v8;
  v21 = v25;
  *(v15 + 6) = v25;
  v22 = *(v9 + 32);
  v24[1] = v20;
  v22(&v15[v14], v11);
  v30 = v19;
  v31 = v18;
  v32 = v17;
  v33 = v16;
  v34 = v21;
  type metadata accessor for XPCMessageCenter.XPCRequest(0, &v30);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_22FE42D94();
}

uint64_t sub_22FE34F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *a1;
  if (*(a1 + 17) == 1)
  {
    v14 = v13;
    v16 = a3;
    v17 = a4;
    v18 = a5;
    v19 = a6;
    v20 = a7;
    type metadata accessor for XPCMessageCenter.XPCResponse(255, &v16);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
    sub_22FE433A4();
    return sub_22FE43384();
  }

  else
  {
    sub_22FE2924C(v13, *(a1 + 8), *(a1 + 16));
    v16 = a3;
    v17 = a4;
    v18 = a5;
    v19 = a6;
    v20 = a7;
    type metadata accessor for XPCMessageCenter.XPCResponse(255, &v16);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
    sub_22FE433A4();
    return sub_22FE43394();
  }
}

uint64_t XPCMessageCenter.Server.__allocating_init(serviceName:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  XPCMessageCenter.Server.init(serviceName:)(a1, a2);
  return v4;
}

uint64_t *XPCMessageCenter.Server.init(serviceName:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v2[4] = 0;
  v6 = *(v5 + 80);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE5360, &qword_22FE4F9A0);
  swift_getTupleTypeMetadata2();
  v8 = sub_22FE432D4();
  v9 = sub_22FDECED0(v8, v6, v7, *(v5 + 88));

  v2[5] = v9;
  v2[2] = a1;
  v2[3] = a2;
  v10 = sub_22FDB13CC(0xD000000000000015, 0x800000022FE44940, 0x86AC351052600000);
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE5368, &qword_22FE4F9C8);
  v13 = swift_allocObject();
  *(v13 + 32) = 0;
  v14 = sub_22FD761C8(MEMORY[0x277D84F90]);
  *(v13 + 72) = 0;
  *(v13 + 40) = v14;
  *(v13 + 48) = v10;
  *(v13 + 56) = v12;
  *(v13 + 64) = 0;
  *(v13 + 16) = 0xD000000000000010;
  *(v13 + 24) = 0x800000022FE44960;
  v2[6] = v13;
  return v2;
}

void *XPCMessageCenter.Server.deinit()
{
  if (*(v0 + 32))
  {

    sub_22FE42E14();
  }

  return v0;
}

uint64_t XPCMessageCenter.Server.__deallocating_deinit()
{
  XPCMessageCenter.Server.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22FE3527C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_22FE42DE4();
  if (v15 != 1)
  {
    return sub_22FE42E04();
  }

  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = a7;
  v13[7] = a2;

  sub_22FE42DF4();
}

void sub_22FE353AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, BOOL *a5@<X8>)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = sub_22FE184A4(0xD000000000000014, 0x800000022FE48140, a1, a2, a3, a4);
  if (!v6)
  {
    if (qword_28148B100 != -1)
    {
      swift_once();
    }

    v7 = sub_22FE42D34();
    __swift_project_value_buffer(v7, qword_28148B108);
    v8 = sub_22FE42D14();
    v9 = sub_22FE436C4();
    if (os_log_type_enabled(v8, v9))
    {
      v16 = a5;
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17[0] = v11;
      *v10 = 136315138;
      if (xpc_copy_code_signing_identity_for_token())
      {
        v12 = sub_22FE43104();
        v14 = v13;
      }

      else
      {
        v14 = 0xE300000000000000;
        v12 = 4144959;
      }

      v15 = sub_22FD98218(v12, v14, v17);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_22FD6D000, v8, v9, "Rejecting Request from %s: Missing Entitlement", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x23190C380](v11, -1, -1);
      MEMORY[0x23190C380](v10, -1, -1);

      a5 = v16;
    }

    else
    {
    }
  }

  *a5 = v6;
}

uint64_t sub_22FE355DC@<X0>(uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v6 = result;
  if (result)
  {
    sub_22FE35660(a2);
  }

  *a3 = v6 == 0;
  return result;
}

uint64_t sub_22FE35660(uint64_t a1)
{
  v2 = v1;
  v100 = a1;
  v3 = *v1;
  v89 = sub_22FE42E84();
  v93 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = v4;
  v88 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE3188, &qword_22FE49380);
  MEMORY[0x28223BE20](v5 - 8);
  v97 = &v80 - v6;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
  MEMORY[0x28223BE20](v90);
  v94 = (&v80 - v7);
  v8 = v3[12];
  v9 = v3[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v92 = *(AssociatedTypeWitness - 8);
  v10 = *(v92 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v91 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v80 - v12;
  v14 = v3[14];
  *&v15 = v9;
  *(&v15 + 1) = v3[11];
  *&v16 = v8;
  *(&v16 + 1) = v3[13];
  v98 = v16;
  v99 = v15;
  v103 = v15;
  v104 = v16;
  v105 = v14;
  v17 = type metadata accessor for XPCMessageCenter.XPCRequest(0, &v103);
  v95 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v80 - v21;
  swift_getWitnessTable();
  sub_22FE42E74();
  v23 = v93;
  v83 = v10;
  v24 = v92;
  v86 = v2;
  v25 = AssociatedTypeWitness;
  v84 = v14;
  v26 = v95;
  (*(v95 + 16))(v19, v22, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v85 = v22;
  if (EnumCaseMultiPayload == 1)
  {
    LODWORD(AssociatedTypeWitness) = *v19;
    v28 = sub_22FE43404();
    (*(*(v28 - 8) + 56))(v97, 1, 1, v28);
    v29 = v23;
    v30 = v88;
    v31 = v89;
    (*(v23 + 16))(v88, v100, v89);
    v32 = qword_28148B410;
    v33 = v86;

    if (v32 != -1)
    {
      swift_once();
    }

    v34 = off_28148B418;
    v35 = sub_22FE4194C(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
    v36 = (*(v29 + 80) + 84) & ~*(v29 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = v34;
    *(v37 + 24) = v35;
    v38 = v98;
    *(v37 + 32) = v99;
    *(v37 + 48) = v38;
    *(v37 + 64) = v84;
    *(v37 + 72) = v33;
    *(v37 + 80) = AssociatedTypeWitness;
    (*(v29 + 32))(v37 + v36, v30, v31);

    sub_22FE0BBD0(0, 0, v97, &unk_22FE4FB60, v37);

    return (*(v26 + 8))(v85, v17);
  }

  else
  {
    v87 = v17;
    v40 = v25;
    v41 = &v19[*(swift_getTupleTypeMetadata2() + 48)];
    v43 = *v41;
    v42 = v41[1];
    v93 = v43;
    v89 = v42;
    v44 = v24;
    v45 = v13;
    v82 = *(v24 + 32);
    v80 = v24 + 32;
    v82(v13, v19, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52E8, &qword_22FE4F768);
    v46 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE3EB0, &unk_22FE4FB70);
    v47 = swift_allocObject();
    *(v47 + 24) = 0;
    *(v47 + 16) = 0;
    v48 = MEMORY[0x277D84F90];
    sub_22FE38DB0(MEMORY[0x277D84F90]);
    v50 = v49;
    v52 = v51;
    sub_22FE38CB8(v48, sub_22FE38E78, sub_22FD92698, &qword_27DAE40A8, &qword_22FE4A0D8);
    v54 = v53;
    v56 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52F0, &qword_22FE4F770);
    v57 = swift_allocObject();
    *(v57 + 64) = 0;
    *(v57 + 16) = v50;
    *(v57 + 24) = v52;
    v58 = MEMORY[0x277D84FA0];
    *(v57 + 32) = MEMORY[0x277D84FA0];
    *(v57 + 40) = v54;
    v59 = v44;
    *(v57 + 48) = v56;
    *(v57 + 56) = v58;
    *(v46 + 16) = v57;
    *(v46 + 24) = v47;

    v60 = v94;
    sub_22FE2C7E4(v46, v94);

    v81 = *(v60 + *(v90 + 32));
    v61 = sub_22FE43404();
    (*(*(v61 - 8) + 56))(v97, 1, 1, v61);
    v62 = *(v44 + 16);
    v63 = v91;
    v90 = v45;
    v62(v91, v45, v40);

    sub_22FDB4380(v93, v89);
    v64 = qword_28148B410;
    v88 = v46;

    if (v64 != -1)
    {
      swift_once();
    }

    v65 = off_28148B418;
    v66 = sub_22FE4194C(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
    v67 = (*(v59 + 80) + 72) & ~*(v59 + 80);
    v68 = (v83 + v67 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v69 = v59;
    v70 = (v68 + 11) & 0xFFFFFFFFFFFFFFF8;
    v71 = (v70 + 15) & 0xFFFFFFFFFFFFFFF8;
    v72 = (v71 + 23) & 0xFFFFFFFFFFFFFFF8;
    v73 = swift_allocObject();
    *(v73 + 16) = v65;
    *(v73 + 24) = v66;
    v74 = v98;
    *(v73 + 32) = v99;
    *(v73 + 48) = v74;
    v75 = v84;
    *(v73 + 64) = v84;
    v82((v73 + v67), v63, AssociatedTypeWitness);
    v76 = v81;
    *(v73 + v68) = v81;
    *(v73 + v70) = v86;
    v77 = (v73 + v71);
    v78 = v93;
    v79 = v89;
    *v77 = v93;
    v77[1] = v79;
    *(v73 + v72) = v88;

    sub_22FE0BBD0(0, 0, v97, &unk_22FE4FB88, v73);

    v101 = v76;
    v102 = 0;
    v103 = v99;
    v104 = v98;
    v105 = v75;
    type metadata accessor for XPCMessageCenter.XPCResponse(0, &v103);
    swift_getWitnessTable();
    sub_22FE42E64();

    sub_22FD917D4(v78, v79);
    sub_22FD93E6C(v94, &qword_27DAE2CA8, &unk_22FE4BE90);
    (*(v69 + 8))(v90, AssociatedTypeWitness);
    return (*(v95 + 8))(v85, v87);
  }
}

uint64_t sub_22FE36148(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a6;
  *(v6 + 48) = v8;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a1;
  *(v6 + 56) = *a2;
  return MEMORY[0x2822009F8](sub_22FE36180, 0, 0);
}

uint64_t sub_22FE36180()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 88) = 2;
  *(v1 + 24) = *(v0 + 40);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v8 = (v2 + *v2);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_22FE362A0;
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);

  return v8(boxed_opaque_existential_1, v5, v6, v0 + 88);
}

uint64_t sub_22FE362A0()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FE363D4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_22FE363D4()
{
  __swift_deallocate_boxed_opaque_existential_1(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FE36438(uint64_t a1, _OWORD *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[9];
  v9 = v2[10];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_22FD8C738;

  return sub_22FE36148(a1, a2, v8, v9, v6, v7);
}

uint64_t sub_22FE36538(uint64_t a1, uint64_t a2)
{
  v6 = (*(*(*(v2 + 16) - 8) + 80) + 64) & ~*(*(*(v2 + 16) - 8) + 80);
  v7 = *(v2 + 56);
  v8 = (v2 + ((*(*(*(v2 + 16) - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_22FD8C738;

  return sub_22FE33AA0(a1, a2, v7, v2 + v6, v9, v10);
}

uint64_t sub_22FE36664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 352) = a8;
  *(v8 + 360) = v17;
  *(v8 + 336) = a6;
  *(v8 + 344) = a7;
  *(v8 + 68) = a5;
  *(v8 + 328) = a4;
  v9 = *a6;
  *(v8 + 368) = *a6;
  *(v8 + 376) = *(v9 + 96);
  v10 = *(v9 + 80);
  *(v8 + 384) = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v8 + 392) = AssociatedTypeWitness;
  *(v8 + 400) = *(AssociatedTypeWitness - 8);
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  v12 = sub_22FE43744();
  *(v8 + 424) = v12;
  *(v8 + 432) = *(v12 - 8);
  *(v8 + 440) = swift_task_alloc();
  *(v8 + 448) = *(v10 - 8);
  *(v8 + 456) = swift_task_alloc();
  *(v8 + 464) = swift_task_alloc();
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  *(v8 + 488) = off_28148B418;
  type metadata accessor for CommunicationActor();
  *(v8 + 496) = sub_22FE4194C(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v14 = sub_22FE43374();
  *(v8 + 504) = v14;
  *(v8 + 512) = v13;

  return MEMORY[0x2822009F8](sub_22FE3691C, v14, v13);
}

uint64_t sub_22FE3691C()
{
  v99 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  v3 = *(v0 + 384);
  v4 = *(*(v0 + 400) + 16);
  (v4)(*(v0 + 416), *(v0 + 328), *(v0 + 392));
  sub_22FE43264();
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(*(v0 + 432) + 8))(*(v0 + 440), *(v0 + 424));
    if (qword_28148B100 != -1)
    {
      goto LABEL_43;
    }

    while (1)
    {
      v5 = *(v0 + 408);
      v6 = *(v0 + 392);
      v7 = *(v0 + 328);
      v8 = sub_22FE42D34();
      __swift_project_value_buffer(v8, qword_28148B108);
      (v4)(v5, v7, v6);
      v9 = sub_22FE42D14();
      v10 = sub_22FE436A4();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = *(v0 + 408);
        v12 = *(v0 + 416);
        v14 = *(v0 + 392);
        v13 = *(v0 + 400);
        v91 = *(v0 + 68);
        v15 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v98[0] = v94;
        *v15 = 67109378;
        *(v15 + 4) = v91;
        *(v15 + 8) = 2080;
        (v4)(v12, v11, v14);
        v16 = sub_22FE430B4();
        v18 = v17;
        (*(v13 + 8))(v11, v14);
        v19 = sub_22FD98218(v16, v18, v98);

        *(v15 + 10) = v19;
        _os_log_impl(&dword_22FD6D000, v9, v10, "XPC %u: Invalid message type: %s", v15, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v94);
        MEMORY[0x23190C380](v94, -1, -1);
        MEMORY[0x23190C380](v15, -1, -1);
      }

      else
      {
        v42 = *(v0 + 400);
        v41 = *(v0 + 408);
        v43 = *(v0 + 392);

        (*(v42 + 8))(v41, v43);
      }

      sub_22FE28C14();
      v44 = swift_allocError();
      *v45 = 1;
      swift_willThrow();
LABEL_22:
      v74 = *(*(v0 + 360) + 16);
      os_unfair_lock_lock(v74 + 16);
      v75 = sub_22FE2BA64(v44);
      v77 = v76;
      os_unfair_lock_unlock(v74 + 16);
      if (!v75)
      {
        break;
      }

      v78 = *(v75 + 2);
      v97 = v75;
      if (v78)
      {
        v79 = v75 + 32;

        do
        {
          if (*v79++)
          {
            swift_continuation_throwingResume();
          }

          --v78;
        }

        while (v78);
      }

      else
      {
      }

      v81 = *(v77 + 16);
      v82 = v44;
      if (!v81)
      {
LABEL_38:
        sub_22FE41B54(v97, v77, MEMORY[0x277D84FB8]);

        break;
      }

      v83 = 0;
      while (v83 < *(v77 + 16))
      {
        if (*(v77 + 32 + 8 * v83))
        {
          *(v0 + 312) = v44;
          v85 = v44;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
          v86 = sub_22FE43C64();
          if (v86)
          {
            v4 = v86;
          }

          else
          {
            v4 = swift_allocError();
            *v87 = v44;
          }

          swift_allocError();
          *v84 = v4;
          swift_continuation_throwingResumeWithError();
        }

        if (v81 == ++v83)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_43:
      swift_once();
    }

    v88 = *(v0 + 8);

    return v88();
  }

  else
  {
    (*(*(v0 + 448) + 32))(*(v0 + 480), *(v0 + 440), *(v0 + 384));
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5360, &qword_22FE4F9A0);
    sub_22FE42FB4();
    v20 = *(v0 + 232);
    v21 = *(v0 + 240);
    *(v0 + 520) = v20;
    *(v0 + 528) = v21;
    if (!v20)
    {
      swift_endAccess();
      if (qword_28148B100 != -1)
      {
        swift_once();
      }

      v46 = *(v0 + 480);
      v48 = *(v0 + 448);
      v47 = *(v0 + 456);
      v49 = *(v0 + 384);
      v50 = sub_22FE42D34();
      __swift_project_value_buffer(v50, qword_28148B108);
      v51 = *(v48 + 16);
      v51(v47, v46, v49);
      v52 = sub_22FE42D14();
      v53 = sub_22FE436A4();
      if (os_log_type_enabled(v52, v53))
      {
        v93 = v53;
        v54 = *(v0 + 456);
        v55 = *(v0 + 464);
        v56 = *(v0 + 448);
        v57 = *(v0 + 384);
        v58 = *(v0 + 68);
        v59 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v98[0] = v95;
        *v59 = 67109378;
        *(v59 + 4) = v58;
        *(v59 + 8) = 2080;
        v51(v55, v54, v57);
        v60 = sub_22FE430B4();
        v62 = v61;
        v4 = *(v56 + 8);
        v4(v54, v57);
        v63 = sub_22FD98218(v60, v62, v98);

        *(v59 + 10) = v63;
        _os_log_impl(&dword_22FD6D000, v52, v93, "XPC %u: Couldn't find a registry for type: %s", v59, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v95);
        MEMORY[0x23190C380](v95, -1, -1);
        MEMORY[0x23190C380](v59, -1, -1);
      }

      else
      {
        v69 = *(v0 + 448);
        v68 = *(v0 + 456);
        v70 = *(v0 + 384);

        v4 = *(v69 + 8);
        v4(v68, v70);
      }

      v71 = *(v0 + 480);
      v72 = *(v0 + 384);
      sub_22FE28C14();
      v44 = swift_allocError();
      *v73 = 2;
      swift_willThrow();
      v4(v71, v72);
      goto LABEL_22;
    }

    swift_endAccess();
    if (qword_28148B100 != -1)
    {
      swift_once();
    }

    v23 = *(v0 + 472);
    v22 = *(v0 + 480);
    v24 = *(v0 + 448);
    v25 = *(v0 + 384);
    v26 = sub_22FE42D34();
    *(v0 + 536) = __swift_project_value_buffer(v26, qword_28148B108);
    v27 = *(v24 + 16);
    v27(v23, v22, v25);
    v28 = sub_22FE42D14();
    v29 = sub_22FE43694();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 472);
    if (v30)
    {
      v32 = *(v0 + 464);
      v92 = v29;
      v33 = *(v0 + 448);
      v34 = *(v0 + 384);
      v89 = *(v0 + 68);
      v35 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v98[0] = v90;
      *v35 = 67109378;
      *(v35 + 4) = v89;
      *(v35 + 8) = 2080;
      v27(v32, v31, v34);
      v36 = sub_22FE430B4();
      v38 = v37;
      v39 = *(v33 + 8);
      v39(v31, v34);
      v40 = sub_22FD98218(v36, v38, v98);

      *(v35 + 10) = v40;
      _os_log_impl(&dword_22FD6D000, v28, v92, "XPC %u: Starting to process request %s", v35, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v90);
      MEMORY[0x23190C380](v90, -1, -1);
      MEMORY[0x23190C380](v35, -1, -1);
    }

    else
    {
      v64 = *(v0 + 448);
      v65 = *(v0 + 384);

      v39 = *(v64 + 8);
      v39(v31, v65);
    }

    *(v0 + 544) = v39;
    *(v0 + 248) = *(v0 + 344);
    v96 = (v20 + *v20);
    v66 = swift_task_alloc();
    *(v0 + 552) = v66;
    *v66 = v0;
    v66[1] = sub_22FE37334;

    return v96(v0 + 128, v0 + 248);
  }
}

uint64_t sub_22FE37334()
{
  v2 = *v1;
  *(*v1 + 560) = v0;

  sub_22FD6EBD8(v2[65], v2[66]);
  v3 = v2[64];
  v4 = v2[63];
  if (v0)
  {
    v5 = sub_22FE37664;
  }

  else
  {
    v5 = sub_22FE3749C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_22FE3749C()
{
  v1 = v0[19];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 16, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[24] = swift_getAssociatedTypeWitness();
  v0[25] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 21);
  sub_22FE43464();

  v0[71] = 0;
  v5 = v0[61];
  v6 = v0[62];
  v7 = v0[24];
  v8 = v0[25];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 21), v7);
  v9 = swift_task_alloc();
  v0[72] = v9;
  *v9 = v0;
  v9[1] = sub_22FE378BC;

  return MEMORY[0x282200310](v0 + 33, v5, v6, v0 + 40, v7, v8);
}

unint64_t *sub_22FE37664()
{
  (*(v0 + 544))(*(v0 + 480), *(v0 + 384));
  v1 = *(v0 + 560);
  v2 = *(*(v0 + 360) + 16);
  os_unfair_lock_lock(v2 + 16);
  v3 = sub_22FE2BA64(v1);
  v5 = v4;
  os_unfair_lock_unlock(v2 + 16);
  if (!v3)
  {
LABEL_18:

    v17 = *(v0 + 8);

    return v17();
  }

  v6 = *(v3 + 2);
  v18 = v3;
  if (v6)
  {
    v7 = v3 + 32;

    do
    {
      if (*v7++)
      {
        swift_continuation_throwingResume();
      }

      --v6;
    }

    while (v6);
  }

  else
  {
  }

  v9 = *(v5 + 16);
  result = v1;
  if (!v9)
  {
LABEL_17:
    sub_22FE41B54(v18, v5, MEMORY[0x277D84FB8]);

    goto LABEL_18;
  }

  v11 = 0;
  while (v11 < *(v5 + 16))
  {
    if (*(v5 + 32 + 8 * v11))
    {
      *(v0 + 312) = v1;
      v14 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
      v15 = sub_22FE43C64();
      if (v15)
      {
        v12 = v15;
      }

      else
      {
        v12 = swift_allocError();
        *v16 = v1;
      }

      swift_allocError();
      *v13 = v12;
      result = swift_continuation_throwingResumeWithError();
    }

    if (v9 == ++v11)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FE378BC()
{
  v2 = *v1;

  v3 = *(v2 + 504);
  v4 = *(v2 + 512);
  if (v0)
  {
    v5 = sub_22FE38138;
  }

  else
  {
    v5 = sub_22FE379CC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_22FE379CC(uint64_t a1)
{
  v2 = *(v1 + 272);
  *(v1 + 584) = *(v1 + 264);
  *(v1 + 592) = v2;
  if (v2 >> 60 == 15)
  {
    v3 = *(v1 + 544);
    v4 = *(v1 + 480);
    v5 = *(v1 + 384);
    v6 = *(v1 + 360);
    __swift_destroy_boxed_opaque_existential_0((v1 + 168));
    sub_22FE402C0(0, *(v6 + 16));
    v3(v4, v5);
    __swift_destroy_boxed_opaque_existential_0((v1 + 128));

    v7 = *(v1 + 8);

    return v7();
  }

  else
  {
    v9 = sub_22FE42D14();
    v10 = sub_22FE43694();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v1 + 568);
      v12 = *(v1 + 68);
      v13 = swift_slowAlloc();
      *v13 = 67109376;
      *(v13 + 4) = v12;
      *(v13 + 8) = 2048;
      *(v13 + 10) = v11;
      _os_log_impl(&dword_22FD6D000, v9, v10, "XPC %u: Enqueuing message %ld", v13, 0x12u);
      MEMORY[0x23190C380](v13, -1, -1);
    }

    v14 = *(v1 + 568);

    *(v1 + 600) = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
    }

    else
    {
      v15 = sub_22FE37BBC;
      v16 = 0;
      v17 = 0;
    }

    return MEMORY[0x2822009F8](v15, v16, v17);
  }
}

uint64_t sub_22FE37BBC()
{
  v1 = *(v0 + 360);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *(v0 + 280) = *(v0 + 584);
  os_unfair_lock_lock((v2 + 64));
  v4 = *(v2 + 48);
  if (v4 < 0)
  {
    os_unfair_lock_unlock((v2 + 64));
  }

  else
  {
    if (!*(v4 + 16))
    {
      os_unfair_lock_unlock((v2 + 64));
      goto LABEL_17;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    v8 = *(v2 + 32);
    v7 = *(v2 + 40);
    v9 = *(v2 + 56);
    *(v0 + 296) = v7;
    *(v0 + 304) = v4;
    if (v7)
    {
      v38 = v8;
      v10 = v5;
      v11 = *(v4 + 32);
      sub_22FE43DB4();
      MEMORY[0x23190B9F0](v11);
      v12 = sub_22FE43E04();
      v14 = 1 << *(v7 + 16);
      v15 = __OFSUB__(v14, 1);
      v16 = v14 - 1;
      if (v15)
      {
        __break(1u);
        return MEMORY[0x282200830](v12, v13);
      }

      v17 = v16 & v12;
      v18 = sub_22FE42924();
      *(v0 + 72) = v7 + 16;
      *(v0 + 80) = v7 + 32;
      *(v0 + 88) = v17;
      *(v0 + 96) = v18;
      *(v0 + 104) = v19;
      *(v0 + 112) = v20;
      *(v0 + 120) = 0;
      v5 = v10;
      v8 = v38;
      if (v18)
      {
        goto LABEL_8;
      }

      do
      {
LABEL_6:
        __break(1u);
        do
        {
          sub_22FE42974();
          if (!*(v0 + 96))
          {
            goto LABEL_6;
          }

LABEL_8:
          v21 = *(v0 + 88);
          *(v0 + 16) = *(v0 + 72);
          *(v0 + 32) = v21;
          *(v0 + 48) = *(v0 + 104);
          *(v0 + 64) = *(v0 + 120);
          v22 = sub_22FE42954();
        }

        while ((v23 & 1) != 0 || v22);
      }

      while (!*(v0 + 40));
      v24 = *(v0 + 88);
    }

    else
    {
      v24 = 0;
    }

    sub_22FE3B738(0, v24, sub_22FE3CF14);
    v26 = v25;
    v27 = *(v0 + 296);
    v28 = *(v0 + 304);
    *(v2 + 16) = v5;
    *(v2 + 24) = v6;
    *(v2 + 32) = v8;
    *(v2 + 40) = v27;
    *(v2 + 48) = v28;
    *(v2 + 56) = v9;
    os_unfair_lock_unlock((v2 + 64));
    if (v26)
    {
      if (v26 == 1)
      {
LABEL_17:
        os_unfair_lock_lock((v3 + 24));
        v29 = *(v3 + 16);
        *(v3 + 16) = v29 + 1;
        os_unfair_lock_unlock((v3 + 24));
        v30 = swift_task_alloc();
        *(v0 + 608) = v30;
        v30[2] = v2;
        v30[3] = v3;
        v30[4] = v0 + 280;
        v30[5] = v29;
        v31 = swift_task_alloc();
        *(v0 + 616) = v31;
        v31[2] = v2;
        v31[3] = v3;
        v31[4] = v29;
        v12 = swift_task_alloc();
        *(v0 + 624) = v12;
        *v12 = v0;
        *(v12 + 8) = sub_22FE37EEC;
        v13 = &unk_22FE4F798;

        return MEMORY[0x282200830](v12, v13);
      }

      v32 = *(v0 + 280);
      v33 = *(v0 + 288);
      sub_22FDB4380(v32, v33);
      v34 = *(*(v26 + 64) + 40);
      *v34 = v32;
      v34[1] = v33;
      swift_continuation_throwingResume();
    }
  }

  v35 = *(v0 + 504);
  v36 = *(v0 + 512);

  return MEMORY[0x2822009F8](sub_22FE3804C, v35, v36);
}

void sub_22FE37EEC()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_22FE38034, 0, 0);
  }
}

uint64_t sub_22FE3804C()
{
  sub_22FDC27F0(v0[73], v0[74]);
  v0[71] = v0[75];
  v1 = v0[61];
  v2 = v0[62];
  v3 = v0[24];
  v4 = v0[25];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 21), v3);
  v5 = swift_task_alloc();
  v0[72] = v5;
  *v5 = v0;
  v5[1] = sub_22FE378BC;

  return MEMORY[0x282200310](v0 + 33, v1, v2, v0 + 40, v3, v4);
}

unint64_t *sub_22FE38138()
{
  (*(v0 + 544))(*(v0 + 480), *(v0 + 384));
  v1 = *(v0 + 320);
  __swift_destroy_boxed_opaque_existential_0((v0 + 168));
  __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  v2 = *(*(v0 + 360) + 16);
  os_unfair_lock_lock(v2 + 16);
  v3 = sub_22FE2BA64(v1);
  v5 = v4;
  os_unfair_lock_unlock(v2 + 16);
  if (!v3)
  {
LABEL_18:

    v17 = *(v0 + 8);

    return v17();
  }

  v6 = *(v3 + 2);
  v18 = v3;
  if (v6)
  {
    v7 = v3 + 32;

    do
    {
      if (*v7++)
      {
        swift_continuation_throwingResume();
      }

      --v6;
    }

    while (v6);
  }

  else
  {
  }

  v9 = *(v5 + 16);
  result = v1;
  if (!v9)
  {
LABEL_17:
    sub_22FE41B54(v18, v5, MEMORY[0x277D84FB8]);

    goto LABEL_18;
  }

  v11 = 0;
  while (v11 < *(v5 + 16))
  {
    if (*(v5 + 32 + 8 * v11))
    {
      *(v0 + 312) = v1;
      v14 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
      v15 = sub_22FE43C64();
      if (v15)
      {
        v12 = v15;
      }

      else
      {
        v12 = swift_allocError();
        *v16 = v1;
      }

      swift_allocError();
      *v13 = v12;
      result = swift_continuation_throwingResumeWithError();
    }

    if (v9 == ++v11)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FE383A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6)
{
  *(v6 + 180) = a5;
  *(v6 + 256) = a4;
  *(v6 + 264) = a6;
  *(v6 + 272) = *a4;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE4194C(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v8 = sub_22FE43374();
  *(v6 + 280) = v8;
  *(v6 + 288) = v7;

  return MEMORY[0x2822009F8](sub_22FE384BC, v8, v7);
}

uint64_t sub_22FE384BC()
{
  v1 = *(v0 + 180);
  v2 = *(v0 + 256);

  v3 = sub_22FE2CA74(v1);

  if (qword_28148B100 != -1)
  {
    swift_once();
  }

  v4 = sub_22FE42D34();
  __swift_project_value_buffer(v4, qword_28148B108);
  v5 = sub_22FE42D14();
  v6 = sub_22FE43694();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 180);
    v8 = swift_slowAlloc();
    *v8 = 67109376;
    *(v8 + 4) = v7;
    *(v8 + 8) = 2048;
    *(v8 + 10) = v3;
    _os_log_impl(&dword_22FD6D000, v5, v6, "XPC %u: Reading message %ld", v8, 0x12u);
    MEMORY[0x23190C380](v8, -1, -1);
  }

  *(v0 + 296) = *(v2 + 48);

  v9 = swift_task_alloc();
  *(v0 + 304) = v9;
  *v9 = v0;
  v9[1] = sub_22FE3868C;
  v10 = *(v0 + 180);

  return sub_22FE2CC8C(v0 + 232, v10);
}

uint64_t sub_22FE3868C()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_22FE388F8;
  }

  else
  {

    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_22FE387A8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_22FE387A8()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 272);
  if (v1 >> 60 == 15)
  {
    *(v0 + 56) = *(v2 + 80);
    *(v0 + 184) = 0;
    *(v0 + 192) = 0;
    *(v0 + 200) = 3;
    v3 = *(v2 + 112);
    *(v0 + 72) = *(v2 + 96);
    *(v0 + 88) = v3;
    type metadata accessor for XPCMessageCenter.XPCResponse(0, v0 + 56);
    swift_getWitnessTable();
    sub_22FE42E64();
  }

  else
  {
    *(v0 + 208) = *(v0 + 232);
    *(v0 + 216) = v1;
    *(v0 + 224) = 1;
    v4 = *(v2 + 112);
    v5 = *(v2 + 96);
    *(v0 + 96) = *(v2 + 80);
    *(v0 + 112) = v5;
    *(v0 + 128) = v4;
    type metadata accessor for XPCMessageCenter.XPCResponse(0, v0 + 96);
    swift_getWitnessTable();
    sub_22FE42E64();
    sub_22FE28D40(*(v0 + 208), *(v0 + 216), *(v0 + 224));
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_22FE388F8()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 272);

  swift_getErrorValue();
  sub_22FE43C74();
  v3 = *(v2 + 112);
  v4 = *(v2 + 80);
  v5 = *(v2 + 96);
  *(v0 + 160) = 0;
  *(v0 + 168) = 0xE000000000000000;
  *(v0 + 176) = 2;
  *(v0 + 16) = v4;
  *(v0 + 32) = v5;
  *(v0 + 48) = v3;
  type metadata accessor for XPCMessageCenter.XPCResponse(0, v0 + 16);
  swift_getWitnessTable();
  sub_22FE42E64();

  sub_22FE28D40(*(v0 + 160), *(v0 + 168), *(v0 + 176));
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_22FE38A30(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22FD842A0;

  return v6(a1);
}

void sub_22FE38B64(uint64_t a1)
{
  v2 = sub_22FE38E78();
  v3 = sub_22FE38E80(v10, a1, 0, 1, v2);
  v4 = *(a1 + 16);
  v5 = v10[0];
  if (v10[0] != v4)
  {
    if (v10[0] < 0)
    {
      __break(1u);
    }

    else if (v4 >= v10[0])
    {
      v6 = v3;
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140) - 8);
      v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      sub_22FE3AAC4(a1, a1 + v8, 0, (2 * v5) | 1);
      v10[1] = v6;
      v10[2] = v9;
      if (*(a1 + 16) >= v4)
      {
        sub_22FE40A4C(a1 + v8, v5, (2 * v4) | 1);

        return;
      }

LABEL_9:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_22FE38CB8(uint64_t a1, uint64_t (*a2)(void), void (*a3)(BOOL, uint64_t, uint64_t), uint64_t *a4, uint64_t *a5)
{
  v9 = a2();
  v10 = sub_22FE38FEC(v15, a1, 0, 1, v9, a3);
  v11 = *(a1 + 16);
  v12 = v15[0];
  if (v15[0] != v11)
  {
    if (v15[0] < 0)
    {
      __break(1u);
    }

    else if (v11 >= v15[0])
    {
      v13 = v10;
      sub_22FE3AC7C(a1, a1 + 32, 0, (2 * v15[0]) | 1, a4, a5);
      v15[1] = v13;
      v15[2] = v14;
      if (*(a1 + 16) >= v11)
      {
        sub_22FE40FA4(a1 + 32, v12, (2 * v11) | 1, a3);

        return;
      }

LABEL_9:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_22FE38DB0(uint64_t a1)
{
  v2 = sub_22FE38E78();
  v3 = sub_22FE390D8(v8, a1, 0, 1, v2);
  v4 = *(a1 + 16);
  v5 = v8[0];
  if (v8[0] != v4)
  {
    if (v8[0] < 0)
    {
      __break(1u);
    }

    else if (v4 >= v8[0])
    {
      v6 = v3;
      sub_22FE3AD44(a1, a1 + 32, 0, (2 * v8[0]) | 1);
      v8[1] = v6;
      v8[2] = v7;
      if (*(a1 + 16) >= v4)
      {
        sub_22FE40DDC(a1 + 32, v5, (2 * v4) | 1);

        return;
      }

LABEL_9:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_22FE38E80(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  v10 = MEMORY[0x23190A5B0](*(a2 + 16));
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v11;
  }

  if (v12 > 4)
  {
    v14 = MEMORY[0x23190A5C0]();
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140) - 8);
    sub_22FE3AE30(a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v8, (v14 + 16), v14 + 32);
    *a1 = v16;
    return v14;
  }

  else if (v8 >= 2)
  {
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140) - 8);
    v18 = sub_22FE391BC(a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v8);
    result = 0;
    *a1 = v18;
  }

  else
  {
    result = 0;
    *a1 = v8;
  }

  return result;
}

uint64_t sub_22FE38FEC(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void (*a6)(BOOL, uint64_t, uint64_t))
{
  v10 = *(a2 + 16);
  if (a4)
  {
    v11 = 0;
  }

  else
  {
    v11 = a3;
  }

  v12 = MEMORY[0x23190A5B0](*(a2 + 16));
  if (v12 <= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= a5)
  {
    v14 = a5;
  }

  else
  {
    v14 = v13;
  }

  if (v14 > 4)
  {
    v16 = MEMORY[0x23190A5C0]();
    sub_22FE3B164(a2 + 32, v10, (v16 + 16), v16 + 32);
    *a1 = v17;
    return v16;
  }

  else if (v10 >= 2)
  {
    v18 = sub_22FE394F4(a2 + 32, v10, a6);
    result = 0;
    *a1 = v18;
  }

  else
  {
    result = 0;
    *a1 = v10;
  }

  return result;
}

uint64_t sub_22FE390D8(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  v10 = MEMORY[0x23190A5B0](*(a2 + 16));
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v11;
  }

  if (v12 > 4)
  {
    v14 = MEMORY[0x23190A5C0]();
    sub_22FE3B2DC(a2 + 32, v8, (v14 + 16), v14 + 32);
    *a1 = v15;
    return v14;
  }

  else if (v8 >= 2)
  {
    v16 = sub_22FE39634(a2 + 32, v8);
    result = 0;
    *a1 = v16;
  }

  else
  {
    result = 0;
    *a1 = v8;
  }

  return result;
}

uint64_t sub_22FE391BC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140);
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v30 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (v27 - v8);
  MEMORY[0x28223BE20](v10);
  v12 = v27 - v11;
  v36 = MEMORY[0x277D84F90];
  result = sub_22FD925D8(0, a2 & ~(a2 >> 63), 0);
  v14 = v36;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v27[1] = v2;
      v28 = a1;
      v15 = 0;
      v29 = a2;
      v34 = v12;
      while (!__OFADD__(v15, 1))
      {
        v31 = v15;
        v32 = v15 + 1;
        v33 = *(v35 + 72);
        result = sub_22FD764B4(a1 + v33 * v15, v12, &qword_27DAE4130, &qword_22FE4A140);
        v16 = -*(v14 + 16);
        v17 = -1;
        v18 = v14;
        while (v16 + v17 != -1)
        {
          ++v17;
          v19 = v34;
          if (v17 >= *(v14 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          v20 = v18 + v33;
          sub_22FD764B4(v18 + ((*(v35 + 80) + 32) & ~*(v35 + 80)), v9, &qword_27DAE4130, &qword_22FE4A140);
          v21 = *v19;
          v22 = *v9;
          result = sub_22FD93E6C(v9, &qword_27DAE4130, &qword_22FE4A140);
          v18 = v20;
          if (v21 == v22)
          {
            sub_22FD93E6C(v34, &qword_27DAE4130, &qword_22FE4A140);

            return v31;
          }
        }

        v12 = v34;
        v23 = v30;
        sub_22FD764B4(v34, v30, &qword_27DAE4130, &qword_22FE4A140);
        v36 = v14;
        v25 = *(v14 + 16);
        v24 = *(v14 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_22FD925D8((v24 > 1), v25 + 1, 1);
          v14 = v36;
        }

        sub_22FD93E6C(v12, &qword_27DAE4130, &qword_22FE4A140);
        *(v14 + 16) = v25 + 1;
        result = sub_22FD93E04(v23, v14 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + v25 * v33, &qword_27DAE4130, &qword_22FE4A140);
        v15 = v32;
        a1 = v28;
        v26 = v29;
        if (v32 == v29)
        {

          return v26;
        }
      }

LABEL_16:
      __break(1u);
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_22FE394F4(uint64_t a1, uint64_t a2, void (*a3)(BOOL, uint64_t, uint64_t))
{
  v16 = MEMORY[0x277D84F90];
  a3(0, a2 & ~(a2 >> 63), 0);
  result = v16;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      for (i = 0; ; ++i)
      {
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v9 = *(a1 + 16 * i);
        v10 = *(result + 16);
        v11 = v10 + 1;
        v12 = 32;
        while (--v11)
        {
          v13 = *(result + v12);
          v12 += 16;
          if (*(a1 + 16 * i) == v13)
          {

            return i;
          }
        }

        v17 = result;
        v14 = *(result + 24);
        if (v10 >= v14 >> 1)
        {
          v15 = *(a1 + 16 * i);
          a3(v14 > 1, v10 + 1, 1);
          v9 = v15;
          result = v17;
        }

        *(result + 16) = v10 + 1;
        *(result + 16 * v10 + 32) = v9;
        if (v8 == a2)
        {

          return a2;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_22FE39634(uint64_t a1, uint64_t a2)
{
  v19 = MEMORY[0x277D84F90];
  result = sub_22FD92678(0, a2 & ~(a2 >> 63), 0);
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      for (i = 0; ; ++i)
      {
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v7 = (a1 + 32 * i);
        v8 = *v7;
        v9 = *(v7 + 2);
        v10 = *(v7 + 3);
        v11 = *v7;
        v12 = *(v19 + 16) + 1;
        v13 = 32;
        while (--v12)
        {
          v14 = *(v19 + v13);
          v13 += 32;
          if (v11 == v14)
          {

            return i;
          }
        }

        v18 = v8;
        result = sub_22FDE65C8(v9, v10);
        v16 = *(v19 + 16);
        v15 = *(v19 + 24);
        if (v16 >= v15 >> 1)
        {
          result = sub_22FD92678((v15 > 1), v16 + 1, 1);
        }

        *(v19 + 16) = v16 + 1;
        v17 = v19 + 32 * v16;
        *(v17 + 32) = v18;
        *(v17 + 48) = v9;
        *(v17 + 56) = v10;
        if (v6 == a2)
        {

          return a2;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_22FE39794(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4[1];
  v6 = (v5 + 32);
  v7 = *(v5 + 16);
  if (*v4)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;
    v11 = a4;
    sub_22FE3A88C(a1, a2, a3, a4, v6, v7, (*v4 + 16), *v4 + 32);
    if (v13)
    {
      v14 = v12;
      a4 = v11;
      a3 = v10;
      a2 = v9;
      a1 = v8;
LABEL_9:
      sub_22FE39B54(a1, a2, a3, a4, v14);
      return 1;
    }
  }

  else
  {
    if (!v7)
    {
LABEL_8:
      v14 = 0;
      goto LABEL_9;
    }

    v15 = 0;
    while (1)
    {
      v16 = *v6;
      v6 += 4;
      if (v16 == a1)
      {
        break;
      }

      if (v7 == ++v15)
      {
        goto LABEL_8;
      }
    }
  }

  return 0;
}

uint64_t sub_22FE39850(uint64_t a1, uint64_t a2)
{
  v3 = v2[1];
  v4 = (v3 + 32);
  v5 = *(v3 + 16);
  if (*v2)
  {
    v6 = a1;
    v7 = a2;
    sub_22FE3A9A8(a1, a2, v4, v5, (*v2 + 16), *v2 + 32);
    if (v9)
    {
      a2 = v7;
      a1 = v6;
LABEL_9:
      sub_22FE39D50(a1, a2, v8, sub_22FD92698);
      return 1;
    }
  }

  else
  {
    if (!v5)
    {
LABEL_8:
      v8 = 0;
      goto LABEL_9;
    }

    v10 = 0;
    while (1)
    {
      v11 = *v4;
      v4 += 2;
      if (v11 == a1)
      {
        break;
      }

      if (v5 == ++v10)
      {
        goto LABEL_8;
      }
    }
  }

  return 0;
}

uint64_t sub_22FE39904(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  sub_22FD764B4(a1, &v17 - v6, &qword_27DAE4130, &qword_22FE4A140);
  v8 = v2 + 1;
  v9 = v2[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[1] = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22FD925D8(0, *(v9 + 16) + 1, 1);
    v9 = *v8;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    sub_22FD925D8((v11 > 1), v12 + 1, 1);
    v9 = *v8;
  }

  *(v9 + 16) = v12 + 1;
  result = sub_22FD93E04(v7, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, &qword_27DAE4130, &qword_22FE4A140);
  v2[1] = v9;
  v14 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    if (MEMORY[0x23190A580](*(v14 + 16) & 0x3FLL) > v12)
    {
      result = swift_isUniquelyReferenced_native();
      v15 = *v2;
      if ((result & 1) == 0)
      {
        if (!v15)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v16 = sub_22FE429A4();

        *v2 = v16;
        v15 = v16;
      }

      if (v15)
      {
        return sub_22FE42944();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v12 < 0xF)
  {
    return result;
  }

  return sub_22FE39F74(sub_22FE3A12C);
}

uint64_t sub_22FE39B54(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = v5 + 1;
  v11 = v5[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[1] = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22FD92678(0, *(v11 + 16) + 1, 1);
    v11 = *v10;
  }

  v14 = *(v11 + 16);
  v13 = *(v11 + 24);
  if (v14 >= v13 >> 1)
  {
    sub_22FD92678((v13 > 1), v14 + 1, 1);
    v11 = *v10;
  }

  *(v11 + 16) = v14 + 1;
  v15 = (v11 + 32 * v14);
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = a3;
  v15[7] = a4;
  v5[1] = v11;
  v16 = *v5;
  if (*v5)
  {
    swift_beginAccess();
    if (MEMORY[0x23190A580](*(v16 + 16) & 0x3FLL) > v14)
    {
      sub_22FDE65C8(a3, a4);
      result = swift_isUniquelyReferenced_native();
      v18 = *v5;
      if ((result & 1) == 0)
      {
        if (!v18)
        {
LABEL_18:
          __break(1u);
          return result;
        }

        v19 = sub_22FE429A4();

        *v5 = v19;
        v18 = v19;
      }

      if (v18)
      {
        return sub_22FE42944();
      }

      __break(1u);
      goto LABEL_18;
    }

LABEL_13:
    sub_22FDE65C8(a3, a4);
    return sub_22FE39F74(sub_22FE3A1D4);
  }

  if (v14 >= 0xF)
  {
    goto LABEL_13;
  }

  return sub_22FDE65C8(a3, a4);
}

uint64_t sub_22FE39D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(BOOL, uint64_t, uint64_t))
{
  v6 = v4;
  v11 = v4[1];
  v9 = v4 + 1;
  v10 = v11;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v9 = v11;
  if ((result & 1) == 0)
  {
    result = a4(0, *(v10 + 16) + 1, 1);
    v10 = *v9;
  }

  v14 = *(v10 + 16);
  v13 = *(v10 + 24);
  if (v14 >= v13 >> 1)
  {
    result = a4(v13 > 1, v14 + 1, 1);
    v10 = *v9;
  }

  *(v10 + 16) = v14 + 1;
  v15 = v10 + 16 * v14;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  v6[1] = v10;
  v16 = *v6;
  if (*v6)
  {
    swift_beginAccess();
    if (MEMORY[0x23190A580](*(v16 + 16) & 0x3FLL) > v14)
    {
      result = swift_isUniquelyReferenced_native();
      v17 = *v6;
      if ((result & 1) == 0)
      {
        if (!v17)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v18 = sub_22FE429A4();

        *v6 = v18;
        v17 = v18;
      }

      if (v17)
      {
        return sub_22FE42944();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v14 < 0xF)
  {
    return result;
  }

  return sub_22FE39ED4();
}

uint64_t sub_22FE39ED4()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  v4 = *(v3 + 16);
  if (v2 || v4 >= 0x10)
  {
    v6 = MEMORY[0x23190A5B0](v4);
    if (v2 <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v2;
    }

    v5 = sub_22FE3A0AC(v3, v7, 0, v2);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
  return result;
}

uint64_t sub_22FE39F74(void (*a1)(uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    v4 = *(v3 + 24) & 0x3FLL;
  }

  else
  {
    v4 = 0;
  }

  v5 = v1[1];
  v6 = *(v5 + 16);
  if (v4 || v6 >= 0x10)
  {
    v8 = MEMORY[0x23190A5B0](v6);
    if (v4 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    v7 = sub_22FE3A024(v5, v9, 0, v4, a1);
  }

  else
  {
    v7 = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_22FE3A024(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 16);
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  v10 = MEMORY[0x23190A5B0](v8, a2);
  result = 0;
  if (v10 <= v9)
  {
    v10 = v9;
  }

  if (v10 <= a4)
  {
    v10 = a4;
  }

  if (v10 >= 5)
  {
    v12 = MEMORY[0x23190A5C0](v10, a4);
    a5(a1, v12 + 16, v12 + 32);
    return v12;
  }

  return result;
}

uint64_t sub_22FE3A0AC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x23190A5B0](v6, a2);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x23190A5C0](v8, a4);
    sub_22FE3A224(a1, (v10 + 16), v10 + 32);
    return v10;
  }

  return result;
}

void sub_22FE3A274(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v31 = a4;
  v32 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140) - 8;
  MEMORY[0x28223BE20](v6);
  v9 = (&v27 - v8);
  v40 = a2;
  if (a2)
  {
    if ((v40 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v11 = *(v7 + 72);
      v29 = &v27 - v8;
      v30 = v11;
      v12 = &qword_27DAE4130;
      v28 = a3;
      while (1)
      {
        sub_22FD764B4(v32 + v30 * v10, v9, v12, &qword_22FE4A140);
        sub_22FE43DB4();
        MEMORY[0x23190B9F0](*v9);
        v13 = sub_22FE43E04();
        v14 = 1 << *a3;
        v15 = __OFSUB__(v14, 1);
        v16 = v14 - 1;
        if (v15)
        {
          break;
        }

        v17 = v16 & v13;
        v18 = v31;
        v19 = sub_22FE42924();
        v20 = v12;
        v22 = v21;
        v24 = v23;
        v25 = v9;
        v26 = v20;
        sub_22FD93E6C(v25, v20, &qword_22FE4A140);
        v33 = a3;
        v34 = v18;
        v35 = v17;
        v36 = v19;
        v37 = v22;
        v38 = v24;
        v39 = 0;
        while (v36)
        {
          sub_22FE42974();
        }

        sub_22FE42964();
        ++v10;
        v12 = v26;
        a3 = v28;
        v9 = v29;
        if (v10 == v40)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_22FE3A45C(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = result;
      v7 = 0;
      while (1)
      {
        v8 = *(v6 + 32 * v7);
        sub_22FE43DB4();
        MEMORY[0x23190B9F0](v8);
        result = sub_22FE43E04();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        if (sub_22FE42924())
        {
          while (1)
          {
            sub_22FE42974();
          }
        }

        result = sub_22FE42964();
        if (++v7 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22FE3A568(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = result;
      v7 = 0;
      while (1)
      {
        v8 = *(v6 + 16 * v7);
        sub_22FE43DB4();
        MEMORY[0x23190B9F0](v8);
        result = sub_22FE43E04();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        if (sub_22FE42924())
        {
          while (1)
          {
            sub_22FE42974();
          }
        }

        result = sub_22FE42964();
        if (++v7 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22FE3A674(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (v30 - v11);
  sub_22FE43DB4();
  v13 = *a1;
  MEMORY[0x23190B9F0](*a1);
  result = sub_22FE43E04();
  v15 = 1 << *a4;
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v18 = v17 & result;
    v19 = sub_22FE42924();
    *&v32 = a4;
    *(&v32 + 1) = a5;
    *&v33 = v18;
    *(&v33 + 1) = v19;
    *&v34 = v20;
    *(&v34 + 1) = v21;
    v35 = 0;
    v22 = sub_22FE42954();
    v23 = v22;
    if ((v24 & 1) == 0)
    {
      v25 = *(v10 + 72);
      sub_22FD764B4(a2 + v25 * v22, v12, &qword_27DAE4130, &qword_22FE4A140);
      v26 = *v12;
      sub_22FD93E6C(v12, &qword_27DAE4130, &qword_22FE4A140);
      if (v26 != v13)
      {
        do
        {
          sub_22FE42974();
          v30[1] = v32;
          v30[2] = v33;
          v30[3] = v34;
          v31 = v35;
          v27 = sub_22FE42954();
          v23 = v27;
          if (v28)
          {
            break;
          }

          sub_22FD764B4(a2 + v25 * v27, v12, &qword_27DAE4130, &qword_22FE4A140);
          v29 = *v12;
          sub_22FD93E6C(v12, &qword_27DAE4130, &qword_22FE4A140);
        }

        while (v29 != v13);
      }
    }

    return v23;
  }

  return result;
}

uint64_t sub_22FE3A88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  sub_22FE43DB4();
  MEMORY[0x23190B9F0](a1);
  result = sub_22FE43E04();
  if (__OFSUB__(1 << *a7, 1))
  {
    __break(1u);
  }

  else
  {
    sub_22FE42924();
    result = sub_22FE42954();
    if ((v12 & 1) == 0 && *(a5 + 32 * result) != a1)
    {
      do
      {
        sub_22FE42974();
        result = sub_22FE42954();
      }

      while ((v13 & 1) == 0 && *(a5 + 32 * result) != a1);
    }
  }

  return result;
}

uint64_t sub_22FE3A9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_22FE43DB4();
  MEMORY[0x23190B9F0](a1);
  result = sub_22FE43E04();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_22FE42924();
    result = sub_22FE42954();
    if ((v10 & 1) == 0 && *(a3 + 16 * result) != a1)
    {
      do
      {
        sub_22FE42974();
        result = sub_22FE42954();
      }

      while ((v11 & 1) == 0 && *(a3 + 16 * result) != a1);
    }
  }

  return result;
}

void sub_22FE3AAC4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4128, &unk_22FE4FC70);
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_22FE3AC7C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v7)
  {
    if (v7 < 1)
    {
      v10 = MEMORY[0x277D84F90];
      if (v6 != a3)
      {
LABEL_7:
        memcpy(v10 + 4, (a2 + 16 * a3), 16 * v7);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v12 = v11 - 32;
      if (v11 < 32)
      {
        v12 = v11 - 17;
      }

      v10[2] = v7;
      v10[3] = 2 * (v12 >> 4);
      if (v6 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_22FE3AD44(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40B8, &qword_22FE4FBA0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40B0, &qword_22FE4FC00);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 1;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 5);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_22FE3AE30(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v33 = a4;
  v48 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140);
  v34 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = (&v30 - v11);
  if (a2)
  {
    if (a2 < 0)
    {
LABEL_16:
      __break(1u);
    }

    else
    {
      v30 = v4;
      v13 = 0;
      v32 = a2;
      v31 = a3;
      while (1)
      {
        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

        v35 = v13 + 1;
        v14 = *(v34 + 72);
        v39 = v13;
        v15 = v48 + v14 * v13;
        sub_22FD764B4(v15, v12, &qword_27DAE4130, &qword_22FE4A140);
        sub_22FE43DB4();
        MEMORY[0x23190B9F0](*v12);
        v16 = sub_22FE43E04();
        v17 = 1 << *a3;
        v18 = __OFSUB__(v17, 1);
        v19 = v17 - 1;
        if (v18)
        {
          goto LABEL_15;
        }

        v20 = v19 & v16;
        v21 = v33;
        v38 = sub_22FE42924();
        v37 = v22;
        v36 = v23;
        sub_22FD93E6C(v12, &qword_27DAE4130, &qword_22FE4A140);
        *&v40 = a3;
        *(&v40 + 1) = v21;
        *&v41 = v20;
        *(&v41 + 1) = v38;
        *&v42 = v37;
        *(&v42 + 1) = v36;
        v43 = 0;
        v47 = 0;
        v44 = v40;
        v45 = v41;
        v46 = v42;
        v24 = sub_22FE42954();
        v25 = v48;
        if ((v26 & 1) == 0)
        {
          break;
        }

LABEL_4:
        sub_22FE42964();
        v13 = v35;
        a3 = v31;
        if (v35 == v32)
        {
          return;
        }
      }

      while (1)
      {
        sub_22FD764B4(v25 + v24 * v14, v12, &qword_27DAE4130, &qword_22FE4A140);
        sub_22FD764B4(v15, v9, &qword_27DAE4130, &qword_22FE4A140);
        v27 = *v12;
        sub_22FD93E6C(v12, &qword_27DAE4130, &qword_22FE4A140);
        v28 = *v9;
        sub_22FD93E6C(v9, &qword_27DAE4130, &qword_22FE4A140);
        if (v27 == v28)
        {
          break;
        }

        sub_22FE42974();
        v44 = v40;
        v45 = v41;
        v46 = v42;
        v47 = v43;
        v24 = sub_22FE42954();
        if (v29)
        {
          goto LABEL_4;
        }
      }
    }
  }
}

uint64_t sub_22FE3B164(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = 0;
  while (2)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    v9 = (v6 + 16 * v7);
    v10 = *v9;
    sub_22FE43DB4();
    MEMORY[0x23190B9F0](v10);
    result = sub_22FE43E04();
    if (__OFSUB__(1 << *a3, 1))
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    sub_22FE42924();
    while (1)
    {
      v11 = sub_22FE42954();
      if (v12)
      {
        break;
      }

      if (*(v6 + 16 * v11) == *v9)
      {
        return 0;
      }

      sub_22FE42974();
    }

    result = sub_22FE42964();
    ++v7;
    if (v8 != a2)
    {
      continue;
    }

    return 1;
  }
}

uint64_t sub_22FE3B2DC(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = 0;
  while (2)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    v9 = (v6 + 32 * v7);
    v10 = *v9;
    sub_22FE43DB4();
    MEMORY[0x23190B9F0](v10);
    result = sub_22FE43E04();
    if (__OFSUB__(1 << *a3, 1))
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    sub_22FE42924();
    while (1)
    {
      v11 = sub_22FE42954();
      if (v12)
      {
        break;
      }

      if (*(v6 + 32 * v11) == *v9)
      {
        return 0;
      }

      sub_22FE42974();
    }

    result = sub_22FE42964();
    ++v7;
    if (v8 != a2)
    {
      continue;
    }

    return 1;
  }
}

uint64_t sub_22FE3B454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3[1];
  v7 = *(v6 + 16);
  v8 = *v3;
  if (!*v3)
  {
    if (!v7)
    {
      goto LABEL_16;
    }

    return sub_22FE3B888(a1, a3);
  }

  swift_beginAccess();
  if ((*(v8 + 16) & 0x3FLL) == (*(v8 + 24) & 0x3FLL))
  {
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else if (v7 <= MEMORY[0x23190A590]())
  {
LABEL_16:
    sub_22FE3B888(a1, a3);
    return sub_22FE39F74(sub_22FE3A12C);
  }

  result = swift_isUniquelyReferenced_native();
  v11 = *v3;
  if ((result & 1) == 0)
  {
    if (!v11)
    {
      goto LABEL_20;
    }

    v12 = sub_22FE429A4();

    *v3 = v12;
    v11 = v12;
  }

  if (v11)
  {

    result = sub_22FE3BEA0(a2, (v11 + 16), v11 + 32, v3);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_22FE3C17C(a1, a1 + 1, v6, (v11 + 16), v11 + 32);

      return sub_22FE3B888(a1, a3);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_22FE3B5CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = v3[1];
  v7 = *(v6 + 16);
  v8 = *v3;
  if (!*v3)
  {
    if (!v7)
    {
      goto LABEL_16;
    }

    return sub_22FE3B9C8(a1, a3);
  }

  swift_beginAccess();
  if ((*(v8 + 16) & 0x3FLL) == (*(v8 + 24) & 0x3FLL))
  {
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else if (v7 <= MEMORY[0x23190A590]())
  {
LABEL_16:
    sub_22FE3B9C8(a1, a3);
    return sub_22FE39F74(sub_22FE3A1D4);
  }

  result = swift_isUniquelyReferenced_native();
  v11 = *v3;
  if ((result & 1) == 0)
  {
    if (!v11)
    {
      goto LABEL_20;
    }

    v12 = sub_22FE429A4();

    *v3 = v12;
    v11 = v12;
  }

  if (v11)
  {
    result = sub_22FE3BCC0(a2, (v11 + 16), v11 + 32, v3);
    v13 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (v13 >= a1)
    {
      sub_22FE3C6D0(a1, v13, v6, (v11 + 16), v11 + 32);
      return sub_22FE3B9C8(a1, a3);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_22FE3B738(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = v3[1];
  v7 = *(v6 + 16);
  v8 = *v3;
  if (!*v3)
  {
    if (!v7)
    {
      goto LABEL_16;
    }

    return sub_22FE3BA50(a1, a3);
  }

  swift_beginAccess();
  if ((*(v8 + 16) & 0x3FLL) == (*(v8 + 24) & 0x3FLL))
  {
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else if (v7 <= MEMORY[0x23190A590]())
  {
LABEL_16:
    v14 = sub_22FE3BA50(a1, a3);
    sub_22FE39ED4();
    return v14;
  }

  result = swift_isUniquelyReferenced_native();
  v11 = *v3;
  if ((result & 1) == 0)
  {
    if (!v11)
    {
      goto LABEL_20;
    }

    v12 = sub_22FE429A4();

    *v3 = v12;
    v11 = v12;
  }

  if (v11)
  {
    result = sub_22FE3BAE0(a2, (v11 + 16), v11 + 32, v3);
    v13 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (v13 >= a1)
    {
      sub_22FE3CAC0(a1, v13, v6, (v11 + 16), v11 + 32);
      return sub_22FE3BA50(a1, a3);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_22FE3B888@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22FE3CED8(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_22FD93E04(v11, a2, &qword_27DAE4130, &qword_22FE4A140);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22FE3B9C8@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22FE3CF00(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = &v5[4 * a1];
    v9 = *(v8 + 3);
    v10 = v7 - 1;
    *a2 = *(v8 + 2);
    a2[1] = v9;
    result = memmove(v8 + 4, v8 + 8, 32 * (v7 - 1 - a1));
    v5[2] = v10;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22FE3BA50(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 16 * a1;
    v10 = *(v9 + 32);
    memmove((v9 + 32), (v9 + 48), 16 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    return v10;
  }

  return result;
}

unint64_t sub_22FE3BAE0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v15 = sub_22FE42924();
  sub_22FE42974();
  if (v15)
  {
    v7 = sub_22FE42934();
    while (1)
    {
      result = sub_22FE42954();
      if (v9)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v10 = *(a4 + 8);
      if (result >= *(v10 + 16))
      {
        goto LABEL_18;
      }

      v11 = *(v10 + 16 * result + 32);
      sub_22FE43DB4();
      MEMORY[0x23190B9F0](v11);
      result = sub_22FE43E04();
      v12 = 1 << *a2;
      if (__OFSUB__(v12, 1))
      {
        goto LABEL_19;
      }

      v13 = (v12 - 1) & result;
      if (v6 >= v7)
      {
        break;
      }

      if (v13 < v7)
      {
        goto LABEL_12;
      }

LABEL_13:
      sub_22FE42954();
      v6 = a1;
      sub_22FE42944();
LABEL_3:
      sub_22FE42974();
    }

    if (v13 < v7)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (v6 < v13)
    {
      goto LABEL_3;
    }

    goto LABEL_13;
  }

  return sub_22FE42944();
}

unint64_t sub_22FE3BCC0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v15 = sub_22FE42924();
  sub_22FE42974();
  if (v15)
  {
    v7 = sub_22FE42934();
    while (1)
    {
      result = sub_22FE42954();
      if (v9)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v10 = *(a4 + 8);
      if (result >= *(v10 + 16))
      {
        goto LABEL_18;
      }

      v11 = *(v10 + 32 * result + 32);
      sub_22FE43DB4();
      MEMORY[0x23190B9F0](v11);
      result = sub_22FE43E04();
      v12 = 1 << *a2;
      if (__OFSUB__(v12, 1))
      {
        goto LABEL_19;
      }

      v13 = (v12 - 1) & result;
      if (v6 >= v7)
      {
        break;
      }

      if (v13 < v7)
      {
        goto LABEL_12;
      }

LABEL_13:
      sub_22FE42954();
      v6 = a1;
      sub_22FE42944();
LABEL_3:
      sub_22FE42974();
    }

    if (v13 < v7)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (v6 < v13)
    {
      goto LABEL_3;
    }

    goto LABEL_13;
  }

  return sub_22FE42944();
}

unint64_t sub_22FE3BEA0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = (&v21 - v9);
  v11 = sub_22FE42924();
  *&v23 = a2;
  *(&v23 + 1) = a3;
  *&v24 = a1;
  *(&v24 + 1) = v11;
  *&v25 = v12;
  *(&v25 + 1) = v13;
  v26 = 0;
  sub_22FE42974();
  if (*(&v24 + 1))
  {
    v21 = a3;
    v14 = sub_22FE42934();
    while (1)
    {
      v31 = v23;
      v32 = v24;
      v33 = v25;
      v34 = v26;
      result = sub_22FE42954();
      if (v16)
      {
LABEL_21:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v17 = *(v22 + 8);
      if (result >= *(v17 + 16))
      {
        goto LABEL_19;
      }

      sub_22FD764B4(v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * result, v10, &qword_27DAE4130, &qword_22FE4A140);
      sub_22FE43DB4();
      MEMORY[0x23190B9F0](*v10);
      v18 = sub_22FE43E04();
      result = sub_22FD93E6C(v10, &qword_27DAE4130, &qword_22FE4A140);
      v19 = 1 << *a2;
      if (__OFSUB__(v19, 1))
      {
        goto LABEL_20;
      }

      v20 = (v19 - 1) & v18;
      if (a1 >= v14)
      {
        if (v20 < v14)
        {
          goto LABEL_3;
        }
      }

      else if (v20 >= v14)
      {
        goto LABEL_13;
      }

      if (a1 >= v20)
      {
LABEL_13:
        v27 = v23;
        v28 = v24;
        v29 = v25;
        v30 = v26;
        sub_22FE42954();
        a1 = v28;
        sub_22FE42944();
      }

LABEL_3:
      sub_22FE42974();
      if (!*(&v24 + 1))
      {
        return sub_22FE42944();
      }
    }
  }

  return sub_22FE42944();
}

void sub_22FE3C17C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v59 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (&v58 - v15);
  v17 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v17 >= 1)
  {
    v18 = *(v59 + 16);
    if (a1 >= (v18 - v17) / 2)
    {
      if (__OFSUB__(v18, a2))
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      if ((v18 - a2) >= MEMORY[0x23190A580](*a4 & 0x3FLL, v14) / 3)
      {
LABEL_51:
        v53 = sub_22FE42924();
        *&v66 = a4;
        *(&v66 + 1) = a5;
        *&v67 = 0;
        *(&v67 + 1) = v53;
        *&v68 = v54;
        *(&v68 + 1) = v55;
        v69 = 0;
        while (1)
        {
          v62 = v66;
          v63 = v67;
          v64 = v68;
          v65 = v69;
          v56 = sub_22FE42954();
          if ((v57 & 1) == 0 && v56 >= a2)
          {
            if (__OFSUB__(v56, v17))
            {
              goto LABEL_59;
            }

            sub_22FE42964();
          }

          sub_22FE42974();
          if (!v67)
          {
            return;
          }
        }
      }

      if (v18 < a2)
      {
        goto LABEL_69;
      }

      if (a2 < 0)
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      if (v18 != a2)
      {
        if (v18 <= a2)
        {
LABEL_71:
          __break(1u);
          return;
        }

        v61 = v59 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
        v60 = *(v10 + 72);

        v35 = &qword_27DAE4130;
        while (1)
        {
          v36 = v35;
          sub_22FD764B4(v61 + v60 * a2, v12, v35, &qword_22FE4A140);
          sub_22FE43DB4();
          MEMORY[0x23190B9F0](*v12);
          v37 = sub_22FE43E04();
          v38 = 1 << *a4;
          v23 = __OFSUB__(v38, 1);
          v39 = v38 - 1;
          if (v23)
          {
            goto LABEL_60;
          }

          v40 = v39 & v37;
          v41 = sub_22FE42924();
          *&v62 = a4;
          *(&v62 + 1) = a5;
          *&v63 = v40;
          *(&v63 + 1) = v41;
          *&v64 = v42;
          *(&v64 + 1) = v43;
          v65 = 0;
          while (*(&v63 + 1))
          {
            v66 = v62;
            v67 = v63;
            v68 = v64;
            v69 = v65;
            v44 = sub_22FE42954();
            if ((v45 & 1) == 0 && v44 == a2)
            {
              break;
            }

            sub_22FE42974();
          }

          v46 = a2 + 1;
          v47 = __OFADD__(a2, 1);
          if (__OFSUB__(a2, v17))
          {
            goto LABEL_61;
          }

          sub_22FE42964();
          v35 = v36;
          sub_22FD93E6C(v12, v36, &qword_22FE4A140);
          if (v47)
          {
            goto LABEL_62;
          }

          ++a2;
          if (v46 == v18)
          {

            return;
          }
        }
      }
    }

    else
    {
      if (MEMORY[0x23190A580](*a4 & 0x3FLL, v14) / 3 <= a1)
      {
        v48 = sub_22FE42924();
        *&v66 = a4;
        *(&v66 + 1) = a5;
        *&v67 = 0;
        *(&v67 + 1) = v48;
        *&v68 = v49;
        *(&v68 + 1) = v50;
        v69 = 0;
        while (1)
        {
          v62 = v66;
          v63 = v67;
          v64 = v68;
          v65 = v69;
          v51 = sub_22FE42954();
          if ((v52 & 1) == 0 && v51 < a1)
          {
            if (__OFADD__(v51, v17))
            {
              __break(1u);
              goto LABEL_51;
            }

            sub_22FE42964();
          }

          sub_22FE42974();
          if (!v67)
          {
            goto LABEL_18;
          }
        }
      }

      if (a1 < 0)
      {
        goto LABEL_67;
      }

      if (v18 < a1)
      {
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      if (a1)
      {
        v61 = v59 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
        v19 = *(v10 + 72);

        v20 = 0;
        while (1)
        {
          sub_22FD764B4(v61 + v19 * v20, v16, &qword_27DAE4130, &qword_22FE4A140);
          sub_22FE43DB4();
          MEMORY[0x23190B9F0](*v16);
          v21 = sub_22FE43E04();
          v22 = 1 << *a4;
          v23 = __OFSUB__(v22, 1);
          v24 = v22 - 1;
          if (v23)
          {
            break;
          }

          v25 = v24 & v21;
          v26 = sub_22FE42924();
          *&v62 = a4;
          *(&v62 + 1) = a5;
          *&v63 = v25;
          *(&v63 + 1) = v26;
          *&v64 = v27;
          *(&v64 + 1) = v28;
          v65 = 0;
          while (*(&v63 + 1))
          {
            v66 = v62;
            v67 = v63;
            v68 = v64;
            v69 = v65;
            v29 = sub_22FE42954();
            if ((v30 & 1) == 0 && v29 == v20)
            {
              break;
            }

            sub_22FE42974();
          }

          if (__OFADD__(v20, v17))
          {
            goto LABEL_58;
          }

          ++v20;
          sub_22FE42964();
          sub_22FD93E6C(v16, &qword_27DAE4130, &qword_22FE4A140);
          if (v20 == a1)
          {

            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

LABEL_18:
      v31 = a4[1];
      if (__OFSUB__(v31 >> 6, v17))
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v32 = 1 << *a4;
      v23 = __OFSUB__(v32, 1);
      v33 = v32 - 1;
      if (v23)
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v34 = (v33 & (((v31 >> 6) - v17) >> 63)) + (v31 >> 6) - v17;
      if (v34 < v33)
      {
        v33 = 0;
      }

      a4[1] = a4[1] & 0x3FLL | ((v34 - v33) << 6);
    }
  }
}

uint64_t sub_22FE3C6D0(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_54;
  }

  if (v6 >= 1)
  {
    v9 = result;
    v10 = *(a3 + 16);
    if (result < (v10 - v6) / 2)
    {
      result = MEMORY[0x23190A580](*a4 & 0x3FLL);
      if (result / 3 > v9)
      {
        if (v9 < 0)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        if (v10 < v9)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        if (v9)
        {
          v11 = 0;
          while (1)
          {
            v12 = *(a3 + 32 + 32 * v11);
            sub_22FE43DB4();
            MEMORY[0x23190B9F0](v12);
            result = sub_22FE43E04();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_22FE42924())
            {
              while (1)
              {
                v13 = sub_22FE42954();
                if ((v14 & 1) == 0 && v13 == v11)
                {
                  break;
                }

                sub_22FE42974();
              }
            }

            result = v11 + v6;
            if (__OFADD__(v11, v6))
            {
              goto LABEL_51;
            }

            ++v11;
            result = sub_22FE42964();
            if (v11 == v9)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        goto LABEL_17;
      }

      sub_22FE42924();
      v21 = sub_22FE42954();
      if ((v22 & 1) != 0 || v21 >= v9)
      {
LABEL_29:
        result = sub_22FE42974();
LABEL_17:
        v15 = a4[1];
        if (__OFSUB__(v15 >> 6, v6))
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        v16 = 1 << *a4;
        v17 = __OFSUB__(v16, 1);
        v18 = v16 - 1;
        if (v17)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v19 = (v18 & (((v15 >> 6) - v6) >> 63)) + (v15 >> 6) - v6;
        if (v19 < v18)
        {
          v18 = 0;
        }

        a4[1] = a4[1] & 0x3FLL | ((v19 - v18) << 6);
        return result;
      }

      if (!__OFADD__(v21, v6))
      {
        sub_22FE42964();
        goto LABEL_29;
      }

      __break(1u);
LABEL_35:
      sub_22FE42924();
      v23 = sub_22FE42954();
      if ((v24 & 1) == 0 && v23 >= v5)
      {
        v17 = __OFSUB__(v23, v6);
        result = v23 - v6;
        if (v17)
        {
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        sub_22FE42964();
      }

      return sub_22FE42974();
    }

    v5 = a2;
    v20 = v10 - a2;
    if (__OFSUB__(v10, a2))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    result = MEMORY[0x23190A580](*a4 & 0x3FLL);
    if (v20 >= result / 3)
    {
      goto LABEL_35;
    }

    if (v10 < v5)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    if (v5 < 0)
    {
LABEL_61:
      __break(1u);
      return result;
    }

    if (v10 != v5)
    {
      while (1)
      {
        v25 = *(a3 + 32 + 32 * v5);
        sub_22FE43DB4();
        MEMORY[0x23190B9F0](v25);
        result = sub_22FE43E04();
        if (__OFSUB__(1 << *a4, 1))
        {
          break;
        }

        if (sub_22FE42924())
        {
          while (1)
          {
            v26 = sub_22FE42954();
            if ((v27 & 1) == 0 && v26 == v5)
            {
              break;
            }

            sub_22FE42974();
          }
        }

        result = sub_22FE42964();
        if (++v5 == v10)
        {
          return result;
        }
      }

      goto LABEL_53;
    }
  }

  return result;
}

uint64_t sub_22FE3CAC0(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v6 >= 1)
  {
    v9 = result;
    v10 = *(a3 + 16);
    if (result < (v10 - v6) / 2)
    {
      result = MEMORY[0x23190A580](*a4 & 0x3FLL);
      if (result / 3 > v9)
      {
        if (v9 < 0)
        {
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        if (v10 < v9)
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        if (v9)
        {
          v11 = 0;
          while (1)
          {
            v12 = *(a3 + 32 + 16 * v11);
            sub_22FE43DB4();
            MEMORY[0x23190B9F0](v12);
            result = sub_22FE43E04();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_22FE42924())
            {
              while (1)
              {
                v13 = sub_22FE42954();
                if ((v14 & 1) == 0 && v13 == v11)
                {
                  break;
                }

                sub_22FE42974();
              }
            }

            result = v11 + v6;
            if (__OFADD__(v11, v6))
            {
              goto LABEL_55;
            }

            ++v11;
            result = sub_22FE42964();
            if (v11 == v9)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        goto LABEL_17;
      }

      sub_22FE42924();
      v26 = sub_22FE42954();
      if ((v27 & 1) != 0 || v26 >= v9)
      {
LABEL_42:
        result = sub_22FE42974();
LABEL_17:
        v15 = a4[1];
        if (__OFSUB__(v15 >> 6, v6))
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v16 = 1 << *a4;
        v17 = __OFSUB__(v16, 1);
        v18 = v16 - 1;
        if (v17)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v19 = (v18 & (((v15 >> 6) - v6) >> 63)) + (v15 >> 6) - v6;
        if (v19 < v18)
        {
          v18 = 0;
        }

        a4[1] = a4[1] & 0x3FLL | ((v19 - v18) << 6);
        return result;
      }

      if (!__OFADD__(v26, v6))
      {
        sub_22FE42964();
        goto LABEL_42;
      }

      __break(1u);
LABEL_48:
      sub_22FE42924();
      v28 = sub_22FE42954();
      if ((v29 & 1) == 0 && v28 >= v5)
      {
        v17 = __OFSUB__(v28, v6);
        result = v28 - v6;
        if (v17)
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        sub_22FE42964();
      }

      return sub_22FE42974();
    }

    v5 = a2;
    v20 = v10 - a2;
    if (__OFSUB__(v10, a2))
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    result = MEMORY[0x23190A580](*a4 & 0x3FLL);
    if (v20 >= result / 3)
    {
      goto LABEL_48;
    }

    if (v10 < v5)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (v5 < 0)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if (v10 != v5)
    {
      if (v10 <= v5)
      {
LABEL_68:
        __break(1u);
        return result;
      }

      while (1)
      {
        v21 = *(a3 + 32 + 16 * v5);
        sub_22FE43DB4();
        MEMORY[0x23190B9F0](v21);
        result = sub_22FE43E04();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_57;
        }

        if (sub_22FE42924())
        {
          while (1)
          {
            v22 = sub_22FE42954();
            if ((v23 & 1) == 0 && v22 == v5)
            {
              break;
            }

            sub_22FE42974();
          }
        }

        v24 = v5 + 1;
        v25 = __OFADD__(v5, 1);
        result = v5 - v6;
        if (__OFSUB__(v5, v6))
        {
          goto LABEL_58;
        }

        result = sub_22FE42964();
        if (v25)
        {
          goto LABEL_59;
        }

        ++v5;
        if (v24 == v10)
        {
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_22FE3CF28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v22 - v8);
  v10 = *v3;
  sub_22FE43DB4();
  v26 = *a1;
  MEMORY[0x23190B9F0]();
  v11 = sub_22FE43E04();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v22 = v3;
    v23 = v7;
    v24 = v6;
    v25 = a2;
    v14 = ~v12;
    v15 = *(v7 + 72);
    while (1)
    {
      sub_22FD764B4(*(v10 + 48) + v15 * v13, v9, &qword_27DAE4130, &qword_22FE4A140);
      v16 = *v9;
      sub_22FD93E6C(v9, &qword_27DAE4130, &qword_22FE4A140);
      if (v16 == v26)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v17 = 1;
        a2 = v25;
        goto LABEL_10;
      }
    }

    v18 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v18;
    v27[0] = *v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22FE3D4EC();
      v20 = v27[0];
    }

    a2 = v25;
    sub_22FD93E04(*(v20 + 48) + v15 * v13, v25, &qword_27DAE4130, &qword_22FE4A140);
    sub_22FE3ED90(v13);
    v17 = 0;
    *v18 = v27[0];
LABEL_10:
    v7 = v23;
    v6 = v24;
  }

  else
  {
    v17 = 1;
  }

  return (*(v7 + 56))(a2, v17, 1, v6);
}

uint64_t sub_22FE3D154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  sub_22FE43DB4();
  MEMORY[0x23190B9F0](a1);
  result = sub_22FE43E04();
  v7 = -1 << *(v5 + 32);
  v8 = result & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 32 * v8) != a1)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v2;
    v14 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22FE3D714();
      v11 = v14;
    }

    v12 = (*(v11 + 48) + 32 * v8);
    v13 = v12[1];
    *a2 = *v12;
    *(a2 + 16) = v13;
    result = sub_22FE3F064(v8);
    *v2 = v14;
  }

  else
  {
LABEL_5:
    *a2 = xmmword_22FE4F930;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
  }

  return result;
}

uint64_t sub_22FE3D270(uint64_t a1)
{
  v3 = *v1;
  sub_22FE43DB4();
  MEMORY[0x23190B9F0](a1);
  v4 = sub_22FE43E04();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 16 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22FE3D878();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 16 * v6);
  sub_22FE3F210(v6);
  result = v11;
  *v1 = v12;
  return result;
}

void *sub_22FE3D390()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4228, &qword_22FE4A728);
  v2 = *v0;
  v3 = sub_22FE43894();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

  return result;
}

void *sub_22FE3D4EC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140);
  v22 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE5428, &unk_22FE4FC60);
  v5 = *v0;
  v6 = sub_22FE43894();
  v7 = v6;
  if (*(v5 + 16))
  {
    v21 = v1;
    result = (v6 + 56);
    v9 = v5 + 56;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 56), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    v14 = *(v5 + 56);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = *(v22 + 72) * (v17 | (v11 << 6));
        sub_22FD764B4(*(v5 + 48) + v20, v4, &qword_27DAE4130, &qword_22FE4A140);
        result = sub_22FD93E04(v4, *(v7 + 48) + v20, &qword_27DAE4130, &qword_22FE4A140);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v21;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_22FE3D714()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE53F8, &qword_22FE4FBA8);
  v2 = *v0;
  v3 = sub_22FE43894();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *(v18 + 16);
        v20 = *(v18 + 24);
        v21 = *(v4 + 48) + v17;
        *v21 = *v18;
        *(v21 + 16) = v19;
        *(v21 + 24) = v20;
        result = sub_22FDE65C8(v19, v20);
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

      v16 = *(v2 + 56 + 8 * v8);
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

  return result;
}

void *sub_22FE3D878()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5418, &qword_22FE4FC38);
  v2 = *v0;
  v3 = sub_22FE43894();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

  return result;
}

uint64_t sub_22FE3D9BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4228, &qword_22FE4A728);
  result = sub_22FE438A4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_22FE43DB4();

      sub_22FE430D4();
      result = sub_22FE43E04();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22FE3DBF4(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140);
  v29 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v31 = (&v27 - v4);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE5428, &unk_22FE4FC60);
  result = sub_22FE438A4();
  v7 = result;
  if (*(v5 + 16))
  {
    v28 = v1;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v5 + 48);
      v30 = *(v29 + 72);
      v19 = v31;
      sub_22FD764B4(v18 + v30 * (v15 | (v8 << 6)), v31, &qword_27DAE4130, &qword_22FE4A140);
      sub_22FE43DB4();
      MEMORY[0x23190B9F0](*v19);
      result = sub_22FE43E04();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = sub_22FD93E04(v31, *(v7 + 48) + v14 * v30, &qword_27DAE4130, &qword_22FE4A140);
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_22FE3DEEC(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE53F8, &qword_22FE4FBA8);
  result = sub_22FE438A4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 32 * (v13 | (v5 << 6)));
      v24 = v16[1];
      v25 = *v16;
      sub_22FE43DB4();
      MEMORY[0x23190B9F0](v25);
      result = sub_22FE43E04();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v10 + 8 * v19);
          if (v23 != -1)
          {
            v11 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 32 * v11);
      *v12 = v25;
      v12[1] = v24;
      ++*(v4 + 16);
      result = sub_22FDE65C8(v24, *(&v24 + 1));
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_22FE3E118(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5418, &qword_22FE4FC38);
  result = sub_22FE438A4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_22FE43DB4();
      MEMORY[0x23190B9F0](v18);
      result = sub_22FE43E04();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22FE3E344(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4228, &qword_22FE4A728);
  result = sub_22FE438A4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_22FE43DB4();
      sub_22FE430D4();
      result = sub_22FE43E04();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22FE3E5A4(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140);
  v33 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = (&v31 - v4);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE5428, &unk_22FE4FC60);
  result = sub_22FE438A4();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v1;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = v7;
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = *(v5 + 48);
      v34 = *(v33 + 72);
      v21 = v35;
      sub_22FD93E04(v20 + v34 * (v17 | (v8 << 6)), v35, &qword_27DAE4130, &qword_22FE4A140);
      sub_22FE43DB4();
      v22 = *v21;
      v7 = v16;
      MEMORY[0x23190B9F0](v22);
      result = sub_22FE43E04();
      v23 = -1 << *(v16 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_22FD93E04(v35, *(v16 + 48) + v15 * v34, &qword_27DAE4130, &qword_22FE4A140);
      ++*(v16 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v16 = v7;
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v5 + 32);
    if (v30 >= 64)
    {
      bzero(v9, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    v2 = v32;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_22FE3E8D8(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE53F8, &qword_22FE4FBA8);
  result = sub_22FE438A4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 32 * (v14 | (v5 << 6)));
      v26 = v17[1];
      v27 = *v17;
      sub_22FE43DB4();
      MEMORY[0x23190B9F0](v27);
      result = sub_22FE43E04();
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 32 * v12);
      *v13 = v27;
      v13[1] = v26;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_22FE3EB34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5418, &qword_22FE4FC38);
  result = sub_22FE438A4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_22FE43DB4();
      MEMORY[0x23190B9F0](v19);
      result = sub_22FE43E04();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_22FE3ED90(int64_t a1)
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140);
  v3 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = (&v21 - v4);
  v5 = *v1;
  v6 = *v1 + 56;
  v7 = -1 << *(*v1 + 32);
  v8 = (a1 + 1) & ~v7;
  if (((1 << v8) & *(v6 + 8 * (v8 >> 6))) != 0)
  {
    v9 = ~v7;

    v10 = sub_22FE43844();
    if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) != 0)
    {
      v11 = (v10 + 1) & v9;
      v12 = *(v3 + 72);
      v23 = v12;
      v24 = v6;
      while (1)
      {
        v13 = v12 * v8;
        v14 = v25;
        sub_22FD764B4(*(v5 + 48) + v12 * v8, v25, &qword_27DAE4130, &qword_22FE4A140);
        sub_22FE43DB4();
        MEMORY[0x23190B9F0](*v14);
        v15 = sub_22FE43E04();
        sub_22FD93E6C(v14, &qword_27DAE4130, &qword_22FE4A140);
        v16 = v15 & v9;
        if (a1 >= v11)
        {
          if (v16 < v11)
          {
            v12 = v23;
            goto LABEL_5;
          }

          v12 = v23;
          if (a1 < v16)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v12 = v23;
          if (v16 < v11 && a1 < v16)
          {
            goto LABEL_5;
          }
        }

        v17 = v12 * a1;
        if (v12 * a1 < v13 || *(v5 + 48) + v12 * a1 >= (*(v5 + 48) + v13 + v12))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_17;
        }

        a1 = v8;
        if (v17 != v13)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_17:
          a1 = v8;
        }

LABEL_5:
        v8 = (v8 + 1) & v9;
        if (((*(v24 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
        {

          v6 = v24;
          goto LABEL_21;
        }
      }
    }

LABEL_21:
    *(v6 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v6 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v18 = *(v5 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v20;
    ++*(v5 + 36);
  }
}

unint64_t sub_22FE3F064(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22FE43844();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v11 = *(*(v3 + 48) + 32 * v6);
        sub_22FE43DB4();
        MEMORY[0x23190B9F0](v11);
        v12 = sub_22FE43E04() & v7;
        if (v2 >= v9)
        {
          if (v12 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v12 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v12)
        {
LABEL_11:
          v13 = *(v3 + 48);
          v14 = (v13 + 32 * v2);
          v15 = (v13 + 32 * v6);
          if (v2 != v6 || v14 >= v15 + 2)
          {
            v10 = v15[1];
            *v14 = *v15;
            v14[1] = v10;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_22FE3F210(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22FE43844();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 16 * v6);
        sub_22FE43DB4();
        MEMORY[0x23190B9F0](v10);
        v11 = sub_22FE43E04() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_22FE3F3BC@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v42 = a3;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140);
  v7 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v9 = (&v41 - v8);
  v10 = *v3;
  sub_22FE43DB4();
  v43 = a1;
  v11 = *a1;
  MEMORY[0x23190B9F0](*a1);
  v12 = sub_22FE43E04();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  v15 = *(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14;
  v44 = v3;
  v45 = v7;
  if (v15)
  {
    LODWORD(v47) = a2;
    v16 = ~v13;
    v17 = *(v7 + 72);
    while (1)
    {
      sub_22FD764B4(*(v10 + 48) + v17 * v14, v9, &qword_27DAE4130, &qword_22FE4A140);
      v18 = *v9;
      sub_22FD93E6C(v9, &qword_27DAE4130, &qword_22FE4A140);
      v19 = v18 == v11;
      v20 = v18 != v11;
      if (v19)
      {
        break;
      }

      v14 = (v14 + 1) & v16;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v4 = v44;
        v7 = v45;
        LOBYTE(a2) = v47;
        v21 = 1;
        goto LABEL_8;
      }
    }

    v21 = 0;
    v4 = v44;
    v7 = v45;
    LOBYTE(a2) = v47;
  }

  else
  {
    v20 = 1;
    v21 = 1;
  }

LABEL_8:
  v22 = *(v10 + 16);
  v23 = v22 + v21;
  if (__OFADD__(v22, v21))
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v24 = *(v10 + 24);
  if (v24 >= v23 && (a2 & 1) != 0)
  {
    if (!v20)
    {
LABEL_12:
      v25 = *(v7 + 72) * v14;
LABEL_27:
      v39 = *v4;
      v38 = v42;
      sub_22FD93E04(*(*v4 + 48) + v25, v42, &qword_27DAE4130, &qword_22FE4A140);
      sub_22FD93E04(v43, *(v39 + 48) + v25, &qword_27DAE4130, &qword_22FE4A140);
      v37 = 0;
      return (*(v7 + 56))(v38, v37, 1, v41);
    }

    goto LABEL_24;
  }

  if (a2)
  {
    sub_22FE3E5A4(v23);
  }

  else
  {
    if (v24 >= v23)
    {
      sub_22FE3D4EC();
      if (!v20)
      {
        goto LABEL_12;
      }

      goto LABEL_24;
    }

    sub_22FE3DBF4(v23);
  }

  v26 = *v4;
  sub_22FE43DB4();
  MEMORY[0x23190B9F0](v11);
  v27 = sub_22FE43E04();
  v28 = v26 + 56;
  v46 = v26 + 56;
  v47 = v26;
  v29 = -1 << *(v26 + 32);
  v14 = v27 & ~v29;
  if (((*(v28 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_23:
    v4 = v44;
    v7 = v45;
    if (!v20)
    {
      goto LABEL_31;
    }

LABEL_24:
    v33 = *v4;
    *(*v4 + 8 * (v14 >> 6) + 56) |= 1 << v14;
    sub_22FD93E04(v43, *(v33 + 48) + *(v7 + 72) * v14, &qword_27DAE4130, &qword_22FE4A140);
    v34 = *(v33 + 16);
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (!v35)
    {
      *(v33 + 16) = v36;
      v37 = 1;
      v38 = v42;
      return (*(v7 + 56))(v38, v37, 1, v41);
    }

    goto LABEL_30;
  }

  v30 = ~v29;
  v31 = *(v7 + 72);
  while (1)
  {
    v25 = v31 * v14;
    sub_22FD764B4(*(v47 + 48) + v31 * v14, v9, &qword_27DAE4130, &qword_22FE4A140);
    v32 = *v9;
    sub_22FD93E6C(v9, &qword_27DAE4130, &qword_22FE4A140);
    if (v32 == v11)
    {
      break;
    }

    v14 = (v14 + 1) & v30;
    if (((*(v46 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v4 = v44;
  v7 = v45;
  if (!v20)
  {
    goto LABEL_27;
  }

LABEL_31:
  result = sub_22FE43D04();
  __break(1u);
  return result;
}

uint64_t sub_22FE3F77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = *v6;
  sub_22FE43DB4();
  MEMORY[0x23190B9F0](a1);
  v13 = sub_22FE43E04();
  v14 = -1 << *(v12 + 32);
  v15 = v13 & ~v14;
  if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v17 = 1;
    while (1)
    {
      v18 = *(*(v12 + 48) + 32 * v15);
      v19 = v18 != a1;
      if (v18 == a1)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v17 = 0;
  }

  else
  {
    v19 = 1;
    v17 = 1;
  }

LABEL_8:
  v20 = *(v12 + 16);
  result = v20 + v17;
  if (__OFADD__(v20, v17))
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v22 = *(v12 + 24);
  if (v22 < result || (a5 & 1) == 0)
  {
    if (a5)
    {
      sub_22FE3E8D8(result);
    }

    else
    {
      if (v22 >= result)
      {
        result = sub_22FE3D714();
        if (!v19)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }

      sub_22FE3DEEC(result);
    }

    v23 = *v6;
    sub_22FE43DB4();
    MEMORY[0x23190B9F0](a1);
    result = sub_22FE43E04();
    v24 = -1 << *(v23 + 32);
    v15 = result & ~v24;
    if ((*(v23 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
    {
      v25 = ~v24;
      while (*(*(v23 + 48) + 32 * v15) != a1)
      {
        v15 = (v15 + 1) & v25;
        if (((*(v23 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      if (!v19)
      {
        goto LABEL_27;
      }
    }

    else
    {
LABEL_23:
      if (v19)
      {
LABEL_24:
        v26 = *v6;
        *(*v6 + 8 * (v15 >> 6) + 56) |= 1 << v15;
        v27 = (*(v26 + 48) + 32 * v15);
        *v27 = a1;
        v27[1] = a2;
        v27[2] = a3;
        v27[3] = a4;
        v28 = *(v26 + 16);
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (!v29)
        {
          *(v26 + 16) = v30;
          *a6 = xmmword_22FE4F930;
          *(a6 + 16) = 0;
          *(a6 + 24) = 0;
          return result;
        }

        goto LABEL_30;
      }
    }

LABEL_31:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40B8, &qword_22FE4FBA0);
    result = sub_22FE43D04();
    __break(1u);
    return result;
  }

  if (v19)
  {
    goto LABEL_24;
  }

LABEL_27:
  v31 = *(*v6 + 48) + 32 * v15;
  v32 = *(v31 + 16);
  *a6 = *v31;
  *(a6 + 16) = v32;
  *v31 = a1;
  *(v31 + 8) = a2;
  *(v31 + 16) = a3;
  *(v31 + 24) = a4;
  return result;
}

uint64_t sub_22FE3F9E8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *v3;
  sub_22FE43DB4();
  MEMORY[0x23190B9F0](a1);
  v8 = sub_22FE43E04();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = 1;
    while (1)
    {
      v13 = *(*(v7 + 48) + 16 * v10);
      v14 = v13 != a1;
      if (v13 == a1)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v12 = 0;
  }

  else
  {
    v14 = 1;
    v12 = 1;
  }

LABEL_8:
  v15 = *(v7 + 16);
  v16 = v15 + v12;
  if (__OFADD__(v15, v12))
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v17 = *(v7 + 24);
  if (v17 < v16 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22FE3EB34(v16);
    }

    else
    {
      if (v17 >= v16)
      {
        sub_22FE3D878();
        if (!v14)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }

      sub_22FE3E118(v16);
    }

    v18 = *v3;
    sub_22FE43DB4();
    MEMORY[0x23190B9F0](a1);
    v19 = sub_22FE43E04();
    v20 = -1 << *(v18 + 32);
    v10 = v19 & ~v20;
    if ((*(v18 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v21 = ~v20;
      while (*(*(v18 + 48) + 16 * v10) != a1)
      {
        v10 = (v10 + 1) & v21;
        if (((*(v18 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      if (!v14)
      {
        goto LABEL_27;
      }
    }

    else
    {
LABEL_23:
      if (v14)
      {
LABEL_24:
        v22 = *v3;
        *(*v3 + 8 * (v10 >> 6) + 56) |= 1 << v10;
        v23 = (*(v22 + 48) + 16 * v10);
        *v23 = a1;
        v23[1] = a2;
        v24 = *(v22 + 16);
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (!v25)
        {
          result = 0;
          *(v22 + 16) = v26;
          return result;
        }

        goto LABEL_30;
      }
    }

LABEL_31:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5410, &qword_22FE4FC30);
    result = sub_22FE43D04();
    __break(1u);
    return result;
  }

  if (v14)
  {
    goto LABEL_24;
  }

LABEL_27:
  v28 = (*(*v3 + 48) + 16 * v10);
  result = *v28;
  *v28 = a1;
  v28[1] = a2;
  return result;
}

unint64_t sub_22FE3FC24(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22FE43844() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x23190B990](*(a2 + 40), *v10, 4);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 4 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22FE3FDEC(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  *(v5 + 80) = a2;
  *(v5 + 88) = a5;
  *(v5 + 96) = *a4;
  return MEMORY[0x2822009F8](sub_22FE3FE14, 0, 0);
}

uint64_t sub_22FE3FE14()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v0[2] = v0;
  v0[3] = sub_22FD8AFE8;
  v5 = swift_continuation_init();
  sub_22FE40798(v5, v4, v2, v1, v3);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22FE3FECC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a3 + 16) <= a4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  v6 = *(a3 + 16 * a4 + 32);
  sub_22FE43DB4();
  MEMORY[0x23190B9F0](v6);
  result = sub_22FE43E04();
  v7 = 1 << *v5;
  v8 = __OFSUB__(v7, 1);
  v9 = v7 - 1;
  if (v8)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = v9 & result;
  v13 = sub_22FE42924();
  if (v13)
  {
    goto LABEL_7;
  }

LABEL_5:
  __break(1u);
  do
  {
    sub_22FE42974();
    if (!v13)
    {
      goto LABEL_5;
    }

LABEL_7:
    v10 = sub_22FE42954();
  }

  while ((v11 & 1) != 0 || v10 != a4);
  return v12;
}

void sub_22FE3FFE4(unint64_t *a1, os_unfair_lock_s *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4580, &qword_22FE4B9C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v25 - v5;
  os_unfair_lock_lock(a2 + 16);
  v7 = sub_22FE2B768(a1);
  v9 = v8;
  os_unfair_lock_unlock(a2 + 16);
  if (v7)
  {
    v10 = *(v7 + 2);
    if (v10)
    {
      v11 = v7 + 32;

      do
      {
        if (*v11++)
        {
          swift_continuation_throwingResume();
        }

        --v10;
      }

      while (v10);
    }

    else
    {
    }

    if (a1)
    {
      v25[0] = v7;
      v13 = *(v9 + 16);
      v14 = a1;
      if (v13)
      {
        v15 = 0;
        while (v15 < *(v9 + 16))
        {
          if (*(v9 + 32 + 8 * v15))
          {
            v25[1] = a1;
            v19 = a1;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
            v20 = sub_22FE43C64();
            if (v20)
            {
              v16 = v20;
            }

            else
            {
              v16 = swift_allocError();
              *v17 = a1;
            }

            swift_allocError();
            *v18 = v16;
            swift_continuation_throwingResumeWithError();
          }

          if (v13 == ++v15)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_18:
        sub_22FE41B54(v25[0], v9, MEMORY[0x277D84FB8]);
      }
    }

    else
    {
      v21 = *(v9 + 16);
      if (v21)
      {
        v22 = 32;
        do
        {
          v23 = *(v9 + v22);
          if (v23)
          {
            v24 = type metadata accessor for StoredPhoto(0);
            (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
            sub_22FD93E04(v6, *(*(v23 + 64) + 40), &qword_27DAE4580, &qword_22FE4B9C0);
            swift_continuation_throwingResume();
          }

          v22 += 8;
          --v21;
        }

        while (v21);
      }

      sub_22FE41B54(v7, v9, MEMORY[0x277D84FB8]);
    }
  }
}

void sub_22FE402C0(unint64_t *a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a2 + 16);
  v4 = sub_22FE2BA64(a1);
  v6 = v5;
  os_unfair_lock_unlock(a2 + 16);
  if (v4)
  {
    v7 = *(v4 + 2);
    if (v7)
    {
      v8 = v4 + 32;

      do
      {
        if (*v8++)
        {
          swift_continuation_throwingResume();
        }

        --v7;
      }

      while (v7);
    }

    else
    {
    }

    if (a1)
    {
      v10 = *(v6 + 16);
      v11 = a1;
      if (v10)
      {
        v12 = 0;
        while (v12 < *(v6 + 16))
        {
          if (*(v6 + 32 + 8 * v12))
          {
            v16 = a1;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
            v17 = sub_22FE43C64();
            if (v17)
            {
              v13 = v17;
            }

            else
            {
              v13 = swift_allocError();
              *v14 = a1;
            }

            swift_allocError();
            *v15 = v13;
            swift_continuation_throwingResumeWithError();
          }

          if (v10 == ++v12)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_18:
        sub_22FE41B54(v4, v6, MEMORY[0x277D84FB8]);
      }
    }

    else
    {
      v18 = *(v6 + 16);
      if (v18)
      {
        v19 = 32;
        do
        {
          v20 = *(v6 + v19);
          if (v20)
          {
            **(*(v20 + 64) + 40) = xmmword_22FE4BA20;
            swift_continuation_throwingResume();
          }

          v19 += 8;
          --v18;
        }

        while (v18);
      }

      sub_22FE41B54(v4, v6, MEMORY[0x277D84FB8]);
    }
  }
}

uint64_t sub_22FE40500(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a3 + 16) <= a4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  v6 = *(a3 + 32 * a4 + 32);
  sub_22FE43DB4();
  MEMORY[0x23190B9F0](v6);
  result = sub_22FE43E04();
  v7 = 1 << *v5;
  v8 = __OFSUB__(v7, 1);
  v9 = v7 - 1;
  if (v8)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = v9 & result;
  v13 = sub_22FE42924();
  if (v13)
  {
    goto LABEL_7;
  }

LABEL_5:
  __break(1u);
  do
  {
    sub_22FE42974();
    if (!v13)
    {
      goto LABEL_5;
    }

LABEL_7:
    v10 = sub_22FE42954();
  }

  while ((v11 & 1) != 0 || v10 != a4);
  return v12;
}

void sub_22FE40618(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4580, &qword_22FE4B9C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  os_unfair_lock_lock(a2 + 16);
  v11 = sub_22FE2ABD0(a1, a3, a4);
  os_unfair_lock_unlock(a2 + 16);
  if (v11 == 1)
  {

    swift_continuation_throwingResume();
  }

  else if (v11 != 2)
  {
    swift_continuation_throwingResume();
    if (v11)
    {
      sub_22FE41BB0(a3, v10);
      v12 = type metadata accessor for StoredPhoto(0);
      (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
      sub_22FD93E04(v10, *(*(v11 + 64) + 40), &qword_27DAE4580, &qword_22FE4B9C0);
      swift_continuation_throwingResume();
    }
  }
}

void sub_22FE40798(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  os_unfair_lock_lock(a2 + 16);
  v10 = sub_22FE2AFE0(a1, a3, a4, a5);
  os_unfair_lock_unlock(a2 + 16);
  if (v10 != 1)
  {
    if (v10 == 2)
    {
      return;
    }

    swift_continuation_throwingResume();
    if (!v10)
    {
      return;
    }

    sub_22FDB4380(a3, a4);
    v11 = *(*(v10 + 64) + 40);
    *v11 = a3;
    v11[1] = a4;
  }

  swift_continuation_throwingResume();
}

void sub_22FE40878(void *a1, os_unfair_lock_s *a2, uint64_t a3)
{
  os_unfair_lock_lock(a2 + 16);
  sub_22FE2BE28(a1, a3, &v16);
  os_unfair_lock_unlock(a2 + 16);
  v7 = v16;
  v6 = v17;
  v8 = v18;
  if (v19 > 1u)
  {
    if (v19 == 2)
    {
      if (v16)
      {
        sub_22FE41ACC(v16, v17, v18, 2);
        swift_continuation_throwingResume();
      }

      else
      {
        sub_22FE41ACC(0, v17, v18, 2);
      }

      v15 = *(a1[8] + 40);
      *v15 = v6;
      v15[1] = v8;
      swift_continuation_throwingResume();
      v10 = v7;
      v11 = v6;
      v12 = v8;
      v13 = 2;
    }

    else
    {
      sub_22FE41ACC(v16, v17, v18, 255);
      v10 = v7;
      v11 = v6;
      v12 = v8;
      v13 = -1;
    }
  }

  else if (v19)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
    swift_allocError();
    *v14 = v7;
    sub_22FE41ACC(v7, v6, v8, 1);
    swift_continuation_throwingResumeWithError();
    v10 = v16;
    v11 = v17;
    v12 = v18;
    v13 = v19;
  }

  else
  {
    sub_22FE41ACC(v16, v17, v18, 0);
    v9 = *(a1[8] + 40);
    *v9 = v7;
    v9[1] = v6;
    swift_continuation_throwingResume();
    v10 = v7;
    v11 = v6;
    v12 = v8;
    v13 = 0;
  }

  sub_22FE41B10(v10, v11, v12, v13);
}

void sub_22FE40A4C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v39 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140);
  v38 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = (&v35 - v11);
  v40 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return;
  }

  v13 = v40;
  if (a2 > v40)
  {
    v13 = a2;
  }

  v37 = v13;
  v36 = v4;
  v35 = &v35 - v11;
  while (a2 != v37)
  {
    v14 = v38;
    v15 = *(v38 + 72);
    v42 = a2;
    sub_22FD764B4(v39 + v15 * a2, v12, &qword_27DAE4130, &qword_22FE4A140);
    v17 = *v4;
    v16 = v4[1];
    v18 = v16 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    if (*v4)
    {
      sub_22FE43DB4();
      v19 = *v12;
      MEMORY[0x23190B9F0](v19);
      v20 = sub_22FE43E04();
      v21 = 1 << *(v17 + 16);
      v22 = __OFSUB__(v21, 1);
      v23 = v21 - 1;
      if (v22)
      {
        goto LABEL_24;
      }

      v24 = v23 & v20;
      v25 = sub_22FE42924();
      *&v51 = v17 + 16;
      *(&v51 + 1) = v17 + 32;
      *&v52 = v24;
      *(&v52 + 1) = v25;
      *&v53 = v26;
      *(&v53 + 1) = v27;
      v54 = 0;
      v28 = sub_22FE42954();
      LOBYTE(v24) = v29;
      v30 = v52;
      v43 = v51;
      v44 = v52;
      v45 = v53;
      v46 = v54;
      v41 = v17;

      if ((v24 & 1) == 0)
      {
        v31 = v28;
        v4 = v36;
        while (1)
        {
          sub_22FD764B4(v18 + v31 * v15, v9, &qword_27DAE4130, &qword_22FE4A140);
          v32 = *v9;
          sub_22FD93E6C(v9, &qword_27DAE4130, &qword_22FE4A140);
          if (v32 == v19)
          {
            break;
          }

          sub_22FE42974();
          v47 = v43;
          v48 = v44;
          v49 = v45;
          v50 = v46;
          v30 = v44;
          v31 = sub_22FE42954();
          if (v33)
          {
            goto LABEL_7;
          }
        }

        v12 = v35;
        goto LABEL_9;
      }

      v4 = v36;
LABEL_7:

      v12 = v35;
    }

    else
    {
      v30 = *(v16 + 16);
      if (v30)
      {
        do
        {
          sub_22FD764B4(v18, v9, &qword_27DAE4130, &qword_22FE4A140);
          v34 = *v9;
          sub_22FD93E6C(v9, &qword_27DAE4130, &qword_22FE4A140);
          if (v34 == *v12)
          {
            goto LABEL_9;
          }

          v18 += v15;
        }

        while (--v30);
      }
    }

    sub_22FE39904(v12, v30);
LABEL_9:
    a2 = v42 + 1;
    sub_22FD93E6C(v12, &qword_27DAE4130, &qword_22FE4A140);
    if (a2 == v40)
    {
      return;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_22FE40DDC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v23 = result;
  v4 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return result;
  }

  v5 = a2;
  v22 = a3 >> 1;
  while (v5 < v4)
  {
    v7 = (v23 + 32 * v5);
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[2];
    v11 = v7[3];
    v13 = *v3;
    v12 = v3[1];
    v14 = (v12 + 32);
    if (*v3)
    {
      sub_22FE43DB4();
      MEMORY[0x23190B9F0](v8);
      result = sub_22FE43E04();
      v15 = 1 << *(v13 + 16);
      v16 = __OFSUB__(v15, 1);
      v17 = v15 - 1;
      if (v16)
      {
        goto LABEL_20;
      }

      v24 = v17 & result;
      sub_22FE42924();
      result = sub_22FE42954();
      v6 = v24;
      if ((v18 & 1) == 0)
      {
        while (v14[4 * result] != v8)
        {
          sub_22FE42974();
          v6 = v24;
          result = sub_22FE42954();
          if (v19)
          {
            goto LABEL_5;
          }
        }

        goto LABEL_6;
      }
    }

    else
    {
      v20 = *(v12 + 16);
      if (v20)
      {
        do
        {
          v21 = *v14;
          v14 += 4;
          if (v21 == v8)
          {
            goto LABEL_7;
          }
        }

        while (--v20);
      }

      v6 = 0;
    }

LABEL_5:
    sub_22FDE65C8(v10, v11);
    sub_22FE39B54(v8, v9, v10, v11, v6);
    result = sub_22FDC27F0(v10, v11);
LABEL_6:
    v4 = v22;
LABEL_7:
    if (++v5 == v4)
    {
      return result;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_22FE40FA4(uint64_t result, uint64_t a2, unint64_t a3, uint64_t (*a4)(BOOL, uint64_t, uint64_t))
{
  v5 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return result;
  }

  v6 = a2;
  v7 = result;
  while (v6 < v5)
  {
    v9 = (v7 + 16 * v6);
    v10 = *v9;
    v11 = v9[1];
    v13 = *v4;
    v12 = v4[1];
    v14 = (v12 + 32);
    if (*v4)
    {
      sub_22FE43DB4();
      MEMORY[0x23190B9F0](v10);
      result = sub_22FE43E04();
      v15 = 1 << *(v13 + 16);
      v16 = __OFSUB__(v15, 1);
      v17 = v15 - 1;
      if (v16)
      {
        goto LABEL_19;
      }

      v23 = v17 & result;
      sub_22FE42924();
      result = sub_22FE42954();
      v8 = v23;
      if ((v18 & 1) == 0)
      {
        while (v14[2 * result] != v10)
        {
          sub_22FE42974();
          v8 = v23;
          result = sub_22FE42954();
          if (v19)
          {
            goto LABEL_5;
          }
        }

        goto LABEL_6;
      }
    }

    else
    {
      v20 = *(v12 + 16);
      if (v20)
      {
        do
        {
          v21 = *v14;
          v14 += 2;
          if (v21 == v10)
          {
            goto LABEL_6;
          }
        }

        while (--v20);
      }

      v8 = 0;
    }

LABEL_5:
    result = sub_22FE39D50(v10, v11, v8, a4);
LABEL_6:
    if (++v6 == v5)
    {
      return result;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

unint64_t sub_22FE412FC()
{
  result = qword_27DAE53F0;
  if (!qword_27DAE53F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE53F0);
  }

  return result;
}

uint64_t sub_22FE413A0(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v11[0] = v1[2];
  v3 = v11[0];
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  v11[4] = v7;
  type metadata accessor for XPCMessageCenter.XPCResponse(255, v11);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  v8 = *(sub_22FE433A4() - 8);
  v9 = v1 + ((*(v8 + 80) + 56) & ~*(v8 + 80));

  return sub_22FE34F08(a1, v9, v3, v4, v5, v6, v7);
}

uint64_t sub_22FE41490(uint64_t a1)
{
  v2 = v1[2];
  v4[1] = v1[1];
  v4[2] = v2;
  v4[3] = v1[3];
  v5 = a1;
  return sub_22FE29370(sub_22FE414E8, v4);
}

double sub_22FE41510@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[2];
  v6[1] = v2[1];
  v6[2] = v4;
  v6[3] = v2[3];
  v7 = a1;
  sub_22FE29564(sub_22FE41580, v6);
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_22FE415A8(uint64_t a1)
{
  v4 = *(sub_22FE42E84() - 8);
  v5 = (*(v4 + 80) + 84) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 72);
  v9 = *(v1 + 80);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22FD73F54;

  return sub_22FE383A0(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_22FE416B0(uint64_t a1)
{
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v6 = (v5 + 11) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v5);
  v11 = *(v1 + v6);
  v12 = *(v1 + v7);
  v13 = *(v1 + v7 + 8);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_22FD8C738;

  return sub_22FE36664(a1, v8, v9, v1 + v4, v10, v11, v12, v13);
}

uint64_t sub_22FE4186C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 != 1)
  {
    return sub_22FDC27F0(a3, a4);
  }

  return result;
}

uint64_t sub_22FE41884(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22FD8C738;

  return sub_22FE2ED10(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22FE4194C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_22FE419B4(id result, void *a2, unint64_t a3, char a4)
{
  if (result != 1)
  {
    return sub_22FE419D4(a2, a3, a4 & 1);
  }

  return result;
}

id sub_22FE419D4(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_22FDE65C8(a1, a2);
  }
}

void sub_22FE419E0(uint64_t result, void *a2, unint64_t a3, char a4)
{
  if (result != 1)
  {
    sub_22FE41A00(a2, a3, a4 & 1);
  }
}

void sub_22FE41A00(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_22FDC27F0(a1, a2);
  }
}

uint64_t sub_22FE41A0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FD73F54;

  return sub_22FE2C2CC(a1, v4, v5, v6);
}

id sub_22FE41ACC(id a1, unint64_t a2, unint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_22FE41AE0(a1, a2, a3, a4);
  }

  return a1;
}

id sub_22FE41AE0(id result, unint64_t a2, unint64_t a3, char a4)
{
  switch(a4)
  {
    case 2:
      return sub_22FDE65C8(a2, a3);
    case 1:
      return result;
    case 0:
      return sub_22FDE65C8(result, a2);
  }

  return result;
}

void sub_22FE41B10(void *a1, unint64_t a2, unint64_t a3, char a4)
{
  if (a4 != -1)
  {
    sub_22FE41B24(a1, a2, a3, a4);
  }
}

void sub_22FE41B24(void *a1, unint64_t a2, unint64_t a3, char a4)
{
  switch(a4)
  {
    case 2:
      sub_22FDC27F0(a2, a3);
      break;
    case 1:

      break;
    case 0:
      sub_22FDC27F0(a1, a2);
      break;
  }
}

uint64_t sub_22FE41B54(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (result)
  {
    (a3)();

    return a3(a2);
  }

  return result;
}

uint64_t sub_22FE41BB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoredPhoto(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FE41C14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22FD8C738;

  return sub_22FE2C164(a1, v4, v5, v7, v6);
}

uint64_t sub_22FE41D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10PhotosFace16XPCMessageCenterC11XPCResponseOyx_G(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_22FE41D7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22FE41DC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_22FE41E08(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_22FE41E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22FE41E64(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  result = swift_getTupleTypeMetadata2();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22FE41F00(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = ((*(*(AssociatedTypeWitness - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((*(*(AssociatedTypeWitness - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) == 0xFFFFFFFFFFFFFFF0)
  {
    v6 = 4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_27;
  }

  v7 = v6 | 1;
  if ((v6 | 1) <= 3)
  {
    v8 = ((a2 + 1) >> 8) + 1;
  }

  else
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v9 = 1;
  }

  if (v8 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = *&a1[v7];
      if (*&a1[v7])
      {
        goto LABEL_23;
      }
    }

    else
    {
      v11 = *&a1[v7];
      if (v11)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    v15 = a1[v6];
    if (v15 >= 2)
    {
      return (v15 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v10)
  {
    goto LABEL_27;
  }

  v11 = a1[v7];
  if (!a1[v7])
  {
    goto LABEL_27;
  }

LABEL_23:
  v13 = (v11 - 1) << (8 * v7);
  if (v7 <= 3)
  {
    v14 = *a1;
  }

  else
  {
    v13 = 0;
    v14 = *a1;
  }

  return (v14 | v13) + 255;
}

void sub_22FE42024(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = ((*(v7 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((*(v7 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) == 0xFFFFFFFFFFFFFFF0)
  {
    v8 = 4;
  }

  v9 = v8 | 1;
  if (a3 < 0xFF)
  {
    v12 = 0;
    if (a2 > 0xFE)
    {
      goto LABEL_16;
    }

LABEL_24:
    if (v12 > 1)
    {
      if (v12 != 2)
      {
        *&a1[v9] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      *&a1[v9] = 0;
    }

    else if (v12)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_34:
      a1[v8] = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v9 <= 3)
  {
    v10 = ((a3 + 1) >> 8) + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (a2 <= 0xFE)
  {
    goto LABEL_24;
  }

LABEL_16:
  v13 = a2 - 255;
  bzero(a1, v8 | 1);
  if (v9 <= 3)
  {
    v14 = (v13 >> 8) + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v9 <= 3)
  {
    *a1 = v13;
    if (v12 > 1)
    {
LABEL_21:
      if (v12 == 2)
      {
        *&a1[v9] = v14;
      }

      else
      {
        *&a1[v9] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v12 > 1)
    {
      goto LABEL_21;
    }
  }

  if (v12)
  {
    a1[v9] = v14;
  }
}

unint64_t sub_22FE421D4()
{
  result = qword_27DAE55B0;
  if (!qword_27DAE55B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE55B0);
  }

  return result;
}

unint64_t sub_22FE422A0()
{
  result = qword_27DAE55C0[0];
  if (!qword_27DAE55C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DAE55C0);
  }

  return result;
}
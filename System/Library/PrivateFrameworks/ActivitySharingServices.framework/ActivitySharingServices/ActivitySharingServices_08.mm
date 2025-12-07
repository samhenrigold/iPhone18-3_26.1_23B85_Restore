uint64_t sub_221F5B5CC()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_221F5B658()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_221F5B830;
  }

  else
  {
    v2 = sub_221F5B76C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F5B76C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 64);

  (*(v4 + 8))(v3, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_221F5B830()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 64);

  (*(v4 + 8))(v3, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_221F5B8EC(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v3[26] = type metadata accessor for IDSErrorAction(0);
  v3[27] = swift_task_alloc();
  v4 = sub_221FB5C38();
  v3[28] = v4;
  v3[29] = *(v4 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F5B9F8, 0, 0);
}

uint64_t sub_221F5B9F8()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = sub_221FB61D8();
  v0[33] = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD00000000000009BLL, 0x8000000221FC3BB0, 0xD00000000000002CLL, 0x8000000221FC3C50);
  v3 = __swift_project_boxed_opaque_existential_0Tm(v1 + 5, v1[8]);
  v4 = v1[10];
  v0[34] = v4;
  v5 = *v3;
  v0[2] = v0;
  v0[7] = v0 + 43;
  v0[3] = sub_221F5BBC0;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221FA909C;
  v0[13] = &block_descriptor_26;
  v0[14] = v6;
  [v5 fetchAllChangesWithPriority:2 activity:0 group:v4 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221F5BBC0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = sub_221F5C2C0;
  }

  else
  {
    v2 = sub_221F5BCD0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

id sub_221F5BCD0()
{
  v46 = v0;
  v1 = sub_221FB60E8();
  v3 = v2;
  v4 = sub_221FB62E8();
  v5 = ASContactForIncomingHandshakeTokenWithManager();
  v0[36] = v5;

  if (v5)
  {
    v6 = [v5 relationshipStorage];
    v7 = [v6 secureCloudRelationship];
    v0[37] = v7;

    v8 = [v7 receivedInvitation];
    v0[38] = v8;
    if (v8)
    {
      v9 = v8;
      v44 = v7;
      v11 = v0[31];
      v10 = v0[32];
      v13 = v0[28];
      v12 = v0[29];
      v14 = v0[24];
      v15 = [v8 uniqueID];
      sub_221FB5C18();

      v16 = [v14 uniqueID];
      sub_221FB5C18();

      LOBYTE(v16) = sub_221FB5C08();
      v17 = *(v12 + 8);
      v0[39] = v17;
      v0[40] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v17(v11, v13);
      v17(v10, v13);
      if (v16)
      {
        if (([v44 isAwaitingInviteResponse] & 1) == 0)
        {
          v18 = v44;
          v19 = sub_221FB61B8();
          v20 = sub_221FB65A8();

          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            v22 = swift_slowAlloc();
            *v21 = 138412290;
            *(v21 + 4) = v18;
            *v22 = v18;
            v23 = v18;
            _os_log_impl(&dword_221E93000, v19, v20, "Received withdraw request but not waiting for user response. Continuing with withdraw: %@", v21, 0xCu);
            sub_221EA0558(v22);
            MEMORY[0x223DADA80](v22, -1, -1);
            MEMORY[0x223DADA80](v21, -1, -1);
          }
        }

        sub_221EA4AB4(v0[25] + 176, (v0 + 18));
        __swift_project_boxed_opaque_existential_0Tm(v0 + 18, v0[21]);
        result = [v44 UUID];
        if (result)
        {
          v25 = result;

          sub_221FB5C18();

          v26 = swift_task_alloc();
          v0[41] = v26;
          *v26 = v0;
          v26[1] = sub_221F5C35C;
          v27 = v0[34];
          v28 = v0[30];

          return sub_221EF560C(v28, 3, v27);
        }

        else
        {
          __break(1u);
        }

        return result;
      }

      v7 = v44;
    }

    v34 = sub_221FB61B8();
    v35 = sub_221FB65A8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_221E93000, v34, v35, "Received withdraw request for invitation that doesn't match the current invitation.", v36, 2u);
      MEMORY[0x223DADA80](v36, -1, -1);
    }

    v37 = v0[1];
  }

  else
  {

    v29 = sub_221FB61B8();
    v30 = sub_221FB65A8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v45 = v32;
      *v31 = 136315138;
      v33 = sub_221EF4114(v1, v3, &v45);

      *(v31 + 4) = v33;
      _os_log_impl(&dword_221E93000, v29, v30, "Unable to handle withdraw request, no relationship for handshake token %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x223DADA80](v32, -1, -1);
      MEMORY[0x223DADA80](v31, -1, -1);
    }

    else
    {
    }

    v38 = v0[27];
    swift_storeEnumTagMultiPayload();
    sub_221EA4994();
    v39 = swift_allocError();
    *v40 = 26;
    v41 = type metadata accessor for IDSError(0);
    sub_221F5C6DC(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
    swift_allocError();
    v43 = v42;
    sub_221EA4A40(v38, v42);
    *(v43 + *(v41 + 20)) = v39;
    swift_willThrow();

    v37 = v0[1];
  }

  return v37();
}

uint64_t sub_221F5C2C0(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_221F5C35C()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_221F5C568;
  }

  else
  {
    (*(v2 + 312))(*(v2 + 240), *(v2 + 224));
    v3 = sub_221F5C480;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F5C480()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];
  v4 = v0[25];
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  [*__swift_project_boxed_opaque_existential_0Tm(v4 v4[3])];
  [*__swift_project_boxed_opaque_existential_0Tm(v4 + 17 v4[20])];

  v5 = v0[1];

  return v5();
}

uint64_t sub_221F5C568()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);
  v4 = *(v0 + 288);
  v5 = *(v0 + 216);
  (*(v0 + 312))(*(v0 + 240), *(v0 + 224));
  __swift_destroy_boxed_opaque_existential_0((v0 + 144));
  *v5 = 1;
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for IDSError(0);
  sub_221F5C6DC(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
  swift_allocError();
  v8 = v7;
  sub_221EA4A40(v5, v7);
  *(v8 + *(v6 + 20)) = v1;
  swift_willThrow();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_221F5C6DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_221F5C730(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
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

uint64_t sub_221F5C778(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221F5C7FC(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9544C;

  return v7(a1, a2);
}

void sub_221F5C914(uint64_t a1)
{
  v1 = a1;
  v21 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_221FB6828();
    sub_221F5E4A4();
    sub_221F10D6C();
    sub_221FB6538();
    v1 = v16;
    v2 = v17;
    v3 = v18;
    v4 = v19;
    v5 = v20;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v14 = v3;
  while (v1 < 0)
  {
    if (!sub_221FB6898() || (sub_221F5E4A4(), swift_dynamicCast(), (v11 = v15) == 0))
    {
LABEL_23:
      sub_221E96470(v1);
      return;
    }

LABEL_18:
    v12 = [v11 relationshipStorage];
    v13 = [v12 primaryRelationship];

    if ([v13 cloudType] || (objc_msgSend(v13, sel_hasOutgoingInviteRequest) & 1) == 0)
    {
    }

    else
    {

      MEMORY[0x223DAC7E0]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_221FB6458();
      }

      sub_221FB6478();
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_14:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_23;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_221F5CBA8(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v6 = *__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
    v7 = swift_allocError();
    *v8 = a4;
    v9 = a4;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    v10 = sub_221FB6438();
    v11 = *(*(v6 + 64) + 40);
    *v11 = a2;
    *(v11 + 8) = v10;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_221F5CC8C(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F5CD70, 0, 0);
}

uint64_t sub_221F5CD70()
{
  v50 = v0;
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DC0);
  sub_221E9DCE8(0xD000000000000080, 0x8000000221FC3CD0, 0xD000000000000019, 0x8000000221FC3D60);
  v3 = [v1 contacts];
  if (v3)
  {
    v4 = v3;
    sub_221F5E4A4();
    sub_221F10D6C();
    v5 = sub_221FB64F8();

    sub_221F5C914(v5);
    v7 = v6;
    v0[11] = v6;

    if (v7 >> 62)
    {
      if (sub_221FB6868())
      {
LABEL_6:

        v8 = sub_221FB61B8();
        v9 = sub_221FB65C8();

        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          v48 = v11;
          *v10 = 136315138;
          v44 = v11;
          if (v7 >> 62)
          {
            v12 = sub_221FB6868();
          }

          else
          {
            v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v13 = MEMORY[0x277D84F90];
          if (v12)
          {
            v41 = v10;
            v42 = v9;
            v43 = v8;
            v49 = MEMORY[0x277D84F90];
            v14 = sub_221F776A4(0, v12 & ~(v12 >> 63), 0);
            if (v12 < 0)
            {
              __break(1u);
              return MEMORY[0x28213AEC8](v14, v15, v16, v17);
            }

            v18 = 0;
            v19 = v0[7];
            v13 = v49;
            v45 = v7 & 0xC000000000000001;
            v46 = v7;
            do
            {
              if (v45)
              {
                v20 = MEMORY[0x223DACD50](v18, v7);
              }

              else
              {
                v20 = *(v7 + 8 * v18 + 32);
              }

              v21 = v20;
              v22 = [v21 UUID];
              if (v22)
              {
                v23 = v22;
                sub_221FB5C18();

                v24 = 0;
              }

              else
              {
                v24 = 1;
              }

              v26 = v0[9];
              v25 = v0[10];
              v27 = v0[8];
              v28 = sub_221FB5C38();
              (*(*(v28 - 8) + 56))(v27, v24, 1, v28);
              sub_221EB994C(v27, v26);
              sub_221EB994C(v26, v25);

              v49 = v13;
              v30 = *(v13 + 16);
              v29 = *(v13 + 24);
              if (v30 >= v29 >> 1)
              {
                sub_221F776A4((v29 > 1), v30 + 1, 1);
                v13 = v49;
              }

              v31 = v0[10];
              ++v18;
              *(v13 + 16) = v30 + 1;
              sub_221EB994C(v31, v13 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v30);
              v7 = v46;
            }

            while (v12 != v18);
            v8 = v43;
            v9 = v42;
            v10 = v41;
          }

          v32 = MEMORY[0x223DAC810](v13, v0[6]);
          v34 = v33;

          v35 = sub_221EF4114(v32, v34, &v48);

          *(v10 + 4) = v35;
          _os_log_impl(&dword_221E93000, v8, v9, "Found relationships with outgoing request, checking donation status: %s", v10, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v44);
          MEMORY[0x223DADA80](v44, -1, -1);
          MEMORY[0x223DADA80](v10, -1, -1);
        }

        v47 = *(v0 + 2);
        v0[2] = sub_221ED85F0(MEMORY[0x277D84F90]);
        v0[3] = v7;
        v36 = swift_task_alloc();
        v0[12] = v36;
        *(v36 + 16) = v47;
        *(v36 + 32) = v0 + 2;
        v37 = swift_task_alloc();
        v0[13] = v37;
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBEB8, &unk_221FBB660);
        v17 = sub_221F5E5A0();
        *v37 = v0;
        v37[1] = sub_221F5D2AC;
        v14 = &unk_221FBD960;
        v15 = v36;
        v16 = v38;

        return MEMORY[0x28213AEC8](v14, v15, v16, v17);
      }
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }
  }

  v39 = v0[1];

  return v39();
}

void sub_221F5D2AC()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_221F5D3F0, 0, 0);
  }
}

uint64_t sub_221F5D3F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221F5D46C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[28] = a3;
  v4[29] = a4;
  v4[30] = *a1;
  return MEMORY[0x2822009F8](sub_221F5D494, 0, 0);
}

uint64_t sub_221F5D494()
{
  v1 = [*(v0 + 240) preferredReachableService];
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = *(v0 + 224);
  v3 = v1;
  v4 = sub_221FB6318();
  v6 = v5;

  *(v0 + 248) = v4;
  *(v0 + 256) = v6;
  if (!*(v2 + 16) || (v7 = sub_221ED4B5C(v4, v6), (v8 & 1) == 0))
  {

LABEL_10:
    if (qword_281307070 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 240);
    v29 = sub_221FB61D8();
    __swift_project_value_buffer(v29, qword_281307DC0);
    v30 = v28;
    v27 = sub_221FB61B8();
    v31 = sub_221FB65A8();

    if (os_log_type_enabled(v27, v31))
    {
      v32 = *(v0 + 240);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v32;
      *v34 = v32;
      v35 = v32;
      _os_log_impl(&dword_221E93000, v27, v31, "Found relationship with outgoing request with invalid service identifier %@", v33, 0xCu);
      sub_221EA0558(v34);
      MEMORY[0x223DADA80](v34, -1, -1);
      MEMORY[0x223DADA80](v33, -1, -1);
    }

    goto LABEL_14;
  }

  v9 = *(v0 + 240);
  v10 = *(*(*(v0 + 224) + 56) + 8 * v7);
  *(v0 + 264) = v10;
  v11 = v10;
  v12 = [v9 preferredReachableAddress];
  if (!v12)
  {

    if (qword_281307070 != -1)
    {
      swift_once();
    }

    v40 = *(v0 + 240);
    v41 = sub_221FB61D8();
    __swift_project_value_buffer(v41, qword_281307DC0);
    v42 = v40;
    v27 = sub_221FB61B8();
    v43 = sub_221FB65A8();

    if (os_log_type_enabled(v27, v43))
    {
      v44 = *(v0 + 240);
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      *(v45 + 4) = v44;
      *v46 = v44;
      v47 = v44;
      _os_log_impl(&dword_221E93000, v27, v43, "Found relationship with outgoing request with invalid preferred reachable address %@", v45, 0xCu);
      sub_221EA0558(v46);
      MEMORY[0x223DADA80](v46, -1, -1);
      MEMORY[0x223DADA80](v45, -1, -1);
    }

    goto LABEL_14;
  }

  v13 = v0 + 208;
  v14 = *(v0 + 232);
  v15 = v12;
  v16 = sub_221FB6318();
  v18 = v17;

  *(v0 + 272) = v16;
  *(v0 + 280) = v18;
  v19 = *v14;
  if (*(*v14 + 16) && (v20 = sub_221ED4B5C(v4, v6), (v21 & 1) != 0))
  {
    v22 = v20;

    v23 = *(*(v19 + 56) + 8 * v22);

    v24 = *(v0 + 280);
    *(v0 + 144) = *(v0 + 272);
    *(v0 + 152) = v24;
    v25 = swift_task_alloc();
    *(v25 + 16) = v0 + 144;
    v26 = sub_221F7B864(sub_221EB8534, v25, v23);

    if (v26)
    {
      v27 = *(v0 + 264);

LABEL_14:

      v36 = *(v0 + 8);

      return v36();
    }

    v38 = v0 + 80;
    v49 = *(v0 + 272);
    v48 = *(v0 + 280);
    v50 = *(v0 + 264);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB78, &unk_221FBB910);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_221FB81A0;
    *(v51 + 32) = v49;
    *(v51 + 40) = v48;

    v52 = sub_221FB6428();
    *(v0 + 296) = v52;

    *(v0 + 80) = v0;
    *(v0 + 120) = v13;
    *(v0 + 88) = sub_221F5E0A4;
    v53 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_221FA909C;
    *(v0 + 168) = &block_descriptor_6;
    *(v0 + 176) = v53;
    [v50 donateAddresses:v52 completion:v0 + 144];
  }

  else
  {
    v38 = v0 + 16;
    *(v0 + 16) = v0;
    *(v0 + 56) = v13;
    *(v0 + 24) = sub_221F5DA88;
    v39 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC7F8, &unk_221FBD968);
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_221F5CBA8;
    *(v0 + 168) = &block_descriptor_27;
    *(v0 + 176) = v39;
    [v11 donatedAddressesWithCompletion_];
  }

  return MEMORY[0x282200938](v38);
}

uint64_t sub_221F5DA88()
{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {

    v2 = sub_221F5DE2C;
  }

  else
  {
    v2 = sub_221F5DBA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F5DBA0()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[29];
  v4 = v0[27];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v3;
  *v3 = 0x8000000000000000;
  sub_221F78718(v4, v2, v1, isUniquelyReferenced_nonNull_native);

  *v3 = v16;
  v0[18] = v0[34];
  v0[19] = v0[35];
  v6 = swift_task_alloc();
  *(v6 + 16) = v0 + 18;
  LOBYTE(v1) = sub_221F7B864(sub_221EB8534, v6, v4);

  if (v1)
  {
    v7 = v0[33];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v11 = v0[34];
    v10 = v0[35];
    v12 = v0[33];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB78, &unk_221FBB910);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_221FB81A0;
    *(v13 + 32) = v11;
    *(v13 + 40) = v10;

    v14 = sub_221FB6428();
    v0[37] = v14;

    v0[10] = v0;
    v0[15] = v0 + 26;
    v0[11] = sub_221F5E0A4;
    v15 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_221FA909C;
    v0[21] = &block_descriptor_6;
    v0[22] = v15;
    [v12 donateAddresses:v14 completion:v0 + 18];

    return MEMORY[0x282200938](v0 + 10);
  }
}

uint64_t sub_221F5DE2C(uint64_t a1)
{
  v24 = v1;
  swift_willThrow();
  v2 = *(v1 + 288);
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v3 = *(v1 + 240);
  v4 = sub_221FB61D8();
  __swift_project_value_buffer(v4, qword_281307DC0);

  v5 = v3;
  v6 = v2;
  v7 = sub_221FB61B8();
  v8 = sub_221FB65A8();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v1 + 280);
  if (v9)
  {
    v11 = *(v1 + 272);
    v22 = *(v1 + 264);
    v12 = *(v1 + 240);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v13 = 136315650;
    v16 = sub_221EF4114(v11, v10, &v23);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2112;
    *(v13 + 14) = v12;
    *v14 = v12;
    *(v13 + 22) = 2112;
    v17 = v12;
    v18 = v2;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v19;
    v14[1] = v19;
    _os_log_impl(&dword_221E93000, v7, v8, "Failed to donate %s for relationship %@ with error %@", v13, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x223DADA80](v15, -1, -1);
    MEMORY[0x223DADA80](v13, -1, -1);
  }

  else
  {
  }

  v20 = *(v1 + 8);

  return v20();
}

uint64_t sub_221F5E0A4()
{
  v1 = *(*v0 + 112);
  *(*v0 + 304) = v1;
  if (v1)
  {
    v2 = sub_221F5E228;
  }

  else
  {

    v2 = sub_221F5E1BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F5E1BC()
{
  v1 = *(v0 + 296);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_221F5E228(uint64_t a1)
{
  v25 = v1;
  v2 = *(v1 + 296);
  swift_willThrow();

  v3 = *(v1 + 304);
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v4 = *(v1 + 240);
  v5 = sub_221FB61D8();
  __swift_project_value_buffer(v5, qword_281307DC0);

  v6 = v4;
  v7 = v3;
  v8 = sub_221FB61B8();
  v9 = sub_221FB65A8();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v1 + 280);
  if (v10)
  {
    v12 = *(v1 + 272);
    v23 = *(v1 + 264);
    v13 = *(v1 + 240);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v14 = 136315650;
    v17 = sub_221EF4114(v12, v11, &v24);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v13;
    *v15 = v13;
    *(v14 + 22) = 2112;
    v18 = v13;
    v19 = v3;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v20;
    v15[1] = v20;
    _os_log_impl(&dword_221E93000, v8, v9, "Failed to donate %s for relationship %@ with error %@", v14, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223DADA80](v16, -1, -1);
    MEMORY[0x223DADA80](v14, -1, -1);
  }

  else
  {
  }

  v21 = *(v1 + 8);

  return v21();
}

unint64_t sub_221F5E4A4()
{
  result = qword_281306E50;
  if (!qword_281306E50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281306E50);
  }

  return result;
}

uint64_t sub_221F5E4F0(void *a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E9544C;

  return sub_221F5D46C(a1, v4, v5, v6);
}

unint64_t sub_221F5E5A0()
{
  result = qword_27CFEBEC0;
  if (!qword_27CFEBEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBEB8, &unk_221FBB660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEBEC0);
  }

  return result;
}

uint64_t sub_221F5E62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221E9544C;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_221F5E75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for IDSErrorAction(0);
  v4[7] = swift_task_alloc();
  v5 = sub_221FB5C38();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB58, &unk_221FB8C00);
  v4[11] = swift_task_alloc();
  v6 = sub_221FB6168();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  sub_221FB5BC8();
  v4[15] = swift_task_alloc();
  v7 = sub_221FB5FF8();
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F5E96C, 0, 0);
}

uint64_t sub_221F5E96C(uint64_t a1)
{
  v2 = v1[14];
  v4 = v1[12];
  v3 = v1[13];
  v6 = v1[10];
  v5 = v1[11];
  v7 = v1[9];
  v14 = v1[8];
  v8 = v1[4];
  v15 = v1[5];
  sub_221FB5BB8();
  sub_221FB5ED8();
  (*(v3 + 16))(v2, v8, v4);
  v9 = sub_221FB6058();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_221FB5C28();
  sub_221FB5BE8();
  (*(v7 + 8))(v6, v14);
  sub_221FB5FB8();
  __swift_project_boxed_opaque_existential_0Tm((v15 + 296), *(v15 + 320));
  v10 = swift_task_alloc();
  v1[19] = v10;
  *v10 = v1;
  v10[1] = sub_221F5EB34;
  v11 = v1[18];
  v12 = v1[3];

  return sub_221EE242C(v12, v11, 1104);
}

uint64_t sub_221F5EB34()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_221F5ED0C;
  }

  else
  {
    v2 = sub_221F5EC48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F5EC48()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_221F5ED0C()
{
  v1 = v0[20];
  v2 = v0[7];
  (*(v0[17] + 8))(v0[18], v0[16]);
  *v2 = 1;
  swift_storeEnumTagMultiPayload();
  v3 = type metadata accessor for IDSError(0);
  sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
  swift_allocError();
  v5 = v4;
  sub_221EA4A40(v2, v4);
  *(v5 + *(v3 + 20)) = v1;
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_221F5EE74(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC118, &unk_221FBB0A0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - v7;
  v9 = sub_221FB5BC8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v38 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v35 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v35 - v19;
  sub_221FB5EE8();
  v36 = a2;
  v21 = [a2 dateForLatestIncomingInviteRequest];
  v37 = v18;
  if (v21)
  {
    v22 = v21;
    sub_221FB5B98();

    v23 = *(v10 + 32);
    v23(v8, v15, v9);
    v24 = *(v10 + 56);
    v24(v8, 0, 1, v9);
    v23(v18, v8, v9);
  }

  else
  {
    v24 = *(v10 + 56);
    v24(v8, 1, 1, v9);
    sub_221FB5B38();
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_221E9CFE8(v8, &qword_27CFEC118, &unk_221FBB0A0);
    }
  }

  v25 = v36;
  v26 = [v36 dateForLatestFriendshipDidBegin];
  if (v26)
  {
    v27 = v26;
    sub_221FB5B98();

    v28 = *(v10 + 32);
    v28(v6, v15, v9);
    v24(v6, 0, 1, v9);
    v29 = v38;
    v28(v38, v6, v9);
    v30 = v37;
  }

  else
  {
    v24(v6, 1, 1, v9);
    v29 = v38;
    sub_221FB5B38();
    v31 = (*(v10 + 48))(v6, 1, v9);
    v30 = v37;
    if (v31 != 1)
    {
      sub_221E9CFE8(v6, &qword_27CFEC118, &unk_221FBB0A0);
    }
  }

  if (([v25 isAwaitingInviteResponse] & 1) != 0 && (sub_221F68EE0(qword_27CFEC800, MEMORY[0x277CC9578], MEMORY[0x277CC9590]), (sub_221FB62C8() & 1) == 0))
  {
    v32 = 1;
  }

  else
  {
    v32 = sub_221FB5B68();
  }

  v33 = *(v10 + 8);
  v33(v29, v9);
  v33(v30, v9);
  v33(v20, v9);
  return v32 & 1;
}

id sub_221F5F2D8(void *a1, void *a2)
{
  v4 = sub_221FB5C38();
  v79 = *(v4 - 8);
  v80 = v4;
  MEMORY[0x28223BE20](v4);
  v78 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_221FB6058();
  v83 = *(v6 - 8);
  v84 = v6;
  MEMORY[0x28223BE20](v6);
  v82 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_221FB5F28();
  v90 = *(v8 - 8);
  v91 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v89 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v81 = &v77 - v11;
  v12 = sub_221FB5C68();
  v87 = *(v12 - 1);
  v88 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC118, &unk_221FBB0A0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v77 - v16;
  v18 = sub_221FB5BC8();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v77 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v77 - v26;
  v86 = a2;
  v28 = [a2 dateForLatestIncomingInviteRequest];
  if (v28)
  {
    v29 = v28;
    sub_221FB5B98();

    v30 = a1;
    v31 = v27;
    v32 = *(v19 + 32);
    v32(v17, v25, v18);
    (*(v19 + 56))(v17, 0, 1, v18);
    v32(v31, v17, v18);
    v27 = v31;
    a1 = v30;
  }

  else
  {
    (*(v19 + 56))(v17, 1, 1, v18);
    sub_221FB5B38();
    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      sub_221E9CFE8(v17, &qword_27CFEC118, &unk_221FBB0A0);
    }
  }

  sub_221FB5EE8();
  v33 = sub_221FB5B88();
  v34 = *(v19 + 8);
  v92 = v18;
  v34(v25, v18);
  v35 = v90;
  if (v33 & 1) != 0 && (sub_221FB5EE8(), sub_221FB5BB8(), sub_221FB5C58(), v36 = sub_221FB5C48(), (v87[1])(v14, v88), v37 = v92, v34(v22, v92), v34(v25, v37), (v36))
  {
    v89 = v27;
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v38 = sub_221FB61D8();
    __swift_project_value_buffer(v38, qword_281307DF0);
    v39 = *(v35 + 16);
    v40 = v81;
    v88 = a1;
    v41 = v91;
    v39(v81, a1, v91);
    v42 = sub_221FB61B8();
    v43 = sub_221FB65C8();
    v44 = os_log_type_enabled(v42, v43);
    v77 = v34;
    if (v44)
    {
      v45 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v93[0] = v87;
      *v45 = 136446210;
      sub_221FB5EE8();
      sub_221F68EE0(&qword_27CFEC120, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v46 = v92;
      v47 = sub_221FB6B08();
      v48 = v34;
      v50 = v49;
      v48(v25, v46);
      (*(v35 + 8))(v40, v91);
      v51 = sub_221EF4114(v47, v50, v93);

      *(v45 + 4) = v51;
      _os_log_impl(&dword_221E93000, v42, v43, "Processing activity data preview for an already handled invitation with date: %{public}s", v45, 0xCu);
      v52 = v87;
      __swift_destroy_boxed_opaque_existential_0(v87);
      MEMORY[0x223DADA80](v52, -1, -1);
      MEMORY[0x223DADA80](v45, -1, -1);
    }

    else
    {

      (*(v35 + 8))(v40, v41);
    }

    v71 = v89;
    sub_221EA4AB4(v85 + 80, v93);
    __swift_project_boxed_opaque_existential_0Tm(v93, v93[3]);
    v72 = v82;
    sub_221FB5F18();
    v73 = sub_221FB6038();
    (*(v83 + 8))(v72, v84);
    result = [v86 UUID];
    if (result)
    {
      v74 = result;
      v75 = v78;
      sub_221FB5C18();

      v76 = sub_221FB5BF8();
      ASProcessActivityDataPreviewWithManager();

      (*(v79 + 8))(v75, v80);
      v77(v71, v92);
      return __swift_destroy_boxed_opaque_existential_0(v93);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v53 = sub_221FB61D8();
    __swift_project_value_buffer(v53, qword_281307DF0);
    v54 = v89;
    v55 = v91;
    (*(v35 + 16))(v89, a1, v91);
    v56 = sub_221FB61B8();
    v57 = sub_221FB65C8();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v87 = v58;
      v59 = swift_slowAlloc();
      v77 = v34;
      v88 = v59;
      v93[0] = v59;
      *v58 = 136446210;
      sub_221FB5EE8();
      sub_221F68EE0(&qword_27CFEC120, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v60 = v92;
      v61 = sub_221FB6B08();
      v63 = v62;
      v64 = v25;
      v65 = v77;
      v77(v64, v60);
      (*(v35 + 8))(v54, v91);
      v66 = sub_221EF4114(v61, v63, v93);

      v67 = v87;
      *(v87 + 4) = v66;
      v68 = v67;
      _os_log_impl(&dword_221E93000, v56, v57, "Not process activity data preview for an already handled invitation with date: %{public}s", v67, 0xCu);
      v69 = v88;
      __swift_destroy_boxed_opaque_existential_0(v88);
      MEMORY[0x223DADA80](v69, -1, -1);
      MEMORY[0x223DADA80](v68, -1, -1);

      return v65(v27, v60);
    }

    else
    {

      (*(v35 + 8))(v54, v55);
      return (v34)(v27, v92);
    }
  }

  return result;
}

uint64_t sub_221F5FCE0(uint64_t a1, uint64_t a2)
{
  v3[136] = v2;
  v3[135] = a2;
  v3[134] = a1;
  v4 = sub_221FB5F28();
  v3[137] = v4;
  v3[138] = *(v4 - 8);
  v3[139] = swift_task_alloc();
  v3[140] = swift_task_alloc();
  v5 = sub_221FB6168();
  v3[141] = v5;
  v3[142] = *(v5 - 8);
  v3[143] = swift_task_alloc();
  v3[144] = swift_task_alloc();
  v3[145] = swift_task_alloc();
  v3[146] = swift_task_alloc();
  v3[147] = type metadata accessor for IDSErrorAction(0);
  v3[148] = swift_task_alloc();
  v6 = sub_221FB5BC8();
  v3[149] = v6;
  v3[150] = *(v6 - 8);
  v3[151] = swift_task_alloc();
  v7 = sub_221FB6058();
  v3[152] = v7;
  v3[153] = *(v7 - 8);
  v3[154] = swift_task_alloc();
  v3[155] = swift_task_alloc();
  v3[156] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0);
  v3[157] = swift_task_alloc();
  v8 = sub_221FB5C38();
  v3[158] = v8;
  v3[159] = *(v8 - 8);
  v3[160] = swift_task_alloc();
  v3[161] = swift_task_alloc();
  v3[162] = swift_task_alloc();
  v3[163] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F5FFEC, 0, 0);
}

uint64_t sub_221F5FFEC()
{
  v56 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = sub_221FB61D8();
  *(v0 + 1312) = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD00000000000009ALL, 0x8000000221FC3DB0, 0xD000000000000030, 0x8000000221FC3E50);
  v3 = *__swift_project_boxed_opaque_existential_0Tm((v1 + 40), *(v1 + 64));
  v4 = sub_221FB62E8();

  v5 = [v3 installStateForBundleIdentifier_];

  if (v5 != 1)
  {
    v36 = *(v0 + 1184);
    *v36 = 0;
    swift_storeEnumTagMultiPayload();
    sub_221EA4994();
    v37 = swift_allocError();
    *v38 = 0;
LABEL_19:
    v48 = type metadata accessor for IDSError(0);
    sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
    swift_allocError();
    v50 = v49;
    sub_221EA4A40(v36, v49);
    *(v50 + *(v48 + 20)) = v37;
    swift_willThrow();

    v51 = *(v0 + 8);

    return v51();
  }

  v6 = [*(v0 + 1080) fromID];
  if (!v6)
  {
    sub_221FB6318();
    v6 = sub_221FB62E8();
  }

  v7 = ASSanitizedContactDestination();

  v8 = v7;
  v9 = v7;
  if (!v7)
  {
    sub_221FB6318();
    v9 = sub_221FB62E8();

    sub_221FB6318();
    v8 = sub_221FB62E8();
  }

  v52 = v8;
  v53 = v9;
  *(v0 + 1328) = v9;
  *(v0 + 1320) = v8;
  v10 = *(v0 + 1272);
  v11 = *(v0 + 1264);
  v12 = *(v0 + 1256);
  v13 = sub_221FB6318();
  v15 = v14;
  *(v0 + 1336) = v13;
  *(v0 + 1344) = v14;
  *(v0 + 1352) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB78, &unk_221FBB910);
  v16 = swift_allocObject();
  *(v0 + 1360) = v16;
  *(v16 + 16) = xmmword_221FB81A0;
  *(v16 + 32) = v13;
  *(v16 + 40) = v15;
  v17 = v7;

  sub_221FB5ED8();
  sub_221FB5BD8();

  if ((*(v10 + 48))(v12, 1, v11) == 1)
  {
    v18 = *(v0 + 1256);
    v19 = *(v0 + 1120);
    v20 = *(v0 + 1104);
    v21 = *(v0 + 1096);
    v22 = *(v0 + 1072);

    sub_221E9CFE8(v18, &qword_27CFEBD50, &unk_221FB9FB0);
    v23 = *(v20 + 16);
    v23(v19, v22, v21);
    v24 = sub_221FB61B8();
    v25 = sub_221FB65A8();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 1120);
    if (v26)
    {
      v28 = *(v0 + 1112);
      v29 = *(v0 + 1104);
      v30 = *(v0 + 1096);
      v31 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v55 = v54;
      *v31 = 136315138;
      v23(v28, v27, v30);
      v32 = sub_221FB6328();
      v34 = v33;
      (*(v29 + 8))(v27, v30);
      v35 = sub_221EF4114(v32, v34, &v55);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_221E93000, v24, v25, "Invalid handshake token: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x223DADA80](v54, -1, -1);
      MEMORY[0x223DADA80](v31, -1, -1);
    }

    else
    {
      v45 = *(v0 + 1104);
      v46 = *(v0 + 1096);

      (*(v45 + 8))(v27, v46);
    }

    v36 = *(v0 + 1184);
    swift_storeEnumTagMultiPayload();
    sub_221EA4994();
    v37 = swift_allocError();
    *v47 = 22;
    goto LABEL_19;
  }

  (*(*(v0 + 1272) + 32))(*(v0 + 1304), *(v0 + 1256), *(v0 + 1264));
  v39 = sub_221FB61B8();
  v40 = sub_221FB65C8();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_221E93000, v39, v40, "Checking account info", v41, 2u);
    MEMORY[0x223DADA80](v41, -1, -1);
  }

  v42 = *(v0 + 1088);

  __swift_project_boxed_opaque_existential_0Tm(v42, v42[3]);
  v43 = swift_task_alloc();
  *(v0 + 1368) = v43;
  *v43 = v0;
  v43[1] = sub_221F6072C;

  return sub_221EF490C();
}

uint64_t sub_221F6072C(__int16 a1)
{
  v3 = *v2;
  *(v3 + 1856) = a1;
  *(v3 + 1376) = v1;

  if (v1)
  {
    v4 = *(v3 + 1328);
    v5 = *(v3 + 1320);

    v6 = sub_221F60FAC;
  }

  else
  {
    v6 = sub_221F60870;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_221F60870()
{
  v55 = v0;
  if (*(v0 + 1856) == 5)
  {
    if ((*(v0 + 1856) & 0xFF00) == 0x200)
    {

      v1 = sub_221FB61B8();
      v2 = sub_221FB65C8();

      if (os_log_type_enabled(v1, v2))
      {
        v3 = *(v0 + 1344);
        v4 = *(v0 + 1336);
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v54[0] = v6;
        *v5 = 136315138;
        *(v5 + 4) = sub_221EF4114(v4, v3, v54);
        _os_log_impl(&dword_221E93000, v1, v2, "Fetching participant for %s", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v6);
        MEMORY[0x223DADA80](v6, -1, -1);
        MEMORY[0x223DADA80](v5, -1, -1);
      }

      v7 = *(v0 + 1088);
      v8 = __swift_project_boxed_opaque_existential_0Tm(v7 + 57, v7[60]);
      v9 = v7[30];
      *(v0 + 1384) = v9;
      v10 = *__swift_project_boxed_opaque_existential_0Tm(v8 + 5, v8[8]);
      v11 = swift_task_alloc();
      *(v0 + 1392) = v11;
      *v11 = v0;
      v11[1] = sub_221F612C0;
      v12 = *(v0 + 1344);
      v13 = *(v0 + 1336);

      return sub_221E9F708(v13, v12, v9, v10);
    }

    else
    {
      v28 = *(v0 + 1328);
      v29 = *(v0 + 1320);

      v30 = sub_221FB61B8();
      v31 = sub_221FB65A8();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = *(v0 + 1856);
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v54[0] = v34;
        *v33 = 136315138;
        *(v0 + 1860) = v32;
        v35 = sub_221FB6328();
        v37 = sub_221EF4114(v35, v36, v54);

        *(v33 + 4) = v37;
        _os_log_impl(&dword_221E93000, v30, v31, "Account not HSA2: %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x223DADA80](v34, -1, -1);
        MEMORY[0x223DADA80](v33, -1, -1);
      }

      (*(*(v0 + 1136) + 104))(*(v0 + 1144), *MEMORY[0x277CE9460], *(v0 + 1128));
      v38 = swift_task_alloc();
      *(v0 + 1840) = v38;
      *v38 = v0;
      v38[1] = sub_221F68404;
      v39 = *(v0 + 1144);
      v40 = *(v0 + 1080);
      v41 = *(v0 + 1072);

      return sub_221F5E75C(v41, v40, v39);
    }
  }

  else
  {
    v15 = *(v0 + 1328);
    v16 = *(v0 + 1320);

    v17 = sub_221FB61B8();
    v18 = sub_221FB65A8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 1856);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v54[0] = v21;
      *v20 = 136315138;
      *(v0 + 1858) = v19;
      v22 = sub_221FB6328();
      v24 = sub_221EF4114(v22, v23, v54);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_221E93000, v17, v18, "Account not signed in: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x223DADA80](v21, -1, -1);
      MEMORY[0x223DADA80](v20, -1, -1);
    }

    v25 = *(*(v0 + 1088) + 248);
    v26 = sub_221FB6428();
    v27 = [v25 contactWithDestinations_];

    if (v27)
    {
    }

    else
    {
      v42 = sub_221FB6428();

      v43 = sub_221FB5BF8();
      v27 = [v25 createContactWithDestinations:v42 relationshipIdentifier:v43];
    }

    v44 = *(v0 + 1304);
    v45 = *(v0 + 1272);
    v46 = *(v0 + 1264);
    v47 = *(v0 + 1184);
    [*__swift_project_boxed_opaque_existential_0Tm((*(v0 + 1088) + 376) *(*(v0 + 1088) + 400))];
    *v47 = 0;
    swift_storeEnumTagMultiPayload();
    sub_221EA4994();
    v48 = swift_allocError();
    *v49 = 10;
    v50 = type metadata accessor for IDSError(0);
    sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
    swift_allocError();
    v52 = v51;
    sub_221EA4A40(v47, v51);
    *(v52 + *(v50 + 20)) = v48;
    swift_willThrow();

    (*(v45 + 8))(v44, v46);

    v53 = *(v0 + 8);

    return v53();
  }
}

uint64_t sub_221F60FAC()
{
  v1 = v0[172];
  v2 = v1;
  v3 = sub_221FB61B8();
  v4 = sub_221FB65A8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[172];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_221E93000, v3, v4, "Error fetching account info %@", v6, 0xCu);
    sub_221E9CFE8(v7, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v7, -1, -1);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  v10 = v0[172];
  v11 = v0[163];
  v12 = v0[159];
  v13 = v0[158];
  v14 = v0[148];

  *v14 = 1;
  swift_storeEnumTagMultiPayload();
  sub_221EA4994();
  v15 = swift_allocError();
  *v16 = 10;
  v17 = type metadata accessor for IDSError(0);
  sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
  swift_allocError();
  v19 = v18;
  sub_221EA4A40(v14, v18);
  *(v19 + *(v17 + 20)) = v15;
  swift_willThrow();

  (*(v12 + 8))(v11, v13);

  v20 = v0[1];

  return v20();
}

uint64_t sub_221F612C0(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 1400) = a1;

  if (v1)
  {
    v4 = *(v3 + 1328);
    v5 = *(v3 + 1320);

    v6 = sub_221F61918;
  }

  else
  {
    v6 = sub_221F61400;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_221F61400()
{
  v29 = v0;
  if (v0[175])
  {
    v1 = __swift_project_boxed_opaque_existential_0Tm((v0[136] + 456), *(v0[136] + 480));
    v2 = *__swift_project_boxed_opaque_existential_0Tm(v1, v1[3]);
    v3 = swift_task_alloc();
    v0[176] = v3;
    *v3 = v0;
    v3[1] = sub_221F617D8;
    v4 = v0[173];
    v5 = v0[168];
    v6 = v0[167];

    return sub_221F99674(v6, v5, v4, v2);
  }

  else
  {
    v8 = v0[166];
    v9 = v0[165];

    v10 = sub_221FB61B8();
    v11 = sub_221FB65A8();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[168];
    if (v12)
    {
      v14 = v0[167];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v28 = v16;
      *v15 = 136315138;
      v17 = sub_221EF4114(v14, v13, &v28);

      *(v15 + 4) = v17;
      _os_log_impl(&dword_221E93000, v10, v11, "Destination %s does not have a matching CloudKit participant", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x223DADA80](v16, -1, -1);
      MEMORY[0x223DADA80](v15, -1, -1);
    }

    else
    {
    }

    v18 = v0[163];
    v19 = v0[159];
    v20 = v0[158];
    v21 = v0[148];
    *v21 = 1;
    swift_storeEnumTagMultiPayload();
    sub_221EA4994();
    v22 = swift_allocError();
    *v23 = 12;
    v24 = type metadata accessor for IDSError(0);
    sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
    swift_allocError();
    v26 = v25;
    sub_221EA4A40(v21, v25);
    *(v26 + *(v24 + 20)) = v22;
    swift_willThrow();
    (*(v19 + 8))(v18, v20);

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_221F617D8(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 1416) = a1;

  if (v1)
  {
    v4 = *(v3 + 1328);
    v5 = *(v3 + 1320);

    v6 = sub_221F680E8;
  }

  else
  {
    v6 = sub_221F61C2C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_221F61918()
{
  v21 = v0;

  v1 = sub_221FB61B8();
  v2 = sub_221FB65A8();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[168];
  if (v3)
  {
    v5 = v0[167];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;
    v8 = sub_221EF4114(v5, v4, &v20);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_221E93000, v1, v2, "Destination %s does not have a matching CloudKit participant", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x223DADA80](v7, -1, -1);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  else
  {
  }

  v9 = v0[163];
  v10 = v0[159];
  v11 = v0[158];
  v12 = v0[148];
  *v12 = 1;
  swift_storeEnumTagMultiPayload();
  sub_221EA4994();
  v13 = swift_allocError();
  *v14 = 12;
  v15 = type metadata accessor for IDSError(0);
  sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
  swift_allocError();
  v17 = v16;
  sub_221EA4A40(v12, v16);
  *(v17 + *(v15 + 20)) = v13;
  swift_willThrow();
  (*(v10 + 8))(v9, v11);

  v18 = v0[1];

  return v18();
}

uint64_t sub_221F61C2C()
{
  v23 = v0;
  v1 = [*(v0 + 1400) userIdentity];
  v2 = [v1 hasiCloudAccount];

  if (v2 && (v3 = [*(v0 + 1416) userIdentity], v4 = objc_msgSend(v3, sel_hasiCloudAccount), v3, v4))
  {
    v5 = *(v0 + 1384);
    v6 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 1088) + 200), *(*(v0 + 1088) + 224));
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 1862;
    *(v0 + 24) = sub_221F61F90;
    v7 = swift_continuation_init();
    *(v0 + 880) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
    *(v0 + 856) = v7;
    *(v0 + 824) = MEMORY[0x277D85DD0];
    *(v0 + 832) = 1107296256;
    *(v0 + 840) = sub_221FA909C;
    *(v0 + 848) = &block_descriptor_28;
    [v6 fetchAllChangesWithPriority:2 activity:0 group:v5 completion:v0 + 824];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v8 = *(v0 + 1320);

    v9 = sub_221FB61B8();
    v10 = sub_221FB65A8();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 1344);
    if (v11)
    {
      v13 = *(v0 + 1336);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315138;
      v16 = sub_221EF4114(v13, v12, &v22);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_221E93000, v9, v10, "Destination %s has a participants, but no iCloud account", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x223DADA80](v15, -1, -1);
      MEMORY[0x223DADA80](v14, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 1136) + 104))(*(v0 + 1152), *MEMORY[0x277CE9450], *(v0 + 1128));
    v17 = swift_task_alloc();
    *(v0 + 1824) = v17;
    *v17 = v0;
    v17[1] = sub_221F67D54;
    v18 = *(v0 + 1152);
    v19 = *(v0 + 1080);
    v20 = *(v0 + 1072);

    return sub_221F5E75C(v20, v19, v18);
  }
}

uint64_t sub_221F61F90()
{
  v1 = *(*v0 + 48);
  *(*v0 + 1424) = v1;
  if (v1)
  {
    v2 = sub_221F633EC;
  }

  else
  {
    v2 = sub_221F620A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F620A0()
{
  v1 = __swift_project_boxed_opaque_existential_0Tm((v0[136] + 160), *(v0[136] + 184));
  v0[179] = v1;
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  v4 = swift_task_alloc();
  v0[180] = v4;
  *v4 = v0;
  v4[1] = sub_221F62164;

  return MEMORY[0x28213AC20](v2, v3);
}

uint64_t sub_221F62164(uint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1;

  v5 = swift_task_alloc();
  *(v3 + 1448) = v5;
  *v5 = v4;
  v5[1] = sub_221F622B4;

  return sub_221F7C268(v2);
}

uint64_t sub_221F622B4(char a1)
{
  *(*v1 + 1863) = a1;

  return MEMORY[0x2822009F8](sub_221F623B4, 0, 0);
}

uint64_t sub_221F623B4()
{
  v144 = v0;
  v1 = *(v0 + 1344);
  if (*(v0 + 1863) != 1)
  {
    v33 = *(v0 + 1328);
    v34 = *(v0 + 1320);
    v35 = *(v0 + 1088);

    sub_221F68E78(v35, v0 + 208);
    v36 = sub_221FB61B8();
    v37 = sub_221FB65C8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v143 = v39;
      *v38 = 136315138;
      __swift_project_boxed_opaque_existential_0Tm((v0 + 368), *(v0 + 392));
      sub_221E94E44();
      v41 = v40;
      v42 = sub_221E9D138(0, &qword_281306F08, 0x277CE9038);
      v43 = MEMORY[0x223DAC810](v41, v42);
      v45 = v44;

      sub_221F68EB0(v0 + 208);
      v46 = sub_221EF4114(v43, v45, &v143);

      *(v38 + 4) = v46;
      _os_log_impl(&dword_221E93000, v36, v37, "Some devices on account are not eligible for a secure cloud relationship: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x223DADA80](v39, -1, -1);
      MEMORY[0x223DADA80](v38, -1, -1);
    }

    else
    {

      sub_221F68EB0(v0 + 208);
    }

    (*(*(v0 + 1136) + 104))(*(v0 + 1160), *MEMORY[0x277CE9458], *(v0 + 1128));
    v75 = swift_task_alloc();
    *(v0 + 1808) = v75;
    *v75 = v0;
    v75[1] = sub_221F679C0;
    v76 = *(v0 + 1160);
LABEL_23:
    v77 = *(v0 + 1080);
    v78 = *(v0 + 1072);

    return sub_221F5E75C(v78, v77, v76);
  }

  v2 = *(v0 + 1336);
  v3 = *(*(v0 + 1088) + 248);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221FB81A0;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;

  v5 = sub_221FB6428();

  v6 = [v3 contactWithDestinations_];

  if (!v6)
  {
    v7 = *(v0 + 1344);
    v8 = *(v0 + 1336);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_221FB81A0;
    *(v9 + 32) = v8;
    *(v9 + 40) = v7;

    v10 = sub_221FB6428();

    v11 = sub_221FB5BF8();
    v6 = [v3 createContactWithDestinations:v10 relationshipIdentifier:v11];
  }

  *(v0 + 1456) = v6;
  v12 = sub_221FB61B8();
  v13 = sub_221FB65C8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_221E93000, v12, v13, "Checking deny list", v14, 2u);
    MEMORY[0x223DADA80](v14, -1, -1);
  }

  v15 = *(v0 + 1088);

  if ([*__swift_project_boxed_opaque_existential_0Tm((v15 + 256) *(v15 + 280))])
  {
    v138 = v6;
    v16 = *(v0 + 1328);
    v17 = *(v0 + 1320);

    v18 = sub_221FB61B8();
    v19 = sub_221FB65A8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_221E93000, v18, v19, "Contact for invite request in deny list, dropping", v20, 2u);
      MEMORY[0x223DADA80](v20, -1, -1);
    }

    v21 = *(v0 + 1416);
    v22 = *(v0 + 1400);
    v135 = *(v0 + 1304);
    v23 = *(v0 + 1272);
    v24 = *(v0 + 1264);
    v25 = *(v0 + 1184);

    swift_storeEnumTagMultiPayload();
    sub_221EA4994();
    v26 = swift_allocError();
    *v27 = 50;
    v28 = type metadata accessor for IDSError(0);
    sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
    swift_allocError();
    v30 = v29;
    sub_221EA4A40(v25, v29);
    *(v30 + *(v28 + 20)) = v26;
    swift_willThrow();

    (*(v23 + 8))(v135, v24);
    goto LABEL_10;
  }

  v47 = sub_221FB5F08();
  if (v47 != 1)
  {
    v79 = v47;
    v80 = *(v0 + 1328);
    v81 = *(v0 + 1320);

    v82 = sub_221FB61B8();
    v83 = sub_221FB65A8();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 134218240;
      *(v84 + 4) = v79;
      *(v84 + 12) = 2048;
      *(v84 + 14) = 1;
      _os_log_impl(&dword_221E93000, v82, v83, "Incompatibile versions, invite: %ld, current: %ld", v84, 0x16u);
      MEMORY[0x223DADA80](v84, -1, -1);
    }

    if (v79 >= 2)
    {
      v85 = *(v0 + 1416);
      v86 = *(v0 + 1400);
      v87 = *(v0 + 1272);
      v137 = *(v0 + 1264);
      v140 = *(v0 + 1304);
      v88 = *(v0 + 1184);
      [*__swift_project_boxed_opaque_existential_0Tm((*(v0 + 1088) + 376) *(*(v0 + 1088) + 400))];
      *v88 = 0;
      swift_storeEnumTagMultiPayload();
      sub_221EA4994();
      v89 = swift_allocError();
      *v90 = 34;
      v91 = type metadata accessor for IDSError(0);
      sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
      swift_allocError();
      v92 = v6;
      v94 = v93;
      sub_221EA4A40(v88, v93);
      *(v94 + *(v91 + 20)) = v89;
      swift_willThrow();

      (*(v87 + 8))(v140, v137);
      goto LABEL_10;
    }

    (*(*(v0 + 1136) + 104))(*(v0 + 1168), *MEMORY[0x277CE9468], *(v0 + 1128));
    v107 = swift_task_alloc();
    *(v0 + 1792) = v107;
    *v107 = v0;
    v107[1] = sub_221F67628;
    v76 = *(v0 + 1168);
    goto LABEL_23;
  }

  v48 = *(v0 + 1248);
  v49 = *(v0 + 1224);
  v50 = *(v0 + 1216);
  v51 = *(v0 + 1072);
  sub_221FB5F18();
  v52 = sub_221FB6008();
  v53 = *(v49 + 8);
  *(v0 + 1464) = v53;
  *(v0 + 1472) = (v49 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v53(v48, v50);
  [v6 setPendingRelationshipShareItem_];

  sub_221FB5F18();
  v54 = sub_221FB6048();
  v142 = v53;
  v53(v48, v50);
  [v6 setPendingLegacyShareLocations_];

  [v3 saveContact_];
  v55 = [v6 relationshipStorage];
  v56 = [v55 secureCloudRelationship];
  *(v0 + 1480) = v56;

  *(v0 + 1056) = v56;
  v57 = [v6 relationshipStorage];
  v58 = [v57 legacyRelationship];
  *(v0 + 1488) = v58;

  v59 = v56;
  LOBYTE(v57) = sub_221F5EE74(v51, v59);

  if (v57)
  {
    v136 = v58;
    v139 = v6;
    v60 = *(v0 + 1328);
    v61 = *(v0 + 1320);

    v62 = sub_221FB61B8();
    v63 = sub_221FB65C8();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_221E93000, v62, v63, "Already updated relationship and notified for this invite", v64, 2u);
      MEMORY[0x223DADA80](v64, -1, -1);
    }

    v65 = *(v0 + 1416);
    v66 = *(v0 + 1304);
    v67 = *(v0 + 1272);
    v131 = *(v0 + 1400);
    v133 = *(v0 + 1264);
    v68 = *(v0 + 1184);
    v69 = *(v0 + 1072);

    v59 = v59;
    sub_221F5F2D8(v69, v59);

    swift_storeEnumTagMultiPayload();
    sub_221EA4994();
    v70 = swift_allocError();
    *v71 = 16;
    v72 = type metadata accessor for IDSError(0);
    sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
    swift_allocError();
    v74 = v73;
    sub_221EA4A40(v68, v73);
    *(v74 + *(v72 + 20)) = v70;
    swift_willThrow();

    (*(v67 + 8))(v66, v133);
LABEL_20:

LABEL_10:

    v31 = *(v0 + 8);

    return v31();
  }

  if ([v59 isFriendshipActive] && !objc_msgSend(v59, sel_isActivityDataVisible))
  {
    v136 = v58;
    v141 = v6;
    v117 = *(v0 + 1328);
    v118 = *(v0 + 1320);

    v119 = sub_221FB61B8();
    v120 = sub_221FB65A8();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&dword_221E93000, v119, v120, "Active friendship with hidden activity not handling invite request", v121, 2u);
      MEMORY[0x223DADA80](v121, -1, -1);
    }

    v122 = *(v0 + 1416);
    v123 = *(v0 + 1400);
    v124 = *(v0 + 1272);
    v132 = *(v0 + 1264);
    v134 = *(v0 + 1304);
    v125 = *(v0 + 1184);

    swift_storeEnumTagMultiPayload();
    sub_221EA4994();
    v126 = swift_allocError();
    *v127 = 19;
    v128 = type metadata accessor for IDSError(0);
    sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
    swift_allocError();
    v130 = v129;
    sub_221EA4A40(v125, v129);
    *(v130 + *(v128 + 20)) = v126;
    swift_willThrow();

    (*(v124 + 8))(v134, v132);
    goto LABEL_20;
  }

  v95 = sub_221FB61B8();
  v96 = sub_221FB65C8();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    *v97 = 0;
    _os_log_impl(&dword_221E93000, v95, v96, "Adding received addresses to legacy relationship", v97, 2u);
    MEMORY[0x223DADA80](v97, -1, -1);
  }

  v98 = *(v0 + 1240);
  v99 = *(v0 + 1216);

  v100 = v58;
  sub_221FB5F18();
  sub_221FB6018();
  v102 = v101;
  v142(v98, v99);
  if (!v102)
  {
  }

  v103 = sub_221FB62E8();

  [v100 setCloudKitAddress_];

  v104 = [v100 addresses];
  if (v104)
  {
    v105 = v104;
    v106 = sub_221FB64F8();
  }

  else
  {
    v106 = MEMORY[0x277D84FA0];
  }

  *(v0 + 1496) = v106;
  v108 = *(v0 + 1328);
  v109 = *(v0 + 1088);
  v110 = v100;

  sub_221F78DEC(v111, v106);

  v112 = sub_221FB64E8();

  [v110 setAddresses_];

  v113 = v110;
  [v113 setPreferredReachableAddress_];

  __swift_project_boxed_opaque_existential_0Tm((v109 + 536), *(v109 + 560));
  v114 = v59;
  v115 = swift_task_alloc();
  *(v0 + 1504) = v115;
  *v115 = v0;
  v115[1] = sub_221F636B4;
  v116 = *(v0 + 1384);

  return sub_221E9AC64(v114, v116, 0);
}

uint64_t sub_221F633EC(uint64_t a1)
{
  v2 = v1[166];
  v3 = v1[165];
  swift_willThrow();

  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_221E93000, v4, v5, "Fetch failed while handling incoming invitation request", v6, 2u);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  v7 = v1[178];
  v8 = v1[177];
  v9 = v1[175];
  v19 = v1[163];
  v10 = v1[159];
  v11 = v1[158];
  v12 = v1[148];

  *v12 = 1;
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for IDSError(0);
  sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
  swift_allocError();
  v15 = v14;
  sub_221EA4A40(v12, v14);
  *(v15 + *(v13 + 20)) = v7;
  swift_willThrow();
  v16 = v7;

  (*(v10 + 8))(v19, v11);

  v17 = v1[1];

  return v17();
}

uint64_t sub_221F636B4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1512) = a1;
  *(v3 + 1520) = v1;

  if (v1)
  {
    v4 = *(v3 + 1480);
    v5 = *(v3 + 1320);

    v6 = sub_221F63A38;
  }

  else
  {

    v6 = sub_221F6380C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_221F6380C()
{
  v1 = v0[186];
  v2 = *__swift_project_boxed_opaque_existential_0Tm((v0[136] + 416), *(v0[136] + 440));
  v3 = v1;
  v4 = swift_task_alloc();
  v0[191] = v4;
  *v4 = v0;
  v4[1] = sub_221F638D0;
  v5 = v0[186];
  v6 = v0[182];

  return sub_221FB4FA4(v5, v6, v2);
}

uint64_t sub_221F638D0(void *a1, void *a2, uint64_t a3)
{
  v7 = *v4;
  v7[192] = a3;
  v7[193] = v3;

  if (v3)
  {
    v8 = v7[186];
    v9 = v7[165];

    v10 = sub_221F64538;
  }

  else
  {
    v11 = v7[186];

    v10 = sub_221F63D78;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_221F63A38()
{
  v1 = *(v0 + 1520);
  v2 = v1;
  v3 = sub_221FB61B8();
  v4 = sub_221FB65A8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_221E93000, v3, v4, "Failed to make relationship shares: %@", v5, 0xCu);
    sub_221E9CFE8(v6, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v6, -1, -1);
    MEMORY[0x223DADA80](v5, -1, -1);
  }

  v9 = *(v0 + 1456);
  v10 = *(v0 + 1416);
  v11 = *(v0 + 1400);
  v24 = *(v0 + 1304);
  v25 = *(v0 + 1520);
  v12 = *(v0 + 1272);
  v23 = *(v0 + 1264);
  v13 = *(v0 + 1184);

  *v13 = 1;
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for IDSError(0);
  sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
  swift_allocError();
  v16 = v15;
  sub_221EA4A40(v13, v15);
  *(v16 + *(v14 + 20)) = v1;
  swift_willThrow();
  v17 = v1;

  (*(v12 + 8))(v24, v23);
  if (v25)
  {
    v18 = 1480;
    v19 = 1488;
  }

  else
  {

    v18 = 1488;
    v19 = 1512;
  }

  v20 = *(v0 + v18);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_221F63D78()
{
  v1 = *(v0 + 1088);

  v2 = *(v1 + 601);
  *(v0 + 1864) = v2;
  v3 = *(v1 + 608);
  *(v0 + 1552) = v3;
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    v4 = UserDefaultsKeys.rawValue.getter();
    v5 = _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v3, v4);

    if (v5 == 2)
    {
      v6 = v2;
    }

    else
    {
      v6 = v5;
    }

    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v2)
  {
LABEL_6:

    *(v0 + 1640) = MEMORY[0x277D84F90];
    v7 = sub_221FB61B8();
    v8 = sub_221FB65C8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 1536);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v9;
      *v11 = v9;
      v12 = v9;
      _os_log_impl(&dword_221E93000, v7, v8, "Push legacy relationship %@", v10, 0xCu);
      sub_221E9CFE8(v11, &qword_27CFEB900, &unk_221FB8C10);
      MEMORY[0x223DADA80](v11, -1, -1);
      MEMORY[0x223DADA80](v10, -1, -1);
    }

    v13 = *(v0 + 1536);
    v14 = *(v0 + 1088);

    v15 = __swift_project_boxed_opaque_existential_0Tm((v14 + 496), *(v14 + 520));
    if ([v13 cloudType])
    {
      v16 = *(v0 + 1536);
      v17 = sub_221FB61B8();
      v18 = sub_221FB65A8();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = *(v0 + 1536);
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412290;
        *(v20 + 4) = v19;
        *v21 = v19;
        v22 = v19;
        _os_log_impl(&dword_221E93000, v17, v18, "Attempting to save secure cloud relationship to legacy container %@", v20, 0xCu);
        sub_221E9CFE8(v21, &qword_27CFEB900, &unk_221FB8C10);
        MEMORY[0x223DADA80](v21, -1, -1);
        MEMORY[0x223DADA80](v20, -1, -1);
      }

      sub_221EA4994();
      v23 = swift_allocError();
      *v24 = 11;
      swift_willThrow();
      v25 = *(v0 + 1320);

      v58 = *(v0 + 1512);
      v59 = *(v0 + 1536);
      v60 = *(v0 + 1480);
      v26 = *(v0 + 1456);
      v27 = *(v0 + 1416);
      v28 = *(v0 + 1400);
      v29 = *(v0 + 1272);
      v56 = *(v0 + 1264);
      v57 = *(v0 + 1304);
      v30 = *(v0 + 1184);
      *v30 = 1;
      swift_storeEnumTagMultiPayload();
      v31 = type metadata accessor for IDSError(0);
      sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
      swift_allocError();
      v33 = v32;
      sub_221EA4A40(v30, v32);
      *(v33 + *(v31 + 20)) = v23;
      swift_willThrow();
      v34 = v23;

      (*(v29 + 8))(v57, v56);

      v35 = *(v0 + 8);

      return v35();
    }

    v49 = *(v0 + 1536);
    v50 = *(v0 + 1384);
    v51 = *__swift_project_boxed_opaque_existential_0Tm(v15 + 6, v15[9]);
    *(v0 + 1648) = sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
    v52 = sub_221FB6428();
    *(v0 + 1656) = v52;
    sub_221E9D138(0, &qword_281306F20, 0x277CBC5D0);
    v53 = sub_221FB6428();
    *(v0 + 1664) = v53;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 1064;
    *(v0 + 88) = sub_221F65324;
    v54 = swift_continuation_init();
    *(v0 + 944) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD30, &unk_221FB9240);
    *(v0 + 920) = v54;
    *(v0 + 888) = MEMORY[0x277D85DD0];
    *(v0 + 896) = 1107296256;
    *(v0 + 904) = sub_221F68D78;
    *(v0 + 912) = &block_descriptor_15_1;
    [v51 saveRelationship:v49 contact:0 extraRecordsToSave:v52 extraRecordIDsToDelete:v53 cloudKitGroup:v50 activity:0 completion:v0 + 888];
    v55 = v0 + 80;

    return MEMORY[0x282200938](v55);
  }

  v37 = *(v0 + 1536);
  *(v0 + 1560) = [objc_opt_self() relationshipZone];
  v38 = [v37 UUID];
  if (!v38)
  {

    __break(1u);
    return MEMORY[0x282200938](v55);
  }

  v39 = v38;
  v40 = *(v0 + 1296);
  v41 = *(v0 + 1272);
  v42 = *(v0 + 1264);
  v43 = *(v0 + 1088);

  sub_221FB5C18();

  v44 = sub_221FB5BE8();
  v46 = v45;
  *(v0 + 1568) = v44;
  *(v0 + 1576) = v45;
  v47 = *(v41 + 8);
  *(v0 + 1584) = v47;
  *(v0 + 1592) = (v41 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v47(v40, v42);
  __swift_project_boxed_opaque_existential_0Tm((v43 + 336), *(v43 + 360));
  v48 = swift_task_alloc();
  *(v0 + 1600) = v48;
  *v48 = v0;
  v48[1] = sub_221F64878;

  return sub_221F288AC(v44, v46);
}

uint64_t sub_221F64538()
{
  v1 = *(v0 + 1544);
  v2 = v1;
  v3 = sub_221FB61B8();
  v4 = sub_221FB65A8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_221E93000, v3, v4, "Failed to make relationship shares: %@", v5, 0xCu);
    sub_221E9CFE8(v6, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v6, -1, -1);
    MEMORY[0x223DADA80](v5, -1, -1);
  }

  v9 = *(v0 + 1456);
  v10 = *(v0 + 1416);
  v11 = *(v0 + 1400);
  v24 = *(v0 + 1304);
  v25 = *(v0 + 1520);
  v12 = *(v0 + 1272);
  v23 = *(v0 + 1264);
  v13 = *(v0 + 1184);

  *v13 = 1;
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for IDSError(0);
  sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
  swift_allocError();
  v16 = v15;
  sub_221EA4A40(v13, v15);
  *(v16 + *(v14 + 20)) = v1;
  swift_willThrow();
  v17 = v1;

  (*(v12 + 8))(v24, v23);
  if (v25)
  {
    v18 = 1480;
    v19 = 1488;
  }

  else
  {

    v18 = 1488;
    v19 = 1512;
  }

  v20 = *(v0 + v18);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_221F64878(uint64_t a1)
{
  *(*v1 + 1608) = a1;

  return MEMORY[0x2822009F8](sub_221F64978, 0, 0);
}

uint64_t sub_221F64978()
{
  v1 = v0[201];
  if (v1)
  {
  }

  else
  {
    v2 = objc_allocWithZone(MEMORY[0x277CE9108]);
    v3 = sub_221FB62E8();

    v1 = [v2 initWithRelationshipIdentifier_];
  }

  v0[202] = v1;
  v4 = v0[192];
  v5 = *__swift_project_boxed_opaque_existential_0Tm((v0[136] + 336), *(v0[136] + 360));
  v6 = v4;

  return MEMORY[0x2822009F8](sub_221F64A64, v5, 0);
}

uint64_t sub_221F64A64()
{
  v1 = *(v0 + 1544);
  *(v0 + 1624) = sub_221F5A3A4(*(v0 + 1536), *(v0 + 1560));
  *(v0 + 1632) = v1;
  v2 = *(v0 + 1536);
  if (v1)
  {

    v3 = sub_221F65170;
  }

  else
  {

    v3 = sub_221F64B30;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F64B30()
{
  v1 = *(v0 + 1624);
  v2 = *(v0 + 1616);
  v3 = *(v0 + 1560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEB928, &qword_221FB8E00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221FB81B0;
  *(v4 + 32) = v1;

  *(v0 + 1640) = v4;
  v5 = sub_221FB61B8();
  v6 = sub_221FB65C8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 1536);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&dword_221E93000, v5, v6, "Push legacy relationship %@", v8, 0xCu);
    sub_221E9CFE8(v9, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  v11 = *(v0 + 1536);
  v12 = *(v0 + 1088);

  v13 = __swift_project_boxed_opaque_existential_0Tm((v12 + 496), *(v12 + 520));
  if ([v11 cloudType])
  {
    v14 = *(v0 + 1536);
    v15 = sub_221FB61B8();
    v16 = sub_221FB65A8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 1536);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v17;
      *v19 = v17;
      v20 = v17;
      _os_log_impl(&dword_221E93000, v15, v16, "Attempting to save secure cloud relationship to legacy container %@", v18, 0xCu);
      sub_221E9CFE8(v19, &qword_27CFEB900, &unk_221FB8C10);
      MEMORY[0x223DADA80](v19, -1, -1);
      MEMORY[0x223DADA80](v18, -1, -1);
    }

    sub_221EA4994();
    v21 = swift_allocError();
    *v22 = 11;
    swift_willThrow();
    v23 = *(v0 + 1320);

    v43 = *(v0 + 1512);
    v44 = *(v0 + 1536);
    v45 = *(v0 + 1480);
    v24 = *(v0 + 1456);
    v25 = *(v0 + 1416);
    v26 = *(v0 + 1400);
    v27 = *(v0 + 1272);
    v41 = *(v0 + 1264);
    v42 = *(v0 + 1304);
    v28 = *(v0 + 1184);
    *v28 = 1;
    swift_storeEnumTagMultiPayload();
    v29 = type metadata accessor for IDSError(0);
    sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
    swift_allocError();
    v31 = v30;
    sub_221EA4A40(v28, v30);
    *(v31 + *(v29 + 20)) = v21;
    swift_willThrow();
    v32 = v21;

    (*(v27 + 8))(v42, v41);

    v33 = *(v0 + 8);

    return v33();
  }

  else
  {
    v35 = *(v0 + 1536);
    v36 = *(v0 + 1384);
    v37 = *__swift_project_boxed_opaque_existential_0Tm(v13 + 6, v13[9]);
    *(v0 + 1648) = sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
    v38 = sub_221FB6428();
    *(v0 + 1656) = v38;
    sub_221E9D138(0, &qword_281306F20, 0x277CBC5D0);
    v39 = sub_221FB6428();
    *(v0 + 1664) = v39;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 1064;
    *(v0 + 88) = sub_221F65324;
    v40 = swift_continuation_init();
    *(v0 + 944) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD30, &unk_221FB9240);
    *(v0 + 920) = v40;
    *(v0 + 888) = MEMORY[0x277D85DD0];
    *(v0 + 896) = 1107296256;
    *(v0 + 904) = sub_221F68D78;
    *(v0 + 912) = &block_descriptor_15_1;
    [v37 saveRelationship:v35 contact:0 extraRecordsToSave:v38 extraRecordIDsToDelete:v39 cloudKitGroup:v36 activity:0 completion:v0 + 888];

    return MEMORY[0x282200938](v0 + 80);
  }
}

uint64_t sub_221F65170()
{
  v1 = *(v0 + 1584);
  v2 = *(v0 + 1560);
  v3 = *(v0 + 1512);
  v11 = *(v0 + 1536);
  v12 = *(v0 + 1480);
  v4 = *(v0 + 1456);
  v5 = *(v0 + 1416);
  v6 = *(v0 + 1400);
  v7 = *(v0 + 1304);
  v8 = *(v0 + 1264);

  v1(v7, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_221F65324()
{
  v1 = *(*v0 + 112);
  *(*v0 + 1672) = v1;
  if (v1)
  {
    v2 = sub_221F65F44;
  }

  else
  {
    v2 = sub_221F65434;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F65434()
{
  v1 = v0[208];
  v2 = v0[207];
  v3 = v0[192];
  v4 = v0[136];
  v0[210] = v0[133];

  v5 = __swift_project_boxed_opaque_existential_0Tm((v4 + 496), *(v4 + 520));
  v6 = *__swift_project_boxed_opaque_existential_0Tm(v5 + 6, v5[9]);

  sub_221F17A54(v7);

  sub_221EBCC48();
  v8 = sub_221FB64E8();
  v0[211] = v8;

  v0[18] = v0;
  v0[23] = v0 + 130;
  v0[19] = sub_221F655FC;
  v9 = swift_continuation_init();
  v0[126] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB68, &unk_221FB9410);
  v0[123] = v9;
  v0[119] = MEMORY[0x277D85DD0];
  v0[120] = 1107296256;
  v0[121] = sub_221EBCB58;
  v0[122] = &block_descriptor_18_1;
  [v6 handleSavedRecords:v8 forContact:0 completion:v0 + 119];

  return MEMORY[0x282200938](v0 + 18);
}

uint64_t sub_221F655FC()
{
  v1 = *(*v0 + 176);
  *(*v0 + 1696) = v1;
  if (v1)
  {
    v2 = sub_221F65CB8;
  }

  else
  {
    v2 = sub_221F6570C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F6570C()
{
  v1 = *(v0 + 1688);
  v2 = *(v0 + 1536);
  *(v0 + 1704) = *(v0 + 1048);

  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    v3 = *(v0 + 1552);
    v4 = *(v0 + 1864);
    v5 = UserDefaultsKeys.rawValue.getter();
    v6 = _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v3, v5);

    if (v6 == 2)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (*(v0 + 1864) != 1)
  {
LABEL_6:

    v8 = sub_221FB61B8();
    v9 = sub_221FB65C8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_221E93000, v8, v9, "Updating relationships", v10, 2u);
      MEMORY[0x223DADA80](v10, -1, -1);
    }

    v11 = *(v0 + 1480);
    v12 = *(v0 + 1464);
    v13 = *(v0 + 1232);
    v14 = *(v0 + 1216);

    v15 = v11;
    sub_221FB5ED8();
    v16 = sub_221FB62E8();

    [v15 setIncomingHandshakeToken_];

    v17 = v15;
    sub_221FB5F18();
    sub_221FB6018();
    v19 = v18;
    v12(v13, v14);
    if (v19)
    {
    }

    v23 = *(v0 + 1480);
    v24 = sub_221FB62E8();

    [v23 setCloudKitAddress_];

    v25 = [v23 addresses];
    if (v25)
    {
      v26 = v25;
      v27 = sub_221FB64F8();
    }

    else
    {
      v27 = MEMORY[0x277D84FA0];
    }

    v28 = *(v0 + 1512);
    v29 = *(v0 + 1360);
    v30 = *(v0 + 1320);
    v31 = *(v0 + 1208);
    v32 = *(v0 + 1200);
    v53 = *(v0 + 1192);
    v33 = *(v0 + 1080);
    v34 = *(v0 + 1480);
    sub_221F78DEC(v29, v27);

    v35 = sub_221FB64E8();

    [v34 setAddresses_];

    v36 = v34;
    [v36 setPreferredReachableAddress_];

    [v36 setPreferredReachableService_];
    v37 = v36;
    v38 = [v28 recordID];
    [v37 setRelationshipZoneShareID_];

    [v37 setReceivedInvitation_];
    v39 = v37;
    sub_221FB5EE8();
    v40 = sub_221FB5B58();
    (*(v32 + 8))(v31, v53);
    [v39 insertEventWithType:300 timestamp:v40];

    v41 = sub_221FB61B8();
    v42 = sub_221FB65C8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = *(v0 + 1480);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      *(v44 + 4) = v43;
      *v45 = v43;
      v46 = v43;
      _os_log_impl(&dword_221E93000, v41, v42, "Pushing secure cloud relationship %@", v44, 0xCu);
      sub_221E9CFE8(v45, &qword_27CFEB900, &unk_221FB8C10);
      MEMORY[0x223DADA80](v45, -1, -1);
      MEMORY[0x223DADA80](v44, -1, -1);
    }

    v47 = *(v0 + 1480);
    v48 = *(v0 + 1088);

    __swift_project_boxed_opaque_existential_0Tm((v48 + 496), *(v48 + 520));
    v49 = v47;
    v50 = swift_task_alloc();
    *(v0 + 1720) = v50;
    *v50 = v0;
    v50[1] = sub_221F66790;
    v51 = *(v0 + 1480);
    v52 = *(v0 + 1384);

    return sub_221EBAEA8(v51, 0, v52, 0);
  }

  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 1088) + 496), *(*(v0 + 1088) + 520));
  v20 = swift_task_alloc();
  *(v0 + 1712) = v20;
  *v20 = v0;
  v20[1] = sub_221F661E0;
  v21 = *(v0 + 1680);

  return sub_221EBC594(v21);
}

uint64_t sub_221F65CB8(uint64_t a1)
{
  v2 = v1[211];
  v3 = v1[165];
  swift_willThrow();

  v4 = v1[212];
  v18 = v1[189];
  v19 = v1[192];
  v20 = v1[185];
  v5 = v1[182];
  v6 = v1[177];
  v7 = v1[175];
  v8 = v1[159];
  v16 = v1[158];
  v17 = v1[163];
  v9 = v1[148];
  *v9 = 1;
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for IDSError(0);
  sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
  swift_allocError();
  v12 = v11;
  sub_221EA4A40(v9, v11);
  *(v12 + *(v10 + 20)) = v4;
  swift_willThrow();
  v13 = v4;

  (*(v8 + 8))(v17, v16);

  v14 = v1[1];

  return v14();
}

uint64_t sub_221F65F44(uint64_t a1)
{
  v2 = *(v1 + 1664);
  v3 = *(v1 + 1656);
  swift_willThrow();

  v4 = *(v1 + 1672);
  v5 = *(v1 + 1320);

  v19 = *(v1 + 1512);
  v20 = *(v1 + 1536);
  v21 = *(v1 + 1480);
  v6 = *(v1 + 1456);
  v7 = *(v1 + 1416);
  v8 = *(v1 + 1400);
  v9 = *(v1 + 1272);
  v17 = *(v1 + 1264);
  v18 = *(v1 + 1304);
  v10 = *(v1 + 1184);
  *v10 = 1;
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for IDSError(0);
  sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
  swift_allocError();
  v13 = v12;
  sub_221EA4A40(v10, v12);
  *(v13 + *(v11 + 20)) = v4;
  swift_willThrow();
  v14 = v4;

  (*(v9 + 8))(v18, v17);

  v15 = *(v1 + 8);

  return v15();
}

uint64_t sub_221F661E0()
{

  return MEMORY[0x2822009F8](sub_221F662F8, 0, 0);
}

uint64_t sub_221F662F8(uint64_t a1)
{
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Updating relationships", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = *(v1 + 1480);
  v6 = *(v1 + 1464);
  v7 = *(v1 + 1232);
  v8 = *(v1 + 1216);

  v9 = v5;
  sub_221FB5ED8();
  v10 = sub_221FB62E8();

  [v9 setIncomingHandshakeToken_];

  v11 = v9;
  sub_221FB5F18();
  sub_221FB6018();
  v13 = v12;
  v6(v7, v8);
  if (v13)
  {
  }

  v14 = *(v1 + 1480);
  v15 = sub_221FB62E8();

  [v14 setCloudKitAddress_];

  v16 = [v14 addresses];
  if (v16)
  {
    v17 = v16;
    v18 = sub_221FB64F8();
  }

  else
  {
    v18 = MEMORY[0x277D84FA0];
  }

  v19 = *(v1 + 1512);
  v20 = *(v1 + 1360);
  v21 = *(v1 + 1320);
  v22 = *(v1 + 1208);
  v23 = *(v1 + 1200);
  v45 = *(v1 + 1192);
  v24 = *(v1 + 1080);
  v25 = *(v1 + 1480);
  sub_221F78DEC(v20, v18);

  v26 = sub_221FB64E8();

  [v25 setAddresses_];

  v27 = v25;
  [v27 setPreferredReachableAddress_];

  [v27 setPreferredReachableService_];
  v28 = v27;
  v29 = [v19 recordID];
  [v28 setRelationshipZoneShareID_];

  [v28 setReceivedInvitation_];
  v30 = v28;
  sub_221FB5EE8();
  v31 = sub_221FB5B58();
  (*(v23 + 8))(v22, v45);
  [v30 insertEventWithType:300 timestamp:v31];

  v32 = sub_221FB61B8();
  v33 = sub_221FB65C8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = *(v1 + 1480);
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    *(v35 + 4) = v34;
    *v36 = v34;
    v37 = v34;
    _os_log_impl(&dword_221E93000, v32, v33, "Pushing secure cloud relationship %@", v35, 0xCu);
    sub_221E9CFE8(v36, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v36, -1, -1);
    MEMORY[0x223DADA80](v35, -1, -1);
  }

  v38 = *(v1 + 1480);
  v39 = *(v1 + 1088);

  __swift_project_boxed_opaque_existential_0Tm((v39 + 496), *(v39 + 520));
  v40 = v38;
  v41 = swift_task_alloc();
  *(v1 + 1720) = v41;
  *v41 = v1;
  v41[1] = sub_221F66790;
  v42 = *(v1 + 1480);
  v43 = *(v1 + 1384);

  return sub_221EBAEA8(v42, 0, v43, 0);
}

uint64_t sub_221F66790(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 1728) = a1;
  *(v4 + 1736) = v1;

  if (v1)
  {
    v5 = sub_221F66B70;
  }

  else
  {
    v5 = sub_221F668D0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221F668D0()
{
  v1 = v0[216];
  v2 = v0[185];
  v3 = v0[182];
  v4 = v0[136];
  swift_beginAccess();
  v0[132] = v1;

  v5 = __swift_project_boxed_opaque_existential_0Tm((v4 + 416), *(v4 + 440));
  v6 = [v3 UUID];
  sub_221FB5C18();

  v7 = *v5;
  v8 = swift_task_alloc();
  v0[218] = v8;
  *v8 = v0;
  v8[1] = sub_221F669E4;
  v9 = v0[161];

  return sub_221FB4D30(200, v9, v7);
}

uint64_t sub_221F669E4()
{
  v2 = *v1;
  v2[219] = v0;

  v3 = v2[161];
  v4 = v2[159];
  v5 = v2[158];
  v6 = *(v4 + 8);
  v7 = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v0)
  {
    v2[222] = v6;
    v2[223] = v7;
    v6(v3, v5);
    v8 = sub_221F6730C;
  }

  else
  {
    v2[220] = v6;
    v2[221] = v7;
    v6(v3, v5);
    v8 = sub_221F66DC0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_221F66B70()
{
  v1 = v0[217];
  v15 = v0[189];
  v16 = v0[213];
  v17 = v0[185];
  v2 = v0[182];
  v3 = v0[177];
  v4 = v0[175];
  v5 = v0[159];
  v13 = v0[158];
  v14 = v0[163];
  v6 = v0[148];
  *v6 = 1;
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for IDSError(0);
  sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
  swift_allocError();
  v9 = v8;
  sub_221EA4A40(v6, v8);
  *(v9 + *(v7 + 20)) = v1;
  swift_willThrow();
  v10 = v1;

  (*(v5 + 8))(v14, v13);

  v11 = v0[1];

  return v11();
}

uint64_t sub_221F66DC0()
{
  v1 = [*(v0 + 1728) isFriendshipActive];
  v40 = *(v0 + 1760);
  if (v1)
  {
    v37 = *(v0 + 1704);
    v39 = *(v0 + 1728);
    v2 = *(v0 + 1456);
    v3 = *(v0 + 1416);
    v4 = *(v0 + 1400);
    v35 = *(v0 + 1304);
    v36 = *(v0 + 1512);
    v34 = *(v0 + 1264);
    v5 = *(v0 + 1184);
    v6 = [v2 UUID];
    sub_221FB5C18();

    swift_storeEnumTagMultiPayload();
    sub_221EA4994();
    v7 = swift_allocError();
    *v8 = 1;
    v9 = type metadata accessor for IDSError(0);
    sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
    swift_allocError();
    v11 = v10;
    sub_221EA4A40(v5, v10);
    *(v11 + *(v9 + 20)) = v7;
    swift_willThrow();

    v40(v35, v34);

    v12 = *(v0 + 8);
  }

  else
  {
    v13 = *(v0 + 1464);
    v14 = *(v0 + 1456);
    v15 = *(v0 + 1280);
    v38 = *(v0 + 1264);
    v16 = *(v0 + 1248);
    v17 = *(v0 + 1216);
    v18 = *(v0 + 1088);
    __swift_project_boxed_opaque_existential_0Tm(v18 + 10, v18[13]);
    sub_221FB5F18();
    v19 = sub_221FB6038();
    v13(v16, v17);
    v20 = [v14 UUID];
    sub_221FB5C18();

    v21 = sub_221FB5BF8();
    ASProcessActivityDataPreviewWithManager();

    v40(v15, v38);
    [*__swift_project_boxed_opaque_existential_0Tm(v18 + 47 v18[50])];
    [*__swift_project_boxed_opaque_existential_0Tm(v18 + 15 v18[18])];
    v22 = sub_221FB61B8();
    v23 = sub_221FB65C8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_221E93000, v22, v23, "Finished handling invitation request", v24, 2u);
      MEMORY[0x223DADA80](v24, -1, -1);
    }

    v25 = *(v0 + 1760);
    v26 = *(v0 + 1704);
    v27 = *(v0 + 1512);
    v28 = *(v0 + 1416);
    v29 = *(v0 + 1400);
    v30 = *(v0 + 1304);
    v33 = *(v0 + 1728);
    v31 = *(v0 + 1264);

    v25(v30, v31);

    v12 = *(v0 + 8);
  }

  return v12();
}

uint64_t sub_221F6730C(uint64_t a1)
{
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[216];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v4;
    *v6 = v4;
    v7 = v4;
    _os_log_impl(&dword_221E93000, v2, v3, "Failed to add remote event type for relationship: %@", v5, 0xCu);
    sub_221E9CFE8(v6, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v6, -1, -1);
    MEMORY[0x223DADA80](v5, -1, -1);
  }

  v8 = v1[219];
  v24 = v1[216];
  v23 = v1[213];
  v21 = v1[222];
  v22 = v1[189];
  v9 = v1[182];
  v10 = v1[177];
  v11 = v1[175];
  v20 = v1[163];
  v12 = v1[158];
  v13 = v1[148];

  *v13 = 1;
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for IDSError(0);
  sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
  swift_allocError();
  v16 = v15;
  sub_221EA4A40(v13, v15);
  *(v16 + *(v14 + 20)) = v8;
  swift_willThrow();
  v17 = v8;

  v21(v20, v12);

  v18 = v1[1];

  return v18();
}

uint64_t sub_221F67628()
{
  v2 = *v1;
  *(*v1 + 1800) = v0;

  (*(v2[142] + 8))(v2[146], v2[141]);
  if (v0)
  {
    v3 = sub_221F68BF0;
  }

  else
  {
    v3 = sub_221F67790;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F67790()
{
  v1 = v0[182];
  v2 = v0[177];
  v3 = v0[175];
  v4 = v0[159];
  v13 = v0[158];
  v14 = v0[163];
  v5 = v0[148];
  swift_storeEnumTagMultiPayload();
  sub_221EA4994();
  v6 = swift_allocError();
  *v7 = 9;
  v8 = type metadata accessor for IDSError(0);
  sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
  swift_allocError();
  v10 = v9;
  sub_221EA4A40(v5, v9);
  *(v10 + *(v8 + 20)) = v6;
  swift_willThrow();

  (*(v4 + 8))(v14, v13);

  v11 = v0[1];

  return v11();
}

uint64_t sub_221F679C0()
{
  v2 = *v1;
  *(*v1 + 1816) = v0;

  (*(v2[142] + 8))(v2[145], v2[141]);
  if (v0)
  {
    v3 = sub_221F68A70;
  }

  else
  {
    v3 = sub_221F67B28;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F67B28()
{
  v1 = v0[177];
  v2 = v0[175];
  v13 = v0[163];
  v3 = v0[159];
  v4 = v0[158];
  v5 = v0[148];
  swift_storeEnumTagMultiPayload();
  sub_221EA4994();
  v6 = swift_allocError();
  *v7 = 49;
  v8 = type metadata accessor for IDSError(0);
  sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
  swift_allocError();
  v10 = v9;
  sub_221EA4A40(v5, v9);
  *(v10 + *(v8 + 20)) = v6;
  swift_willThrow();

  (*(v3 + 8))(v13, v4);

  v11 = v0[1];

  return v11();
}

uint64_t sub_221F67D54()
{
  v2 = *v1;
  *(*v1 + 1832) = v0;

  (*(v2[142] + 8))(v2[144], v2[141]);
  if (v0)
  {
    v3 = sub_221F688F0;
  }

  else
  {
    v3 = sub_221F67EBC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F67EBC()
{
  v1 = v0[177];
  v2 = v0[175];
  v13 = v0[163];
  v3 = v0[159];
  v4 = v0[158];
  v5 = v0[148];
  swift_storeEnumTagMultiPayload();
  sub_221EA4994();
  v6 = swift_allocError();
  *v7 = 6;
  v8 = type metadata accessor for IDSError(0);
  sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
  swift_allocError();
  v10 = v9;
  sub_221EA4A40(v5, v9);
  *(v10 + *(v8 + 20)) = v6;
  swift_willThrow();

  (*(v3 + 8))(v13, v4);

  v11 = v0[1];

  return v11();
}

uint64_t sub_221F680E8()
{
  v22 = v0;

  v1 = sub_221FB61B8();
  v2 = sub_221FB65A8();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[168];
  if (v3)
  {
    v5 = v0[167];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315138;
    v8 = sub_221EF4114(v5, v4, &v21);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_221E93000, v1, v2, "Destination %s does not have a matching legacy participant", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x223DADA80](v7, -1, -1);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  else
  {
  }

  v9 = v0[175];
  v10 = v0[163];
  v11 = v0[159];
  v12 = v0[158];
  v13 = v0[148];
  *v13 = 1;
  swift_storeEnumTagMultiPayload();
  sub_221EA4994();
  v14 = swift_allocError();
  *v15 = 12;
  v16 = type metadata accessor for IDSError(0);
  sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
  swift_allocError();
  v18 = v17;
  sub_221EA4A40(v13, v17);
  *(v18 + *(v16 + 20)) = v14;
  swift_willThrow();

  (*(v11 + 8))(v10, v12);

  v19 = v0[1];

  return v19();
}

uint64_t sub_221F68404()
{
  v2 = *v1;
  *(*v1 + 1848) = v0;

  (*(v2[142] + 8))(v2[143], v2[141]);
  if (v0)
  {
    v3 = sub_221F68788;
  }

  else
  {
    v3 = sub_221F6856C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F6856C()
{
  v1 = v0[163];
  v2 = v0[159];
  v3 = v0[158];
  v4 = v0[148];
  swift_storeEnumTagMultiPayload();
  sub_221EA4994();
  v5 = swift_allocError();
  *v6 = 10;
  v7 = type metadata accessor for IDSError(0);
  sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
  swift_allocError();
  v9 = v8;
  sub_221EA4A40(v4, v8);
  *(v9 + *(v7 + 20)) = v5;
  swift_willThrow();
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_221F68788()
{
  (*(v0[159] + 8))(v0[163], v0[158]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_221F688F0()
{
  v1 = *(v0 + 1400);
  v2 = *(v0 + 1304);
  v3 = *(v0 + 1272);
  v4 = *(v0 + 1264);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_221F68A70()
{
  v1 = *(v0 + 1400);
  v2 = *(v0 + 1304);
  v3 = *(v0 + 1272);
  v4 = *(v0 + 1264);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_221F68BF0()
{
  v1 = *(v0 + 1416);
  v2 = *(v0 + 1400);
  v3 = *(v0 + 1304);
  v4 = *(v0 + 1272);
  v5 = *(v0 + 1264);

  (*(v4 + 8))(v3, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_221F68D78(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
    **(*(v4 + 64) + 40) = sub_221FB6438();

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_221F68EE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_221F68F30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 616))
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

uint64_t sub_221F68F78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 584) = 0u;
    *(result + 600) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 616) = 1;
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

    *(result + 616) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t TestProperty.init(_:fallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v9 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v18[-v14];
  v19 = *v13;
  v16 = *(v9 + 16);
  v16(&v18[-v14]);
  (v16)(v12, a2, a3);
  TestProperty.init(_:fallback:internalFallback:)(&v19, v15, v12, a3, a4, a5);
  return (*(v9 + 8))(a2, a3);
}

uint64_t TestProperty.init(_:fallback:internalFallback:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  *a6 = *a1;
  sub_221FB6318();
  v11 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v12 = sub_221FB62E8();

  v13 = [v11 initWithSuiteName_];

  if (!v13)
  {
    v13 = [objc_opt_self() standardUserDefaults];
  }

  v15 = type metadata accessor for TestProperty(0, a4, a5, v14);
  *&a6[*(v15 + 40)] = v13;
  v16 = _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  v22 = *(a4 - 8);
  v17 = (v16 & 1) == 0;
  if (v16)
  {
    v18 = a2;
  }

  else
  {
    v18 = a3;
  }

  if (v17)
  {
    a3 = a2;
  }

  (*(*(a4 - 8) + 8))(v18, a4);
  v19 = *(v22 + 32);
  v20 = &a6[*(v15 + 36)];

  return v19(v20, a3, a4);
}

uint64_t TestProperty.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = sub_221FB6778();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19[-v9];
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    v11 = *&v2[*(a1 + 40)];
    v19[15] = *v2;
    v12 = UserDefaultsKeys.rawValue.getter();
    (*(*(a1 + 24) + 8))(v11, v12, v13, v6);

    v14 = *(v6 - 8);
    v15 = *(v14 + 48);
    if (v15(v10, 1, v6) == 1)
    {
      (*(v14 + 16))(a2, &v3[*(a1 + 36)], v6);
      result = v15(v10, 1, v6);
      if (result != 1)
      {
        return (*(v8 + 8))(v10, v7);
      }
    }

    else
    {
      return (*(v14 + 32))(a2, v10, v6);
    }
  }

  else
  {
    v17 = *(*(v6 - 8) + 16);
    v18 = &v2[*(a1 + 36)];

    return v17(a2, v18, v6);
  }

  return result;
}

uint64_t sub_221F695B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v12 - v6;
  (*(v8 + 16))(&v12 - v6);
  v10 = type metadata accessor for TestProperty(0, v4, v5, v9);
  return TestProperty.wrappedValue.setter(v7, v10);
}

uint64_t TestProperty.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    v5 = *(v2 + *(a2 + 40));
    v6 = UserDefaultsKeys.rawValue.getter();
    v8 = a2 + 16;
    v7 = *(a2 + 16);
    (*(*(v8 + 8) + 16))(v5, v6, v9, v7);

    v10 = *(*(v7 - 8) + 8);
    v11 = a1;
    v12 = v7;
  }

  else
  {
    v12 = *(a2 + 16);
    v10 = *(*(v12 - 8) + 8);
    v11 = a1;
  }

  return v10(v11, v12);
}

void (*TestProperty.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  TestProperty.wrappedValue.getter(a2, v11);
  return sub_221F6988C;
}

void sub_221F6988C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = *v2;
    (*(v6 + 16))((*a1)[4], v4, v5);
    TestProperty.wrappedValue.setter(v3, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    TestProperty.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_221F69954(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_221F69D20();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_221F699EC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + ((v6 + 1) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 1) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *sub_221F69B44(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((v9 + ((v8 + 1) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((v9 + ((v8 + 1) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = (&result[v8 + 1] & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = (&result[v9] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v21 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v21 = a2 - 1;
        }

        *v20 = v21;
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((v9 + ((v8 + 1) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + ((v8 + 1) & ~v8)) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((v9 + ((v8 + 1) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

unint64_t sub_221F69D20()
{
  result = qword_27CFEC888;
  if (!qword_27CFEC888)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CFEC888);
  }

  return result;
}

unint64_t sub_221F69D80()
{
  result = qword_27CFEC890;
  if (!qword_27CFEC890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC890);
  }

  return result;
}

unint64_t sub_221F69DE8()
{
  result = qword_27CFEC898;
  if (!qword_27CFEC898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC898);
  }

  return result;
}

uint64_t static Platform.current.setter(char a1)
{
  result = swift_beginAccess();
  byte_27CFEC8A0 = a1 & 1;
  return result;
}

ActivitySharingServices::Platform_optional __swiftcall Platform.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = ActivitySharingServices_Platform_watch;
  }

  else
  {
    v1.value = ActivitySharingServices_Platform_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void *sub_221F69F58@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_221FB6318();

    sub_221FB6338();
  }

  has_internal_ui = os_variant_has_internal_ui();
  swift_unknownObjectRelease();
  return has_internal_ui;
}

unint64_t sub_221F6A040()
{
  result = qword_27CFEC8A8;
  if (!qword_27CFEC8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC8A8);
  }

  return result;
}

unint64_t sub_221F6A098()
{
  result = qword_27CFEC8B0;
  if (!qword_27CFEC8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEC8B8, &qword_221FBDD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC8B0);
  }

  return result;
}

uint64_t sub_221F6A10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E9544C;

  return v9(a1, a2, a3);
}

uint64_t sub_221F6A234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221E963B4;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_221F6A364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E963B4;

  return v9(a1, a2, a3);
}

uint64_t sub_221F6A48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221E963B4;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_221F6A5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E963B4;

  return v9(a1, a2, a3);
}

uint64_t sub_221F6A6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E963B4;

  return v9(a1, a2, a3);
}

uint64_t sub_221F6A80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 56) + **(a4 + 56));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221E963B4;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_221F6A93C(uint64_t a1)
{
  v10 = sub_221FB6318();
  v11 = v2;
  v9 = &v10;
  v3 = sub_221F7B864(sub_221EB9CF4, v8, a1);

  if (v3)
  {
    return sub_221FB6318();
  }

  v10 = sub_221FB6318();
  v11 = v4;
  MEMORY[0x28223BE20](v10);
  v7[2] = &v10;
  v5 = sub_221F7B864(sub_221EB9CF4, v7, a1);

  if (v5)
  {
    return sub_221FB6318();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_221F6AA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_221FB5E48();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F6AB24, 0, 0);
}

uint64_t sub_221F6AB24()
{
  v41 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = sub_221FB61D8();
  __swift_project_value_buffer(v1, qword_281307DF0);
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Falling back to legacy invite flow", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = v0[4];

  if (v5)
  {
    v6 = v0[4];
    v7 = sub_221FB5E18();
    v9 = v8;

    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      v11 = sub_221FB5E18();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    v0[10] = v13;
    v27 = __swift_project_boxed_opaque_existential_0Tm((v0[5] + 48), *(v0[5] + 72));
    v28 = sub_221FB5E08();
    v30 = v29;
    v0[11] = v29;
    v31 = *v27;
    v32 = swift_task_alloc();
    v0[12] = v32;
    *v32 = v0;
    v32[1] = sub_221F6AEF4;
    v33 = v0[3];

    return sub_221FB52A8(v28, v30, v11, v13, v33, v6, v31);
  }

  else
  {
    v14 = *(v0[7] + 16);
    v14(v0[9], v0[2], v0[6]);
    v15 = sub_221FB61B8();
    v16 = sub_221FB65A8();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[9];
    if (v17)
    {
      v19 = v0[7];
      v20 = v0[8];
      v21 = v0[6];
      v22 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = v39;
      *v22 = 136315138;
      v14(v20, v18, v21);
      v23 = sub_221FB6328();
      v25 = v24;
      (*(v19 + 8))(v18, v21);
      v26 = sub_221EF4114(v23, v25, &v40);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_221E93000, v15, v16, "No available service identifier for fallback invite %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x223DADA80](v39, -1, -1);
      MEMORY[0x223DADA80](v22, -1, -1);
    }

    else
    {
      v35 = v0[6];
      v36 = v0[7];

      (*(v36 + 8))(v18, v35);
    }

    sub_221EA4994();
    swift_allocError();
    *v37 = 46;
    swift_willThrow();

    v38 = v0[1];

    return v38();
  }
}

uint64_t sub_221F6AEF4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_221F6B068(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for IDSErrorAction(0);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEC0F0, &qword_221FBA2A0);
  v2[9] = swift_task_alloc();
  v3 = type metadata accessor for IDSError(0);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = sub_221FB5E48();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F6B1F8, 0, 0);
}

uint64_t sub_221F6B1F8()
{
  v32 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[5];
  v5 = sub_221FB61D8();
  __swift_project_value_buffer(v5, qword_281307DF0);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_221FB61B8();
  v8 = sub_221FB65C8();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[16];
  if (v9)
  {
    v11 = v0[14];
    v12 = v0[15];
    v13 = v0[13];
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = sub_221FB6328();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_221EF4114(v15, v17, &v31);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_221E93000, v7, v8, "Inviting friend with request: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x223DADA80](v30, -1, -1);
    MEMORY[0x223DADA80](v14, -1, -1);
  }

  else
  {
    v19 = v0[13];
    v20 = v0[14];

    (*(v20 + 8))(v10, v19);
  }

  v21 = v0[6];
  v22 = sub_221FB5E38();
  v23 = sub_221F6A93C(v22);
  v25 = v24;

  v0[17] = v23;
  v0[18] = v25;
  v26 = v21[3];
  v27 = v21[4];
  __swift_project_boxed_opaque_existential_0Tm(v21, v26);
  v28 = swift_task_alloc();
  v0[19] = v28;
  *v28 = v0;
  v28[1] = sub_221F6B494;

  return MEMORY[0x28213AC20](v26, v27);
}

uint64_t sub_221F6B494(char a1)
{
  *(*v1 + 224) = a1;

  return MEMORY[0x2822009F8](sub_221F6B594, 0, 0);
}

uint64_t sub_221F6B594()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 369);
  v3 = *(v1 + 376);
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    v4 = UserDefaultsKeys.rawValue.getter();
    v5 = _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v3, v4);

    if (v5 == 2)
    {
      v6 = v2;
    }

    else
    {
      v6 = v5;
    }

    if (v6)
    {
      goto LABEL_16;
    }
  }

  else if (v2)
  {
LABEL_16:
    v13 = 1;
    goto LABEL_17;
  }

  v7 = sub_221FB5E28();
  v9 = v8;
  if (v7 == sub_221FB6318() && v9 == v10)
  {

    goto LABEL_16;
  }

  v12 = *(v0 + 224);
  v13 = sub_221FB6B58();

  if ((v13 & 1) == 0 && v12)
  {
    v14 = sub_221FB5E38();
    *(v0 + 16) = sub_221FB6318();
    *(v0 + 24) = v15;
    v16 = swift_task_alloc();
    *(v16 + 16) = v0 + 16;
    v13 = sub_221F7B864(sub_221EB8534, v16, v14);
  }

LABEL_17:
  v17 = *(v0 + 48);
  v18 = *(v17 + 385);
  v19 = *(v17 + 392);
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    v20 = UserDefaultsKeys.rawValue.getter();
    v21 = _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v19, v20);

    if (v21 != 2)
    {
      v18 = v21;
    }
  }

  if (v18 & 1) != 0 || ((v13 ^ 1))
  {
    v30 = swift_task_alloc();
    *(v0 + 192) = v30;
    *v30 = v0;
    v30[1] = sub_221F6BCC4;
    v31 = *(v0 + 136);
    v32 = *(v0 + 144);
    v33 = *(v0 + 40);

    return sub_221F6AA54(v33, v31, v32);
  }

  else
  {
    __swift_project_boxed_opaque_existential_0Tm((*(v0 + 48) + 208), *(*(v0 + 48) + 232));
    v22 = sub_221FB5E08();
    v24 = v23;
    *(v0 + 160) = v23;
    sub_221FB5E28();
    *(v0 + 168) = v25;
    v26 = swift_task_alloc();
    *(v0 + 176) = v26;
    *v26 = v0;
    v26[1] = sub_221F6B8AC;
    v27 = *(v0 + 136);
    v28 = *(v0 + 144);

    return sub_221F18C18(v22, v24, v27, v28);
  }
}

uint64_t sub_221F6B8AC()
{
  v2 = *v1;
  *(v2 + 184) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221F6BA3C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_221F6BA3C()
{
  v1 = v0[23];

  v0[4] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
  v3 = swift_dynamicCast();
  v4 = v0[11];
  v6 = v0[9];
  v5 = v0[10];
  if (v3)
  {
    v7 = v0[12];
    v8 = v0[8];
    (*(v4 + 56))(v0[9], 0, 1, v0[10]);
    sub_221F6E338(v6, v7, type metadata accessor for IDSError);
    sub_221EC44D8(v7, v8);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_221EDAE34(v0[8], type metadata accessor for IDSErrorAction);
      v9 = swift_task_alloc();
      v0[26] = v9;
      *v9 = v0;
      v9[1] = sub_221F6BF18;
      v10 = v0[17];
      v11 = v0[18];
      v12 = v0[5];

      return sub_221F6AA54(v12, v10, v11);
    }

    v14 = v0[8];
    sub_221EDAE34(v0[12], type metadata accessor for IDSError);

    sub_221EDAE34(v14, type metadata accessor for IDSErrorAction);
  }

  else
  {

    (*(v4 + 56))(v6, 1, 1, v5);
    sub_221F6DB64(v6);
  }

  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_221F6BCC4()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_221F6BE74;
  }

  else
  {
    v2 = sub_221F6BDD8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F6BDD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221F6BE74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221F6BF18()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_221F6C108;
  }

  else
  {
    v2 = sub_221F6C04C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F6C04C()
{
  v1 = *(v0 + 96);

  sub_221EDAE34(v1, type metadata accessor for IDSError);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_221F6C108()
{
  v1 = *(v0 + 96);

  sub_221EDAE34(v1, type metadata accessor for IDSError);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_221F6C1CC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = type metadata accessor for IDSErrorAction(0);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v4 = sub_221FB5C38();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEC0F0, &qword_221FBA2A0);
  v3[12] = swift_task_alloc();
  v5 = type metadata accessor for IDSError(0);
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F6C360, 0, 0);
}

uint64_t sub_221F6C360()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_221FB61D8();
  v0[16] = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000085, 0x8000000221FC3E90, 0xD000000000000030, 0x8000000221FC3E50);
  __swift_project_boxed_opaque_existential_0Tm((v1 + 168), *(v1 + 192));
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_221F6C48C;
  v5 = v0[3];
  v4 = v0[4];

  return sub_221F5FCE0(v5, v4);
}

uint64_t sub_221F6C48C()
{
  v2 = *v1;
  *(v2 + 144) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221F6C600, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_221F6C600()
{
  v1 = v0[18];
  v0[2] = v1;
  v2 = v0[14];
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
  v4 = swift_dynamicCast();
  v5 = *(v2 + 56);
  if (v4)
  {
    v6 = v0[15];
    v7 = v0[12];
    v8 = v0[8];
    v5(v7, 0, 1, v0[13]);
    sub_221F6E338(v7, v6, type metadata accessor for IDSError);
    sub_221EC44D8(v6, v8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
      v9 = sub_221FB61B8();
      v10 = sub_221FB65C8();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_221E93000, v9, v10, "Friendship already exists, auto accepting", v11, 2u);
        MEMORY[0x223DADA80](v11, -1, -1);
      }

      v12 = v0[5];

      __swift_project_boxed_opaque_existential_0Tm((v12 + 88), *(v12 + 112));
      v13 = swift_task_alloc();
      v0[19] = v13;
      *v13 = v0;
      v13[1] = sub_221F6C8CC;
      v14 = v0[11];

      return sub_221FA9168(v14);
    }

    v17 = v0[8];
    sub_221EDAE34(v0[15], type metadata accessor for IDSError);
    sub_221EDAE34(v17, type metadata accessor for IDSErrorAction);
  }

  else
  {
    v16 = v0[12];
    v5(v16, 1, 1, v0[13]);
    sub_221F6DB64(v16);
  }

  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_221F6C8CC()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_221F6CABC;
  }

  else
  {
    v2 = sub_221F6C9E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F6C9E0()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);

  (*(v3 + 8))(v2, v4);
  sub_221EDAE34(v1, type metadata accessor for IDSError);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_221F6CABC()
{
  v1 = v0[20];
  v2 = v0[18];
  v12 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[9];
  v7 = v0[7];
  *v7 = 1;
  swift_storeEnumTagMultiPayload();
  sub_221EA49E8();
  swift_allocError();
  v9 = v8;
  sub_221F6E338(v7, v8, type metadata accessor for IDSErrorAction);
  *(v9 + *(v3 + 20)) = v1;
  swift_willThrow();

  (*(v4 + 8))(v5, v6);
  sub_221EDAE34(v12, type metadata accessor for IDSError);

  v10 = v0[1];

  return v10();
}

uint64_t sub_221F6CC20(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_221F6CC40, 0, 0);
}

uint64_t sub_221F6CC40()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000085, 0x8000000221FC3E90, 0xD00000000000001ALL, 0x8000000221FC2D30);
  v3 = *(v1 + 40);
  v4 = sub_221FB5BF8();
  v5 = [v3 contactWithUUID_];
  v0[20] = v5;

  if (v5)
  {
    if ([v5 cloudType] == 1)
    {
      __swift_project_boxed_opaque_existential_0Tm((v0[19] + 88), *(v0[19] + 112));
      v6 = swift_task_alloc();
      v0[21] = v6;
      *v6 = v0;
      v6[1] = sub_221F6CF48;
      v7 = v0[18];

      return sub_221FA9168(v7);
    }

    else
    {
      v11 = *__swift_project_boxed_opaque_existential_0Tm((v0[19] + 48), *(v0[19] + 72));
      v12 = sub_221FB5BF8();
      v0[23] = v12;
      v0[2] = v0;
      v0[7] = v0 + 25;
      v0[3] = sub_221F6D124;
      v13 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_221FA909C;
      v0[13] = &block_descriptor_29;
      v0[14] = v13;
      [v11 acceptInviteRequestFromFriendWithUUID:v12 completion:v0 + 10];

      return MEMORY[0x282200938](v0 + 2);
    }
  }

  else
  {
    sub_221EA4994();
    swift_allocError();
    *v9 = 21;
    swift_willThrow();
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_221F6CF48()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_221F6D0C0;
  }

  else
  {
    v2 = sub_221F6D05C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F6D05C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221F6D0C0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221F6D124()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_221F6D2A0;
  }

  else
  {
    v2 = sub_221F6D234;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F6D234()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_221F6D2A0(uint64_t a1)
{
  v2 = v1[23];
  v3 = v1[20];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_221F6D318(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = type metadata accessor for IDSErrorAction(0);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEC0F0, &qword_221FBA2A0);
  v3[8] = swift_task_alloc();
  v4 = type metadata accessor for IDSError(0);
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F6D444, 0, 0);
}

uint64_t sub_221F6D444()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000085, 0x8000000221FC3E90, 0xD00000000000002ELL, 0x8000000221FC0EE0);
  __swift_project_boxed_opaque_existential_0Tm((v1 + 248), *(v1 + 272));
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_221F6D56C;
  v5 = v0[3];
  v4 = v0[4];

  return sub_221EA0D98(v5, v4);
}

uint64_t sub_221F6D56C()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221F6D6C0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_221F6D6C0()
{
  v1 = v0[13];
  v0[2] = v1;
  v2 = v0[10];
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
  v4 = swift_dynamicCast();
  v5 = *(v2 + 56);
  if (v4)
  {
    v6 = v0[11];
    v7 = v0[8];
    v8 = v0[7];
    v5(v7, 0, 1, v0[9]);
    sub_221F6E338(v7, v6, type metadata accessor for IDSError);
    sub_221EC44D8(v6, v8);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v9 = v0[5];
      sub_221EDAE34(v0[7], type metadata accessor for IDSErrorAction);
      __swift_project_boxed_opaque_existential_0Tm((v9 + 128), *(v9 + 152));
      v10 = swift_task_alloc();
      v0[14] = v10;
      *v10 = v0;
      v10[1] = sub_221F6D908;
      v11 = v0[3];

      return sub_221F7CB1C(v11);
    }

    v14 = v0[7];
    sub_221EDAE34(v0[11], type metadata accessor for IDSError);
    sub_221EDAE34(v14, type metadata accessor for IDSErrorAction);
  }

  else
  {
    v13 = v0[8];
    v5(v13, 1, 1, v0[9]);
    sub_221F6DB64(v13);
  }

  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_221F6D908()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_221F6DABC;
  }

  else
  {
    v2 = sub_221F6DA1C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F6DA1C()
{
  v1 = *(v0 + 88);

  sub_221EDAE34(v1, type metadata accessor for IDSError);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_221F6DABC()
{
  v1 = *(v0 + 88);

  sub_221EDAE34(v1, type metadata accessor for IDSError);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_221F6DB64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEC0F0, &qword_221FBA2A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_221F6DBCC(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_221F6DBEC, 0, 0);
}

uint64_t sub_221F6DBEC(uint64_t a1)
{
  v2 = *(v1[19] + 40);
  v3 = sub_221FB5BF8();
  v4 = [v2 contactWithUUID_];
  v1[20] = v4;

  if (v4)
  {
    if ([v4 cloudType] == 1)
    {
      __swift_project_boxed_opaque_existential_0Tm((v1[19] + 288), *(v1[19] + 312));
      v5 = swift_task_alloc();
      v1[21] = v5;
      *v5 = v1;
      v5[1] = sub_221F6DE70;
      v6 = v1[18];

      return sub_221F3CF70(v6);
    }

    else
    {
      v10 = *__swift_project_boxed_opaque_existential_0Tm((v1[19] + 48), *(v1[19] + 72));
      v11 = sub_221FB5BF8();
      v1[23] = v11;
      v1[2] = v1;
      v1[7] = v1 + 25;
      v1[3] = sub_221F6DF84;
      v12 = swift_continuation_init();
      v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
      v1[10] = MEMORY[0x277D85DD0];
      v1[11] = 1107296256;
      v1[12] = sub_221FA909C;
      v1[13] = &block_descriptor_24;
      v1[14] = v12;
      [v10 ignoreInviteRequestFromFriendWithUUID:v11 completion:v1 + 10];

      return MEMORY[0x282200938](v1 + 2);
    }
  }

  else
  {
    sub_221EA4994();
    swift_allocError();
    *v8 = 21;
    swift_willThrow();
    v9 = v1[1];

    return v9();
  }
}

uint64_t sub_221F6DE70()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_221F6E4CC;
  }

  else
  {
    v2 = sub_221F6E4D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F6DF84()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_221F6E4C8;
  }

  else
  {
    v2 = sub_221F6E4D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F6E094(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_221F6E0B4, 0, 0);
}

uint64_t sub_221F6E0B4(uint64_t a1)
{
  v2 = *(v1[19] + 40);
  v3 = sub_221FB5BF8();
  v4 = [v2 contactWithUUID_];
  v1[20] = v4;

  if (v4)
  {
    if ([v4 cloudType] == 1)
    {
      __swift_project_boxed_opaque_existential_0Tm((v1[19] + 328), *(v1[19] + 352));
      v5 = swift_task_alloc();
      v1[21] = v5;
      *v5 = v1;
      v5[1] = sub_221F6DE70;
      v6 = v1[18];

      return sub_221F5AC18(v6);
    }

    else
    {
      v10 = *__swift_project_boxed_opaque_existential_0Tm((v1[19] + 48), *(v1[19] + 72));
      v11 = sub_221FB5BF8();
      v1[23] = v11;
      v1[2] = v1;
      v1[7] = v1 + 25;
      v1[3] = sub_221F6DF84;
      v12 = swift_continuation_init();
      v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
      v1[10] = MEMORY[0x277D85DD0];
      v1[11] = 1107296256;
      v1[12] = sub_221FA909C;
      v1[13] = &block_descriptor_29;
      v1[14] = v12;
      [v10 sendWithdrawInviteRequestToFriendWithUUID:v11 completion:v1 + 10];

      return MEMORY[0x282200938](v1 + 2);
    }
  }

  else
  {
    sub_221EA4994();
    swift_allocError();
    *v8 = 21;
    swift_willThrow();
    v9 = v1[1];

    return v9();
  }
}

uint64_t sub_221F6E338(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_221F6E3B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 400))
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

uint64_t sub_221F6E400(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 392) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 400) = 1;
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

    *(result + 400) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221F6E4D8(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return v7(a1, a2);
}

uint64_t sub_221F6E5F0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_221E9544C;

  return v13(a1, a2 & 1, a3, a4, a5);
}

uint64_t sub_221F6E730(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9E350;

  return v7(a1, a2);
}

uint64_t sub_221F6E848(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_221E9544C;

  return v13(a1, a2 & 1, a3, a4, a5);
}

uint64_t sub_221F6E988()
{
  v1 = *(v0 + 128);
  v2 = sub_221FB62E8();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_221FB67C8();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25[0] = v23;
  v25[1] = v24;
  if (!*(&v24 + 1))
  {
    return sub_221F6F34C(v25);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC8C0, &qword_221FBDFF8);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = *(v22 + 16);
    if (v5)
    {
      v6 = 0;
      v21 = MEMORY[0x277D84F90];
      while (1)
      {
        v7 = v6;
        if (v6 >= *(v22 + 16))
        {
          break;
        }

        ++v6;

        v9 = sub_221F9A450(v8);
        v11 = v10;
        v12 = v9;
        v14 = v13;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_221EF35F0(0, *(v21 + 16) + 1, 1, v21);
          v21 = result;
        }

        v16 = *(v21 + 16);
        v15 = *(v21 + 24);
        if (v16 >= v15 >> 1)
        {
          result = sub_221EF35F0((v15 > 1), v16 + 1, 1, v21);
          v19 = v11;
          v17 = v14;
          v21 = result;
          v18 = v12;
        }

        else
        {
          v17 = v14;
          v18 = v12;
          v19 = v11;
        }

        *(v21 + 16) = v16 + 1;
        v20 = v21 + 24 * v16;
        *(v20 + 32) = v18;
        *(v20 + 40) = v19 & 1;
        *(v20 + 48) = v17;
        if (v5 - 1 == v7)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
LABEL_18:

      swift_beginAccess();
      *(v0 + 136) = v21;
    }
  }

  return result;
}

void sub_221F6ED30()
{
  v2 = v1;
  swift_beginAccess();
  v30 = v0;
  v3 = *(v0 + 136);
  v4 = *(v3 + 16);

  if (v4)
  {
    v5 = 0;
    v6 = v3 + 48;
    v28 = v4 - 1;
    v31 = MEMORY[0x277D84F90];
    v32 = v4;
    v33 = v3;
    v29 = v3 + 48;
    do
    {
      v7 = (v6 + 24 * v5);
      v8 = v5;
      while (1)
      {
        if (v8 >= *(v3 + 16))
        {
          __break(1u);
          return;
        }

        v9 = *(v7 - 2);
        v10 = v2;
        sub_221F99C58(v9, *(v7 - 8), *v7);
        if (!v2)
        {
          break;
        }

        v34 = v8 + 1;
        if (qword_281307080 != -1)
        {
          swift_once();
        }

        v12 = sub_221FB61D8();
        __swift_project_value_buffer(v12, qword_281307DF0);
        v13 = v9;
        v14 = sub_221FB61B8();
        v15 = sub_221FB65A8();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v35 = v17;
          *v16 = 136315138;
          v18 = v13;
          v19 = sub_221FB6328();
          v21 = sub_221EF4114(v19, v20, &v35);

          *(v16 + 4) = v21;
          _os_log_impl(&dword_221E93000, v14, v15, "Failed to create dictionary for invitation message %s", v16, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v17);
          MEMORY[0x223DADA80](v17, -1, -1);
          MEMORY[0x223DADA80](v16, -1, -1);
        }

        v3 = v33;
        v2 = 0;
        v7 += 3;
        v8 = v34;
        if (v32 == v34)
        {
          goto LABEL_16;
        }
      }

      v22 = v11;
      v5 = v8 + 1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_221EF34BC(0, v31[2] + 1, 1, v31);
      }

      v24 = v31[2];
      v23 = v31[3];
      if (v24 >= v23 >> 1)
      {
        v31 = sub_221EF34BC((v23 > 1), v24 + 1, 1, v31);
      }

      v6 = v29;
      v31[2] = v24 + 1;
      v31[v24 + 4] = v22;
    }

    while (v28 != v8);
  }

LABEL_16:

  v25 = *(v30 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC218, &qword_221FBE680);
  v26 = sub_221FB6428();

  v27 = sub_221FB62E8();
  [v25 setObject:v26 forKey:v27];
}

uint64_t sub_221F6F080()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_221F6F0EC(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 48) = a3;
  *(v4 + 56) = v3;
  *(v4 + 64) = a2;
  *(v4 + 40) = a1;
  return MEMORY[0x2822009F8](sub_221F6F114, v3, 0);
}

uint64_t sub_221F6F114()
{
  v23 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  swift_beginAccess();
  v3 = v2;
  sub_221F6F5A8((v1 + 136), v2);
  v5 = v4;

  v6 = *(*(v1 + 136) + 16);
  if (v6 < v5)
  {
    __break(1u);
    swift_once();
    v7 = sub_221FB61D8();
    __swift_project_value_buffer(v7, qword_281307DF0);
    v8 = v3;
    v9 = sub_221FB61B8();
    v10 = sub_221FB65A8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 64);
      v13 = *(v0 + 40);
      v12 = *(v0 + 48);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315138;
      *(v0 + 16) = v13;
      *(v0 + 24) = v11 & 1;
      *(v0 + 32) = v12;
      v16 = v8;
      v17 = sub_221FB6328();
      v19 = sub_221EF4114(v17, v18, &v22);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_221E93000, v9, v10, "Failed to store message removal: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x223DADA80](v15, -1, -1);
      MEMORY[0x223DADA80](v14, -1, -1);
    }
  }

  else
  {
    sub_221F6F8F8(v5, v6);
    swift_endAccess();
    sub_221F6ED30();
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_221F6F34C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC128, &unk_221FBA430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_221F6F3C8(uint64_t a1, void *a2)
{
  v25 = a2;
  v24 = sub_221FB5C38();
  v4 = MEMORY[0x28223BE20](v24);
  v23 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v22 = *(a1 + 16);
  if (!v22)
  {
    return 0;
  }

  v21 = v2;
  v9 = 0;
  v10 = (a1 + 32);
  v11 = (v6 + 8);
  while (1)
  {
    v12 = *v10;
    v10 += 3;
    v13 = v12;
    v14 = [v13 uniqueID];
    sub_221FB5C18();

    v15 = [v25 uniqueID];
    v16 = v23;
    sub_221FB5C18();

    LOBYTE(v15) = sub_221FB5C08();
    v17 = *v11;
    v18 = v16;
    v19 = v24;
    (*v11)(v18, v24);
    v17(v8, v19);

    if (v15)
    {
      break;
    }

    if (v22 == ++v9)
    {
      return 0;
    }
  }

  return v9;
}

void sub_221F6F5A8(uint64_t *a1, void *a2)
{
  v5 = sub_221FB5C38();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v42 - v10;
  v12 = *a1;
  v13 = sub_221F6F3C8(*a1, a2);
  if (!v2)
  {
    v42[1] = 0;
    if ((v14 & 1) == 0)
    {
      v49 = v11;
      v15 = v13 + 1;
      if (!__OFADD__(v13, 1))
      {
        v16 = v12;
        v19 = *(v12 + 16);
        v18 = (v12 + 16);
        v17 = v19;
        if (v15 == v19)
        {
          return;
        }

        v43 = a1;
        v46 = (v6 + 8);
        v47 = v5;
        v20 = 24 * v13;
        v48 = a2;
        while (v15 < v17)
        {
          v53 = v13;
          v51 = v20;
          v52 = v16;
          v50 = &v16[v20];
          v22 = *&v16[v20 + 56];
          v23 = [v22 uniqueID];
          v24 = v49;
          sub_221FB5C18();

          v25 = [a2 uniqueID];
          sub_221FB5C18();

          LOBYTE(v25) = sub_221FB5C08();
          v26 = *v46;
          v27 = v9;
          v28 = v9;
          v29 = v47;
          (*v46)(v28, v47);
          v26(v24, v29);

          if (v25)
          {
            a2 = v48;
            v9 = v27;
            v13 = v53;
            v21 = v51;
            v16 = v52;
          }

          else
          {
            v30 = v53;
            if (v15 == v53)
            {
              a2 = v48;
              v9 = v27;
              v21 = v51;
              v16 = v52;
            }

            else
            {
              a2 = v48;
              v21 = v51;
              v16 = v52;
              if ((v53 & 0x8000000000000000) != 0)
              {
                goto LABEL_22;
              }

              if (v53 >= *v18)
              {
                goto LABEL_23;
              }

              if (v15 >= *v18)
              {
                goto LABEL_24;
              }

              v9 = v27;
              v31 = &v52[24 * v53 + 32];
              v32 = *v31;
              v45 = *(v31 + 8);
              v44 = *(v31 + 16);
              v33 = *(v50 + 7);
              v34 = v50[64];
              v35 = *&v52[v51 + 72];
              v36 = v33;
              v37 = v32;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v16 = sub_221F6F3B4(v16);
              }

              v38 = &v16[24 * v53];
              v39 = *(v38 + 4);
              *(v38 + 4) = v33;
              v38[40] = v34;
              *(v38 + 6) = v35;

              if (v15 >= *(v16 + 2))
              {
                goto LABEL_25;
              }

              v40 = &v16[v21];
              v41 = *&v16[v21 + 56];
              *(v40 + 7) = v32;
              v40[64] = v45;
              *(v40 + 9) = v44;

              *v43 = v16;
              v30 = v53;
            }

            v13 = v30 + 1;
          }

          ++v15;
          v18 = (v16 + 16);
          v17 = *(v16 + 2);
          v20 = v21 + 24;
          if (v15 == v17)
          {
            return;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
      }

      __break(1u);
    }
  }
}

unint64_t sub_221F6F8F8(unint64_t result, int64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_221EF35F0(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_221F7E828(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_221F6F9CC()
{
  result = qword_27CFEC8C8;
  if (!qword_27CFEC8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC8C8);
  }

  return result;
}

uint64_t sub_221F6FA20(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9E350;

  return v7(a1, a2);
}

uint64_t sub_221F6FDC0(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v4[2] = a4;
  v7 = sub_221FB5C38();
  v4[3] = v7;
  v4[4] = *(v7 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = _Block_copy(a3);
  sub_221FB5C18();
  v8 = a4;

  return MEMORY[0x2822009F8](sub_221F6FEB8, 0, 0);
}

uint64_t sub_221F6FEB8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  v6 = &v5[OBJC_IVAR____TtC23ActivitySharingServices31SecureCloudRelationshipDelegate_relationshipFinalizationCoordinator];
  v7 = *__swift_project_boxed_opaque_existential_0Tm(&v5[OBJC_IVAR____TtC23ActivitySharingServices31SecureCloudRelationshipDelegate_relationshipFinalizationCoordinator], *&v5[OBJC_IVAR____TtC23ActivitySharingServices31SecureCloudRelationshipDelegate_relationshipFinalizationCoordinator + 24]);
  v8 = sub_221FB5BF8();
  [v7 removePlaceholderWithContactUUID:v8 shouldNotify:1];

  v9 = *__swift_project_boxed_opaque_existential_0Tm(v6, *(v6 + 3));
  v10 = sub_221FB5BF8();
  [v9 addFinalizedFriendUUIDs_];

  (*(v4 + 8))(v2, v3);
  v1[2](v1, 1, 0);
  _Block_release(v1);

  v11 = v0[1];

  return v11();
}

uint64_t sub_221F70194(uint64_t a1, uint64_t a2, __int16 a3, void *a4, const void *a5, void *a6)
{
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  *(v6 + 80) = a3;
  v10 = sub_221FB5C38();
  *(v6 + 32) = v10;
  *(v6 + 40) = *(v10 - 8);
  *(v6 + 48) = swift_task_alloc();
  *(v6 + 56) = _Block_copy(a5);
  sub_221FB5C18();
  v11 = a4;
  v12 = a6;

  return MEMORY[0x2822009F8](sub_221F702A0, 0, 0);
}

uint64_t sub_221F702A0()
{
  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 24) + OBJC_IVAR____TtC23ActivitySharingServices31SecureCloudRelationshipDelegate_relationshipUpdateService), *(*(v0 + 24) + OBJC_IVAR____TtC23ActivitySharingServices31SecureCloudRelationshipDelegate_relationshipUpdateService + 24));
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_221F70358;
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);
  v4 = *(v0 + 80);

  return sub_221EDC7CC(v2, v4, v3);
}

uint64_t sub_221F70358()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_221F713DC;
  }

  else
  {
    v2 = sub_221F713E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F70618(uint64_t a1, uint64_t a2, __int16 a3, void *a4, const void *a5, void *a6)
{
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  *(v6 + 80) = a3;
  v10 = sub_221FB5C38();
  *(v6 + 32) = v10;
  *(v6 + 40) = *(v10 - 8);
  *(v6 + 48) = swift_task_alloc();
  *(v6 + 56) = _Block_copy(a5);
  sub_221FB5C18();
  v11 = a4;
  v12 = a6;

  return MEMORY[0x2822009F8](sub_221F70724, 0, 0);
}

uint64_t sub_221F70724()
{
  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 24) + OBJC_IVAR____TtC23ActivitySharingServices31SecureCloudRelationshipDelegate_relationshipRemovalService), *(*(v0 + 24) + OBJC_IVAR____TtC23ActivitySharingServices31SecureCloudRelationshipDelegate_relationshipRemovalService + 24));
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_221F707DC;
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);
  v4 = *(v0 + 80);

  return sub_221EF560C(v2, v4, v3);
}

uint64_t sub_221F707DC()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_221F709AC;
  }

  else
  {
    v2 = sub_221F708F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F708F0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);

  (*(v4 + 8))(v1, v3);
  (*(v2 + 16))(v2, 1, 0);
  _Block_release(*(v0 + 56));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_221F709AC()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);

  (*(v5 + 8))(v3, v4);
  v7 = sub_221FB5A98();

  (*(v2 + 16))(v2, 0, v7);
  _Block_release(*(v0 + 56));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_221F70C14(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v4[2] = a4;
  v7 = sub_221FB5C38();
  v4[3] = v7;
  v4[4] = *(v7 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = _Block_copy(a3);
  sub_221FB5C18();
  v8 = a4;

  return MEMORY[0x2822009F8](sub_221F70D0C, 0, 0);
}

uint64_t sub_221F70D0C()
{
  __swift_project_boxed_opaque_existential_0Tm((v0[2] + OBJC_IVAR____TtC23ActivitySharingServices31SecureCloudRelationshipDelegate_relationshipInviteAcceptService), *(v0[2] + OBJC_IVAR____TtC23ActivitySharingServices31SecureCloudRelationshipDelegate_relationshipInviteAcceptService + 24));
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_221F70DBC;
  v2 = v0[5];

  return sub_221FA9168(v2);
}

uint64_t sub_221F70DBC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_221F70F80;
  }

  else
  {
    v2 = sub_221F70ED0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F70ED0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);

  (*(v4 + 8))(v1, v3);
  (*(v2 + 16))(v2, 1, 0);
  _Block_release(*(v0 + 48));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_221F70F80()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);

  (*(v5 + 8))(v3, v4);
  v6 = sub_221FB5A98();

  (*(v2 + 16))(v2, 0, v6);
  _Block_release(*(v0 + 48));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_221F71054()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_221E963B4;

  return sub_221F70C14(v2, v3, v5, v4);
}

uint64_t sub_221F71114()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 32);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_221E963B4;

  return sub_221F70618(v2, v3, v7, v4, v5, v6);
}

uint64_t objectdestroy_13Tm()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_221F71244()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 32);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_221E963B4;

  return sub_221F70194(v2, v3, v7, v4, v5, v6);
}

uint64_t sub_221F7131C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_221E9544C;

  return sub_221F6FDC0(v2, v3, v5, v4);
}

uint64_t sub_221F71540(uint64_t a1, uint64_t a2)
{
  v4 = sub_221FB5C38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v25 - v10;
  result = MEMORY[0x28223BE20](v9);
  v14 = v25 - v13;
  v15 = 0;
  v26 = a1;
  v27 = a2;
  v18 = *(a1 + 56);
  v17 = a1 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v26 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4);
      (*(v5 + 32))(v8, v14, v4);
      sub_221F157F8(v11, v8);
      result = (*(v5 + 8))(v11, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_221F7175C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_221F15684(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_221F71860(uint64_t a1, void *a2, unint64_t *a3, void *a4, unint64_t *a5, void (*a6)(id *))
{
  v8 = a1;
  v24[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_221FB6828();
    sub_221E9D138(0, a3, a4);
    sub_221E9E930(a5, a3, a4);
    sub_221FB6538();
    v8 = v24[2];
    v11 = v24[3];
    v12 = v24[4];
    v13 = v24[5];
    v14 = v24[6];
  }

  else
  {
    v13 = 0;
    v15 = -1 << *(a1 + 32);
    v11 = (a1 + 56);
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = (v17 & *(a1 + 56));
  }

  v18 = (v12 + 64) >> 6;
  if (v8 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v19 = v13;
    v20 = v14;
    v21 = v13;
    if (!v14)
    {
      break;
    }

LABEL_12:
    v22 = (v20 - 1) & v20;
    if (!*(*(v8 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20))))))
    {
LABEL_18:
      sub_221E96470(v8);
      return;
    }

    while (1)
    {
      a6(v24);

      v13 = v21;
      v14 = v22;
      if ((v8 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_221FB6898())
      {
        sub_221E9D138(0, a3, a4);
        swift_dynamicCast();
        v21 = v13;
        v22 = v14;
        if (v24[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v21 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v18)
    {
      goto LABEL_18;
    }

    v20 = v11[v21];
    ++v19;
    if (v20)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_221F71A5C(uint64_t a1)
{
  v3 = sub_221FB5C38();
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_221FB6868();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v49 = MEMORY[0x277D84F90];
    sub_221F77684(0, v7 & ~(v7 >> 63), 0);
    v44 = v49;
    if (v43)
    {
      result = sub_221FB6818();
    }

    else
    {
      result = sub_221FB67E8();
      v9 = *(a1 + 36);
    }

    v46 = result;
    v47 = v9;
    v48 = v43 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v39 = v7;
      v40 = v42 + 32;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v37 = a1 + 56;
      v38 = v11;
      v35[1] = v1;
      v36 = a1 + 64;
      while (v10 < v7)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v46;
        v15 = v47;
        v16 = v48;
        v17 = a1;
        sub_221F78B80(v46, v47, v48, a1, &qword_27CFEBB00, 0x277CCDDD0);
        v19 = v18;
        v20 = [v18 UUID];
        sub_221FB5C18();

        v21 = v44;
        v49 = v44;
        v23 = *(v44 + 16);
        v22 = *(v44 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_221F77684((v22 > 1), v23 + 1, 1);
          v21 = v49;
        }

        *(v21 + 16) = v23 + 1;
        v24 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v44 = v21;
        result = (*(v42 + 32))(v21 + v24 + *(v42 + 72) * v23, v6, v41);
        if (v43)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          a1 = v17;
          if (sub_221FB6838())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC9D8, &unk_221FBE458);
          v12 = sub_221FB6528();
          sub_221FB68B8();
          result = v12(v45, 0);
          if (v10 == v7)
          {
LABEL_34:
            sub_221EB9940(v46, v47, v48);
            return v44;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v17;
          v25 = 1 << *(v17 + 32);
          if (v14 >= v25)
          {
            goto LABEL_38;
          }

          v26 = v14 >> 6;
          v27 = *(v37 + 8 * (v14 >> 6));
          if (((v27 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v17 + 36) != v15)
          {
            goto LABEL_40;
          }

          v28 = v27 & (-2 << (v14 & 0x3F));
          if (v28)
          {
            v25 = __clz(__rbit64(v28)) | v14 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v29 = v26 << 6;
            v30 = v26 + 1;
            v31 = (v36 + 8 * v26);
            while (v30 < (v25 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                result = sub_221EB9940(v14, v15, 0);
                v25 = __clz(__rbit64(v32)) + v29;
                goto LABEL_33;
              }
            }

            result = sub_221EB9940(v14, v15, 0);
          }

LABEL_33:
          v34 = *(v17 + 36);
          v46 = v25;
          v47 = v34;
          v48 = 0;
          v7 = v39;
          if (v10 == v39)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

void *sub_221F71E78(uint64_t a1)
{
  v26 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_221FB6868();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v31 = MEMORY[0x277D84F90];
    sub_221FB69D8();
    result = sub_221FB6818();
    v28 = result;
    v29 = v4;
    v30 = 1;
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v2 = *(a1 + 16);
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v31 = MEMORY[0x277D84F90];
    sub_221FB69D8();
    v5 = sub_221FB67E8();
    v6 = *(a1 + 36);
    v28 = v5;
    v29 = v6;
    v30 = 0;
  }

  result = objc_opt_self();
  v7 = 0;
  v25 = result;
  while (v7 < v2)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_31;
    }

    v10 = v28;
    v11 = v29;
    v12 = v30;
    sub_221F78B80(v28, v29, v30, a1, &qword_27CFEBB00, 0x277CCDDD0);
    v14 = v13;
    v15 = [v25 workoutCompletionEventWithWorkout_];

    sub_221FB69B8();
    sub_221FB69E8();
    sub_221FB69F8();
    result = sub_221FB69C8();
    if (v26)
    {
      if (!v12)
      {
        goto LABEL_36;
      }

      if (sub_221FB6838())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC9D8, &unk_221FBE458);
      v8 = sub_221FB6528();
      sub_221FB68B8();
      result = v8(v27, 0);
      if (v7 == v2)
      {
LABEL_28:
        sub_221EB9940(v28, v29, v30);
        return v31;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_37;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v16 = 1 << *(a1 + 32);
      if (v10 >= v16)
      {
        goto LABEL_32;
      }

      v17 = v10 >> 6;
      v18 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v18 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v11)
      {
        goto LABEL_34;
      }

      v19 = v18 & (-2 << (v10 & 0x3F));
      if (v19)
      {
        v16 = __clz(__rbit64(v19)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v17 << 6;
        v21 = v17 + 1;
        v22 = (a1 + 64 + 8 * v17);
        while (v21 < (v16 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_221EB9940(v10, v11, 0);
            v16 = __clz(__rbit64(v23)) + v20;
            goto LABEL_27;
          }
        }

        result = sub_221EB9940(v10, v11, 0);
      }

LABEL_27:
      v28 = v16;
      v29 = v11;
      v30 = 0;
      if (v7 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_221F721C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_221F721E4, 0, 0);
}

uint64_t sub_221F721E4()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_0Tm(v1, v1[3]);
  v2 = off_283557C98(&type metadata for ActivityDataCoordinator, &off_283557C78);
  v0[7] = v2;
  __swift_project_boxed_opaque_existential_0Tm(v1, v1[3]);
  v3 = (off_283557CB8)(&type metadata for ActivityDataCoordinator, &off_283557C78);
  v0[8] = v3;
  if ((v2 & 0xC000000000000001) == 0)
  {
    if (!*(v2 + 16))
    {
      goto LABEL_5;
    }

LABEL_7:
    v5 = v0[5];
    v4 = v0[6];
    v6 = v0[4];
    v0[2] = v0[3];
    v7 = swift_task_alloc();
    v0[9] = v7;
    v7[2] = v4;
    v7[3] = v2;
    v7[4] = v6;
    v7[5] = v3;
    v7[6] = v5;
    v8 = swift_task_alloc();
    v0[10] = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBEB8, &unk_221FBB660);
    v10 = sub_221EAB9F4(&qword_27CFEBEC0, &qword_27CFEBEB8, &unk_221FBB660);
    *v8 = v0;
    v8[1] = sub_221F72434;

    return MEMORY[0x28213AED0](&unk_221FBE448, v7, v9, &type metadata for SecureCloudUpdate, v10);
  }

  if (sub_221FB6868())
  {
    goto LABEL_7;
  }

LABEL_5:
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (sub_221FB6868())
    {
      goto LABEL_7;
    }
  }

  else if (*(v3 + 16))
  {
    goto LABEL_7;
  }

  v11 = v0[1];
  v12 = MEMORY[0x277D84F90];

  return v11(v12);
}

void sub_221F72434(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {

    v5 = *(v4 + 8);

    v5(a1);
  }
}

uint64_t sub_221F72584(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a1;
  v7[3] = a3;
  v9 = sub_221FB5C38();
  v7[8] = v9;
  v7[9] = *(v9 - 8);
  v10 = swift_task_alloc();
  v11 = *a2;
  v7[10] = v10;
  v7[11] = v11;

  return MEMORY[0x2822009F8](sub_221F72654, 0, 0);
}

id sub_221F72654()
{
  result = [*(v0 + 88) secureCloudZoneName];
  if (result)
  {
    v2 = result;
    sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
    sub_221FB6318();

    sub_221FB6318();
    *(v0 + 96) = sub_221FB65D8();
    v3 = swift_task_alloc();
    *(v0 + 104) = v3;
    *v3 = v0;
    v3[1] = sub_221F72778;
    v4 = *(v0 + 88);
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);

    return sub_221F72F8C(v6, v5, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221F72778(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v9 = *v1;
  v3[14] = a1;

  v4 = swift_task_alloc();
  v3[15] = v4;
  *v4 = v9;
  v4[1] = sub_221F72904;
  v5 = v2[11];
  v6 = v2[7];
  v7 = v2[6];

  return sub_221F72F8C(v7, v6, v5);
}

uint64_t sub_221F72904(uint64_t a1)
{
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](sub_221F72A04, 0, 0);
}

void sub_221F72A04()
{
  v54 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);

  sub_221F71860(v1, v2, &qword_27CFEBB00, 0x277CCDDD0, &qword_27CFEBB08, sub_221F15AB0);
  v4 = v3;
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (sub_221FB6868())
    {
      goto LABEL_3;
    }
  }

  else if (*(v3 + 16))
  {
LABEL_3:
    v5 = *(v0 + 96);
    v52 = sub_221F78E6C(v4, v5);

    v6 = sub_221F71E78(v4);

    if (v6 >> 62)
    {
      v7 = sub_221FB6868();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7)
    {
      v53[0] = MEMORY[0x277D84F90];
      sub_221FB69D8();
      if (v7 < 0)
      {
        __break(1u);
        goto LABEL_33;
      }

      v8 = 0;
      do
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x223DACD50](v8, v6);
        }

        else
        {
          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        ++v8;
        v11 = [v9 recordWithZoneID:*(v0 + 96) recordEncryptionType:1];

        sub_221FB69B8();
        sub_221FB69E8();
        sub_221FB69F8();
        sub_221FB69C8();
      }

      while (v7 != v8);

      v12 = v53[0];
    }

    else
    {

      v12 = MEMORY[0x277D84F90];
    }

    v14 = *(v0 + 40);
    if (v14)
    {
      v15 = sub_221F71A5C(*(v0 + 112));

      v16 = sub_221F1811C(v15);

      v17 = MEMORY[0x277D84F98];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53[0] = v17;
      sub_221F78444(v16, v14, isUniquelyReferenced_nonNull_native);
      v19 = v17;
      v20 = *(v0 + 56);
      if (!v20)
      {
LABEL_19:
        if (qword_281307080 != -1)
        {
          swift_once();
        }

        v24 = *(v0 + 88);
        v25 = sub_221FB61D8();
        __swift_project_value_buffer(v25, qword_281307DF0);
        v26 = v24;

        v27 = sub_221FB61B8();
        v28 = sub_221FB65C8();
        v29 = os_log_type_enabled(v27, v28);
        v30 = *(v0 + 88);
        if (!v29)
        {

          goto LABEL_25;
        }

        v51 = v12;
        v31 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v53[0] = v50;
        *v31 = 136315394;
        v32 = [v30 UUID];
        v6 = *(v0 + 88);
        if (v32)
        {
          v33 = v32;
          v34 = *(v0 + 72);
          v35 = *(v0 + 80);
          v36 = *(v0 + 64);

          sub_221FB5C18();

          v37 = sub_221FB5BE8();
          v39 = v38;
          (*(v34 + 8))(v35, v36);
          v40 = sub_221EF4114(v37, v39, v53);

          *(v31 + 4) = v40;
          *(v31 + 12) = 2080;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBF88, &qword_221FBE3D0);
          v41 = sub_221FB6298();
          v43 = sub_221EF4114(v41, v42, v53);

          *(v31 + 14) = v43;
          _os_log_impl(&dword_221E93000, v27, v28, "Creating workout completion update for relationship %s, identifiers %s", v31, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DADA80](v50, -1, -1);
          MEMORY[0x223DADA80](v31, -1, -1);

          v12 = v51;
LABEL_25:
          v45 = *(v0 + 88);
          v44 = *(v0 + 96);
          v46 = *(v0 + 16);
          v53[0] = v52;
          sub_221ED4350(v12);
          v47 = v53[0];

          *v46 = v47;
          *(v46 + 8) = MEMORY[0x277D84F90];
          *(v46 + 16) = v45;
          *(v46 + 24) = v19;
          *(v46 + 32) = 0;
          *(v46 + 40) = 4;
          v48 = v45;
          goto LABEL_26;
        }

LABEL_33:
        swift_bridgeObjectRelease_n();

        __break(1u);
        return;
      }
    }

    else
    {

      v19 = MEMORY[0x277D84F98];
      v20 = *(v0 + 56);
      if (!v20)
      {
        goto LABEL_19;
      }
    }

    v21 = sub_221F71A5C(*(v0 + 48));
    v22 = sub_221F1811C(v21);

    v23 = swift_isUniquelyReferenced_nonNull_native();
    v53[0] = v19;
    sub_221F78444(v22, v20, v23);
    goto LABEL_19;
  }

  v13 = *(v0 + 16);

  *(v13 + 25) = 0u;
  *v13 = 0u;
  v13[1] = 0u;
LABEL_26:

  v49 = *(v0 + 8);

  v49();
}

uint64_t sub_221F72F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_221FB5C38();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F73050, 0, 0);
}

id sub_221F73050()
{
  if (v0[8])
  {
    v1 = v0[9];
    sub_221EA4AB4(v0[10] + 40, (v0 + 2));
    __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
    result = [v1 UUID];
    if (result)
    {
      v3 = result;
      v5 = v0[12];
      v4 = v0[13];
      v6 = v0[11];
      sub_221FB5C18();

      v7 = sub_221FB5BE8();
      v9 = v8;
      v0[14] = v8;
      (*(v5 + 8))(v4, v6);
      v10 = swift_task_alloc();
      v0[15] = v10;
      *v10 = v0;
      v10[1] = sub_221F731DC;
      v11 = v0[8];

      return sub_221EE4D8C(v7, v9, v11);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v12 = v0[1];
    v13 = MEMORY[0x277D84FA0];

    return v12(v13);
  }

  return result;
}

uint64_t sub_221F731DC(uint64_t a1)
{
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](sub_221F732FC, 0, 0);
}

uint64_t sub_221F732FC()
{
  v1 = v0[16];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v3 = sub_221F79C24(v2, v1);

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_221F73398(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v3 = sub_221FB5C38();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F734A8, 0, 0);
}

uint64_t sub_221F734A8()
{
  v1 = *__swift_project_boxed_opaque_existential_0Tm(*(v0 + 32), *(*(v0 + 32) + 24));
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_221F73548;

  return sub_221E9E4B0(v1);
}

uint64_t sub_221F73548(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_221F73648, 0, 0);
}

uint64_t sub_221F73648()
{
  v1 = v0[12];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v0[12];
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_27:

    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v29 = sub_221FB61D8();
    __swift_project_value_buffer(v29, qword_281307DF0);
    v30 = sub_221FB61B8();
    v31 = sub_221FB65C8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_221E93000, v30, v31, "No deleted workouts to push", v32, 2u);
      MEMORY[0x223DADA80](v32, -1, -1);
    }

    v33 = v0[1];
    v34 = MEMORY[0x277D84F90];

    return v33(v34);
  }

LABEL_26:
  v2 = sub_221FB6868();
  v3 = v0[12];
  if (!v2)
  {
    goto LABEL_27;
  }

LABEL_3:
  v4 = 0;
  v5 = v0[9];
  v41 = v1 & 0xFFFFFFFFFFFFFF8;
  v42 = v1 & 0xC000000000000001;
  v37 = v3 + 32;
  v39 = (v5 + 48);
  v40 = (v5 + 56);
  v6 = MEMORY[0x277D84F90];
  v36 = v5;
  v38 = (v5 + 32);
  do
  {
    if (v42)
    {
      v7 = MEMORY[0x223DACD50](v4, v0[12]);
      v1 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v4 >= *(v41 + 16))
      {
        goto LABEL_25;
      }

      v7 = *(v37 + 8 * v4);
      v1 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    v8 = v7;
    v9 = [v8 triggerUUID];
    if (v9)
    {
      v10 = v9;
      sub_221FB5C18();

      v11 = 0;
    }

    else
    {
      v11 = 1;
    }

    v13 = v0[7];
    v12 = v0[8];
    v14 = v0[5];
    v15 = v0[6];
    (*v40)(v14, v11, 1, v12);
    sub_221EB994C(v14, v15);
    sub_221EB994C(v15, v13);

    if ((*v39)(v13, 1, v12) == 1)
    {
      sub_221E9CFE8(v0[7], &qword_27CFEBD50, &unk_221FB9FB0);
    }

    else
    {
      v16 = *v38;
      (*v38)(v0[10], v0[7], v0[8]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_221EF3954(0, *(v6 + 2) + 1, 1, v6);
      }

      v18 = *(v6 + 2);
      v17 = *(v6 + 3);
      if (v18 >= v17 >> 1)
      {
        v6 = sub_221EF3954((v17 > 1), v18 + 1, 1, v6);
      }

      v19 = v0[10];
      v20 = v0[8];
      *(v6 + 2) = v18 + 1;
      v16(&v6[((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v18], v19, v20);
    }

    ++v4;
  }

  while (v1 != v2);
  v21 = v0[12];
  v23 = v0[3];
  v22 = v0[4];
  v24 = sub_221F1811C(v6);
  v0[13] = v24;

  v0[2] = v23;
  v25 = swift_task_alloc();
  v0[14] = v25;
  v25[2] = v22;
  v25[3] = v21;
  v25[4] = v24;
  v26 = swift_task_alloc();
  v0[15] = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBEB8, &unk_221FBB660);
  v28 = sub_221EAB9F4(&qword_27CFEBEC0, &qword_27CFEBEB8, &unk_221FBB660);
  *v26 = v0;
  v26[1] = sub_221F73B08;

  return MEMORY[0x28213AED0](&unk_221FBE430, v25, v27, &type metadata for SecureCloudUpdate, v28);
}

void sub_221F73B08(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {

    v5 = *(v4 + 8);

    v5(a1);
  }
}

uint64_t sub_221F73C7C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a1;
  v5[8] = a3;
  v7 = sub_221FB5C38();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *a2;
  v5[17] = v8;
  v5[18] = v9;

  return MEMORY[0x2822009F8](sub_221F73D78, 0, 0);
}

uint64_t sub_221F73D78()
{
  v1 = [*(v0 + 144) secureCloudZoneName];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v1;
  v5 = *(v0 + 144);
  v6 = *(v0 + 64);
  sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
  sub_221FB6318();

  sub_221FB6318();
  *(v0 + 152) = sub_221FB65D8();
  sub_221EA4AB4(v6 + 80, v0 + 16);
  v7 = __swift_project_boxed_opaque_existential_0Tm((v0 + 16), *(v0 + 40));
  v1 = [v5 UUID];
  if (!v1)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x2822009F8](v1, v2, v3);
  }

  v8 = v1;
  v9 = *(v0 + 136);
  v10 = *(v0 + 88);
  v11 = *(v0 + 96);
  sub_221FB5C18();

  *(v0 + 160) = sub_221FB5BE8();
  *(v0 + 168) = v12;
  v13 = *(v11 + 8);
  *(v0 + 176) = v13;
  *(v0 + 184) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v9, v10);
  v2 = *v7;
  *(v0 + 192) = *v7;
  v1 = sub_221F73EF8;
  v3 = 0;

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_221F73EF8()
{
  v0[25] = sub_221ECB7DC(v0[20], v0[21]);

  return MEMORY[0x2822009F8](sub_221F73F74, 0, 0);
}

void sub_221F73F74()
{
  v101 = v0;
  v1 = v0;
  v2 = v0[9];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v100 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_78;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_221FB6868())
  {
    v99 = v1;
    if (i)
    {
      v4 = 0;
      if (v1[25])
      {
        v5 = v1[25];
      }

      else
      {
        v5 = MEMORY[0x277D84FA0];
      }

      v88 = v2 & 0xFFFFFFFFFFFFFF8;
      v89 = v2 & 0xC000000000000001;
      v86 = i;
      v87 = v1[9] + 32;
      v6 = v5;
      v85 = v1[12];
      v97 = v5 + 56;
      while (1)
      {
        if (v89)
        {
          v7 = MEMORY[0x223DACD50](v4, v1[9]);
        }

        else
        {
          if (v4 >= *(v88 + 16))
          {
            goto LABEL_75;
          }

          v7 = *(v87 + 8 * v4);
        }

        v2 = v7;
        if (__OFADD__(v4++, 1))
        {
          break;
        }

        v9 = [v7 triggerUUID];
        if (v9)
        {
          v90 = v2;
          v93 = v4;
          v10 = v9;
          sub_221FB5C18();

          if (*(v6 + 16) && (sub_221F182A4(&qword_27CFEC2C8, MEMORY[0x277CC9600]), v11 = sub_221FB62A8(), v12 = -1 << *(v6 + 32), v13 = v11 & ~v12, ((*(v97 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0))
          {
            v14 = ~v12;
            v15 = *(v85 + 72);
            v16 = *(v85 + 16);
            while (1)
            {
              v17 = v99[22];
              v18 = v99[15];
              v19 = v99[11];
              v16(v18, *(v6 + 48) + v13 * v15, v19);
              sub_221F182A4(&qword_27CFEC260, MEMORY[0x277CC9610]);
              v20 = sub_221FB62D8();
              v17(v18, v19);
              if (v20)
              {
                break;
              }

              v13 = (v13 + 1) & v14;
              if (((*(v97 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
              {
                goto LABEL_19;
              }
            }

            v1 = v99;
            v21 = v99[22];
            v2 = v99[16];
            v22 = v99[11];

            v21(v2, v22);
          }

          else
          {
LABEL_19:
            v1 = v99;
            (v99[22])(v99[16], v99[11]);
            sub_221FB69B8();
            sub_221FB69E8();
            sub_221FB69F8();
            v2 = &v100;
            sub_221FB69C8();
          }

          i = v86;
          v4 = v93;
          if (v93 == v86)
          {
LABEL_24:
            v23 = v100;
            v24 = MEMORY[0x277D84F90];
            goto LABEL_26;
          }
        }

        else
        {

          if (v4 == i)
          {
            goto LABEL_24;
          }
        }
      }

      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v23 = MEMORY[0x277D84F90];
    v24 = MEMORY[0x277D84F90];
LABEL_26:

    v100 = v24;
    v2 = v23 < 0 || (v23 >> 62) & 1;
    v25 = v2 == 1 ? sub_221FB6868() : *(v23 + 16);
    v26 = v23 & 0xC000000000000001;
    v27 = MEMORY[0x277D84F90];
    if (!v25)
    {
      break;
    }

    v28 = 0;
    v95 = v23 & 0xC000000000000001;
    v91 = v2;
LABEL_33:
    v94 = v27;
    v29 = v28;
    while (1)
    {
      if (v26)
      {
        v30 = MEMORY[0x223DACD50](v29, v23);
      }

      else
      {
        if (v29 >= *(v23 + 16))
        {
          goto LABEL_77;
        }

        v30 = *(v23 + 8 * v29 + 32);
      }

      v31 = v30;
      v28 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      v32 = [v30 triggerUUID];
      if (v32)
      {
        v33 = v23;
        v34 = v1[22];
        v2 = v1[14];
        v35 = v25;
        v36 = v1[11];
        v37 = v32;
        sub_221FB5C18();

        v38 = sub_221FB5BF8();
        v39 = ASWorkoutRecordIDForUUID();

        v1 = v99;
        v40 = v36;
        v25 = v35;
        v41 = v34(v2, v40);
        v26 = v95;
        v23 = v33;
        if (v39)
        {
          MEMORY[0x223DAC7E0](v41);
          if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_221FB6458();
          }

          sub_221FB6478();
          v27 = v100;
          v2 = v91;
          if (v28 != v25)
          {
            goto LABEL_33;
          }

          goto LABEL_49;
        }
      }

      else
      {
      }

      ++v29;
      if (v28 == v25)
      {
        v27 = v94;
        LODWORD(v2) = v91;
        goto LABEL_49;
      }
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    ;
  }

LABEL_49:
  if (v2)
  {
    v42 = sub_221FB6868();
    if (!v42)
    {
      goto LABEL_51;
    }

LABEL_53:
    v100 = MEMORY[0x277D84F90];
    sub_221FB69D8();
    if ((v42 & 0x8000000000000000) == 0)
    {
      v43 = 0;
      do
      {
        if (v26)
        {
          v44 = MEMORY[0x223DACD50](v43, v23);
        }

        else
        {
          v44 = *(v23 + 8 * v43 + 32);
        }

        v45 = v44;
        ++v43;
        v46 = [v44 recordWithZoneID:v1[19] recordEncryptionType:{1, v85}];

        sub_221FB69B8();
        sub_221FB69E8();
        sub_221FB69F8();
        sub_221FB69C8();
      }

      while (v42 != v43);

      v26 = v100;
      goto LABEL_60;
    }

    __break(1u);
LABEL_83:
    if (!sub_221FB6868())
    {
      goto LABEL_84;
    }

    goto LABEL_64;
  }

  v42 = *(v23 + 16);
  if (v42)
  {
    goto LABEL_53;
  }

LABEL_51:

  v26 = MEMORY[0x277D84F90];
LABEL_60:
  if (v27 >> 62)
  {
    if (sub_221FB6868())
    {
      goto LABEL_64;
    }
  }

  else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_64;
  }

  if (v26 >> 62)
  {
    goto LABEL_83;
  }

  if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_84:

    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v74 = v1[18];
    v75 = sub_221FB61D8();
    __swift_project_value_buffer(v75, qword_281307DF0);
    v76 = v74;
    v77 = sub_221FB61B8();
    v78 = sub_221FB65C8();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = v1[18];
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *v80 = 138412290;
      *(v80 + 4) = v79;
      *v81 = v79;
      v82 = v79;
      _os_log_impl(&dword_221E93000, v77, v78, "No new deleted workouts to push for relationship: %@", v80, 0xCu);
      sub_221E9CFE8(v81, &qword_27CFEB900, &unk_221FB8C10);
      MEMORY[0x223DADA80](v81, -1, -1);
      MEMORY[0x223DADA80](v80, -1, -1);
    }

    v83 = v1[7];

    *(v83 + 25) = 0u;
    *v83 = 0u;
    v83[1] = 0u;
LABEL_71:

    v73 = v1[1];

    v73();
    return;
  }

LABEL_64:
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v47 = v1[18];
  v48 = sub_221FB61D8();
  __swift_project_value_buffer(v48, qword_281307DF0);
  v49 = v47;

  v50 = sub_221FB61B8();
  v51 = sub_221FB65C8();
  if (!os_log_type_enabled(v50, v51))
  {
    v68 = v1[18];

LABEL_70:
    v69 = v1[18];
    v70 = v1[10];
    v71 = v1[7];
    *v71 = v26;
    *(v71 + 8) = v27;
    *(v71 + 16) = v69;
    *(v71 + 24) = v70;
    *(v71 + 32) = 0;
    *(v71 + 40) = 5;
    v72 = v69;

    goto LABEL_71;
  }

  v98 = v51;
  v52 = v1[18];
  v53 = swift_slowAlloc();
  v96 = swift_slowAlloc();
  v100 = v96;
  *v53 = 136315394;
  v54 = [v52 UUID];
  if (v54)
  {
    v55 = v54;
    v56 = v1[22];
    v57 = v1[18];
    v92 = v1[19];
    v58 = v99[13];
    v59 = v99[11];

    sub_221FB5C18();

    v60 = sub_221FB5BE8();
    v62 = v61;
    v63 = v58;
    v1 = v99;
    v56(v63, v59);
    v64 = sub_221EF4114(v60, v62, &v100);

    *(v53 + 4) = v64;
    *(v53 + 12) = 2080;
    sub_221F182A4(&qword_27CFEC2C8, MEMORY[0x277CC9600]);
    v65 = sub_221FB6508();
    v67 = sub_221EF4114(v65, v66, &v100);

    *(v53 + 14) = v67;
    _os_log_impl(&dword_221E93000, v50, v98, "Creating workout deletion update for relationship %s, identifiers %s", v53, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v96, -1, -1);
    MEMORY[0x223DADA80](v53, -1, -1);

    goto LABEL_70;
  }

  v84 = v1[18];

  __break(1u);
}

uint64_t sub_221F749C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a2;
  v4 = sub_221FB5C38();
  *(v2 + 64) = v4;
  *(v2 + 72) = *(v4 - 8);
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = *a1;
  *(v2 + 120) = *(a1 + 16);
  *(v2 + 128) = *(a1 + 24);
  *(v2 + 208) = *(a1 + 40);

  return MEMORY[0x2822009F8](sub_221F74AC4, 0, 0);
}

uint64_t sub_221F74AC4()
{
  if (*(v0 + 208) == 4)
  {
    v1 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_0Tm((*(v0 + 56) + 40), *(*(v0 + 56) + 64));
    v2 = swift_task_alloc();
    *(v0 + 144) = v2;
    *v2 = v0;
    v2[1] = sub_221F74BCC;
    v3 = *(v0 + 120);

    return sub_221EE4E64(v1, v3);
  }

  else
  {

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_221F74BCC()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_221F74DE0;
  }

  else
  {
    v2 = sub_221F74CE0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F74CE0()
{
  v1 = v0[15];
  sub_221EA4AB4(v0[7] + 40, (v0 + 2));
  v2 = __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
  v3 = [v1 UUID];
  if (v3)
  {
    v6 = v3;
    v7 = v0[12];
    v8 = v0[8];
    v9 = v0[9];
    sub_221FB5C18();

    v0[20] = sub_221FB5BE8();
    v0[21] = v10;
    v11 = *(v9 + 8);
    v0[22] = v11;
    v0[23] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v7, v8);
    v4 = *v2;
    v0[24] = *v2;
    v3 = sub_221F7517C;
    v5 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_221F74DE0()
{
  v37 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = sub_221FB61D8();
  __swift_project_value_buffer(v4, qword_281307DF0);
  sub_221ED4904(v1, v2, 4u);
  sub_221ED4904(v1, v2, 4u);

  v5 = v3;
  v6 = sub_221FB61B8();
  v7 = sub_221FB65C8();
  if (os_log_type_enabled(v6, v7))
  {
    v34 = v7;
    log = v6;
    v8 = *(v0 + 120);
    v9 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v36 = v33;
    *v9 = 136315394;
    v10 = [v8 UUID];
    if (!v10)
    {
      v29 = *(v0 + 128);
      v30 = *(v0 + 136);
      v31 = *(v0 + 120);
      sub_221ED4948(v29, v30, 4u);

      sub_221ED4948(v29, v30, 4u);
      __break(1u);
      return;
    }

    v11 = v10;
    v32 = *(v0 + 152);
    v12 = *(v0 + 128);
    v13 = *(v0 + 136);
    v14 = *(v0 + 120);
    v15 = *(v0 + 72);
    v16 = *(v0 + 80);
    v17 = *(v0 + 64);

    sub_221ED4948(v12, v13, 4u);
    sub_221ED4948(v12, v13, 4u);
    sub_221FB5C18();

    v18 = sub_221FB5BE8();
    v20 = v19;
    (*(v15 + 8))(v16, v17);
    v21 = sub_221EF4114(v18, v20, &v36);

    *(v9 + 4) = v21;
    *(v9 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBF88, &qword_221FBE3D0);
    v22 = sub_221FB6298();
    v24 = sub_221EF4114(v22, v23, &v36);

    *(v9 + 14) = v24;
    _os_log_impl(&dword_221E93000, log, v34, "Failed to store workout update: relationship %s, identifiers %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v33, -1, -1);
    MEMORY[0x223DADA80](v9, -1, -1);
  }

  else
  {
    v26 = *(v0 + 128);
    v25 = *(v0 + 136);
    v27 = *(v0 + 120);

    sub_221ED4948(v26, v25, 4u);
    sub_221ED4948(v26, v25, 4u);
  }

  v28 = *(v0 + 8);

  v28();
}

uint64_t sub_221F7517C()
{
  v1 = sub_221ECB494(v0[20], v0[21]);

  if (!v1)
  {
    v1 = sub_221ED82C0(MEMORY[0x277D84F90]);
  }

  v0[25] = v1;

  return MEMORY[0x2822009F8](sub_221F75210, 0, 0);
}

uint64_t sub_221F75210()
{
  v33 = v0;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = sub_221FB61D8();
  __swift_project_value_buffer(v4, qword_281307DF0);
  sub_221ED4904(v2, v1, 4u);

  v5 = v3;

  v6 = sub_221FB61B8();
  v7 = sub_221FB65C8();
  if (os_log_type_enabled(v6, v7))
  {
    v31 = v7;
    v8 = *(v0 + 120);
    v9 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v30;
    *v9 = 136315394;
    v10 = [v8 UUID];

    if (!v10)
    {
      v29 = v0 + 128;
      v28 = *(v0 + 128);
      v27 = *(v29 + 8);

      sub_221ED4948(v28, v27, 4u);

      __break(1u);
      return result;
    }

    v11 = *(v0 + 176);
    v12 = *(v0 + 88);
    v13 = *(v0 + 64);
    sub_221ED4948(*(v0 + 128), *(v0 + 136), 4u);

    sub_221FB5C18();

    v14 = sub_221FB5BE8();
    v16 = v15;
    v11(v12, v13);
    v17 = sub_221EF4114(v14, v16, &v32);

    *(v9 + 4) = v17;
    *(v9 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBF88, &qword_221FBE3D0);
    v18 = sub_221FB6298();
    v20 = v19;

    v21 = sub_221EF4114(v18, v20, &v32);

    *(v9 + 14) = v21;
    _os_log_impl(&dword_221E93000, v6, v31, "Updated workout completions for relationship %s, identifiers %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v30, -1, -1);
    MEMORY[0x223DADA80](v9, -1, -1);
  }

  else
  {
    v23 = *(v0 + 128);
    v22 = *(v0 + 136);
    v24 = *(v0 + 120);

    sub_221ED4948(v23, v22, 4u);
    swift_bridgeObjectRelease_n();
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_221F75578(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a2;
  v4 = sub_221FB5C38();
  *(v2 + 64) = v4;
  *(v2 + 72) = *(v4 - 8);
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = *a1;
  *(v2 + 128) = *(a1 + 16);
  *(v2 + 136) = *(a1 + 24);
  *(v2 + 232) = *(a1 + 40);

  return MEMORY[0x2822009F8](sub_221F75680, 0, 0);
}

uint64_t sub_221F75680()
{
  if (*(v0 + 232) == 5)
  {
    v1 = __swift_project_boxed_opaque_existential_0Tm((*(v0 + 56) + 80), *(*(v0 + 56) + 104));
    v2 = *v1;
    *(v0 + 152) = *v1;

    return MEMORY[0x2822009F8](sub_221F75764, v2, 0);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3();
  }
}

id sub_221F75764()
{
  result = [*(v0 + 128) UUID];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 136);
    v4 = *(v0 + 104);
    v5 = *(v0 + 64);
    v6 = *(v0 + 72);
    sub_221FB5C18();

    v7 = sub_221FB5BE8();
    v9 = v8;
    *(v0 + 160) = v8;
    v10 = *(v6 + 8);
    *(v0 + 168) = v10;
    *(v0 + 176) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v4, v5);
    v11 = swift_task_alloc();
    *(v0 + 184) = v11;
    *v11 = v0;
    v11[1] = sub_221F758A0;

    return sub_221ED0B98(v3, v7, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221F758A0()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = sub_221F75ACC;
  }

  else
  {
    v4 = sub_221F759E0;
    v3 = 0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_221F759E0()
{
  v1 = v0[16];
  sub_221EA4AB4(v0[7] + 80, (v0 + 2));
  v2 = __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
  v3 = [v1 UUID];
  if (v3)
  {
    v6 = v3;
    v7 = v0[21];
    v8 = v0[12];
    v9 = v0[8];
    sub_221FB5C18();

    v0[25] = sub_221FB5BE8();
    v0[26] = v10;
    v7(v8, v9);
    v4 = *v2;
    v0[27] = *v2;
    v3 = sub_221F75E84;
    v5 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_221F75AE8()
{
  v36 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = sub_221FB61D8();
  __swift_project_value_buffer(v4, qword_281307DF0);
  sub_221ED4904(v1, v2, 5u);
  sub_221ED4904(v1, v2, 5u);

  v5 = v3;
  v6 = sub_221FB61B8();
  v7 = sub_221FB65C8();
  if (os_log_type_enabled(v6, v7))
  {
    v34 = v7;
    v8 = *(v0 + 128);
    v9 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v35 = v33;
    *v9 = 136315394;
    v10 = [v8 UUID];
    if (!v10)
    {
      v28 = *(v0 + 136);
      v29 = *(v0 + 144);
      v30 = *(v0 + 128);
      sub_221ED4948(v28, v29, 5u);

      sub_221ED4948(v28, v29, 5u);
      __break(1u);
      return;
    }

    v11 = v10;
    v32 = *(v0 + 192);
    v31 = *(v0 + 168);
    v12 = *(v0 + 136);
    v13 = *(v0 + 144);
    v14 = *(v0 + 128);
    v15 = *(v0 + 80);
    v16 = *(v0 + 64);

    sub_221ED4948(v12, v13, 5u);
    sub_221ED4948(v12, v13, 5u);
    sub_221FB5C18();

    v17 = sub_221FB5BE8();
    v19 = v18;
    v31(v15, v16);
    v20 = sub_221EF4114(v17, v19, &v35);

    *(v9 + 4) = v20;
    *(v9 + 12) = 2080;
    sub_221F182A4(&qword_27CFEC2C8, MEMORY[0x277CC9600]);
    v21 = sub_221FB6508();
    v23 = sub_221EF4114(v21, v22, &v35);

    *(v9 + 14) = v23;
    _os_log_impl(&dword_221E93000, v6, v34, "Failed to store workout deletion: relationship %s, identifiers %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v33, -1, -1);
    MEMORY[0x223DADA80](v9, -1, -1);
  }

  else
  {
    v25 = *(v0 + 136);
    v24 = *(v0 + 144);
    v26 = *(v0 + 128);

    sub_221ED4948(v25, v24, 5u);
    sub_221ED4948(v25, v24, 5u);
  }

  v27 = *(v0 + 8);

  v27();
}

uint64_t sub_221F75E84()
{
  v0[28] = sub_221ECB7DC(v0[25], v0[26]);

  return MEMORY[0x2822009F8](sub_221F75F00, 0, 0);
}

uint64_t sub_221F75F00()
{
  v33 = v0;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = sub_221FB61D8();
  __swift_project_value_buffer(v4, qword_281307DF0);
  sub_221ED4904(v1, v2, 5u);

  v5 = v3;

  v6 = sub_221FB61B8();
  v7 = sub_221FB65C8();
  if (os_log_type_enabled(v6, v7))
  {
    v31 = v7;
    v8 = *(v0 + 128);
    v9 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v30;
    *v9 = 136315394;
    v10 = [v8 UUID];

    if (!v10)
    {
      v29 = v0 + 136;
      v28 = *(v0 + 136);
      v27 = *(v29 + 8);

      sub_221ED4948(v28, v27, 5u);

      __break(1u);
      return result;
    }

    v11 = *(v0 + 168);
    v12 = *(v0 + 88);
    v13 = *(v0 + 64);
    sub_221ED4948(*(v0 + 136), *(v0 + 144), 5u);

    sub_221FB5C18();

    v14 = sub_221FB5BE8();
    v16 = v15;
    v11(v12, v13);
    v17 = sub_221EF4114(v14, v16, &v32);

    *(v9 + 4) = v17;
    *(v9 + 12) = 2080;
    sub_221F182A4(&qword_27CFEC2C8, MEMORY[0x277CC9600]);
    v18 = sub_221FB6508();
    v20 = v19;

    v21 = sub_221EF4114(v18, v20, &v32);

    *(v9 + 14) = v21;
    _os_log_impl(&dword_221E93000, v6, v31, "Updated workout deletions for relationship %s, identifiers %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v30, -1, -1);
    MEMORY[0x223DADA80](v9, -1, -1);
  }

  else
  {
    v23 = *(v0 + 136);
    v22 = *(v0 + 144);
    v24 = *(v0 + 128);

    sub_221ED4948(v23, v22, 5u);
    swift_bridgeObjectRelease_n();
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_221F76298(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_221F762B8, 0, 0);
}

uint64_t sub_221F762B8()
{
  v1 = v0[3];
  v2 = [*__swift_project_boxed_opaque_existential_0Tm(v1 v1[3])];
  v3 = [v2 snapshotIndex];

  v4 = [*__swift_project_boxed_opaque_existential_0Tm(v1 v1[3])];
  v5 = [v4 snapshotIndex];

  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_221F763D4;
  v7 = v0[2];

  return sub_221F721C0(v7, v3, v5);
}

uint64_t sub_221F763D4(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v7 = *v1;
  *(v3 + 40) = a1;

  v4 = swift_task_alloc();
  *(v3 + 48) = v4;
  *v4 = v7;
  v4[1] = sub_221F76538;
  v5 = *(v2 + 16);

  return sub_221F73398(v5);
}

uint64_t sub_221F76538(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_221F76638, 0, 0);
}

uint64_t sub_221F76638()
{
  v3 = v0[5];
  sub_221ED43FC(v0[7]);
  v1 = v0[1];

  return v1(v3);
}

uint64_t sub_221F766AC(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_221F766CC, 0, 0);
}

uint64_t sub_221F766CC()
{
  v1 = v0[5];
  v0[2] = v0[4];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBE40, &qword_221FBD750);
  v0[8] = v4;
  v5 = sub_221EAB9F4(&qword_27CFEBE48, &qword_27CFEBE40, &qword_221FBD750);
  v0[9] = v5;
  *v3 = v0;
  v3[1] = sub_221F767EC;

  return MEMORY[0x28213AEC8](&unk_221FBE3E8, v2, v4, v5);
}

void sub_221F767EC()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_221F76928, 0, 0);
  }
}

uint64_t sub_221F76928()
{
  v1 = v0[5];
  v0[3] = v0[4];
  v2 = swift_task_alloc();
  v0[10] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_221ECA6B0;
  v4 = v0[8];
  v5 = v0[9];

  return MEMORY[0x28213AEC8](&unk_221FBE400, v2, v4, v5);
}

void sub_221F769FC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 48);
    do
    {
      v3 = *(v2 + 24);
      v4 = *v2;
      v5 = *(v2 - 1);
      v6 = v4;
      v7 = *(v2 + 1);
      v8 = v3;
      sub_221F76A6C(&v5);
      v2 += 6;
      --v1;
    }

    while (v1);
  }
}

void sub_221F76A6C(uint64_t *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  v4 = *(a1 + 40);
  if (v4 == 5)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v16 = sub_221FB61D8();
    __swift_project_value_buffer(v16, qword_281307DF0);
    sub_221ED4904(v1, v3, 5u);

    v17 = v2;
    v7 = sub_221FB61B8();
    v18 = sub_221FB65A8();

    sub_221ED4948(v1, v3, 5u);
    if (os_log_type_enabled(v7, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v19 = 138412546;
      *(v19 + 4) = v17;
      *v20 = v17;
      *(v19 + 12) = 2080;
      sub_221FB5C38();
      sub_221F182A4(&qword_27CFEC2C8, MEMORY[0x277CC9600]);
      v22 = v17;
      v23 = sub_221FB6508();
      v25 = sub_221EF4114(v23, v24, &v26);

      *(v19 + 14) = v25;
      _os_log_impl(&dword_221E93000, v7, v18, "Failed to update workout deletions: relationship %@, identifiers %s", v19, 0x16u);
      sub_221E9CFE8(v20, &qword_27CFEB900, &unk_221FB8C10);
      MEMORY[0x223DADA80](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x223DADA80](v21, -1, -1);
      MEMORY[0x223DADA80](v19, -1, -1);
    }
  }

  else
  {
    if (v4 != 4)
    {
      return;
    }

    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v5 = sub_221FB61D8();
    __swift_project_value_buffer(v5, qword_281307DF0);
    sub_221ED4904(v1, v3, 4u);

    v6 = v2;
    v7 = sub_221FB61B8();
    v8 = sub_221FB65A8();

    sub_221ED4948(v1, v3, 4u);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v26 = v11;
      *v9 = 138412546;
      *(v9 + 4) = v6;
      *v10 = v6;
      *(v9 + 12) = 2080;
      v12 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBF88, &qword_221FBE3D0);
      v13 = sub_221FB6298();
      v15 = sub_221EF4114(v13, v14, &v26);

      *(v9 + 14) = v15;
      _os_log_impl(&dword_221E93000, v7, v8, "Failed to update workouts: relationship %@, identifiers %s", v9, 0x16u);
      sub_221E9CFE8(v10, &qword_27CFEB900, &unk_221FB8C10);
      MEMORY[0x223DADA80](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x223DADA80](v11, -1, -1);
      MEMORY[0x223DADA80](v9, -1, -1);
    }
  }
}

uint64_t sub_221F76EAC()
{
  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 16) + 40), *(*(v0 + 16) + 64));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_221F76F60;

  return sub_221ECC030();
}

uint64_t sub_221F76F60()
{

  return MEMORY[0x2822009F8](sub_221F7705C, 0, 0);
}

uint64_t sub_221F7705C()
{
  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 16) + 80), *(*(v0 + 16) + 104));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_221ECAE18;

  return sub_221ECC388();
}

uint64_t sub_221F77110(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221ECAFA0;

  return sub_221F76298(a1);
}
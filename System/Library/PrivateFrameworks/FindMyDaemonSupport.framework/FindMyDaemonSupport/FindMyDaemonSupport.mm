void static SystemInfo.lockState.getter(char *a1@<X8>)
{
  v2 = MKBGetDeviceLockState();
  if (v2 > 1)
  {
    if (v2 == 3)
    {
      v3 = 5;
      goto LABEL_17;
    }

    if (v2 == 2)
    {
      v3 = 4;
      goto LABEL_17;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 3;
      goto LABEL_17;
    }

    if (v2 == 1)
    {
      if (MKBDeviceUnlockedSinceBoot())
      {
        v3 = 2;
      }

      else
      {
        v3 = 1;
      }

      goto LABEL_17;
    }
  }

  v4 = v2;
  if (qword_27EFBE328 != -1)
  {
    swift_once();
  }

  v5 = sub_24AE83ED0();
  __swift_project_value_buffer(v5, qword_27EFBFED0);
  v6 = sub_24AE83EB0();
  v7 = sub_24AE84230();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v4;
    _os_log_impl(&dword_24AE43000, v6, v7, "MKBGetDeviceLockState() returned %d", v8, 8u);
    MEMORY[0x24C233A80](v8, -1, -1);
  }

  v3 = 0;
LABEL_17:
  *a1 = v3;
}

uint64_t dispatch thunk of XPCClientConnectionPool.add(connection:)(uint64_t a1)
{
  v6 = (*(*v1 + 288) + **(*v1 + 288));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AE451AC;

  return v6(a1);
}

uint64_t sub_24AE44AF0(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v2[15] = *v1;
  return MEMORY[0x2822009F8](sub_24AE44B38, v1, 0);
}

uint64_t sub_24AE44B38()
{
  v1 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE910, &qword_24AE86A70);
  v2 = swift_allocObject();
  v0[16] = v2;
  *(v2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFBE918, &qword_24AE86A78);
  v3 = swift_allocObject();
  v0[17] = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = [v1 invalidationHandler];
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v4 = swift_allocObject();
    v4[2] = sub_24AE6D8EC;
    v4[3] = v6;
    v7 = sub_24AE6D8FC;
  }

  else
  {
    v7 = 0;
  }

  v8 = v0[14];
  v9 = v0[15];
  v10 = v0[13];
  *(v3 + 16) = v7;
  *(v3 + 24) = v4;
  sub_24AE44D88(0, 0);
  *(v2 + 16) = v10;
  swift_beginAccess();
  v11 = *(v8 + 160);
  v0[18] = v11;
  v0[12] = v11;
  v12 = swift_task_alloc();
  v0[19] = v12;
  v13 = *(v9 + 80);
  v0[20] = v13;
  v12[2] = v13;
  v14 = *(v9 + 88);
  v0[21] = v14;
  v12[3] = v14;
  v12[4] = v10;

  v15 = v10;
  v16 = swift_task_alloc();
  v0[22] = v16;
  v17 = sub_24AE84200();
  WitnessTable = swift_getWitnessTable();
  *v16 = v0;
  v16[1] = sub_24AE452A8;

  return MEMORY[0x28215ED40](v0 + 11, &unk_24AE86A88, v12, v17, WitnessTable);
}

uint64_t sub_24AE44D88(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24AE44D98()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AE44DD0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AE44E08(uint64_t *a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AE451A8;

  return sub_24AE44F88(a1, v6, v4, v5);
}

uint64_t sub_24AE44EB8()
{
  v0[6] = sub_24AE44FBC();
  v0[7] = sub_24AE83D20();
  v3 = (*MEMORY[0x277D089B8] + MEMORY[0x277D089B8]);
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_24AE45008;

  return v3();
}

uint64_t sub_24AE44F88(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a3;
  v5 = *a1;
  v4[4] = a4;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_24AE44EB8, 0, 0);
}

unint64_t sub_24AE44FBC()
{
  result = qword_280D79850;
  if (!qword_280D79850)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D79850);
  }

  return result;
}

uint64_t sub_24AE45008(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_24AE45128, 0, 0);
}

uint64_t sub_24AE4512C()
{
  v1 = *(v0 + 72);
  v2 = sub_24AE842A0();

  v3 = *(v0 + 8);

  return v3(v2 & 1);
}

uint64_t sub_24AE451AC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void sub_24AE452A8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 112);

    MEMORY[0x2822009F8](sub_24AE453F0, v3, 0);
  }
}

uint64_t sub_24AE453F0()
{
  v1 = v0[11];
  if (v1)
  {
    if (qword_280D79860 != -1)
    {
      swift_once();
    }

    v2 = v0[13];
    v3 = sub_24AE83ED0();
    __swift_project_value_buffer(v3, qword_280D79868);
    v4 = v2;
    v5 = sub_24AE83EB0();
    v6 = sub_24AE84210();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[13];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v7;
      *v9 = v7;
      v10 = v7;
      _os_log_impl(&dword_24AE43000, v5, v6, "Already have a session for %@", v8, 0xCu);
      sub_24AE6D86C(v9);
      MEMORY[0x24C233A80](v9, -1, -1);
      MEMORY[0x24C233A80](v8, -1, -1);
    }

    v11 = v0[1];

    return v11(v1);
  }

  else
  {
    v13 = v0[13];
    swift_getAssociatedTypeWitness();
    sub_24AE83DD0();
    v14 = v13;
    v15 = sub_24AE83DC0();
    v0[23] = v15;
    if (v15)
    {
      v16 = v15;

      v17 = swift_task_alloc();
      v0[24] = v17;
      *v17 = v0;
      v17[1] = sub_24AE45810;

      return MEMORY[0x28215EBC0](v16);
    }

    else
    {
      if (qword_280D79860 != -1)
      {
        swift_once();
      }

      v18 = v0[13];
      v19 = sub_24AE83ED0();
      __swift_project_value_buffer(v19, qword_280D79868);
      v20 = v18;
      v21 = sub_24AE83EB0();
      v22 = sub_24AE84230();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = v0[13];
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        *(v24 + 4) = v23;
        *v25 = v23;
        v26 = v23;
        _os_log_impl(&dword_24AE43000, v21, v22, "Failed to make XPCSession from %@", v24, 0xCu);
        sub_24AE6D86C(v25);
        MEMORY[0x24C233A80](v25, -1, -1);
        MEMORY[0x24C233A80](v24, -1, -1);
      }

      v28 = v0[20];
      v27 = v0[21];

      type metadata accessor for XPCClientConnectionPool.Error(0, v28, v27, v29);
      swift_getWitnessTable();
      swift_allocError();
      swift_willThrow();

      v30 = v0[1];

      return v30();
    }
  }
}

uint64_t sub_24AE45810(uint64_t a1)
{
  v4 = *v2;
  v4[25] = v1;

  v5 = v4[14];
  if (v1)
  {
    v6 = sub_24AE6BD0C;
  }

  else
  {
    v4[26] = a1;
    v6 = sub_24AE4594C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AE4594C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[13];
  v4 = swift_allocObject();
  v10 = *(v0 + 10);
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v10;
  *(v5 + 32) = v4;
  *(v5 + 40) = v2;
  *(v5 + 48) = v1;
  v0[6] = sub_24AE6D8D4;
  v0[7] = v5;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24AE62714;
  v0[5] = &block_descriptor_2;
  v6 = _Block_copy(v0 + 2);

  [v3 setInvalidationHandler_];
  _Block_release(v6);
  v7 = swift_task_alloc();
  v0[27] = v7;
  *v7 = v0;
  v7[1] = sub_24AE46064;
  v8 = v0[26];

  return sub_24AE45BC0(v8);
}

uint64_t sub_24AE45AF0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AE45B28()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
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

uint64_t sub_24AE45BC0(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v2[18] = *v1;
  return MEMORY[0x2822009F8](sub_24AE45C08, v1, 0);
}

uint64_t sub_24AE45C08()
{
  v1 = v0[16];
  swift_beginAccess();

  v2 = sub_24AE841B0();

  v0[15] = v1;
  swift_beginAccess();
  sub_24AE84200();
  swift_unknownObjectRetain();
  sub_24AE841C0();
  swift_endAccess();
  swift_unknownObjectRelease();
  if (qword_280D79860 != -1)
  {
    swift_once();
  }

  v3 = sub_24AE83ED0();
  __swift_project_value_buffer(v3, qword_280D79868);

  v4 = sub_24AE83EB0();
  v5 = sub_24AE84210();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = v2;
    *(v6 + 12) = 2048;
    swift_beginAccess();

    v7 = sub_24AE841B0();

    *(v6 + 14) = v7;

    _os_log_impl(&dword_24AE43000, v4, v5, "Session count: %ld -> %ld", v6, 0x16u);
    MEMORY[0x24C233A80](v6, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();

  v8 = sub_24AE841B0();

  if (v8 == 1 && (v9 = v0[17], v10 = *(v9 + 112), (v0[19] = v10) != 0))
  {
    v11 = *(v9 + 120);
    v0[20] = v11;
    sub_24AE45FA0(v10, v11);
    v15 = (v10 + *v10);
    v12 = swift_task_alloc();
    v0[21] = v12;
    *v12 = v0;
    v12[1] = sub_24AE6C160;

    return v15();
  }

  else
  {
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_24AE45FA0(uint64_t result, uint64_t a2)
{
  if (result)
  {
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

uint64_t sub_24AE45FE8()
{

  v1 = *(v0 + 208);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24AE46064()
{
  v1 = *(*v0 + 112);

  return MEMORY[0x2822009F8](sub_24AE45FE8, v1, 0);
}

uint64_t sub_24AE46174()
{
  if (qword_280D7A740 != -1)
  {
    swift_once();
  }

  v1 = off_280D7A748;
  os_unfair_lock_lock(off_280D7A748 + 6);
  v2 = *(v1 + 2);

  os_unfair_lock_unlock(v1 + 6);
  if (MEMORY[0x24C2329E0]())
  {
    if (!v2)
    {
      type metadata accessor for Daemon();
      swift_allocObject();
      v3 = swift_task_alloc();
      *(v0 + 16) = v3;
      *v3 = v0;
      v3[1] = sub_24AE5548C;

      return sub_24AE692A0(v3, 0xE800000000000000);
    }
  }

  else if (!v2)
  {
    return sub_24AE84440();
  }

  v5 = *(v0 + 8);

  return v5(v2);
}

uint64_t daemon.getter()
{
  if (qword_280D7A7F8 != -1)
  {
    swift_once();
  }

  v0 = qword_280D7A800;

  return MEMORY[0x2822009F8](sub_24AE46174, v0, 0);
}

uint64_t sub_24AE463AC()
{
  v0[9] = (*(v0[4] + 16))(v0[2]);
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_24AE46490;
  v2 = v0[5];
  v3 = v0[3];

  return sub_24AE46690(v3, v2);
}

uint64_t sub_24AE46490(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v6 = *(v4 + 56);
    v7 = *(v4 + 64);

    return MEMORY[0x2822009F8](sub_24AE71D68, v6, v7);
  }

  else
  {

    v8 = *(v5 + 8);

    return v8(a1);
  }
}

uint64_t ActorServiceDaemon.getService<A>()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = sub_24AE840E0();
  v5[7] = v7;
  v5[8] = v6;

  return MEMORY[0x2822009F8](sub_24AE463AC, v7, v6);
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = sub_24AE840E0();

  return MEMORY[0x2822009F8](sub_24AE71AD0, v7, v6);
}

uint64_t sub_24AE46690(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  return MEMORY[0x2822009F8](sub_24AE46700, v2, 0);
}

uint64_t sub_24AE466D8()
{
  sub_24AE46AE4();
}

uint64_t sub_24AE46700()
{
  v39 = v0;
  v1 = *(v0 + 144);
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = *(v2 + 16);

  if (v3)
  {
    v4 = 0;
    while (v4 < *(v2 + 16))
    {
      v5 = *(v0 + 128);
      v36 = *(v2 + 16 * v4 + 32);
      v38 = v36;
      swift_unknownObjectRetain();
      if (sub_24AE46B18(&v38, v5))
      {

        *(v0 + 88) = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE8A0, &unk_24AE866A0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_7;
        }

        *(v0 + 152) = *(v0 + 120);
        v12 = qword_280D7A5E0;
        swift_unknownObjectRetain();
        if (v12 == -1)
        {
LABEL_12:
          sub_24AE846A0();
          if (*(v0 + 104))
          {
            v13 = *(v0 + 112);
            v14 = *(v0 + 144);
            ObjectType = swift_getObjectType();
            v37 = *(v13 + 24);
            v16 = v37(ObjectType, v13);
            v18 = v17;
            swift_beginAccess();
            if (*(*(v14 + 128) + 16))
            {

              sub_24AE475AC(v16, v18);
              v20 = v19;

              if (v20)
              {
                v21 = *(v0 + 136);
                v22 = *(v0 + 128);

                v23 = v37(ObjectType, v13);
                v25 = v24;
                v26 = (*(v21 + 24))(v22, v21);
                v28 = v27;
                swift_beginAccess();
                sub_24AE81974(&v38, v23, v25, v26, v28);
                swift_endAccess();
              }
            }

            swift_unknownObjectRelease();
          }

          v29 = *(v0 + 128);
          v30 = *(v0 + 136);
          v31 = *(v30 + 24);
          *(v0 + 160) = v31;
          *(v0 + 168) = (v30 + 24) & 0xFFFFFFFFFFFFLL | 0x69BB000000000000;
          v32 = v31(v29);
          v34 = v33;
          *(v0 + 176) = v33;
          v35 = swift_task_alloc();
          *(v0 + 184) = v35;
          *v35 = v0;
          v35[1] = sub_24AE46D60;

          return sub_24AE46EB0(v32, v34);
        }

LABEL_21:
        swift_once();
        goto LABEL_12;
      }

      swift_unknownObjectRelease();
      if (v3 == ++v4)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_6:

LABEL_7:
  v6 = sub_24AE846C0();
  v8 = v7;
  sub_24AE834AC();
  swift_allocError();
  *v9 = v6;
  *(v9 + 8) = v8;
  *(v9 + 16) = 0;
  swift_willThrow();
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24AE46B18(__int128 *a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE8A0, &unk_24AE866A0);
  result = swift_dynamicCast();
  if (result)
  {
    v3 = result;
    swift_unknownObjectRelease();
    return v3;
  }

  return result;
}

uint64_t sub_24AE46B9C()
{
  v1 = v0[7];
  swift_beginAccess();
  if (*(*(v1 + 128) + 16) && (v3 = v0[5], v2 = v0[6], , sub_24AE475AC(v3, v2), LOBYTE(v2) = v4, , (v2 & 1) != 0))
  {
    v7 = v0[6];
    v6 = v0[7];
    v8 = v0[5];
    sub_24AE83BE4(&qword_280D7A510, v5, type metadata accessor for ActorServiceCollection, &protocol conformance descriptor for ActorServiceCollection);
    v9 = swift_task_alloc();
    v0[8] = v9;
    v9[2] = v6;
    v9[3] = v8;
    v9[4] = v7;
    v10 = swift_task_alloc();
    v0[9] = v10;
    *v10 = v0;
    v10[1] = sub_24AE7620C;

    return MEMORY[0x2822008A0]();
  }

  else
  {
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_24AE46D60()
{
  v2 = *v1;
  v2[24] = v0;

  if (v0)
  {
    v3 = v2[18];

    return MEMORY[0x2822009F8](sub_24AE76394, v3, 0);
  }

  else
  {
    swift_unknownObjectRelease();

    v4 = v2[1];
    v5 = v2[19];

    return v4(v5);
  }
}

uint64_t sub_24AE46EB0(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_24AE46B9C, v2, 0);
}

uint64_t sub_24AE46F28()
{
  swift_beginAccess();

  v0 = sub_24AE841E0();

  return v0 & 1;
}

uint64_t sub_24AE46FC8()
{
  v49 = v0;
  v1 = v0[9];
  if (v1)
  {
    v2 = v0[10];
    if (*(v1 + 16) && (v3 = sub_24AE475AC(0x746E657645435058, 0xEC000000656D614ELL), (v4 & 1) != 0))
    {
      sub_24AE476DC(*(v1 + 56) + 32 * v3, (v0 + 2));

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE610, &unk_24AE85DE0);
      if (swift_dynamicCast())
      {
        sub_24AE83D40();

        v45 = v2;
        sub_24AE83D50();
        if (qword_280D79CA0 != -1)
        {
          swift_once();
        }

        v6 = v0[16];
        v5 = v0[17];
        v8 = v0[14];
        v7 = v0[15];
        v9 = sub_24AE83ED0();
        __swift_project_value_buffer(v9, qword_280D79CB0);
        (*(v7 + 16))(v6, v5, v8);
        v10 = sub_24AE83EB0();
        v11 = sub_24AE84250();
        v12 = os_log_type_enabled(v10, v11);
        v14 = v0[15];
        v13 = v0[16];
        v15 = v0[14];
        if (v12)
        {
          v16 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v48 = v46;
          *v16 = 136446210;
          sub_24AE564F0(&qword_280D7A040, 255, MEMORY[0x277D089A0], MEMORY[0x277D089A8]);
          v17 = sub_24AE84510();
          v19 = v18;
          v44 = v11;
          v20 = *(v14 + 8);
          v20(v13, v15);
          v21 = sub_24AE53C28(v17, v19, &v48);

          *(v16 + 4) = v21;
          _os_log_impl(&dword_24AE43000, v10, v44, "XPCEventStream notification: %{public}s", v16, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v46);
          MEMORY[0x24C233A80](v46, -1, -1);
          MEMORY[0x24C233A80](v16, -1, -1);
        }

        else
        {

          v20 = *(v14 + 8);
          v20(v13, v15);
        }

        v38 = v0[17];
        v39 = v0[14];
        sub_24AE52CC0(v38, v45, &unk_285E371E0, &unk_24AE85DF8, "Received notification %{public}s with no subscribers!", 0x8002200010002);

        v20(v38, v39);
        v40 = v0[26];
        v41 = v0[13];
        v42 = swift_task_alloc();
        v0[27] = v42;
        *v42 = v0;
        v42[1] = sub_24AE51970;
        v43 = v0[18];

        return MEMORY[0x2822003E8](v0 + 9, v41, v40, v43);
      }
    }

    else
    {
    }

    if (qword_280D79CA0 != -1)
    {
      swift_once();
    }

    v22 = sub_24AE83ED0();
    __swift_project_value_buffer(v22, qword_280D79CB0);
    v23 = sub_24AE83EB0();
    v24 = sub_24AE84230();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[23];
    v47 = v0[24];
    v27 = v0[22];
    v28 = v0[19];
    v29 = v0[20];
    v30 = v0[18];
    if (v25)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v48 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_24AE53C28(0x746E657645435058, 0xEC000000656D614ELL, &v48);
      _os_log_impl(&dword_24AE43000, v23, v24, "Event missing %s key!", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x24C233A80](v32, -1, -1);
      MEMORY[0x24C233A80](v31, -1, -1);
    }

    else
    {
    }

    (*(v28 + 8))(v29, v30);
    (*(v26 + 8))(v47, v27);
  }

  else
  {
    v34 = v0[23];
    v33 = v0[24];
    v35 = v0[22];
    (*(v0[19] + 8))(v0[20], v0[18]);
    (*(v34 + 8))(v33, v35);
  }

  v36 = v0[1];

  return v36();
}

unint64_t sub_24AE475AC(uint64_t a1, uint64_t a2)
{
  sub_24AE845F0();
  sub_24AE83FE0();
  v4 = sub_24AE84610();

  return sub_24AE47624(a1, a2, v4);
}

unint64_t sub_24AE47624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_24AE84540())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_24AE476DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24AE47758@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_24AE477DC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AE47820()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24AE47898()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AE478D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 232);
  return result;
}

uint64_t sub_24AE47918(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 232) = v2;
  return result;
}

uint64_t sub_24AE4796C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AE479AC()
{
  swift_unknownObjectRelease();

  sub_24AE60214(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24AE479FC()
{
  swift_unknownObjectRelease();

  sub_24AE60214(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24AE47A54()
{
  swift_unknownObjectRelease();

  sub_24AE60214(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24AE47A9C()
{
  v1 = sub_24AE83EA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AE47B60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE6D0, &unk_24AE85EC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_24AE83EA0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_24AE47CC4()
{
  v1 = sub_24AE83EA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AE47D90(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE858, &qword_24AE863E8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24AE47E4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE858, &qword_24AE863E8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AE47F14()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AE47F94()
{

  return MEMORY[0x2821FE8E8](v0, 36, 7);
}

uint64_t sub_24AE47FD0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE600, &unk_24AE860A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24AE480B4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24AE48104()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AE4813C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_24AE46AE4();
}

__n128 sub_24AE481B0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24AE481C0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24AE48210()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24AE48260()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AE48298()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AE482FC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AE48334()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AE48380()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24AE483C8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_24AE48410()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AE48450()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AE48490()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 208, 7);
}

uint64_t sub_24AE48558()
{
  v0 = sub_24AE83ED0();
  __swift_allocate_value_buffer(v0, qword_280D7A990);
  v1 = __swift_project_value_buffer(v0, qword_280D7A990);
  if (qword_280D79C58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D7A960);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t FirstUnlockService.name.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

void *FirstUnlockService.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v0[14] = 0xD000000000000012;
  v0[15] = 0x800000024AE850B0;
  v0[16] = MEMORY[0x277D84F90];
  return v0;
}

void *FirstUnlockService.init()()
{
  swift_defaultActor_initialize();
  v0[14] = 0xD000000000000012;
  v0[15] = 0x800000024AE850B0;
  v0[16] = MEMORY[0x277D84F90];
  return v0;
}

uint64_t sub_24AE48718()
{
  v9 = v0;
  static SystemInfo.lockState.getter(&v8);
  if (v8 == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 24) = v1;
    *v1 = v0;
    v1[1] = sub_24AE488B4;

    return sub_24AE48A24();
  }

  else
  {
    if (qword_280D79DE0 != -1)
    {
      swift_once();
    }

    v3 = sub_24AE83ED0();
    __swift_project_value_buffer(v3, qword_280D7A990);
    v4 = sub_24AE83EB0();
    v5 = sub_24AE84250();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24AE43000, v4, v5, "Device is already unlocked -- not registering", v6, 2u);
      MEMORY[0x24C233A80](v6, -1, -1);
    }

    sub_24AE49398();
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_24AE488B4()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_24AE489C4, v1, 0);
}

uint64_t sub_24AE489C4()
{
  sub_24AE49398();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AE48A24()
{
  v1[2] = v0;
  v2 = sub_24AE83D90();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE3F8, &qword_24AE85218);
  v1[6] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE400, &qword_24AE85220);
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE408, &qword_24AE85228);
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE48BEC, v0, 0);
}

uint64_t sub_24AE48BEC()
{
  if (qword_280D79DE0 != -1)
  {
    swift_once();
  }

  v1 = sub_24AE83ED0();
  v0[13] = __swift_project_value_buffer(v1, qword_280D7A990);
  v2 = sub_24AE83EB0();
  v3 = sub_24AE84250();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24AE43000, v2, v3, "Registering listener for Darwin notification: kMobileKeyBagFirstUnlockNotificationID", v4, 2u);
    MEMORY[0x24C233A80](v4, -1, -1);
  }

  sub_24AE83DB0();
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_24AE48D68;
  v6 = v0[9];

  return MEMORY[0x28215EC48](v6, 0xD000000000000025, 0x800000024AE87F40);
}

uint64_t sub_24AE48D68()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_24AE48E78, v1, 0);
}

uint64_t sub_24AE48E78()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  sub_24AE84150();
  (*(v2 + 8))(v1, v3);
  v5 = sub_24AE4A640(&unk_280D79DD0, v4, type metadata accessor for FirstUnlockService, &protocol conformance descriptor for FirstUnlockService);
  v0[15] = v5;
  v6 = v0[2];
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_24AE48F94;
  v8 = v0[10];
  v9 = v0[6];

  return MEMORY[0x2822003E8](v9, v6, v5, v8);
}

uint64_t sub_24AE48F94()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_24AE490A4, v1, 0);
}

uint64_t sub_24AE490A4()
{
  v24 = v0;
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[11] + 8))(v0[12], v0[10]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v3 + 32))(v0[5], v1, v2);
    v6 = sub_24AE83EB0();
    v7 = sub_24AE84220();
    v8 = os_log_type_enabled(v6, v7);
    v10 = v0[4];
    v9 = v0[5];
    v11 = v0[3];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v23 = v13;
      *v12 = 136315138;
      sub_24AE4A640(&qword_280D7A040, 255, MEMORY[0x277D089A0], MEMORY[0x277D089A8]);
      v14 = sub_24AE84510();
      v16 = v15;
      (*(v10 + 8))(v9, v11);
      v17 = sub_24AE53C28(v14, v16, &v23);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_24AE43000, v6, v7, "Process first unlock event: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x24C233A80](v13, -1, -1);
      MEMORY[0x24C233A80](v12, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v9, v11);
    }

    sub_24AE49398();
    v18 = v0[15];
    v19 = v0[2];
    v20 = swift_task_alloc();
    v0[16] = v20;
    *v20 = v0;
    v20[1] = sub_24AE48F94;
    v21 = v0[10];
    v22 = v0[6];

    return MEMORY[0x2822003E8](v22, v19, v18, v21);
  }
}

void sub_24AE49398()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE3F0, &qword_24AE85210);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - v4;
  static SystemInfo.lockState.getter(&v25);
  if (v25 == 1)
  {
    if (qword_280D79DE0 != -1)
    {
      swift_once();
    }

    v6 = sub_24AE83ED0();
    __swift_project_value_buffer(v6, qword_280D7A990);
    v24 = sub_24AE83EB0();
    v7 = sub_24AE84250();
    if (os_log_type_enabled(v24, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24AE43000, v24, v7, "still locked -- keep listening", v8, 2u);
      MEMORY[0x24C233A80](v8, -1, -1);
    }

    v9 = v24;
  }

  else
  {
    if (qword_280D79DE0 != -1)
    {
      swift_once();
    }

    v10 = sub_24AE83ED0();
    __swift_project_value_buffer(v10, qword_280D7A990);
    v11 = sub_24AE83EB0();
    v12 = sub_24AE84250();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24AE43000, v11, v12, "*** First Unlock Event ***", v13, 2u);
      MEMORY[0x24C233A80](v13, -1, -1);
    }

    v14 = sub_24AE83EB0();
    v15 = sub_24AE84250();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = *(v1[16].isa + 2);

      _os_log_impl(&dword_24AE43000, v14, v15, "Notifying %ld clients of first unlock", v16, 0xCu);
      MEMORY[0x24C233A80](v16, -1, -1);
    }

    else
    {
    }

    isa = v1[16].isa;
    v18 = *(isa + 2);
    if (v18)
    {
      v24 = v1;
      v21 = *(v3 + 16);
      v19 = v3 + 16;
      v20 = v21;
      v22 = isa + ((*(v19 + 64) + 32) & ~*(v19 + 64));
      v23 = *(v19 + 56);

      do
      {
        v20(v5, v22, v2);
        sub_24AE84100();
        (*(v19 - 8))(v5, v2);
        v22 += v23;
        --v18;
      }

      while (v18);

      v1 = v24;
    }

    v1[16].isa = MEMORY[0x277D84F90];
  }
}

uint64_t sub_24AE49764()
{
  v6 = v0;
  static SystemInfo.lockState.getter(&v5);
  if (v5 == 1)
  {
    sub_24AE4A640(&unk_280D79DD0, v1, type metadata accessor for FirstUnlockService, &protocol conformance descriptor for FirstUnlockService);
    v2 = swift_task_alloc();
    *(v0 + 24) = v2;
    *v2 = v0;
    v2[1] = sub_24AE498C4;

    return MEMORY[0x2822007B8]();
  }

  else
  {
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_24AE498C4()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_24AE48510, v1, 0);
}

uint64_t sub_24AE499D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE3F0, &qword_24AE85210);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  (*(v5 + 16))(&v13 - v6, a1, v4);
  v8 = *(a2 + 128);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 128) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_24AE6153C(0, v8[2] + 1, 1, v8);
    *(a2 + 128) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_24AE6153C((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  result = (*(v5 + 32))(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v7, v4);
  *(a2 + 128) = v8;
  return result;
}

uint64_t FirstUnlockService.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t FirstUnlockService.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AE49BD0()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t sub_24AE49C00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AE49C8C;

  return sub_24AE486F8();
}

uint64_t sub_24AE49C8C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24AE49D84(uint64_t a1, uint64_t a2)
{
  UnlockService = type metadata accessor for FirstUnlockService();
  v4 = sub_24AE844F0();
  MEMORY[0x24C232D80](v4);

  MEMORY[0x24C232D80](8250, 0xE200000000000000);
  v5 = MEMORY[0x24C233290](UnlockService, a2);
  MEMORY[0x24C232D80](v5);

  MEMORY[0x24C232D80](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_24AE49E40()
{
  v0 = sub_24AE83ED0();
  __swift_allocate_value_buffer(v0, qword_280D7A960);
  __swift_project_value_buffer(v0, qword_280D7A960);
  return sub_24AE83EC0();
}

uint64_t sub_24AE49EEC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_24AE4A640(&qword_280D79DC8, a2, type metadata accessor for FirstUnlockService, &protocol conformance descriptor for FirstUnlockService);
  result = sub_24AE4A640(&unk_280D79DD0, v3, type metadata accessor for FirstUnlockService, &protocol conformance descriptor for FirstUnlockService);
  *(a1 + 16) = result;
  return result;
}

uint64_t dispatch thunk of FirstUnlockService.initialLaunchProcessing()()
{
  v4 = (*(*v0 + 136) + **(*v0 + 136));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AE4A7E0;

  return v4();
}

uint64_t dispatch thunk of FirstUnlockService.migrate(from:to:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 144) + **(*v2 + 144));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AE4A7E0;

  return v8(a1, a2);
}

uint64_t dispatch thunk of FirstUnlockService.firstLaunchSinceReboot()()
{
  v4 = (*(*v0 + 152) + **(*v0 + 152));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AE4A7E0;

  return v4();
}

uint64_t dispatch thunk of FirstUnlockService.run()()
{
  v4 = (*(*v0 + 160) + **(*v0 + 160));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AE4A7E0;

  return v4();
}

uint64_t dispatch thunk of FirstUnlockService.waitForFirstUnlock()()
{
  v4 = (*(*v0 + 168) + **(*v0 + 168));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AE4A504;

  return v4();
}

uint64_t sub_24AE4A504()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
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

uint64_t sub_24AE4A640(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_24AE4A744(uint64_t a1, int a2)
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

uint64_t sub_24AE4A764(uint64_t result, int a2, int a3)
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

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_280D7A068)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280D7A068);
    }
  }
}

unint64_t SystemInfo.DeviceLockState.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 6;
  if (result < 6)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_24AE4A800()
{
  v1 = *v0;
  sub_24AE845F0();
  MEMORY[0x24C233390](v1);
  return sub_24AE84610();
}

uint64_t sub_24AE4A848(uint64_t a1)
{
  v2 = *v1;
  sub_24AE845F0();
  MEMORY[0x24C233390](v2);
  return sub_24AE84610();
}

unint64_t sub_24AE4A948()
{
  result = qword_27EFBE4D0;
  if (!qword_27EFBE4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE4D0);
  }

  return result;
}

uint64_t _s15DeviceLockStateOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s15DeviceLockStateOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24AE4AAEC()
{
  result = qword_280D79BB8;
  if (!qword_280D79BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D79BB8);
  }

  return result;
}

uint64_t sub_24AE4AB48()
{
  sub_24AE845F0();
  MEMORY[0x24C233390](0);
  return sub_24AE84610();
}

uint64_t sub_24AE4ABB4(uint64_t a1)
{
  sub_24AE845F0();
  MEMORY[0x24C233390](0);
  return sub_24AE84610();
}

uint64_t sub_24AE4AC1C()
{
  if (*v0)
  {
    return 0x534F63616DLL;
  }

  else
  {
    return 5459817;
  }
}

uint64_t sub_24AE4AC4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 5459817 && a2 == 0xE300000000000000;
  if (v5 || (sub_24AE84540() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x534F63616DLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24AE84540();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24AE4AD30(uint64_t a1)
{
  v2 = sub_24AE4B198();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE4AD6C(uint64_t a1)
{
  v2 = sub_24AE4B198();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AE4ADB4(uint64_t a1)
{
  v2 = sub_24AE4B240();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE4ADF0(uint64_t a1)
{
  v2 = sub_24AE4B240();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AE4AE2C(uint64_t a1)
{
  v2 = sub_24AE4B1EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE4AE68(uint64_t a1)
{
  v2 = sub_24AE4B1EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DeviceVersion.Platform.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE4D8, &qword_24AE853A0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE4E0, &qword_24AE853A8);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE4E8, &qword_24AE853B0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE4B198();
  sub_24AE84630();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_24AE4B1EC();
    v14 = v18;
    sub_24AE844D0();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_24AE4B240();
    sub_24AE844D0();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24AE4B198()
{
  result = qword_27EFBE4F0;
  if (!qword_27EFBE4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE4F0);
  }

  return result;
}

unint64_t sub_24AE4B1EC()
{
  result = qword_27EFBE4F8;
  if (!qword_27EFBE4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE4F8);
  }

  return result;
}

unint64_t sub_24AE4B240()
{
  result = qword_27EFBE500;
  if (!qword_27EFBE500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE500);
  }

  return result;
}

uint64_t DeviceVersion.Platform.hashValue.getter()
{
  v1 = *v0;
  sub_24AE845F0();
  MEMORY[0x24C233390](v1);
  return sub_24AE84610();
}

uint64_t DeviceVersion.Platform.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE508, &qword_24AE853B8);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE510, &qword_24AE853C0);
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE518, &qword_24AE853C8);
  v29 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE4B198();
  v13 = v31;
  sub_24AE84620();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_24AE844C0();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_24AE843B0();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE520, &qword_24AE853D0);
    *v21 = &type metadata for DeviceVersion.Platform;
    sub_24AE844A0();
    sub_24AE843A0();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_24AE4B1EC();
    sub_24AE84490();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_24AE4B240();
    sub_24AE84490();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_0(v22);
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DeviceVersion.init(systemVersion:platform:)(FindMyDaemonSupport::DeviceVersion *__return_ptr retstr, Swift::String systemVersion, FindMyDaemonSupport::DeviceVersion::Platform platform)
{
  v4 = *platform;
  SystemVersionNumber.init(string:)(&v8, systemVersion);
  object = v8.value.rawValue._object;
  if (v8.value.rawValue._object)
  {
    retstr->systemVersionNumber.rawValue._countAndFlagsBits = v8.value.rawValue._countAndFlagsBits;
    retstr->systemVersionNumber.rawValue._object = object;
    v6 = *&v8.value.baseLetter._object;
    *&retstr->systemVersionNumber.baseNumber = *&v8.value.baseNumber;
    *&retstr->systemVersionNumber.baseLetter._object = v6;
    suffix = v8.value.suffix;
    *&retstr->systemVersionNumber.childType.is_nil = *&v8.value.childType.is_nil;
    retstr->systemVersionNumber.suffix = suffix;
    retstr->platform = v4;
  }

  else
  {
    sub_24AE4B820();
    swift_allocError();
    swift_willThrow();
  }
}

unint64_t sub_24AE4B820()
{
  result = qword_27EFBE528;
  if (!qword_27EFBE528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE528);
  }

  return result;
}

uint64_t static DeviceVersion.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v3 = *(a2 + 80);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_24AE84540();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t sub_24AE4B8D8()
{
  if (*v0)
  {
    return 0x6D726F6674616C70;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_24AE4B918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x800000024AE87FD0 == a2 || (sub_24AE84540() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24AE84540();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_24AE4BA00(uint64_t a1)
{
  v2 = sub_24AE4C424();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE4BA3C(uint64_t a1)
{
  v2 = sub_24AE4C424();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DeviceVersion.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE530, &qword_24AE853D8);
  v26 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  v7 = v1[3];
  v23 = v1[2];
  v24 = v7;
  v25 = v1[4];
  v8 = v1[1];
  v21 = *v1;
  v22 = v8;
  v11 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE4C3C8(&v21, &v16);
  sub_24AE4C424();
  sub_24AE84630();
  v18 = v23;
  v19 = v24;
  v20 = v25;
  v16 = v21;
  v17 = v22;
  v15 = 0;
  sub_24AE4C478();
  sub_24AE844E0();
  v14[2] = v18;
  v14[3] = v19;
  v14[4] = v20;
  v14[0] = v16;
  v14[1] = v17;
  sub_24AE4C4CC(v14);
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_24AE4C520();
    sub_24AE844E0();
  }

  return (*(v26 + 8))(v6, v4);
}

uint64_t DeviceVersion.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE550, &qword_24AE853E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE4C424();
  sub_24AE84620();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v8 = v5;
  v9 = v17;
  v34 = 0;
  sub_24AE4C574();
  sub_24AE844B0();
  v29 = v24;
  v30 = v25;
  v31 = v26;
  v27 = v22;
  v28 = v23;
  v32 = 1;
  sub_24AE4C5C8();
  sub_24AE844B0();
  (*(v8 + 8))(v7, v4);
  v10 = v33;
  v11 = v30;
  v18[2] = v29;
  v18[3] = v30;
  v12 = v31;
  v18[4] = v31;
  v14 = v27;
  v13 = v28;
  v18[0] = v27;
  v18[1] = v28;
  v19 = v33;
  *(v9 + 32) = v29;
  *(v9 + 48) = v11;
  *(v9 + 64) = v12;
  *(v9 + 80) = v10;
  *v9 = v14;
  *(v9 + 16) = v13;
  sub_24AE4C61C(v18, v20);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v20[2] = v29;
  v20[3] = v30;
  v20[4] = v31;
  v20[0] = v27;
  v20[1] = v28;
  v21 = v10;
  return sub_24AE4C654(v20);
}

BOOL sub_24AE4BF68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v2;
  v9[4] = *(a1 + 64);
  v10 = *(a1 + 80);
  v3 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v3;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return (_s19FindMyDaemonSupport13DeviceVersionV1loiySbAC_ACtFZ_0(v7, v9) & 1) == 0;
}

BOOL sub_24AE4BFD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v2;
  v9[4] = *(a1 + 64);
  v10 = *(a1 + 80);
  v3 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v3;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return (_s19FindMyDaemonSupport13DeviceVersionV1loiySbAC_ACtFZ_0(v9, v7) & 1) == 0;
}

unint64_t sub_24AE4C048(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v2;
  v9[4] = *(a1 + 64);
  v10 = *(a1 + 80);
  v3 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v3;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return _s19FindMyDaemonSupport13DeviceVersionV1loiySbAC_ACtFZ_0(v7, v9) & 1;
}

uint64_t sub_24AE4C0B4(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v3 = *(a2 + 80);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_24AE84540();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t DeviceVersion.debugDescription.getter()
{
  MEMORY[0x24C232D80](*v0, v0[1]);
  MEMORY[0x24C232D80](47, 0xE100000000000000);
  sub_24AE84430();
  return 0;
}

uint64_t sub_24AE4C18C()
{
  MEMORY[0x24C232D80](*v0, v0[1]);
  MEMORY[0x24C232D80](47, 0xE100000000000000);
  sub_24AE84430();
  return 0;
}

__int128 *_s19FindMyDaemonSupport13DeviceVersionV1loiySbAC_ACtFZ_0(__int128 *result, __int128 *a2)
{
  v2 = result[3];
  v29 = result[2];
  v30 = v2;
  v3 = result[4];
  v4 = result[1];
  v27 = *result;
  v28 = v4;
  v5 = *(result + 80);
  v6 = a2[3];
  v34 = a2[2];
  v35 = v6;
  v36 = a2[4];
  v7 = *a2;
  v33 = a2[1];
  v31 = v3;
  v32 = v7;
  if (v5 == *(a2 + 80))
  {
    v10 = result[3];
    v22 = result[2];
    v23 = v10;
    v24 = result[4];
    v11 = result[1];
    v20 = *result;
    v21 = v11;
    v12 = a2[3];
    v17 = a2[2];
    v18 = v12;
    v19 = a2[4];
    v13 = a2[1];
    v15 = *a2;
    v16 = v13;
    sub_24AE4C3C8(&v27, v26);
    sub_24AE4C3C8(&v32, v26);
    MyDaemonSupport19SystemVersionNumberV1loiySbAC_ACtFZ_0 = _s19FindMyDaemonSupport19SystemVersionNumberV1loiySbAC_ACtFZ_0(&v20, &v15);
    v25[2] = v17;
    v25[3] = v18;
    v25[4] = v19;
    v25[0] = v15;
    v25[1] = v16;
    sub_24AE4C4CC(v25);
    v26[2] = v22;
    v26[3] = v23;
    v26[4] = v24;
    v26[0] = v20;
    v26[1] = v21;
    sub_24AE4C4CC(v26);
    return (MyDaemonSupport19SystemVersionNumberV1loiySbAC_ACtFZ_0 & 1);
  }

  v8 = v28;
  if (!v5)
  {
    v9 = v33 - 2;
    if (!__OFSUB__(v33, 2))
    {
      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    return result;
  }

  v8 = v28 - 2;
  if (__OFSUB__(v28, 2))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = v33;
LABEL_7:
  if (v8 != v9)
  {
    MyDaemonSupport19SystemVersionNumberV1loiySbAC_ACtFZ_0 = v8 < v9;
    return (MyDaemonSupport19SystemVersionNumberV1loiySbAC_ACtFZ_0 & 1);
  }

  if (__PAIR128__(v29, *(&v28 + 1)) == __PAIR128__(v34, *(&v33 + 1)) || (sub_24AE84540() & 1) != 0)
  {
    MyDaemonSupport19SystemVersionNumberV1loiySbAC_ACtFZ_0 = v5 ^ 1;
    return (MyDaemonSupport19SystemVersionNumberV1loiySbAC_ACtFZ_0 & 1);
  }

  return sub_24AE84540();
}

unint64_t sub_24AE4C424()
{
  result = qword_27EFBE538;
  if (!qword_27EFBE538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE538);
  }

  return result;
}

unint64_t sub_24AE4C478()
{
  result = qword_27EFBE540;
  if (!qword_27EFBE540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE540);
  }

  return result;
}

unint64_t sub_24AE4C520()
{
  result = qword_27EFBE548;
  if (!qword_27EFBE548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE548);
  }

  return result;
}

unint64_t sub_24AE4C574()
{
  result = qword_27EFBE558;
  if (!qword_27EFBE558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE558);
  }

  return result;
}

unint64_t sub_24AE4C5C8()
{
  result = qword_27EFBE560;
  if (!qword_27EFBE560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE560);
  }

  return result;
}

unint64_t sub_24AE4C688()
{
  result = qword_27EFBE568;
  if (!qword_27EFBE568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE568);
  }

  return result;
}

unint64_t sub_24AE4C6E0()
{
  result = qword_27EFBE570;
  if (!qword_27EFBE570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE570);
  }

  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_24AE4C758(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_24AE4C7A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceVersion.Error(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DeviceVersion.Error(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_24AE4C910(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_24AE4C9A0(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24AE4CA84()
{
  result = qword_27EFBE578;
  if (!qword_27EFBE578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE578);
  }

  return result;
}

unint64_t sub_24AE4CADC()
{
  result = qword_27EFBE580;
  if (!qword_27EFBE580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE580);
  }

  return result;
}

unint64_t sub_24AE4CB34()
{
  result = qword_27EFBE588;
  if (!qword_27EFBE588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE588);
  }

  return result;
}

unint64_t sub_24AE4CB8C()
{
  result = qword_27EFBE590;
  if (!qword_27EFBE590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE590);
  }

  return result;
}

unint64_t sub_24AE4CBE4()
{
  result = qword_27EFBE598;
  if (!qword_27EFBE598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE598);
  }

  return result;
}

unint64_t sub_24AE4CC3C()
{
  result = qword_27EFBE5A0;
  if (!qword_27EFBE5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE5A0);
  }

  return result;
}

unint64_t sub_24AE4CC94()
{
  result = qword_27EFBE5A8;
  if (!qword_27EFBE5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE5A8);
  }

  return result;
}

unint64_t sub_24AE4CCEC()
{
  result = qword_27EFBE5B0;
  if (!qword_27EFBE5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE5B0);
  }

  return result;
}

unint64_t sub_24AE4CD44()
{
  result = qword_27EFBE5B8;
  if (!qword_27EFBE5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE5B8);
  }

  return result;
}

unint64_t sub_24AE4CD9C()
{
  result = qword_27EFBE5C0;
  if (!qword_27EFBE5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE5C0);
  }

  return result;
}

unint64_t sub_24AE4CDF4()
{
  result = qword_27EFBE5C8;
  if (!qword_27EFBE5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE5C8);
  }

  return result;
}

void __swiftcall SystemVersionNumber.init(string:)(FindMyDaemonSupport::SystemVersionNumber_optional *__return_ptr retstr, Swift::String string)
{
  object = string._object;
  countAndFlagsBits = string._countAndFlagsBits;
  v46 = retstr;
  v4 = sub_24AE842D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(MEMORY[0x277CCAC80]);
  v44 = countAndFlagsBits;
  v45 = object;
  v9 = sub_24AE83FA0();
  v10 = [v8 initWithString_];

  v11 = *MEMORY[0x277CC9E90];
  v12 = *(v5 + 104);
  v12(v7, v11, v4);
  v43 = sub_24AE842E0();
  v14 = v13;
  v15 = *(v5 + 8);
  v15(v7, v4);
  if ((v14 & 1) != 0 || (v16 = sub_24AE842C0(), !v17))
  {

    goto LABEL_6;
  }

  v18 = v17;
  v42 = v16;
  v12(v7, v11, v4);
  v19 = sub_24AE842E0();
  v21 = v20;
  v15(v7, v4);
  if (v21)
  {

LABEL_6:

    v22 = v46;
    *&v46->value.childType.is_nil = 0u;
    v22->value.suffix = 0u;
    *&v22->value.baseNumber = 0u;
    *&v22->value.baseLetter._object = 0u;
    v22->value.rawValue = 0u;
    return;
  }

  if (v19 >= 1000)
  {
    v23 = v19 / 0x3E8uLL;
  }

  else
  {
    v23 = 0;
  }

  if (v19 >= 1000)
  {
    v24 = v19 % 0x3E8uLL;
  }

  else
  {
    v24 = v19;
  }

  v41 = v24;
  v60 = v19 < 1000;
  v25 = v45;

  v26 = sub_24AE842C0();
  v28 = v27;
  v29 = v44;
  sub_24AE842B0();
  v30 = sub_24AE84020();

  if (v30)
  {

    goto LABEL_6;
  }

  v48._countAndFlagsBits = v29;
  v48._object = v25;
  v31 = v42;
  v32 = v43;
  *&v49 = v43;
  *(&v49 + 1) = v42;
  *&v50 = v18;
  *(&v50 + 1) = v23;
  v33 = v60;
  LOBYTE(v51) = v60;
  *(&v51 + 1) = *v59;
  DWORD1(v51) = *&v59[3];
  v34 = v41;
  *(&v51 + 1) = v41;
  v52.value._countAndFlagsBits = v26;
  v52.value._object = v28;
  v35 = v48;
  v36 = v49;
  v37 = v52;
  v38 = v46;
  v39 = v50;
  *&v46->value.childType.is_nil = v51;
  v38->value.suffix = v37;
  *&v38->value.baseNumber = v36;
  *&v38->value.baseLetter._object = v39;
  v38->value.rawValue = v35;
  v53[0] = v29;
  v53[1] = v25;
  v53[2] = v32;
  v53[3] = v31;
  v53[4] = v18;
  v53[5] = v23;
  v54 = v33;
  *&v55[3] = *&v59[3];
  *v55 = *v59;
  v56 = v34;
  v57 = v26;
  v58 = v28;
  sub_24AE4C3C8(&v48, &v47);
  sub_24AE4C4CC(v53);
}

BOOL sub_24AE4D1C4(void *a1, void *a2)
{
  v2 = a2[2];
  v3 = a1[2];
  v4 = v2 < v3;
  if (v2 == v3)
  {
    if (a2[3] != a1[3] || a2[4] != a1[4])
    {
      v6 = a1;
      v7 = a2;
      v8 = sub_24AE84540();
      a2 = v7;
      v9 = v8;
      a1 = v6;
      if ((v9 & 1) == 0)
      {
        v16 = sub_24AE84540();
        return (v16 & 1) == 0;
      }
    }

    v10 = a2[7];
    v11 = a1[7];
    v4 = v10 < v11;
    if (v10 == v11)
    {
      if (a2[9])
      {
        v12 = a2[8];
        v13 = a2[9];
        v14 = a1[9];
        if (v14)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v12 = 0;
        v13 = 0xE000000000000000;
        v14 = a1[9];
        if (v14)
        {
LABEL_10:
          v15 = v14;
          if (v12 != a1[8])
          {
            goto LABEL_20;
          }

LABEL_18:
          if (v13 == v15)
          {
            v16 = 0;
LABEL_21:

            return (v16 & 1) == 0;
          }

LABEL_20:
          v16 = sub_24AE84540();
          goto LABEL_21;
        }
      }

      v15 = 0xE000000000000000;
      if (v12)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }

  v16 = v4;
  return (v16 & 1) == 0;
}

BOOL sub_24AE4D318(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = v2 < v3;
  if (v2 == v3)
  {
    if (a1[3] != a2[3] || a1[4] != a2[4])
    {
      v6 = a1;
      v7 = a2;
      v8 = sub_24AE84540();
      a2 = v7;
      v9 = v8;
      a1 = v6;
      if ((v9 & 1) == 0)
      {
        v17 = sub_24AE84540();
        return (v17 & 1) == 0;
      }
    }

    v10 = a1[7];
    v11 = a2[7];
    v4 = v10 < v11;
    if (v10 == v11)
    {
      v12 = a1[9];
      if (v12)
      {
        v13 = a1[8];
        v14 = v12;
        v15 = a2[9];
        if (v15)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v13 = 0;
        v14 = 0xE000000000000000;
        v15 = a2[9];
        if (v15)
        {
LABEL_10:
          v16 = v15;
          if (v13 != a2[8])
          {
            goto LABEL_20;
          }

LABEL_18:
          if (v14 == v16)
          {
            v17 = 0;
LABEL_21:

            return (v17 & 1) == 0;
          }

LABEL_20:
          v17 = sub_24AE84540();
          goto LABEL_21;
        }
      }

      v16 = 0xE000000000000000;
      if (v13)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }

  v17 = v4;
  return (v17 & 1) == 0;
}

uint64_t sub_24AE4D468(void *a1, void *a2)
{
  v2 = a2[2];
  v3 = a1[2];
  v4 = v2 < v3;
  if (v2 != v3)
  {
    goto LABEL_12;
  }

  v5 = a2[3] == a1[3] && a2[4] == a1[4];
  if (v5 || (v6 = a1, v7 = a2, v8 = sub_24AE84540(), a2 = v7, v9 = v8, a1 = v6, (v9 & 1) != 0))
  {
    v10 = a2[7];
    v11 = a1[7];
    v4 = v10 < v11;
    if (v10 == v11)
    {
      if (a2[9])
      {
        v12 = a2[8];
        v13 = a2[9];
        v14 = a1[9];
        if (v14)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v12 = 0;
        v13 = 0xE000000000000000;
        v14 = a1[9];
        if (v14)
        {
LABEL_10:
          v15 = v14;
          if (v12 != a1[8])
          {
            goto LABEL_22;
          }

LABEL_20:
          if (v13 == v15)
          {
            v16 = 0;
LABEL_23:

            return v16 & 1;
          }

LABEL_22:
          v16 = sub_24AE84540();
          goto LABEL_23;
        }
      }

      v15 = 0xE000000000000000;
      if (v12)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

LABEL_12:
    v16 = v4;
    return v16 & 1;
  }

  return sub_24AE84540();
}

uint64_t SystemVersionNumber.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

void __swiftcall SystemVersionNumber.init(rawValue:)(FindMyDaemonSupport::SystemVersionNumber_optional *__return_ptr retstr, Swift::String rawValue)
{
  SystemVersionNumber.init(string:)(&v5, rawValue);
  v3 = *&v5.value.childType.is_nil;
  *&retstr->value.baseLetter._object = *&v5.value.baseLetter._object;
  *&retstr->value.childType.is_nil = v3;
  retstr->value.suffix = v5.value.suffix;
  v4 = *&v5.value.baseNumber;
  retstr->value.rawValue = v5.value.rawValue;
  *&retstr->value.baseNumber = v4;
}

void __swiftcall SystemVersionNumber.init(stringLiteral:)(FindMyDaemonSupport::SystemVersionNumber *__return_ptr retstr, Swift::String stringLiteral)
{
  object = stringLiteral._object;
  countAndFlagsBits = stringLiteral._countAndFlagsBits;

  v5._countAndFlagsBits = countAndFlagsBits;
  v5._object = object;
  SystemVersionNumber.init(string:)(&v10, v5);
  v7 = v10;
  v6 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  if (v11)
  {

    retstr->rawValue._countAndFlagsBits = v7;
    retstr->rawValue._object = v6;
    v8 = v17;
    *&retstr->baseNumber = v16;
    *&retstr->baseLetter._object = v8;
    v9 = v19;
    *&retstr->childType.is_nil = v18;
    retstr->suffix = v9;
  }

  else
  {
    __break(1u);
  }
}

__n128 sub_24AE4D6D0@<Q0>(Swift::String *a1@<X0>, uint64_t a2@<X8>)
{
  SystemVersionNumber.init(string:)(&v5, *a1);
  v3 = *&v5.value.childType.is_nil;
  *(a2 + 32) = *&v5.value.baseLetter._object;
  *(a2 + 48) = v3;
  *(a2 + 64) = v5.value.suffix;
  result = *&v5.value.baseNumber;
  *a2 = v5.value.rawValue;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_24AE4D720@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void sub_24AE4D7DC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];

  v5._countAndFlagsBits = v4;
  v5._object = v3;
  SystemVersionNumber.init(string:)(&v10, v5);
  v7 = v10;
  v6 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  if (v11)
  {

    *a2 = v7;
    *(a2 + 8) = v6;
    v8 = v17;
    *(a2 + 16) = v16;
    *(a2 + 32) = v8;
    v9 = v19;
    *(a2 + 48) = v18;
    *(a2 + 64) = v9;
  }

  else
  {
    __break(1u);
  }
}

BOOL sub_24AE4D864(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_24AE4D1C4(v8, v9);
}

BOOL sub_24AE4D8C0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_24AE4D318(v8, v9);
}

uint64_t sub_24AE4D91C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_24AE4D468(v8, v9) & 1;
}

uint64_t sub_24AE4D978(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24AE84540();
  }
}

uint64_t SystemVersionNumber.description.getter()
{
  v1 = *(v0 + 72);
  if ((*(v0 + 48) & 1) == 0)
  {
    v2 = sub_24AE84510();
    v3 = v4;
    if (!v1)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v2 = 0;
  v3 = 0xE000000000000000;
  if (v1)
  {
LABEL_3:
    sub_24AE83F80();
    v1 = 0;
  }

LABEL_5:
  v5 = sub_24AE84510();
  MEMORY[0x24C232D80](v5);

  sub_24AE83F80();
  MEMORY[0x24C232D80](v2, v3);

  v6 = sub_24AE84510();
  MEMORY[0x24C232D80](v6);

  MEMORY[0x24C232D80](v1, 0xE000000000000000);

  return 0;
}

uint64_t _s19FindMyDaemonSupport19SystemVersionNumberV1loiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = v2 < v3;
  if (v2 != v3)
  {
    goto LABEL_23;
  }

  v6 = a1[7];
  v5 = a1[8];
  v7 = a1[9];
  v9 = a2[7];
  v8 = a2[8];
  v10 = a2[9];
  if (a1[3] == a2[3] && a1[4] == a2[4] || (sub_24AE84540() & 1) != 0)
  {
    v4 = v6 < v9;
    if (v6 == v9)
    {
      if (v7)
      {
        v11 = v5;
      }

      else
      {
        v11 = 0;
      }

      if (v7)
      {
        v12 = v7;
      }

      else
      {
        v12 = 0xE000000000000000;
      }

      if (v10)
      {
        v13 = v8;
      }

      else
      {
        v13 = 0;
      }

      if (v10)
      {
        v14 = v10;
      }

      else
      {
        v14 = 0xE000000000000000;
      }

      if (v11 == v13 && v12 == v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = sub_24AE84540();
      }

      return v16 & 1;
    }

LABEL_23:
    v16 = v4;
    return v16 & 1;
  }

  return sub_24AE84540();
}

unint64_t sub_24AE4DC84()
{
  result = qword_27EFBE5D0;
  if (!qword_27EFBE5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE5D0);
  }

  return result;
}

unint64_t sub_24AE4DCE8()
{
  result = qword_27EFBE5D8;
  if (!qword_27EFBE5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE5D8);
  }

  return result;
}

unint64_t sub_24AE4DD58()
{
  result = qword_280D79B28[0];
  if (!qword_280D79B28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D79B28);
  }

  return result;
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

uint64_t sub_24AE4DDC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_24AE4DE10(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_24AE4DE74()
{
  result = qword_280D79B20;
  if (!qword_280D79B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D79B20);
  }

  return result;
}

uint64_t dispatch thunk of APNSConnector.set(enabledTopics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AE4A7E0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of APNSConnector.set(opportunisticTopics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AE4A7E0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of APNSConnector.setDidReceive(block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24AE4A7E0;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of APNSConnector.setDidReceivePublicToken(block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24AE4A7E0;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of APNSConnector.setDidReceiveTokenForTopic(block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 40) + **(a4 + 40));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24AE4A7E0;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of APNSConnector.setDidReceiveTokenForInfo(block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24AE4A7E0;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of APNSConnector.requestToken(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AE4A7E0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of APNSConnector.requestToken(for:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 64) + **(a6 + 64));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_24AE4A504;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_24AE4E888()
{
  v0 = sub_24AE83ED0();
  __swift_allocate_value_buffer(v0, qword_280D79CB0);
  v1 = __swift_project_value_buffer(v0, qword_280D79CB0);
  if (qword_280D79C28 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D79C38);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *DarwinNotificationHandler.__allocating_init(eventStreamHandler:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  v3 = MEMORY[0x277D84F90];
  v2[15] = sub_24AE54E80(MEMORY[0x277D84F90]);
  v2[16] = sub_24AE55078(v3);
  v2[17] = sub_24AE54E80(v3);
  v2[18] = sub_24AE55078(v3);
  v2[19] = sub_24AE563F4(v3, &qword_27EFBE720, &qword_24AE85F30);
  v2[14] = a1;
  return v2;
}

void *DarwinNotificationHandler.init(eventStreamHandler:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  v3 = MEMORY[0x277D84F90];
  v1[15] = sub_24AE54E80(MEMORY[0x277D84F90]);
  v1[16] = sub_24AE55078(v3);
  v1[17] = sub_24AE54E80(v3);
  v1[18] = sub_24AE55078(v3);
  v1[19] = sub_24AE563F4(v3, &qword_27EFBE720, &qword_24AE85F30);
  v1[14] = a1;
  return v1;
}

void sub_24AE4EACC(uint64_t x8_0@<X8>)
{
  v4 = sub_24AE83FA0();
  sub_24AE4EB18(v4, x8_0);
}

uint64_t sub_24AE4EB18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE5E0, &qword_24AE85CF0);
  MEMORY[0x28223BE20](v6 - 8);
  v63 = v62 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE5E8, qword_24AE85CF8);
  v68 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v67 = v62 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE400, &qword_24AE85220);
  v10 = *(v71 - 8);
  v11 = MEMORY[0x28223BE20](v71);
  v65 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v70 = v62 - v13;
  v14 = sub_24AE83FB0();
  v16 = v15;
  swift_beginAccess();
  v17 = v3[15];
  v18 = *(v17 + 16);
  v66 = a1;
  v69 = v10;
  if (v18)
  {

    v19 = sub_24AE475AC(v14, v16);
    if (v20)
    {
      v21 = v19;

      (*(v10 + 16))(v70, *(v17 + 56) + *(v10 + 72) * v21, v71);
LABEL_8:

      v26 = v67;
      v27 = v68;
      goto LABEL_15;
    }
  }

  swift_beginAccess();
  v22 = v3[17];
  if (*(v22 + 16))
  {

    v23 = sub_24AE475AC(v14, v16);
    if (v24)
    {
      v25 = v23;

      (*(v10 + 16))(v70, *(v22 + 56) + *(v10 + 72) * v25, v71);
      goto LABEL_8;
    }
  }

  if (qword_280D79CA0 != -1)
  {
    swift_once();
  }

  v28 = sub_24AE83ED0();
  __swift_project_value_buffer(v28, qword_280D79CB0);

  v29 = sub_24AE83EB0();
  v30 = sub_24AE84250();

  v31 = os_log_type_enabled(v29, v30);
  v32 = MEMORY[0x277D85778];
  v62[1] = a2;
  if (v31)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v73[0] = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_24AE53C28(v14, v16, v73);
    _os_log_impl(&dword_24AE43000, v29, v30, "Creating base AsyncStream for DarwinNotification name: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x24C233A80](v34, -1, -1);
    MEMORY[0x24C233A80](v33, -1, -1);
  }

  v35 = sub_24AE83D90();
  MEMORY[0x28223BE20](v35);
  v62[-4] = v3;
  v62[-3] = v14;
  v62[-2] = v16;
  v36 = *v32;
  v26 = v67;
  v27 = v68;
  v37 = *(v68 + 104);
  v62[0] = v8;
  v37(v67, v36, v8);
  v38 = v65;
  sub_24AE84170();
  v39 = v69;
  v40 = v70;
  v41 = *(v69 + 16);
  v64 = v16;
  v42 = v71;
  v41(v70, v38, v71);
  v43 = v63;
  v41(v63, v40, v42);
  (*(v39 + 56))(v43, 0, 1, v42);
  swift_beginAccess();

  v44 = v43;
  v8 = v62[0];
  sub_24AE4F458(v44, v14, v64);
  swift_endAccess();

  v45 = CFNotificationCenterGetDarwinNotifyCenter();
  v46 = v66;
  CFNotificationCenterAddObserver(v45, v3, sub_24AE528B4, v66, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v47 = v42;
  v16 = v64;
  (*(v39 + 8))(v65, v47);
LABEL_15:
  v48 = sub_24AE83D90();
  MEMORY[0x28223BE20](v48);
  v62[-4] = v3;
  v62[-3] = v14;
  v62[-2] = v16;
  (*(v27 + 104))(v26, *MEMORY[0x277D85778], v8);
  sub_24AE84170();
  swift_beginAccess();
  v49 = v3[19];
  if (*(v49 + 16))
  {

    v50 = sub_24AE475AC(v14, v16);
    v51 = 0x280D79000uLL;
    if (v52)
    {
      v53 = *(*(v49 + 56) + 8 * v50);

      v54 = *(v53 + 16);
    }

    else
    {

      v54 = 0;
    }
  }

  else
  {
    v54 = 0;
    v51 = 0x280D79000;
  }

  if (*(v51 + 3232) != -1)
  {
    swift_once();
  }

  v55 = sub_24AE83ED0();
  __swift_project_value_buffer(v55, qword_280D79CB0);

  v56 = sub_24AE83EB0();
  v57 = sub_24AE84250();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v72 = v59;
    *v58 = 136315394;
    v60 = sub_24AE53C28(v14, v16, &v72);

    *(v58 + 4) = v60;
    *(v58 + 12) = 2048;
    *(v58 + 14) = v54;
    _os_log_impl(&dword_24AE43000, v56, v57, "Creating sub AsyncStream for DarwinNotification name: [%s], count: %ld", v58, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x24C233A80](v59, -1, -1);
    MEMORY[0x24C233A80](v58, -1, -1);
  }

  else
  {
  }

  return (*(v69 + 8))(v70, v71);
}

uint64_t sub_24AE4F308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE648, &unk_24AE85E30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE630, &unk_24AE87250);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  swift_beginAccess();

  sub_24AE4F65C(v9, a3, a4);
  return swift_endAccess();
}

uint64_t sub_24AE4F458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE5E0, &qword_24AE85CF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE400, &qword_24AE85220);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_24AE567BC(a1, &qword_27EFBE5E0, &qword_24AE85CF0);
    sub_24AE54430(a2, a3, &qword_27EFBE400, &qword_24AE85220, sub_24AE807A0, v9);

    return sub_24AE567BC(v9, &qword_27EFBE5E0, &qword_24AE85CF0);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_24AE7FD58(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_24AE4F65C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE648, &unk_24AE85E30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE630, &unk_24AE87250);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_24AE567BC(a1, &qword_27EFBE648, &unk_24AE85E30);
    sub_24AE54430(a2, a3, &qword_27EFBE630, &unk_24AE87250, sub_24AE807C4, v9);

    return sub_24AE567BC(v9, &qword_27EFBE648, &unk_24AE85E30);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_24AE7FD7C(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_24AE4F860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE750, &qword_24AE85F60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE6E0, &unk_24AE85ED0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_24AE567BC(a1, &qword_27EFBE750, &qword_24AE85F60);
    sub_24AE54430(a2, a3, &qword_27EFBE6E0, &unk_24AE85ED0, sub_24AE80820, v9);

    return sub_24AE567BC(v9, &qword_27EFBE750, &qword_24AE85F60);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_24AE7FF7C(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_24AE4FA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE638, &qword_24AE85E18);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE640, &qword_24AE85E20);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_24AE567BC(a1, &qword_27EFBE638, &qword_24AE85E18);
    sub_24AE54430(a2, a3, &qword_27EFBE640, &qword_24AE85E20, sub_24AE80844, v9);

    return sub_24AE567BC(v9, &qword_27EFBE638, &qword_24AE85E18);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_24AE7FFA0(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_24AE4FC68(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE6C8, &qword_24AE85EB8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE6D0, &unk_24AE85EC0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_24AE567BC(a1, &qword_27EFBE6C8, &qword_24AE85EB8);
    sub_24AE545C8(a2, v7);
    v12 = sub_24AE83EA0();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_24AE567BC(v7, &qword_27EFBE6C8, &qword_24AE85EB8);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_24AE80178(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_24AE83EA0();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_24AE4FE9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE680, &unk_24AE85E70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE688, &unk_24AE87270);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_24AE567BC(a1, &qword_27EFBE680, &unk_24AE85E70);
    sub_24AE54430(a2, a3, &qword_27EFBE688, &unk_24AE87270, sub_24AE80BD8, v9);

    return sub_24AE567BC(v9, &qword_27EFBE680, &unk_24AE85E70);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_24AE80388(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_24AE500A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE690, &unk_24AE85E80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE698, &qword_24AE87280);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_24AE567BC(a1, &qword_27EFBE690, &unk_24AE85E80);
    sub_24AE54430(a2, a3, &qword_27EFBE698, &qword_24AE87280, sub_24AE80BFC, v9);

    return sub_24AE567BC(v9, &qword_27EFBE690, &unk_24AE85E80);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_24AE803AC(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_24AE502A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_24AE803E4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_24AE475AC(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_24AE80C34();
        v14 = v16;
      }

      result = sub_24AE54AD4(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_24AE5039C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE650, &unk_24AE85E40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE658, &qword_24AE86D90);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_24AE567BC(a1, &qword_27EFBE650, &unk_24AE85E40);
    sub_24AE54430(a2, a3, &qword_27EFBE658, &qword_24AE86D90, sub_24AE8140C, v9);

    return sub_24AE567BC(v9, &qword_27EFBE650, &unk_24AE85E40);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_24AE803F8(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_24AE505A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE630, &unk_24AE87250);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27[-1] - v10;
  swift_beginAccess();
  if (*(*(a2 + 152) + 16) && (, sub_24AE475AC(a3, a4), v13 = v12, , (v13 & 1) != 0))
  {
    v14 = sub_24AE4E950(v28);
    v16 = sub_24AE62C2C(v27, a3, a4);
    if (*v15)
    {
      v17 = v15;
      (*(v9 + 16))(v11, a1, v8);
      v18 = *v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v17 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_24AE61560(0, v18[2] + 1, 1, v18);
        *v17 = v18;
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = sub_24AE61560((v20 > 1), v21 + 1, 1, v18);
        *v17 = v18;
      }

      v18[2] = v21 + 1;
      (*(v9 + 32))(v18 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, v11, v8);
      (v16)(v27, 0);
      return (v14)(v28, 0);
    }

    else
    {
      (v16)(v27, 0);
      return (v14)(v28, 0);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE718, &qword_24AE85F08);
    v23 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_24AE85CE0;
    (*(v9 + 16))(v24 + v23, a1, v8);
    swift_beginAccess();

    v25 = swift_isUniquelyReferenced_nonNull_native();
    v27[0] = *(a2 + 152);
    *(a2 + 152) = 0x8000000000000000;
    sub_24AE7FF68(v24, a3, a4, v25);

    *(a2 + 152) = v27[0];
    return swift_endAccess();
  }
}

uint64_t sub_24AE508D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE400, &qword_24AE85220);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE50978, v4, 0);
}

uint64_t sub_24AE50978()
{
  v1 = *(v0 + 56);
  v2 = sub_24AE83FA0();
  sub_24AE4EB18(v2, v1);

  sub_24AE83D80();
  swift_allocObject();

  v3 = sub_24AE83D70();

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_24AE50A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE400, &qword_24AE85220);
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE50AE0, v3, 0);
}

uint64_t sub_24AE50AE0()
{
  sub_24AE4EB18(*(v0 + 16), *(v0 + 48));
  sub_24AE83D80();
  swift_allocObject();

  v1 = sub_24AE83D70();

  v2 = *(v0 + 8);

  return v2(v1);
}

void *DarwinNotificationHandler.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t DarwinNotificationHandler.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AE50C50(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE5E8, qword_24AE85CF8);
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE400, &qword_24AE85220);
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE50D90, v1, 0);
}

uint64_t sub_24AE50D90()
{
  v53 = v0;
  v1 = v0[11];
  v43 = *(v1 + 16);
  if (!v43)
  {
LABEL_18:
    v40 = v0[12];
    result = swift_beginAccess();
    if (*(*(v40 + 120) + 16) == v43)
    {
      v41 = v0[12];
      result = swift_beginAccess();
      if (*(*(v41 + 128) + 16) == v43)
      {

        v42 = v0[1];

        return v42();
      }
    }

    else
    {
LABEL_28:
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v2 = v0[17];
  v3 = v0[14];
  v49 = v0[12];
  sub_24AE83D90();
  v48 = *MEMORY[0x277D85778];
  v46 = (v2 + 16);
  v47 = (v3 + 104);
  v44 = (v2 + 8);
  v45 = v2;
  v4 = (v1 + 40);
  v5 = v43;
  while (1)
  {
    v50 = v4;
    v51 = v5;
    v9 = *(v4 - 1);
    v10 = *v4;
    v11 = qword_280D79CA0;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = sub_24AE83ED0();
    __swift_project_value_buffer(v12, qword_280D79CB0);

    v13 = sub_24AE83EB0();
    v14 = sub_24AE84250();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v52 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_24AE53C28(v9, v10, &v52);
      _os_log_impl(&dword_24AE43000, v13, v14, "Creating base AsyncStream for registered Darwin notification name: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x24C233A80](v16, -1, -1);
      MEMORY[0x24C233A80](v15, -1, -1);
    }

    v18 = v0[18];
    v17 = v0[19];
    v20 = v0[15];
    v19 = v0[16];
    v22 = v0[12];
    v21 = v0[13];
    v23 = swift_task_alloc();
    v23[2] = v22;
    v23[3] = v9;
    v23[4] = v10;
    (*v47)(v20, v48, v21);
    sub_24AE84170();

    swift_beginAccess();
    (*v46)(v18, v17, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = *(v49 + 120);
    v25 = v52;
    *(v49 + 120) = 0x8000000000000000;
    v27 = sub_24AE475AC(v9, v10);
    v28 = *(v25 + 16);
    v29 = (v26 & 1) == 0;
    result = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v31 = v26;
    if (*(v25 + 24) < result)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24AE807A0();
    }

LABEL_15:
    v34 = v0[18];
    v35 = v0[16];
    if (v31)
    {

      v6 = v52;
      (*(v45 + 40))(v52[7] + *(v45 + 72) * v27, v34, v35);
    }

    else
    {
      v6 = v52;
      v52[(v27 >> 6) + 8] |= 1 << v27;
      v36 = (v6[6] + 16 * v27);
      *v36 = v9;
      v36[1] = v10;
      result = (*(v45 + 32))(v6[7] + *(v45 + 72) * v27, v34, v35);
      v37 = v6[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_27;
      }

      v6[2] = v39;
    }

    v7 = v0[19];
    v8 = v0[16];
    *(v49 + 120) = v6;

    swift_endAccess();
    (*v44)(v7, v8);
    v4 = v50 + 2;
    v5 = v51 - 1;
    if (v51 == 1)
    {
      goto LABEL_18;
    }
  }

  sub_24AE7EF04(result, isUniquelyReferenced_nonNull_native);
  v32 = sub_24AE475AC(v9, v10);
  if ((v31 & 1) == (v33 & 1))
  {
    v27 = v32;
    goto LABEL_15;
  }

  return sub_24AE84570();
}

uint64_t sub_24AE51288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE648, &unk_24AE85E30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE630, &unk_24AE87250);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  swift_beginAccess();

  sub_24AE4F65C(v9, a3, a4);
  return swift_endAccess();
}

uint64_t sub_24AE513D8()
{
  v1[13] = v0;
  v2 = sub_24AE83D90();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE5F0, &unk_24AE86090);
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE760, &unk_24AE85DD0);
  v1[21] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE600, &unk_24AE860A0);
  v1[22] = v4;
  v1[23] = *(v4 - 8);
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE515AC, v0, 0);
}

uint64_t sub_24AE515AC()
{
  if (MEMORY[0x24C2329E0]())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = *(v0[13] + 112);
    v0[25] = v3;

    return MEMORY[0x2822009F8](sub_24AE51688, v3, 0);
  }
}

uint64_t sub_24AE51688()
{
  v1 = v0[25];
  swift_beginAccess();
  v2 = *(v1 + 120);
  if (*(v2 + 16))
  {

    v3 = sub_24AE475AC(0xD00000000000001ALL, 0x800000024AE880C0);
    if (v4)
    {
      (*(v0[23] + 16))(v0[21], *(v2 + 56) + *(v0[23] + 72) * v3, v0[22]);
      v5 = 0;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  v6 = v0[13];
  (*(v0[23] + 56))(v0[21], v5, 1, v0[22]);

  return MEMORY[0x2822009F8](sub_24AE5179C, v6, 0);
}

uint64_t sub_24AE5179C()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24AE567BC(v3, &qword_27EFBE760, &unk_24AE85DD0);
    return sub_24AE84440();
  }

  else
  {
    (*(v2 + 32))(v0[24], v3, v1);
    sub_24AE84150();
    v6 = sub_24AE564F0(qword_280D7A398, v5, type metadata accessor for DarwinNotificationHandler, &protocol conformance descriptor for DarwinNotificationHandler);
    v0[26] = v6;
    v7 = v0[13];
    v8 = swift_task_alloc();
    v0[27] = v8;
    *v8 = v0;
    v8[1] = sub_24AE51970;
    v9 = v0[18];

    return MEMORY[0x2822003E8](v0 + 9, v7, v6, v9);
  }
}

uint64_t sub_24AE51970()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](sub_24AE46FC8, v1, 0);
}

uint64_t sub_24AE51A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = sub_24AE83D90();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE628, &unk_24AE85E00);
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE630, &unk_24AE87250);
  v6[18] = v9;
  v6[19] = *(v9 - 8);
  v6[20] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[21] = v10;
  *v10 = v6;
  v10[1] = sub_24AE51C44;

  return daemon.getter();
}

uint64_t sub_24AE51C44(uint64_t a1)
{
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_24AE51D48, a1, 0);
}

uint64_t sub_24AE51D48()
{
  v1 = *(*(v0 + 176) + 128);
  *(v0 + 184) = v1;
  return MEMORY[0x2822009F8](sub_24AE51D6C, v1, 0);
}

uint64_t sub_24AE51D6C()
{
  v1 = v0[23];
  swift_beginAccess();
  v2 = *(v1 + 112);
  v0[24] = v2;
  v3 = *(v2 + 16);
  v0[25] = v3;
  if (!v3)
  {
LABEL_11:

    return MEMORY[0x2822009F8](sub_24AE52028, 0, 0);
  }

  swift_beginAccess();
  v0[26] = 0;
  v4 = v0[24];
  if (!*(v4 + 16))
  {
LABEL_9:
    __break(1u);
LABEL_10:

    goto LABEL_11;
  }

  v5 = 0;
  while (1)
  {
    v6 = v0[23];
    v7 = v4 + 16 * v5;
    v0[27] = *(v7 + 32);
    v8 = *(v7 + 40);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 24);
    swift_unknownObjectRetain();
    v11 = v10(ObjectType, v8);
    v13 = v12;
    v0[28] = v12;
    if (*(*(v6 + 128) + 16))
    {
      break;
    }

LABEL_7:

    v16 = v0[26];
    v17 = v0[25];
    swift_unknownObjectRelease();
    if (v16 + 1 == v17)
    {
      goto LABEL_10;
    }

    v5 = v0[26] + 1;
    v0[26] = v5;
    v4 = v0[24];
    if (v5 >= *(v4 + 16))
    {
      goto LABEL_9;
    }
  }

  v14 = v11;

  sub_24AE475AC(v14, v13);
  if ((v15 & 1) == 0)
  {

    goto LABEL_7;
  }

  v18 = v0[23];

  sub_24AE564F0(&qword_280D7A510, 255, type metadata accessor for ActorServiceCollection, &protocol conformance descriptor for ActorServiceCollection);
  v19 = swift_task_alloc();
  v0[29] = v19;
  v19[2] = v18;
  v19[3] = v14;
  v19[4] = v13;
  v20 = swift_task_alloc();
  v0[30] = v20;
  *v20 = v0;
  v20[1] = sub_24AE52210;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_24AE52028()
{
  v2 = v0[9];
  v1 = v0[10];
  sub_24AE83CB0();
  sub_24AE83C90();
  v0[8] = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE9B0, &qword_24AE85E10);
  swift_task_localValuePush();
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v0[19];
    v19 = *(v4 + 16);
    v5 = v0[10] + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v17 = (v0[13] + 16);
    v18 = *(v4 + 72);
    v15 = (v4 + 8);
    v16 = (v0[16] + 8);
    do
    {
      v6 = v0[20];
      v8 = v0[17];
      v7 = v0[18];
      v10 = v0[14];
      v9 = v0[15];
      v12 = v0[11];
      v11 = v0[12];
      v19(v6, v5, v7);
      (*v17)(v10, v12, v11);
      sub_24AE84140();
      (*v16)(v8, v9);
      (*v15)(v6, v7);
      v5 += v18;
      --v3;
    }

    while (v3);
  }

  swift_task_localValuePop();

  v13 = v0[1];

  return v13();
}

uint64_t sub_24AE52210()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = *(v2 + 184);

    v4 = sub_24AE525EC;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 184);

    v4 = sub_24AE52390;
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_24AE52390()
{
  while (1)
  {
    v1 = v0[26];
    v2 = v0[25];
    swift_unknownObjectRelease();
    if (v1 + 1 == v2)
    {
      break;
    }

    v3 = v0[26] + 1;
    v0[26] = v3;
    v4 = v0[24];
    if (v3 >= *(v4 + 16))
    {
      __break(1u);
      return MEMORY[0x2822008A0]();
    }

    v5 = v0[23];
    v6 = v4 + 16 * v3;
    v0[27] = *(v6 + 32);
    v7 = *(v6 + 40);
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 24);
    swift_unknownObjectRetain();
    v10 = v9(ObjectType, v7);
    v12 = v11;
    v0[28] = v11;
    if (*(*(v5 + 128) + 16))
    {
      v13 = v10;

      sub_24AE475AC(v13, v12);
      if (v14)
      {
        v15 = v0[23];

        sub_24AE564F0(&qword_280D7A510, 255, type metadata accessor for ActorServiceCollection, &protocol conformance descriptor for ActorServiceCollection);
        v16 = swift_task_alloc();
        v0[29] = v16;
        v16[2] = v15;
        v16[3] = v13;
        v16[4] = v12;
        v17 = swift_task_alloc();
        v0[30] = v17;
        *v17 = v0;
        v17[1] = sub_24AE52210;

        return MEMORY[0x2822008A0]();
      }
    }
  }

  return MEMORY[0x2822009F8](sub_24AE52028, 0, 0);
}

uint64_t sub_24AE525EC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_24AE52654, 0, 0);
}

uint64_t sub_24AE52654()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AE526E4()
{
  v0 = MEMORY[0x277D84F90];
  v8 = MEMORY[0x277D84F90];
  sub_24AE83FD0();
  v1 = xpc_copy_event();

  if (!v1)
  {
    v2 = 0;
    goto LABEL_5;
  }

  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_24AE557E4;
  *(v3 + 24) = v2;
  aBlock[4] = sub_24AE557EC;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AE6DFA8;
  aBlock[3] = &block_descriptor;
  v4 = _Block_copy(aBlock);

  xpc_dictionary_apply(v1, v4);
  swift_unknownObjectRelease();
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v0 = v8;

    v1 = sub_24AE557E4;
LABEL_5:

    sub_24AE44D88(v1, v2);
    return v0;
  }

  __break(1u);
  return result;
}

void *sub_24AE528B4(void *result, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v8 = result;

    if (a3)
    {
      v9 = sub_24AE83FB0();
      v11 = v10;
      sub_24AE83CB0();
      v12 = swift_allocObject();
      v12[2] = v9;
      v12[3] = v11;
      v12[4] = a2;
      v13 = a3;
      v14 = v8;
      v15 = a5;

      MEMORY[0x24C232A30]("UnregisteredDarwinNotification", 30, 2, &unk_24AE85F18, v12);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24AE529C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_24AE83D90();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE52A8C, 0, 0);
}

uint64_t sub_24AE52A8C()
{
  sub_24AE83CB0();
  v1 = sub_24AE83C80();
  v0[8] = v1;
  if (v1)
  {
    v2 = v0[4];

    sub_24AE83D40();

    sub_24AE83D50();

    return MEMORY[0x2822009F8](sub_24AE52B9C, v2, 0);
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_24AE52B9C()
{
  sub_24AE52CC0(*(v0 + 56), *(v0 + 64), &unk_285E372A8, &unk_24AE85F28, "Received unexpected unregistered notification: [%s]", 0x8002000010002);

  return MEMORY[0x2822009F8](sub_24AE52C34, 0, 0);
}

uint64_t sub_24AE52C34()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

void sub_24AE52CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, int8x8_t a6, ...)
{
  v43 = a4;
  v44 = a5;
  v41[1] = a3;
  v42 = a2;
  v45 = sub_24AE83D90();
  v9 = *(v45 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v45);
  v12 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE620, &qword_24AE860B0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v41 - v16;
  v18 = sub_24AE83D60();
  v20 = v19;
  swift_beginAccess();
  v21 = *(v6 + 152);
  if (*(v21 + 16) && (, v22 = sub_24AE475AC(v18, v20), v24 = v23, , (v24 & 1) != 0))
  {
    v25 = *(*(v21 + 56) + 8 * v22);

    v26 = sub_24AE84120();
    (*(*(v26 - 8) + 56))(v17, 1, 1, v26);
    v27 = v45;
    (*(v9 + 16))(v14, a1, v45);
    v28 = (*(v9 + 80) + 48) & ~*(v9 + 80);
    v29 = swift_allocObject();
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    *(v29 + 4) = v42;
    *(v29 + 5) = v25;
    (*(v9 + 32))(&v29[v28], v14, v27);

    sub_24AE56898(0, 0, v17, v43, v29);
  }

  else
  {

    v30 = v45;
    if (qword_280D79CA0 != -1)
    {
      swift_once();
    }

    v31 = sub_24AE83ED0();
    __swift_project_value_buffer(v31, qword_280D79CB0);
    (*(v9 + 16))(v12, a1, v30);
    v32 = sub_24AE83EB0();
    v33 = sub_24AE84240();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v46 = v35;
      *v34 = vuzp1_s8(a6, v36).u32[0];
      sub_24AE564F0(&qword_280D7A040, 255, MEMORY[0x277D089A0], MEMORY[0x277D089A8]);
      v37 = sub_24AE84510();
      v39 = v38;
      (*(v9 + 8))(v12, v30);
      v40 = sub_24AE53C28(v37, v39, &v46);

      *(v34 + 4) = v40;
      _os_log_impl(&dword_24AE43000, v32, v33, v44, v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x24C233A80](v35, -1, -1);
      MEMORY[0x24C233A80](v34, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v12, v30);
    }
  }
}

uint64_t sub_24AE53104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = sub_24AE83D90();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE628, &unk_24AE85E00);
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE630, &unk_24AE87250);
  v6[18] = v9;
  v6[19] = *(v9 - 8);
  v6[20] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[21] = v10;
  *v10 = v6;
  v10[1] = sub_24AE532C8;

  return daemon.getter();
}

uint64_t sub_24AE532C8(uint64_t a1)
{
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_24AE533CC, a1, 0);
}

uint64_t sub_24AE533CC()
{
  v1 = *(*(v0 + 176) + 128);
  *(v0 + 184) = v1;
  return MEMORY[0x2822009F8](sub_24AE533F0, v1, 0);
}

uint64_t sub_24AE533F0()
{
  v1 = v0[23];
  swift_beginAccess();
  v2 = *(v1 + 112);
  v0[24] = v2;
  v3 = *(v2 + 16);
  v0[25] = v3;
  if (!v3)
  {
LABEL_11:

    return MEMORY[0x2822009F8](sub_24AE56884, 0, 0);
  }

  swift_beginAccess();
  v0[26] = 0;
  v4 = v0[24];
  if (!*(v4 + 16))
  {
LABEL_9:
    __break(1u);
LABEL_10:

    goto LABEL_11;
  }

  v5 = 0;
  while (1)
  {
    v6 = v0[23];
    v7 = v4 + 16 * v5;
    v0[27] = *(v7 + 32);
    v8 = *(v7 + 40);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 24);
    swift_unknownObjectRetain();
    v11 = v10(ObjectType, v8);
    v13 = v12;
    v0[28] = v12;
    if (*(*(v6 + 128) + 16))
    {
      break;
    }

LABEL_7:

    v16 = v0[26];
    v17 = v0[25];
    swift_unknownObjectRelease();
    if (v16 + 1 == v17)
    {
      goto LABEL_10;
    }

    v5 = v0[26] + 1;
    v0[26] = v5;
    v4 = v0[24];
    if (v5 >= *(v4 + 16))
    {
      goto LABEL_9;
    }
  }

  v14 = v11;

  sub_24AE475AC(v14, v13);
  if ((v15 & 1) == 0)
  {

    goto LABEL_7;
  }

  v18 = v0[23];

  sub_24AE564F0(&qword_280D7A510, 255, type metadata accessor for ActorServiceCollection, &protocol conformance descriptor for ActorServiceCollection);
  v19 = swift_task_alloc();
  v0[29] = v19;
  v19[2] = v18;
  v19[3] = v14;
  v19[4] = v13;
  v20 = swift_task_alloc();
  v0[30] = v20;
  *v20 = v0;
  v20[1] = sub_24AE536AC;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_24AE536AC()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = *(v2 + 184);

    v4 = sub_24AE53A88;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 184);

    v4 = sub_24AE5382C;
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_24AE5382C()
{
  while (1)
  {
    v1 = v0[26];
    v2 = v0[25];
    swift_unknownObjectRelease();
    if (v1 + 1 == v2)
    {
      break;
    }

    v3 = v0[26] + 1;
    v0[26] = v3;
    v4 = v0[24];
    if (v3 >= *(v4 + 16))
    {
      __break(1u);
      return MEMORY[0x2822008A0]();
    }

    v5 = v0[23];
    v6 = v4 + 16 * v3;
    v0[27] = *(v6 + 32);
    v7 = *(v6 + 40);
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 24);
    swift_unknownObjectRetain();
    v10 = v9(ObjectType, v7);
    v12 = v11;
    v0[28] = v11;
    if (*(*(v5 + 128) + 16))
    {
      v13 = v10;

      sub_24AE475AC(v13, v12);
      if (v14)
      {
        v15 = v0[23];

        sub_24AE564F0(&qword_280D7A510, 255, type metadata accessor for ActorServiceCollection, &protocol conformance descriptor for ActorServiceCollection);
        v16 = swift_task_alloc();
        v0[29] = v16;
        v16[2] = v15;
        v16[3] = v13;
        v16[4] = v12;
        v17 = swift_task_alloc();
        v0[30] = v17;
        *v17 = v0;
        v17[1] = sub_24AE536AC;

        return MEMORY[0x2822008A0]();
      }
    }
  }

  return MEMORY[0x2822009F8](sub_24AE56884, 0, 0);
}

uint64_t sub_24AE53A88()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_24AE56888, 0, 0);
}

uint64_t sub_24AE53AF0()
{
  v0 = sub_24AE83ED0();
  __swift_allocate_value_buffer(v0, qword_280D79C38);
  __swift_project_value_buffer(v0, qword_280D79C38);
  return sub_24AE83EC0();
}

uint64_t sub_24AE53B70(uint64_t a1, uint64_t a2, char **a3)
{
  v4 = sub_24AE84000();
  v6 = v5;
  v7 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_24AE61584(0, *(v7 + 2) + 1, 1, v7);
    *a3 = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = sub_24AE61584((v9 > 1), v10 + 1, 1, v7);
    *a3 = v7;
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[16 * v10];
  *(v11 + 4) = v4;
  *(v11 + 5) = v6;
  return 1;
}

unint64_t sub_24AE53C28(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24AE53CF4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_24AE476DC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24AE53CF4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_24AE53E00(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_24AE843C0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_24AE53E00(uint64_t a1, unint64_t a2)
{
  v3 = sub_24AE53E4C(a1, a2);
  sub_24AE53F7C(&unk_285E36CC0);
  return v3;
}

void *sub_24AE53E4C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24AE54068(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_24AE843C0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_24AE84010();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24AE54068(v10, 0);
        result = sub_24AE84380();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24AE53F7C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24AE540DC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24AE54068(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE710, &qword_24AE85F00);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24AE540DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE710, &qword_24AE85F00);
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

unint64_t sub_24AE541D0(uint64_t a1)
{
  sub_24AE83EA0();
  sub_24AE564F0(&qword_280D7A038, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_24AE83F70();

  return sub_24AE5426C(a1, v2);
}

unint64_t sub_24AE5426C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_24AE83EA0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_24AE564F0(&qword_280D7A940, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_24AE83F90();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_24AE54430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = sub_24AE475AC(a1, a2);
  if (v13)
  {
    v14 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v6;
    v26 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v16 = v26;
    }

    v17 = *(v16 + 56);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v25 = *(v18 - 8);
    (*(v25 + 32))(a6, v17 + *(v25 + 72) * v14, v18);
    sub_24AE54C84(v14, v16, a3, a4);
    *v10 = v16;
    v19 = *(v25 + 56);
    v20 = a6;
    v21 = 0;
    v22 = v18;
  }

  else
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v19 = *(*(v23 - 8) + 56);
    v22 = v23;
    v20 = a6;
    v21 = 1;
  }

  return v19(v20, v21, 1, v22);
}

uint64_t sub_24AE545C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_24AE541D0(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24AE8087C();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_24AE83EA0();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE6D0, &unk_24AE85EC0);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_24AE54780(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE6D0, &unk_24AE85EC0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

unint64_t sub_24AE54780(int64_t a1, uint64_t a2)
{
  v4 = sub_24AE83EA0();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_24AE84310();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_24AE564F0(&qword_280D7A038, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v22 = sub_24AE83F70();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE6D0, &unk_24AE85EC0) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24AE54AD4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24AE84310() + 1) & ~v5;
    do
    {
      sub_24AE845F0();

      sub_24AE83FE0();
      v9 = sub_24AE84610();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_24AE54C84(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = result;
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (result + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v11 = ~v7;
    v12 = (sub_24AE84310() + 1) & ~v7;
    while (1)
    {
      sub_24AE845F0();

      sub_24AE83FE0();
      v13 = sub_24AE84610();

      v14 = v13 & v11;
      if (v5 >= v12)
      {
        break;
      }

      if (v14 < v12)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v5);
      v17 = (v15 + 16 * v8);
      if (v5 != v8 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 72);
      v20 = v19 * v5;
      result = v18 + v19 * v5;
      v21 = v19 * v8;
      v22 = v18 + v19 * v8 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v5 = v8;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v5 = v8;
LABEL_5:
      v8 = (v8 + 1) & v11;
      if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v12)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v5 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v6 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_24AE54E80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE738, &qword_24AE85F48);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE740, &unk_24AE85F50);
    v7 = sub_24AE84470();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24AE5681C(v9, v5, &qword_27EFBE738, &qword_24AE85F48);
      v12 = *v5;
      v11 = v5[1];
      result = sub_24AE475AC(*v5, v11);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v12;
      v16[1] = v11;
      v17 = v7[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE400, &qword_24AE85220);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24AE55078(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE728, &qword_24AE85F38);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE730, &qword_24AE85F40);
    v7 = sub_24AE84470();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24AE5681C(v9, v5, &qword_27EFBE728, &qword_24AE85F38);
      v12 = *v5;
      v11 = v5[1];
      result = sub_24AE475AC(*v5, v11);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v12;
      v16[1] = v11;
      v17 = v7[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE630, &unk_24AE87250);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t dispatch thunk of DarwinNotificationHandler.asyncStream(name:)()
{
  return (*(*v0 + 264))();
}

{
  return (*(*v0 + 272))();
}

uint64_t dispatch thunk of DarwinNotificationHandler.listen(name:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 280) + **(*v4 + 280));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_24AE5548C;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_24AE5548C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of DarwinNotificationHandler.listen(name:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 288) + **(*v3 + 288));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_24AE56890;

  return v10(a1, a2, a3);
}

uint64_t sub_24AE556C8(uint64_t a1)
{
  v4 = *(sub_24AE83D90() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24AE4A504;

  return sub_24AE51A80(a1, v6, v7, v8, v9, v1 + v5);
}

unint64_t sub_24AE557FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE670, &qword_24AE85E60);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE678, &qword_24AE85E68);
    v7 = sub_24AE84470();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24AE5681C(v9, v5, &qword_27EFBE670, &qword_24AE85E60);
      v12 = *v5;
      v11 = v5[1];
      result = sub_24AE475AC(*v5, v11);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v12;
      v16[1] = v11;
      v17 = v7[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE600, &unk_24AE860A0);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24AE559F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE660, &qword_24AE85E50);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE668, &qword_24AE85E58);
    v7 = sub_24AE84470();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24AE5681C(v9, v5, &qword_27EFBE660, &qword_24AE85E50);
      v12 = *v5;
      v11 = v5[1];
      result = sub_24AE475AC(*v5, v11);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v12;
      v16[1] = v11;
      v17 = v7[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE658, &qword_24AE86D90);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24AE55BEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE700, &qword_24AE85EF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE708, &qword_24AE85EF8);
    v7 = sub_24AE84470();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24AE5681C(v9, v5, &qword_27EFBE700, &qword_24AE85EF0);
      v12 = *v5;
      v11 = v5[1];
      result = sub_24AE475AC(*v5, v11);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v12;
      v16[1] = v11;
      v17 = v7[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE6E0, &unk_24AE85ED0);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24AE55DE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE6F0, &qword_24AE85EE0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE6F8, &qword_24AE85EE8);
    v7 = sub_24AE84470();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24AE5681C(v9, v5, &qword_27EFBE6F0, &qword_24AE85EE0);
      v12 = *v5;
      v11 = v5[1];
      result = sub_24AE475AC(*v5, v11);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v12;
      v16[1] = v11;
      v17 = v7[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE640, &qword_24AE85E20);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24AE55FF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE6B8, &qword_24AE85EA8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE6C0, &qword_24AE85EB0);
    v7 = sub_24AE84470();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24AE5681C(v9, v5, &qword_27EFBE6B8, &qword_24AE85EA8);
      v12 = *v5;
      v11 = v5[1];
      result = sub_24AE475AC(*v5, v11);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v12;
      v16[1] = v11;
      v17 = v7[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE688, &unk_24AE87270);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24AE561E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE6A8, &qword_24AE85E98);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE6B0, &qword_24AE85EA0);
    v7 = sub_24AE84470();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24AE5681C(v9, v5, &qword_27EFBE6A8, &qword_24AE85E98);
      v12 = *v5;
      v11 = v5[1];
      result = sub_24AE475AC(*v5, v11);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v12;
      v16[1] = v11;
      v17 = v7[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE698, &qword_24AE87280);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24AE563F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_24AE84470();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_24AE475AC(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24AE564F0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_24AE5653C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AE4A504;

  return sub_24AE529C8(v2, v3, v4);
}

uint64_t objectdestroyTm()
{
  v1 = sub_24AE83D90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AE566B8(uint64_t a1)
{
  v4 = *(sub_24AE83D90() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24AE4A7E0;

  return sub_24AE53104(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_24AE567BC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24AE5681C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24AE56898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE620, &qword_24AE860B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_24AE5A304(a3, v22 - v9);
  v11 = sub_24AE84120();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_24AE567BC(v10, &qword_27EFBE620, &qword_24AE860B0);
  }

  else
  {
    sub_24AE84110();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_24AE840E0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_24AE83FD0() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_24AE567BC(a3, &qword_27EFBE620, &qword_24AE860B0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24AE567BC(a3, &qword_27EFBE620, &qword_24AE860B0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_24AE56B34()
{
  v0 = sub_24AE83ED0();
  __swift_allocate_value_buffer(v0, qword_280D79C80);
  v1 = __swift_project_value_buffer(v0, qword_280D79C80);
  if (qword_280D79BF8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D79C08);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *DistributedNotificationHandler.__allocating_init(eventStreamHandler:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  v3 = MEMORY[0x277D84F90];
  v2[15] = sub_24AE55BEC(MEMORY[0x277D84F90]);
  v2[16] = sub_24AE55DE4(v3);
  v2[17] = sub_24AE55BEC(v3);
  v2[18] = sub_24AE55DE4(v3);
  v2[19] = sub_24AE55FDC(v3);
  v2[14] = a1;
  return v2;
}

void *DistributedNotificationHandler.init(eventStreamHandler:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  v3 = MEMORY[0x277D84F90];
  v1[15] = sub_24AE55BEC(MEMORY[0x277D84F90]);
  v1[16] = sub_24AE55DE4(v3);
  v1[17] = sub_24AE55BEC(v3);
  v1[18] = sub_24AE55DE4(v3);
  v1[19] = sub_24AE55FDC(v3);
  v1[14] = a1;
  return v1;
}

uint64_t sub_24AE56D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v62 = a1;
  v60 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE750, &qword_24AE85F60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v56 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE758, &unk_24AE85F68);
  v59 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v56 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE6E0, &unk_24AE85ED0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v58 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v56 - v16;
  swift_beginAccess();
  v18 = *(v3 + 120);
  v19 = *(v18 + 16);
  v61 = v17;
  if (v19)
  {

    v20 = sub_24AE475AC(v62, a2);
    if (v21)
    {
LABEL_6:
      v23 = v12;
      (*(v13 + 16))(v17, *(v18 + 56) + *(v13 + 72) * v20, v12);

      v25 = v59;
      goto LABEL_13;
    }
  }

  swift_beginAccess();
  v18 = *(v4 + 136);
  if (*(v18 + 16))
  {

    v20 = sub_24AE475AC(v62, a2);
    if (v22)
    {
      goto LABEL_6;
    }
  }

  v57 = v12;
  if (qword_280D79C70 != -1)
  {
    swift_once();
  }

  v26 = sub_24AE83ED0();
  __swift_project_value_buffer(v26, qword_280D79C80);

  v27 = sub_24AE83EB0();
  v28 = sub_24AE84250();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v64[0] = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_24AE53C28(v62, a2, v64);
    _os_log_impl(&dword_24AE43000, v27, v28, "Creating base AsyncStream for DistributedNotification name: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x24C233A80](v30, -1, -1);
    MEMORY[0x24C233A80](v29, -1, -1);
  }

  v25 = v59;
  v56[1] = v9;
  MEMORY[0x28223BE20](v31);
  v32 = v62;
  v56[-4] = v4;
  v56[-3] = v32;
  v56[-2] = a2;
  (*(v25 + 104))(v11, *v33);
  v59 = a2;
  v34 = v58;
  sub_24AE84170();
  v35 = *(v13 + 16);
  v36 = v13;
  v37 = v61;
  v38 = v4;
  v39 = v57;
  v35(v61, v34, v57);
  v40 = v37;
  v13 = v36;
  v35(v8, v40, v39);
  (*(v36 + 56))(v8, 0, 1, v39);
  swift_beginAccess();

  sub_24AE4F860(v8, v62, v59);
  swift_endAccess();
  v41 = v34;
  a2 = v59;
  v23 = v39;
  v42 = v39;
  v4 = v38;
  v24 = (*(v36 + 8))(v41, v42);
LABEL_13:
  MEMORY[0x28223BE20](v24);
  v43 = v62;
  v56[-4] = v4;
  v56[-3] = v43;
  v56[-2] = a2;
  (*(v25 + 104))(v11, *v44);
  sub_24AE84170();
  swift_beginAccess();
  v45 = *(v4 + 152);
  if (*(v45 + 16))
  {

    v46 = sub_24AE475AC(v62, a2);
    if (v47)
    {
      v48 = *(*(v45 + 56) + 8 * v46);

      v49 = *(v48 + 16);

      goto LABEL_18;
    }
  }

  v49 = 0;
LABEL_18:
  if (qword_280D79C70 != -1)
  {
    swift_once();
  }

  v50 = sub_24AE83ED0();
  __swift_project_value_buffer(v50, qword_280D79C80);

  v51 = sub_24AE83EB0();
  v52 = sub_24AE84250();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v63 = v54;
    *v53 = 136315394;
    *(v53 + 4) = sub_24AE53C28(v62, a2, &v63);
    *(v53 + 12) = 2048;
    *(v53 + 14) = v49;
    _os_log_impl(&dword_24AE43000, v51, v52, "Creating sub AsyncStream for DistributedNotification name: [%s], count: %ld", v53, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x24C233A80](v54, -1, -1);
    MEMORY[0x24C233A80](v53, -1, -1);
  }

  return (*(v13 + 8))(v61, v23);
}

uint64_t sub_24AE57438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE638, &qword_24AE85E18);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE640, &qword_24AE85E20);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  swift_beginAccess();

  sub_24AE4FA64(v9, a3, a4);
  return swift_endAccess();
}

uint64_t sub_24AE57588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE640, &qword_24AE85E20);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27[-1] - v10;
  swift_beginAccess();
  if (*(*(a2 + 152) + 16) && (, sub_24AE475AC(a3, a4), v13 = v12, , (v13 & 1) != 0))
  {
    v14 = sub_24AE4E950(v28);
    v16 = sub_24AE62CB4(v27, a3, a4);
    if (*v15)
    {
      v17 = v15;
      (*(v9 + 16))(v11, a1, v8);
      v18 = *v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v17 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_24AE61690(0, v18[2] + 1, 1, v18);
        *v17 = v18;
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = sub_24AE61690((v20 > 1), v21 + 1, 1, v18);
        *v17 = v18;
      }

      v18[2] = v21 + 1;
      (*(v9 + 32))(v18 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, v11, v8);
      (v16)(v27, 0);
      return (v14)(v28, 0);
    }

    else
    {
      (v16)(v27, 0);
      return (v14)(v28, 0);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE770, &qword_24AE860E8);
    v23 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_24AE85CE0;
    (*(v9 + 16))(v24 + v23, a1, v8);
    swift_beginAccess();

    v25 = swift_isUniquelyReferenced_nonNull_native();
    v27[0] = *(a2 + 152);
    *(a2 + 152) = 0x8000000000000000;
    sub_24AE7FFC4(v24, a3, a4, v25);

    *(a2 + 152) = v27[0];
    return swift_endAccess();
  }
}

void *DistributedNotificationHandler.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t DistributedNotificationHandler.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AE57978(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE758, &unk_24AE85F68);
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE6E0, &unk_24AE85ED0);
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE57AB8, v1, 0);
}

uint64_t sub_24AE57AB8()
{
  v49 = v0;
  v1 = v0[11];
  v41 = *(v1 + 16);
  if (!v41)
  {
LABEL_18:
    v38 = v0[12];
    result = swift_beginAccess();
    if (*(*(v38 + 120) + 16) == v41)
    {
      v39 = v0[12];
      result = swift_beginAccess();
      if (*(*(v39 + 128) + 16) == v41)
      {

        v40 = v0[1];

        return v40();
      }
    }

    else
    {
LABEL_28:
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v45 = v0[12];
  v44 = *MEMORY[0x277D85778];
  v43 = (v0[14] + 104);
  v42 = v0[17];
  v2 = (v1 + 40);
  v3 = *(v1 + 16);
  while (1)
  {
    v47 = v3;
    v7 = *(v2 - 1);
    v8 = *v2;
    v46 = v2;
    v9 = qword_280D79C70;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = sub_24AE83ED0();
    __swift_project_value_buffer(v10, qword_280D79C80);

    v11 = sub_24AE83EB0();
    v12 = sub_24AE84250();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v48 = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_24AE53C28(v7, v8, &v48);
      _os_log_impl(&dword_24AE43000, v11, v12, "Creating base AsyncStream for registered Distributed notification name: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x24C233A80](v14, -1, -1);
      MEMORY[0x24C233A80](v13, -1, -1);
    }

    v16 = v0[18];
    v15 = v0[19];
    v18 = v0[15];
    v17 = v0[16];
    v20 = v0[12];
    v19 = v0[13];
    v21 = swift_task_alloc();
    v21[2] = v20;
    v21[3] = v7;
    v21[4] = v8;
    (*v43)(v18, v44, v19);
    sub_24AE84170();

    swift_beginAccess();
    (*(v42 + 16))(v16, v15, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = *(v45 + 120);
    v23 = v48;
    *(v45 + 120) = 0x8000000000000000;
    v25 = sub_24AE475AC(v7, v8);
    v26 = *(v23 + 16);
    v27 = (v24 & 1) == 0;
    result = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v29 = v24;
    if (*(v23 + 24) < result)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24AE80820();
    }

LABEL_15:
    v32 = v0[18];
    v33 = v0[16];
    if (v29)
    {

      v4 = v48;
      (*(v42 + 40))(v48[7] + *(v42 + 72) * v25, v32, v33);
    }

    else
    {
      v4 = v48;
      v48[(v25 >> 6) + 8] |= 1 << v25;
      v34 = (v4[6] + 16 * v25);
      *v34 = v7;
      v34[1] = v8;
      result = (*(v42 + 32))(v4[7] + *(v42 + 72) * v25, v32, v33);
      v35 = v4[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_27;
      }

      v4[2] = v37;
    }

    v5 = v0[19];
    v6 = v0[16];
    *(v45 + 120) = v4;

    swift_endAccess();
    (*(v42 + 8))(v5, v6);
    v2 = v46 + 2;
    v3 = v47 - 1;
    if (v47 == 1)
    {
      goto LABEL_18;
    }
  }

  sub_24AE7EF60(result, isUniquelyReferenced_nonNull_native);
  v30 = sub_24AE475AC(v7, v8);
  if ((v29 & 1) == (v31 & 1))
  {
    v25 = v30;
    goto LABEL_15;
  }

  return sub_24AE84570();
}

uint64_t sub_24AE57FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE638, &qword_24AE85E18);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE640, &qword_24AE85E20);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  swift_beginAccess();

  sub_24AE4FA64(v9, a3, a4);
  return swift_endAccess();
}

uint64_t sub_24AE58100()
{
  v1[22] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE5F0, &unk_24AE86090);
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE760, &unk_24AE85DD0);
  v1[26] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE600, &unk_24AE860A0);
  v1[27] = v3;
  v1[28] = *(v3 - 8);
  v1[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE5826C, v0, 0);
}

uint64_t sub_24AE5826C()
{
  if (MEMORY[0x24C2329E0]())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = *(v0[22] + 112);
    v0[30] = v3;

    return MEMORY[0x2822009F8](sub_24AE58328, v3, 0);
  }
}

uint64_t sub_24AE58328()
{
  v1 = v0[30];
  swift_beginAccess();
  v2 = *(v1 + 120);
  if (*(v2 + 16))
  {

    v3 = sub_24AE475AC(0xD00000000000001CLL, 0x800000024AE88220);
    if (v4)
    {
      (*(v0[28] + 16))(v0[26], *(v2 + 56) + *(v0[28] + 72) * v3, v0[27]);
      v5 = 0;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  v6 = v0[22];
  (*(v0[28] + 56))(v0[26], v5, 1, v0[27]);

  return MEMORY[0x2822009F8](sub_24AE5843C, v6, 0);
}

uint64_t sub_24AE5843C()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24AE567BC(v3, &qword_27EFBE760, &unk_24AE85DD0);
    return sub_24AE84440();
  }

  else
  {
    (*(v2 + 32))(v0[29], v3, v1);
    sub_24AE84150();
    v6 = sub_24AE5A374(qword_280D7A210, v5, type metadata accessor for DistributedNotificationHandler, &protocol conformance descriptor for DistributedNotificationHandler);
    v0[31] = v6;
    v7 = v0[22];
    v8 = swift_task_alloc();
    v0[32] = v8;
    *v8 = v0;
    v8[1] = sub_24AE58610;
    v9 = v0[23];

    return MEMORY[0x2822003E8](v0 + 15, v7, v6, v9);
  }
}

uint64_t sub_24AE58610()
{
  v1 = *(*v0 + 176);

  return MEMORY[0x2822009F8](sub_24AE58720, v1, 0);
}

uint64_t sub_24AE58720()
{
  v40 = v0;
  v1 = v0[15];
  if (v1)
  {
    v2 = v0[16];
    if (*(v1 + 16) && (v3 = sub_24AE475AC(0x746E657645435058, 0xEC000000656D614ELL), (v4 & 1) != 0))
    {
      sub_24AE476DC(*(v1 + 56) + 32 * v3, (v0 + 2));

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE610, &unk_24AE85DE0);
      if (swift_dynamicCast())
      {
        v5 = v0[17];
        v6 = v0[18];
        v7 = qword_280D79C70;

        if (v7 != -1)
        {
          swift_once();
        }

        v8 = sub_24AE83ED0();
        __swift_project_value_buffer(v8, qword_280D79C80);

        v9 = sub_24AE83EB0();
        v10 = sub_24AE84250();

        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v39 = v12;
          *v11 = 136446210;
          v0[19] = 91;
          v0[20] = 0xE100000000000000;
          v0[12] = v5;
          v0[13] = v6;
          v0[14] = v2;
          sub_24AE5A0AC();
          v37 = v5;
          v13 = v2;

          v14 = sub_24AE844F0();
          MEMORY[0x24C232D80](v14);

          MEMORY[0x24C232D80](8250, 0xE200000000000000);
          MEMORY[0x24C232D80](v37, v6);
          MEMORY[0x24C232D80](0x3A6E787420, 0xE500000000000000);
          v0[21] = v2;
          sub_24AE83CB0();
          sub_24AE5A374(&qword_280D79BB0, 255, MEMORY[0x277D08908], MEMORY[0x277D08910]);
          v15 = sub_24AE84510();
          MEMORY[0x24C232D80](v15);

          MEMORY[0x24C232D80](93, 0xE100000000000000);

          v16 = sub_24AE53C28(v0[19], v0[20], &v39);

          *(v11 + 4) = v16;
          v2 = v13;
          v5 = v37;
          _os_log_impl(&dword_24AE43000, v9, v10, "XPCEventStream notification: %{public}s", v11, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v12);
          MEMORY[0x24C233A80](v12, -1, -1);
          MEMORY[0x24C233A80](v11, -1, -1);
        }

        v0[9] = v5;
        v0[10] = v6;
        v0[11] = v2;
        sub_24AE58D1C(v0 + 9, v2);

        v17 = v0[31];
        v18 = v0[22];
        v19 = swift_task_alloc();
        v0[32] = v19;
        *v19 = v0;
        v19[1] = sub_24AE58610;
        v20 = v0[23];

        return MEMORY[0x2822003E8](v0 + 15, v18, v17, v20);
      }
    }

    else
    {
    }

    if (qword_280D79C70 != -1)
    {
      swift_once();
    }

    v21 = sub_24AE83ED0();
    __swift_project_value_buffer(v21, qword_280D79C80);
    v22 = sub_24AE83EB0();
    v23 = sub_24AE84230();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[28];
    v38 = v0[29];
    v26 = v0[27];
    v27 = v0[24];
    v28 = v0[25];
    v29 = v0[23];
    if (v24)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_24AE53C28(0x746E657645435058, 0xEC000000656D614ELL, &v39);
      _os_log_impl(&dword_24AE43000, v22, v23, "Event missing %s key!", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x24C233A80](v31, -1, -1);
      MEMORY[0x24C233A80](v30, -1, -1);
    }

    else
    {
    }

    (*(v27 + 8))(v28, v29);
    (*(v25 + 8))(v38, v26);
  }

  else
  {
    v33 = v0[28];
    v32 = v0[29];
    v34 = v0[27];
    (*(v0[24] + 8))(v0[25], v0[23]);
    (*(v33 + 8))(v32, v34);
  }

  v35 = v0[1];

  return v35();
}

uint64_t DistributedNotification.init(name:transaction:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void sub_24AE58D1C(uint64_t *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE620, &qword_24AE860B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  swift_beginAccess();
  v11 = *(v2 + 152);
  if (*(v11 + 16))
  {

    v12 = sub_24AE475AC(v9, v8);
    if (v13)
    {
      v14 = *(*(v11 + 56) + 8 * v12);

      v15 = sub_24AE84120();
      (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
      v16 = swift_allocObject();
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = a2;
      v16[5] = v14;
      v16[6] = v9;
      v16[7] = v8;
      v16[8] = v10;

      sub_24AE56898(0, 0, v7, &unk_24AE860C0, v16);

      return;
    }
  }

  if (qword_280D79C70 != -1)
  {
    swift_once();
  }

  v17 = sub_24AE83ED0();
  __swift_project_value_buffer(v17, qword_280D79C80);

  v18 = sub_24AE83EB0();
  v19 = sub_24AE84240();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 136446210;
    v28 = v10;
    v29 = 91;
    v30 = 0xE100000000000000;
    v31 = v21;
    v26 = v9;
    v27 = v8;
    sub_24AE5A0AC();

    v22 = sub_24AE844F0();
    MEMORY[0x24C232D80](v22);

    MEMORY[0x24C232D80](8250, 0xE200000000000000);
    MEMORY[0x24C232D80](v9, v8);
    MEMORY[0x24C232D80](0x3A6E787420, 0xE500000000000000);
    v26 = v10;
    sub_24AE83CB0();
    sub_24AE5A374(&qword_280D79BB0, 255, MEMORY[0x277D08908], MEMORY[0x277D08910]);
    v23 = sub_24AE84510();
    MEMORY[0x24C232D80](v23);

    MEMORY[0x24C232D80](93, 0xE100000000000000);

    v24 = sub_24AE53C28(v29, v30, &v31);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_24AE43000, v18, v19, "Received notification %{public}s with no subscribers!", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x24C233A80](v21, -1, -1);
    MEMORY[0x24C233A80](v20, -1, -1);
  }
}

uint64_t sub_24AE590F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[12] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE768, &qword_24AE860C8);
  v8[17] = v9;
  v8[18] = *(v9 - 8);
  v8[19] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE640, &qword_24AE85E20);
  v8[20] = v10;
  v8[21] = *(v10 - 8);
  v8[22] = swift_task_alloc();
  v11 = swift_task_alloc();
  v8[23] = v11;
  *v11 = v8;
  v11[1] = sub_24AE5925C;

  return daemon.getter();
}

uint64_t sub_24AE5925C(uint64_t a1)
{
  *(*v1 + 192) = a1;

  return MEMORY[0x2822009F8](sub_24AE59360, a1, 0);
}

uint64_t sub_24AE59360()
{
  v1 = *(*(v0 + 192) + 128);
  *(v0 + 200) = v1;
  return MEMORY[0x2822009F8](sub_24AE59384, v1, 0);
}

uint64_t sub_24AE59384()
{
  v1 = v0[25];
  swift_beginAccess();
  v2 = *(v1 + 112);
  v0[26] = v2;
  v3 = *(v2 + 16);
  v0[27] = v3;
  if (!v3)
  {
LABEL_11:

    return MEMORY[0x2822009F8](sub_24AE59640, 0, 0);
  }

  swift_beginAccess();
  v0[28] = 0;
  v4 = v0[26];
  if (!*(v4 + 16))
  {
LABEL_9:
    __break(1u);
LABEL_10:

    goto LABEL_11;
  }

  v5 = 0;
  while (1)
  {
    v6 = v0[25];
    v7 = v4 + 16 * v5;
    v0[29] = *(v7 + 32);
    v8 = *(v7 + 40);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 24);
    swift_unknownObjectRetain();
    v11 = v10(ObjectType, v8);
    v13 = v12;
    v0[30] = v12;
    if (*(*(v6 + 128) + 16))
    {
      break;
    }

LABEL_7:

    v16 = v0[28];
    v17 = v0[27];
    swift_unknownObjectRelease();
    if (v16 + 1 == v17)
    {
      goto LABEL_10;
    }

    v5 = v0[28] + 1;
    v0[28] = v5;
    v4 = v0[26];
    if (v5 >= *(v4 + 16))
    {
      goto LABEL_9;
    }
  }

  v14 = v11;

  sub_24AE475AC(v14, v13);
  if ((v15 & 1) == 0)
  {

    goto LABEL_7;
  }

  v18 = v0[25];

  sub_24AE5A374(&qword_280D7A510, 255, type metadata accessor for ActorServiceCollection, &protocol conformance descriptor for ActorServiceCollection);
  v19 = swift_task_alloc();
  v0[31] = v19;
  v19[2] = v18;
  v19[3] = v14;
  v19[4] = v13;
  v20 = swift_task_alloc();
  v0[32] = v20;
  *v20 = v0;
  v20[1] = sub_24AE59814;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_24AE59640()
{
  v2 = v0[12];
  v1 = v0[13];
  sub_24AE83CB0();
  sub_24AE83C90();
  v0[11] = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE9B0, &qword_24AE85E10);
  swift_task_localValuePush();
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v0[21];
    v18 = *(v4 + 16);
    v5 = v0[13] + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v16 = (v0[18] + 8);
    v17 = *(v4 + 72);
    v15 = (v4 + 8);
    do
    {
      v6 = v0[22];
      v8 = v0[19];
      v7 = v0[20];
      v10 = v0[16];
      v9 = v0[17];
      v11 = v0[14];
      v12 = v0[15];
      v18(v6, v5, v7);
      v0[8] = v11;
      v0[9] = v12;
      v0[10] = v10;

      sub_24AE84140();
      (*v16)(v8, v9);
      (*v15)(v6, v7);
      v5 += v17;
      --v3;
    }

    while (v3);
  }

  swift_task_localValuePop();

  v13 = v0[1];

  return v13();
}

uint64_t sub_24AE59814()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = *(v2 + 200);

    v4 = sub_24AE59BF0;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 200);

    v4 = sub_24AE59994;
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_24AE59994()
{
  while (1)
  {
    v1 = v0[28];
    v2 = v0[27];
    swift_unknownObjectRelease();
    if (v1 + 1 == v2)
    {
      break;
    }

    v3 = v0[28] + 1;
    v0[28] = v3;
    v4 = v0[26];
    if (v3 >= *(v4 + 16))
    {
      __break(1u);
      return MEMORY[0x2822008A0]();
    }

    v5 = v0[25];
    v6 = v4 + 16 * v3;
    v0[29] = *(v6 + 32);
    v7 = *(v6 + 40);
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 24);
    swift_unknownObjectRetain();
    v10 = v9(ObjectType, v7);
    v12 = v11;
    v0[30] = v11;
    if (*(*(v5 + 128) + 16))
    {
      v13 = v10;

      sub_24AE475AC(v13, v12);
      if (v14)
      {
        v15 = v0[25];

        sub_24AE5A374(&qword_280D7A510, 255, type metadata accessor for ActorServiceCollection, &protocol conformance descriptor for ActorServiceCollection);
        v16 = swift_task_alloc();
        v0[31] = v16;
        v16[2] = v15;
        v16[3] = v13;
        v16[4] = v12;
        v17 = swift_task_alloc();
        v0[32] = v17;
        *v17 = v0;
        v17[1] = sub_24AE59814;

        return MEMORY[0x2822008A0]();
      }
    }
  }

  return MEMORY[0x2822009F8](sub_24AE59640, 0, 0);
}

uint64_t sub_24AE59BF0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_24AE59C58, 0, 0);
}

uint64_t sub_24AE59C58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AE59CD4()
{
  v0 = sub_24AE83ED0();
  __swift_allocate_value_buffer(v0, qword_280D79C08);
  __swift_project_value_buffer(v0, qword_280D79C08);
  return sub_24AE83EC0();
}

uint64_t sub_24AE59D54()
{
  v0 = MEMORY[0x277D84F90];
  v8 = MEMORY[0x277D84F90];
  sub_24AE83FD0();
  v1 = xpc_copy_event();

  if (!v1)
  {
    v2 = 0;
    goto LABEL_5;
  }

  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_24AE557E4;
  *(v3 + 24) = v2;
  aBlock[4] = sub_24AE557EC;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AE6DFA8;
  aBlock[3] = &block_descriptor_0;
  v4 = _Block_copy(aBlock);

  xpc_dictionary_apply(v1, v4);
  swift_unknownObjectRelease();
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v0 = v8;

    v1 = sub_24AE557E4;
LABEL_5:

    sub_24AE44D88(v1, v2);
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t DistributedNotification.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DistributedNotification.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE5A0AC();
  v3 = sub_24AE844F0();
  MEMORY[0x24C232D80](v3);

  MEMORY[0x24C232D80](8250, 0xE200000000000000);
  MEMORY[0x24C232D80](v1, v2);
  MEMORY[0x24C232D80](0x3A6E787420, 0xE500000000000000);
  sub_24AE83CB0();
  sub_24AE5A374(&qword_280D79BB0, 255, MEMORY[0x277D08908], MEMORY[0x277D08910]);
  v4 = sub_24AE84510();
  MEMORY[0x24C232D80](v4);

  MEMORY[0x24C232D80](93, 0xE100000000000000);
  return 91;
}

unint64_t sub_24AE5A0AC()
{
  result = qword_280D79938[0];
  if (!qword_280D79938[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D79938);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_24AE5A190(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24AE5A1D8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_24AE5A228(uint64_t a1)
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
  v11[1] = sub_24AE4A504;

  return sub_24AE590F0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24AE5A304(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE620, &qword_24AE860B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AE5A374(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_24AE5A410(char a1)
{
  result = swift_beginAccess();
  *(v1 + 232) = a1;
  return result;
}

uint64_t APNSManager.__allocating_init(environmentName:delegatePort:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24AE5548C;

  return APNSManager.init(environmentName:delegatePort:)(a1, a2, a3, a4);
}

uint64_t APNSManager.init(environmentName:delegatePort:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = sub_24AE83F10();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE5A638, 0, 0);
}

uint64_t sub_24AE5A638()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  swift_defaultActor_initialize();
  *(v3 + 200) = 0u;
  *(v3 + 184) = 0u;
  *(v3 + 168) = 0u;
  *(v3 + 152) = 0u;
  *(v3 + 136) = 0u;
  *(v3 + 120) = 0u;
  v5 = MEMORY[0x277D84F98];
  *(v3 + 216) = 0;
  *(v3 + 224) = v5;
  *(v3 + 232) = 0;
  sub_24AE5FF5C(0, &unk_280D79BE8, 0x277D85C78);
  (*(v2 + 104))(v1, *MEMORY[0x277D851C8], v4);
  v6 = sub_24AE84260();
  (*(v2 + 8))(v1, v4);
  v7 = objc_allocWithZone(MEMORY[0x277CEEA10]);
  v8 = sub_24AE83FA0();
  v9 = sub_24AE83FA0();
  v10 = [v7 initWithEnvironmentName:v8 namedDelegatePort:v9 queue:v6];

  if (v10)
  {
    v14 = v0[8];

    *(v14 + 112) = v10;
    v11 = sub_24AE5A7E0;
    v12 = v14;
    v13 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_24AE5A7E0()
{
  receiver = v0[4].receiver;
  v2 = type metadata accessor for APNSManager.PushDelegateTrampoline();
  v3 = objc_allocWithZone(v2);
  swift_weakInit();
  swift_weakAssign();
  v0[1].receiver = v3;
  v0[1].super_class = v2;
  v4 = objc_msgSendSuper2(v0 + 1, sel_init);
  v5 = *(receiver + 15);
  *(receiver + 15) = v4;
  v6 = v4;

  v7 = *(receiver + 14);
  [v7 setDelegate_];

  super_class = v0->super_class;
  v9 = v0[4].receiver;

  return super_class(v9);
}

id sub_24AE5A924()
{
  result = [*(*(v0 + 16) + 112) enabledTopics];
  if (result)
  {
    v2 = result;
    v3 = sub_24AE840A0();

    v4 = *(v0 + 8);

    return v4(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24AE5A9BC(uint64_t a1)
{
  v2 = v1;
  if (qword_280D7A020 != -1)
  {
    swift_once();
  }

  v4 = sub_24AE83ED0();
  __swift_project_value_buffer(v4, qword_280D7A9A8);

  v5 = sub_24AE83EB0();
  v6 = sub_24AE84250();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_24AE53C28(0xD000000000000013, 0x800000024AE882E0, &v14);
    *(v7 + 12) = 2082;
    v9 = MEMORY[0x24C232E40](a1, MEMORY[0x277D837D0]);
    v11 = sub_24AE53C28(v9, v10, &v14);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_24AE43000, v5, v6, "%s %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C233A80](v8, -1, -1);
    MEMORY[0x24C233A80](v7, -1, -1);
  }

  v12 = *(v2 + 112);
  v13 = sub_24AE84090();
  [v12 _setEnabledTopics_];
}

void sub_24AE5ABA0(uint64_t a1)
{
  v2 = v1;
  if (qword_280D7A020 != -1)
  {
    swift_once();
  }

  v4 = sub_24AE83ED0();
  __swift_project_value_buffer(v4, qword_280D7A9A8);

  v5 = sub_24AE83EB0();
  v6 = sub_24AE84250();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_24AE53C28(0xD000000000000019, 0x800000024AE88300, &v14);
    *(v7 + 12) = 2082;
    v9 = MEMORY[0x24C232E40](a1, MEMORY[0x277D837D0]);
    v11 = sub_24AE53C28(v9, v10, &v14);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_24AE43000, v5, v6, "%s %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C233A80](v8, -1, -1);
    MEMORY[0x24C233A80](v7, -1, -1);
  }

  v12 = *(v2 + 112);
  v13 = sub_24AE84090();
  [v12 _setOpportunisticTopics_];
}

uint64_t sub_24AE5AD84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE7A8, &unk_24AE86118);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - v2;
  swift_allocObject();
  swift_weakInit();
  (*(v1 + 104))(v3, *MEMORY[0x277D85778], v0);
  sub_24AE84170();
}

uint64_t sub_24AE5AEB8(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE6D0, &unk_24AE85EC0);
  v35 = *(v38 - 8);
  v2 = *(v35 + 64);
  MEMORY[0x28223BE20](v38);
  v4 = &v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE620, &qword_24AE860B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - v6;
  v8 = sub_24AE83EA0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v36 = v13;
    sub_24AE83E90();
    v30 = v4;
    v31 = *(v9 + 16);
    v27 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31(v27, v13, v8);
    v16 = *(v9 + 80);
    v34 = v9;
    v37 = v7;
    v32 = v16 | 7;
    v17 = swift_allocObject();
    v18 = v35;
    v28 = v8;
    v29 = v2;
    *(v17 + 16) = v15;
    v33 = *(v9 + 32);
    v19 = v27;
    v33(v17 + ((v16 + 24) & ~v16), v27, v8);

    v20 = v38;
    sub_24AE84130();
    v21 = sub_24AE84120();
    (*(*(v21 - 8) + 56))(v37, 1, 1, v21);
    v22 = v30;
    (*(v18 + 16))(v30, v39, v20);
    v23 = v28;
    v31(v19, v36, v28);
    v24 = (*(v18 + 80) + 40) & ~*(v18 + 80);
    v25 = (v29 + v16 + v24) & ~v16;
    v26 = swift_allocObject();
    *(v26 + 2) = 0;
    *(v26 + 3) = 0;
    *(v26 + 4) = v15;
    (*(v18 + 32))(&v26[v24], v22, v38);
    v33(&v26[v25], v19, v23);

    sub_24AE6E000(0, 0, v37, &unk_24AE86430, v26);

    return (*(v34 + 8))(v36, v23);
  }

  return result;
}

uint64_t sub_24AE5B2BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24AE83EA0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE620, &qword_24AE860B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_24AE84120();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v6 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v12 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v6 + 32))(&v13[v12], &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_24AE6E000(0, 0, v10, &unk_24AE86448, v13);
}

uint64_t sub_24AE5B49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_24AE5B4BC, a4, 0);
}

uint64_t sub_24AE5B4BC()
{
  sub_24AE5B51C(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AE5B51C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE6C8, &qword_24AE85EB8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27 - v4;
  v6 = sub_24AE83EA0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  if (qword_280D7A020 != -1)
  {
    swift_once();
  }

  v12 = sub_24AE83ED0();
  __swift_project_value_buffer(v12, qword_280D7A9A8);
  v30 = *(v7 + 16);
  v30(v11, a1, v6);
  v13 = sub_24AE83EB0();
  v14 = sub_24AE84210();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v29 = v1;
    v18 = v17;
    v32[0] = v17;
    *v16 = 136446210;
    sub_24AE6098C();
    v19 = sub_24AE84510();
    v28 = v5;
    v21 = v20;
    (*(v7 + 8))(v11, v6);
    v22 = sub_24AE53C28(v19, v21, v32);
    v5 = v28;

    *(v16 + 4) = v22;
    _os_log_impl(&dword_24AE43000, v13, v14, "Removing connectionStateContinuation for %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x24C233A80](v18, -1, -1);
    v23 = v16;
    a1 = v27;
    MEMORY[0x24C233A80](v23, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }

  v24 = v31;
  v30(v31, a1, v6);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE6D0, &unk_24AE85EC0);
  (*(*(v25 - 8) + 56))(v5, 1, 1, v25);
  swift_beginAccess();
  sub_24AE4FC68(v5, v24);
  return swift_endAccess();
}

uint64_t sub_24AE5B87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_24AE5B8A0, a4, 0);
}

uint64_t sub_24AE5B8A0()
{
  sub_24AE5B904(v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_24AE5B904(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE6C8, &qword_24AE85EB8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - v6;
  v8 = sub_24AE83EA0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v36 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  if (qword_280D7A020 != -1)
  {
    swift_once();
  }

  v14 = sub_24AE83ED0();
  __swift_project_value_buffer(v14, qword_280D7A9A8);
  v35 = *(v9 + 16);
  v35(v13, a2, v8);
  v15 = sub_24AE83EB0();
  v16 = sub_24AE84210();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33 = v7;
    v18 = v17;
    v19 = swift_slowAlloc();
    v32 = a2;
    v20 = v19;
    v38[0] = v19;
    *v18 = 136446210;
    sub_24AE6098C();
    v21 = sub_24AE84510();
    v34 = v3;
    v23 = v22;
    (*(v9 + 8))(v13, v8);
    v24 = sub_24AE53C28(v21, v23, v38);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_24AE43000, v15, v16, "Storing connectionStateContinuation for %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v25 = v20;
    a2 = v32;
    MEMORY[0x24C233A80](v25, -1, -1);
    v26 = v18;
    v7 = v33;
    MEMORY[0x24C233A80](v26, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v13, v8);
  }

  v27 = v36;
  v35(v36, a2, v8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE6D0, &unk_24AE85EC0);
  v29 = *(v28 - 8);
  (*(v29 + 16))(v7, v37, v28);
  (*(v29 + 56))(v7, 0, 1, v28);
  swift_beginAccess();
  sub_24AE4FC68(v7, v27);
  return swift_endAccess();
}

uint64_t sub_24AE5BC9C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 128);
  v4 = *(v2 + 136);
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;

  return sub_24AE44D88(v3, v4);
}

uint64_t sub_24AE5BCE8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 144);
  v4 = *(v2 + 152);
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;

  return sub_24AE44D88(v3, v4);
}

uint64_t sub_24AE5BD34(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 160);
  v4 = *(v2 + 168);
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;

  return sub_24AE44D88(v3, v4);
}

uint64_t sub_24AE5BD80(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 176);
  v4 = *(v2 + 184);
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;

  return sub_24AE44D88(v3, v4);
}

uint64_t sub_24AE5BDCC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 192);
  v4 = *(v2 + 200);
  *(v2 + 192) = a1;
  *(v2 + 200) = a2;

  return sub_24AE44D88(v3, v4);
}

uint64_t sub_24AE5BE18(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 208);
  v4 = *(v2 + 216);
  *(v2 + 208) = a1;
  *(v2 + 216) = a2;

  return sub_24AE44D88(v3, v4);
}

void sub_24AE5BE64(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 8))(v4, v5);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 16))(v6, v7);
  v8 = objc_allocWithZone(MEMORY[0x277CEEA00]);
  v9 = sub_24AE83FA0();

  v10 = sub_24AE83FA0();

  v11 = [v8 initWithTopic:v9 identifier:v10];

  [*(v2 + 112) requestTokenForInfo_];
}

void sub_24AE5BFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 112);
  v6 = sub_24AE83FA0();
  v7 = sub_24AE83FA0();
  [v5 requestTokenForTopic:v6 identifier:v7];
}

uint64_t APNSManager.deinit()
{
  sub_24AE44D88(*(v0 + 128), *(v0 + 136));
  sub_24AE44D88(*(v0 + 144), *(v0 + 152));
  sub_24AE44D88(*(v0 + 160), *(v0 + 168));
  sub_24AE44D88(*(v0 + 176), *(v0 + 184));
  sub_24AE44D88(*(v0 + 192), *(v0 + 200));
  sub_24AE44D88(*(v0 + 208), *(v0 + 216));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t APNSManager.__deallocating_deinit()
{
  APNSManager.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AE5C0C0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AE5C0E0, v1, 0);
}

uint64_t sub_24AE5C0E0()
{
  sub_24AE5A9BC(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AE5C140(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AE5C160, v1, 0);
}

uint64_t sub_24AE5C160()
{
  sub_24AE5ABA0(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AE5C1C0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24AE5C1E4, v2, 0);
}

uint64_t sub_24AE5C1E4()
{
  v1 = v0[3];
  v2 = v0[4];
  v4 = *(v2 + 192);
  v3 = *(v2 + 200);
  *(v2 + 192) = v0[2];
  *(v2 + 200) = v1;

  sub_24AE44D88(v4, v3);
  v5 = v0[1];

  return v5();
}

uint64_t sub_24AE5C25C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24AE5C280, v2, 0);
}

uint64_t sub_24AE5C280()
{
  v1 = v0[3];
  v2 = v0[4];
  v4 = *(v2 + 144);
  v3 = *(v2 + 152);
  *(v2 + 144) = v0[2];
  *(v2 + 152) = v1;

  sub_24AE44D88(v4, v3);
  v5 = v0[1];

  return v5();
}

uint64_t sub_24AE5C2F8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24AE5C31C, v2, 0);
}

uint64_t sub_24AE5C31C()
{
  v1 = v0[3];
  v2 = v0[4];
  v4 = *(v2 + 160);
  v3 = *(v2 + 168);
  *(v2 + 160) = v0[2];
  *(v2 + 168) = v1;

  sub_24AE44D88(v4, v3);
  v5 = v0[1];

  return v5();
}

uint64_t sub_24AE5C394(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24AE5C3B8, v2, 0);
}

uint64_t sub_24AE5C3B8()
{
  v1 = v0[3];
  v2 = v0[4];
  v4 = *(v2 + 176);
  v3 = *(v2 + 184);
  *(v2 + 176) = v0[2];
  *(v2 + 184) = v1;

  sub_24AE44D88(v4, v3);
  v5 = v0[1];

  return v5();
}

uint64_t sub_24AE5C430(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AE5C450, v1, 0);
}

uint64_t sub_24AE5C450()
{
  sub_24AE5BE64(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AE5C4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_24AE5C4D8, v4, 0);
}

uint64_t sub_24AE5C4D8()
{
  v1 = *(*(v0 + 48) + 112);
  v2 = sub_24AE83FA0();
  v3 = sub_24AE83FA0();
  [v1 requestTokenForTopic:v2 identifier:v3];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24AE5C580()
{
  v1[8] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE838, &unk_24AE86388);
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE6D0, &unk_24AE85EC0);
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE5C6B4, v0, 0);
}

uint64_t sub_24AE5C6B4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  swift_beginAccess();
  *(v3 + 232) = 1;
  swift_beginAccess();
  v4 = *(v3 + 224);
  v5 = v4 + 64;
  v6 = -1;
  v7 = -1 << *(v4 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v4 + 64);
  v9 = (63 - v7) >> 6;
  v22 = (v2 + 8);
  v23 = v4;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_9:
      v13 = *(v0 + 112);
      v15 = *(v0 + 88);
      v14 = *(v0 + 96);
      v16 = *(v0 + 72);
      v17 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      (*(v1 + 16))(v13, *(v23 + 56) + *(v1 + 72) * (v17 | (v12 << 6)), v14);
      *(v0 + 144) = 1;
      sub_24AE84140();
      (*(v1 + 8))(v13, v14);
      result = (*v22)(v15, v16);
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  v18 = *(v0 + 64);

  v19 = *(v18 + 128);
  *(v0 + 120) = v19;
  if (v19)
  {
    *(v0 + 128) = *(*(v0 + 64) + 136);

    v24 = (v19 + *v19);
    v20 = swift_task_alloc();
    *(v0 + 136) = v20;
    *v20 = v0;
    v20[1] = sub_24AE5C9A4;

    return v24();
  }

  else
  {

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_24AE5C9A4()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](sub_24AE5CAB4, v1, 0);
}

uint64_t sub_24AE5CAB4()
{
  sub_24AE44D88(v0[15], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24AE5CB28(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 145) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE838, &unk_24AE86388);
  *(v2 + 72) = v3;
  *(v2 + 80) = *(v3 - 8);
  *(v2 + 88) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE6D0, &unk_24AE85EC0);
  *(v2 + 96) = v4;
  *(v2 + 104) = *(v4 - 8);
  *(v2 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE5CC60, v1, 0);
}

uint64_t sub_24AE5CC60()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 145);
  swift_beginAccess();
  v25 = v4;
  *(v3 + 232) = v4;
  swift_beginAccess();
  v5 = *(v3 + 224);
  v6 = v5 + 64;
  v7 = -1;
  v8 = -1 << *(v5 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v5 + 64);
  v10 = (63 - v8) >> 6;
  v24 = (v2 + 8);
  v26 = v5;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_9:
      v14 = *(v0 + 112);
      v16 = *(v0 + 88);
      v15 = *(v0 + 96);
      v17 = *(v0 + 72);
      v18 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      (*(v1 + 16))(v14, *(v26 + 56) + *(v1 + 72) * (v18 | (v13 << 6)), v15);
      *(v0 + 144) = v25;
      sub_24AE84140();
      (*(v1 + 8))(v14, v15);
      result = (*v24)(v16, v17);
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  v19 = *(v0 + 64);

  v20 = *(v19 + 208);
  *(v0 + 120) = v20;
  if (v20)
  {
    *(v0 + 128) = *(*(v0 + 64) + 216);

    v27 = (v20 + *v20);
    v21 = swift_task_alloc();
    *(v0 + 136) = v21;
    *v21 = v0;
    v21[1] = sub_24AE5CF5C;
    v22 = *(v0 + 145);

    return v27(v22);
  }

  else
  {

    v23 = *(v0 + 8);

    return v23();
  }
}
void *DataStoreWrapper.__allocating_init(storeWrapper:)(uint64_t a1)
{
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD86C8, &qword_242A0F7E0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v2[3] = v3;
  v2[5] = 0;
  swift_unknownObjectWeakInit();
  v2[2] = a1;
  return v2;
}

void *DataStoreWrapper.init(storeWrapper:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD86C8, &qword_242A0F7E0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v1[3] = v3;
  v1[5] = 0;
  swift_unknownObjectWeakInit();
  v1[2] = a1;
  return v1;
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

uint64_t DataStoreWrapper.delegate.getter()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_242A0C088(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

double sub_242A0630C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(*a1 + 24);
  os_unfair_lock_lock(v3 + 4);
  sub_242A0CB30(&v5);
  os_unfair_lock_unlock(v3 + 4);
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_242A06380(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_lock(v2 + 4);
  sub_242A0CC2C();
  os_unfair_lock_unlock(v2 + 4);
  return swift_unknownObjectRelease();
}

uint64_t DataStoreWrapper.delegate.setter(uint64_t a1)
{
  v2 = *(v1 + 24);
  os_unfair_lock_lock(v2 + 4);
  sub_242A0C0B8();
  os_unfair_lock_unlock(v2 + 4);
  return swift_unknownObjectRelease();
}

void (*DataStoreWrapper.delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 24);
  *(v3 + 24) = v5;
  MEMORY[0x28223BE20](v3);
  os_unfair_lock_lock(v5 + 4);
  sub_242A0CB30(&v7);
  *(v4 + 32) = 0;
  os_unfair_lock_unlock(v5 + 4);
  *v4 = v7;
  return sub_242A06580;
}

void sub_242A06580(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 3);
  if (a2)
  {
    swift_unknownObjectRetain();
    os_unfair_lock_lock(v3 + 4);
    sub_242A0CC2C();
    os_unfair_lock_unlock(v3 + 4);
    swift_unknownObjectRelease();
  }

  else
  {
    os_unfair_lock_lock(v3 + 4);
    sub_242A0CC2C();
    os_unfair_lock_unlock(v3 + 4);
  }

  swift_unknownObjectRelease();
  free(v2);
}

uint64_t DataStoreWrapper.insert<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_242A06698, 0, 0);
}

uint64_t sub_242A06698()
{
  v13 = v0;
  if (qword_27ECD86C0 != -1)
  {
    swift_once();
  }

  v1 = sub_242A0EF34();
  __swift_project_value_buffer(v1, qword_27ECD8950);
  v2 = sub_242A0EF14();
  v3 = sub_242A0F094();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_242A0BAD0(0x5F28747265736E69, 0xEA0000000000293ALL, &v12);
    _os_log_impl(&dword_242A05000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x245D1F640](v5, -1, -1);
    MEMORY[0x245D1F640](v4, -1, -1);
  }

  v6 = *(v0 + 40);
  v7 = swift_allocObject();
  *(v0 + 72) = v7;
  v11 = *(v0 + 48);
  *(v7 + 16) = sub_242A0EF44();
  v8 = swift_allocObject();
  *(v0 + 80) = v8;
  *(v8 + 16) = v11;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;

  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *v9 = v0;
  v9[1] = sub_242A068E4;

  return sub_242A0A900(sub_242A0A900, sub_242A0C190, v8);
}

uint64_t sub_242A068E4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_242A06B64;
  }

  else
  {

    v2 = sub_242A06A00;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_242A06A00()
{
  v15 = v0;
  v1 = v0[12];
  v2 = v0[8];
  v3 = *(v2 + 24);
  v4 = swift_task_alloc();
  *(v4 + 16) = sub_242A0CBCC;
  *(v4 + 24) = v2;
  os_unfair_lock_lock(v3 + 4);
  sub_242A0CB30(&v14);
  os_unfair_lock_unlock(v3 + 4);
  if (v1)
  {
  }

  else
  {
    v6 = v14;

    if (v6)
    {
      v8 = v0[6];
      v7 = v0[7];
      v9 = v0[5];
      ObjectType = swift_getObjectType();
      (*(*(&v6 + 1) + 8))(v9, v8, v7, ObjectType, *(&v6 + 1));
      swift_unknownObjectRelease();
    }

    v11 = v0[9];
    swift_beginAccess();
    v12 = *(v11 + 16);

    v13 = v0[1];

    return v13(v12);
  }
}

uint64_t sub_242A06B64()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_242A06BD0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v66 = a3;
  v75 = a1;
  v65 = sub_242A0F104();
  v8 = *(v65 - 8);
  v9 = MEMORY[0x28223BE20](v65);
  v11 = &v61 - v10;
  v12 = *(a4 - 8);
  v13 = MEMORY[0x28223BE20](v9);
  v64 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v63 = &v61 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v61 - v18;
  v61 = v20;
  MEMORY[0x28223BE20](v17);
  v22 = &v61 - v21;
  if (sub_242A0F014())
  {
    v23 = 0;
    v79 = (v12 + 32);
    v80 = (v12 + 16);
    v68 = (v12 + 48);
    v69 = a5 + 72;
    v73 = (v12 + 8);
    v62 = (v8 + 8);
    v74 = a4;
    v78 = a5;
    v71 = v12;
    v72 = a2;
    v70 = v22;
    v67 = v11;
    while (1)
    {
      v28 = sub_242A0EFF4();
      sub_242A0EFD4();
      if (v28)
      {
        v29 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v23;
        v77 = *(v12 + 16);
        v77(v22, v29, a4);
        v30 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v45 = sub_242A0F144();
        if (v61 != 8)
        {
          __break(1u);
          return;
        }

        v83 = v45;
        v77 = *v80;
        v77(v22, &v83, a4);
        swift_unknownObjectRelease();
        v30 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
LABEL_14:
          __break(1u);
          return;
        }
      }

      v81 = v30;
      v82 = v23;
      v76 = *v79;
      v76(v19, v22, a4);
      v31 = objc_opt_self();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v34 = v75;
      v35 = *(AssociatedConformanceWitness + 32);
      v35(AssociatedTypeWitness, AssociatedConformanceWitness);
      v36 = sub_242A0EF74();

      v37 = [v31 insertNewObjectForEntityForName:v36 inManagedObjectContext:v34];

      v38 = swift_dynamicCastUnknownClass();
      if (!v38)
      {
        break;
      }

      v39 = v38;
      v40 = v85;
      (*(AssociatedConformanceWitness + 56))(v19, v34, AssociatedTypeWitness, AssociatedConformanceWitness);
      if (v40)
      {
        (*v73)(v19, v74);

        return;
      }

      v85 = 0;
      v41 = v78;
      v42 = *(v78 + 72);
      v43 = v37;
      v44 = v67;
      a4 = v74;
      v42(v39, v74, v41);
      if ((*v68)(v44, 1, a4) == 1)
      {
        (*v73)(v19, a4);

        (*v62)(v44, v65);
      }

      else
      {
        v24 = v63;
        v76(v63, v44, a4);
        v77(v64, v24, a4);
        swift_beginAccess();
        sub_242A0F024();
        sub_242A0F004();
        swift_endAccess();

        v25 = *v73;
        (*v73)(v24, a4);
        v25(v19, a4);
      }

      v12 = v71;
      a2 = v72;
      v22 = v70;
      v26 = v81;
      v27 = sub_242A0F014();
      v23 = v82 + 1;
      if (v26 == v27)
      {
        return;
      }
    }

    v85 = v35;
    v82 = v19;

    if (qword_27ECD86C0 != -1)
    {
      swift_once();
    }

    v46 = sub_242A0EF34();
    __swift_project_value_buffer(v46, qword_27ECD8950);
    v47 = sub_242A0EF14();
    v48 = sub_242A0F084();
    v49 = os_log_type_enabled(v47, v48);
    v50 = AssociatedConformanceWitness;
    v51 = v85;
    if (v49)
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v83 = v53;
      *v52 = 136315138;
      v54 = v51(AssociatedTypeWitness, v50);
      v56 = sub_242A0BAD0(v54, v55, &v83);

      *(v52 + 4) = v56;
      v51 = v85;
      _os_log_impl(&dword_242A05000, v47, v48, "MessageStoreManager: Failed to insert %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x245D1F640](v53, -1, -1);
      MEMORY[0x245D1F640](v52, -1, -1);
    }

    [v75 reset];
    v83 = 0;
    v84 = 0xE000000000000000;
    sub_242A0F134();

    v83 = 0xD000000000000011;
    v84 = 0x8000000242A10D70;
    v57 = v51(AssociatedTypeWitness, v50);
    MEMORY[0x245D1EF30](v57);

    v58 = v83;
    v59 = v84;
    sub_242A0C848();
    swift_allocError();
    *v60 = v58;
    *(v60 + 8) = v59;
    *(v60 + 16) = 3;
    swift_willThrow();
    (*v73)(v82, v74);
  }
}

void DataStoreWrapper.fetchObjectIDs<A>(_:)(uint64_t a1, uint64_t a2)
{
  if (qword_27ECD86C0 != -1)
  {
    swift_once();
  }

  v3 = sub_242A0EF34();
  __swift_project_value_buffer(v3, qword_27ECD8950);
  v4 = sub_242A0EF14();
  v5 = sub_242A0F094();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_242A05000, v4, v5, "fetchObjectIDs start", v6, 2u);
    MEMORY[0x245D1F640](v6, -1, -1);
  }

  MEMORY[0x28223BE20](v7);
  v8 = sub_242A0D2B8(0);
  if (!v2)
  {
    v10 = v8;
    v11 = v9;
    v12 = [v9 viewContext];

    MEMORY[0x28223BE20](v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD86D0, &qword_242A0F7F8);
    sub_242A0F0A4();
  }
}

uint64_t sub_242A07594(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_242A0F044();
  if (!v19)
  {
    return sub_242A0EFE4();
  }

  v41 = v19;
  v45 = sub_242A0F184();
  v32 = sub_242A0F194();
  sub_242A0F164();
  result = sub_242A0F034();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_242A0F074();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_242A0F174();
      result = sub_242A0F054();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t DataStoreWrapper.fetchObjectIDsAsync<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_242A079D8, 0, 0);
}

uint64_t sub_242A079D8()
{
  if (qword_27ECD86C0 != -1)
  {
    swift_once();
  }

  v1 = sub_242A0EF34();
  __swift_project_value_buffer(v1, qword_27ECD8950);
  v2 = sub_242A0EF14();
  v3 = sub_242A0F094();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_242A05000, v2, v3, "fetchObjectIDs start", v4, 2u);
    MEMORY[0x245D1F640](v4, -1, -1);
  }

  v9 = v0[1];

  v5 = swift_allocObject();
  v0[2].i64[1] = v5;
  v5[1] = vextq_s8(v9, v9, 8uLL);
  v6 = v9.i64[0];
  v7 = swift_task_alloc();
  v0[3].i64[0] = v7;
  *v7 = v0;
  v7[1] = sub_242A07B90;

  return sub_242A0AE30(sub_242A0C27C, v5);
}

uint64_t sub_242A07B90(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_242A07CE8, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_242A07CE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_242A07D4C@<X0>(void (*a3)(char *, char *)@<X3>, uint64_t *a4@<X8>)
{
  result = sub_242A0F0D4();
  if (!v4)
  {
    MEMORY[0x28223BE20](result);
    KeyPath = swift_getKeyPath();
    v9 = sub_242A0F024();
    v10 = sub_242A0C7FC();
    WitnessTable = swift_getWitnessTable();
    v13 = sub_242A07594(a3, KeyPath, v9, v10, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v12);

    *a4 = v13;
  }

  return result;
}

void DataStoreWrapper.fetch<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27ECD86C0 != -1)
  {
    swift_once();
  }

  v3 = sub_242A0EF34();
  __swift_project_value_buffer(v3, qword_27ECD8950);
  v4 = sub_242A0EF14();
  v5 = sub_242A0F094();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_242A05000, v4, v5, "fetch start", v6, 2u);
    MEMORY[0x245D1F640](v6, -1, -1);
  }

  MEMORY[0x28223BE20](v7);
  sub_242A0F024();
  sub_242A0E240();
}

uint64_t DataStoreWrapper.fetchAsync<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_242A08018, 0, 0);
}

uint64_t sub_242A08018()
{
  if (qword_27ECD86C0 != -1)
  {
    swift_once();
  }

  v1 = sub_242A0EF34();
  __swift_project_value_buffer(v1, qword_27ECD8950);
  v2 = sub_242A0EF14();
  v3 = sub_242A0F094();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_242A05000, v2, v3, "fetch start", v4, 2u);
    MEMORY[0x245D1F640](v4, -1, -1);
  }

  v5 = *(v0 + 24);
  v11 = *(v0 + 32);

  v6 = swift_allocObject();
  *(v0 + 56) = v6;
  *(v6 + 16) = v11;
  *(v6 + 32) = v5;
  v7 = v5;
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  v9 = sub_242A0F024();
  *v8 = v0;
  v8[1] = sub_242A081E0;

  return sub_242A0DCFC(v0 + 16, sub_242A0C318, v6, v9);
}

uint64_t sub_242A081E0()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_242A08318;
  }

  else
  {

    v2 = sub_242A082FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_242A08318()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_242A0837C@<X0>(uint64_t *a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  result = sub_242A0F0D4();
  if (!v5)
  {
    MEMORY[0x28223BE20](result);
    sub_242A0F024();
    swift_getWitnessTable();
    v8 = sub_242A0EFB4();

    *a5 = v8;
  }

  return result;
}

void DataStoreWrapper.fetchCount<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27ECD86C0 != -1)
  {
    swift_once();
  }

  v4 = sub_242A0EF34();
  __swift_project_value_buffer(v4, qword_27ECD8950);
  v5 = sub_242A0EF14();
  v6 = sub_242A0F094();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_242A05000, v5, v6, "fetchCount start", v7, 2u);
    MEMORY[0x245D1F640](v7, -1, -1);
  }

  MEMORY[0x28223BE20](v8);
  v9 = sub_242A0D2B8(0);
  if (!v3)
  {
    v11 = v9;
    v12 = v10;
    v13 = [v10 viewContext];

    MEMORY[0x28223BE20](v14);
    sub_242A0F0A4();
  }
}

uint64_t DataStoreWrapper.fetchCountAsync<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_242A086D0, 0, 0);
}

uint64_t sub_242A086D0()
{
  if (qword_27ECD86C0 != -1)
  {
    swift_once();
  }

  v1 = sub_242A0EF34();
  __swift_project_value_buffer(v1, qword_27ECD8950);
  v2 = sub_242A0EF14();
  v3 = sub_242A0F094();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_242A05000, v2, v3, "fetchCount start", v4, 2u);
    MEMORY[0x245D1F640](v4, -1, -1);
  }

  v5 = *(v0 + 16);
  v10 = *(v0 + 24);

  v6 = swift_allocObject();
  *(v0 + 48) = v6;
  *(v6 + 16) = v10;
  *(v6 + 32) = v5;
  v7 = v5;
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  *v8 = v0;
  v8[1] = sub_242A08890;

  return sub_242A0B2FC(sub_242A0CB48, v6);
}

uint64_t sub_242A08890(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_242A089E8, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_242A089E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DataStoreWrapper.update<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_242A08A70, 0, 0);
}

uint64_t sub_242A08A70()
{
  if (qword_27ECD86C0 != -1)
  {
    swift_once();
  }

  v1 = sub_242A0EF34();
  __swift_project_value_buffer(v1, qword_27ECD8950);
  v2 = sub_242A0EF14();
  v3 = sub_242A0F094();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_242A05000, v2, v3, "update start", v4, 2u);
    MEMORY[0x245D1F640](v4, -1, -1);
  }

  v5 = *(v0 + 16);
  v9 = *(v0 + 24);

  v6 = swift_allocObject();
  *(v0 + 48) = v6;
  *(v6 + 16) = v9;
  *(v6 + 32) = v5;

  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_242A08C34;

  return sub_242A0A900(sub_242A0A900, sub_242A0C3F0, v6);
}

uint64_t sub_242A08C34()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_242A089E8;
  }

  else
  {

    v2 = sub_242A08D50;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_242A08D50()
{
  v13 = v0;
  v1 = v0[8];
  v2 = v0[5];
  v3 = *(v2 + 24);
  v4 = swift_task_alloc();
  *(v4 + 16) = sub_242A0CBCC;
  *(v4 + 24) = v2;
  os_unfair_lock_lock(v3 + 4);
  sub_242A0CB30(&v12);
  os_unfair_lock_unlock(v3 + 4);
  if (v1)
  {
  }

  else
  {
    v6 = v12;

    if (v6)
    {
      v8 = v0[3];
      v7 = v0[4];
      v9 = v0[2];
      ObjectType = swift_getObjectType();
      (*(*(&v6 + 1) + 16))(v9, v8, v7, ObjectType, *(&v6 + 1));
      swift_unknownObjectRelease();
    }

    v11 = v0[1];

    return v11();
  }
}

void sub_242A08E84(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v89 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = sub_242A0F104();
  v92 = *(v87 - 8);
  v9 = MEMORY[0x28223BE20](v87);
  v86 = &v77 - v10;
  v91 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v105 = &v77 - v12;
  v95 = *(a3 - 8);
  v13 = *(v95 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v94 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v111 = &v77 - v16;
  MEMORY[0x28223BE20](v15);
  v106 = &v77 - v17;
  v96 = a2;
  v118 = a2;
  v115 = a3;
  v116 = a4;
  KeyPath = swift_getKeyPath();
  v113 = a4;
  v114 = KeyPath;
  v19 = sub_242A0F024();
  WitnessTable = swift_getWitnessTable();
  v22 = sub_242A07594(sub_242A0CBAC, v112, v19, AssociatedTypeWitness, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v21);
  v110 = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD86F8, &qword_242A0FAF8);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_242A0F7C0;
  v24 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = (*(AssociatedConformanceWitness + 40))(v24, AssociatedConformanceWitness);
  *(v23 + 56) = MEMORY[0x277D837D0];
  *(v23 + 32) = v26;
  *(v23 + 40) = v27;
  v90 = AssociatedTypeWitness;
  *(v23 + 88) = sub_242A0F024();
  *(v23 + 64) = v22;
  v28 = sub_242A0EF74();
  v29 = sub_242A0EFC4();

  v30 = [objc_opt_self() predicateWithFormat:v28 argumentArray:v29];

  v31 = [swift_getObjCClassFromMetadata() fetchRequest];
  objc_opt_self();
  v80 = v31;
  [swift_dynamicCastObjCClassUnconditional() setPredicate_];
  v32 = v110;
  v33 = sub_242A0F0D4();
  if (v32)
  {
    v93 = v32;

LABEL_3:
    v34 = &v109;
    goto LABEL_27;
  }

  v78 = v30;
  v88 = AssociatedConformanceWitness;
  v103 = v13;
  v107 = a4;
  v118 = v33;
  MEMORY[0x28223BE20](v33);
  v35 = v107;
  *(&v77 - 2) = a3;
  *(&v77 - 1) = v35;
  v36 = swift_getKeyPath();
  v37 = v107;
  v38 = MEMORY[0x28223BE20](v36);
  *(&v77 - 4) = a3;
  *(&v77 - 3) = v37;
  *(&v77 - 2) = v38;
  v85 = v24;
  v39 = sub_242A0F024();
  v40 = v90;
  v41 = swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  v101 = v41;
  v102 = v39;
  v104 = sub_242A0EF54();
  v93 = 0;

  v42 = v96;
  if (!sub_242A0F014())
  {
LABEL_26:

    v34 = v108;
LABEL_27:

    return;
  }

  v44 = v40;
  v45 = 0;
  v108[0] = *(v37 + 64);
  v108[1] = v37 + 64;
  v46 = v95;
  v109 = (v95 + 16);
  v100 = (v95 + 32);
  v99 = (v91 + 8);
  v84 = v88 + 72;
  v79 = v88 + 64;
  v98 = (v95 + 8);
  v83 = (v91 + 56);
  v82 = (v92 + 1);
  *&v43 = 136315138;
  v81 = v43;
  v47 = v103;
  v97 = a3;
  while (1)
  {
    v49 = sub_242A0EFF4();
    sub_242A0EFD4();
    if ((v49 & 1) == 0)
    {
      break;
    }

    v50 = *(v46 + 16);
    v51 = v106;
    v50(v106, v42 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v45, a3);
    v52 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      goto LABEL_29;
    }

LABEL_11:
    v110 = v52;
    (*v100)(v111, v51, a3);
    v53 = v105;
    (v108[0])(a3, v37);
    sub_242A0EF64();
    (*v99)(v53, v44);
    if (v118 && (swift_getWitnessTable(), sub_242A0F064(), v54 = v117, , v54))
    {
      v55 = v88;
      v56 = v111;
      v57 = v85;
      v58 = (*(v88 + 72))(v111, v85, v88);
      v59 = v103;
      if (v58)
      {
        (*v98)(v56, a3);
      }

      else
      {
        v74 = v93;
        (*(v55 + 64))(v56, v89, v57, v55);
        v75 = *v98;
        v93 = v74;
        if (v74)
        {
          v75(v56, a3);

          goto LABEL_3;
        }

        v75(v56, a3);
      }

      v37 = v107;
      v47 = v59;
      v44 = v90;
    }

    else
    {
      v60 = v94;
      if (qword_27ECD86C0 != -1)
      {
        swift_once();
      }

      v61 = sub_242A0EF34();
      __swift_project_value_buffer(v61, qword_27ECD8950);
      v50(v60, v111, a3);
      v62 = sub_242A0EF14();
      v63 = sub_242A0F094();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = v60;
        v92 = swift_slowAlloc();
        v118 = v92;
        *v64 = v81;
        v66 = v37;
        v67 = v86;
        (v108[0])(v97, v66);
        (*v83)(v67, 0, 1, v44);
        v91 = sub_242A0CC44(v67, v44);
        v69 = v68;
        (*v82)(v67, v87);
        v70 = *v98;
        (*v98)(v65, v97);
        v71 = sub_242A0BAD0(v91, v69, &v118);

        *(v64 + 4) = v71;
        _os_log_impl(&dword_242A05000, v62, v63, "Managed object not found for update: %s", v64, 0xCu);
        v72 = v92;
        __swift_destroy_boxed_opaque_existential_0(v92);
        MEMORY[0x245D1F640](v72, -1, -1);
        v73 = v64;
        a3 = v97;
        MEMORY[0x245D1F640](v73, -1, -1);

        v70(v111, a3);
      }

      else
      {

        v48 = *v98;
        (*v98)(v60, a3);
        v48(v111, a3);
      }

      v37 = v107;
      v42 = v96;
      v46 = v95;
      v47 = v103;
    }

    ++v45;
    if (v110 == sub_242A0F014())
    {
      goto LABEL_26;
    }
  }

  v76 = sub_242A0F144();
  if (v47 != 8)
  {
    goto LABEL_30;
  }

  v118 = v76;
  v50 = *v109;
  v51 = v106;
  (*v109)(v106, &v118, a3);
  swift_unknownObjectRelease();
  v52 = v45 + 1;
  if (!__OFADD__(v45, 1))
  {
    goto LABEL_11;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_242A09A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 48);
  v5 = swift_checkMetadataState();
  return v4(v5, AssociatedConformanceWitness);
}

uint64_t DataStoreWrapper.delete<A>(predicate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x2822009F8](sub_242A09B5C, 0, 0);
}

uint64_t sub_242A09B5C()
{
  if (qword_27ECD86C0 != -1)
  {
    swift_once();
  }

  v1 = sub_242A0EF34();
  __swift_project_value_buffer(v1, qword_27ECD8950);
  v2 = sub_242A0EF14();
  v3 = sub_242A0F094();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_242A05000, v2, v3, "delete start", v4, 2u);
    MEMORY[0x245D1F640](v4, -1, -1);
  }

  v5 = *(v0 + 32);
  v11 = *(v0 + 40);

  v6 = swift_allocObject();
  *(v0 + 64) = v6;
  *(v6 + 16) = v11;
  *(v6 + 32) = v5;
  v7 = v5;
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  v9 = sub_242A0F024();
  *(v0 + 80) = v9;
  *v8 = v0;
  v8[1] = sub_242A09D28;

  return sub_242A0DCFC(v0 + 16, sub_242A0C410, v6, v9);
}

uint64_t sub_242A09D28()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_242A0A09C;
  }

  else
  {

    v2 = sub_242A09E44;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_242A09E44()
{
  v23 = v0;
  v1 = v0[2];
  v0[3] = v1;
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[5];
  v7 = swift_task_alloc();
  *v7 = v6;
  v7[1] = v4;
  KeyPath = swift_getKeyPath();

  v9 = swift_task_alloc();
  *(v9 + 16) = v4;
  *(v9 + 24) = KeyPath;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_242A07594(sub_242A0C448, v9, v3, AssociatedTypeWitness, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v12);

  v14 = *(v5 + 24);
  v15 = swift_task_alloc();
  *(v15 + 16) = sub_242A0CBCC;
  *(v15 + 24) = v5;
  os_unfair_lock_lock(v14 + 4);
  sub_242A0CB30(&v22);
  os_unfair_lock_unlock(v14 + 4);
  if (v2)
  {
  }

  else
  {
    v17 = v22;

    if (v17)
    {
      ObjectType = swift_getObjectType();
      v21 = *(*(&v17 + 1) + 24);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v21(v13, AssociatedTypeWitness, AssociatedConformanceWitness, ObjectType, *(&v17 + 1));
      swift_unknownObjectRelease();
    }

    v20 = v0[1];

    return v20(v1);
  }
}

uint64_t sub_242A0A09C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_242A0A100(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v59 = a5;
  v64 = *MEMORY[0x277D85DE8];
  v10 = sub_242A0EF74();
  [a1 setName_];

  v11 = sub_242A0EF74();
  [a1 setTransactionAuthor_];

  if (qword_27ECD86C0 != -1)
  {
    swift_once();
  }

  v12 = sub_242A0EF34();
  v58 = __swift_project_value_buffer(v12, qword_27ECD8950);
  v13 = sub_242A0EF14();
  v14 = sub_242A0F094();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_242A05000, v13, v14, "Start deleting data from the store...", v15, 2u);
    MEMORY[0x245D1F640](v15, -1, -1);
  }

  swift_getAssociatedTypeWitness();
  v16 = [swift_getObjCClassFromMetadata() fetchRequest];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setPredicate_];
  v17 = sub_242A0F0D4();
  if (v5)
  {

    return;
  }

  v18 = v17;
  v56 = v54;
  v57 = v16;
  *&v63[0] = v17;
  MEMORY[0x28223BE20](v17);
  v53[2] = a3;
  v53[3] = a4;
  v19 = sub_242A0F024();
  swift_getWitnessTable();
  v20 = sub_242A0EFB4();
  v54[1] = 0;
  v55 = v20;
  *&v63[0] = v18;
  MEMORY[0x28223BE20](v20);
  v53[-2] = a3;
  v53[-1] = a4;
  KeyPath = swift_getKeyPath();
  v22 = MEMORY[0x28223BE20](KeyPath);
  v56 = a3;
  v53[-4] = a3;
  v53[-3] = a4;
  v53[-2] = v22;
  v23 = sub_242A0C7FC();
  WitnessTable = swift_getWitnessTable();
  v26 = sub_242A07594(sub_242A0C79C, &v53[-6], v19, v23, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v25);

  if (v26 >> 62)
  {
    v27 = sub_242A0F1A4();
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = v59;
  if (!v27)
  {

    v40 = sub_242A0EFE4();

    *v28 = v40;
    return;
  }

  v29 = objc_allocWithZone(MEMORY[0x277CBE360]);
  v30 = sub_242A0EFC4();

  v31 = [v29 initWithObjectIDs_];

  [v31 setResultType_];
  *&v63[0] = 0;
  v32 = [a1 executeRequest:v31 error:v63];
  v33 = *&v63[0];
  if (!v32)
  {
    v41 = *&v63[0];

    sub_242A0EEE4();

    swift_willThrow();
    return;
  }

  v34 = v32;
  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  v36 = v57;
  if (v35)
  {
    v37 = v35;
    v38 = v33;
    v39 = v34;
    if ([v37 result])
    {
      sub_242A0F114();
      swift_unknownObjectRelease();
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
    }

    v63[0] = v61;
    v63[1] = v62;
    if (!*(&v62 + 1))
    {

      sub_242A0C89C(v63);
      goto LABEL_27;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_27;
    }

    v43 = v60;

    if (v43 >= 1)
    {
      v44 = sub_242A0EF14();
      v45 = sub_242A0F094();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 134217984;
        *(v46 + 4) = v43;
        _os_log_impl(&dword_242A05000, v44, v45, "Deleted %ld objects.", v46, 0xCu);
        v47 = v46;
        v36 = v57;
        MEMORY[0x245D1F640](v47, -1, -1);
      }

      *v59 = v55;
      return;
    }
  }

  else
  {
    v42 = v33;
  }

LABEL_27:
  v48 = sub_242A0EF14();
  v49 = sub_242A0F094();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_242A05000, v48, v49, "Failed to execute batch delete request.", v50, 2u);
    v51 = v50;
    v36 = v57;
    MEMORY[0x245D1F640](v51, -1, -1);
  }

  sub_242A0C848();
  swift_allocError();
  *v52 = xmmword_242A0F7D0;
  *(v52 + 16) = 8;
  swift_willThrow();
}

id sub_242A0A84C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 objectID];
  *a2 = result;
  return result;
}

uint64_t DataStoreWrapper.deinit()
{

  sub_242A0C474(v0 + 32);
  return v0;
}

uint64_t DataStoreWrapper.__deallocating_deinit()
{

  sub_242A0C474(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_242A0A900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_242A0F0B4();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_242A0A9C4, 0, 0);
}

uint64_t sub_242A0A9C4()
{
  v1 = sub_242A0D2B8(0);
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v8 = v7;
  v9 = [v7 newBackgroundContext];
  v0[9] = v9;
  [v9 setMergePolicy_];
  [v9 setUndoManager_];

  v10 = swift_allocObject();
  v0[10] = v10;
  v10[2] = v6;
  v10[3] = v5;
  v10[4] = v9;
  (*(v3 + 104))(v2, *MEMORY[0x277CBE110], v4);

  v9;
  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = sub_242A0ABC4;
  v12 = v0[8];
  v13 = v0[2];
  v14 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x28210EE50](v13, v12, sub_242A0CB10, v10, v14);
}

uint64_t sub_242A0ABC4()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_242A0ADC4;
  }

  else
  {
    v5 = sub_242A0AD58;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_242A0AD58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_242A0ADC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_242A0AE30(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_242A0F0B4();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_242A0AEF4, 0, 0);
}

uint64_t sub_242A0AEF4()
{
  v1 = sub_242A0D2B8(0);
  v2 = v0[8];
  v3 = v1;
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[3];
  v6 = v0[4];
  v9 = v8;
  v10 = [v8 newBackgroundContext];
  v0[9] = v10;
  [v10 setMergePolicy_];
  [v10 setUndoManager_];

  v11 = swift_allocObject();
  v0[10] = v11;
  v11[2] = v7;
  v11[3] = v6;
  v11[4] = v10;
  (*(v5 + 104))(v2, *MEMORY[0x277CBE110], v4);

  v10;
  v12 = swift_task_alloc();
  v0[11] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD86D0, &qword_242A0F7F8);
  *v12 = v0;
  v12[1] = sub_242A0B104;
  v14 = v0[8];

  return MEMORY[0x28210EE50](v0 + 2, v14, sub_242A0CC14, v11, v13);
}

uint64_t sub_242A0B104()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);

  if (v0)
  {
    v3 = sub_242A0ADC4;
  }

  else
  {
    v3 = sub_242A0B288;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_242A0B288()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_242A0B2FC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_242A0F0B4();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_242A0B3C0, 0, 0);
}

uint64_t sub_242A0B3C0()
{
  v1 = sub_242A0D2B8(0);
  v2 = v0[8];
  v3 = v1;
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[3];
  v6 = v0[4];
  v9 = v8;
  v10 = [v8 newBackgroundContext];
  v0[9] = v10;
  [v10 setMergePolicy_];
  [v10 setUndoManager_];

  v11 = swift_allocObject();
  v0[10] = v11;
  v11[2] = v7;
  v11[3] = v6;
  v11[4] = v10;
  (*(v5 + 104))(v2, *MEMORY[0x277CBE110], v4);

  v10;
  v12 = swift_task_alloc();
  v0[11] = v12;
  *v12 = v0;
  v12[1] = sub_242A0B5C0;
  v13 = v0[8];
  v14 = MEMORY[0x277D83B88];

  return MEMORY[0x28210EE50](v0 + 2, v13, sub_242A0CBFC, v11, v14);
}

uint64_t sub_242A0B5C0()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);

  if (v0)
  {
    v3 = sub_242A0CB98;
  }

  else
  {
    v3 = sub_242A0CBA4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

id sub_242A0B744(uint64_t (*a1)(void *), uint64_t a2, void *a3)
{
  v7[1] = *MEMORY[0x277D85DE8];
  result = a1(a3);
  if (!v3)
  {
    result = [a3 hasChanges];
    if (result)
    {
      v7[0] = 0;
      if ([a3 save_])
      {
        return v7[0];
      }

      else
      {
        v6 = v7[0];
        sub_242A0EEE4();

        return swift_willThrow();
      }
    }
  }

  return result;
}

void *sub_242A0B838(void *(*a1)(void *__return_ptr, void *), uint64_t a2, void *a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  result = a1(v9, a3);
  if (!v3)
  {
    if ([a3 hasChanges])
    {
      v8 = 0;
      if (![a3 save_])
      {
        v7 = v8;
        sub_242A0EEE4();

        swift_willThrow();
      }

      v6 = v8;
    }

    return v9[0];
  }

  return result;
}

void *sub_242A0B920(void *(*a1)(void *__return_ptr, void *), uint64_t a2, void *a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  result = a1(v9, a3);
  if (!v3)
  {
    if ([a3 hasChanges])
    {
      v8 = 0;
      if (![a3 save_])
      {
        v7 = v8;
        sub_242A0EEE4();

        return swift_willThrow();
      }

      v6 = v8;
    }

    return v9[0];
  }

  return result;
}

uint64_t sub_242A0BA00(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_242A0BA74(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_242A0BAD0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_242A0BAD0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_242A0BB9C(v11, 0, 0, 1, a1, a2);
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
    sub_242A0CA70(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_242A0BB9C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_242A0BCA8(a5, a6);
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
    result = sub_242A0F154();
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

void *sub_242A0BCA8(uint64_t a1, unint64_t a2)
{
  v3 = sub_242A0BCF4(a1, a2);
  sub_242A0BE24(&unk_285538310);
  return v3;
}

void *sub_242A0BCF4(uint64_t a1, unint64_t a2)
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

  v6 = sub_242A0BF10(v5, 0);
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

  result = sub_242A0F154();
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
        v10 = sub_242A0EFA4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_242A0BF10(v10, 0);
        result = sub_242A0F124();
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

uint64_t sub_242A0BE24(uint64_t result)
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

  result = sub_242A0BF84(result, v11, 1, v3);
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

void *sub_242A0BF10(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8700, &qword_242A0FB60);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_242A0BF84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8700, &qword_242A0FB60);
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

_BYTE **sub_242A0C078(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
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

uint64_t sub_242A0C118()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_242A0C150()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
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

uint64_t sub_242A0C244()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_242A0C2E0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_242A0C37C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_242A0F0C4();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_242A0C3B8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

__n128 sub_242A0C43C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t get_enum_tag_for_layout_string_16CallsPersistence21DataStoreWrapperErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 16) & 0xF;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_242A0C4CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 17))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 16);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_242A0C514(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 16) = 0;
    *result = a2 - 248;
    *(result + 8) = 0;
    if (a3 >= 0xF8)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
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

uint64_t sub_242A0C55C(uint64_t result, unsigned int a2)
{
  if (a2 >= 8)
  {
    *result = a2 - 8;
    *(result + 8) = 0;
    LOBYTE(a2) = 8;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_242A0C648(uint64_t a1, int a2)
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

uint64_t sub_242A0C668(uint64_t result, int a2, int a3)
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
  if (!qword_27ECD86D8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27ECD86D8);
    }
  }
}

uint64_t sub_242A0C708@<X0>(uint64_t *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 40);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double sub_242A0C740@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(&v5);
  if (!v2)
  {
    result = *&v5;
    *a1 = v5;
  }

  return result;
}

void sub_242A0C79C(id *a1)
{
  v1 = *a1;
  swift_getAtKeyPath();
}

unint64_t sub_242A0C7FC()
{
  result = qword_27ECD86E0;
  if (!qword_27ECD86E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECD86E0);
  }

  return result;
}

unint64_t sub_242A0C848()
{
  result = qword_27ECD86E8;
  if (!qword_27ECD86E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECD86E8);
  }

  return result;
}

uint64_t sub_242A0C89C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD86F0, &qword_242A0FAF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_242A0C914@<X0>(void *a1@<X8>)
{
  result = sub_242A0B920(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_242A0C9D0@<X0>(void *a1@<X8>)
{
  result = sub_242A0B838(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_242A0CA1C(id *a1)
{
  v1 = *a1;
  swift_getAtKeyPath();
}

uint64_t sub_242A0CA70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroy_61Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_242A0CC44(uint64_t a1, uint64_t a2)
{
  v4 = sub_242A0F104();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a2 - 8);
  v10 = MEMORY[0x28223BE20](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  (*(v5 + 16))(v8, a1, v4);
  if ((*(v9 + 48))(v8, 1, a2) == 1)
  {
    (*(v5 + 8))(v8, v4);
    return 7104878;
  }

  else
  {
    (*(v9 + 32))(v14, v8, a2);
    (*(v9 + 16))(v12, v14, a2);
    v16 = sub_242A0EF84();
    (*(v9 + 8))(v14, a2);
    return v16;
  }
}

uint64_t sub_242A0CE68()
{
  v0 = sub_242A0EF34();
  __swift_allocate_value_buffer(v0, qword_27ECD8950);
  __swift_project_value_buffer(v0, qword_27ECD8950);
  return sub_242A0EF24();
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

uint64_t sub_242A0CF58()
{
  v1 = *v0;
  sub_242A0F204();
  MEMORY[0x245D1F1B0](v1);
  return sub_242A0F224();
}

uint64_t sub_242A0CFCC(uint64_t a1)
{
  v2 = *v1;
  sub_242A0F204();
  MEMORY[0x245D1F1B0](v2);
  return sub_242A0F224();
}

uint64_t StoreWrapper.__allocating_init(containerName:model:storeDescription:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  StoreWrapper.init(containerName:model:storeDescription:)(a1, a2, a3, a4);
  return v8;
}

void *StoreWrapper.init(containerName:model:storeDescription:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v4[2] = 0;
  v4[3] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8708, &unk_242A0FBA0);
  v9 = swift_allocObject();
  *(v9 + 36) = 0;
  v10 = (v9 + 36);
  *(v9 + 24) = 0;
  *(v9 + 16) = 0;
  v11 = v9 + 16;
  *(v9 + 32) = 2;
  v4[4] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD86C8, &qword_242A0F7E0);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v4[5] = v12;
  v4[6] = a1;
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = a4;
  v13 = a3;
  v14 = a4;

  os_unfair_lock_lock(v10);
  sub_242A0D660(v11, v18);
  os_unfair_lock_unlock(v10);

  v15 = v18[0];
  v16 = v18[1];

  return v4;
}

uint64_t StoreWrapper.__allocating_init(containerName:modelURL:storeDescription:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = sub_242A0E514(a3);
  if (v4)
  {
    v11 = sub_242A0EF04();
    (*(*(v11 - 8) + 8))(a3, v11);
  }

  else
  {
    v12 = v10;
    type metadata accessor for StoreWrapper();
    v5 = swift_allocObject();
    StoreWrapper.init(containerName:model:storeDescription:)(a1, a2, v12, a4);
    v13 = sub_242A0EF04();
    (*(*(v13 - 8) + 8))(a3, v13);
  }

  return v5;
}

uint64_t sub_242A0D2B8(char a1)
{
  v4 = *(v1 + 32);

  os_unfair_lock_lock(v4 + 9);
  sub_242A0ED64(&v4[4], &v7);
  v5 = v4 + 9;
  if (v2)
  {
    os_unfair_lock_unlock(v5);

    if (a1)
    {
      swift_willThrow();
    }

    else
    {
      v1 = sub_242A0D2B8(1);
    }
  }

  else
  {
    os_unfair_lock_unlock(v5);
    v1 = v7;
  }

  return v1;
}

id sub_242A0D38C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v7 == 1)
  {
    if (qword_27ECD86C0 != -1)
    {
      swift_once();
    }

    v10 = sub_242A0EF34();
    __swift_project_value_buffer(v10, qword_27ECD8950);
    v11 = v6;
    v12 = sub_242A0EF14();
    v13 = sub_242A0F094();
    sub_242A0EAC8(v6, v5, 1);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = v6;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_242A05000, v12, v13, "Attempting to recover from error %@", v14, 0xCu);
      sub_242A0E9B4(v15);
      MEMORY[0x245D1F640](v15, -1, -1);
      MEMORY[0x245D1F640](v14, -1, -1);
      sub_242A0EAC8(v6, v5, 1);
    }

    else
    {

      sub_242A0EAC8(v6, v5, 1);
    }
  }

  else
  {
    if (!*(a1 + 16))
    {
      *a2 = v6;
      a2[1] = v5;
      v8 = v6;
      return v5;
    }

    sub_242A0EAC8(*a1, v5, v7);
    if (qword_27ECD86C0 != -1)
    {
      swift_once();
    }

    v18 = sub_242A0EF34();
    __swift_project_value_buffer(v18, qword_27ECD8950);
    v19 = sub_242A0EF14();
    v20 = sub_242A0F094();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_242A05000, v19, v20, "Attempting initial store load", v21, 2u);
      MEMORY[0x245D1F640](v21, -1, -1);
    }
  }

  v22 = sub_242A0D67C();
  if (v2)
  {
    *a1 = v2;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    swift_willThrow();
    return v2;
  }

  else
  {
    *a1 = v22;
    *(a1 + 8) = v23;
    *(a1 + 16) = 0;
    *a2 = v22;
    a2[1] = v23;
    v24 = v23;
    v25 = v22;
    return v24;
  }
}

id sub_242A0D67C()
{
  v2 = *(v0 + 64);
  v3 = sub_242A0D85C(v2);
  if (!v1)
  {
    v4 = v3;
    v5 = v2;
    v6 = [v4 viewContext];
    [v6 setAutomaticallyMergesChangesFromParent_];

    if (qword_27ECD86C0 != -1)
    {
      swift_once();
    }

    v7 = sub_242A0EF34();
    __swift_project_value_buffer(v7, qword_27ECD8950);
    v2 = v5;
    v8 = v4;
    v9 = sub_242A0EF14();
    v10 = sub_242A0F094();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315138;
      v13 = v2;
      v14 = v8;
      v15 = sub_242A0EF84();
      v17 = sub_242A0BAD0(v15, v16, &v19);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_242A05000, v9, v10, "Loaded container wrapper: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x245D1F640](v12, -1, -1);
      MEMORY[0x245D1F640](v11, -1, -1);
    }
  }

  return v2;
}

id sub_242A0D85C(void *a1)
{
  v2 = v1;
  v35[1] = *MEMORY[0x277D85DE8];
  if (qword_27ECD86C0 != -1)
  {
    swift_once();
  }

  v4 = sub_242A0EF34();
  __swift_project_value_buffer(v4, qword_27ECD8950);

  v5 = a1;
  v6 = sub_242A0EF14();
  v7 = sub_242A0F094();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    v10 = *(v2 + 72);
    *(v8 + 4) = v10;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v10;
    v9[1] = v5;
    v11 = v5;
    v12 = v10;
    _os_log_impl(&dword_242A05000, v6, v7, "Loading container with storeDescription: %@ model: %@", v8, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8728, &unk_242A0FCA0);
    swift_arrayDestroy();
    MEMORY[0x245D1F640](v9, -1, -1);
    MEMORY[0x245D1F640](v8, -1, -1);
  }

  v13 = objc_allocWithZone(MEMORY[0x277CBE4A0]);
  v14 = sub_242A0EF74();
  v15 = [v13 initWithName:v14 managedObjectModel:v5];

  v16 = *(v2 + 72);
  sub_242A0E96C(0, &qword_27ECD8710, 0x277CCABB0);
  v17 = sub_242A0F0F4();
  [v16 setOption:v17 forKey:*MEMORY[0x277CBE210]];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8718, &qword_242A0FC98);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_242A0FB90;
  *(v18 + 32) = v16;
  sub_242A0E96C(0, &qword_27ECD8720, 0x277CBE4E0);
  v19 = v16;
  v20 = sub_242A0EFC4();

  [v15 setPersistentStoreDescriptions_];

  v21 = sub_242A0EF14();
  v22 = sub_242A0F094();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138543362;
    *(v23 + 4) = v19;
    *v24 = v19;
    v25 = v19;
    _os_log_impl(&dword_242A05000, v21, v22, "MessageContainer: Attempting to load persistent store with description: %{public}@", v23, 0xCu);
    sub_242A0E9B4(v24);
    MEMORY[0x245D1F640](v24, -1, -1);
    MEMORY[0x245D1F640](v23, -1, -1);
  }

  v35[0] = 0;
  if ([v15 load_])
  {
    v26 = v35[0];
    v27 = v15;
    v28 = sub_242A0EF14();
    v29 = sub_242A0F094();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v27;
      *v31 = v27;
      v32 = v27;
      _os_log_impl(&dword_242A05000, v28, v29, "Loaded container: %@", v30, 0xCu);
      sub_242A0E9B4(v31);
      MEMORY[0x245D1F640](v31, -1, -1);
      MEMORY[0x245D1F640](v30, -1, -1);
    }
  }

  else
  {
    v33 = v35[0];
    sub_242A0EEE4();

    swift_willThrow();
  }

  return v15;
}

uint64_t sub_242A0DCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_242A0F0B4();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_242A0DDC4, 0, 0);
}

uint64_t sub_242A0DDC4()
{
  v1 = sub_242A0D2B8(0);
  v2 = v0[9];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v7 = v6;
  v8 = [v6 newBackgroundContext];
  v0[10] = v8;
  [v8 setMergePolicy_];
  [v8 setUndoManager_];

  v9 = swift_allocObject();
  v0[11] = v9;
  v9[2] = v4;
  v9[3] = v5;
  v9[4] = v3;
  v9[5] = v8;
  v10 = *MEMORY[0x277CBE110];
  v11 = sub_242A0F0B4();
  (*(*(v11 - 8) + 104))(v2, v10, v11);

  v8;
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_242A0DFD4;
  v13 = v0[9];
  v14 = v0[5];
  v15 = v0[2];

  return MEMORY[0x28210EE50](v15, v13, sub_242A0ED4C, v9, v14);
}

uint64_t sub_242A0DFD4()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 104) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_242A0E1D4;
  }

  else
  {
    v5 = sub_242A0E168;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_242A0E168()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_242A0E1D4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_242A0E240()
{
  v5 = sub_242A0D2B8(0);
  if (!v4)
  {
    v7 = v5;
    v8 = v6;
    v9 = [v6 viewContext];

    MEMORY[0x28223BE20](v10);
    sub_242A0F0A4();
  }
}

void *sub_242A0E32C@<X0>(void *(*a1)(void *__return_ptr, void *)@<X0>, void *a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v10[1] = *MEMORY[0x277D85DE8];
  result = a1(a4, a2);
  if (!v4)
  {
    result = [a2 hasChanges];
    if (result)
    {
      v10[0] = 0;
      if ([a2 save_])
      {
        return v10[0];
      }

      else
      {
        v9 = v10[0];
        sub_242A0EEE4();

        swift_willThrow();
        return (*(*(a3 - 8) + 8))(a4, a3);
      }
    }
  }

  return result;
}

uint64_t StoreWrapper.deinit()
{
  sub_242A0E860(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t StoreWrapper.__deallocating_deinit()
{
  sub_242A0E860(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

id sub_242A0E514(uint64_t a1)
{
  v2 = sub_242A0EF04();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27ECD86C0 != -1)
  {
    swift_once();
  }

  v6 = sub_242A0EF34();
  __swift_project_value_buffer(v6, qword_27ECD8950);
  v7 = sub_242A0EF14();
  v8 = sub_242A0F094();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_242A05000, v7, v8, "MessageContainer: Attempting to load managed object model", v9, 2u);
    MEMORY[0x245D1F640](v9, -1, -1);
  }

  v10 = objc_allocWithZone(MEMORY[0x277CBE450]);
  v11 = sub_242A0EEF4();
  v12 = [v10 initWithContentsOfURL_];

  if (!v12)
  {
    (*(v3 + 16))(v5, a1, v2);
    v13 = sub_242A0EF14();
    v14 = sub_242A0F084();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 136446210;
      sub_242A0EA70();
      v17 = sub_242A0F1B4();
      v18 = v3;
      v20 = v19;
      (*(v18 + 8))(v5, v2);
      v21 = sub_242A0BAD0(v17, v20, &v25);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_242A05000, v13, v14, "MessageContainer: Error initializing mom from: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x245D1F640](v16, -1, -1);
      MEMORY[0x245D1F640](v15, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    sub_242A0EA1C();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();
  }

  return v12;
}

uint64_t sub_242A0E860(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16CallsPersistence12StoreWrapperC5StateO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_242A0E8B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_242A0E900(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_242A0E944(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_242A0E96C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_242A0E9B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8728, &unk_242A0FCA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_242A0EA1C()
{
  result = qword_27ECD8730;
  if (!qword_27ECD8730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECD8730);
  }

  return result;
}

unint64_t sub_242A0EA70()
{
  result = qword_27ECD8738;
  if (!qword_27ECD8738)
  {
    sub_242A0EF04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECD8738);
  }

  return result;
}

void sub_242A0EAC8(void *a1, void *a2, char a3)
{
  if (a3 == 1)
  {
  }

  else
  {
    if (a3)
    {
      return;
    }

    a1 = a2;
  }
}

uint64_t sub_242A0EB24()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t getEnumTagSinglePayload for StoreWrapperError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StoreWrapperError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_242A0ECF8()
{
  result = qword_27ECD8740;
  if (!qword_27ECD8740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECD8740);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_242A0ED88(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_242A0EDD0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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
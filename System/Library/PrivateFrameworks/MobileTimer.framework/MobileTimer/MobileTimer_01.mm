void sub_1B206410C(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1B206418C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F458, &qword_1B20B8EB0);
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1B2064228(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock_tasks;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1B20642E4()
{
  v7 = sub_1B20A9CE4();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B20A9CA4();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1B20A9A04();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1B20982AC(0, &qword_1EB79CE08, 0x1E69E9610);
  sub_1B20A99F4();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1B20916FC(&qword_1EB79CE18, 255, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F470, &qword_1B20B8EB8);
  sub_1B209849C(&qword_1EB79CE40, &qword_1EB79F470, &qword_1B20B8EB8, MEMORY[0x1E69E6328]);
  sub_1B20A9DA4();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  return sub_1B20A9D14();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B206459C()
{
  v7 = sub_1B20A9CE4();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B20A9CA4();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1B20A9A04();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1B20982AC(0, &qword_1EB79CE08, 0x1E69E9610);
  sub_1B20A99F4();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1B20916FC(&qword_1EB79CE18, 255, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F470, &qword_1B20B8EB8);
  sub_1B209849C(&qword_1EB79CE40, &qword_1EB79F470, &qword_1B20B8EB8, MEMORY[0x1E69E6328]);
  sub_1B20A9DA4();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  return sub_1B20A9D14();
}

uint64_t sub_1B20648E0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

id MTCDDataStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *MTCDDataStore.init()()
{
  v0 = objc_allocWithZone(swift_getObjectType());
  v1 = sub_1B2064D30(0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v1;
}

char *MTCDDataStore.__allocating_init(inMemoryStore:)(uint64_t a1)
{
  v2 = a1;
  v3 = objc_allocWithZone(v1);
  v4 = objc_allocWithZone(v1);
  v5 = sub_1B2064D30(v2);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

char *MTCDDataStore.init(inMemoryStore:)(uint64_t a1)
{
  v1 = a1;
  v2 = objc_allocWithZone(swift_getObjectType());
  v3 = sub_1B2064D30(v1);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

char *MTCDDataStore.__allocating_init(inMemoryStore:storeFailure:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = objc_allocWithZone(v2);
  v5 = objc_allocWithZone(v2);
  v6 = sub_1B20655C4(v3, 1);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

char *MTCDDataStore.init(inMemoryStore:storeFailure:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = objc_allocWithZone(swift_getObjectType());
  v4 = sub_1B20655C4(v2, 1);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

char *sub_1B2064CFC(uint64_t a1)
{
  v2 = a1;
  v3 = objc_allocWithZone(v1);
  return sub_1B2064D30(v2);
}

char *sub_1B2064D30(int a1)
{
  v2 = v1;
  v47 = a1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F488, &qword_1B20B8EC0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = v40 - v4;
  v5 = sub_1B20A98B4();
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v40[1] = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v40[0] = v40 - v8;
  v9 = sub_1B20A9CE4();
  v10 = *(v9 - 8);
  v51 = v9;
  v52 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B20A9CA4();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1B20A9A04();
  MEMORY[0x1EEE9AC00](v14 - 8);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F458, &qword_1B20B8EB0);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *&v2[v15] = v16;
  v17 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock_tasks] = MEMORY[0x1E69E7CC0];
  v18 = v17;
  v45 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue;
  sub_1B20982AC(0, &qword_1EB79CE08, 0x1E69E9610);
  v44 = "T@MTCDSound,N,D,&";
  sub_1B20A99F4();
  v53 = v18;
  v43 = sub_1B20916FC(&qword_1EB79CE18, 255, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F470, &qword_1B20B8EB8);
  sub_1B209849C(&qword_1EB79CE40, &qword_1EB79F470, &qword_1B20B8EB8, MEMORY[0x1E69E6328]);
  sub_1B20A9DA4();
  v19 = *MEMORY[0x1E69E8090];
  v20 = *(v52 + 104);
  v52 += 104;
  v41 = v12;
  v20(v12, v19, v51);
  *&v2[v45] = sub_1B20A9D14();
  v45 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_calloutQueue;
  sub_1B20A99F4();
  v53 = MEMORY[0x1E69E7CC0];
  sub_1B20A9DA4();
  v20(v41, v19, v51);
  *&v2[v45] = sub_1B20A9D14();
  *&v2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor] = 0;
  v2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_storeLoaded] = 0;
  *&v2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_task] = 0;
  v21 = &v2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  *v21 = 0;
  v21[1] = 0;
  v54.receiver = v2;
  v54.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v54, sel_init);
  type metadata accessor for CoreDataStoreActor();
  v23 = swift_allocObject();
  v24 = v22;
  sub_1B2081604(v47);
  v25 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  *&v24[v25] = v23;

  v26 = sub_1B205E940();
  v28 = v48;
  v27 = v49;
  v29 = v40[0];
  (*(v48 + 16))(v40[0], v26, v49);
  v30 = sub_1B20A9894();
  v31 = sub_1B20A9C74();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1B1F9F000, v30, v31, "Initialized core data store actor", v32, 2u);
    MEMORY[0x1B2741310](v32, -1, -1);
  }

  (*(v28 + 8))(v29, v27);
  v33 = sub_1B20A9BC4();
  v34 = v50;
  (*(*(v33 - 8) + 56))(v50, 1, 1, v33);
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = v24;
  v36 = v24;
  v37 = sub_1B2067140(0, 0, v34, &unk_1B20B8ED0, v35);
  v38 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_task;
  swift_beginAccess();
  *&v36[v38] = v37;

  return v36;
}

uint64_t sub_1B2065530(uint64_t a1)
{
  v1 = a1;
  v2 = swift_allocObject();
  sub_1B2081604(v1);
  return v2;
}

char *sub_1B2065580(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_allocWithZone(v2);
  return sub_1B20655C4(v4, v3);
}

char *sub_1B20655C4(int a1, int a2)
{
  v3 = v2;
  v53 = a2;
  v63 = a1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F488, &qword_1B20B8EC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v66 = &v52 - v5;
  v6 = sub_1B20A98B4();
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v54 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v52 - v9;
  v67 = sub_1B20A9CE4();
  v10 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v61 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B20A9CA4();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1B20A9A04();
  MEMORY[0x1EEE9AC00](v13 - 8);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F458, &qword_1B20B8EB0);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *&v3[v14] = v15;
  v16 = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock_tasks] = MEMORY[0x1E69E7CC0];
  v17 = v16;
  v60 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue;
  v55 = sub_1B20982AC(0, &qword_1EB79CE08, 0x1E69E9610);
  v59 = "T@MTCDSound,N,D,&";
  sub_1B20A99F4();
  v68 = v17;
  v58 = sub_1B20916FC(&qword_1EB79CE18, 255, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F470, &qword_1B20B8EB8);
  sub_1B209849C(&qword_1EB79CE40, &qword_1EB79F470, &qword_1B20B8EB8, MEMORY[0x1E69E6328]);
  sub_1B20A9DA4();
  v18 = *MEMORY[0x1E69E8090];
  v19 = v10 + 104;
  v20 = *(v10 + 104);
  v56 = v19;
  v21 = v61;
  v20(v61, v18, v67);
  *&v3[v60] = sub_1B20A9D14();
  v60 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_calloutQueue;
  sub_1B20A99F4();
  v68 = MEMORY[0x1E69E7CC0];
  sub_1B20A9DA4();
  v20(v21, v18, v67);
  *&v3[v60] = sub_1B20A9D14();
  *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor] = 0;
  v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_storeLoaded] = 0;
  *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_task] = 0;
  v22 = &v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  *v22 = 0;
  v22[1] = 0;
  v69.receiver = v3;
  v69.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v69, sel_init);
  if (v63)
  {
    sub_1B20915B0();
    v24 = swift_allocError();
    *v25 = 3;
    swift_willThrow();
    v26 = v23;
    v30 = v64;
    v29 = v65;
    v31 = sub_1B205E940();
    v32 = v54;
    (*(v30 + 16))(v54, v31, v29);
    v33 = v24;
    v34 = sub_1B20A9894();
    v35 = sub_1B20A9C84();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      v38 = v24;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v39;
      *v37 = v39;
      _os_log_impl(&dword_1B1F9F000, v34, v35, "Failed to initialize core data store actor: %@", v36, 0xCu);
      sub_1B20985B4(v37, &qword_1EB79F4B0, &qword_1B20B8ED8);
      MEMORY[0x1B2741310](v37, -1, -1);
      MEMORY[0x1B2741310](v36, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    type metadata accessor for CoreDataStoreActor();
    v27 = swift_allocObject();
    v28 = v23;
    sub_1B2081604(v53 & 1);
    v40 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
    swift_beginAccess();
    *&v28[v40] = v27;

    v41 = sub_1B205E940();
    v30 = v64;
    v29 = v65;
    v32 = v52;
    (*(v64 + 16))(v52, v41, v65);
    v42 = sub_1B20A9894();
    v43 = sub_1B20A9C74();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1B1F9F000, v42, v43, "Initialized core data store actor", v44, 2u);
      MEMORY[0x1B2741310](v44, -1, -1);
    }
  }

  (*(v30 + 8))(v32, v29);
  v45 = sub_1B20A9BC4();
  v46 = v66;
  (*(*(v45 - 8) + 56))(v66, 1, 1, v45);
  v47 = swift_allocObject();
  v47[2] = 0;
  v47[3] = 0;
  v47[4] = v23;
  v48 = v23;
  v49 = sub_1B2067140(0, 0, v46, &unk_1B20B8EE0, v47);
  v50 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_task;
  swift_beginAccess();
  *&v48[v50] = v49;

  return v48;
}

uint64_t sub_1B2065E58(char a1, char a2)
{
  if ((a1 & 1) == 0)
  {
    return (*(v2 + 96))(a2 & 1);
  }

  sub_1B20915B0();
  swift_allocError();
  *v3 = 3;
  return swift_willThrow();
}

Swift::Void __swiftcall MTCDDataStore.loadStore()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F488, &qword_1B20B8EC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_1B20A98B4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B205E940();
  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_1B20A9894();
  v11 = sub_1B20A9C74();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B1F9F000, v10, v11, "Calling loadStore", v12, 2u);
    MEMORY[0x1B2741310](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v13 = sub_1B20A9BC4();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v1;
  v15 = v1;
  sub_1B2067140(0, 0, v4, &unk_1B20B8EF0, v14);
}

uint64_t sub_1B2066104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = sub_1B20A98B4();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B20661C4, 0, 0);
}

uint64_t sub_1B20661C4()
{
  v1 = v0[11];
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[15] = v3;
  if (v3)
  {
    v4 = *(*v3 + 104);

    v14 = (v4 + *v4);
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_1B2066490;

    return v14();
  }

  else
  {
    v7 = v0[11];
    v8 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B209859C;
    *(v10 + 24) = v9;
    v0[6] = sub_1B20988D0;
    v0[7] = v10;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1B20668F0;
    v0[5] = &block_descriptor_1004;
    v11 = _Block_copy(v0 + 2);
    v12 = v7;

    dispatch_sync(v8, v11);
    _Block_release(v11);
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if (v8)
    {
      __break(1u);
    }

    else
    {
      sub_1B2066918();

      v13 = v0[1];

      return v13();
    }
  }

  return result;
}

uint64_t sub_1B2066490()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1B2066748;
  }

  else
  {

    v2 = sub_1B20665AC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B20665AC()
{
  v1 = v0[11];
  v2 = *&v1[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1B209859C;
  *(v4 + 24) = v3;
  v0[6] = sub_1B20988D0;
  v0[7] = v4;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B20668F0;
  v0[5] = &block_descriptor_1004;
  v5 = _Block_copy(v0 + 2);
  v6 = v1;

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    sub_1B2066918();

    v8 = v0[1];

    return v8();
  }

  return result;
}

uint64_t sub_1B2066748()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[13];

  v5 = sub_1B205E940();
  (*(v4 + 16))(v2, v5, v3);
  v6 = v1;
  v7 = sub_1B20A9894();
  v8 = sub_1B20A9C84();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[17];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1B1F9F000, v7, v8, "Error loading core datat store: %@", v11, 0xCu);
    sub_1B20985B4(v12, &qword_1EB79F4B0, &qword_1B20B8ED8);
    MEMORY[0x1B2741310](v12, -1, -1);
    MEMORY[0x1B2741310](v11, -1, -1);
  }

  else
  {
  }

  (*(v0[13] + 8))(v0[14], v0[12]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1B2066918()
{
  v39 = sub_1B20A99E4();
  v41 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1B20A9A04();
  v40 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v37 = v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B20A98B4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B205E940();
  (*(v4 + 16))(v6, v7, v3);
  v8 = v0;
  v9 = sub_1B20A9894();
  v10 = sub_1B20A9C74();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock = v12;
    *v11 = 136315650;
    v43 = v3;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4C8, &qword_1B20B8F08);
    LODWORD(v42) = v10;
    v13 = sub_1B20A9A84();
    v15 = sub_1B2061574(v13, v14, &aBlock);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    swift_beginAccess();
    v45 = swift_unknownObjectWeakLoadStrong();
    v16 = sub_1B20A9A84();
    v18 = sub_1B2061574(v16, v17, &aBlock);

    *(v11 + 14) = v18;
    *(v11 + 22) = 2080;
    swift_beginAccess();
    v47 = swift_unknownObjectWeakLoadStrong();
    v19 = sub_1B20A9A84();
    v21 = sub_1B2061574(v19, v20, &aBlock);

    *(v11 + 24) = v21;
    _os_log_impl(&dword_1B1F9F000, v9, v42, "Informing observers of data store load, %s, %s, %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B2741310](v12, -1, -1);
    MEMORY[0x1B2741310](v11, -1, -1);

    (*(v4 + 8))(v6, v43);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  v42 = *&v8[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_calloutQueue];
  v22 = swift_allocObject();
  *(v22 + 16) = v8;
  v52 = sub_1B20916D8;
  v53 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v36[2] = &v50;
  v50 = sub_1B2067488;
  v51 = &block_descriptor_0;
  v23 = _Block_copy(&aBlock);
  v24 = v8;
  v25 = v37;
  sub_1B20A99F4();
  v47 = MEMORY[0x1E69E7CC0];
  v36[1] = sub_1B20916FC(&qword_1EB79CE68, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4C0, &unk_1B20B8EF8);
  v26 = sub_1B209849C(&qword_1EB79CE58, &qword_1EB79F4C0, &unk_1B20B8EF8, MEMORY[0x1E69E6328]);
  v27 = v38;
  v36[0] = v26;
  v28 = v39;
  sub_1B20A9DA4();
  MEMORY[0x1B2740220](0, v25, v27, v23);
  _Block_release(v23);
  v41 = *(v41 + 8);
  (v41)(v27, v28);
  v40 = *(v40 + 8);
  (v40)(v25, v44);

  v29 = swift_allocObject();
  *(v29 + 16) = v24;
  v52 = sub_1B2091744;
  v53 = v29;
  aBlock = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = sub_1B2067488;
  v51 = &block_descriptor_21;
  v30 = _Block_copy(&aBlock);
  v31 = v24;
  sub_1B20A99F4();
  v47 = MEMORY[0x1E69E7CC0];
  sub_1B20A9DA4();
  MEMORY[0x1B2740220](0, v25, v27, v30);
  _Block_release(v30);
  (v41)(v27, v28);
  (v40)(v25, v44);

  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  v52 = sub_1B2091750;
  v53 = v32;
  aBlock = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = sub_1B2067488;
  v51 = &block_descriptor_27;
  v33 = _Block_copy(&aBlock);
  v34 = v31;
  sub_1B20A99F4();
  v47 = MEMORY[0x1E69E7CC0];
  sub_1B20A9DA4();
  MEMORY[0x1B2740220](0, v25, v27, v33);
  _Block_release(v33);
  (v41)(v27, v28);
  (v40)(v25, v44);
}

uint64_t sub_1B2067140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F488, &qword_1B20B8EC0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1B2063BF8(a3, v25 - v10, &qword_1EB79F488, &qword_1B20B8EC0);
  v12 = sub_1B20A9BC4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1B20985B4(v11, &qword_1EB79F488, &qword_1B20B8EC0);
  }

  else
  {
    sub_1B20A9BB4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B20A9B64();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B20A9A94() + 32;
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

      sub_1B20985B4(a3, &qword_1EB79F488, &qword_1B20B8EC0);

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

  sub_1B20985B4(a3, &qword_1EB79F488, &qword_1B20B8EC0);
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

uint64_t sub_1B2067488(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1B20674CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F598, &qword_1B20B95C8);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F5A0, &qword_1B20B95D0);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F5A8, &qword_1B20B95D8);
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2067668, 0, 0);
}

uint64_t sub_1B2067668()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[5];
  *(swift_task_alloc() + 16) = v7;
  (*(v6 + 104))(v4, *MEMORY[0x1E69E8650], v5);
  sub_1B20A9C14();

  sub_1B20A9BF4();
  (*(v2 + 8))(v1, v3);
  v8 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock_tasks;
  v0[15] = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock;
  v0[16] = v8;
  swift_beginAccess();
  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_1B2067804;
  v10 = v0[12];

  return MEMORY[0x1EEE6D9C8](v0 + 23, 0, 0, v10);
}

uint64_t sub_1B2067804()
{

  return MEMORY[0x1EEE6DFA0](sub_1B2067900, 0, 0);
}

uint64_t sub_1B2067900()
{
  if (*(v0 + 184) == 1)
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 128);
    v4 = *(v0 + 40);
    v5 = *(v4 + *(v0 + 120));
    os_unfair_lock_lock(v5 + 4);
    v6 = *(v4 + v3);
    *(v0 + 144) = v6;
    *(v4 + v3) = MEMORY[0x1E69E7CC0];
    os_unfair_lock_unlock(v5 + 4);
    v7 = *(v6 + 16);
    *(v0 + 152) = v7;
    if (v7)
    {
      *(v0 + 160) = 0;
      v8 = *(v0 + 144);
      v9 = *(v8 + 32);
      *(v0 + 168) = *(v8 + 40);

      v13 = (v9 + *v9);
      v10 = swift_task_alloc();
      *(v0 + 176) = v10;
      *v10 = v0;
      v10[1] = sub_1B2067B54;

      return v13();
    }

    else
    {

      v11 = swift_task_alloc();
      *(v0 + 136) = v11;
      *v11 = v0;
      v11[1] = sub_1B2067804;
      v12 = *(v0 + 96);

      return MEMORY[0x1EEE6D9C8](v0 + 184, 0, 0, v12);
    }
  }
}

uint64_t sub_1B2067B54()
{

  return MEMORY[0x1EEE6DFA0](sub_1B2067C6C, 0, 0);
}

uint64_t sub_1B2067C6C()
{
  v1 = v0[20] + 1;
  if (v1 == v0[19])
  {

    v2 = swift_task_alloc();
    v0[17] = v2;
    *v2 = v0;
    v2[1] = sub_1B2067804;
    v3 = v0[12];

    return MEMORY[0x1EEE6D9C8](v0 + 23, 0, 0, v3);
  }

  else
  {
    v0[20] = v1;
    v4 = v0[18] + 16 * v1;
    v5 = *(v4 + 32);
    v0[21] = *(v4 + 40);

    v8 = (v5 + *v5);
    v6 = swift_task_alloc();
    v0[22] = v6;
    *v6 = v0;
    v6[1] = sub_1B2067B54;

    return v8();
  }
}

uint64_t MTCDDataStore.isReady.getter()
{
  v1 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (!*&v0[v1])
  {
    return 0;
  }

  v11 = 0;
  v2 = *&v0[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
  v3 = swift_allocObject();
  *(v3 + 16) = &v11;
  *(v3 + 24) = v0;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1B20917C0;
  *(v4 + 24) = v3;
  v10[4] = sub_1B20917D8;
  v10[5] = v4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1B20668F0;
  v10[3] = &block_descriptor_36;
  v5 = _Block_copy(v10);
  v6 = v0;

  dispatch_sync(v2, v5);
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v9 = v11;

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2067FD4(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F5B0, &qword_1B20B95E0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  (*(v5 + 16))(&v13 - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  result = (*(v5 + 32))(v9 + v8, v7, v4);
  v11 = &a2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (*&a2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher])
  {
    __break(1u);
  }

  else
  {
    *v11 = sub_1B209878C;
    *(v11 + 1) = v9;
    *(swift_allocObject() + 16) = a2;
    v12 = a2;
    return sub_1B20A9BD4();
  }

  return result;
}

uint64_t sub_1B2068164()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F5B8, &unk_1B20B95E8);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  sub_1B20A9BE4();
  return (*(v1 + 8))(v3, v0);
}

void sub_1B2068230()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_1B2091830();
  os_unfair_lock_unlock(v1 + 4);
  v2 = *(v0 + OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8);

    v2(v4);
    sub_1B1FA6834(v2, v3);
  }
}

uint64_t sub_1B20682DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock_tasks;
  swift_beginAccess();
  v8 = *(a1 + v7);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1B20911E4(0, v8[2] + 1, 1, v8);
    *(a1 + v7) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1B20911E4((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  v12 = &v8[2 * v11];
  v12[4] = &unk_1B20B9590;
  v12[5] = v6;
  *(a1 + v7) = v8;
  return swift_endAccess();
}

uint64_t sub_1B20683EC(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1B20684D4;

  return v5();
}

uint64_t sub_1B20684D4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id MTCDDataStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall MTCDDataStore.addAlarms(_:)(Swift::OpaquePointer a1)
{
  v3 = swift_allocObject();
  v3[2]._rawValue = v1;
  v3[3]._rawValue = a1._rawValue;
  v3[4]._rawValue = 0;
  v3[5]._rawValue = 0;
  v4 = *&v1[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v5 = v1;

  os_unfair_lock_lock(v4 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v4 + 4);
  v6 = *&v5[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v6)
  {
    v7 = *&v5[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v6(v8);
    sub_1B1FA6834(v6, v7);
  }
}

uint64_t MTCDDataStore.addAlarms(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v9 = v3;

  sub_1B209192C(a2, a3);
  os_unfair_lock_lock(v8 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v8 + 4);
  v10 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v10)
  {
    v11 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v10(v12);
    sub_1B1FA6834(v10, v11);
  }
}

uint64_t sub_1B20689A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_1B20A9874();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v6 = sub_1B20A98B4();
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2068ADC, 0, 0);
}

void *sub_1B2068ADC()
{
  v82 = v0;
  v1 = *(v0 + 88);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    v3 = *(v0 + 88);
    *(v0 + 208) = 0;
    v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
    v5 = swift_allocObject();
    *(v5 + 16) = v0 + 208;
    *(v5 + 24) = v3;
    v6 = swift_allocObject();
    v6[2].isa = sub_1B2098884;
    v6[3].isa = v5;
    *(v0 + 48) = sub_1B20988D0;
    *(v0 + 56) = v6;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1B20668F0;
    *(v0 + 40) = &block_descriptor_987;
    v7 = _Block_copy((v0 + 16));
    v8 = *(v0 + 56);
    v9 = v3;

    dispatch_sync(v4, v7);
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_47;
    }

    v11 = *(v0 + 208);

    if (v11 == 1)
    {
      v12 = *(v1 + v2);
      *(v0 + 184) = v12;
      if (v12)
      {

        v13 = swift_task_alloc();
        *(v0 + 192) = v13;
        *v13 = v0;
        v13[1] = sub_1B20693E0;
        v14 = *(v0 + 96);

        return sub_1B2069C08(v14);
      }

      v47 = *(v0 + 176);
      v48 = *(v0 + 152);
      v6 = *(v0 + 160);
      v49 = sub_1B205E940();
      (v6[2].isa)(v47, v49, v48);

      v50 = sub_1B20A9894();
      LOBYTE(v6) = sub_1B20A9C74();

      if (!os_log_type_enabled(v50, v6))
      {
        v62 = *(v0 + 176);
        v64 = *(v0 + 152);
        v63 = *(v0 + 160);

        (*(v63 + 8))(v62, v64);
LABEL_44:
        v72 = *(v0 + 104);
        if (v72)
        {
          v72(0);
        }

        goto LABEL_24;
      }

      log = v50;
      isEscapingClosureAtFileLocation = *(v0 + 96);
      v7 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v80 = v76;
      *v7 = 136315138;
      if (!(isEscapingClosureAtFileLocation >> 62))
      {
        v51 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_32:
        v52 = MEMORY[0x1E69E7CC0];
        if (v51)
        {
          v75 = v6;
          v81 = MEMORY[0x1E69E7CC0];
          result = sub_1B2091C18(0, v51 & ~(v51 >> 63), 0);
          if (v51 < 0)
          {
            __break(1u);
            return result;
          }

          v53 = 0;
          v54 = *(v0 + 128);
          v52 = v81;
          v79 = *(v0 + 96) + 32;
          do
          {
            if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
            {
              v55 = MEMORY[0x1B27403C0](v53, *(v0 + 96));
            }

            else
            {
              v55 = *(v79 + 8 * v53);
            }

            v56 = v55;
            v57 = [v55 alarmID];
            sub_1B20A9864();

            v81 = v52;
            v59 = *(v52 + 16);
            v58 = *(v52 + 24);
            if (v59 >= v58 >> 1)
            {
              sub_1B2091C18((v58 > 1), v59 + 1, 1);
              v52 = v81;
            }

            v60 = *(v0 + 144);
            v61 = *(v0 + 120);
            ++v53;
            *(v52 + 16) = v59 + 1;
            (*(v54 + 32))(v52 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v59, v60, v61);
          }

          while (v51 != v53);
          LOBYTE(v6) = v75;
        }

        v65 = *(v0 + 176);
        v67 = *(v0 + 152);
        v66 = *(v0 + 160);
        v68 = MEMORY[0x1B2740030](v52, *(v0 + 120));
        v70 = v69;

        v71 = sub_1B2061574(v68, v70, &v80);

        *(v7 + 1) = v71;
        _os_log_impl(&dword_1B1F9F000, log, v6, "Saved alarms into core data: %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v76);
        MEMORY[0x1B2741310](v76, -1, -1);
        MEMORY[0x1B2741310](v7, -1, -1);

        (*(v66 + 8))(v65, v67);
        goto LABEL_44;
      }

LABEL_49:
      v51 = sub_1B20A9DE4();
      goto LABEL_32;
    }
  }

  type metadata accessor for BugCapture();
  static BugCapture.reportBug(type:subType:name:value:)();
  sub_1B20915B0();
  v16 = swift_allocError();
  *v17 = 3;
  swift_willThrow();
  v18 = *(v0 + 160);
  v19 = *(v0 + 168);
  v20 = *(v0 + 152);
  v21 = sub_1B205E940();
  (*(v18 + 16))(v19, v21, v20);

  v6 = sub_1B20A9894();
  v22 = sub_1B20A9C84();

  if (!os_log_type_enabled(v6, v22))
  {
    v34 = *(v0 + 160);
    v35 = *(v0 + 168);
    v36 = *(v0 + 152);

    (*(v34 + 8))(v35, v36);
    v37 = *(v0 + 104);
    if (!v37)
    {
      goto LABEL_23;
    }

LABEL_22:
    v38 = v16;
    v37(v16);

    goto LABEL_23;
  }

  log = v16;
  isEscapingClosureAtFileLocation = *(v0 + 96);
  v7 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v80 = v8;
  *v7 = 136315138;
  LODWORD(v76) = v22;
  if (!(isEscapingClosureAtFileLocation >> 62))
  {
    v23 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_11;
  }

LABEL_47:
  v23 = sub_1B20A9DE4();
LABEL_11:
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v73 = v8;
    v74 = v7;
    v81 = MEMORY[0x1E69E7CC0];
    sub_1B2091C18(0, v23 & ~(v23 >> 63), 0);
    if (v23 < 0)
    {
      __break(1u);
      goto LABEL_49;
    }

    v25 = 0;
    v26 = *(v0 + 128);
    v24 = v81;
    v78 = *(v0 + 96) + 32;
    do
    {
      if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1B27403C0](v25, *(v0 + 96));
      }

      else
      {
        v27 = *(v78 + 8 * v25);
      }

      v28 = v27;
      v29 = [v27 alarmID];
      sub_1B20A9864();

      v81 = v24;
      v31 = *(v24 + 16);
      v30 = *(v24 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1B2091C18((v30 > 1), v31 + 1, 1);
        v24 = v81;
      }

      v32 = *(v0 + 136);
      v33 = *(v0 + 120);
      ++v25;
      *(v24 + 16) = v31 + 1;
      (*(v26 + 32))(v24 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v31, v32, v33);
    }

    while (v23 != v25);
    v7 = v74;
    v8 = v73;
  }

  v40 = *(v0 + 160);
  v41 = *(v0 + 168);
  v42 = *(v0 + 152);
  v43 = MEMORY[0x1B2740030](v24, *(v0 + 120));
  v45 = v44;

  v46 = sub_1B2061574(v43, v45, &v80);

  *(v7 + 1) = v46;
  _os_log_impl(&dword_1B1F9F000, v6, v76, "Failed to save alarms into core data: %s", v7, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v8);
  MEMORY[0x1B2741310](v8, -1, -1);
  MEMORY[0x1B2741310](v7, -1, -1);

  (*(v40 + 8))(v41, v42);
  v16 = log;
  v37 = *(v0 + 104);
  if (v37)
  {
    goto LABEL_22;
  }

LABEL_23:

LABEL_24:

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1B20693E0()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1B2069864;
  }

  else
  {

    v2 = sub_1B20694FC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void *sub_1B20694FC()
{
  v41 = v0;
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = sub_1B205E940();
  (*(v3 + 16))(v1, v4, v2);

  v5 = sub_1B20A9894();
  v6 = sub_1B20A9C74();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[12];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v39 = v9;
    *v8 = 136315138;
    if (v7 >> 62)
    {
      v10 = sub_1B20A9DE4();
    }

    else
    {
      v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = MEMORY[0x1E69E7CC0];
    v36 = v9;
    log = v5;
    if (v10)
    {
      v40 = MEMORY[0x1E69E7CC0];
      result = sub_1B2091C18(0, v10 & ~(v10 >> 63), 0);
      if (v10 < 0)
      {
        __break(1u);
        return result;
      }

      v34 = v8;
      v35 = v6;
      v13 = 0;
      v14 = v0[16];
      v11 = v40;
      v38 = v0[12] + 32;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1B27403C0](v13, v0[12]);
        }

        else
        {
          v15 = *(v38 + 8 * v13);
        }

        v16 = v15;
        v17 = [v15 alarmID];
        sub_1B20A9864();

        v40 = v11;
        v19 = *(v11 + 16);
        v18 = *(v11 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1B2091C18((v18 > 1), v19 + 1, 1);
          v11 = v40;
        }

        v20 = v0[18];
        v21 = v0[15];
        ++v13;
        *(v11 + 16) = v19 + 1;
        (*(v14 + 32))(v11 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v19, v20, v21);
      }

      while (v10 != v13);
      v6 = v35;
      v8 = v34;
    }

    v25 = v0[22];
    v27 = v0[19];
    v26 = v0[20];
    v28 = MEMORY[0x1B2740030](v11, v0[15]);
    v30 = v29;

    v31 = sub_1B2061574(v28, v30, &v39);

    *(v8 + 4) = v31;
    _os_log_impl(&dword_1B1F9F000, log, v6, "Saved alarms into core data: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x1B2741310](v36, -1, -1);
    MEMORY[0x1B2741310](v8, -1, -1);

    (*(v26 + 8))(v25, v27);
  }

  else
  {
    v22 = v0[22];
    v24 = v0[19];
    v23 = v0[20];

    (*(v23 + 8))(v22, v24);
  }

  v32 = v0[13];
  if (v32)
  {
    v32(0);
  }

  v33 = v0[1];

  return v33();
}

void *sub_1B2069864()
{
  v44 = v0;

  v1 = v0[25];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[19];
  v5 = sub_1B205E940();
  (*(v2 + 16))(v3, v5, v4);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C84();

  if (!os_log_type_enabled(v6, v7))
  {
    v24 = v0[20];
    v25 = v0[21];
    v26 = v0[19];

    (*(v24 + 8))(v25, v26);
    v27 = v0[13];
    if (!v27)
    {
      goto LABEL_16;
    }

LABEL_15:
    v28 = v1;
    v27(v1);

    goto LABEL_16;
  }

  v8 = v0[12];
  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v42 = v10;
  *v9 = 136315138;
  if (v8 >> 62)
  {
    v11 = sub_1B20A9DE4();
  }

  else
  {
    v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x1E69E7CC0];
  v40 = v1;
  v39 = v7;
  v38 = v10;
  if (v11)
  {
    v43 = MEMORY[0x1E69E7CC0];
    result = sub_1B2091C18(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
      return result;
    }

    v37 = v9;
    v14 = 0;
    v15 = v0[16];
    v12 = v43;
    v16 = v8 & 0xC000000000000001;
    v41 = v0[12] + 32;
    do
    {
      if (v16)
      {
        v17 = MEMORY[0x1B27403C0](v14, v0[12]);
      }

      else
      {
        v17 = *(v41 + 8 * v14);
      }

      v18 = v17;
      v19 = [v17 alarmID];
      sub_1B20A9864();

      v43 = v12;
      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1B2091C18((v20 > 1), v21 + 1, 1);
        v12 = v43;
      }

      v22 = v0[17];
      v23 = v0[15];
      ++v14;
      *(v12 + 16) = v21 + 1;
      (*(v15 + 32))(v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v21, v22, v23);
    }

    while (v11 != v14);
    v9 = v37;
  }

  v30 = v0[20];
  v31 = v0[21];
  v32 = v0[19];
  v33 = MEMORY[0x1B2740030](v12, v0[15]);
  v35 = v34;

  v36 = sub_1B2061574(v33, v35, &v42);

  *(v9 + 4) = v36;
  _os_log_impl(&dword_1B1F9F000, v6, v39, "Failed to save alarms into core data: %s", v9, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v38);
  MEMORY[0x1B2741310](v38, -1, -1);
  MEMORY[0x1B2741310](v9, -1, -1);

  (*(v30 + 8))(v31, v32);
  v1 = v40;
  v27 = v0[13];
  if (v27)
  {
    goto LABEL_15;
  }

LABEL_16:

  v29 = v0[1];

  return v29();
}

uint64_t sub_1B2069C08(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B20A9D34();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2069CC8, v1, 0);
}

uint64_t sub_1B2069CC8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = [*(v0[3] + 112) newBackgroundContext];
  v0[7] = v5;
  v6 = swift_allocObject();
  v0[8] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);

  v5;
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_1B2069E10;
  v8 = v0[6];
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEDB6538](v7, v8, sub_1B209193C, v6, v9);
}

uint64_t sub_1B2069E10()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = sub_1B2098878;
  }

  else
  {
    v7 = sub_1B2098814;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

void sub_1B206A0D8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1B20A9744();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

Swift::Void __swiftcall MTCDDataStore.updateAlarms(_:)(Swift::OpaquePointer a1)
{
  v3 = swift_allocObject();
  v3[2]._rawValue = v1;
  v3[3]._rawValue = a1._rawValue;
  v3[4]._rawValue = 0;
  v3[5]._rawValue = 0;
  v4 = *&v1[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v5 = v1;

  os_unfair_lock_lock(v4 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v4 + 4);
  v6 = *&v5[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v6)
  {
    v7 = *&v5[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v6(v8);
    sub_1B1FA6834(v6, v7);
  }
}

uint64_t MTCDDataStore.updateAlarms(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v9 = v3;

  sub_1B209192C(a2, a3);
  os_unfair_lock_lock(v8 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v8 + 4);
  v10 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v10)
  {
    v11 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v10(v12);
    sub_1B1FA6834(v10, v11);
  }
}

void sub_1B206A380(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5, uint64_t a6)
{
  sub_1B20982AC(0, a4, a5);
  v7 = sub_1B20A9B04();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = v7;
  v8[4] = 0;
  v8[5] = 0;
  v9 = a1;
  sub_1B2068230();
}

uint64_t sub_1B206A43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_1B20A9874();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v6 = sub_1B20A98B4();
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B206A574, 0, 0);
}

void *sub_1B206A574()
{
  v82 = v0;
  v1 = *(v0 + 88);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    v3 = *(v0 + 88);
    *(v0 + 208) = 0;
    v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
    v5 = swift_allocObject();
    *(v5 + 16) = v0 + 208;
    *(v5 + 24) = v3;
    v6 = swift_allocObject();
    v6[2].isa = sub_1B2098884;
    v6[3].isa = v5;
    *(v0 + 48) = sub_1B20988D0;
    *(v0 + 56) = v6;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1B20668F0;
    *(v0 + 40) = &block_descriptor_975;
    v7 = _Block_copy((v0 + 16));
    v8 = *(v0 + 56);
    v9 = v3;

    dispatch_sync(v4, v7);
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_47;
    }

    v11 = *(v0 + 208);

    if (v11 == 1)
    {
      v12 = *(v1 + v2);
      *(v0 + 184) = v12;
      if (v12)
      {

        v13 = swift_task_alloc();
        *(v0 + 192) = v13;
        *v13 = v0;
        v13[1] = sub_1B206AE7C;
        v14 = *(v0 + 96);

        return sub_1B206B6A4(v14);
      }

      v47 = *(v0 + 176);
      v48 = *(v0 + 152);
      v6 = *(v0 + 160);
      v49 = sub_1B205E940();
      (v6[2].isa)(v47, v49, v48);

      v50 = sub_1B20A9894();
      LOBYTE(v6) = sub_1B20A9C74();

      if (!os_log_type_enabled(v50, v6))
      {
        v62 = *(v0 + 176);
        v64 = *(v0 + 152);
        v63 = *(v0 + 160);

        (*(v63 + 8))(v62, v64);
LABEL_44:
        v72 = *(v0 + 104);
        if (v72)
        {
          v72(0);
        }

        goto LABEL_24;
      }

      log = v50;
      isEscapingClosureAtFileLocation = *(v0 + 96);
      v7 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v80 = v76;
      *v7 = 136315138;
      if (!(isEscapingClosureAtFileLocation >> 62))
      {
        v51 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_32:
        v52 = MEMORY[0x1E69E7CC0];
        if (v51)
        {
          v75 = v6;
          v81 = MEMORY[0x1E69E7CC0];
          result = sub_1B2091C18(0, v51 & ~(v51 >> 63), 0);
          if (v51 < 0)
          {
            __break(1u);
            return result;
          }

          v53 = 0;
          v54 = *(v0 + 128);
          v52 = v81;
          v79 = *(v0 + 96) + 32;
          do
          {
            if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
            {
              v55 = MEMORY[0x1B27403C0](v53, *(v0 + 96));
            }

            else
            {
              v55 = *(v79 + 8 * v53);
            }

            v56 = v55;
            v57 = [v55 alarmID];
            sub_1B20A9864();

            v81 = v52;
            v59 = *(v52 + 16);
            v58 = *(v52 + 24);
            if (v59 >= v58 >> 1)
            {
              sub_1B2091C18((v58 > 1), v59 + 1, 1);
              v52 = v81;
            }

            v60 = *(v0 + 144);
            v61 = *(v0 + 120);
            ++v53;
            *(v52 + 16) = v59 + 1;
            (*(v54 + 32))(v52 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v59, v60, v61);
          }

          while (v51 != v53);
          LOBYTE(v6) = v75;
        }

        v65 = *(v0 + 176);
        v67 = *(v0 + 152);
        v66 = *(v0 + 160);
        v68 = MEMORY[0x1B2740030](v52, *(v0 + 120));
        v70 = v69;

        v71 = sub_1B2061574(v68, v70, &v80);

        *(v7 + 1) = v71;
        _os_log_impl(&dword_1B1F9F000, log, v6, "Updated alarms in core data: %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v76);
        MEMORY[0x1B2741310](v76, -1, -1);
        MEMORY[0x1B2741310](v7, -1, -1);

        (*(v66 + 8))(v65, v67);
        goto LABEL_44;
      }

LABEL_49:
      v51 = sub_1B20A9DE4();
      goto LABEL_32;
    }
  }

  type metadata accessor for BugCapture();
  static BugCapture.reportBug(type:subType:name:value:)();
  sub_1B20915B0();
  v16 = swift_allocError();
  *v17 = 3;
  swift_willThrow();
  v18 = *(v0 + 160);
  v19 = *(v0 + 168);
  v20 = *(v0 + 152);
  v21 = sub_1B205E940();
  (*(v18 + 16))(v19, v21, v20);

  v6 = sub_1B20A9894();
  v22 = sub_1B20A9C84();

  if (!os_log_type_enabled(v6, v22))
  {
    v34 = *(v0 + 160);
    v35 = *(v0 + 168);
    v36 = *(v0 + 152);

    (*(v34 + 8))(v35, v36);
    v37 = *(v0 + 104);
    if (!v37)
    {
      goto LABEL_23;
    }

LABEL_22:
    v38 = v16;
    v37(v16);

    goto LABEL_23;
  }

  log = v16;
  isEscapingClosureAtFileLocation = *(v0 + 96);
  v7 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v80 = v8;
  *v7 = 136315138;
  LODWORD(v76) = v22;
  if (!(isEscapingClosureAtFileLocation >> 62))
  {
    v23 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_11;
  }

LABEL_47:
  v23 = sub_1B20A9DE4();
LABEL_11:
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v73 = v8;
    v74 = v7;
    v81 = MEMORY[0x1E69E7CC0];
    sub_1B2091C18(0, v23 & ~(v23 >> 63), 0);
    if (v23 < 0)
    {
      __break(1u);
      goto LABEL_49;
    }

    v25 = 0;
    v26 = *(v0 + 128);
    v24 = v81;
    v78 = *(v0 + 96) + 32;
    do
    {
      if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1B27403C0](v25, *(v0 + 96));
      }

      else
      {
        v27 = *(v78 + 8 * v25);
      }

      v28 = v27;
      v29 = [v27 alarmID];
      sub_1B20A9864();

      v81 = v24;
      v31 = *(v24 + 16);
      v30 = *(v24 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1B2091C18((v30 > 1), v31 + 1, 1);
        v24 = v81;
      }

      v32 = *(v0 + 136);
      v33 = *(v0 + 120);
      ++v25;
      *(v24 + 16) = v31 + 1;
      (*(v26 + 32))(v24 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v31, v32, v33);
    }

    while (v23 != v25);
    v7 = v74;
    v8 = v73;
  }

  v40 = *(v0 + 160);
  v41 = *(v0 + 168);
  v42 = *(v0 + 152);
  v43 = MEMORY[0x1B2740030](v24, *(v0 + 120));
  v45 = v44;

  v46 = sub_1B2061574(v43, v45, &v80);

  *(v7 + 1) = v46;
  _os_log_impl(&dword_1B1F9F000, v6, v76, "Failed to update alarms in core data: %s", v7, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v8);
  MEMORY[0x1B2741310](v8, -1, -1);
  MEMORY[0x1B2741310](v7, -1, -1);

  (*(v40 + 8))(v41, v42);
  v16 = log;
  v37 = *(v0 + 104);
  if (v37)
  {
    goto LABEL_22;
  }

LABEL_23:

LABEL_24:

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1B206AE7C()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1B206B300;
  }

  else
  {

    v2 = sub_1B206AF98;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void *sub_1B206AF98()
{
  v41 = v0;
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = sub_1B205E940();
  (*(v3 + 16))(v1, v4, v2);

  v5 = sub_1B20A9894();
  v6 = sub_1B20A9C74();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[12];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v39 = v9;
    *v8 = 136315138;
    if (v7 >> 62)
    {
      v10 = sub_1B20A9DE4();
    }

    else
    {
      v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = MEMORY[0x1E69E7CC0];
    v36 = v9;
    log = v5;
    if (v10)
    {
      v40 = MEMORY[0x1E69E7CC0];
      result = sub_1B2091C18(0, v10 & ~(v10 >> 63), 0);
      if (v10 < 0)
      {
        __break(1u);
        return result;
      }

      v34 = v8;
      v35 = v6;
      v13 = 0;
      v14 = v0[16];
      v11 = v40;
      v38 = v0[12] + 32;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1B27403C0](v13, v0[12]);
        }

        else
        {
          v15 = *(v38 + 8 * v13);
        }

        v16 = v15;
        v17 = [v15 alarmID];
        sub_1B20A9864();

        v40 = v11;
        v19 = *(v11 + 16);
        v18 = *(v11 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1B2091C18((v18 > 1), v19 + 1, 1);
          v11 = v40;
        }

        v20 = v0[18];
        v21 = v0[15];
        ++v13;
        *(v11 + 16) = v19 + 1;
        (*(v14 + 32))(v11 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v19, v20, v21);
      }

      while (v10 != v13);
      v6 = v35;
      v8 = v34;
    }

    v25 = v0[22];
    v27 = v0[19];
    v26 = v0[20];
    v28 = MEMORY[0x1B2740030](v11, v0[15]);
    v30 = v29;

    v31 = sub_1B2061574(v28, v30, &v39);

    *(v8 + 4) = v31;
    _os_log_impl(&dword_1B1F9F000, log, v6, "Updated alarms in core data: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x1B2741310](v36, -1, -1);
    MEMORY[0x1B2741310](v8, -1, -1);

    (*(v26 + 8))(v25, v27);
  }

  else
  {
    v22 = v0[22];
    v24 = v0[19];
    v23 = v0[20];

    (*(v23 + 8))(v22, v24);
  }

  v32 = v0[13];
  if (v32)
  {
    v32(0);
  }

  v33 = v0[1];

  return v33();
}

void *sub_1B206B300()
{
  v44 = v0;

  v1 = v0[25];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[19];
  v5 = sub_1B205E940();
  (*(v2 + 16))(v3, v5, v4);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C84();

  if (!os_log_type_enabled(v6, v7))
  {
    v24 = v0[20];
    v25 = v0[21];
    v26 = v0[19];

    (*(v24 + 8))(v25, v26);
    v27 = v0[13];
    if (!v27)
    {
      goto LABEL_16;
    }

LABEL_15:
    v28 = v1;
    v27(v1);

    goto LABEL_16;
  }

  v8 = v0[12];
  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v42 = v10;
  *v9 = 136315138;
  if (v8 >> 62)
  {
    v11 = sub_1B20A9DE4();
  }

  else
  {
    v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x1E69E7CC0];
  v40 = v1;
  v39 = v7;
  v38 = v10;
  if (v11)
  {
    v43 = MEMORY[0x1E69E7CC0];
    result = sub_1B2091C18(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
      return result;
    }

    v37 = v9;
    v14 = 0;
    v15 = v0[16];
    v12 = v43;
    v16 = v8 & 0xC000000000000001;
    v41 = v0[12] + 32;
    do
    {
      if (v16)
      {
        v17 = MEMORY[0x1B27403C0](v14, v0[12]);
      }

      else
      {
        v17 = *(v41 + 8 * v14);
      }

      v18 = v17;
      v19 = [v17 alarmID];
      sub_1B20A9864();

      v43 = v12;
      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1B2091C18((v20 > 1), v21 + 1, 1);
        v12 = v43;
      }

      v22 = v0[17];
      v23 = v0[15];
      ++v14;
      *(v12 + 16) = v21 + 1;
      (*(v15 + 32))(v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v21, v22, v23);
    }

    while (v11 != v14);
    v9 = v37;
  }

  v30 = v0[20];
  v31 = v0[21];
  v32 = v0[19];
  v33 = MEMORY[0x1B2740030](v12, v0[15]);
  v35 = v34;

  v36 = sub_1B2061574(v33, v35, &v42);

  *(v9 + 4) = v36;
  _os_log_impl(&dword_1B1F9F000, v6, v39, "Failed to update alarms in core data: %s", v9, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v38);
  MEMORY[0x1B2741310](v38, -1, -1);
  MEMORY[0x1B2741310](v9, -1, -1);

  (*(v30 + 8))(v31, v32);
  v1 = v40;
  v27 = v0[13];
  if (v27)
  {
    goto LABEL_15;
  }

LABEL_16:

  v29 = v0[1];

  return v29();
}

uint64_t sub_1B206B6A4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B20A9D34();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B206B764, v1, 0);
}

uint64_t sub_1B206B764()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  type metadata accessor for MTCDAlarm();
  v6 = static MTCDAlarm.fetchRequest()();
  v0[7] = v6;
  v7 = sub_1B2094E9C(v5, &selRef_alarmIDString);
  [v6 setPredicate_];

  v8 = [*(v4 + 112) newBackgroundContext];
  v0[8] = v8;
  v9 = swift_allocObject();
  v0[9] = v9;
  v9[2] = v8;
  v9[3] = v6;
  v9[4] = v5;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v8;
  v10 = v6;

  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_1B206B900;
  v12 = v0[6];
  v13 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEDB6538](v11, v12, sub_1B2094568, v9, v13);
}

uint64_t sub_1B206B900()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 88) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = sub_1B206BB20;
  }

  else
  {
    v7 = sub_1B206BAAC;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1B206BAAC()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B206BB20()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

Swift::Void __swiftcall MTCDDataStore.setSleepAlarms(_:)(Swift::OpaquePointer a1)
{
  v3 = swift_allocObject();
  v3[2]._rawValue = v1;
  v3[3]._rawValue = a1._rawValue;
  v3[4]._rawValue = 0;
  v3[5]._rawValue = 0;
  v4 = *&v1[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v5 = v1;

  os_unfair_lock_lock(v4 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v4 + 4);
  v6 = *&v5[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v6)
  {
    v7 = *&v5[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v6(v8);
    sub_1B1FA6834(v6, v7);
  }
}

uint64_t MTCDDataStore.setSleepAlarms(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v9 = v3;

  sub_1B209192C(a2, a3);
  os_unfair_lock_lock(v8 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v8 + 4);
  v10 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v10)
  {
    v11 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v10(v12);
    sub_1B1FA6834(v10, v11);
  }
}

uint64_t sub_1B206BEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_1B20A9874();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v6 = sub_1B20A98B4();
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B206C02C, 0, 0);
}

void *sub_1B206C02C()
{
  v82 = v0;
  v1 = *(v0 + 88);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    v3 = *(v0 + 88);
    *(v0 + 208) = 0;
    v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
    v5 = swift_allocObject();
    *(v5 + 16) = v0 + 208;
    *(v5 + 24) = v3;
    v6 = swift_allocObject();
    v6[2].isa = sub_1B2098884;
    v6[3].isa = v5;
    *(v0 + 48) = sub_1B20988D0;
    *(v0 + 56) = v6;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1B20668F0;
    *(v0 + 40) = &block_descriptor_963;
    v7 = _Block_copy((v0 + 16));
    v8 = *(v0 + 56);
    v9 = v3;

    dispatch_sync(v4, v7);
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_47;
    }

    v11 = *(v0 + 208);

    if (v11 == 1)
    {
      v12 = *(v1 + v2);
      *(v0 + 184) = v12;
      if (v12)
      {

        v13 = swift_task_alloc();
        *(v0 + 192) = v13;
        *v13 = v0;
        v13[1] = sub_1B206C938;
        v14 = *(v0 + 96);

        return sub_1B206D160(v14);
      }

      v47 = *(v0 + 176);
      v48 = *(v0 + 152);
      v6 = *(v0 + 160);
      v49 = sub_1B205E940();
      (v6[2].isa)(v47, v49, v48);

      v50 = sub_1B20A9894();
      LOBYTE(v6) = sub_1B20A9C74();

      if (!os_log_type_enabled(v50, v6))
      {
        v62 = *(v0 + 176);
        v64 = *(v0 + 152);
        v63 = *(v0 + 160);

        (*(v63 + 8))(v62, v64);
LABEL_44:
        v72 = *(v0 + 104);
        if (v72)
        {
          v72(0);
        }

        goto LABEL_24;
      }

      log = v50;
      isEscapingClosureAtFileLocation = *(v0 + 96);
      v7 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v80 = v76;
      *v7 = 136315138;
      if (!(isEscapingClosureAtFileLocation >> 62))
      {
        v51 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_32:
        v52 = MEMORY[0x1E69E7CC0];
        if (v51)
        {
          v75 = v6;
          v81 = MEMORY[0x1E69E7CC0];
          result = sub_1B2091C18(0, v51 & ~(v51 >> 63), 0);
          if (v51 < 0)
          {
            __break(1u);
            return result;
          }

          v53 = 0;
          v54 = *(v0 + 128);
          v52 = v81;
          v79 = *(v0 + 96) + 32;
          do
          {
            if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
            {
              v55 = MEMORY[0x1B27403C0](v53, *(v0 + 96));
            }

            else
            {
              v55 = *(v79 + 8 * v53);
            }

            v56 = v55;
            v57 = [v55 alarmID];
            sub_1B20A9864();

            v81 = v52;
            v59 = *(v52 + 16);
            v58 = *(v52 + 24);
            if (v59 >= v58 >> 1)
            {
              sub_1B2091C18((v58 > 1), v59 + 1, 1);
              v52 = v81;
            }

            v60 = *(v0 + 144);
            v61 = *(v0 + 120);
            ++v53;
            *(v52 + 16) = v59 + 1;
            (*(v54 + 32))(v52 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v59, v60, v61);
          }

          while (v51 != v53);
          LOBYTE(v6) = v75;
        }

        v65 = *(v0 + 176);
        v67 = *(v0 + 152);
        v66 = *(v0 + 160);
        v68 = MEMORY[0x1B2740030](v52, *(v0 + 120));
        v70 = v69;

        v71 = sub_1B2061574(v68, v70, &v80);

        *(v7 + 1) = v71;
        _os_log_impl(&dword_1B1F9F000, log, v6, "Set sleep alarms in core data: %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v76);
        MEMORY[0x1B2741310](v76, -1, -1);
        MEMORY[0x1B2741310](v7, -1, -1);

        (*(v66 + 8))(v65, v67);
        goto LABEL_44;
      }

LABEL_49:
      v51 = sub_1B20A9DE4();
      goto LABEL_32;
    }
  }

  type metadata accessor for BugCapture();
  static BugCapture.reportBug(type:subType:name:value:)();
  sub_1B20915B0();
  v16 = swift_allocError();
  *v17 = 3;
  swift_willThrow();
  v18 = *(v0 + 160);
  v19 = *(v0 + 168);
  v20 = *(v0 + 152);
  v21 = sub_1B205E940();
  (*(v18 + 16))(v19, v21, v20);

  v6 = sub_1B20A9894();
  v22 = sub_1B20A9C84();

  if (!os_log_type_enabled(v6, v22))
  {
    v34 = *(v0 + 160);
    v35 = *(v0 + 168);
    v36 = *(v0 + 152);

    (*(v34 + 8))(v35, v36);
    v37 = *(v0 + 104);
    if (!v37)
    {
      goto LABEL_23;
    }

LABEL_22:
    v38 = v16;
    v37(v16);

    goto LABEL_23;
  }

  log = v16;
  isEscapingClosureAtFileLocation = *(v0 + 96);
  v7 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v80 = v8;
  *v7 = 136315138;
  LODWORD(v76) = v22;
  if (!(isEscapingClosureAtFileLocation >> 62))
  {
    v23 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_11;
  }

LABEL_47:
  v23 = sub_1B20A9DE4();
LABEL_11:
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v73 = v8;
    v74 = v7;
    v81 = MEMORY[0x1E69E7CC0];
    sub_1B2091C18(0, v23 & ~(v23 >> 63), 0);
    if (v23 < 0)
    {
      __break(1u);
      goto LABEL_49;
    }

    v25 = 0;
    v26 = *(v0 + 128);
    v24 = v81;
    v78 = *(v0 + 96) + 32;
    do
    {
      if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1B27403C0](v25, *(v0 + 96));
      }

      else
      {
        v27 = *(v78 + 8 * v25);
      }

      v28 = v27;
      v29 = [v27 alarmID];
      sub_1B20A9864();

      v81 = v24;
      v31 = *(v24 + 16);
      v30 = *(v24 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1B2091C18((v30 > 1), v31 + 1, 1);
        v24 = v81;
      }

      v32 = *(v0 + 136);
      v33 = *(v0 + 120);
      ++v25;
      *(v24 + 16) = v31 + 1;
      (*(v26 + 32))(v24 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v31, v32, v33);
    }

    while (v23 != v25);
    v7 = v74;
    v8 = v73;
  }

  v40 = *(v0 + 160);
  v41 = *(v0 + 168);
  v42 = *(v0 + 152);
  v43 = MEMORY[0x1B2740030](v24, *(v0 + 120));
  v45 = v44;

  v46 = sub_1B2061574(v43, v45, &v80);

  *(v7 + 1) = v46;
  _os_log_impl(&dword_1B1F9F000, v6, v76, "Failed to set sleep alarms in core data: %s", v7, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v8);
  MEMORY[0x1B2741310](v8, -1, -1);
  MEMORY[0x1B2741310](v7, -1, -1);

  (*(v40 + 8))(v41, v42);
  v16 = log;
  v37 = *(v0 + 104);
  if (v37)
  {
    goto LABEL_22;
  }

LABEL_23:

LABEL_24:

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1B206C938()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1B206CDBC;
  }

  else
  {

    v2 = sub_1B206CA54;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void *sub_1B206CA54()
{
  v41 = v0;
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = sub_1B205E940();
  (*(v3 + 16))(v1, v4, v2);

  v5 = sub_1B20A9894();
  v6 = sub_1B20A9C74();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[12];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v39 = v9;
    *v8 = 136315138;
    if (v7 >> 62)
    {
      v10 = sub_1B20A9DE4();
    }

    else
    {
      v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = MEMORY[0x1E69E7CC0];
    v36 = v9;
    log = v5;
    if (v10)
    {
      v40 = MEMORY[0x1E69E7CC0];
      result = sub_1B2091C18(0, v10 & ~(v10 >> 63), 0);
      if (v10 < 0)
      {
        __break(1u);
        return result;
      }

      v34 = v8;
      v35 = v6;
      v13 = 0;
      v14 = v0[16];
      v11 = v40;
      v38 = v0[12] + 32;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1B27403C0](v13, v0[12]);
        }

        else
        {
          v15 = *(v38 + 8 * v13);
        }

        v16 = v15;
        v17 = [v15 alarmID];
        sub_1B20A9864();

        v40 = v11;
        v19 = *(v11 + 16);
        v18 = *(v11 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1B2091C18((v18 > 1), v19 + 1, 1);
          v11 = v40;
        }

        v20 = v0[18];
        v21 = v0[15];
        ++v13;
        *(v11 + 16) = v19 + 1;
        (*(v14 + 32))(v11 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v19, v20, v21);
      }

      while (v10 != v13);
      v6 = v35;
      v8 = v34;
    }

    v25 = v0[22];
    v27 = v0[19];
    v26 = v0[20];
    v28 = MEMORY[0x1B2740030](v11, v0[15]);
    v30 = v29;

    v31 = sub_1B2061574(v28, v30, &v39);

    *(v8 + 4) = v31;
    _os_log_impl(&dword_1B1F9F000, log, v6, "Set sleep alarms in core data: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x1B2741310](v36, -1, -1);
    MEMORY[0x1B2741310](v8, -1, -1);

    (*(v26 + 8))(v25, v27);
  }

  else
  {
    v22 = v0[22];
    v24 = v0[19];
    v23 = v0[20];

    (*(v23 + 8))(v22, v24);
  }

  v32 = v0[13];
  if (v32)
  {
    v32(0);
  }

  v33 = v0[1];

  return v33();
}

void *sub_1B206CDBC()
{
  v44 = v0;

  v1 = v0[25];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[19];
  v5 = sub_1B205E940();
  (*(v2 + 16))(v3, v5, v4);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C84();

  if (!os_log_type_enabled(v6, v7))
  {
    v24 = v0[20];
    v25 = v0[21];
    v26 = v0[19];

    (*(v24 + 8))(v25, v26);
    v27 = v0[13];
    if (!v27)
    {
      goto LABEL_16;
    }

LABEL_15:
    v28 = v1;
    v27(v1);

    goto LABEL_16;
  }

  v8 = v0[12];
  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v42 = v10;
  *v9 = 136315138;
  if (v8 >> 62)
  {
    v11 = sub_1B20A9DE4();
  }

  else
  {
    v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x1E69E7CC0];
  v40 = v1;
  v39 = v7;
  v38 = v10;
  if (v11)
  {
    v43 = MEMORY[0x1E69E7CC0];
    result = sub_1B2091C18(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
      return result;
    }

    v37 = v9;
    v14 = 0;
    v15 = v0[16];
    v12 = v43;
    v16 = v8 & 0xC000000000000001;
    v41 = v0[12] + 32;
    do
    {
      if (v16)
      {
        v17 = MEMORY[0x1B27403C0](v14, v0[12]);
      }

      else
      {
        v17 = *(v41 + 8 * v14);
      }

      v18 = v17;
      v19 = [v17 alarmID];
      sub_1B20A9864();

      v43 = v12;
      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1B2091C18((v20 > 1), v21 + 1, 1);
        v12 = v43;
      }

      v22 = v0[17];
      v23 = v0[15];
      ++v14;
      *(v12 + 16) = v21 + 1;
      (*(v15 + 32))(v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v21, v22, v23);
    }

    while (v11 != v14);
    v9 = v37;
  }

  v30 = v0[20];
  v31 = v0[21];
  v32 = v0[19];
  v33 = MEMORY[0x1B2740030](v12, v0[15]);
  v35 = v34;

  v36 = sub_1B2061574(v33, v35, &v42);

  *(v9 + 4) = v36;
  _os_log_impl(&dword_1B1F9F000, v6, v39, "Failed to set sleep alarms in core data: %s", v9, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v38);
  MEMORY[0x1B2741310](v38, -1, -1);
  MEMORY[0x1B2741310](v9, -1, -1);

  (*(v30 + 8))(v31, v32);
  v1 = v40;
  v27 = v0[13];
  if (v27)
  {
    goto LABEL_15;
  }

LABEL_16:

  v29 = v0[1];

  return v29();
}

uint64_t sub_1B206D160(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B20A9D34();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1B20A98B4();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B206D27C, v1, 0);
}

uint64_t sub_1B206D27C()
{
  v58 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = sub_1B205E940();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_1B20A9894();
  v6 = sub_1B20A9C84();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[2];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v56 = v9;
    *v8 = 136315138;
    if (v7 >> 62)
    {
      v10 = sub_1B20A9DE4();
    }

    else
    {
      v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = MEMORY[0x1E69E7CC0];
    log = v5;
    v51 = v6;
    v50 = v9;
    if (v10)
    {
      v57 = MEMORY[0x1E69E7CC0];
      v12 = sub_1B2091C38(0, v10 & ~(v10 >> 63), 0);
      if (v10 < 0)
      {
        __break(1u);
        return MEMORY[0x1EEDB6538](v12, v13, v14, v15, v16);
      }

      v49 = v8;
      v17 = 0;
      v11 = v57;
      v54 = v0[2] + 32;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1B27403C0](v17, v0[2]);
        }

        else
        {
          v18 = *(v54 + 8 * v17);
        }

        v19 = v18;
        v20 = [v18 alarmIDString];
        v21 = sub_1B20A9A74();
        v23 = v22;

        v57 = v11;
        v25 = *(v11 + 16);
        v24 = *(v11 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1B2091C38((v24 > 1), v25 + 1, 1);
          v11 = v57;
        }

        ++v17;
        *(v11 + 16) = v25 + 1;
        v26 = v11 + 16 * v25;
        *(v26 + 32) = v21;
        *(v26 + 40) = v23;
      }

      while (v10 != v17);
      v8 = v49;
    }

    v30 = v0[8];
    v31 = v0[9];
    v32 = v0[7];
    v33 = MEMORY[0x1B2740030](v11, MEMORY[0x1E69E6158]);
    v35 = v34;

    v36 = sub_1B2061574(v33, v35, &v56);

    *(v8 + 4) = v36;
    _os_log_impl(&dword_1B1F9F000, log, v51, "Setting sleep alarms: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x1B2741310](v50, -1, -1);
    MEMORY[0x1B2741310](v8, -1, -1);

    (*(v30 + 8))(v31, v32);
  }

  else
  {
    v27 = v0[8];
    v28 = v0[9];
    v29 = v0[7];

    (*(v27 + 8))(v28, v29);
  }

  v37 = v0[5];
  v38 = v0[3];
  loga = v0[4];
  v55 = v0[6];
  v39 = v0[2];
  type metadata accessor for MTCDAlarm();
  v40 = static MTCDAlarm.fetchRequest()();
  v0[10] = v40;
  sub_1B20982AC(0, &qword_1EB79CE38, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4D0, &qword_1B20B8F70);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1B20B8E70;
  v42 = sub_1B20982AC(0, &qword_1EB79CDE0, 0x1E696AD98);
  v43 = sub_1B20A9D64();
  *(v41 + 56) = v42;
  *(v41 + 64) = sub_1B2094634();
  *(v41 + 32) = v43;
  v44 = sub_1B20A9C64();
  [v40 setPredicate_];

  v45 = [*(v38 + 112) newBackgroundContext];
  v0[11] = v45;
  v46 = swift_allocObject();
  v0[12] = v46;
  v46[2] = v45;
  v46[3] = v40;
  v46[4] = v39;
  (*(v37 + 104))(v55, *MEMORY[0x1E695D2B8], loga);

  v45;
  v47 = v40;
  v12 = swift_task_alloc();
  v0[13] = v12;
  *v12 = v0;
  v12[1] = sub_1B206D744;
  v13 = v0[6];
  v14 = sub_1B209469C;
  v16 = MEMORY[0x1E69E7CA8] + 8;
  v15 = v46;

  return MEMORY[0x1EEDB6538](v12, v13, v14, v15, v16);
}

uint64_t sub_1B206D744()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 112) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = sub_1B206D978;
  }

  else
  {
    v7 = sub_1B206D8F0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1B206D8F0()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B206D978()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

Swift::Void __swiftcall MTCDDataStore.deleteAlarms(_:)(Swift::OpaquePointer a1)
{
  v3 = swift_allocObject();
  v3[2]._rawValue = v1;
  v3[3]._rawValue = a1._rawValue;
  v3[4]._rawValue = 0;
  v3[5]._rawValue = 0;
  v4 = *&v1[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v5 = v1;

  os_unfair_lock_lock(v4 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v4 + 4);
  v6 = *&v5[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v6)
  {
    v7 = *&v5[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v6(v8);
    sub_1B1FA6834(v6, v7);
  }
}

uint64_t MTCDDataStore.deleteAlarms(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v9 = v3;

  sub_1B209192C(a2, a3);
  os_unfair_lock_lock(v8 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v8 + 4);
  v10 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v10)
  {
    v11 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v10(v12);
    sub_1B1FA6834(v10, v11);
  }
}

uint64_t sub_1B206DD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_1B20A9874();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v6 = sub_1B20A98B4();
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B206DE98, 0, 0);
}

void *sub_1B206DE98()
{
  v82 = v0;
  v1 = *(v0 + 88);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    v3 = *(v0 + 88);
    *(v0 + 208) = 0;
    v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
    v5 = swift_allocObject();
    *(v5 + 16) = v0 + 208;
    *(v5 + 24) = v3;
    v6 = swift_allocObject();
    v6[2].isa = sub_1B2098884;
    v6[3].isa = v5;
    *(v0 + 48) = sub_1B20988D0;
    *(v0 + 56) = v6;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1B20668F0;
    *(v0 + 40) = &block_descriptor_951;
    v7 = _Block_copy((v0 + 16));
    v8 = *(v0 + 56);
    v9 = v3;

    dispatch_sync(v4, v7);
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_47;
    }

    v11 = *(v0 + 208);

    if (v11 == 1)
    {
      v12 = *(v1 + v2);
      *(v0 + 184) = v12;
      if (v12)
      {

        v13 = swift_task_alloc();
        *(v0 + 192) = v13;
        *v13 = v0;
        v13[1] = sub_1B206E7A0;
        v14 = *(v0 + 96);

        return sub_1B206EFC8(v14);
      }

      v47 = *(v0 + 176);
      v48 = *(v0 + 152);
      v6 = *(v0 + 160);
      v49 = sub_1B205E940();
      (v6[2].isa)(v47, v49, v48);

      v50 = sub_1B20A9894();
      LOBYTE(v6) = sub_1B20A9C74();

      if (!os_log_type_enabled(v50, v6))
      {
        v62 = *(v0 + 176);
        v64 = *(v0 + 152);
        v63 = *(v0 + 160);

        (*(v63 + 8))(v62, v64);
LABEL_44:
        v72 = *(v0 + 104);
        if (v72)
        {
          v72(0);
        }

        goto LABEL_24;
      }

      log = v50;
      isEscapingClosureAtFileLocation = *(v0 + 96);
      v7 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v80 = v76;
      *v7 = 136315138;
      if (!(isEscapingClosureAtFileLocation >> 62))
      {
        v51 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_32:
        v52 = MEMORY[0x1E69E7CC0];
        if (v51)
        {
          v75 = v6;
          v81 = MEMORY[0x1E69E7CC0];
          result = sub_1B2091C18(0, v51 & ~(v51 >> 63), 0);
          if (v51 < 0)
          {
            __break(1u);
            return result;
          }

          v53 = 0;
          v54 = *(v0 + 128);
          v52 = v81;
          v79 = *(v0 + 96) + 32;
          do
          {
            if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
            {
              v55 = MEMORY[0x1B27403C0](v53, *(v0 + 96));
            }

            else
            {
              v55 = *(v79 + 8 * v53);
            }

            v56 = v55;
            v57 = [v55 alarmID];
            sub_1B20A9864();

            v81 = v52;
            v59 = *(v52 + 16);
            v58 = *(v52 + 24);
            if (v59 >= v58 >> 1)
            {
              sub_1B2091C18((v58 > 1), v59 + 1, 1);
              v52 = v81;
            }

            v60 = *(v0 + 144);
            v61 = *(v0 + 120);
            ++v53;
            *(v52 + 16) = v59 + 1;
            (*(v54 + 32))(v52 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v59, v60, v61);
          }

          while (v51 != v53);
          LOBYTE(v6) = v75;
        }

        v65 = *(v0 + 176);
        v67 = *(v0 + 152);
        v66 = *(v0 + 160);
        v68 = MEMORY[0x1B2740030](v52, *(v0 + 120));
        v70 = v69;

        v71 = sub_1B2061574(v68, v70, &v80);

        *(v7 + 1) = v71;
        _os_log_impl(&dword_1B1F9F000, log, v6, "Deleted alarms from core data: %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v76);
        MEMORY[0x1B2741310](v76, -1, -1);
        MEMORY[0x1B2741310](v7, -1, -1);

        (*(v66 + 8))(v65, v67);
        goto LABEL_44;
      }

LABEL_49:
      v51 = sub_1B20A9DE4();
      goto LABEL_32;
    }
  }

  type metadata accessor for BugCapture();
  static BugCapture.reportBug(type:subType:name:value:)();
  sub_1B20915B0();
  v16 = swift_allocError();
  *v17 = 3;
  swift_willThrow();
  v18 = *(v0 + 160);
  v19 = *(v0 + 168);
  v20 = *(v0 + 152);
  v21 = sub_1B205E940();
  (*(v18 + 16))(v19, v21, v20);

  v6 = sub_1B20A9894();
  v22 = sub_1B20A9C84();

  if (!os_log_type_enabled(v6, v22))
  {
    v34 = *(v0 + 160);
    v35 = *(v0 + 168);
    v36 = *(v0 + 152);

    (*(v34 + 8))(v35, v36);
    v37 = *(v0 + 104);
    if (!v37)
    {
      goto LABEL_23;
    }

LABEL_22:
    v38 = v16;
    v37(v16);

    goto LABEL_23;
  }

  log = v16;
  isEscapingClosureAtFileLocation = *(v0 + 96);
  v7 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v80 = v8;
  *v7 = 136315138;
  LODWORD(v76) = v22;
  if (!(isEscapingClosureAtFileLocation >> 62))
  {
    v23 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_11;
  }

LABEL_47:
  v23 = sub_1B20A9DE4();
LABEL_11:
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v73 = v8;
    v74 = v7;
    v81 = MEMORY[0x1E69E7CC0];
    sub_1B2091C18(0, v23 & ~(v23 >> 63), 0);
    if (v23 < 0)
    {
      __break(1u);
      goto LABEL_49;
    }

    v25 = 0;
    v26 = *(v0 + 128);
    v24 = v81;
    v78 = *(v0 + 96) + 32;
    do
    {
      if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1B27403C0](v25, *(v0 + 96));
      }

      else
      {
        v27 = *(v78 + 8 * v25);
      }

      v28 = v27;
      v29 = [v27 alarmID];
      sub_1B20A9864();

      v81 = v24;
      v31 = *(v24 + 16);
      v30 = *(v24 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1B2091C18((v30 > 1), v31 + 1, 1);
        v24 = v81;
      }

      v32 = *(v0 + 136);
      v33 = *(v0 + 120);
      ++v25;
      *(v24 + 16) = v31 + 1;
      (*(v26 + 32))(v24 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v31, v32, v33);
    }

    while (v23 != v25);
    v7 = v74;
    v8 = v73;
  }

  v40 = *(v0 + 160);
  v41 = *(v0 + 168);
  v42 = *(v0 + 152);
  v43 = MEMORY[0x1B2740030](v24, *(v0 + 120));
  v45 = v44;

  v46 = sub_1B2061574(v43, v45, &v80);

  *(v7 + 1) = v46;
  _os_log_impl(&dword_1B1F9F000, v6, v76, "Failed to delete alarms from core data: %s", v7, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v8);
  MEMORY[0x1B2741310](v8, -1, -1);
  MEMORY[0x1B2741310](v7, -1, -1);

  (*(v40 + 8))(v41, v42);
  v16 = log;
  v37 = *(v0 + 104);
  if (v37)
  {
    goto LABEL_22;
  }

LABEL_23:

LABEL_24:

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1B206E7A0()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1B206EC24;
  }

  else
  {

    v2 = sub_1B206E8BC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void *sub_1B206E8BC()
{
  v41 = v0;
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = sub_1B205E940();
  (*(v3 + 16))(v1, v4, v2);

  v5 = sub_1B20A9894();
  v6 = sub_1B20A9C74();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[12];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v39 = v9;
    *v8 = 136315138;
    if (v7 >> 62)
    {
      v10 = sub_1B20A9DE4();
    }

    else
    {
      v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = MEMORY[0x1E69E7CC0];
    v36 = v9;
    log = v5;
    if (v10)
    {
      v40 = MEMORY[0x1E69E7CC0];
      result = sub_1B2091C18(0, v10 & ~(v10 >> 63), 0);
      if (v10 < 0)
      {
        __break(1u);
        return result;
      }

      v34 = v8;
      v35 = v6;
      v13 = 0;
      v14 = v0[16];
      v11 = v40;
      v38 = v0[12] + 32;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1B27403C0](v13, v0[12]);
        }

        else
        {
          v15 = *(v38 + 8 * v13);
        }

        v16 = v15;
        v17 = [v15 alarmID];
        sub_1B20A9864();

        v40 = v11;
        v19 = *(v11 + 16);
        v18 = *(v11 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1B2091C18((v18 > 1), v19 + 1, 1);
          v11 = v40;
        }

        v20 = v0[18];
        v21 = v0[15];
        ++v13;
        *(v11 + 16) = v19 + 1;
        (*(v14 + 32))(v11 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v19, v20, v21);
      }

      while (v10 != v13);
      v6 = v35;
      v8 = v34;
    }

    v25 = v0[22];
    v27 = v0[19];
    v26 = v0[20];
    v28 = MEMORY[0x1B2740030](v11, v0[15]);
    v30 = v29;

    v31 = sub_1B2061574(v28, v30, &v39);

    *(v8 + 4) = v31;
    _os_log_impl(&dword_1B1F9F000, log, v6, "Deleted alarms from core data: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x1B2741310](v36, -1, -1);
    MEMORY[0x1B2741310](v8, -1, -1);

    (*(v26 + 8))(v25, v27);
  }

  else
  {
    v22 = v0[22];
    v24 = v0[19];
    v23 = v0[20];

    (*(v23 + 8))(v22, v24);
  }

  v32 = v0[13];
  if (v32)
  {
    v32(0);
  }

  v33 = v0[1];

  return v33();
}

void *sub_1B206EC24()
{
  v44 = v0;

  v1 = v0[25];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[19];
  v5 = sub_1B205E940();
  (*(v2 + 16))(v3, v5, v4);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C84();

  if (!os_log_type_enabled(v6, v7))
  {
    v24 = v0[20];
    v25 = v0[21];
    v26 = v0[19];

    (*(v24 + 8))(v25, v26);
    v27 = v0[13];
    if (!v27)
    {
      goto LABEL_16;
    }

LABEL_15:
    v28 = v1;
    v27(v1);

    goto LABEL_16;
  }

  v8 = v0[12];
  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v42 = v10;
  *v9 = 136315138;
  if (v8 >> 62)
  {
    v11 = sub_1B20A9DE4();
  }

  else
  {
    v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x1E69E7CC0];
  v40 = v1;
  v39 = v7;
  v38 = v10;
  if (v11)
  {
    v43 = MEMORY[0x1E69E7CC0];
    result = sub_1B2091C18(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
      return result;
    }

    v37 = v9;
    v14 = 0;
    v15 = v0[16];
    v12 = v43;
    v16 = v8 & 0xC000000000000001;
    v41 = v0[12] + 32;
    do
    {
      if (v16)
      {
        v17 = MEMORY[0x1B27403C0](v14, v0[12]);
      }

      else
      {
        v17 = *(v41 + 8 * v14);
      }

      v18 = v17;
      v19 = [v17 alarmID];
      sub_1B20A9864();

      v43 = v12;
      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1B2091C18((v20 > 1), v21 + 1, 1);
        v12 = v43;
      }

      v22 = v0[17];
      v23 = v0[15];
      ++v14;
      *(v12 + 16) = v21 + 1;
      (*(v15 + 32))(v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v21, v22, v23);
    }

    while (v11 != v14);
    v9 = v37;
  }

  v30 = v0[20];
  v31 = v0[21];
  v32 = v0[19];
  v33 = MEMORY[0x1B2740030](v12, v0[15]);
  v35 = v34;

  v36 = sub_1B2061574(v33, v35, &v42);

  *(v9 + 4) = v36;
  _os_log_impl(&dword_1B1F9F000, v6, v39, "Failed to delete alarms from core data: %s", v9, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v38);
  MEMORY[0x1B2741310](v38, -1, -1);
  MEMORY[0x1B2741310](v9, -1, -1);

  (*(v30 + 8))(v31, v32);
  v1 = v40;
  v27 = v0[13];
  if (v27)
  {
    goto LABEL_15;
  }

LABEL_16:

  v29 = v0[1];

  return v29();
}

uint64_t sub_1B206EFC8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B20A9D34();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B206F088, v1, 0);
}

uint64_t sub_1B206F088()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = type metadata accessor for MTCDAlarm();
  v7 = (*(v6 + 96))();
  v0[7] = v7;
  v8 = sub_1B2094E9C(v5, &selRef_alarmIDString);
  [v7 setPredicate_];

  v9 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];
  v0[8] = v9;
  v10 = [*(v4 + 112) newBackgroundContext];
  v0[9] = v10;
  v11 = swift_allocObject();
  v0[10] = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v10;
  v12 = v9;
  v13 = swift_task_alloc();
  v0[11] = v13;
  *v13 = v0;
  v13[1] = sub_1B206F244;
  v14 = v0[6];
  v15 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEDB6538](v13, v14, sub_1B209893C, v11, v15);
}

uint64_t sub_1B206F244()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 96) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = sub_1B206F470;
  }

  else
  {
    v7 = sub_1B206F3F0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1B206F3F0()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B206F470()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t MTCDDataStore.getAlarms(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = *&v2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v7 = v2;

  os_unfair_lock_lock(v6 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v6 + 4);
  v8 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v8)
  {
    v9 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v8(v10);
    sub_1B1FA6834(v8, v9);
  }
}

uint64_t sub_1B206F70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = sub_1B20A98B4();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B206F7DC, 0, 0);
}

uint64_t sub_1B206F7DC()
{
  v47 = v0;
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (!*(v1 + v2))
  {
    goto LABEL_8;
  }

  v3 = *(v0 + 96);
  *(v0 + 184) = 0;
  v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
  v5 = swift_allocObject();
  *(v5 + 16) = v0 + 184;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B2098884;
  *(v6 + 24) = v5;
  *(v0 + 48) = sub_1B20988D0;
  *(v0 + 56) = v6;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B20668F0;
  *(v0 + 40) = &block_descriptor_939;
  v7 = _Block_copy((v0 + 16));
  v8 = v3;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
    return result;
  }

  v10 = *(v0 + 184);

  if (v10 == 1)
  {
    v11 = *(v1 + v2);
    *(v0 + 152) = v11;
    if (v11)
    {

      v12 = swift_task_alloc();
      *(v0 + 160) = v12;
      *v12 = v0;
      v12[1] = sub_1B206FD78;

      return sub_1B207027C();
    }

    v31 = *(v0 + 144);
    v32 = *(v0 + 120);
    v33 = *(v0 + 128);
    v34 = sub_1B205E940();
    (*(v33 + 16))(v31, v34, v32);
    v35 = sub_1B20A9894();
    v36 = sub_1B20A9C74();

    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 144);
    v39 = *(v0 + 120);
    v40 = *(v0 + 128);
    if (v37)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v46 = v42;
      *v41 = 136315138;
      *(v0 + 88) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4E0, &qword_1B20B8FD0);
      v43 = sub_1B20A9A84();
      v45 = sub_1B2061574(v43, v44, &v46);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_1B1F9F000, v35, v36, "Fetched sample alarms: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x1B2741310](v42, -1, -1);
      MEMORY[0x1B2741310](v41, -1, -1);
    }

    (*(v40 + 8))(v38, v39);
    (*(v0 + 104))(0);
  }

  else
  {
LABEL_8:
    type metadata accessor for BugCapture();
    static BugCapture.reportBug(type:subType:name:value:)();
    sub_1B20915B0();
    v13 = swift_allocError();
    *v14 = 3;
    swift_willThrow();
    v16 = *(v0 + 128);
    v15 = *(v0 + 136);
    v17 = *(v0 + 120);
    v18 = sub_1B205E940();
    (*(v16 + 16))(v15, v18, v17);
    v19 = v13;
    v20 = sub_1B20A9894();
    v21 = sub_1B20A9C84();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v13;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_1B1F9F000, v20, v21, "Failed to fetch sample alarms with error: %@", v22, 0xCu);
      sub_1B20985B4(v23, &qword_1EB79F4B0, &qword_1B20B8ED8);
      MEMORY[0x1B2741310](v23, -1, -1);
      MEMORY[0x1B2741310](v22, -1, -1);
    }

    v27 = *(v0 + 128);
    v26 = *(v0 + 136);
    v28 = *(v0 + 120);
    v29 = *(v0 + 104);

    (*(v27 + 8))(v26, v28);
    v29(0);
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1B206FD78(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = sub_1B20700BC;
  }

  else
  {

    *(v4 + 176) = a1;
    v5 = sub_1B206FEA8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B206FEA8()
{
  v22 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = sub_1B205E940();
  (*(v4 + 16))(v2, v5, v3);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C74();

  if (os_log_type_enabled(v6, v7))
  {
    v20 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    *(v0 + 88) = v1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4E0, &qword_1B20B8FD0);
    v12 = sub_1B20A9A84();
    v14 = sub_1B2061574(v12, v13, &v21);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1B1F9F000, v6, v7, "Fetched sample alarms: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1B2741310](v11, -1, -1);
    MEMORY[0x1B2741310](v10, -1, -1);

    (*(v8 + 8))(v20, v9);
  }

  else
  {
    v15 = *(v0 + 144);
    v16 = *(v0 + 120);
    v17 = *(v0 + 128);

    (*(v17 + 8))(v15, v16);
  }

  (*(v0 + 104))(v1);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1B20700BC()
{

  v1 = v0[21];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v5 = sub_1B205E940();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1B20A9894();
  v8 = sub_1B20A9C84();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1B1F9F000, v7, v8, "Failed to fetch sample alarms with error: %@", v9, 0xCu);
    sub_1B20985B4(v10, &qword_1EB79F4B0, &qword_1B20B8ED8);
    MEMORY[0x1B2741310](v10, -1, -1);
    MEMORY[0x1B2741310](v9, -1, -1);
  }

  v14 = v0[16];
  v13 = v0[17];
  v15 = v0[15];
  v16 = v0[13];

  (*(v14 + 8))(v13, v15);
  v16(0);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1B207027C()
{
  v1[3] = v0;
  v2 = sub_1B20A9D34();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  sub_1B20A9BA4();
  v1[7] = sub_1B20A9B94();
  v4 = sub_1B20A9B64();
  v1[8] = v4;
  v1[9] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B2070370, v4, v3);
}

uint64_t sub_1B2070370()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v0[10] = [*(v0[3] + 112) viewContext];
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);

  v4 = swift_task_alloc();
  v0[11] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4D8, &qword_1B20B8FB0);
  *v4 = v0;
  v4[1] = sub_1B20704A4;
  v6 = v0[6];
  v7 = v0[3];

  return MEMORY[0x1EEDB6538](v0 + 2, v6, sub_1B2094810, v7, v5);
}

uint64_t sub_1B20704A4()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  *(*v1 + 96) = v0;

  (*(v5 + 8))(v4, v6);

  v7 = *(v2 + 72);
  v8 = *(v2 + 64);
  if (v0)
  {
    v9 = sub_1B20706EC;
  }

  else
  {
    v9 = sub_1B2070678;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1B2070678()
{

  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1B20706EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MTCDDataStore.getNonSleepAlarms(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = *&v2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v7 = v2;

  os_unfair_lock_lock(v6 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v6 + 4);
  v8 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v8)
  {
    v9 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v8(v10);
    sub_1B1FA6834(v8, v9);
  }
}

uint64_t sub_1B2070894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = sub_1B20A98B4();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2070964, 0, 0);
}

uint64_t sub_1B2070964()
{
  v47 = v0;
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (!*(v1 + v2))
  {
    goto LABEL_8;
  }

  v3 = *(v0 + 96);
  *(v0 + 184) = 0;
  v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
  v5 = swift_allocObject();
  *(v5 + 16) = v0 + 184;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B2098884;
  *(v6 + 24) = v5;
  *(v0 + 48) = sub_1B20988D0;
  *(v0 + 56) = v6;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B20668F0;
  *(v0 + 40) = &block_descriptor_927;
  v7 = _Block_copy((v0 + 16));
  v8 = v3;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
    return result;
  }

  v10 = *(v0 + 184);

  if (v10 == 1)
  {
    v11 = *(v1 + v2);
    *(v0 + 152) = v11;
    if (v11)
    {

      v12 = swift_task_alloc();
      *(v0 + 160) = v12;
      *v12 = v0;
      v12[1] = sub_1B2070F00;

      return sub_1B2071404(0);
    }

    v31 = *(v0 + 144);
    v32 = *(v0 + 120);
    v33 = *(v0 + 128);
    v34 = sub_1B205E940();
    (*(v33 + 16))(v31, v34, v32);
    v35 = sub_1B20A9894();
    v36 = sub_1B20A9C74();

    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 144);
    v39 = *(v0 + 120);
    v40 = *(v0 + 128);
    if (v37)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v46 = v42;
      *v41 = 136315138;
      *(v0 + 88) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4E0, &qword_1B20B8FD0);
      v43 = sub_1B20A9A84();
      v45 = sub_1B2061574(v43, v44, &v46);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_1B1F9F000, v35, v36, "Fetched non sleep alarms: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x1B2741310](v42, -1, -1);
      MEMORY[0x1B2741310](v41, -1, -1);
    }

    (*(v40 + 8))(v38, v39);
    (*(v0 + 104))(0);
  }

  else
  {
LABEL_8:
    type metadata accessor for BugCapture();
    static BugCapture.reportBug(type:subType:name:value:)();
    sub_1B20915B0();
    v13 = swift_allocError();
    *v14 = 3;
    swift_willThrow();
    v16 = *(v0 + 128);
    v15 = *(v0 + 136);
    v17 = *(v0 + 120);
    v18 = sub_1B205E940();
    (*(v16 + 16))(v15, v18, v17);
    v19 = v13;
    v20 = sub_1B20A9894();
    v21 = sub_1B20A9C84();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v13;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_1B1F9F000, v20, v21, "Failed to fetch non sleep alarms with error: %@", v22, 0xCu);
      sub_1B20985B4(v23, &qword_1EB79F4B0, &qword_1B20B8ED8);
      MEMORY[0x1B2741310](v23, -1, -1);
      MEMORY[0x1B2741310](v22, -1, -1);
    }

    v27 = *(v0 + 128);
    v26 = *(v0 + 136);
    v28 = *(v0 + 120);
    v29 = *(v0 + 104);

    (*(v27 + 8))(v26, v28);
    v29(0);
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1B2070F00(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = sub_1B2071244;
  }

  else
  {

    *(v4 + 176) = a1;
    v5 = sub_1B2071030;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B2071030()
{
  v22 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = sub_1B205E940();
  (*(v4 + 16))(v2, v5, v3);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C74();

  if (os_log_type_enabled(v6, v7))
  {
    v20 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    *(v0 + 88) = v1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4E0, &qword_1B20B8FD0);
    v12 = sub_1B20A9A84();
    v14 = sub_1B2061574(v12, v13, &v21);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1B1F9F000, v6, v7, "Fetched non sleep alarms: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1B2741310](v11, -1, -1);
    MEMORY[0x1B2741310](v10, -1, -1);

    (*(v8 + 8))(v20, v9);
  }

  else
  {
    v15 = *(v0 + 144);
    v16 = *(v0 + 120);
    v17 = *(v0 + 128);

    (*(v17 + 8))(v15, v16);
  }

  (*(v0 + 104))(v1);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1B2071244()
{

  v1 = v0[21];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v5 = sub_1B205E940();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1B20A9894();
  v8 = sub_1B20A9C84();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1B1F9F000, v7, v8, "Failed to fetch non sleep alarms with error: %@", v9, 0xCu);
    sub_1B20985B4(v10, &qword_1EB79F4B0, &qword_1B20B8ED8);
    MEMORY[0x1B2741310](v10, -1, -1);
    MEMORY[0x1B2741310](v9, -1, -1);
  }

  v14 = v0[16];
  v13 = v0[17];
  v15 = v0[15];
  v16 = v0[13];

  (*(v14 + 8))(v13, v15);
  v16(0);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1B2071404(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 112) = a1;
  v3 = sub_1B20A9D34();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();
  sub_1B20A9BA4();
  *(v2 + 56) = sub_1B20A9B94();
  v5 = sub_1B20A9B64();
  *(v2 + 64) = v5;
  *(v2 + 72) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B20714FC, v5, v4);
}

uint64_t sub_1B20714FC()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 112);
  *(v0 + 80) = [*(v4 + 112) viewContext];
  v6 = swift_allocObject();
  *(v0 + 88) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);

  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4E0, &qword_1B20B8FD0);
  *v7 = v0;
  v7[1] = sub_1B2071660;
  v9 = *(v0 + 48);

  return MEMORY[0x1EEDB6538](v0 + 16, v9, sub_1B20948F8, v6, v8);
}

uint64_t sub_1B2071660()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  *(*v1 + 104) = v0;

  (*(v5 + 8))(v4, v6);

  v7 = *(v2 + 72);
  v8 = *(v2 + 64);
  if (v0)
  {
    v9 = sub_1B209888C;
  }

  else
  {
    v9 = sub_1B20988A4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t MTCDDataStore.getSleepAlarms(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = *&v2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v7 = v2;

  os_unfair_lock_lock(v6 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v6 + 4);
  v8 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v8)
  {
    v9 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v8(v10);
    sub_1B1FA6834(v8, v9);
  }
}

uint64_t sub_1B2071970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = sub_1B20A98B4();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2071A40, 0, 0);
}

uint64_t sub_1B2071A40()
{
  v47 = v0;
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (!*(v1 + v2))
  {
    goto LABEL_8;
  }

  v3 = *(v0 + 96);
  *(v0 + 184) = 0;
  v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
  v5 = swift_allocObject();
  *(v5 + 16) = v0 + 184;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B2098884;
  *(v6 + 24) = v5;
  *(v0 + 48) = sub_1B20988D0;
  *(v0 + 56) = v6;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B20668F0;
  *(v0 + 40) = &block_descriptor_915;
  v7 = _Block_copy((v0 + 16));
  v8 = v3;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
    return result;
  }

  v10 = *(v0 + 184);

  if (v10 == 1)
  {
    v11 = *(v1 + v2);
    *(v0 + 152) = v11;
    if (v11)
    {

      v12 = swift_task_alloc();
      *(v0 + 160) = v12;
      *v12 = v0;
      v12[1] = sub_1B2071FE8;

      return sub_1B2071404(1);
    }

    v31 = *(v0 + 144);
    v32 = *(v0 + 120);
    v33 = *(v0 + 128);
    v34 = sub_1B205E940();
    (*(v33 + 16))(v31, v34, v32);
    v35 = sub_1B20A9894();
    v36 = sub_1B20A9C74();

    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 144);
    v39 = *(v0 + 120);
    v40 = *(v0 + 128);
    if (v37)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v46 = v42;
      *v41 = 136315138;
      *(v0 + 88) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4E0, &qword_1B20B8FD0);
      v43 = sub_1B20A9A84();
      v45 = sub_1B2061574(v43, v44, &v46);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_1B1F9F000, v35, v36, "Fetched sleep alarms: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x1B2741310](v42, -1, -1);
      MEMORY[0x1B2741310](v41, -1, -1);
    }

    (*(v40 + 8))(v38, v39);
    (*(v0 + 104))(0);
  }

  else
  {
LABEL_8:
    type metadata accessor for BugCapture();
    static BugCapture.reportBug(type:subType:name:value:)();
    sub_1B20915B0();
    v13 = swift_allocError();
    *v14 = 3;
    swift_willThrow();
    v16 = *(v0 + 128);
    v15 = *(v0 + 136);
    v17 = *(v0 + 120);
    v18 = sub_1B205E940();
    (*(v16 + 16))(v15, v18, v17);
    v19 = v13;
    v20 = sub_1B20A9894();
    v21 = sub_1B20A9C84();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v13;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_1B1F9F000, v20, v21, "Failed to fetch sleep alarms with error: %@", v22, 0xCu);
      sub_1B20985B4(v23, &qword_1EB79F4B0, &qword_1B20B8ED8);
      MEMORY[0x1B2741310](v23, -1, -1);
      MEMORY[0x1B2741310](v22, -1, -1);
    }

    v27 = *(v0 + 128);
    v26 = *(v0 + 136);
    v28 = *(v0 + 120);
    v29 = *(v0 + 104);

    (*(v27 + 8))(v26, v28);
    v29(0);
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1B2071FE8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = sub_1B207232C;
  }

  else
  {

    *(v4 + 176) = a1;
    v5 = sub_1B2072118;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B2072118()
{
  v22 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = sub_1B205E940();
  (*(v4 + 16))(v2, v5, v3);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C74();

  if (os_log_type_enabled(v6, v7))
  {
    v20 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    *(v0 + 88) = v1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4E0, &qword_1B20B8FD0);
    v12 = sub_1B20A9A84();
    v14 = sub_1B2061574(v12, v13, &v21);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1B1F9F000, v6, v7, "Fetched sleep alarms: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1B2741310](v11, -1, -1);
    MEMORY[0x1B2741310](v10, -1, -1);

    (*(v8 + 8))(v20, v9);
  }

  else
  {
    v15 = *(v0 + 144);
    v16 = *(v0 + 120);
    v17 = *(v0 + 128);

    (*(v17 + 8))(v15, v16);
  }

  (*(v0 + 104))(v1);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1B207232C()
{

  v1 = v0[21];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v5 = sub_1B205E940();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1B20A9894();
  v8 = sub_1B20A9C84();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1B1F9F000, v7, v8, "Failed to fetch sleep alarms with error: %@", v9, 0xCu);
    sub_1B20985B4(v10, &qword_1EB79F4B0, &qword_1B20B8ED8);
    MEMORY[0x1B2741310](v10, -1, -1);
    MEMORY[0x1B2741310](v9, -1, -1);
  }

  v14 = v0[16];
  v13 = v0[17];
  v15 = v0[15];
  v16 = v0[13];

  (*(v14 + 8))(v13, v15);
  v16(0);

  v17 = v0[1];

  return v17();
}

Swift::Void __swiftcall MTCDDataStore.addTimers(_:)(Swift::OpaquePointer a1)
{
  v3 = swift_allocObject();
  v3[2]._rawValue = v1;
  v3[3]._rawValue = a1._rawValue;
  v3[4]._rawValue = 0;
  v3[5]._rawValue = 0;
  v4 = *&v1[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v5 = v1;

  os_unfair_lock_lock(v4 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v4 + 4);
  v6 = *&v5[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v6)
  {
    v7 = *&v5[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v6(v8);
    sub_1B1FA6834(v6, v7);
  }
}

uint64_t MTCDDataStore.addTimers(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v9 = v3;

  sub_1B209192C(a2, a3);
  os_unfair_lock_lock(v8 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v8 + 4);
  v10 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v10)
  {
    v11 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v10(v12);
    sub_1B1FA6834(v10, v11);
  }
}

uint64_t sub_1B207276C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_1B20A9874();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v6 = sub_1B20A98B4();
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B20728A4, 0, 0);
}

void *sub_1B20728A4()
{
  v82 = v0;
  v1 = *(v0 + 88);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    v3 = *(v0 + 88);
    *(v0 + 208) = 0;
    v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
    v5 = swift_allocObject();
    *(v5 + 16) = v0 + 208;
    *(v5 + 24) = v3;
    v6 = swift_allocObject();
    v6[2].isa = sub_1B2098884;
    v6[3].isa = v5;
    *(v0 + 48) = sub_1B20988D0;
    *(v0 + 56) = v6;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1B20668F0;
    *(v0 + 40) = &block_descriptor_903;
    v7 = _Block_copy((v0 + 16));
    v8 = *(v0 + 56);
    v9 = v3;

    dispatch_sync(v4, v7);
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_47;
    }

    v11 = *(v0 + 208);

    if (v11 == 1)
    {
      v12 = *(v1 + v2);
      *(v0 + 184) = v12;
      if (v12)
      {

        v13 = swift_task_alloc();
        *(v0 + 192) = v13;
        *v13 = v0;
        v13[1] = sub_1B20731A8;
        v14 = *(v0 + 96);

        return sub_1B20739D0(v14);
      }

      v47 = *(v0 + 176);
      v48 = *(v0 + 152);
      v6 = *(v0 + 160);
      v49 = sub_1B205E940();
      (v6[2].isa)(v47, v49, v48);

      v50 = sub_1B20A9894();
      LOBYTE(v6) = sub_1B20A9C74();

      if (!os_log_type_enabled(v50, v6))
      {
        v62 = *(v0 + 176);
        v64 = *(v0 + 152);
        v63 = *(v0 + 160);

        (*(v63 + 8))(v62, v64);
LABEL_44:
        v72 = *(v0 + 104);
        if (v72)
        {
          v72(0);
        }

        goto LABEL_24;
      }

      log = v50;
      isEscapingClosureAtFileLocation = *(v0 + 96);
      v7 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v80 = v76;
      *v7 = 136315138;
      if (!(isEscapingClosureAtFileLocation >> 62))
      {
        v51 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_32:
        v52 = MEMORY[0x1E69E7CC0];
        if (v51)
        {
          v75 = v6;
          v81 = MEMORY[0x1E69E7CC0];
          result = sub_1B2091C18(0, v51 & ~(v51 >> 63), 0);
          if (v51 < 0)
          {
            __break(1u);
            return result;
          }

          v53 = 0;
          v54 = *(v0 + 128);
          v52 = v81;
          v79 = *(v0 + 96) + 32;
          do
          {
            if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
            {
              v55 = MEMORY[0x1B27403C0](v53, *(v0 + 96));
            }

            else
            {
              v55 = *(v79 + 8 * v53);
            }

            v56 = v55;
            v57 = [v55 timerID];
            sub_1B20A9864();

            v81 = v52;
            v59 = *(v52 + 16);
            v58 = *(v52 + 24);
            if (v59 >= v58 >> 1)
            {
              sub_1B2091C18((v58 > 1), v59 + 1, 1);
              v52 = v81;
            }

            v60 = *(v0 + 144);
            v61 = *(v0 + 120);
            ++v53;
            *(v52 + 16) = v59 + 1;
            (*(v54 + 32))(v52 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v59, v60, v61);
          }

          while (v51 != v53);
          LOBYTE(v6) = v75;
        }

        v65 = *(v0 + 176);
        v67 = *(v0 + 152);
        v66 = *(v0 + 160);
        v68 = MEMORY[0x1B2740030](v52, *(v0 + 120));
        v70 = v69;

        v71 = sub_1B2061574(v68, v70, &v80);

        *(v7 + 1) = v71;
        _os_log_impl(&dword_1B1F9F000, log, v6, "Saved timers into core data: %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v76);
        MEMORY[0x1B2741310](v76, -1, -1);
        MEMORY[0x1B2741310](v7, -1, -1);

        (*(v66 + 8))(v65, v67);
        goto LABEL_44;
      }

LABEL_49:
      v51 = sub_1B20A9DE4();
      goto LABEL_32;
    }
  }

  type metadata accessor for BugCapture();
  static BugCapture.reportBug(type:subType:name:value:)();
  sub_1B20915B0();
  v16 = swift_allocError();
  *v17 = 3;
  swift_willThrow();
  v18 = *(v0 + 160);
  v19 = *(v0 + 168);
  v20 = *(v0 + 152);
  v21 = sub_1B205E940();
  (*(v18 + 16))(v19, v21, v20);

  v6 = sub_1B20A9894();
  v22 = sub_1B20A9C84();

  if (!os_log_type_enabled(v6, v22))
  {
    v34 = *(v0 + 160);
    v35 = *(v0 + 168);
    v36 = *(v0 + 152);

    (*(v34 + 8))(v35, v36);
    v37 = *(v0 + 104);
    if (!v37)
    {
      goto LABEL_23;
    }

LABEL_22:
    v38 = v16;
    v37(v16);

    goto LABEL_23;
  }

  log = v16;
  isEscapingClosureAtFileLocation = *(v0 + 96);
  v7 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v80 = v8;
  *v7 = 136315138;
  LODWORD(v76) = v22;
  if (!(isEscapingClosureAtFileLocation >> 62))
  {
    v23 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_11;
  }

LABEL_47:
  v23 = sub_1B20A9DE4();
LABEL_11:
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v73 = v8;
    v74 = v7;
    v81 = MEMORY[0x1E69E7CC0];
    sub_1B2091C18(0, v23 & ~(v23 >> 63), 0);
    if (v23 < 0)
    {
      __break(1u);
      goto LABEL_49;
    }

    v25 = 0;
    v26 = *(v0 + 128);
    v24 = v81;
    v78 = *(v0 + 96) + 32;
    do
    {
      if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1B27403C0](v25, *(v0 + 96));
      }

      else
      {
        v27 = *(v78 + 8 * v25);
      }

      v28 = v27;
      v29 = [v27 timerID];
      sub_1B20A9864();

      v81 = v24;
      v31 = *(v24 + 16);
      v30 = *(v24 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1B2091C18((v30 > 1), v31 + 1, 1);
        v24 = v81;
      }

      v32 = *(v0 + 136);
      v33 = *(v0 + 120);
      ++v25;
      *(v24 + 16) = v31 + 1;
      (*(v26 + 32))(v24 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v31, v32, v33);
    }

    while (v23 != v25);
    v7 = v74;
    v8 = v73;
  }

  v40 = *(v0 + 160);
  v41 = *(v0 + 168);
  v42 = *(v0 + 152);
  v43 = MEMORY[0x1B2740030](v24, *(v0 + 120));
  v45 = v44;

  v46 = sub_1B2061574(v43, v45, &v80);

  *(v7 + 1) = v46;
  _os_log_impl(&dword_1B1F9F000, v6, v76, "Failed to save timers into core data: %s", v7, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v8);
  MEMORY[0x1B2741310](v8, -1, -1);
  MEMORY[0x1B2741310](v7, -1, -1);

  (*(v40 + 8))(v41, v42);
  v16 = log;
  v37 = *(v0 + 104);
  if (v37)
  {
    goto LABEL_22;
  }

LABEL_23:

LABEL_24:

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1B20731A8()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1B207362C;
  }

  else
  {

    v2 = sub_1B20732C4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void *sub_1B20732C4()
{
  v41 = v0;
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = sub_1B205E940();
  (*(v3 + 16))(v1, v4, v2);

  v5 = sub_1B20A9894();
  v6 = sub_1B20A9C74();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[12];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v39 = v9;
    *v8 = 136315138;
    if (v7 >> 62)
    {
      v10 = sub_1B20A9DE4();
    }

    else
    {
      v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = MEMORY[0x1E69E7CC0];
    v36 = v9;
    log = v5;
    if (v10)
    {
      v40 = MEMORY[0x1E69E7CC0];
      result = sub_1B2091C18(0, v10 & ~(v10 >> 63), 0);
      if (v10 < 0)
      {
        __break(1u);
        return result;
      }

      v34 = v8;
      v35 = v6;
      v13 = 0;
      v14 = v0[16];
      v11 = v40;
      v38 = v0[12] + 32;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1B27403C0](v13, v0[12]);
        }

        else
        {
          v15 = *(v38 + 8 * v13);
        }

        v16 = v15;
        v17 = [v15 timerID];
        sub_1B20A9864();

        v40 = v11;
        v19 = *(v11 + 16);
        v18 = *(v11 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1B2091C18((v18 > 1), v19 + 1, 1);
          v11 = v40;
        }

        v20 = v0[18];
        v21 = v0[15];
        ++v13;
        *(v11 + 16) = v19 + 1;
        (*(v14 + 32))(v11 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v19, v20, v21);
      }

      while (v10 != v13);
      v6 = v35;
      v8 = v34;
    }

    v25 = v0[22];
    v27 = v0[19];
    v26 = v0[20];
    v28 = MEMORY[0x1B2740030](v11, v0[15]);
    v30 = v29;

    v31 = sub_1B2061574(v28, v30, &v39);

    *(v8 + 4) = v31;
    _os_log_impl(&dword_1B1F9F000, log, v6, "Saved timers into core data: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x1B2741310](v36, -1, -1);
    MEMORY[0x1B2741310](v8, -1, -1);

    (*(v26 + 8))(v25, v27);
  }

  else
  {
    v22 = v0[22];
    v24 = v0[19];
    v23 = v0[20];

    (*(v23 + 8))(v22, v24);
  }

  v32 = v0[13];
  if (v32)
  {
    v32(0);
  }

  v33 = v0[1];

  return v33();
}

void *sub_1B207362C()
{
  v44 = v0;

  v1 = v0[25];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[19];
  v5 = sub_1B205E940();
  (*(v2 + 16))(v3, v5, v4);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C84();

  if (!os_log_type_enabled(v6, v7))
  {
    v24 = v0[20];
    v25 = v0[21];
    v26 = v0[19];

    (*(v24 + 8))(v25, v26);
    v27 = v0[13];
    if (!v27)
    {
      goto LABEL_16;
    }

LABEL_15:
    v28 = v1;
    v27(v1);

    goto LABEL_16;
  }

  v8 = v0[12];
  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v42 = v10;
  *v9 = 136315138;
  if (v8 >> 62)
  {
    v11 = sub_1B20A9DE4();
  }

  else
  {
    v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x1E69E7CC0];
  v40 = v1;
  v39 = v7;
  v38 = v10;
  if (v11)
  {
    v43 = MEMORY[0x1E69E7CC0];
    result = sub_1B2091C18(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
      return result;
    }

    v37 = v9;
    v14 = 0;
    v15 = v0[16];
    v12 = v43;
    v16 = v8 & 0xC000000000000001;
    v41 = v0[12] + 32;
    do
    {
      if (v16)
      {
        v17 = MEMORY[0x1B27403C0](v14, v0[12]);
      }

      else
      {
        v17 = *(v41 + 8 * v14);
      }

      v18 = v17;
      v19 = [v17 timerID];
      sub_1B20A9864();

      v43 = v12;
      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1B2091C18((v20 > 1), v21 + 1, 1);
        v12 = v43;
      }

      v22 = v0[17];
      v23 = v0[15];
      ++v14;
      *(v12 + 16) = v21 + 1;
      (*(v15 + 32))(v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v21, v22, v23);
    }

    while (v11 != v14);
    v9 = v37;
  }

  v30 = v0[20];
  v31 = v0[21];
  v32 = v0[19];
  v33 = MEMORY[0x1B2740030](v12, v0[15]);
  v35 = v34;

  v36 = sub_1B2061574(v33, v35, &v42);

  *(v9 + 4) = v36;
  _os_log_impl(&dword_1B1F9F000, v6, v39, "Failed to save timers into core data: %s", v9, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v38);
  MEMORY[0x1B2741310](v38, -1, -1);
  MEMORY[0x1B2741310](v9, -1, -1);

  (*(v30 + 8))(v31, v32);
  v1 = v40;
  v27 = v0[13];
  if (v27)
  {
    goto LABEL_15;
  }

LABEL_16:

  v29 = v0[1];

  return v29();
}

uint64_t sub_1B20739D0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B20A9D34();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2073A90, v1, 0);
}

uint64_t sub_1B2073A90()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = [*(v0[3] + 112) newBackgroundContext];
  v0[7] = v5;
  v6 = swift_allocObject();
  v0[8] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);

  v5;
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_1B2069E10;
  v8 = v0[6];
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEDB6538](v7, v8, sub_1B2094BC0, v6, v9);
}

Swift::Void __swiftcall MTCDDataStore.updateTimers(_:)(Swift::OpaquePointer a1)
{
  v3 = swift_allocObject();
  v3[2]._rawValue = v1;
  v3[3]._rawValue = a1._rawValue;
  v3[4]._rawValue = 0;
  v3[5]._rawValue = 0;
  v4 = *&v1[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v5 = v1;

  os_unfair_lock_lock(v4 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v4 + 4);
  v6 = *&v5[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v6)
  {
    v7 = *&v5[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v6(v8);
    sub_1B1FA6834(v6, v7);
  }
}

uint64_t MTCDDataStore.updateTimers(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v9 = v3;

  sub_1B209192C(a2, a3);
  os_unfair_lock_lock(v8 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v8 + 4);
  v10 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v10)
  {
    v11 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v10(v12);
    sub_1B1FA6834(v10, v11);
  }
}

uint64_t sub_1B2073F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_1B20A9874();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v6 = sub_1B20A98B4();
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2074070, 0, 0);
}

void *sub_1B2074070()
{
  v82 = v0;
  v1 = *(v0 + 88);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    v3 = *(v0 + 88);
    *(v0 + 208) = 0;
    v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
    v5 = swift_allocObject();
    *(v5 + 16) = v0 + 208;
    *(v5 + 24) = v3;
    v6 = swift_allocObject();
    v6[2].isa = sub_1B2098884;
    v6[3].isa = v5;
    *(v0 + 48) = sub_1B20988D0;
    *(v0 + 56) = v6;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1B20668F0;
    *(v0 + 40) = &block_descriptor_891;
    v7 = _Block_copy((v0 + 16));
    v8 = *(v0 + 56);
    v9 = v3;

    dispatch_sync(v4, v7);
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_47;
    }

    v11 = *(v0 + 208);

    if (v11 == 1)
    {
      v12 = *(v1 + v2);
      *(v0 + 184) = v12;
      if (v12)
      {

        v13 = swift_task_alloc();
        *(v0 + 192) = v13;
        *v13 = v0;
        v13[1] = sub_1B2074978;
        v14 = *(v0 + 96);

        return sub_1B20751A0(v14);
      }

      v47 = *(v0 + 176);
      v48 = *(v0 + 152);
      v6 = *(v0 + 160);
      v49 = sub_1B205E940();
      (v6[2].isa)(v47, v49, v48);

      v50 = sub_1B20A9894();
      LOBYTE(v6) = sub_1B20A9C74();

      if (!os_log_type_enabled(v50, v6))
      {
        v62 = *(v0 + 176);
        v64 = *(v0 + 152);
        v63 = *(v0 + 160);

        (*(v63 + 8))(v62, v64);
LABEL_44:
        v72 = *(v0 + 104);
        if (v72)
        {
          v72(0);
        }

        goto LABEL_24;
      }

      log = v50;
      isEscapingClosureAtFileLocation = *(v0 + 96);
      v7 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v80 = v76;
      *v7 = 136315138;
      if (!(isEscapingClosureAtFileLocation >> 62))
      {
        v51 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_32:
        v52 = MEMORY[0x1E69E7CC0];
        if (v51)
        {
          v75 = v6;
          v81 = MEMORY[0x1E69E7CC0];
          result = sub_1B2091C18(0, v51 & ~(v51 >> 63), 0);
          if (v51 < 0)
          {
            __break(1u);
            return result;
          }

          v53 = 0;
          v54 = *(v0 + 128);
          v52 = v81;
          v79 = *(v0 + 96) + 32;
          do
          {
            if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
            {
              v55 = MEMORY[0x1B27403C0](v53, *(v0 + 96));
            }

            else
            {
              v55 = *(v79 + 8 * v53);
            }

            v56 = v55;
            v57 = [v55 timerID];
            sub_1B20A9864();

            v81 = v52;
            v59 = *(v52 + 16);
            v58 = *(v52 + 24);
            if (v59 >= v58 >> 1)
            {
              sub_1B2091C18((v58 > 1), v59 + 1, 1);
              v52 = v81;
            }

            v60 = *(v0 + 144);
            v61 = *(v0 + 120);
            ++v53;
            *(v52 + 16) = v59 + 1;
            (*(v54 + 32))(v52 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v59, v60, v61);
          }

          while (v51 != v53);
          LOBYTE(v6) = v75;
        }

        v65 = *(v0 + 176);
        v67 = *(v0 + 152);
        v66 = *(v0 + 160);
        v68 = MEMORY[0x1B2740030](v52, *(v0 + 120));
        v70 = v69;

        v71 = sub_1B2061574(v68, v70, &v80);

        *(v7 + 1) = v71;
        _os_log_impl(&dword_1B1F9F000, log, v6, "Updated timers in core data: %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v76);
        MEMORY[0x1B2741310](v76, -1, -1);
        MEMORY[0x1B2741310](v7, -1, -1);

        (*(v66 + 8))(v65, v67);
        goto LABEL_44;
      }

LABEL_49:
      v51 = sub_1B20A9DE4();
      goto LABEL_32;
    }
  }

  type metadata accessor for BugCapture();
  static BugCapture.reportBug(type:subType:name:value:)();
  sub_1B20915B0();
  v16 = swift_allocError();
  *v17 = 3;
  swift_willThrow();
  v18 = *(v0 + 160);
  v19 = *(v0 + 168);
  v20 = *(v0 + 152);
  v21 = sub_1B205E940();
  (*(v18 + 16))(v19, v21, v20);

  v6 = sub_1B20A9894();
  v22 = sub_1B20A9C84();

  if (!os_log_type_enabled(v6, v22))
  {
    v34 = *(v0 + 160);
    v35 = *(v0 + 168);
    v36 = *(v0 + 152);

    (*(v34 + 8))(v35, v36);
    v37 = *(v0 + 104);
    if (!v37)
    {
      goto LABEL_23;
    }

LABEL_22:
    v38 = v16;
    v37(v16);

    goto LABEL_23;
  }

  log = v16;
  isEscapingClosureAtFileLocation = *(v0 + 96);
  v7 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v80 = v8;
  *v7 = 136315138;
  LODWORD(v76) = v22;
  if (!(isEscapingClosureAtFileLocation >> 62))
  {
    v23 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_11;
  }

LABEL_47:
  v23 = sub_1B20A9DE4();
LABEL_11:
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v73 = v8;
    v74 = v7;
    v81 = MEMORY[0x1E69E7CC0];
    sub_1B2091C18(0, v23 & ~(v23 >> 63), 0);
    if (v23 < 0)
    {
      __break(1u);
      goto LABEL_49;
    }

    v25 = 0;
    v26 = *(v0 + 128);
    v24 = v81;
    v78 = *(v0 + 96) + 32;
    do
    {
      if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1B27403C0](v25, *(v0 + 96));
      }

      else
      {
        v27 = *(v78 + 8 * v25);
      }

      v28 = v27;
      v29 = [v27 timerID];
      sub_1B20A9864();

      v81 = v24;
      v31 = *(v24 + 16);
      v30 = *(v24 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1B2091C18((v30 > 1), v31 + 1, 1);
        v24 = v81;
      }

      v32 = *(v0 + 136);
      v33 = *(v0 + 120);
      ++v25;
      *(v24 + 16) = v31 + 1;
      (*(v26 + 32))(v24 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v31, v32, v33);
    }

    while (v23 != v25);
    v7 = v74;
    v8 = v73;
  }

  v40 = *(v0 + 160);
  v41 = *(v0 + 168);
  v42 = *(v0 + 152);
  v43 = MEMORY[0x1B2740030](v24, *(v0 + 120));
  v45 = v44;

  v46 = sub_1B2061574(v43, v45, &v80);

  *(v7 + 1) = v46;
  _os_log_impl(&dword_1B1F9F000, v6, v76, "Failed to update timers in core data: %s", v7, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v8);
  MEMORY[0x1B2741310](v8, -1, -1);
  MEMORY[0x1B2741310](v7, -1, -1);

  (*(v40 + 8))(v41, v42);
  v16 = log;
  v37 = *(v0 + 104);
  if (v37)
  {
    goto LABEL_22;
  }

LABEL_23:

LABEL_24:

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1B2074978()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1B2074DFC;
  }

  else
  {

    v2 = sub_1B2074A94;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void *sub_1B2074A94()
{
  v41 = v0;
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = sub_1B205E940();
  (*(v3 + 16))(v1, v4, v2);

  v5 = sub_1B20A9894();
  v6 = sub_1B20A9C74();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[12];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v39 = v9;
    *v8 = 136315138;
    if (v7 >> 62)
    {
      v10 = sub_1B20A9DE4();
    }

    else
    {
      v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = MEMORY[0x1E69E7CC0];
    v36 = v9;
    log = v5;
    if (v10)
    {
      v40 = MEMORY[0x1E69E7CC0];
      result = sub_1B2091C18(0, v10 & ~(v10 >> 63), 0);
      if (v10 < 0)
      {
        __break(1u);
        return result;
      }

      v34 = v8;
      v35 = v6;
      v13 = 0;
      v14 = v0[16];
      v11 = v40;
      v38 = v0[12] + 32;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1B27403C0](v13, v0[12]);
        }

        else
        {
          v15 = *(v38 + 8 * v13);
        }

        v16 = v15;
        v17 = [v15 timerID];
        sub_1B20A9864();

        v40 = v11;
        v19 = *(v11 + 16);
        v18 = *(v11 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1B2091C18((v18 > 1), v19 + 1, 1);
          v11 = v40;
        }

        v20 = v0[18];
        v21 = v0[15];
        ++v13;
        *(v11 + 16) = v19 + 1;
        (*(v14 + 32))(v11 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v19, v20, v21);
      }

      while (v10 != v13);
      v6 = v35;
      v8 = v34;
    }

    v25 = v0[22];
    v27 = v0[19];
    v26 = v0[20];
    v28 = MEMORY[0x1B2740030](v11, v0[15]);
    v30 = v29;

    v31 = sub_1B2061574(v28, v30, &v39);

    *(v8 + 4) = v31;
    _os_log_impl(&dword_1B1F9F000, log, v6, "Updated timers in core data: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x1B2741310](v36, -1, -1);
    MEMORY[0x1B2741310](v8, -1, -1);

    (*(v26 + 8))(v25, v27);
  }

  else
  {
    v22 = v0[22];
    v24 = v0[19];
    v23 = v0[20];

    (*(v23 + 8))(v22, v24);
  }

  v32 = v0[13];
  if (v32)
  {
    v32(0);
  }

  v33 = v0[1];

  return v33();
}

void *sub_1B2074DFC()
{
  v44 = v0;

  v1 = v0[25];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[19];
  v5 = sub_1B205E940();
  (*(v2 + 16))(v3, v5, v4);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C84();

  if (!os_log_type_enabled(v6, v7))
  {
    v24 = v0[20];
    v25 = v0[21];
    v26 = v0[19];

    (*(v24 + 8))(v25, v26);
    v27 = v0[13];
    if (!v27)
    {
      goto LABEL_16;
    }

LABEL_15:
    v28 = v1;
    v27(v1);

    goto LABEL_16;
  }

  v8 = v0[12];
  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v42 = v10;
  *v9 = 136315138;
  if (v8 >> 62)
  {
    v11 = sub_1B20A9DE4();
  }

  else
  {
    v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x1E69E7CC0];
  v40 = v1;
  v39 = v7;
  v38 = v10;
  if (v11)
  {
    v43 = MEMORY[0x1E69E7CC0];
    result = sub_1B2091C18(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
      return result;
    }

    v37 = v9;
    v14 = 0;
    v15 = v0[16];
    v12 = v43;
    v16 = v8 & 0xC000000000000001;
    v41 = v0[12] + 32;
    do
    {
      if (v16)
      {
        v17 = MEMORY[0x1B27403C0](v14, v0[12]);
      }

      else
      {
        v17 = *(v41 + 8 * v14);
      }

      v18 = v17;
      v19 = [v17 timerID];
      sub_1B20A9864();

      v43 = v12;
      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1B2091C18((v20 > 1), v21 + 1, 1);
        v12 = v43;
      }

      v22 = v0[17];
      v23 = v0[15];
      ++v14;
      *(v12 + 16) = v21 + 1;
      (*(v15 + 32))(v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v21, v22, v23);
    }

    while (v11 != v14);
    v9 = v37;
  }

  v30 = v0[20];
  v31 = v0[21];
  v32 = v0[19];
  v33 = MEMORY[0x1B2740030](v12, v0[15]);
  v35 = v34;

  v36 = sub_1B2061574(v33, v35, &v42);

  *(v9 + 4) = v36;
  _os_log_impl(&dword_1B1F9F000, v6, v39, "Failed to update timers in core data: %s", v9, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v38);
  MEMORY[0x1B2741310](v38, -1, -1);
  MEMORY[0x1B2741310](v9, -1, -1);

  (*(v30 + 8))(v31, v32);
  v1 = v40;
  v27 = v0[13];
  if (v27)
  {
    goto LABEL_15;
  }

LABEL_16:

  v29 = v0[1];

  return v29();
}

uint64_t sub_1B20751A0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B20A9D34();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2075260, v1, 0);
}

uint64_t sub_1B2075260()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  type metadata accessor for MTCDTimer();
  v6 = static MTCDTimer.fetchRequest()();
  v0[7] = v6;
  v7 = sub_1B2094E9C(v5, &selRef_timerIDString);
  [v6 setPredicate_];

  v8 = [*(v4 + 112) newBackgroundContext];
  v0[8] = v8;
  v9 = swift_allocObject();
  v0[9] = v9;
  v9[2] = v8;
  v9[3] = v6;
  v9[4] = v5;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v8;
  v10 = v6;

  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_1B20753FC;
  v12 = v0[6];
  v13 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEDB6538](v11, v12, sub_1B20950AC, v9, v13);
}

uint64_t sub_1B20753FC()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 88) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = sub_1B2098974;
  }

  else
  {
    v7 = sub_1B20988CC;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

Swift::Void __swiftcall MTCDDataStore.deleteTimers(_:)(Swift::OpaquePointer a1)
{
  v3 = swift_allocObject();
  v3[2]._rawValue = v1;
  v3[3]._rawValue = a1._rawValue;
  v3[4]._rawValue = 0;
  v3[5]._rawValue = 0;
  v4 = *&v1[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v5 = v1;

  os_unfair_lock_lock(v4 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v4 + 4);
  v6 = *&v5[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v6)
  {
    v7 = *&v5[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v6(v8);
    sub_1B1FA6834(v6, v7);
  }
}

uint64_t MTCDDataStore.deleteTimers(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v9 = v3;

  sub_1B209192C(a2, a3);
  os_unfair_lock_lock(v8 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v8 + 4);
  v10 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v10)
  {
    v11 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v10(v12);
    sub_1B1FA6834(v10, v11);
  }
}

uint64_t sub_1B2075908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_1B20A9874();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v6 = sub_1B20A98B4();
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2075A40, 0, 0);
}

void *sub_1B2075A40()
{
  v82 = v0;
  v1 = *(v0 + 88);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    v3 = *(v0 + 88);
    *(v0 + 208) = 0;
    v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
    v5 = swift_allocObject();
    *(v5 + 16) = v0 + 208;
    *(v5 + 24) = v3;
    v6 = swift_allocObject();
    v6[2].isa = sub_1B2098884;
    v6[3].isa = v5;
    *(v0 + 48) = sub_1B20988D0;
    *(v0 + 56) = v6;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1B20668F0;
    *(v0 + 40) = &block_descriptor_879;
    v7 = _Block_copy((v0 + 16));
    v8 = *(v0 + 56);
    v9 = v3;

    dispatch_sync(v4, v7);
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_47;
    }

    v11 = *(v0 + 208);

    if (v11 == 1)
    {
      v12 = *(v1 + v2);
      *(v0 + 184) = v12;
      if (v12)
      {

        v13 = swift_task_alloc();
        *(v0 + 192) = v13;
        *v13 = v0;
        v13[1] = sub_1B2076348;
        v14 = *(v0 + 96);

        return sub_1B2076B70(v14);
      }

      v47 = *(v0 + 176);
      v48 = *(v0 + 152);
      v6 = *(v0 + 160);
      v49 = sub_1B205E940();
      (v6[2].isa)(v47, v49, v48);

      v50 = sub_1B20A9894();
      LOBYTE(v6) = sub_1B20A9C74();

      if (!os_log_type_enabled(v50, v6))
      {
        v62 = *(v0 + 176);
        v64 = *(v0 + 152);
        v63 = *(v0 + 160);

        (*(v63 + 8))(v62, v64);
LABEL_44:
        v72 = *(v0 + 104);
        if (v72)
        {
          v72(0);
        }

        goto LABEL_24;
      }

      log = v50;
      isEscapingClosureAtFileLocation = *(v0 + 96);
      v7 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v80 = v76;
      *v7 = 136315138;
      if (!(isEscapingClosureAtFileLocation >> 62))
      {
        v51 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_32:
        v52 = MEMORY[0x1E69E7CC0];
        if (v51)
        {
          v75 = v6;
          v81 = MEMORY[0x1E69E7CC0];
          result = sub_1B2091C18(0, v51 & ~(v51 >> 63), 0);
          if (v51 < 0)
          {
            __break(1u);
            return result;
          }

          v53 = 0;
          v54 = *(v0 + 128);
          v52 = v81;
          v79 = *(v0 + 96) + 32;
          do
          {
            if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
            {
              v55 = MEMORY[0x1B27403C0](v53, *(v0 + 96));
            }

            else
            {
              v55 = *(v79 + 8 * v53);
            }

            v56 = v55;
            v57 = [v55 timerID];
            sub_1B20A9864();

            v81 = v52;
            v59 = *(v52 + 16);
            v58 = *(v52 + 24);
            if (v59 >= v58 >> 1)
            {
              sub_1B2091C18((v58 > 1), v59 + 1, 1);
              v52 = v81;
            }

            v60 = *(v0 + 144);
            v61 = *(v0 + 120);
            ++v53;
            *(v52 + 16) = v59 + 1;
            (*(v54 + 32))(v52 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v59, v60, v61);
          }

          while (v51 != v53);
          LOBYTE(v6) = v75;
        }

        v65 = *(v0 + 176);
        v67 = *(v0 + 152);
        v66 = *(v0 + 160);
        v68 = MEMORY[0x1B2740030](v52, *(v0 + 120));
        v70 = v69;

        v71 = sub_1B2061574(v68, v70, &v80);

        *(v7 + 1) = v71;
        _os_log_impl(&dword_1B1F9F000, log, v6, "Deleted timers from core data: %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v76);
        MEMORY[0x1B2741310](v76, -1, -1);
        MEMORY[0x1B2741310](v7, -1, -1);

        (*(v66 + 8))(v65, v67);
        goto LABEL_44;
      }

LABEL_49:
      v51 = sub_1B20A9DE4();
      goto LABEL_32;
    }
  }

  type metadata accessor for BugCapture();
  static BugCapture.reportBug(type:subType:name:value:)();
  sub_1B20915B0();
  v16 = swift_allocError();
  *v17 = 3;
  swift_willThrow();
  v18 = *(v0 + 160);
  v19 = *(v0 + 168);
  v20 = *(v0 + 152);
  v21 = sub_1B205E940();
  (*(v18 + 16))(v19, v21, v20);

  v6 = sub_1B20A9894();
  v22 = sub_1B20A9C84();

  if (!os_log_type_enabled(v6, v22))
  {
    v34 = *(v0 + 160);
    v35 = *(v0 + 168);
    v36 = *(v0 + 152);

    (*(v34 + 8))(v35, v36);
    v37 = *(v0 + 104);
    if (!v37)
    {
      goto LABEL_23;
    }

LABEL_22:
    v38 = v16;
    v37(v16);

    goto LABEL_23;
  }

  log = v16;
  isEscapingClosureAtFileLocation = *(v0 + 96);
  v7 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v80 = v8;
  *v7 = 136315138;
  LODWORD(v76) = v22;
  if (!(isEscapingClosureAtFileLocation >> 62))
  {
    v23 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_11;
  }

LABEL_47:
  v23 = sub_1B20A9DE4();
LABEL_11:
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v73 = v8;
    v74 = v7;
    v81 = MEMORY[0x1E69E7CC0];
    sub_1B2091C18(0, v23 & ~(v23 >> 63), 0);
    if (v23 < 0)
    {
      __break(1u);
      goto LABEL_49;
    }

    v25 = 0;
    v26 = *(v0 + 128);
    v24 = v81;
    v78 = *(v0 + 96) + 32;
    do
    {
      if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1B27403C0](v25, *(v0 + 96));
      }

      else
      {
        v27 = *(v78 + 8 * v25);
      }

      v28 = v27;
      v29 = [v27 timerID];
      sub_1B20A9864();

      v81 = v24;
      v31 = *(v24 + 16);
      v30 = *(v24 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1B2091C18((v30 > 1), v31 + 1, 1);
        v24 = v81;
      }

      v32 = *(v0 + 136);
      v33 = *(v0 + 120);
      ++v25;
      *(v24 + 16) = v31 + 1;
      (*(v26 + 32))(v24 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v31, v32, v33);
    }

    while (v23 != v25);
    v7 = v74;
    v8 = v73;
  }

  v40 = *(v0 + 160);
  v41 = *(v0 + 168);
  v42 = *(v0 + 152);
  v43 = MEMORY[0x1B2740030](v24, *(v0 + 120));
  v45 = v44;

  v46 = sub_1B2061574(v43, v45, &v80);

  *(v7 + 1) = v46;
  _os_log_impl(&dword_1B1F9F000, v6, v76, "Failed to delete timers from core data: %s", v7, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v8);
  MEMORY[0x1B2741310](v8, -1, -1);
  MEMORY[0x1B2741310](v7, -1, -1);

  (*(v40 + 8))(v41, v42);
  v16 = log;
  v37 = *(v0 + 104);
  if (v37)
  {
    goto LABEL_22;
  }

LABEL_23:

LABEL_24:

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1B2076348()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1B20767CC;
  }

  else
  {

    v2 = sub_1B2076464;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void *sub_1B2076464()
{
  v41 = v0;
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = sub_1B205E940();
  (*(v3 + 16))(v1, v4, v2);

  v5 = sub_1B20A9894();
  v6 = sub_1B20A9C74();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[12];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v39 = v9;
    *v8 = 136315138;
    if (v7 >> 62)
    {
      v10 = sub_1B20A9DE4();
    }

    else
    {
      v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = MEMORY[0x1E69E7CC0];
    v36 = v9;
    log = v5;
    if (v10)
    {
      v40 = MEMORY[0x1E69E7CC0];
      result = sub_1B2091C18(0, v10 & ~(v10 >> 63), 0);
      if (v10 < 0)
      {
        __break(1u);
        return result;
      }

      v34 = v8;
      v35 = v6;
      v13 = 0;
      v14 = v0[16];
      v11 = v40;
      v38 = v0[12] + 32;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1B27403C0](v13, v0[12]);
        }

        else
        {
          v15 = *(v38 + 8 * v13);
        }

        v16 = v15;
        v17 = [v15 timerID];
        sub_1B20A9864();

        v40 = v11;
        v19 = *(v11 + 16);
        v18 = *(v11 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1B2091C18((v18 > 1), v19 + 1, 1);
          v11 = v40;
        }

        v20 = v0[18];
        v21 = v0[15];
        ++v13;
        *(v11 + 16) = v19 + 1;
        (*(v14 + 32))(v11 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v19, v20, v21);
      }

      while (v10 != v13);
      v6 = v35;
      v8 = v34;
    }

    v25 = v0[22];
    v27 = v0[19];
    v26 = v0[20];
    v28 = MEMORY[0x1B2740030](v11, v0[15]);
    v30 = v29;

    v31 = sub_1B2061574(v28, v30, &v39);

    *(v8 + 4) = v31;
    _os_log_impl(&dword_1B1F9F000, log, v6, "Deleted timers from core data: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x1B2741310](v36, -1, -1);
    MEMORY[0x1B2741310](v8, -1, -1);

    (*(v26 + 8))(v25, v27);
  }

  else
  {
    v22 = v0[22];
    v24 = v0[19];
    v23 = v0[20];

    (*(v23 + 8))(v22, v24);
  }

  v32 = v0[13];
  if (v32)
  {
    v32(0);
  }

  v33 = v0[1];

  return v33();
}

void *sub_1B20767CC()
{
  v44 = v0;

  v1 = v0[25];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[19];
  v5 = sub_1B205E940();
  (*(v2 + 16))(v3, v5, v4);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C84();

  if (!os_log_type_enabled(v6, v7))
  {
    v24 = v0[20];
    v25 = v0[21];
    v26 = v0[19];

    (*(v24 + 8))(v25, v26);
    v27 = v0[13];
    if (!v27)
    {
      goto LABEL_16;
    }

LABEL_15:
    v28 = v1;
    v27(v1);

    goto LABEL_16;
  }

  v8 = v0[12];
  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v42 = v10;
  *v9 = 136315138;
  if (v8 >> 62)
  {
    v11 = sub_1B20A9DE4();
  }

  else
  {
    v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x1E69E7CC0];
  v40 = v1;
  v39 = v7;
  v38 = v10;
  if (v11)
  {
    v43 = MEMORY[0x1E69E7CC0];
    result = sub_1B2091C18(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
      return result;
    }

    v37 = v9;
    v14 = 0;
    v15 = v0[16];
    v12 = v43;
    v16 = v8 & 0xC000000000000001;
    v41 = v0[12] + 32;
    do
    {
      if (v16)
      {
        v17 = MEMORY[0x1B27403C0](v14, v0[12]);
      }

      else
      {
        v17 = *(v41 + 8 * v14);
      }

      v18 = v17;
      v19 = [v17 timerID];
      sub_1B20A9864();

      v43 = v12;
      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1B2091C18((v20 > 1), v21 + 1, 1);
        v12 = v43;
      }

      v22 = v0[17];
      v23 = v0[15];
      ++v14;
      *(v12 + 16) = v21 + 1;
      (*(v15 + 32))(v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v21, v22, v23);
    }

    while (v11 != v14);
    v9 = v37;
  }

  v30 = v0[20];
  v31 = v0[21];
  v32 = v0[19];
  v33 = MEMORY[0x1B2740030](v12, v0[15]);
  v35 = v34;

  v36 = sub_1B2061574(v33, v35, &v42);

  *(v9 + 4) = v36;
  _os_log_impl(&dword_1B1F9F000, v6, v39, "Failed to delete timers from core data: %s", v9, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v38);
  MEMORY[0x1B2741310](v38, -1, -1);
  MEMORY[0x1B2741310](v9, -1, -1);

  (*(v30 + 8))(v31, v32);
  v1 = v40;
  v27 = v0[13];
  if (v27)
  {
    goto LABEL_15;
  }

LABEL_16:

  v29 = v0[1];

  return v29();
}

uint64_t sub_1B2076B70(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B20A9D34();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2076C30, v1, 0);
}

uint64_t sub_1B2076C30()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = type metadata accessor for MTCDTimer();
  v7 = (*(v6 + 88))();
  v0[7] = v7;
  v8 = sub_1B2094E9C(v5, &selRef_timerIDString);
  [v7 setPredicate_];

  v9 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];
  v0[8] = v9;
  v10 = [*(v4 + 112) newBackgroundContext];
  v0[9] = v10;
  v11 = swift_allocObject();
  v0[10] = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v10;
  v12 = v9;
  v13 = swift_task_alloc();
  v0[11] = v13;
  *v13 = v0;
  v13[1] = sub_1B2076DEC;
  v14 = v0[6];
  v15 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEDB6538](v13, v14, sub_1B209893C, v11, v15);
}

uint64_t sub_1B2076DEC()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 96) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = sub_1B20988C4;
  }

  else
  {
    v7 = sub_1B209887C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

Swift::Void __swiftcall MTCDDataStore.deleteAllTimers()()
{
  v1 = swift_allocObject();
  v1[3] = 0;
  v1[4] = 0;
  v1[2] = v0;
  v2 = *&v0[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v3 = v0;
  os_unfair_lock_lock(v2 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v2 + 4);
  v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v4)
  {
    v5 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v4(v6);
    sub_1B1FA6834(v4, v5);
  }
}

uint64_t MTCDDataStore.deleteAllTimers(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = *&v2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v7 = v2;
  sub_1B209192C(a1, a2);
  os_unfair_lock_lock(v6 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v6 + 4);
  v8 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v8)
  {
    v9 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v8(v10);
    sub_1B1FA6834(v8, v9);
  }
}

uint64_t sub_1B20772C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  v4 = sub_1B20A98B4();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2077398, 0, 0);
}

uint64_t sub_1B2077398()
{
  v1 = *(v0 + 88);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (!*(v1 + v2))
  {
    goto LABEL_8;
  }

  v3 = *(v0 + 88);
  *(v0 + 168) = 0;
  v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
  v5 = swift_allocObject();
  *(v5 + 16) = v0 + 168;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B2098884;
  *(v6 + 24) = v5;
  *(v0 + 48) = sub_1B20988D0;
  *(v0 + 56) = v6;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B20668F0;
  *(v0 + 40) = &block_descriptor_867;
  v7 = _Block_copy((v0 + 16));
  v8 = v3;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
    return result;
  }

  v10 = *(v0 + 168);

  if (v10 == 1)
  {
    v11 = *(v1 + v2);
    *(v0 + 144) = v11;
    if (v11)
    {

      v12 = swift_task_alloc();
      *(v0 + 152) = v12;
      *v12 = v0;
      v12[1] = sub_1B2077870;

      return sub_1B2077C38();
    }

    v29 = *(v0 + 136);
    v30 = *(v0 + 112);
    v31 = *(v0 + 120);
    v32 = sub_1B205E940();
    (*(v31 + 16))(v29, v32, v30);
    v33 = sub_1B20A9894();
    v34 = sub_1B20A9C74();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1B1F9F000, v33, v34, "Deleted all timers from core data", v35, 2u);
      MEMORY[0x1B2741310](v35, -1, -1);
    }

    v36 = *(v0 + 136);
    v37 = *(v0 + 112);
    v38 = *(v0 + 120);
    v39 = *(v0 + 96);

    (*(v38 + 8))(v36, v37);
    if (v39)
    {
      (*(v0 + 96))(0);
    }
  }

  else
  {
LABEL_8:
    type metadata accessor for BugCapture();
    static BugCapture.reportBug(type:subType:name:value:)();
    sub_1B20915B0();
    v13 = swift_allocError();
    *v14 = 3;
    swift_willThrow();
    v16 = *(v0 + 120);
    v15 = *(v0 + 128);
    v17 = *(v0 + 112);
    v18 = sub_1B205E940();
    (*(v16 + 16))(v15, v18, v17);
    v19 = sub_1B20A9894();
    v20 = sub_1B20A9C84();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1B1F9F000, v19, v20, "Failed to delete all timers from core data", v21, 2u);
      MEMORY[0x1B2741310](v21, -1, -1);
    }

    v23 = *(v0 + 120);
    v22 = *(v0 + 128);
    v24 = *(v0 + 112);
    v25 = *(v0 + 96);

    (*(v23 + 8))(v22, v24);
    if (v25)
    {
      v26 = *(v0 + 96);
      v27 = v13;
      v26(v13);
    }
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1B2077870()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1B2077AD0;
  }

  else
  {

    v2 = sub_1B207798C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B207798C()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = sub_1B205E940();
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_1B20A9894();
  v6 = sub_1B20A9C74();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1B1F9F000, v5, v6, "Deleted all timers from core data", v7, 2u);
    MEMORY[0x1B2741310](v7, -1, -1);
  }

  v8 = v0[17];
  v9 = v0[14];
  v10 = v0[15];
  v11 = v0[12];

  (*(v10 + 8))(v8, v9);
  if (v11)
  {
    (v0[12])(0);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1B2077AD0()
{

  v1 = v0[20];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = sub_1B205E940();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C84();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1B1F9F000, v6, v7, "Failed to delete all timers from core data", v8, 2u);
    MEMORY[0x1B2741310](v8, -1, -1);
  }

  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[14];
  v12 = v0[12];

  (*(v10 + 8))(v9, v11);
  if (v12)
  {
    v13 = v0[12];
    v14 = v1;
    v13(v1);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1B2077C38()
{
  v1[2] = v0;
  v2 = sub_1B20A9D34();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2077CF8, v0, 0);
}

uint64_t sub_1B2077CF8()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for MTCDTimer();
  v6 = (*(v5 + 88))();
  v0[6] = v6;
  v7 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];
  v0[7] = v7;
  v8 = [*(v4 + 112) newBackgroundContext];
  v0[8] = v8;
  v9 = swift_allocObject();
  v0[9] = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v8;
  v10 = v7;
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_1B2077E84;
  v12 = v0[5];
  v13 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEDB6538](v11, v12, sub_1B209893C, v9, v13);
}

uint64_t sub_1B2077E84()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 88) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 16);
  if (v0)
  {
    v7 = sub_1B20988C8;
  }

  else
  {
    v7 = sub_1B2098880;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t MTCDDataStore.getTimers(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = *&v2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v7 = v2;

  os_unfair_lock_lock(v6 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v6 + 4);
  v8 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v8)
  {
    v9 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v8(v10);
    sub_1B1FA6834(v8, v9);
  }
}

uint64_t sub_1B2078218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = sub_1B20A98B4();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B20782E8, 0, 0);
}

uint64_t sub_1B20782E8()
{
  v47 = v0;
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (!*(v1 + v2))
  {
    goto LABEL_8;
  }

  v3 = *(v0 + 96);
  *(v0 + 184) = 0;
  v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
  v5 = swift_allocObject();
  *(v5 + 16) = v0 + 184;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B2098884;
  *(v6 + 24) = v5;
  *(v0 + 48) = sub_1B20988D0;
  *(v0 + 56) = v6;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B20668F0;
  *(v0 + 40) = &block_descriptor_855;
  v7 = _Block_copy((v0 + 16));
  v8 = v3;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
    return result;
  }

  v10 = *(v0 + 184);

  if (v10 == 1)
  {
    v11 = *(v1 + v2);
    *(v0 + 152) = v11;
    if (v11)
    {

      v12 = swift_task_alloc();
      *(v0 + 160) = v12;
      *v12 = v0;
      v12[1] = sub_1B2078884;

      return sub_1B2078D88();
    }

    v31 = *(v0 + 144);
    v32 = *(v0 + 120);
    v33 = *(v0 + 128);
    v34 = sub_1B205E940();
    (*(v33 + 16))(v31, v34, v32);
    v35 = sub_1B20A9894();
    v36 = sub_1B20A9C74();

    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 144);
    v39 = *(v0 + 120);
    v40 = *(v0 + 128);
    if (v37)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v46 = v42;
      *v41 = 136315138;
      *(v0 + 88) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F558, &qword_1B20B9550);
      v43 = sub_1B20A9A84();
      v45 = sub_1B2061574(v43, v44, &v46);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_1B1F9F000, v35, v36, "Fetched sample timers: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x1B2741310](v42, -1, -1);
      MEMORY[0x1B2741310](v41, -1, -1);
    }

    (*(v40 + 8))(v38, v39);
    (*(v0 + 104))(0);
  }

  else
  {
LABEL_8:
    type metadata accessor for BugCapture();
    static BugCapture.reportBug(type:subType:name:value:)();
    sub_1B20915B0();
    v13 = swift_allocError();
    *v14 = 3;
    swift_willThrow();
    v16 = *(v0 + 128);
    v15 = *(v0 + 136);
    v17 = *(v0 + 120);
    v18 = sub_1B205E940();
    (*(v16 + 16))(v15, v18, v17);
    v19 = v13;
    v20 = sub_1B20A9894();
    v21 = sub_1B20A9C84();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v13;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_1B1F9F000, v20, v21, "Failed to fetch sample timers with error: %@", v22, 0xCu);
      sub_1B20985B4(v23, &qword_1EB79F4B0, &qword_1B20B8ED8);
      MEMORY[0x1B2741310](v23, -1, -1);
      MEMORY[0x1B2741310](v22, -1, -1);
    }

    v27 = *(v0 + 128);
    v26 = *(v0 + 136);
    v28 = *(v0 + 120);
    v29 = *(v0 + 104);

    (*(v27 + 8))(v26, v28);
    v29(0);
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1B2078884(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = sub_1B2078BC8;
  }

  else
  {

    *(v4 + 176) = a1;
    v5 = sub_1B20789B4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B20789B4()
{
  v22 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = sub_1B205E940();
  (*(v4 + 16))(v2, v5, v3);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C74();

  if (os_log_type_enabled(v6, v7))
  {
    v20 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    *(v0 + 88) = v1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F558, &qword_1B20B9550);
    v12 = sub_1B20A9A84();
    v14 = sub_1B2061574(v12, v13, &v21);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1B1F9F000, v6, v7, "Fetched sample timers: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1B2741310](v11, -1, -1);
    MEMORY[0x1B2741310](v10, -1, -1);

    (*(v8 + 8))(v20, v9);
  }

  else
  {
    v15 = *(v0 + 144);
    v16 = *(v0 + 120);
    v17 = *(v0 + 128);

    (*(v17 + 8))(v15, v16);
  }

  (*(v0 + 104))(v1);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1B2078BC8()
{

  v1 = v0[21];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v5 = sub_1B205E940();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1B20A9894();
  v8 = sub_1B20A9C84();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1B1F9F000, v7, v8, "Failed to fetch sample timers with error: %@", v9, 0xCu);
    sub_1B20985B4(v10, &qword_1EB79F4B0, &qword_1B20B8ED8);
    MEMORY[0x1B2741310](v10, -1, -1);
    MEMORY[0x1B2741310](v9, -1, -1);
  }

  v14 = v0[16];
  v13 = v0[17];
  v15 = v0[15];
  v16 = v0[13];

  (*(v14 + 8))(v13, v15);
  v16(0);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1B2078D88()
{
  v1[3] = v0;
  v2 = sub_1B20A9D34();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  sub_1B20A9BA4();
  v1[7] = sub_1B20A9B94();
  v4 = sub_1B20A9B64();
  v1[8] = v4;
  v1[9] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B2078E7C, v4, v3);
}

uint64_t sub_1B2078E7C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v0[10] = [*(v0[3] + 112) viewContext];
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);

  v4 = swift_task_alloc();
  v0[11] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4E8, &qword_1B20B9080);
  *v4 = v0;
  v4[1] = sub_1B2078FB0;
  v6 = v0[6];
  v7 = v0[3];

  return MEMORY[0x1EEDB6538](v0 + 2, v6, sub_1B20952C8, v7, v5);
}

uint64_t sub_1B2078FB0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  *(*v1 + 96) = v0;

  (*(v5 + 8))(v4, v6);

  v7 = *(v2 + 72);
  v8 = *(v2 + 64);
  if (v0)
  {
    v9 = sub_1B2098888;
  }

  else
  {
    v9 = sub_1B20988A4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

void sub_1B20791C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a1)
  {
    a3(0);
    v4 = sub_1B20A9AF4();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  (*(a2 + 16))(a2);
}

Swift::Void __swiftcall MTCDDataStore.addDurations(_:isFavorite:)(Swift::OpaquePointer _, Swift::Bool isFavorite)
{
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = _;
  *(v5 + 32) = isFavorite;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  v6 = *&v2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v7 = v2;

  os_unfair_lock_lock(v6 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v6 + 4);
  v8 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v8)
  {
    v9 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v8(v10);
    sub_1B1FA6834(v8, v9);
  }
}

uint64_t MTCDDataStore.addDurations(_:isFavorite:completion:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  v10 = *&v4[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v11 = v4;

  sub_1B209192C(a3, a4);
  os_unfair_lock_lock(v10 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v10 + 4);
  v12 = *&v11[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v12)
  {
    v13 = *&v11[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v12(v14);
    sub_1B1FA6834(v12, v13);
  }
}

uint64_t sub_1B2079530(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 104) = a4;
  *(v5 + 112) = a5;
  *(v5 + 177) = a3;
  *(v5 + 88) = a1;
  *(v5 + 96) = a2;
  v6 = sub_1B20A98B4();
  *(v5 + 120) = v6;
  *(v5 + 128) = *(v6 - 8);
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2079604, 0, 0);
}

char *sub_1B2079604()
{
  v79 = v0;
  v1 = *(v0 + 88);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (*(&v1->isa + v2))
  {
    v3 = *(v0 + 88);
    *(v0 + 176) = 0;
    v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
    v5 = swift_allocObject();
    *(v5 + 16) = v0 + 176;
    *(v5 + 24) = v3;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B2098884;
    *(v6 + 24) = v5;
    *(v0 + 48) = sub_1B20988D0;
    *(v0 + 56) = v6;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1B20668F0;
    *(v0 + 40) = &block_descriptor_843;
    v7 = _Block_copy((v0 + 16));
    v8 = *(v0 + 56);
    v9 = v3;

    dispatch_sync(v4, v7);
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_47;
    }

    v11 = *(v0 + 176);

    if (v11 == 1)
    {
      v12 = *(&v1->isa + v2);
      *(v0 + 152) = v12;
      if (v12)
      {

        v13 = swift_task_alloc();
        *(v0 + 160) = v13;
        *v13 = v0;
        v13[1] = sub_1B2079E70;
        v14 = *(v0 + 177);
        v15 = *(v0 + 96);

        return sub_1B207A5F4(v15, v14);
      }

      v47 = *(v0 + 144);
      v48 = *(v0 + 120);
      v49 = *(v0 + 128);
      v50 = sub_1B205E940();
      (*(v49 + 16))(v47, v50, v48);

      isEscapingClosureAtFileLocation = sub_1B20A9894();
      LOBYTE(v8) = sub_1B20A9C74();

      if (!os_log_type_enabled(isEscapingClosureAtFileLocation, v8))
      {
        v62 = *(v0 + 144);
        v63 = *(v0 + 120);
        v64 = *(v0 + 128);

        (*(v64 + 8))(v62, v63);
        v65 = *(v0 + 104);
        if (!v65)
        {
          goto LABEL_24;
        }

        goto LABEL_45;
      }

      v6 = *(v0 + 96);
      v51 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      log = v51;
      v77 = v75;
      LODWORD(v51->isa) = 136315138;
      if (!(v6 >> 62))
      {
        v52 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_32;
      }

LABEL_49:
      v52 = sub_1B20A9DE4();
LABEL_32:
      v53 = MEMORY[0x1E69E7CC0];
      if (v52)
      {
        v74 = v8;
        v78 = MEMORY[0x1E69E7CC0];
        result = sub_1B2091C58(0, v52 & ~(v52 >> 63), 0);
        if (v52 < 0)
        {
          __break(1u);
          return result;
        }

        v54 = 0;
        v53 = v78;
        v55 = *(v0 + 96) + 32;
        do
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v56 = MEMORY[0x1B27403C0](v54, *(v0 + 96));
          }

          else
          {
            v56 = *(v55 + 8 * v54);
          }

          v57 = v56;
          [v56 duration];
          v59 = v58;

          v78 = v53;
          v61 = *(v53 + 16);
          v60 = *(v53 + 24);
          if (v61 >= v60 >> 1)
          {
            sub_1B2091C58((v60 > 1), v61 + 1, 1);
            v53 = v78;
          }

          ++v54;
          *(v53 + 16) = v61 + 1;
          *(v53 + 8 * v61 + 32) = v59;
        }

        while (v52 != v54);
        LOBYTE(v8) = v74;
      }

      v66 = *(v0 + 144);
      v68 = *(v0 + 120);
      v67 = *(v0 + 128);
      v69 = MEMORY[0x1B2740030](v53, MEMORY[0x1E69E63B0]);
      v71 = v70;

      v72 = sub_1B2061574(v69, v71, &v77);

      *(&log->isa + 4) = v72;
      _os_log_impl(&dword_1B1F9F000, isEscapingClosureAtFileLocation, v8, "Saved timer durations into core data: %s", log, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v75);
      MEMORY[0x1B2741310](v75, -1, -1);
      MEMORY[0x1B2741310](log, -1, -1);

      (*(v67 + 8))(v66, v68);
      v65 = *(v0 + 104);
      if (!v65)
      {
        goto LABEL_24;
      }

LABEL_45:
      v65(0);
      goto LABEL_24;
    }
  }

  type metadata accessor for BugCapture();
  static BugCapture.reportBug(type:subType:name:value:)();
  sub_1B20915B0();
  isEscapingClosureAtFileLocation = swift_allocError();
  *v17 = 3;
  swift_willThrow();
  v19 = *(v0 + 128);
  v18 = *(v0 + 136);
  v20 = *(v0 + 120);
  v21 = sub_1B205E940();
  (*(v19 + 16))(v18, v21, v20);

  v1 = sub_1B20A9894();
  v22 = sub_1B20A9C84();

  if (!os_log_type_enabled(v1, v22))
  {
    v35 = *(v0 + 128);
    v34 = *(v0 + 136);
    v36 = *(v0 + 120);

    (*(v35 + 8))(v34, v36);
    v37 = *(v0 + 104);
    if (!v37)
    {
      goto LABEL_23;
    }

LABEL_22:
    v38 = isEscapingClosureAtFileLocation;
    v37(isEscapingClosureAtFileLocation);

    goto LABEL_23;
  }

  v7 = *(v0 + 96);
  v6 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v77 = v8;
  *v6 = 136315138;
  LODWORD(v75) = v22;
  if (!(v7 >> 62))
  {
    v23 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_11;
  }

LABEL_47:
  v23 = sub_1B20A9DE4();
LABEL_11:
  v24 = MEMORY[0x1E69E7CC0];
  log = v1;
  if (v23)
  {
    v73 = v6;
    v78 = MEMORY[0x1E69E7CC0];
    sub_1B2091C58(0, v23 & ~(v23 >> 63), 0);
    if (v23 < 0)
    {
      __break(1u);
      goto LABEL_49;
    }

    v25 = 0;
    v24 = v78;
    v26 = v7 & 0xC000000000000001;
    v27 = *(v0 + 96) + 32;
    do
    {
      if (v26)
      {
        v28 = MEMORY[0x1B27403C0](v25, *(v0 + 96));
      }

      else
      {
        v28 = *(v27 + 8 * v25);
      }

      v29 = v28;
      [v28 duration];
      v31 = v30;

      v78 = v24;
      v33 = *(v24 + 16);
      v32 = *(v24 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1B2091C58((v32 > 1), v33 + 1, 1);
        v24 = v78;
      }

      ++v25;
      *(v24 + 16) = v33 + 1;
      *(v24 + 8 * v33 + 32) = v31;
    }

    while (v23 != v25);
    v6 = v73;
  }

  v40 = *(v0 + 128);
  v41 = *(v0 + 136);
  v42 = *(v0 + 120);
  v43 = MEMORY[0x1B2740030](v24, MEMORY[0x1E69E63B0]);
  v45 = v44;

  v46 = sub_1B2061574(v43, v45, &v77);

  *(v6 + 4) = v46;
  _os_log_impl(&dword_1B1F9F000, log, v75, "Failed to save timer durations into core data: %s", v6, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v8);
  MEMORY[0x1B2741310](v8, -1, -1);
  MEMORY[0x1B2741310](v6, -1, -1);

  (*(v40 + 8))(v41, v42);
  v37 = *(v0 + 104);
  if (v37)
  {
    goto LABEL_22;
  }

LABEL_23:

LABEL_24:

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1B2079E70()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1B207A2A8;
  }

  else
  {

    v2 = sub_1B2079F8C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

char *sub_1B2079F8C()
{
  v38 = v0;
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = sub_1B205E940();
  (*(v3 + 16))(v1, v4, v2);

  v5 = sub_1B20A9894();
  v6 = sub_1B20A9C74();

  if (!os_log_type_enabled(v5, v6))
  {
    v21 = v0[18];
    v22 = v0[15];
    v23 = v0[16];

    (*(v23 + 8))(v21, v22);
    v24 = v0[13];
    if (!v24)
    {
      goto LABEL_16;
    }

LABEL_15:
    v24(0);
    goto LABEL_16;
  }

  v7 = v0[12];
  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  v36 = v9;
  *v8 = 136315138;
  if (v7 >> 62)
  {
    v10 = sub_1B20A9DE4();
  }

  else
  {
    v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x1E69E7CC0];
  v34 = v9;
  buf = v8;
  if (v10)
  {
    v37 = MEMORY[0x1E69E7CC0];
    result = sub_1B2091C58(0, v10 & ~(v10 >> 63), 0);
    if (v10 < 0)
    {
      __break(1u);
      return result;
    }

    v33 = v6;
    v13 = 0;
    v11 = v37;
    v14 = v0[12] + 32;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1B27403C0](v13, v0[12]);
      }

      else
      {
        v15 = *(v14 + 8 * v13);
      }

      v16 = v15;
      [v15 duration];
      v18 = v17;

      v37 = v11;
      v20 = *(v11 + 16);
      v19 = *(v11 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1B2091C58((v19 > 1), v20 + 1, 1);
        v11 = v37;
      }

      ++v13;
      *(v11 + 16) = v20 + 1;
      *(v11 + 8 * v20 + 32) = v18;
    }

    while (v10 != v13);
    v6 = v33;
  }

  v26 = v0[18];
  v28 = v0[15];
  v27 = v0[16];
  v29 = MEMORY[0x1B2740030](v11, MEMORY[0x1E69E63B0]);
  v31 = v30;

  v32 = sub_1B2061574(v29, v31, &v36);

  *(buf + 4) = v32;
  _os_log_impl(&dword_1B1F9F000, v5, v6, "Saved timer durations into core data: %s", buf, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v34);
  MEMORY[0x1B2741310](v34, -1, -1);
  MEMORY[0x1B2741310](buf, -1, -1);

  (*(v27 + 8))(v26, v28);
  v24 = v0[13];
  if (v24)
  {
    goto LABEL_15;
  }

LABEL_16:

  v25 = v0[1];

  return v25();
}

char *sub_1B207A2A8()
{
  v42 = v0;

  v1 = v0[21];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = sub_1B205E940();
  (*(v2 + 16))(v3, v5, v4);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C84();

  if (!os_log_type_enabled(v6, v7))
  {
    v23 = v0[16];
    v24 = v0[17];
    v25 = v0[15];

    (*(v23 + 8))(v24, v25);
    v26 = v0[13];
    if (!v26)
    {
      goto LABEL_16;
    }

LABEL_15:
    v27 = v1;
    v26(v1);

    goto LABEL_16;
  }

  v8 = v0[12];
  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v40 = v10;
  *v9 = 136315138;
  if (v8 >> 62)
  {
    v11 = sub_1B20A9DE4();
  }

  else
  {
    v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x1E69E7CC0];
  v39 = v1;
  v38 = v7;
  v37 = v10;
  if (v11)
  {
    v41 = MEMORY[0x1E69E7CC0];
    result = sub_1B2091C58(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
      return result;
    }

    v36 = v9;
    v14 = 0;
    v12 = v41;
    v15 = v8 & 0xC000000000000001;
    v16 = v0[12] + 32;
    do
    {
      if (v15)
      {
        v17 = MEMORY[0x1B27403C0](v14, v0[12]);
      }

      else
      {
        v17 = *(v16 + 8 * v14);
      }

      v18 = v17;
      [v17 duration];
      v20 = v19;

      v41 = v12;
      v22 = *(v12 + 16);
      v21 = *(v12 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1B2091C58((v21 > 1), v22 + 1, 1);
        v12 = v41;
      }

      ++v14;
      *(v12 + 16) = v22 + 1;
      *(v12 + 8 * v22 + 32) = v20;
    }

    while (v11 != v14);
    v9 = v36;
  }

  v29 = v0[16];
  v30 = v0[17];
  v31 = v0[15];
  v32 = MEMORY[0x1B2740030](v12, MEMORY[0x1E69E63B0]);
  v34 = v33;

  v35 = sub_1B2061574(v32, v34, &v40);

  *(v9 + 4) = v35;
  _os_log_impl(&dword_1B1F9F000, v6, v38, "Failed to save timer durations into core data: %s", v9, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v37);
  MEMORY[0x1B2741310](v37, -1, -1);
  MEMORY[0x1B2741310](v9, -1, -1);

  (*(v29 + 8))(v30, v31);
  v1 = v39;
  v26 = v0[13];
  if (v26)
  {
    goto LABEL_15;
  }

LABEL_16:

  v28 = v0[1];

  return v28();
}

uint64_t sub_1B207A5F4(uint64_t a1, char a2)
{
  *(v3 + 88) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_1B20A9D34();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B207A6B8, v2, 0);
}

uint64_t sub_1B207A6B8()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 88);
  v5 = *(v0 + 16);
  v6 = [*(*(v0 + 24) + 112) newBackgroundContext];
  *(v0 + 56) = v6;
  v7 = swift_allocObject();
  *(v0 + 64) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v7 + 32) = v4;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v6;

  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_1B207A810;
  v9 = *(v0 + 48);
  v10 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEDB6538](v8, v9, sub_1B2095464, v7, v10);
}

uint64_t sub_1B207A810()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = sub_1B207AA28;
  }

  else
  {
    v7 = sub_1B207A9BC;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1B207A9BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B207AA28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MTCDDataStore.getAllDurations(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = *&v2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v7 = v2;

  os_unfair_lock_lock(v6 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v6 + 4);
  v8 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v8)
  {
    v9 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v8(v10);
    sub_1B1FA6834(v8, v9);
  }
}

uint64_t sub_1B207ACB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = sub_1B20A98B4();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B207AD88, 0, 0);
}

uint64_t sub_1B207AD88()
{
  v47 = v0;
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (!*(v1 + v2))
  {
    goto LABEL_8;
  }

  v3 = *(v0 + 96);
  *(v0 + 200) = 0;
  v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
  v5 = swift_allocObject();
  *(v5 + 16) = v0 + 200;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B2098884;
  *(v6 + 24) = v5;
  *(v0 + 48) = sub_1B20988D0;
  *(v0 + 56) = v6;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B20668F0;
  *(v0 + 40) = &block_descriptor_831;
  v7 = _Block_copy((v0 + 16));
  v8 = v3;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
    return result;
  }

  v10 = *(v0 + 200);

  if (v10 == 1)
  {
    v11 = *(v1 + v2);
    *(v0 + 152) = v11;
    if (v11)
    {
      *(v0 + 160) = sub_1B20A9BA4();

      *(v0 + 168) = sub_1B20A9B94();
      v12 = swift_task_alloc();
      *(v0 + 176) = v12;
      *v12 = v0;
      v12[1] = sub_1B207B348;

      return sub_1B2086C78(2);
    }

    v31 = *(v0 + 144);
    v32 = *(v0 + 120);
    v33 = *(v0 + 128);
    v34 = sub_1B205E940();
    (*(v33 + 16))(v31, v34, v32);
    v35 = sub_1B20A9894();
    v36 = sub_1B20A9C74();

    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 144);
    v39 = *(v0 + 120);
    v40 = *(v0 + 128);
    if (v37)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v46 = v42;
      *v41 = 136315138;
      *(v0 + 88) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F508, &qword_1B20B9178);
      v43 = sub_1B20A9A84();
      v45 = sub_1B2061574(v43, v44, &v46);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_1B1F9F000, v35, v36, "Fetched all timer durations: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x1B2741310](v42, -1, -1);
      MEMORY[0x1B2741310](v41, -1, -1);
    }

    (*(v40 + 8))(v38, v39);
    (*(v0 + 104))(0);
  }

  else
  {
LABEL_8:
    type metadata accessor for BugCapture();
    static BugCapture.reportBug(type:subType:name:value:)();
    sub_1B20915B0();
    v13 = swift_allocError();
    *v14 = 3;
    swift_willThrow();
    v16 = *(v0 + 128);
    v15 = *(v0 + 136);
    v17 = *(v0 + 120);
    v18 = sub_1B205E940();
    (*(v16 + 16))(v15, v18, v17);
    v19 = v13;
    v20 = sub_1B20A9894();
    v21 = sub_1B20A9C84();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v13;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_1B1F9F000, v20, v21, "Failed to fetch all timer durations: %@", v22, 0xCu);
      sub_1B20985B4(v23, &qword_1EB79F4B0, &qword_1B20B8ED8);
      MEMORY[0x1B2741310](v23, -1, -1);
      MEMORY[0x1B2741310](v22, -1, -1);
    }

    v27 = *(v0 + 128);
    v26 = *(v0 + 136);
    v28 = *(v0 + 120);
    v29 = *(v0 + 104);

    (*(v27 + 8))(v26, v28);
    v29(0);
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1B207B348(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_1B20A9B64();
    v7 = v6;
    v8 = sub_1B207B750;
  }

  else
  {
    *(v4 + 192) = a1;
    v5 = sub_1B20A9B64();
    v7 = v9;
    v8 = sub_1B207B4C8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

uint64_t sub_1B207B4C8()
{

  return MEMORY[0x1EEE6DFA0](sub_1B207B53C, 0, 0);
}

uint64_t sub_1B207B53C()
{
  v22 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = sub_1B205E940();
  (*(v4 + 16))(v2, v5, v3);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C74();

  if (os_log_type_enabled(v6, v7))
  {
    v20 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    *(v0 + 88) = v1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F508, &qword_1B20B9178);
    v12 = sub_1B20A9A84();
    v14 = sub_1B2061574(v12, v13, &v21);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1B1F9F000, v6, v7, "Fetched all timer durations: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1B2741310](v11, -1, -1);
    MEMORY[0x1B2741310](v10, -1, -1);

    (*(v8 + 8))(v20, v9);
  }

  else
  {
    v15 = *(v0 + 144);
    v16 = *(v0 + 120);
    v17 = *(v0 + 128);

    (*(v17 + 8))(v15, v16);
  }

  (*(v0 + 104))(v1);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1B207B750()
{

  return MEMORY[0x1EEE6DFA0](sub_1B207B7C4, 0, 0);
}

uint64_t sub_1B207B7C4()
{
  v1 = v0[23];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v5 = sub_1B205E940();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1B20A9894();
  v8 = sub_1B20A9C84();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1B1F9F000, v7, v8, "Failed to fetch all timer durations: %@", v9, 0xCu);
    sub_1B20985B4(v10, &qword_1EB79F4B0, &qword_1B20B8ED8);
    MEMORY[0x1B2741310](v10, -1, -1);
    MEMORY[0x1B2741310](v9, -1, -1);
  }

  v14 = v0[16];
  v13 = v0[17];
  v15 = v0[15];
  v16 = v0[13];

  (*(v14 + 8))(v13, v15);
  v16(0);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1B207B97C()
{
  v0[2] = sub_1B20A9BA4();
  v0[3] = sub_1B20A9B94();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1B207BA2C;

  return sub_1B2086C78(2);
}

uint64_t sub_1B207BA2C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_1B20A9B64();
    v7 = v6;
    v8 = sub_1B2098958;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_1B20A9B64();
    v7 = v9;
    v8 = sub_1B2098954;
  }

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

uint64_t MTCDDataStore.getRecentsFavoritesLatest(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = *&v2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v7 = v2;

  os_unfair_lock_lock(v6 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v6 + 4);
  v8 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v8)
  {
    v9 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v8(v10);
    sub_1B1FA6834(v8, v9);
  }
}

uint64_t sub_1B207BCE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  v4 = sub_1B20A98B4();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B207BDB8, 0, 0);
}

uint64_t sub_1B207BDB8()
{
  v55 = v0;
  v1 = *(v0 + 112);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (!*(v1 + v2))
  {
    goto LABEL_8;
  }

  v3 = *(v0 + 112);
  *(v0 + 216) = 0;
  v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
  v5 = swift_allocObject();
  *(v5 + 16) = v0 + 216;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B2098884;
  *(v6 + 24) = v5;
  *(v0 + 48) = sub_1B20988D0;
  *(v0 + 56) = v6;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B20668F0;
  *(v0 + 40) = &block_descriptor_819;
  v7 = _Block_copy((v0 + 16));
  v8 = v3;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
    return result;
  }

  v10 = *(v0 + 216);

  if (v10 == 1)
  {
    v11 = *(v1 + v2);
    *(v0 + 168) = v11;
    if (v11)
    {
      *(v0 + 176) = sub_1B20A9BA4();

      *(v0 + 184) = sub_1B20A9B94();
      v12 = swift_task_alloc();
      *(v0 + 192) = v12;
      *v12 = v0;
      v12[1] = sub_1B207C494;

      return sub_1B2086C78(2);
    }

    v31 = *(v0 + 160);
    v32 = *(v0 + 136);
    v33 = *(v0 + 144);
    (*(v0 + 120))(0, 0, 0);
    swift_bridgeObjectRelease_n();
    v34 = sub_1B205E940();
    (*(v33 + 16))(v31, v34, v32);
    sub_1B20983FC(0, 0, 0);
    v35 = sub_1B20A9894();
    v36 = sub_1B20A9C74();
    sub_1B2098448(0, 0, 0);
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v54[0] = v38;
      *v37 = 136315650;
      *(v0 + 88) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F508, &qword_1B20B9178);
      v39 = sub_1B20A9A84();
      v41 = sub_1B2061574(v39, v40, v54);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2080;
      *(v0 + 96) = 0;
      v42 = sub_1B20A9A84();
      v44 = sub_1B2061574(v42, v43, v54);

      *(v37 + 14) = v44;
      *(v37 + 22) = 2080;
      v45 = *(v0 + 160);
      v46 = *(v0 + 136);
      v47 = *(v0 + 144);
      *(v0 + 104) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F538, &qword_1B20B9530);
      v48 = sub_1B20A9A84();
      v50 = sub_1B2061574(v48, v49, v54);

      *(v37 + 24) = v50;
      _os_log_impl(&dword_1B1F9F000, v35, v36, "Fetched recents: %s, favorites: %s, latest: %s", v37, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B2741310](v38, -1, -1);
      MEMORY[0x1B2741310](v37, -1, -1);

      swift_bridgeObjectRelease_n();
      sub_1B2098448(0, 0, 0);
      (*(v47 + 8))(v45, v46);
    }

    else
    {
      v51 = *(v0 + 160);
      v52 = *(v0 + 136);
      v53 = *(v0 + 144);
      sub_1B2098448(0, 0, 0);
      swift_bridgeObjectRelease_n();

      (*(v53 + 8))(v51, v52);
    }
  }

  else
  {
LABEL_8:
    type metadata accessor for BugCapture();
    static BugCapture.reportBug(type:subType:name:value:)();
    sub_1B20915B0();
    v13 = swift_allocError();
    *v14 = 3;
    swift_willThrow();
    v16 = *(v0 + 144);
    v15 = *(v0 + 152);
    v17 = *(v0 + 136);
    v18 = sub_1B205E940();
    (*(v16 + 16))(v15, v18, v17);
    v19 = v13;
    v20 = sub_1B20A9894();
    v21 = sub_1B20A9C84();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v13;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_1B1F9F000, v20, v21, "Failed to fetch recents, favorites, and latest: %@", v22, 0xCu);
      sub_1B20985B4(v23, &qword_1EB79F4B0, &qword_1B20B8ED8);
      MEMORY[0x1B2741310](v23, -1, -1);
      MEMORY[0x1B2741310](v22, -1, -1);
    }

    v27 = *(v0 + 144);
    v26 = *(v0 + 152);
    v28 = *(v0 + 136);
    v29 = *(v0 + 120);

    (*(v27 + 8))(v26, v28);
    v29(0, 0, 0);
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1B207C494(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  v5 = sub_1B20A9B64();
  if (v1)
  {
    v6 = sub_1B207C5F4;
  }

  else
  {
    v6 = sub_1B207C828;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1B207C5F4()
{

  return MEMORY[0x1EEE6DFA0](sub_1B207C668, 0, 0);
}

uint64_t sub_1B207C668()
{
  v1 = v0[26];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v5 = sub_1B205E940();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1B20A9894();
  v8 = sub_1B20A9C84();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1B1F9F000, v7, v8, "Failed to fetch recents, favorites, and latest: %@", v9, 0xCu);
    sub_1B20985B4(v10, &qword_1EB79F4B0, &qword_1B20B8ED8);
    MEMORY[0x1B2741310](v10, -1, -1);
    MEMORY[0x1B2741310](v9, -1, -1);
  }

  v14 = v0[18];
  v13 = v0[19];
  v15 = v0[17];
  v16 = v0[15];

  (*(v14 + 8))(v13, v15);
  v16(0, 0, 0);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1B207C828()
{

  return MEMORY[0x1EEE6DFA0](sub_1B207C89C, 0, 0);
}

uint64_t sub_1B207C89C()
{
  v53 = v0;
  v1 = v0[25];
  if (v1)
  {
    if (v1 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v44 = v0)
    {
      v3 = 0;
      v4 = 0;
      v5 = v0[25];
      v46 = v5 & 0xFFFFFFFFFFFFFF8;
      v48 = v5 & 0xC000000000000001;
      v6 = MEMORY[0x1E69E7CC0];
      v7 = MEMORY[0x1E69E7CC0];
      v45 = i;
      while (1)
      {
        if (v48)
        {
          v8 = MEMORY[0x1B27403C0](v3, v1);
        }

        else
        {
          if (v3 >= *(v46 + 16))
          {
            goto LABEL_24;
          }

          v8 = *(v1 + 8 * v3 + 32);
        }

        v9 = v8;
        v10 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v52 = v6;
        v50 = v4;
        v0 = v4;

        if ([v9 isFavorite])
        {
          v11 = v9;
          MEMORY[0x1B2740000]();
          if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1B20A9B24();
          }

          sub_1B20A9B44();
          v12 = v52;
          v13 = v7;
        }

        else
        {
          v12 = v6;
          v13 = v7;
          if ([v9 validRecent])
          {
            v14 = v9;
            MEMORY[0x1B2740000]();
            if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1B20A9B24();
            }

            sub_1B20A9B44();
            v13 = v7;
            v12 = v6;
          }
        }

        v15 = [v9 latest];

        if (v15)
        {

          v4 = v9;
        }

        else
        {

          v4 = v50;
        }

        ++v3;
        v6 = v12;
        v7 = v13;
        if (v10 == v45)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      i = sub_1B20A9DE4();
    }

    v4 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    v12 = MEMORY[0x1E69E7CC0];
LABEL_27:

    v17 = v4;

    v0 = v44;
    v16 = v4;
  }

  else
  {
    v16 = 0;
    v12 = 0;
    v13 = 0;
  }

  v18 = v0[20];
  v19 = v0[17];
  v20 = v0[18];
  (v0[15])(v13, v12, v16);

  v21 = sub_1B205E940();
  (*(v20 + 2))(v18, v21, v19);
  sub_1B20983FC(v13, v12, v16);
  v22 = sub_1B20A9894();
  v23 = sub_1B20A9C74();
  sub_1B2098448(v13, v12, v16);
  if (os_log_type_enabled(v22, v23))
  {
    v24 = v16;
    v25 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v52 = v51;
    *v25 = 136315650;
    if (v13)
    {
    }

    v0[11] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F508, &qword_1B20B9178);
    v26 = sub_1B20A9A84();
    v28 = sub_1B2061574(v26, v27, &v52);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2080;
    if (v13)
    {

      v29 = v12;
    }

    else
    {
      v29 = 0;
    }

    v0[12] = v29;
    v33 = sub_1B20A9A84();
    v35 = sub_1B2061574(v33, v34, &v52);

    *(v25 + 14) = v35;
    *(v25 + 22) = 2080;
    if (v13)
    {
      v36 = v24;
      v37 = v24;
    }

    else
    {
      v37 = 0;
    }

    v38 = v0[18];
    v47 = v0[17];
    v49 = v0[20];
    v0[13] = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F538, &qword_1B20B9530);
    v39 = sub_1B20A9A84();
    v41 = sub_1B2061574(v39, v40, &v52);

    *(v25 + 24) = v41;
    _os_log_impl(&dword_1B1F9F000, v22, v23, "Fetched recents: %s, favorites: %s, latest: %s", v25, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B2741310](v51, -1, -1);
    MEMORY[0x1B2741310](v25, -1, -1);

    swift_bridgeObjectRelease_n();
    sub_1B2098448(v13, v12, v24);
    (*(v38 + 1))(v49, v47);
  }

  else
  {
    v30 = v0[20];
    v31 = v0[17];
    v32 = v0[18];
    sub_1B2098448(v13, v12, v16);
    swift_bridgeObjectRelease_n();

    (*(v32 + 1))(v30, v31);
  }

  v42 = v0[1];

  return v42();
}

void sub_1B207CE68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  if (a1)
  {
    type metadata accessor for MTCDTimerDuration();
    v6 = sub_1B20A9AF4();
  }

  if (a2)
  {
    type metadata accessor for MTCDTimerDuration();
    v7 = sub_1B20A9AF4();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t MTCDDataStore.getRecentDurations(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = *&v2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v7 = v2;

  os_unfair_lock_lock(v6 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v6 + 4);
  v8 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v8)
  {
    v9 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v8(v10);
    sub_1B1FA6834(v8, v9);
  }
}

uint64_t sub_1B207D018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = sub_1B20A98B4();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B207D0E8, 0, 0);
}

uint64_t sub_1B207D0E8()
{
  v47 = v0;
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (!*(v1 + v2))
  {
    goto LABEL_8;
  }

  v3 = *(v0 + 96);
  *(v0 + 200) = 0;
  v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
  v5 = swift_allocObject();
  *(v5 + 16) = v0 + 200;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B2098884;
  *(v6 + 24) = v5;
  *(v0 + 48) = sub_1B20988D0;
  *(v0 + 56) = v6;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B20668F0;
  *(v0 + 40) = &block_descriptor_807;
  v7 = _Block_copy((v0 + 16));
  v8 = v3;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
    return result;
  }

  v10 = *(v0 + 200);

  if (v10 == 1)
  {
    v11 = *(v1 + v2);
    *(v0 + 152) = v11;
    if (v11)
    {
      *(v0 + 160) = sub_1B20A9BA4();

      *(v0 + 168) = sub_1B20A9B94();
      v12 = swift_task_alloc();
      *(v0 + 176) = v12;
      *v12 = v0;
      v12[1] = sub_1B207D69C;

      return sub_1B2086C78(0);
    }

    v31 = *(v0 + 144);
    v32 = *(v0 + 120);
    v33 = *(v0 + 128);
    v34 = sub_1B205E940();
    (*(v33 + 16))(v31, v34, v32);
    v35 = sub_1B20A9894();
    v36 = sub_1B20A9C74();

    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 144);
    v39 = *(v0 + 120);
    v40 = *(v0 + 128);
    if (v37)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v46 = v42;
      *v41 = 136315138;
      *(v0 + 88) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F508, &qword_1B20B9178);
      v43 = sub_1B20A9A84();
      v45 = sub_1B2061574(v43, v44, &v46);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_1B1F9F000, v35, v36, "Fetched recent timer durations: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x1B2741310](v42, -1, -1);
      MEMORY[0x1B2741310](v41, -1, -1);
    }

    (*(v40 + 8))(v38, v39);
    (*(v0 + 104))(0);
  }

  else
  {
LABEL_8:
    type metadata accessor for BugCapture();
    static BugCapture.reportBug(type:subType:name:value:)();
    sub_1B20915B0();
    v13 = swift_allocError();
    *v14 = 3;
    swift_willThrow();
    v16 = *(v0 + 128);
    v15 = *(v0 + 136);
    v17 = *(v0 + 120);
    v18 = sub_1B205E940();
    (*(v16 + 16))(v15, v18, v17);
    v19 = v13;
    v20 = sub_1B20A9894();
    v21 = sub_1B20A9C84();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v13;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_1B1F9F000, v20, v21, "Failed to fetch recent timer durations: %@", v22, 0xCu);
      sub_1B20985B4(v23, &qword_1EB79F4B0, &qword_1B20B8ED8);
      MEMORY[0x1B2741310](v23, -1, -1);
      MEMORY[0x1B2741310](v22, -1, -1);
    }

    v27 = *(v0 + 128);
    v26 = *(v0 + 136);
    v28 = *(v0 + 120);
    v29 = *(v0 + 104);

    (*(v27 + 8))(v26, v28);
    v29(0);
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1B207D69C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_1B20A9B64();
    v7 = v6;
    v8 = sub_1B207DAA4;
  }

  else
  {
    *(v4 + 192) = a1;
    v5 = sub_1B20A9B64();
    v7 = v9;
    v8 = sub_1B207D81C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

uint64_t sub_1B207D81C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B207D890, 0, 0);
}

uint64_t sub_1B207D890()
{
  v22 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = sub_1B205E940();
  (*(v4 + 16))(v2, v5, v3);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C74();

  if (os_log_type_enabled(v6, v7))
  {
    v20 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    *(v0 + 88) = v1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F508, &qword_1B20B9178);
    v12 = sub_1B20A9A84();
    v14 = sub_1B2061574(v12, v13, &v21);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1B1F9F000, v6, v7, "Fetched recent timer durations: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1B2741310](v11, -1, -1);
    MEMORY[0x1B2741310](v10, -1, -1);

    (*(v8 + 8))(v20, v9);
  }

  else
  {
    v15 = *(v0 + 144);
    v16 = *(v0 + 120);
    v17 = *(v0 + 128);

    (*(v17 + 8))(v15, v16);
  }

  (*(v0 + 104))(v1);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1B207DAA4()
{

  return MEMORY[0x1EEE6DFA0](sub_1B207DB18, 0, 0);
}

uint64_t sub_1B207DB18()
{
  v1 = v0[23];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v5 = sub_1B205E940();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1B20A9894();
  v8 = sub_1B20A9C84();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1B1F9F000, v7, v8, "Failed to fetch recent timer durations: %@", v9, 0xCu);
    sub_1B20985B4(v10, &qword_1EB79F4B0, &qword_1B20B8ED8);
    MEMORY[0x1B2741310](v10, -1, -1);
    MEMORY[0x1B2741310](v9, -1, -1);
  }

  v14 = v0[16];
  v13 = v0[17];
  v15 = v0[15];
  v16 = v0[13];

  (*(v14 + 8))(v13, v15);
  v16(0);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1B207DCD0()
{
  v0[2] = sub_1B20A9BA4();
  v0[3] = sub_1B20A9B94();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1B207BA2C;

  return sub_1B2086C78(0);
}
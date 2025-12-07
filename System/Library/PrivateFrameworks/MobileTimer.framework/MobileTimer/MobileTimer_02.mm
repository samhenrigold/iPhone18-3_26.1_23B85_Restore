uint64_t MTCDDataStore.getFavoriteDurations(completion:)(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B207DEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = sub_1B20A98B4();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B207DF8C, 0, 0);
}

uint64_t sub_1B207DF8C()
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
  *(v0 + 40) = &block_descriptor_795;
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
      v12[1] = sub_1B207E540;

      return sub_1B2086C78(1);
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
      _os_log_impl(&dword_1B1F9F000, v35, v36, "Fetched favorite timer durations: %s", v41, 0xCu);
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
      _os_log_impl(&dword_1B1F9F000, v20, v21, "Failed to fetch favorite timer durations: %@", v22, 0xCu);
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

uint64_t sub_1B207E540(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_1B20A9B64();
    v7 = v6;
    v8 = sub_1B207E948;
  }

  else
  {
    *(v4 + 192) = a1;
    v5 = sub_1B20A9B64();
    v7 = v9;
    v8 = sub_1B207E6C0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

uint64_t sub_1B207E6C0()
{

  return MEMORY[0x1EEE6DFA0](sub_1B207E734, 0, 0);
}

uint64_t sub_1B207E734()
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
    _os_log_impl(&dword_1B1F9F000, v6, v7, "Fetched favorite timer durations: %s", v10, 0xCu);
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

uint64_t sub_1B207E948()
{

  return MEMORY[0x1EEE6DFA0](sub_1B207E9BC, 0, 0);
}

uint64_t sub_1B207E9BC()
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
    _os_log_impl(&dword_1B1F9F000, v7, v8, "Failed to fetch favorite timer durations: %@", v9, 0xCu);
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

uint64_t sub_1B207EB74()
{
  v0[2] = sub_1B20A9BA4();
  v0[3] = sub_1B20A9B94();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1B207BA2C;

  return sub_1B2086C78(1);
}

Swift::Void __swiftcall MTCDDataStore.deleteDuration(_:isFavorite:)(MTTimerDuration *_, Swift::Bool isFavorite)
{
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = _;
  *(v5 + 32) = isFavorite;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  v6 = *&v2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v7 = v2;
  v8 = _;
  os_unfair_lock_lock(v6 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v6 + 4);
  v9 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v9)
  {
    v10 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v9(v11);
    sub_1B1FA6834(v9, v10);
  }
}

uint64_t MTCDDataStore.deleteDuration(_:isFavorite:completion:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  v10 = *&v4[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v11 = v4;
  v12 = a1;
  sub_1B209192C(a3, a4);
  os_unfair_lock_lock(v10 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v10 + 4);
  v13 = *&v11[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v13)
  {
    v14 = *&v11[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v13(v15);
    sub_1B1FA6834(v13, v14);
  }
}

uint64_t sub_1B207EF34(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
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

  return MEMORY[0x1EEE6DFA0](sub_1B207F008, 0, 0);
}

uint64_t sub_1B207F008()
{
  v1 = *(v0 + 88);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (!*(v1 + v2))
  {
    goto LABEL_8;
  }

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
  *(v0 + 40) = &block_descriptor_783;
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

  v10 = *(v0 + 176);

  if (v10 == 1)
  {
    v11 = *(v1 + v2);
    *(v0 + 152) = v11;
    if (v11)
    {

      v12 = swift_task_alloc();
      *(v0 + 160) = v12;
      *v12 = v0;
      v12[1] = sub_1B207F5B4;
      v13 = *(v0 + 177);
      v14 = *(v0 + 96);

      return sub_1B207FA44(v14, v13);
    }

    v39 = *(v0 + 144);
    v40 = *(v0 + 120);
    v41 = *(v0 + 128);
    v42 = *(v0 + 96);
    v43 = sub_1B205E940();
    (*(v41 + 16))(v39, v43, v40);
    v44 = v42;
    v45 = sub_1B20A9894();
    v46 = sub_1B20A9C74();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = *(v0 + 96);
      v48 = swift_slowAlloc();
      *v48 = 134217984;
      [v47 duration];
      *(v48 + 4) = v49;
      _os_log_impl(&dword_1B1F9F000, v45, v46, "Deleted timer duration from core data: %f", v48, 0xCu);
      MEMORY[0x1B2741310](v48, -1, -1);
    }

    v50 = *(v0 + 144);
    v51 = *(v0 + 120);
    v52 = *(v0 + 128);
    v53 = *(v0 + 104);

    (*(v52 + 8))(v50, v51);
    if (v53)
    {
      (*(v0 + 104))(0);
    }
  }

  else
  {
LABEL_8:
    type metadata accessor for BugCapture();
    static BugCapture.reportBug(type:subType:name:value:)();
    sub_1B20915B0();
    v15 = swift_allocError();
    *v16 = 3;
    swift_willThrow();
    v18 = *(v0 + 128);
    v17 = *(v0 + 136);
    v19 = *(v0 + 120);
    v20 = *(v0 + 96);
    v21 = sub_1B205E940();
    (*(v18 + 16))(v17, v21, v19);
    v22 = v20;
    v23 = v15;
    v24 = sub_1B20A9894();
    v25 = sub_1B20A9C84();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 96);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 134218242;
      [v26 duration];
      *(v27 + 4) = v29;
      *(v27 + 12) = 2112;
      v30 = v15;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 14) = v31;
      *v28 = v31;
      _os_log_impl(&dword_1B1F9F000, v24, v25, "Failed to delete timer durations from core data: %f, error: %@", v27, 0x16u);
      sub_1B20985B4(v28, &qword_1EB79F4B0, &qword_1B20B8ED8);
      MEMORY[0x1B2741310](v28, -1, -1);
      MEMORY[0x1B2741310](v27, -1, -1);
    }

    v33 = *(v0 + 128);
    v32 = *(v0 + 136);
    v34 = *(v0 + 120);
    v35 = *(v0 + 104);

    (*(v33 + 8))(v32, v34);
    if (v35)
    {
      v36 = *(v0 + 104);
      v37 = v15;
      v36(v15);
    }
  }

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1B207F5B4()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1B207F844;
  }

  else
  {

    v2 = sub_1B207F6D0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B207F6D0()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[12];
  v5 = sub_1B205E940();
  (*(v3 + 16))(v1, v5, v2);
  v6 = v4;
  v7 = sub_1B20A9894();
  v8 = sub_1B20A9C74();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[12];
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    [v9 duration];
    *(v10 + 4) = v11;
    _os_log_impl(&dword_1B1F9F000, v7, v8, "Deleted timer duration from core data: %f", v10, 0xCu);
    MEMORY[0x1B2741310](v10, -1, -1);
  }

  v12 = v0[18];
  v13 = v0[15];
  v14 = v0[16];
  v15 = v0[13];

  (*(v14 + 8))(v12, v13);
  if (v15)
  {
    (v0[13])(0);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1B207F844()
{

  v1 = v0[21];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v5 = v0[12];
  v6 = sub_1B205E940();
  (*(v3 + 16))(v2, v6, v4);
  v7 = v5;
  v8 = v1;
  v9 = sub_1B20A9894();
  v10 = sub_1B20A9C84();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[12];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 134218242;
    [v11 duration];
    *(v12 + 4) = v14;
    *(v12 + 12) = 2112;
    v15 = v1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&dword_1B1F9F000, v9, v10, "Failed to delete timer durations from core data: %f, error: %@", v12, 0x16u);
    sub_1B20985B4(v13, &qword_1EB79F4B0, &qword_1B20B8ED8);
    MEMORY[0x1B2741310](v13, -1, -1);
    MEMORY[0x1B2741310](v12, -1, -1);
  }

  v18 = v0[16];
  v17 = v0[17];
  v19 = v0[15];
  v20 = v0[13];

  (*(v18 + 8))(v17, v19);
  if (v20)
  {
    v21 = v0[13];
    v22 = v1;
    v21(v1);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_1B207FA44(uint64_t a1, char a2)
{
  *(v3 + 128) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_1B20A9D34();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B207FB08, v2, 0);
}

uint64_t sub_1B207FB08()
{
  v1 = v0[2];
  type metadata accessor for MTCDTimerDuration();
  v36 = static MTCDTimerDuration.fetchRequest()();
  v0[7] = v36;
  v2 = [v1 title];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1B20A9A74();
    v6 = v5;

    sub_1B20982AC(0, &qword_1EB79CE38, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4D0, &qword_1B20B8F70);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1B20B8E70;
    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 64) = sub_1B2095E48();
    *(v7 + 32) = v4;
    *(v7 + 40) = v6;
  }

  else
  {
    sub_1B20982AC(0, &qword_1EB79CE38, 0x1E696AE18);
  }

  v8 = sub_1B20A9C64();
  v0[8] = v8;
  v9 = v0[5];
  v34 = v0[4];
  v35 = v0[6];
  v33 = v0[3];
  v10 = v0[2];
  sub_1B20982AC(0, &qword_1EB79CE38, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4D0, &qword_1B20B8F70);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B20B8E70;
  [v10 duration];
  v12 = sub_1B20A9C24();
  v13 = sub_1B20982AC(0, &qword_1EB79CDE0, 0x1E696AD98);
  *(v11 + 56) = v13;
  v14 = sub_1B2094634();
  *(v11 + 64) = v14;
  *(v11 + 32) = v12;
  v15 = sub_1B20A9C64();
  v0[9] = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B20B8E70;
  v17 = sub_1B20A9B54();
  *(v16 + 56) = v13;
  *(v16 + 64) = v14;
  *(v16 + 32) = v17;
  v18 = sub_1B20A9C64();
  v0[10] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4F0, &qword_1B20B9128);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B20B8E80;
  *(v19 + 32) = v8;
  *(v19 + 40) = v15;
  *(v19 + 48) = v18;
  v20 = objc_allocWithZone(MEMORY[0x1E696AB28]);
  v21 = v8;
  v22 = v15;
  v23 = v18;
  v24 = sub_1B20A9AF4();

  v25 = [v20 initWithType:1 subpredicates:v24];
  v0[11] = v25;

  [v36 setPredicate_];
  v26 = [*(v33 + 112) newBackgroundContext];
  v0[12] = v26;
  v27 = swift_allocObject();
  v0[13] = v27;
  *(v27 + 16) = v26;
  *(v27 + 24) = v36;
  (*(v9 + 104))(v35, *MEMORY[0x1E695D2B8], v34);
  v26;
  v28 = v36;
  v29 = swift_task_alloc();
  v0[14] = v29;
  *v29 = v0;
  v29[1] = sub_1B207FF48;
  v30 = v0[6];
  v31 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEDB6538](v29, v30, sub_1B2095CC8, v27, v31);
}

uint64_t sub_1B207FF48()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 120) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = sub_1B2080190;
  }

  else
  {
    v7 = sub_1B20800F4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1B20800F4()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 56);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1B2080190()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 56);

  v6 = *(v0 + 8);

  return v6();
}

Swift::Void __swiftcall MTCDDataStore.deleteAllDurations()()
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

uint64_t MTCDDataStore.deleteAllDurations(completion:)(uint64_t a1, uint64_t a2)
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

void sub_1B208055C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_allocObject();
  v4[3] = 0;
  v4[4] = 0;
  v4[2] = a1;
  v5 = a1;
  sub_1B2068230();
}

uint64_t sub_1B20805E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  v4 = sub_1B20A98B4();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B20806B8, 0, 0);
}

uint64_t sub_1B20806B8()
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
  *(v0 + 40) = &block_descriptor_771;
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
      v12[1] = sub_1B2080BEC;

      return sub_1B208101C();
    }

    v33 = *(v0 + 136);
    v34 = *(v0 + 112);
    v35 = *(v0 + 120);
    v36 = sub_1B205E940();
    (*(v35 + 16))(v33, v36, v34);
    v37 = sub_1B20A9894();
    v38 = sub_1B20A9C74();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1B1F9F000, v37, v38, "Deleted all timer durations from core data", v39, 2u);
      MEMORY[0x1B2741310](v39, -1, -1);
    }

    v40 = *(v0 + 136);
    v41 = *(v0 + 112);
    v42 = *(v0 + 120);
    v43 = *(v0 + 96);

    (*(v42 + 8))(v40, v41);
    if (v43)
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
      _os_log_impl(&dword_1B1F9F000, v20, v21, "Failed to delete all timer durations from core data: %@", v22, 0xCu);
      sub_1B20985B4(v23, &qword_1EB79F4B0, &qword_1B20B8ED8);
      MEMORY[0x1B2741310](v23, -1, -1);
      MEMORY[0x1B2741310](v22, -1, -1);
    }

    v27 = *(v0 + 120);
    v26 = *(v0 + 128);
    v28 = *(v0 + 112);
    v29 = *(v0 + 96);

    (*(v27 + 8))(v26, v28);
    if (v29)
    {
      v30 = *(v0 + 96);
      v31 = v13;
      v30(v13);
    }
  }

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1B2080BEC()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1B2080E4C;
  }

  else
  {

    v2 = sub_1B2080D08;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B2080D08()
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
    _os_log_impl(&dword_1B1F9F000, v5, v6, "Deleted all timer durations from core data", v7, 2u);
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

uint64_t sub_1B2080E4C()
{

  v1 = v0[20];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
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
    _os_log_impl(&dword_1B1F9F000, v7, v8, "Failed to delete all timer durations from core data: %@", v9, 0xCu);
    sub_1B20985B4(v10, &qword_1EB79F4B0, &qword_1B20B8ED8);
    MEMORY[0x1B2741310](v10, -1, -1);
    MEMORY[0x1B2741310](v9, -1, -1);
  }

  v14 = v0[15];
  v13 = v0[16];
  v15 = v0[14];
  v16 = v0[12];

  (*(v14 + 8))(v13, v15);
  if (v16)
  {
    v17 = v0[12];
    v18 = v1;
    v17(v1);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_1B208101C()
{
  v1[2] = v0;
  v2 = sub_1B20A9D34();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B20810DC, v0, 0);
}

uint64_t sub_1B20810DC()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for MTCDTimerDuration();
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
  v11[1] = sub_1B2081268;
  v12 = v0[5];
  v13 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEDB6538](v11, v12, sub_1B2095F44, v9, v13);
}

uint64_t sub_1B2081268()
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
    v7 = sub_1B2081494;
  }

  else
  {
    v7 = sub_1B2081414;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1B2081414()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B2081494()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  v3 = *(v0 + 8);

  return v3();
}

void *sub_1B2081604(int a1)
{
  LODWORD(v134) = a1;
  v133 = sub_1B20A9764();
  v136 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v132 = &v121 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_1B20A98B4();
  v137 = *(v139 - 1);
  v3 = MEMORY[0x1EEE9AC00](v139);
  v130 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v129 = &v121 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v138 = &v121 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v121 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F500, qword_1B20B9150);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v121 - v12;
  v143 = sub_1B20A97B4();
  v14 = *(v143 - 8);
  v15 = MEMORY[0x1EEE9AC00](v143);
  v131 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v121 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v140 = &v121 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v121 - v22;
  swift_defaultActor_initialize();
  v141 = v1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = [objc_opt_self() bundleForClass_];
  v26 = sub_1B20A9A64();
  v27 = sub_1B20A9A64();
  v28 = [v25 URLForResource:v26 withExtension:v27];

  if (!v28)
  {
    sub_1B20915B0();
    swift_allocError();
    *v54 = 0;
    swift_willThrow();
LABEL_12:
    type metadata accessor for CoreDataStoreActor();
    v58 = v141;
    swift_defaultActor_destroy();
    swift_deallocPartialClassInstance();
    return v58;
  }

  sub_1B20A9794();

  v29 = objc_allocWithZone(MEMORY[0x1E695D638]);
  v30 = sub_1B20A9784();
  v31 = [v29 initWithContentsOfURL_];

  v32 = v23;
  if (!v31)
  {
    sub_1B20915B0();
    swift_allocError();
    *v55 = 1;
    swift_willThrow();
LABEL_9:
    (*(v14 + 8))(v32, v143);
    goto LABEL_12;
  }

  if ((v134 & 1) == 0)
  {
    v56 = type metadata accessor for MTCDUtilities();
    v57 = v135;
    (*(v56 + 80))(0xD000000000000022, 0x80000001B20D3610);
    v34 = v138;
    if (v57)
    {
      (*(v14 + 8))(v32, v143);

      goto LABEL_12;
    }

    v135 = 0;
    v33 = v143;
    if ((*(v14 + 48))(v13, 1, v143) != 1)
    {
      goto LABEL_5;
    }

    sub_1B20985B4(v13, &qword_1EB79F500, qword_1B20B9150);
    v114 = sub_1B205E940();
    v115 = v137;
    v116 = v139;
    (*(v137 + 16))(v10, v114, v139);
    v117 = sub_1B20A9894();
    v118 = sub_1B20A9C84();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&dword_1B1F9F000, v117, v118, "Failed to create grouped container url for core data stores", v119, 2u);
      MEMORY[0x1B2741310](v119, -1, -1);
    }

    (*(v115 + 8))(v10, v116);
    sub_1B20915B0();
    swift_allocError();
    *v120 = 2;
    swift_willThrow();

    goto LABEL_9;
  }

  sub_1B20A9774();
  v33 = v143;
  (*(v14 + 56))(v13, 0, 1, v143);
  v34 = v138;
LABEL_5:
  v134 = v31;
  v127 = v32;
  v35 = v140;
  (*(v14 + 32))(v140, v13, v33);
  v36 = sub_1B205E940();
  v37 = v137;
  v38 = *(v137 + 16);
  v39 = v34;
  v124 = v36;
  v125 = v38;
  v40 = v139;
  v126 = v137 + 16;
  v38(v39);
  (*(v14 + 16))(v19, v35, v33);
  v41 = sub_1B20A9894();
  v42 = sub_1B20A9C74();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v142[0] = v44;
    *v43 = 136315138;
    sub_1B20916FC(&qword_1EB79CEA0, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v45 = sub_1B20A9F74();
    v46 = v33;
    v48 = v47;
    v49 = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v128 = *(v14 + 8);
    v128(v19, v46);
    v50 = sub_1B2061574(v45, v48, v142);

    *(v43 + 4) = v50;
    _os_log_impl(&dword_1B1F9F000, v41, v42, "Created grouped container url: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x1B2741310](v44, -1, -1);
    MEMORY[0x1B2741310](v43, -1, -1);

    v51 = v138;
    v52 = *(v137 + 8);
    v53 = v139;
  }

  else
  {

    v49 = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v128 = *(v14 + 8);
    v128(v19, v33);
    v52 = *(v37 + 8);
    v51 = v138;
    v53 = v40;
  }

  v138 = v52;
  (v52)(v51, v53);
  strcpy(v142, "local.sqlite");
  BYTE5(v142[1]) = 0;
  HIWORD(v142[1]) = -5120;
  v59 = v136;
  v60 = *(v136 + 104);
  v62 = v132;
  v61 = v133;
  v123 = *MEMORY[0x1E6968F70];
  v122 = v60;
  v60(v132);
  sub_1B2095F5C();
  v63 = v131;
  sub_1B20A97A4();
  v64 = *(v59 + 8);
  v136 = v59 + 8;
  v64(v62, v61);
  v65 = objc_allocWithZone(MEMORY[0x1E695D6C8]);
  v66 = sub_1B20A9784();
  v67 = [v65 initWithURL_];

  v68 = v63;
  v69 = v128;
  v128(v68, v143);
  v70 = sub_1B20A9A64();
  [v67 setConfiguration_];

  v71 = type metadata accessor for MTCDUtilities();
  if ((*(v71 + 88))())
  {
    v121 = v67;
    v130 = v49;
    v72 = v129;
    v125(v129, v124, v139);
    v73 = sub_1B20A9894();
    v74 = sub_1B20A9C74();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_1B1F9F000, v73, v74, "Supports cloudkit, loading NSPersistentCloudKitContainer", v75, 2u);
      MEMORY[0x1B2741310](v75, -1, -1);
    }

    (v138)(v72, v139);
    strcpy(v142, "cloud.sqlite");
    BYTE5(v142[1]) = 0;
    HIWORD(v142[1]) = -5120;
    v77 = v132;
    v76 = v133;
    v122(v132, v123, v133);
    v78 = v131;
    sub_1B20A97A4();
    v64(v77, v76);
    v79 = objc_allocWithZone(MEMORY[0x1E695D6C8]);
    v80 = sub_1B20A9784();
    v81 = [v79 initWithURL_];

    v82 = v128;
    v128(v78, v143);
    v83 = sub_1B20A9A64();
    [v81 setConfiguration_];

    v84 = objc_allocWithZone(MEMORY[0x1E695D680]);
    v85 = sub_1B20A9A64();
    v86 = [v84 initWithContainerIdentifier_];
    v139 = v86;

    v87 = sub_1B20A9A64();
    [v86 setApsConnectionMachServiceName_];

    [v81 setCloudKitContainerOptions_];
    v88 = objc_allocWithZone(MEMORY[0x1E695D668]);
    v89 = v134;
    v90 = sub_1B20A9A64();
    v91 = [v88 initWithName:v90 managedObjectModel:v89];

    v58 = v141;
    *(v141 + 112) = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4F0, &qword_1B20B9128);
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_1B20B8EA0;
    v93 = v121;
    *(v92 + 32) = v81;
    *(v92 + 40) = v93;
    sub_1B20982AC(0, &qword_1EB79CE00, 0x1E695D6C8);
    v94 = v91;
    v95 = v81;
    v96 = v93;
    v97 = sub_1B20A9AF4();
    v67 = v93;
    v98 = v140;

    [v94 setPersistentStoreDescriptions_];

    v99 = v127;
  }

  else
  {
    v82 = v69;
    v100 = v130;
    v101 = v139;
    v125(v130, v124, v139);
    v102 = sub_1B20A9894();
    v103 = sub_1B20A9C74();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&dword_1B1F9F000, v102, v103, "Loading NSPersistentContainer", v104, 2u);
      MEMORY[0x1B2741310](v104, -1, -1);
    }

    (v138)(v100, v101);
    v105 = objc_allocWithZone(MEMORY[0x1E695D688]);
    v106 = v134;
    v107 = sub_1B20A9A64();
    v108 = [v105 initWithName:v107 managedObjectModel:v106];

    v58 = v141;
    *(v141 + 112) = v108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4F0, &qword_1B20B9128);
    v109 = swift_allocObject();
    *(v109 + 16) = xmmword_1B20B8E90;
    *(v109 + 32) = v67;
    sub_1B20982AC(0, &qword_1EB79CE00, 0x1E695D6C8);
    v110 = v67;
    v94 = v108;
    v97 = sub_1B20A9AF4();

    [v94 setPersistentStoreDescriptions_];
    v99 = v127;
    v98 = v140;
  }

  v111 = [*(v58 + 112) viewContext];
  [v111 setAutomaticallyMergesChangesFromParent_];

  v112 = v143;
  v82(v98, v143);
  v82(v99, v112);
  return v58;
}

uint64_t sub_1B2082590()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B2098894;

  return sub_1B20674CC(v3, v4, v5, v2);
}

uint64_t sub_1B2082624@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_1B20A9774();
    v3 = sub_1B20A97B4();
    return (*(*(v3 - 8) + 56))(a2, 0, 1, v3);
  }

  else
  {
    v5 = type metadata accessor for MTCDUtilities();
    return (*(v5 + 80))(0xD000000000000022, 0x80000001B20D3610);
  }
}

uint64_t sub_1B20826F8()
{
  v1[2] = v0;
  v2 = sub_1B20A98B4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B20827B8, v0, 0);
}

uint64_t sub_1B20827B8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_1B205E940();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_1B20A9894();
  v6 = sub_1B20A9C74();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1B1F9F000, v5, v6, "Loading data store", v7, 2u);
    MEMORY[0x1B2741310](v7, -1, -1);
  }

  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];

  (*(v9 + 8))(v8, v10);
  sub_1B20916FC(&qword_1EB79CE80, v11, type metadata accessor for CoreDataStoreActor, &unk_1B20B9288);
  v12 = swift_task_alloc();
  v0[6] = v12;
  *v12 = v0;
  v12[1] = sub_1B208298C;

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1B208298C()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_1B2082B1C;
  }

  else
  {
    v4 = sub_1B2082AB8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B2082AB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B2082B1C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1B2082B80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F530, &qword_1B20B9528);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  v9 = *(a2 + 112);
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  *(v11 + ((v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_1B2098344;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B20835C8;
  aBlock[3] = &block_descriptor_760;
  v12 = _Block_copy(aBlock);

  [v9 loadPersistentStoresWithCompletionHandler_];
  _Block_release(v12);
}

id sub_1B2082D50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v99[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1B20A98B4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v88 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v20 = &v88 - v19;
  if (a2)
  {
    v21 = sub_1B20A9744();
    v22 = sub_1B205E940();
    (*(v8 + 16))(v20, v22, v7);
    v23 = v21;
    v24 = sub_1B20A9894();
    v25 = sub_1B20A9C84();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      LODWORD(v97) = v25;
      v27 = v26;
      v96 = swift_slowAlloc();
      v99[0] = v96;
      *v27 = 136315138;
      v28 = v23;
      v98 = v7;
      v29 = v28;
      v30 = [v28 description];
      v31 = v8;
      v32 = sub_1B20A9A74();
      v34 = v33;

      v35 = sub_1B2061574(v32, v34, v99);

      *(v27 + 4) = v35;
      _os_log_impl(&dword_1B1F9F000, v24, v97, "Error loading persistent store: %s", v27, 0xCu);
      v36 = v96;
      __swift_destroy_boxed_opaque_existential_0(v96);
      MEMORY[0x1B2741310](v36, -1, -1);
      MEMORY[0x1B2741310](v27, -1, -1);

      (*(v31 + 8))(v20, v98);
    }

    else
    {

      (*(v8 + 8))(v20, v7);
    }

    v99[0] = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F530, &qword_1B20B9528);
    return sub_1B20A9B74();
  }

  else
  {
    v98 = v18;
    v94 = a4;
    v95 = v17;
    v37 = sub_1B205E940();
    v38 = *(v8 + 16);
    v96 = (v8 + 16);
    v97 = v37;
    v38(v16);
    v39 = v8;
    v40 = a1;
    v41 = sub_1B20A9894();
    v42 = sub_1B20A9C74();

    v43 = os_log_type_enabled(v41, v42);
    v93 = v11;
    if (v43)
    {
      v44 = swift_slowAlloc();
      v90 = v39;
      v45 = v44;
      v89 = swift_slowAlloc();
      v99[0] = v89;
      *v45 = 136315138;
      v46 = v40;
      v91 = v40;
      v47 = v46;
      v48 = [v46 description];
      v49 = sub_1B20A9A74();
      v92 = v38;
      v51 = v50;

      v40 = v91;
      v52 = sub_1B2061574(v49, v51, v99);
      v38 = v92;

      *(v45 + 4) = v52;
      _os_log_impl(&dword_1B1F9F000, v41, v42, "Loaded persistent store: %s", v45, 0xCu);
      v53 = v89;
      __swift_destroy_boxed_opaque_existential_0(v89);
      MEMORY[0x1B2741310](v53, -1, -1);
      MEMORY[0x1B2741310](v45, -1, -1);

      v39 = v90;
    }

    else
    {
    }

    v55 = *(v39 + 8);
    v55(v16, v7);
    result = [v40 configuration];
    v56 = v98;
    if (result)
    {
      v57 = result;
      v58 = sub_1B20A9A74();
      v60 = v59;

      if (v58 == 0x6C61636F4CLL && v60 == 0xE500000000000000)
      {
      }

      else
      {
        v61 = sub_1B20A9F84();

        if ((v61 & 1) == 0)
        {
          return result;
        }
      }

      (v38)(v56, v97, v7);
      v62 = sub_1B20A9894();
      v63 = sub_1B20A9C74();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_1B1F9F000, v62, v63, "Local persistent store loaded, proceeding", v64, 2u);
        MEMORY[0x1B2741310](v64, -1, -1);
      }

      v55(v56, v7);
      v65 = type metadata accessor for MTCDUtilities();
      if ((*(v65 + 88))())
      {
        v66 = *(v94 + 112);
        objc_opt_self();
        v67 = swift_dynamicCastObjCClassUnconditional();
        v99[0] = 0;
        v68 = v66;
        v69 = [v67 initializeCloudKitSchemaWithOptions:0 error:v99];
        v70 = v99[0];
        if (v69)
        {
          (v38)(v95, v97, v7);
          v71 = v70;
          v72 = sub_1B20A9894();
          v73 = sub_1B20A9C74();
          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            *v74 = 0;
            _os_log_impl(&dword_1B1F9F000, v72, v73, "Successfully initialized cloud schema", v74, 2u);
            MEMORY[0x1B2741310](v74, -1, -1);
          }

          v75 = v95;
        }

        else
        {
          v76 = v99[0];
          v77 = v7;
          v78 = sub_1B20A9754();

          swift_willThrow();
          v79 = v93;
          v98 = v77;
          (v38)(v93, v97, v77);
          v80 = v78;
          v81 = sub_1B20A9894();
          v82 = sub_1B20A9C84();

          if (os_log_type_enabled(v81, v82))
          {
            v83 = v79;
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            *v84 = 138412290;
            v86 = v78;
            v87 = _swift_stdlib_bridgeErrorToNSError();
            *(v84 + 4) = v87;
            *v85 = v87;
            _os_log_impl(&dword_1B1F9F000, v81, v82, "Error initializing cloud schema: %@", v84, 0xCu);
            sub_1B20985B4(v85, &qword_1EB79F4B0, &qword_1B20B8ED8);
            MEMORY[0x1B2741310](v85, -1, -1);
            MEMORY[0x1B2741310](v84, -1, -1);

            v75 = v83;
          }

          else
          {

            v75 = v79;
          }

          v7 = v98;
        }

        v55(v75, v7);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F530, &qword_1B20B9528);
      return sub_1B20A9B84();
    }
  }

  return result;
}

void sub_1B20835C8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t sub_1B208367C()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

unint64_t sub_1B20836E0(void *a1, void *a2, unint64_t a3)
{
  v84 = a2;
  v86[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1B20A9874();
  v83 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F568, &unk_1B20B9560);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v59 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB79F640, &qword_1B20B8D08);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v59 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v59 - v18;
  type metadata accessor for MTCDAlarm();
  v20 = v85;
  result = sub_1B20A9D44();
  v59 = v20;
  if (!v20)
  {
    v77 = v10;
    v78 = v8;
    v81 = v19;
    v71 = v14;
    v72 = v17;
    v68 = v7;
    v65 = a1;
    v62 = result;
    if (result >> 62)
    {
      goto LABEL_42;
    }

    v22 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v23 = v65;
    v24 = v72;
    v25 = v81;
    if (v22)
    {
      v75 = a3 & 0xFFFFFFFFFFFFFF8;
      if (a3 >> 62)
      {
        v79 = sub_1B20A9DE4();
      }

      else
      {
        v79 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v26 = 0;
      v64 = v62 & 0xC000000000000001;
      v61 = v62 & 0xFFFFFFFFFFFFFF8;
      v60 = v62 + 32;
      v76 = a3 & 0xC000000000000001;
      v85 = (v83 + 56);
      v74 = (v83 + 48);
      v67 = (v83 + 32);
      v70 = (v83 + 8);
      v63 = v22;
      v73 = a3;
      while (1)
      {
        if (v64)
        {
          v27 = MEMORY[0x1B27403C0](v26, v62);
        }

        else
        {
          if (v26 >= *(v61 + 16))
          {
            goto LABEL_41;
          }

          v27 = *(v60 + 8 * v26);
        }

        v80 = v27;
        v28 = __OFADD__(v26, 1);
        v29 = v26 + 1;
        if (v28)
        {
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          v22 = sub_1B20A9DE4();
          goto LABEL_4;
        }

        v66 = v29;
        if (!v79)
        {
          goto LABEL_9;
        }

        v30 = 0;
        while (1)
        {
          if (v76)
          {
            v35 = MEMORY[0x1B27403C0](v30, a3);
          }

          else
          {
            if (v30 >= *(v75 + 16))
            {
              goto LABEL_39;
            }

            v35 = *(a3 + 8 * v30 + 32);
          }

          v36 = v35;
          if (__OFADD__(v30, 1))
          {
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

          v82 = v30 + 1;
          v83 = v30;
          v37 = [v35 alarmID];
          sub_1B20A9864();

          v38 = *v85;
          v39 = 1;
          (*v85)(v25, 0, 1, v5);
          v40 = [v80 mtid];
          v84 = v36;
          if (v40)
          {
            v41 = v40;
            sub_1B20A9864();

            v39 = 0;
          }

          v38(v24, v39, 1, v5);
          v42 = v77;
          v43 = *(v78 + 48);
          v25 = v81;
          sub_1B2063BF8(v81, v77, &unk_1EB79F640, &qword_1B20B8D08);
          sub_1B2063BF8(v24, v42 + v43, &unk_1EB79F640, &qword_1B20B8D08);
          v44 = *v74;
          if ((*v74)(v42, 1, v5) == 1)
          {
            break;
          }

          v45 = v71;
          sub_1B2063BF8(v42, v71, &unk_1EB79F640, &qword_1B20B8D08);
          if (v44(v42 + v43, 1, v5) == 1)
          {
            v46 = v72;
            sub_1B20985B4(v72, &unk_1EB79F640, &qword_1B20B8D08);
            v25 = v81;
            sub_1B20985B4(v81, &unk_1EB79F640, &qword_1B20B8D08);
            v31 = v46;
            (*v70)(v45, v5);
            v33 = v42;
            goto LABEL_18;
          }

          v47 = v68;
          (*v67)(v68, v42 + v43, v5);
          sub_1B20916FC(&qword_1EB79CE98, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
          v69 = sub_1B20A9A54();
          v48 = *v70;
          (*v70)(v47, v5);
          v49 = v72;
          sub_1B20985B4(v72, &unk_1EB79F640, &qword_1B20B8D08);
          v50 = v81;
          sub_1B20985B4(v81, &unk_1EB79F640, &qword_1B20B8D08);
          v51 = v45;
          v24 = v49;
          v25 = v50;
          v48(v51, v5);
          sub_1B20985B4(v42, &unk_1EB79F640, &qword_1B20B8D08);
          v34 = v84;
          if (v69)
          {
            goto LABEL_33;
          }

LABEL_19:

          v30 = v83 + 1;
          a3 = v73;
          if (v82 == v79)
          {
            goto LABEL_9;
          }
        }

        v31 = v24;
        sub_1B20985B4(v24, &unk_1EB79F640, &qword_1B20B8D08);
        sub_1B20985B4(v25, &unk_1EB79F640, &qword_1B20B8D08);
        v32 = v44(v42 + v43, 1, v5) == 1;
        v33 = v42;
        if (!v32)
        {
          break;
        }

        sub_1B20985B4(v42, &unk_1EB79F640, &qword_1B20B8D08);
        v34 = v84;
LABEL_33:
        v52 = v80;
        v53 = MEMORY[0x1E69E7D40];
        (*((*MEMORY[0x1E69E7D40] & *v80) + 0x50))(v34);
        v54 = [v52 sound];
        if (v54)
        {
          v55 = v54;
          v56 = [v34 sound];
          (*((*v53 & *v55) + 0x50))();

          v25 = v81;
        }

        a3 = v73;
LABEL_9:

        v26 = v66;
        v23 = v65;
        if (v66 == v63)
        {
          goto LABEL_35;
        }
      }

LABEL_18:
      sub_1B20985B4(v33, &qword_1EB79F568, &unk_1B20B9560);
      v24 = v31;
      v34 = v84;
      goto LABEL_19;
    }

LABEL_35:

    v86[0] = 0;
    if ([v23 save_])
    {
      return v86[0];
    }

    else
    {
      v57 = v86[0];
      v58 = sub_1B20A9754();

      v59 = v58;
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_1B2083F18(void *a1, uint64_t a2, uint64_t a3)
{
  v242 = a3;
  v266 = *MEMORY[0x1E69E9840];
  v258 = sub_1B20A9874();
  v221 = *(v258 - 8);
  MEMORY[0x1EEE9AC00](v258);
  v244 = v216 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F568, &unk_1B20B9560);
  MEMORY[0x1EEE9AC00](v255);
  v229 = v216 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB79F640, &qword_1B20B8D08);
  v7 = *(v6 - 8);
  v260 = v6;
  v261 = v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v227 = v216 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v226 = v216 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v230 = v216 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v239 = v216 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v247 = v216 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v248 = v216 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v249 = v216 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v216 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = v216 - v25;
  v240 = sub_1B20A98B4();
  v224 = *(v240 - 8);
  v27 = MEMORY[0x1EEE9AC00](v240);
  v29 = v216 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = v216 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = v216 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v37 = v216 - v36;
  v38 = type metadata accessor for MTCDAlarm();
  v238 = a1;
  v39 = v262;
  result = sub_1B20A9D44();
  if (!v39)
  {
    v41 = result;
    v262 = v26;
    v254 = v38;
    v228 = v35;
    v220 = v32;
    v218 = v29;
    v216[1] = 0;
    v42 = sub_1B205E940();
    v43 = *(v224 + 16);
    v236 = v42;
    v44 = v240;
    v237 = v224 + 16;
    v235 = v43;
    (v43)(v37);

    v45 = sub_1B20A9894();
    v46 = sub_1B20A9C74();

    v47 = os_log_type_enabled(v45, v46);
    v48 = v41 >> 62;
    v49 = v41;
    v259 = v41;
    v219 = v41 >> 62;
    if (v47)
    {
      LODWORD(v253) = v46;
      v256 = v45;
      v257 = v37;
      v50 = swift_slowAlloc();
      v252 = swift_slowAlloc();
      v264 = v252;
      v251 = v50;
      *v50 = 136315138;
      if (!v48)
      {
        v51 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_5;
      }

      goto LABEL_143;
    }

    v234 = *(v224 + 8);
    v234(v37, v44);
    v53 = v242;
    v67 = v229;
    v24 = v254;
LABEL_20:
    v75 = v249;
    v217 = v53 >> 62;
    if (!(v53 >> 62))
    {
      v76 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_22;
    }

    while (1)
    {
      v76 = sub_1B20A9DE4();
LABEL_22:
      v77 = v248;
      if (v76)
      {
        v78 = v75;
        v252 = (v49 & 0xFFFFFFFFFFFFFF8);
        if (v219)
        {
          v257 = sub_1B20A9DE4();
        }

        else
        {
          v257 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v75 = 0;
        v233 = v242 & 0xC000000000000001;
        v223 = v242 & 0xFFFFFFFFFFFFFF8;
        v222 = v242 + 32;
        v253 = v49 & 0xC000000000000001;
        v251 = (v221 + 56);
        v250 = (v221 + 48);
        v243 = (v221 + 32);
        v246 = (v221 + 8);
        v232 = v224 + 8;
        *&v66 = 136315138;
        v225 = v66;
        v231 = v76;
        while (1)
        {
          if (v233)
          {
            v81 = MEMORY[0x1B27403C0](v75, v242);
          }

          else
          {
            if (v75 >= *(v223 + 16))
            {
              goto LABEL_138;
            }

            v81 = *(v222 + 8 * v75);
          }

          v82 = v81;
          v83 = __OFADD__(v75++, 1);
          if (v83)
          {
            goto LABEL_136;
          }

          v241 = v75;
          if (!v257)
          {
LABEL_52:
            v110 = objc_allocWithZone(swift_getObjCClassFromMetadata());
            v111 = v238;
            v112 = [v110 initWithContext_];
            v113 = MEMORY[0x1E69E7D40];
            (*((*MEMORY[0x1E69E7D40] & *v112) + 0x50))(v82);
            type metadata accessor for MTCDSound();
            v114 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
            v115 = [v82 sound];
            (*((*v113 & *v114) + 0x50))();

            v262 = v112;
            [v112 setSound_];
            v116 = v228;
            v117 = v240;
            v235(v228, v236, v240);
            v118 = v82;
            v119 = sub_1B20A9894();
            v120 = sub_1B20A9C74();

            if (os_log_type_enabled(v119, v120))
            {
              v121 = swift_slowAlloc();
              v261 = swift_slowAlloc();
              v264 = v261;
              *v121 = v225;
              v122 = [v118 alarmIDString];
              v256 = sub_1B20A9A74();
              LODWORD(v260) = v120;
              v124 = v123;

              v125 = sub_1B2061574(v256, v124, &v264);

              *(v121 + 4) = v125;
              _os_log_impl(&dword_1B1F9F000, v119, v260, "Added new sleep alarm: %s", v121, 0xCu);
              v126 = v261;
              __swift_destroy_boxed_opaque_existential_0(v261);
              MEMORY[0x1B2741310](v126, -1, -1);
              MEMORY[0x1B2741310](v121, -1, -1);

              v79 = v116;
              v80 = v240;
            }

            else
            {

              v79 = v116;
              v80 = v117;
            }

            v234(v79, v80);
            v78 = v249;
            v77 = v248;
            v67 = v229;
            goto LABEL_28;
          }

          v84 = 0;
          v256 = v81;
          while (1)
          {
            if (v253)
            {
              v87 = MEMORY[0x1B27403C0](v84, v49);
            }

            else
            {
              if (v84 >= *(v252 + 2))
              {
                goto LABEL_132;
              }

              v87 = *(v49 + 8 * v84 + 32);
            }

            v75 = v87;
            if (__OFADD__(v84, 1))
            {
              __break(1u);
LABEL_132:
              __break(1u);
              goto LABEL_133;
            }

            v260 = (v84 + 1);
            v261 = v84;
            v88 = [v87 mtid];
            v262 = v75;
            if (v88)
            {
              v89 = v88;
              sub_1B20A9864();

              v90 = 0;
            }

            else
            {
              v90 = 1;
            }

            v91 = *v251;
            v92 = v258;
            (*v251)(v78, v90, 1, v258);
            v93 = [v82 alarmID];
            sub_1B20A9864();

            v91(v77, 0, 1, v92);
            v94 = *(v255 + 48);
            sub_1B2063BF8(v78, v67, &unk_1EB79F640, &qword_1B20B8D08);
            sub_1B2063BF8(v77, v67 + v94, &unk_1EB79F640, &qword_1B20B8D08);
            v95 = *v250;
            v96 = v92;
            if ((*v250)(v67, 1, v92) == 1)
            {
              break;
            }

            v97 = v247;
            sub_1B2063BF8(v67, v247, &unk_1EB79F640, &qword_1B20B8D08);
            v98 = v92;
            v99 = v95(v67 + v94, 1, v92);
            v49 = v259;
            v75 = v262;
            if (v99 == 1)
            {
              v100 = v97;
              v101 = v248;
              sub_1B20985B4(v248, &unk_1EB79F640, &qword_1B20B8D08);
              v102 = v249;
              sub_1B20985B4(v249, &unk_1EB79F640, &qword_1B20B8D08);
              v103 = v100;
              v85 = v102;
              v77 = v101;
              (*v246)(v103, v96);
              v82 = v256;
              goto LABEL_37;
            }

            v104 = v244;
            (*v243)(v244, v67 + v94, v96);
            sub_1B20916FC(&qword_1EB79CE98, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
            LODWORD(v245) = sub_1B20A9A54();
            v105 = *v246;
            (*v246)(v104, v96);
            v106 = v97;
            v107 = v248;
            sub_1B20985B4(v248, &unk_1EB79F640, &qword_1B20B8D08);
            v108 = v249;
            sub_1B20985B4(v249, &unk_1EB79F640, &qword_1B20B8D08);
            v109 = v108;
            v77 = v107;
            v78 = v109;
            v105(v106, v98);
            v49 = v259;
            sub_1B20985B4(v67, &unk_1EB79F640, &qword_1B20B8D08);
            v24 = v254;
            v82 = v256;
            if (v245)
            {
              goto LABEL_55;
            }

LABEL_38:

            v84 = (v261 + 1);
            if (v260 == v257)
            {
              goto LABEL_52;
            }
          }

          sub_1B20985B4(v77, &unk_1EB79F640, &qword_1B20B8D08);
          v85 = v78;
          sub_1B20985B4(v78, &unk_1EB79F640, &qword_1B20B8D08);
          v86 = v95(v67 + v94, 1, v96);
          v49 = v259;
          v82 = v256;
          if (v86 != 1)
          {
            break;
          }

          sub_1B20985B4(v67, &unk_1EB79F640, &qword_1B20B8D08);
          v24 = v254;
          v75 = v262;
LABEL_55:
          v127 = MEMORY[0x1E69E7D40];
          (*((*MEMORY[0x1E69E7D40] & *v75) + 0x50))(v82);
          v128 = [v75 sound];
          if (v128)
          {
            v129 = v128;
            v130 = [v82 sound];
            (*((*v127 & *v129) + 0x50))();
          }

          v131 = v220;
          v132 = v240;
          v235(v220, v236, v240);
          v133 = v82;
          v134 = sub_1B20A9894();
          v135 = sub_1B20A9C74();

          if (os_log_type_enabled(v134, v135))
          {
            v136 = swift_slowAlloc();
            v260 = v136;
            v261 = swift_slowAlloc();
            v264 = v261;
            *v136 = v225;
            v137 = [v133 alarmIDString];
            v256 = v134;
            v138 = v135;
            v139 = v137;
            v245 = sub_1B20A9A74();
            v141 = v140;

            v142 = sub_1B2061574(v245, v141, &v264);

            v143 = v260;
            *(v260 + 4) = v142;
            v144 = v256;
            v145 = v143;
            _os_log_impl(&dword_1B1F9F000, v256, v138, "Updated sleep alarm: %s", v143, 0xCu);
            v146 = v261;
            __swift_destroy_boxed_opaque_existential_0(v261);
            MEMORY[0x1B2741310](v146, -1, -1);
            MEMORY[0x1B2741310](v145, -1, -1);

            v147 = v131;
            v148 = v240;
          }

          else
          {

            v147 = v131;
            v148 = v132;
          }

          v234(v147, v148);
          v78 = v249;
LABEL_28:
          v75 = v241;
          if (v241 == v231)
          {
            goto LABEL_61;
          }
        }

LABEL_37:
        sub_1B20985B4(v67, &qword_1EB79F568, &unk_1B20B9560);
        v24 = v254;
        v78 = v85;
        v75 = v262;
        goto LABEL_38;
      }

LABEL_61:
      v149 = v242;
      if (v217)
      {
        v49 = sub_1B20A9DE4();
      }

      else
      {
        v49 = *((v242 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v150 = v258;
      v67 = v230;
      v151 = v221;
      v152 = MEMORY[0x1E69E7CC0];
      v153 = v219;
      if (v49)
      {
        v264 = MEMORY[0x1E69E7CC0];
        sub_1B2091C38(0, v49 & ~(v49 >> 63), 0);
        if (v49 < 0)
        {
          __break(1u);
LABEL_143:
          v51 = sub_1B20A9DE4();
LABEL_5:
          v52 = v224;
          v53 = v242;
          v55 = v261;
          v54 = v262;
          v56 = MEMORY[0x1E69E7CC0];
          if (v51)
          {
            v265 = MEMORY[0x1E69E7CC0];
            sub_1B2091C78(0, v51 & ~(v51 >> 63), 0);
            if (v51 < 0)
            {
              __break(1u);
            }

            v57 = 0;
            v56 = v265;
            v262 = (v49 & 0xC000000000000001);
            v58 = (v221 + 56);
            do
            {
              if (v262)
              {
                v59 = MEMORY[0x1B27403C0](v57, v259);
              }

              else
              {
                v59 = *(v259 + 8 * v57 + 32);
              }

              v60 = v59;
              v61 = [v59 mtid];
              if (v61)
              {
                v62 = v61;
                sub_1B20A9864();

                v63 = 0;
              }

              else
              {
                v63 = 1;
              }

              (*v58)(v24, v63, 1, v258);
              sub_1B20600E0(v24, v54);
              v265 = v56;
              v65 = *(v56 + 16);
              v64 = *(v56 + 24);
              if (v65 >= v64 >> 1)
              {
                sub_1B2091C78((v64 > 1), v65 + 1, 1);
                v56 = v265;
              }

              ++v57;
              *(v56 + 16) = v65 + 1;
              sub_1B20600E0(v54, v56 + ((v55[80] + 32) & ~v55[80]) + *(v55 + 9) * v65);
            }

            while (v51 != v57);
            v49 = v259;
            v52 = v224;
            v53 = v242;
          }

          v68 = MEMORY[0x1B2740030](v56, v260);
          v70 = v69;

          v71 = sub_1B2061574(v68, v70, &v264);

          v72 = v251;
          *(v251 + 1) = v71;
          v73 = v256;
          _os_log_impl(&dword_1B1F9F000, v256, v253, "Fetched existing sleep alarms: %s", v72, 0xCu);
          v74 = v252;
          __swift_destroy_boxed_opaque_existential_0(v252);
          MEMORY[0x1B2741310](v74, -1, -1);
          MEMORY[0x1B2741310](v72, -1, -1);

          v234 = *(v52 + 8);
          v234(v257, v240);
          v24 = v254;
          v67 = v229;
          goto LABEL_20;
        }

        v154 = 0;
        v152 = v264;
        v155 = v149;
        v156 = v149 & 0xC000000000000001;
        do
        {
          if (v156)
          {
            v157 = MEMORY[0x1B27403C0](v154, v155);
          }

          else
          {
            v157 = *(v155 + 8 * v154 + 32);
          }

          v158 = v157;
          v159 = [v157 alarmIDString];
          v160 = sub_1B20A9A74();
          v162 = v161;

          v264 = v152;
          v24 = *(v152 + 2);
          v163 = *(v152 + 3);
          if (v24 >= v163 >> 1)
          {
            sub_1B2091C38((v163 > 1), v24 + 1, 1);
            v152 = v264;
          }

          ++v154;
          *(v152 + 2) = v24 + 1;
          v164 = &v152[16 * v24];
          *(v164 + 4) = v160;
          *(v164 + 5) = v162;
          v155 = v242;
        }

        while (v49 != v154);
        v150 = v258;
        v67 = v230;
        v151 = v221;
        v153 = v219;
      }

      v165 = sub_1B20967B0(v152);

      v49 = v238;
      v253 = v165;
      v166 = v259;
      v257 = v259 & 0xFFFFFFFFFFFFFF8;
      v167 = v153 ? sub_1B20A9DE4() : *((v259 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v261 = &v151[7];
      v262 = (v166 & 0xC000000000000001);
      v168 = v151 + 6;
      v256 = v151 + 2;
      v255 = &v151[1];
      v260 = v167;
      if (!v167)
      {
        break;
      }

      v75 = 0;
      v254 = MEMORY[0x1E69E7CC0];
      v169 = v239;
LABEL_78:
      v170 = v75;
      while (1)
      {
        if (v262)
        {
          v171 = MEMORY[0x1B27403C0](v170, v259);
        }

        else
        {
          if (v170 >= *(v257 + 16))
          {
            goto LABEL_134;
          }

          v171 = *(v259 + 8 * v170 + 32);
        }

        v24 = v171;
        v75 = v170 + 1;
        if (__OFADD__(v170, 1))
        {
          break;
        }

        v172 = [v171 mtid];
        if (v172)
        {
          v173 = v172;
          sub_1B20A9864();

          v67 = v230;
          v150 = v258;
          v174 = 0;
        }

        else
        {
          v174 = 1;
        }

        (*v261)(v67, v174, 1, v150);
        sub_1B20600E0(v67, v169);
        if (!(v168->isa)(v169, 1, v150))
        {
          v175 = v244;
          (v256->isa)(v244, v169, v150);
          sub_1B20985B4(v169, &unk_1EB79F640, &qword_1B20B8D08);
          v176 = sub_1B20A9844();
          v178 = v177;

          (*v255)(v175, v150);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v254 = sub_1B2091318(0, *(v254 + 2) + 1, 1, v254);
          }

          v179 = v260;
          v181 = *(v254 + 2);
          v180 = *(v254 + 3);
          v24 = v181 + 1;
          if (v181 >= v180 >> 1)
          {
            v254 = sub_1B2091318((v180 > 1), v181 + 1, 1, v254);
          }

          v182 = v254;
          *(v254 + 2) = v24;
          v183 = &v182[16 * v181];
          *(v183 + 4) = v176;
          *(v183 + 5) = v178;
          v213 = v75 == v179;
          v49 = v238;
          v150 = v258;
          v67 = v230;
          if (v213)
          {
            goto LABEL_98;
          }

          goto LABEL_78;
        }

        sub_1B20985B4(v169, &unk_1EB79F640, &qword_1B20B8D08);
        ++v170;
        if (v75 == v260)
        {
          goto LABEL_98;
        }
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
      __break(1u);
LABEL_138:
      __break(1u);
    }

    v254 = MEMORY[0x1E69E7CC0];
LABEL_98:
    v184 = sub_1B20967B0(v254);

    v263 = v184;
    sub_1B20923C0(v253);

    v185 = v218;
    v186 = v240;
    v235(v218, v236, v240);
    v187 = sub_1B20A9894();
    v188 = sub_1B20A9C74();
    if (os_log_type_enabled(v187, v188))
    {
      v189 = swift_slowAlloc();
      v254 = swift_slowAlloc();
      v264 = v254;
      *v189 = 136315138;
      swift_beginAccess();

      v190 = sub_1B20A9C44();
      v192 = v191;

      v193 = sub_1B2061574(v190, v192, &v264);
      v150 = v258;

      *(v189 + 4) = v193;
      _os_log_impl(&dword_1B1F9F000, v187, v188, "Sleep alarms to remove: %s", v189, 0xCu);
      v194 = v254;
      __swift_destroy_boxed_opaque_existential_0(v254);
      MEMORY[0x1B2741310](v194, -1, -1);
      MEMORY[0x1B2741310](v189, -1, -1);

      v195 = v218;
      v196 = v240;
    }

    else
    {

      v195 = v185;
      v196 = v186;
    }

    v234(v195, v196);
    v24 = v227;
    v67 = v226;
    v197 = v260;
    if (v260)
    {
      v254 = (v259 + 32);
      swift_beginAccess();
      v75 = 0;
      while (1)
      {
        while (1)
        {
          if (v262)
          {
            v198 = MEMORY[0x1B27403C0](v75, v259);
          }

          else
          {
            if (v75 >= *(v257 + 16))
            {
              goto LABEL_137;
            }

            v198 = *&v254[8 * v75];
          }

          v199 = v198;
          v83 = __OFADD__(v75++, 1);
          if (v83)
          {
            goto LABEL_135;
          }

          v200 = [v198 mtid];
          if (v200)
          {
            v201 = v200;
            sub_1B20A9864();

            v202 = 0;
          }

          else
          {
            v202 = 1;
          }

          (*v261)(v24, v202, 1, v150);
          sub_1B20600E0(v24, v67);
          if (!(v168->isa)(v67, 1, v150))
          {
            break;
          }

          sub_1B20985B4(v67, &unk_1EB79F640, &qword_1B20B8D08);
          if (v75 == v197)
          {
            goto LABEL_127;
          }
        }

        v203 = v244;
        (v256->isa)(v244, v67, v150);
        sub_1B20985B4(v67, &unk_1EB79F640, &qword_1B20B8D08);
        v204 = sub_1B20A9844();
        v206 = v205;
        (*v255)(v203, v150);
        v207 = v263;
        if (!*(v263 + 16))
        {
          break;
        }

        sub_1B20AA004();

        sub_1B20A9AA4();
        v208 = sub_1B20AA024();
        v209 = -1 << *(v207 + 32);
        v210 = v208 & ~v209;
        if ((*(v207 + 56 + ((v210 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v210))
        {
          v211 = ~v209;
          while (1)
          {
            v212 = (*(v207 + 48) + 16 * v210);
            v213 = *v212 == v204 && v212[1] == v206;
            if (v213 || (sub_1B20A9F84() & 1) != 0)
            {
              break;
            }

            v210 = (v210 + 1) & v211;
            if (((*(v207 + 56 + ((v210 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v210) & 1) == 0)
            {
              goto LABEL_122;
            }
          }

          v49 = v238;
          [v238 deleteObject_];
          goto LABEL_125;
        }

LABEL_122:

        v49 = v238;
LABEL_126:
        v150 = v258;
        v24 = v227;
        v67 = v226;
        v197 = v260;
        if (v75 == v260)
        {
          goto LABEL_127;
        }
      }

LABEL_125:

      goto LABEL_126;
    }

LABEL_127:

    v264 = 0;
    if ([v49 save_])
    {
      v214 = v264;
    }

    else
    {
      v215 = v264;
      sub_1B20A9754();

      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1B2085BA8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B2085BC8, v1, 0);
}

uint64_t sub_1B2085BC8()
{
  v1 = v0[3];
  v2 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v3 = sub_1B20A9A64();
  v4 = [v2 initWithEntityName_];
  v0[5] = v4;

  [v4 setPredicate_];
  v5 = swift_allocObject();
  v0[6] = v5;
  *(v5 + 16) = v4;
  v6 = v4;
  v7 = swift_task_alloc();
  v0[7] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4D8, &qword_1B20B8FB0);
  *v7 = v0;
  v7[1] = sub_1B2085D2C;

  return MEMORY[0x1EEDB64B8](v0 + 2, sub_1B2095FB8, v5, v8);
}

uint64_t sub_1B2085D2C()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_1B2085EBC;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1B2085E54;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B2085E54()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1B2085EBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B2085F28()
{
  v1[2] = v0;
  v2 = sub_1B20A9D34();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2085FE8, v0, 0);
}

uint64_t sub_1B2085FE8()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for MTCDAlarm();
  v6 = (*(v5 + 96))();
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

unint64_t sub_1B2086194(void *a1, void *a2, unint64_t a3)
{
  v84 = a2;
  v86[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1B20A9874();
  v83 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F568, &unk_1B20B9560);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v59 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB79F640, &qword_1B20B8D08);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v59 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v59 - v18;
  type metadata accessor for MTCDTimer();
  v20 = v85;
  result = sub_1B20A9D44();
  v59 = v20;
  if (!v20)
  {
    v77 = v10;
    v78 = v8;
    v81 = v19;
    v71 = v14;
    v72 = v17;
    v68 = v7;
    v65 = a1;
    v62 = result;
    if (result >> 62)
    {
      goto LABEL_42;
    }

    v22 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v23 = v65;
    v24 = v72;
    v25 = v81;
    if (v22)
    {
      v75 = a3 & 0xFFFFFFFFFFFFFF8;
      if (a3 >> 62)
      {
        v79 = sub_1B20A9DE4();
      }

      else
      {
        v79 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v26 = 0;
      v64 = v62 & 0xC000000000000001;
      v61 = v62 & 0xFFFFFFFFFFFFFF8;
      v60 = v62 + 32;
      v76 = a3 & 0xC000000000000001;
      v85 = (v83 + 56);
      v74 = (v83 + 48);
      v67 = (v83 + 32);
      v70 = (v83 + 8);
      v63 = v22;
      v73 = a3;
      while (1)
      {
        if (v64)
        {
          v27 = MEMORY[0x1B27403C0](v26, v62);
        }

        else
        {
          if (v26 >= *(v61 + 16))
          {
            goto LABEL_41;
          }

          v27 = *(v60 + 8 * v26);
        }

        v80 = v27;
        v28 = __OFADD__(v26, 1);
        v29 = v26 + 1;
        if (v28)
        {
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          v22 = sub_1B20A9DE4();
          goto LABEL_4;
        }

        v66 = v29;
        if (!v79)
        {
          goto LABEL_9;
        }

        v30 = 0;
        while (1)
        {
          if (v76)
          {
            v35 = MEMORY[0x1B27403C0](v30, a3);
          }

          else
          {
            if (v30 >= *(v75 + 16))
            {
              goto LABEL_39;
            }

            v35 = *(a3 + 8 * v30 + 32);
          }

          v36 = v35;
          if (__OFADD__(v30, 1))
          {
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

          v82 = v30 + 1;
          v83 = v30;
          v37 = [v35 timerID];
          sub_1B20A9864();

          v38 = *v85;
          v39 = 1;
          (*v85)(v25, 0, 1, v5);
          v40 = [v80 mtid];
          v84 = v36;
          if (v40)
          {
            v41 = v40;
            sub_1B20A9864();

            v39 = 0;
          }

          v38(v24, v39, 1, v5);
          v42 = v77;
          v43 = *(v78 + 48);
          v25 = v81;
          sub_1B2063BF8(v81, v77, &unk_1EB79F640, &qword_1B20B8D08);
          sub_1B2063BF8(v24, v42 + v43, &unk_1EB79F640, &qword_1B20B8D08);
          v44 = *v74;
          if ((*v74)(v42, 1, v5) == 1)
          {
            break;
          }

          v45 = v71;
          sub_1B2063BF8(v42, v71, &unk_1EB79F640, &qword_1B20B8D08);
          if (v44(v42 + v43, 1, v5) == 1)
          {
            v46 = v72;
            sub_1B20985B4(v72, &unk_1EB79F640, &qword_1B20B8D08);
            v25 = v81;
            sub_1B20985B4(v81, &unk_1EB79F640, &qword_1B20B8D08);
            v31 = v46;
            (*v70)(v45, v5);
            v33 = v42;
            goto LABEL_18;
          }

          v47 = v68;
          (*v67)(v68, v42 + v43, v5);
          sub_1B20916FC(&qword_1EB79CE98, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
          v69 = sub_1B20A9A54();
          v48 = *v70;
          (*v70)(v47, v5);
          v49 = v72;
          sub_1B20985B4(v72, &unk_1EB79F640, &qword_1B20B8D08);
          v50 = v81;
          sub_1B20985B4(v81, &unk_1EB79F640, &qword_1B20B8D08);
          v51 = v45;
          v24 = v49;
          v25 = v50;
          v48(v51, v5);
          sub_1B20985B4(v42, &unk_1EB79F640, &qword_1B20B8D08);
          v34 = v84;
          if (v69)
          {
            goto LABEL_33;
          }

LABEL_19:

          v30 = v83 + 1;
          a3 = v73;
          if (v82 == v79)
          {
            goto LABEL_9;
          }
        }

        v31 = v24;
        sub_1B20985B4(v24, &unk_1EB79F640, &qword_1B20B8D08);
        sub_1B20985B4(v25, &unk_1EB79F640, &qword_1B20B8D08);
        v32 = v44(v42 + v43, 1, v5) == 1;
        v33 = v42;
        if (!v32)
        {
          break;
        }

        sub_1B20985B4(v42, &unk_1EB79F640, &qword_1B20B8D08);
        v34 = v84;
LABEL_33:
        v52 = v80;
        v53 = MEMORY[0x1E69E7D40];
        (*((*MEMORY[0x1E69E7D40] & *v80) + 0x50))(v34);
        v54 = [v52 sound];
        if (v54)
        {
          v55 = v54;
          v56 = [v34 sound];
          (*((*v53 & *v55) + 0x50))();

          v25 = v81;
        }

        a3 = v73;
LABEL_9:

        v26 = v66;
        v23 = v65;
        if (v66 == v63)
        {
          goto LABEL_35;
        }
      }

LABEL_18:
      sub_1B20985B4(v33, &qword_1EB79F568, &unk_1B20B9560);
      v24 = v31;
      v34 = v84;
      goto LABEL_19;
    }

LABEL_35:

    v86[0] = 0;
    if ([v23 save_])
    {
      return v86[0];
    }

    else
    {
      v57 = v86[0];
      v58 = sub_1B20A9754();

      v59 = v58;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1B20869CC(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B20869EC, v1, 0);
}

uint64_t sub_1B20869EC()
{
  v1 = v0[3];
  v2 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v3 = sub_1B20A9A64();
  v4 = [v2 initWithEntityName_];
  v0[5] = v4;

  [v4 setPredicate_];
  v5 = swift_allocObject();
  v0[6] = v5;
  *(v5 + 16) = v4;
  v6 = v4;
  v7 = swift_task_alloc();
  v0[7] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4E8, &qword_1B20B9080);
  *v7 = v0;
  v7[1] = sub_1B2086B50;

  return MEMORY[0x1EEDB64B8](v0 + 2, sub_1B2095FE4, v5, v8);
}

uint64_t sub_1B2086B50()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_1B2098898;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1B20988A0;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B2086C78(char a1)
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

  return MEMORY[0x1EEE6DFA0](sub_1B2086D70, v5, v4);
}

uint64_t sub_1B2086D70()
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
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F508, &qword_1B20B9178);
  *v7 = v0;
  v7[1] = sub_1B2086ED4;
  v9 = *(v0 + 48);

  return MEMORY[0x1EEDB6538](v0 + 16, v9, sub_1B209606C, v6, v8);
}

uint64_t sub_1B2086ED4()
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
    v9 = sub_1B20870A8;
  }

  else
  {
    v9 = sub_1B2070678;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1B20870A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B208714C(unsigned __int8 a1)
{
  sub_1B20AA004();
  MEMORY[0x1B2740530](a1);
  return sub_1B20AA024();
}

uint64_t sub_1B20871A8()
{
  v1 = *v0;
  sub_1B20AA004();
  MEMORY[0x1B2740530](v1);
  return sub_1B20AA024();
}

uint64_t sub_1B208721C(uint64_t a1)
{
  v2 = *v1;
  sub_1B20AA004();
  MEMORY[0x1B2740530](v2);
  return sub_1B20AA024();
}

uint64_t MTCDDataStore.addAKCAlarms(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v9 = v3;

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

uint64_t sub_1B208737C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_1B20A98B4();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B208744C, 0, 0);
}

char *sub_1B208744C()
{
  v46 = v0;
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 104) = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    v4[1] = sub_1B208781C;
    v5 = *(v0 + 48);

    return sub_1B2087FA4(v5);
  }

  else
  {
    v7 = *(v0 + 96);
    v8 = *(v0 + 72);
    v9 = *(v0 + 80);
    v10 = sub_1B205E940();
    (*(v9 + 16))(v7, v10, v8);

    v11 = sub_1B20A9894();
    v12 = sub_1B20A9C74();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 48);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v44 = v15;
      *v14 = 136315138;
      v41 = v12;
      if (v13 >> 62)
      {
        v16 = sub_1B20A9DE4();
      }

      else
      {
        v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v17 = MEMORY[0x1E69E7CC0];
      log = v11;
      if (v16)
      {
        v39 = v15;
        v40 = v14;
        v45 = MEMORY[0x1E69E7CC0];
        result = sub_1B2091C38(0, v16 & ~(v16 >> 63), 0);
        if (v16 < 0)
        {
          __break(1u);
          return result;
        }

        v18 = 0;
        v17 = v45;
        v43 = *(v0 + 48) + 32;
        do
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x1B27403C0](v18, *(v0 + 48));
          }

          else
          {
            v19 = *(v43 + 8 * v18);
          }

          v20 = v19;
          v21 = [v19 identifier];
          v22 = sub_1B20A9A74();
          v24 = v23;

          v45 = v17;
          v26 = *(v17 + 16);
          v25 = *(v17 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_1B2091C38((v25 > 1), v26 + 1, 1);
            v17 = v45;
          }

          ++v18;
          *(v17 + 16) = v26 + 1;
          v27 = v17 + 16 * v26;
          *(v27 + 32) = v22;
          *(v27 + 40) = v24;
        }

        while (v16 != v18);
        v15 = v39;
        v14 = v40;
      }

      v31 = *(v0 + 96);
      v33 = *(v0 + 72);
      v32 = *(v0 + 80);
      v34 = MEMORY[0x1B2740030](v17, MEMORY[0x1E69E6158]);
      v36 = v35;

      v37 = sub_1B2061574(v34, v36, &v44);

      *(v14 + 4) = v37;
      _os_log_impl(&dword_1B1F9F000, log, v41, "Saved alarmkit alarms into core data: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1B2741310](v15, -1, -1);
      MEMORY[0x1B2741310](v14, -1, -1);

      (*(v32 + 8))(v31, v33);
    }

    else
    {
      v28 = *(v0 + 96);
      v30 = *(v0 + 72);
      v29 = *(v0 + 80);

      (*(v29 + 8))(v28, v30);
    }

    (*(v0 + 56))(0);

    v38 = *(v0 + 8);

    return v38();
  }
}

uint64_t sub_1B208781C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1B2087C5C;
  }

  else
  {

    v2 = sub_1B2087938;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

char *sub_1B2087938()
{
  v41 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = sub_1B205E940();
  (*(v3 + 16))(v1, v4, v2);

  v5 = sub_1B20A9894();
  v6 = sub_1B20A9C74();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 48);
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
    log = v5;
    v36 = v6;
    v35 = v9;
    if (v10)
    {
      v40 = MEMORY[0x1E69E7CC0];
      result = sub_1B2091C38(0, v10 & ~(v10 >> 63), 0);
      if (v10 < 0)
      {
        __break(1u);
        return result;
      }

      v34 = v8;
      v13 = 0;
      v11 = v40;
      v38 = *(v0 + 48) + 32;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1B27403C0](v13, *(v0 + 48));
        }

        else
        {
          v14 = *(v38 + 8 * v13);
        }

        v15 = v14;
        v16 = [v14 identifier];
        v17 = sub_1B20A9A74();
        v19 = v18;

        v40 = v11;
        v21 = *(v11 + 16);
        v20 = *(v11 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1B2091C38((v20 > 1), v21 + 1, 1);
          v11 = v40;
        }

        ++v13;
        *(v11 + 16) = v21 + 1;
        v22 = v11 + 16 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
      }

      while (v10 != v13);
      v8 = v34;
    }

    v26 = *(v0 + 96);
    v28 = *(v0 + 72);
    v27 = *(v0 + 80);
    v29 = MEMORY[0x1B2740030](v11, MEMORY[0x1E69E6158]);
    v31 = v30;

    v32 = sub_1B2061574(v29, v31, &v39);

    *(v8 + 4) = v32;
    _os_log_impl(&dword_1B1F9F000, log, v36, "Saved alarmkit alarms into core data: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x1B2741310](v35, -1, -1);
    MEMORY[0x1B2741310](v8, -1, -1);

    (*(v27 + 8))(v26, v28);
  }

  else
  {
    v23 = *(v0 + 96);
    v25 = *(v0 + 72);
    v24 = *(v0 + 80);

    (*(v24 + 8))(v23, v25);
  }

  (*(v0 + 56))(0);

  v33 = *(v0 + 8);

  return v33();
}

char *sub_1B2087C5C()
{
  v44 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  v4 = sub_1B205E940();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_1B20A9894();
  v6 = sub_1B20A9C84();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v42 = v9;
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
    v39 = v6;
    v38 = v9;
    if (v10)
    {
      v43 = MEMORY[0x1E69E7CC0];
      result = sub_1B2091C38(0, v10 & ~(v10 >> 63), 0);
      if (v10 < 0)
      {
        __break(1u);
        return result;
      }

      v37 = v8;
      v13 = 0;
      v11 = v43;
      v41 = v0[6] + 32;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1B27403C0](v13, v0[6]);
        }

        else
        {
          v14 = *(v41 + 8 * v13);
        }

        v15 = v14;
        v16 = [v14 identifier];
        v17 = sub_1B20A9A74();
        v19 = v18;

        v43 = v11;
        v21 = *(v11 + 16);
        v20 = *(v11 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1B2091C38((v20 > 1), v21 + 1, 1);
          v11 = v43;
        }

        ++v13;
        *(v11 + 16) = v21 + 1;
        v22 = v11 + 16 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
      }

      while (v10 != v13);
      v8 = v37;
    }

    v26 = v0[10];
    v27 = v0[11];
    v28 = v0[9];
    v29 = MEMORY[0x1B2740030](v11, MEMORY[0x1E69E6158]);
    v31 = v30;

    v32 = sub_1B2061574(v29, v31, &v42);

    *(v8 + 4) = v32;
    _os_log_impl(&dword_1B1F9F000, log, v39, "Failed to save alarmkit alarms into core data: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x1B2741310](v38, -1, -1);
    MEMORY[0x1B2741310](v8, -1, -1);

    (*(v26 + 8))(v27, v28);
  }

  else
  {
    v23 = v0[10];
    v24 = v0[11];
    v25 = v0[9];

    (*(v23 + 8))(v24, v25);
  }

  v33 = v0[15];
  v34 = v0[7];
  v35 = v33;
  v34(v33);

  v36 = v0[1];

  return v36();
}

uint64_t sub_1B2087FA4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B20A9D34();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2088064, v1, 0);
}

uint64_t sub_1B2088064()
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

  return MEMORY[0x1EEDB6538](v7, v8, sub_1B20964A4, v6, v9);
}

uint64_t MTCDDataStore.updateAKCAlarms(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v9 = v3;

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

uint64_t sub_1B20882F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_1B20A98B4();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B20883C4, 0, 0);
}

char *sub_1B20883C4()
{
  v46 = v0;
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 104) = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    v4[1] = sub_1B2088794;
    v5 = *(v0 + 48);

    return sub_1B2088F1C(v5);
  }

  else
  {
    v7 = *(v0 + 96);
    v8 = *(v0 + 72);
    v9 = *(v0 + 80);
    v10 = sub_1B205E940();
    (*(v9 + 16))(v7, v10, v8);

    v11 = sub_1B20A9894();
    v12 = sub_1B20A9C74();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 48);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v44 = v15;
      *v14 = 136315138;
      v41 = v12;
      if (v13 >> 62)
      {
        v16 = sub_1B20A9DE4();
      }

      else
      {
        v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v17 = MEMORY[0x1E69E7CC0];
      log = v11;
      if (v16)
      {
        v39 = v15;
        v40 = v14;
        v45 = MEMORY[0x1E69E7CC0];
        result = sub_1B2091C38(0, v16 & ~(v16 >> 63), 0);
        if (v16 < 0)
        {
          __break(1u);
          return result;
        }

        v18 = 0;
        v17 = v45;
        v43 = *(v0 + 48) + 32;
        do
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x1B27403C0](v18, *(v0 + 48));
          }

          else
          {
            v19 = *(v43 + 8 * v18);
          }

          v20 = v19;
          v21 = [v19 identifier];
          v22 = sub_1B20A9A74();
          v24 = v23;

          v45 = v17;
          v26 = *(v17 + 16);
          v25 = *(v17 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_1B2091C38((v25 > 1), v26 + 1, 1);
            v17 = v45;
          }

          ++v18;
          *(v17 + 16) = v26 + 1;
          v27 = v17 + 16 * v26;
          *(v27 + 32) = v22;
          *(v27 + 40) = v24;
        }

        while (v16 != v18);
        v15 = v39;
        v14 = v40;
      }

      v31 = *(v0 + 96);
      v33 = *(v0 + 72);
      v32 = *(v0 + 80);
      v34 = MEMORY[0x1B2740030](v17, MEMORY[0x1E69E6158]);
      v36 = v35;

      v37 = sub_1B2061574(v34, v36, &v44);

      *(v14 + 4) = v37;
      _os_log_impl(&dword_1B1F9F000, log, v41, "Updated alarmkit alarms in core data: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1B2741310](v15, -1, -1);
      MEMORY[0x1B2741310](v14, -1, -1);

      (*(v32 + 8))(v31, v33);
    }

    else
    {
      v28 = *(v0 + 96);
      v30 = *(v0 + 72);
      v29 = *(v0 + 80);

      (*(v29 + 8))(v28, v30);
    }

    (*(v0 + 56))(0);

    v38 = *(v0 + 8);

    return v38();
  }
}

uint64_t sub_1B2088794()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1B2088BD4;
  }

  else
  {

    v2 = sub_1B20888B0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

char *sub_1B20888B0()
{
  v41 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = sub_1B205E940();
  (*(v3 + 16))(v1, v4, v2);

  v5 = sub_1B20A9894();
  v6 = sub_1B20A9C74();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 48);
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
    log = v5;
    v36 = v6;
    v35 = v9;
    if (v10)
    {
      v40 = MEMORY[0x1E69E7CC0];
      result = sub_1B2091C38(0, v10 & ~(v10 >> 63), 0);
      if (v10 < 0)
      {
        __break(1u);
        return result;
      }

      v34 = v8;
      v13 = 0;
      v11 = v40;
      v38 = *(v0 + 48) + 32;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1B27403C0](v13, *(v0 + 48));
        }

        else
        {
          v14 = *(v38 + 8 * v13);
        }

        v15 = v14;
        v16 = [v14 identifier];
        v17 = sub_1B20A9A74();
        v19 = v18;

        v40 = v11;
        v21 = *(v11 + 16);
        v20 = *(v11 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1B2091C38((v20 > 1), v21 + 1, 1);
          v11 = v40;
        }

        ++v13;
        *(v11 + 16) = v21 + 1;
        v22 = v11 + 16 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
      }

      while (v10 != v13);
      v8 = v34;
    }

    v26 = *(v0 + 96);
    v28 = *(v0 + 72);
    v27 = *(v0 + 80);
    v29 = MEMORY[0x1B2740030](v11, MEMORY[0x1E69E6158]);
    v31 = v30;

    v32 = sub_1B2061574(v29, v31, &v39);

    *(v8 + 4) = v32;
    _os_log_impl(&dword_1B1F9F000, log, v36, "Updated alarmkit alarms in core data: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x1B2741310](v35, -1, -1);
    MEMORY[0x1B2741310](v8, -1, -1);

    (*(v27 + 8))(v26, v28);
  }

  else
  {
    v23 = *(v0 + 96);
    v25 = *(v0 + 72);
    v24 = *(v0 + 80);

    (*(v24 + 8))(v23, v25);
  }

  (*(v0 + 56))(0);

  v33 = *(v0 + 8);

  return v33();
}

char *sub_1B2088BD4()
{
  v44 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  v4 = sub_1B205E940();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_1B20A9894();
  v6 = sub_1B20A9C84();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v42 = v9;
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
    v39 = v6;
    v38 = v9;
    if (v10)
    {
      v43 = MEMORY[0x1E69E7CC0];
      result = sub_1B2091C38(0, v10 & ~(v10 >> 63), 0);
      if (v10 < 0)
      {
        __break(1u);
        return result;
      }

      v37 = v8;
      v13 = 0;
      v11 = v43;
      v41 = v0[6] + 32;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1B27403C0](v13, v0[6]);
        }

        else
        {
          v14 = *(v41 + 8 * v13);
        }

        v15 = v14;
        v16 = [v14 identifier];
        v17 = sub_1B20A9A74();
        v19 = v18;

        v43 = v11;
        v21 = *(v11 + 16);
        v20 = *(v11 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1B2091C38((v20 > 1), v21 + 1, 1);
          v11 = v43;
        }

        ++v13;
        *(v11 + 16) = v21 + 1;
        v22 = v11 + 16 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
      }

      while (v10 != v13);
      v8 = v37;
    }

    v26 = v0[10];
    v27 = v0[11];
    v28 = v0[9];
    v29 = MEMORY[0x1B2740030](v11, MEMORY[0x1E69E6158]);
    v31 = v30;

    v32 = sub_1B2061574(v29, v31, &v42);

    *(v8 + 4) = v32;
    _os_log_impl(&dword_1B1F9F000, log, v39, "Failed to update alarmkit alarms in core data: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x1B2741310](v38, -1, -1);
    MEMORY[0x1B2741310](v8, -1, -1);

    (*(v26 + 8))(v27, v28);
  }

  else
  {
    v23 = v0[10];
    v24 = v0[11];
    v25 = v0[9];

    (*(v23 + 8))(v24, v25);
  }

  v33 = v0[15];
  v34 = v0[7];
  v35 = v33;
  v34(v33);

  v36 = v0[1];

  return v36();
}

uint64_t sub_1B2088F1C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B20A9D34();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2088FDC, v1, 0);
}

uint64_t sub_1B2088FDC()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  type metadata accessor for AKCDAlarm();
  v6 = static AKCDAlarm.fetchRequest()();
  v0[7] = v6;
  v7 = sub_1B2096848(v5);
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

  return MEMORY[0x1EEDB6538](v11, v12, sub_1B2096A4C, v9, v13);
}

void sub_1B20891AC(void *a1, int a2, uint64_t a3, void *aBlock, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = _Block_copy(aBlock);
  sub_1B20982AC(0, &qword_1EB79CDE8, 0x1E698A730);
  v10 = sub_1B20A9B04();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = v10;
  v12[4] = a7;
  v12[5] = v11;
  v13 = a1;

  sub_1B2068230();
}

uint64_t MTCDDataStore.deleteAKCAlarms(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v9 = v3;

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

uint64_t sub_1B20893BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_1B20A98B4();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B208948C, 0, 0);
}

uint64_t sub_1B208948C()
{
  v25 = v0;
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 104) = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    v4[1] = sub_1B2089704;
    v5 = *(v0 + 48);

    return sub_1B2089BCC(v5);
  }

  else
  {
    v7 = *(v0 + 96);
    v8 = *(v0 + 72);
    v9 = *(v0 + 80);
    v10 = sub_1B205E940();
    (*(v9 + 16))(v7, v10, v8);

    v11 = sub_1B20A9894();
    v12 = sub_1B20A9C74();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 96);
    v15 = *(v0 + 72);
    v16 = *(v0 + 80);
    if (v13)
    {
      v17 = *(v0 + 48);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      v20 = MEMORY[0x1B2740030](v17, MEMORY[0x1E69E6158]);
      v22 = sub_1B2061574(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1B1F9F000, v11, v12, "Deleted alarmkit alarms from core data: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1B2741310](v19, -1, -1);
      MEMORY[0x1B2741310](v18, -1, -1);
    }

    (*(v16 + 8))(v14, v15);
    (*(v0 + 56))(0);

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_1B2089704()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1B20899E4;
  }

  else
  {

    v2 = sub_1B2089820;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B2089820()
{
  v20 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = sub_1B205E940();
  (*(v3 + 16))(v1, v4, v2);

  v5 = sub_1B20A9894();
  v6 = sub_1B20A9C74();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 96);
  v9 = *(v0 + 72);
  v10 = *(v0 + 80);
  if (v7)
  {
    v11 = *(v0 + 48);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    v14 = MEMORY[0x1B2740030](v11, MEMORY[0x1E69E6158]);
    v16 = sub_1B2061574(v14, v15, &v19);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1B1F9F000, v5, v6, "Deleted alarmkit alarms from core data: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B2741310](v13, -1, -1);
    MEMORY[0x1B2741310](v12, -1, -1);
  }

  (*(v10 + 8))(v8, v9);
  (*(v0 + 56))(0);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1B20899E4()
{
  v23 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  v4 = sub_1B205E940();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_1B20A9894();
  v6 = sub_1B20A9C84();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];
  if (v7)
  {
    v11 = v0[6];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    v14 = MEMORY[0x1B2740030](v11, MEMORY[0x1E69E6158]);
    v16 = sub_1B2061574(v14, v15, &v22);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1B1F9F000, v5, v6, "Failed to delete alarmkit alarms from core data: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B2741310](v13, -1, -1);
    MEMORY[0x1B2741310](v12, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  v17 = v0[15];
  v18 = v0[7];
  v19 = v17;
  v18(v17);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1B2089BCC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B20A9D34();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2089C8C, v1, 0);
}

uint64_t sub_1B2089C8C()
{
  v1 = v0[5];
  v2 = v0[3];
  v16 = v0[4];
  v17 = v0[6];
  v3 = v0[2];
  v4 = type metadata accessor for AKCDAlarm();
  v5 = (*(v4 + 88))();
  v0[7] = v5;
  sub_1B20982AC(0, &qword_1EB79CE38, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4D0, &qword_1B20B8F70);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B20B8E70;
  *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F510, &qword_1B20B91C8);
  *(v6 + 64) = sub_1B209849C(&qword_1EB79CE50, &qword_1EB79F510, &qword_1B20B91C8, MEMORY[0x1E6969E28]);
  *(v6 + 32) = v3;

  v7 = sub_1B20A9C64();
  [v5 setPredicate_];

  v8 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];
  v0[8] = v8;
  v9 = [*(v2 + 112) newBackgroundContext];
  v0[9] = v9;
  v10 = swift_allocObject();
  v0[10] = v10;
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  (*(v1 + 104))(v17, *MEMORY[0x1E695D2B8], v16);
  v9;
  v11 = v8;
  v12 = swift_task_alloc();
  v0[11] = v12;
  *v12 = v0;
  v12[1] = sub_1B2076DEC;
  v13 = v0[6];
  v14 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEDB6538](v12, v13, sub_1B209893C, v10, v14);
}

uint64_t MTCDDataStore.getAKCAlarms(includeAttributes:completion:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  v8 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v9 = v3;

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

uint64_t sub_1B208A050(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a3;
  *(v4 + 56) = a4;
  *(v4 + 152) = a2;
  *(v4 + 40) = a1;
  v5 = sub_1B20A98B4();
  *(v4 + 64) = v5;
  *(v4 + 72) = *(v5 - 8);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B208A130, 0, 0);
}

uint64_t sub_1B208A130()
{
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 104) = v3;
  if (v3)
  {
    *(v0 + 112) = sub_1B20A9BA4();

    *(v0 + 120) = sub_1B20A9B94();
    v4 = swift_task_alloc();
    *(v0 + 128) = v4;
    *v4 = v0;
    v4[1] = sub_1B208A33C;
    v5 = *(v0 + 152);

    return sub_1B208BBB0(0, v5);
  }

  else
  {
    v7 = *(v0 + 88);
    v8 = *(v0 + 64);
    v9 = *(v0 + 72);
    v10 = sub_1B205E940();
    (*(v9 + 16))(v7, v10, v8);
    v11 = sub_1B20A9894();
    v12 = sub_1B20A9C74();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1B1F9F000, v11, v12, "No alarmkit alarms fetched", v13, 2u);
      MEMORY[0x1B2741310](v13, -1, -1);
    }

    v14 = *(v0 + 88);
    v15 = *(v0 + 64);
    v16 = *(v0 + 72);
    v17 = *(v0 + 48);

    (*(v16 + 8))(v14, v15);
    v17(0);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1B208A33C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  v5 = sub_1B20A9B64();
  if (v1)
  {
    v6 = sub_1B208A8E8;
  }

  else
  {
    v6 = sub_1B208A49C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1B208A49C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B208A510, 0, 0);
}

uint64_t sub_1B208A510()
{
  v39 = v0;
  v1 = v0[17];
  v2 = v0[8];
  v3 = v0[9];
  if (!v1)
  {
    v18 = v0[11];
    v19 = sub_1B205E940();
    (*(v3 + 16))(v18, v19, v2);
    v20 = sub_1B20A9894();
    v21 = sub_1B20A9C74();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1B1F9F000, v20, v21, "No alarmkit alarms fetched", v22, 2u);
      MEMORY[0x1B2741310](v22, -1, -1);
    }

    v23 = v0[11];
    v24 = v0[8];
    v25 = v0[9];
    v26 = v0[6];

    (*(v25 + 8))(v23, v24);
    v26(0);
    goto LABEL_20;
  }

  v4 = v0[10];
  v5 = sub_1B205E940();
  (*(v3 + 16))(v4, v5, v2);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C74();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[9];
  v10 = v0[10];
  v11 = v0[8];
  if (v8)
  {
    v37 = v0[10];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v38 = v13;
    *v12 = 136315138;
    v14 = type metadata accessor for AKCDAlarm();
    v15 = MEMORY[0x1B2740030](v1, v14);
    v17 = sub_1B2061574(v15, v16, &v38);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1B1F9F000, v6, v7, "Fetched alarmkit alarms: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B2741310](v13, -1, -1);
    MEMORY[0x1B2741310](v12, -1, -1);

    (*(v9 + 8))(v37, v11);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v27 = v0[17];
  if (v27 >> 62)
  {
    v28 = sub_1B20A9DE4();
    if (v28)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
LABEL_10:
      v38 = MEMORY[0x1E69E7CC0];
      result = sub_1B20A9EE4();
      if (v28 < 0)
      {
        __break(1u);
        return result;
      }

      v30 = 0;
      v31 = v0[17] & 0xC000000000000001;
      v32 = MEMORY[0x1E69E7D40];
      do
      {
        if (v31)
        {
          v33 = MEMORY[0x1B27403C0](v30, v1);
        }

        else
        {
          v33 = *(v1 + 8 * v30 + 32);
        }

        v34 = v33;
        ++v30;
        (*((*v32 & *v33) + 0x60))();

        sub_1B20A9EC4();
        sub_1B20A9EF4();
        sub_1B20A9F04();
        sub_1B20A9ED4();
      }

      while (v28 != v30);

      v35 = v38;
      goto LABEL_19;
    }
  }

  v35 = MEMORY[0x1E69E7CC0];
LABEL_19:
  (v0[6])(v35);

LABEL_20:

  v36 = v0[1];

  return v36();
}

uint64_t sub_1B208A8E8()
{

  return MEMORY[0x1EEE6DFA0](sub_1B208A95C, 0, 0);
}

uint64_t sub_1B208A95C()
{
  v1 = v0[18];
  v2 = v0[12];
  v3 = v0[8];
  v4 = v0[9];
  v5 = sub_1B205E940();
  (*(v4 + 16))(v2, v5, v3);
  v6 = v1;
  v7 = sub_1B20A9894();
  v8 = sub_1B20A9C84();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[18];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1B1F9F000, v7, v8, "Failed to fetch alarmkit alarms: %@", v10, 0xCu);
    sub_1B20985B4(v11, &qword_1EB79F4B0, &qword_1B20B8ED8);
    MEMORY[0x1B2741310](v11, -1, -1);
    MEMORY[0x1B2741310](v10, -1, -1);
  }

  v14 = v0[18];
  v15 = v0[12];
  v16 = v0[8];
  v17 = v0[9];
  v18 = v0[6];

  (*(v17 + 8))(v15, v16);
  v18(0);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1B208AB28(uint64_t a1)
{
  v2 = a1;
  v1[2] = sub_1B20A9BA4();
  v1[3] = sub_1B20A9B94();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_1B208ABE8;

  return sub_1B208BBB0(0, v2);
}

uint64_t sub_1B208ABE8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_1B20A9B64();
    v7 = v6;
    v8 = sub_1B208ADD0;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_1B20A9B64();
    v7 = v9;
    v8 = sub_1B208AD68;
  }

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

uint64_t sub_1B208AD68()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_1B208ADD0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1B208AF1C(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  if (a1)
  {
    sub_1B20982AC(0, a3, a4);
    v5 = sub_1B20A9AF4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a2 + 16))(a2);
}

uint64_t MTCDDataStore.getAKCAlarms(predicate:includeAttributes:completion:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  v10 = *&v4[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v11 = a1;

  v12 = v4;
  os_unfair_lock_lock(v10 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v10 + 4);
  v13 = *&v12[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v13)
  {
    v14 = *&v12[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v13(v15);
    sub_1B1FA6834(v13, v14);
  }
}

uint64_t sub_1B208B0AC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  *(v5 + 144) = a3;
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  v6 = sub_1B20A98B4();
  *(v5 + 72) = v6;
  *(v5 + 80) = *(v6 - 8);
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B208B18C, 0, 0);
}

uint64_t sub_1B208B18C()
{
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 112) = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    *(v0 + 120) = v4;
    *v4 = v0;
    v4[1] = sub_1B208B3E4;
    v5 = *(v0 + 144);
    v6 = *(v0 + 48);

    return sub_1B208BBB0(v6, v5);
  }

  else
  {
    v8 = *(v0 + 96);
    v9 = *(v0 + 72);
    v10 = *(v0 + 80);
    v11 = *(v0 + 48);
    v12 = sub_1B205E940();
    (*(v10 + 16))(v8, v12, v9);
    v13 = v11;
    v14 = sub_1B20A9894();
    v15 = sub_1B20A9C74();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 48);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v13;
      *v18 = v16;
      v19 = v13;
      _os_log_impl(&dword_1B1F9F000, v14, v15, "No alarmkit alarms fetched with predicate: %@", v17, 0xCu);
      sub_1B20985B4(v18, &qword_1EB79F4B0, &qword_1B20B8ED8);
      MEMORY[0x1B2741310](v18, -1, -1);
      MEMORY[0x1B2741310](v17, -1, -1);
    }

    v20 = *(v0 + 96);
    v21 = *(v0 + 72);
    v22 = *(v0 + 80);
    v23 = *(v0 + 56);

    (*(v22 + 8))(v20, v21);
    v23(0);

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_1B208B3E4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_1B208B9A8;
  }

  else
  {

    v4 = sub_1B208B500;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B208B500()
{
  v48 = v0;
  v1 = v0[16];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[6];
  if (!v1)
  {
    v21 = v0[12];
    v22 = sub_1B205E940();
    (*(v3 + 16))(v21, v22, v2);
    v23 = v4;
    v24 = sub_1B20A9894();
    v25 = sub_1B20A9C74();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = v0[6];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v23;
      *v28 = v26;
      v29 = v23;
      _os_log_impl(&dword_1B1F9F000, v24, v25, "No alarmkit alarms fetched with predicate: %@", v27, 0xCu);
      sub_1B20985B4(v28, &qword_1EB79F4B0, &qword_1B20B8ED8);
      MEMORY[0x1B2741310](v28, -1, -1);
      MEMORY[0x1B2741310](v27, -1, -1);
    }

    v30 = v0[12];
    v31 = v0[9];
    v32 = v0[10];
    v33 = v0[7];

    (*(v32 + 8))(v30, v31);
    v33(0);
    goto LABEL_20;
  }

  v5 = v0[13];
  v6 = sub_1B205E940();
  (*(v3 + 16))(v5, v6, v2);
  v7 = v4;

  v8 = sub_1B20A9894();
  v9 = sub_1B20A9C74();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[13];
  v12 = v0[9];
  v13 = v0[10];
  if (v10)
  {
    v44 = v0[6];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = v46;
    *v14 = 136315394;
    v16 = type metadata accessor for AKCDAlarm();
    v17 = MEMORY[0x1B2740030](v1, v16);
    v45 = v12;
    v19 = sub_1B2061574(v17, v18, &v47);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v7;
    *v15 = v44;
    v20 = v7;
    _os_log_impl(&dword_1B1F9F000, v8, v9, "Fetched alarmkit alarms: %s with predicate: %@", v14, 0x16u);
    sub_1B20985B4(v15, &qword_1EB79F4B0, &qword_1B20B8ED8);
    MEMORY[0x1B2741310](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x1B2741310](v46, -1, -1);
    MEMORY[0x1B2741310](v14, -1, -1);

    (*(v13 + 8))(v11, v45);
  }

  else
  {

    (*(v13 + 8))(v11, v12);
  }

  v34 = v0[16];
  if (v34 >> 62)
  {
    v35 = sub_1B20A9DE4();
    if (v35)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
LABEL_10:
      v47 = MEMORY[0x1E69E7CC0];
      result = sub_1B20A9EE4();
      if (v35 < 0)
      {
        __break(1u);
        return result;
      }

      v37 = 0;
      v38 = v0[16] & 0xC000000000000001;
      v39 = MEMORY[0x1E69E7D40];
      do
      {
        if (v38)
        {
          v40 = MEMORY[0x1B27403C0](v37, v1);
        }

        else
        {
          v40 = *(v1 + 8 * v37 + 32);
        }

        v41 = v40;
        ++v37;
        (*((*v39 & *v40) + 0x60))();

        sub_1B20A9EC4();
        sub_1B20A9EF4();
        sub_1B20A9F04();
        sub_1B20A9ED4();
      }

      while (v35 != v37);

      v42 = v47;
      goto LABEL_19;
    }
  }

  v42 = MEMORY[0x1E69E7CC0];
LABEL_19:
  (v0[7])(v42);

LABEL_20:

  v43 = v0[1];

  return v43();
}

uint64_t sub_1B208B9A8()
{
  v1 = v0[17];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[6];

  v6 = sub_1B205E940();
  (*(v3 + 16))(v2, v6, v4);
  v7 = v5;
  v8 = v1;
  v9 = sub_1B20A9894();
  v10 = sub_1B20A9C84();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[17];
    v12 = v0[6];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412546;
    *(v13 + 4) = v7;
    *v14 = v12;
    *(v13 + 12) = 2112;
    v15 = v7;
    v16 = v11;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v17;
    v14[1] = v17;
    _os_log_impl(&dword_1B1F9F000, v9, v10, "Failed to fetch alarmkit alarms with predicate: %@, error: %@", v13, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4B0, &qword_1B20B8ED8);
    swift_arrayDestroy();
    MEMORY[0x1B2741310](v14, -1, -1);
    MEMORY[0x1B2741310](v13, -1, -1);
  }

  v18 = v0[17];
  v20 = v0[10];
  v19 = v0[11];
  v21 = v0[9];
  v22 = v0[7];

  (*(v20 + 8))(v19, v21);
  v22(0);

  v23 = v0[1];

  return v23();
}

uint64_t sub_1B208BBB0(uint64_t a1, char a2)
{
  *(v3 + 120) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  v4 = sub_1B20A9D34();
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();
  sub_1B20A9BA4();
  *(v3 + 64) = sub_1B20A9B94();
  v6 = sub_1B20A9B64();
  *(v3 + 72) = v6;
  *(v3 + 80) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1B208BCA8, v6, v5);
}

uint64_t sub_1B208BCA8()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 120);
  v6 = *(v0 + 24);
  *(v0 + 88) = [*(v4 + 112) viewContext];
  v7 = swift_allocObject();
  *(v0 + 96) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v7 + 32) = v4;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v8 = v6;

  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F518, &qword_1B20B9200);
  *v9 = v0;
  v9[1] = sub_1B208BE18;
  v11 = *(v0 + 56);

  return MEMORY[0x1EEDB6538](v0 + 16, v11, sub_1B2096F9C, v7, v10);
}

uint64_t sub_1B208BE18()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  *(*v1 + 112) = v0;

  (*(v5 + 8))(v4, v6);

  v7 = *(v2 + 80);
  v8 = *(v2 + 72);
  if (v0)
  {
    v9 = sub_1B208C060;
  }

  else
  {
    v9 = sub_1B208BFEC;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1B208BFEC()
{

  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1B208C060()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B208C1D8(uint64_t a1)
{
  sub_1B20982AC(0, &qword_1EB79CE38, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4D0, &qword_1B20B8F70);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B20B8E70;
  *(v2 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F510, &qword_1B20B91C8);
  *(v2 + 64) = sub_1B209849C(&qword_1EB79CE50, &qword_1EB79F510, &qword_1B20B91C8, MEMORY[0x1E6969E28]);
  *(v2 + 32) = a1;

  return sub_1B20A9C64();
}

uint64_t MTCDDataStore.addAKCAuthorizations(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v9 = v3;

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

uint64_t sub_1B208C3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_1B20A98B4();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B208C4A8, 0, 0);
}

char *sub_1B208C4A8()
{
  v46 = v0;
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 104) = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    v4[1] = sub_1B208C878;
    v5 = *(v0 + 48);

    return sub_1B208D000(v5);
  }

  else
  {
    v7 = *(v0 + 96);
    v8 = *(v0 + 72);
    v9 = *(v0 + 80);
    v10 = sub_1B205E940();
    (*(v9 + 16))(v7, v10, v8);

    v11 = sub_1B20A9894();
    v12 = sub_1B20A9C74();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 48);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v44 = v15;
      *v14 = 136315138;
      v41 = v12;
      if (v13 >> 62)
      {
        v16 = sub_1B20A9DE4();
      }

      else
      {
        v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v17 = MEMORY[0x1E69E7CC0];
      log = v11;
      if (v16)
      {
        v39 = v15;
        v40 = v14;
        v45 = MEMORY[0x1E69E7CC0];
        result = sub_1B2091C38(0, v16 & ~(v16 >> 63), 0);
        if (v16 < 0)
        {
          __break(1u);
          return result;
        }

        v18 = 0;
        v17 = v45;
        v43 = *(v0 + 48) + 32;
        do
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x1B27403C0](v18, *(v0 + 48));
          }

          else
          {
            v19 = *(v43 + 8 * v18);
          }

          v20 = v19;
          v21 = [v19 bundleID];
          v22 = sub_1B20A9A74();
          v24 = v23;

          v45 = v17;
          v26 = *(v17 + 16);
          v25 = *(v17 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_1B2091C38((v25 > 1), v26 + 1, 1);
            v17 = v45;
          }

          ++v18;
          *(v17 + 16) = v26 + 1;
          v27 = v17 + 16 * v26;
          *(v27 + 32) = v22;
          *(v27 + 40) = v24;
        }

        while (v16 != v18);
        v15 = v39;
        v14 = v40;
      }

      v31 = *(v0 + 96);
      v33 = *(v0 + 72);
      v32 = *(v0 + 80);
      v34 = MEMORY[0x1B2740030](v17, MEMORY[0x1E69E6158]);
      v36 = v35;

      v37 = sub_1B2061574(v34, v36, &v44);

      *(v14 + 4) = v37;
      _os_log_impl(&dword_1B1F9F000, log, v41, "Saved alarmkit authorizations into core data: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1B2741310](v15, -1, -1);
      MEMORY[0x1B2741310](v14, -1, -1);

      (*(v32 + 8))(v31, v33);
    }

    else
    {
      v28 = *(v0 + 96);
      v30 = *(v0 + 72);
      v29 = *(v0 + 80);

      (*(v29 + 8))(v28, v30);
    }

    (*(v0 + 56))(0);

    v38 = *(v0 + 8);

    return v38();
  }
}

uint64_t sub_1B208C878()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1B208CCB8;
  }

  else
  {

    v2 = sub_1B208C994;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

char *sub_1B208C994()
{
  v41 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = sub_1B205E940();
  (*(v3 + 16))(v1, v4, v2);

  v5 = sub_1B20A9894();
  v6 = sub_1B20A9C74();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 48);
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
    log = v5;
    v36 = v6;
    v35 = v9;
    if (v10)
    {
      v40 = MEMORY[0x1E69E7CC0];
      result = sub_1B2091C38(0, v10 & ~(v10 >> 63), 0);
      if (v10 < 0)
      {
        __break(1u);
        return result;
      }

      v34 = v8;
      v13 = 0;
      v11 = v40;
      v38 = *(v0 + 48) + 32;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1B27403C0](v13, *(v0 + 48));
        }

        else
        {
          v14 = *(v38 + 8 * v13);
        }

        v15 = v14;
        v16 = [v14 bundleID];
        v17 = sub_1B20A9A74();
        v19 = v18;

        v40 = v11;
        v21 = *(v11 + 16);
        v20 = *(v11 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1B2091C38((v20 > 1), v21 + 1, 1);
          v11 = v40;
        }

        ++v13;
        *(v11 + 16) = v21 + 1;
        v22 = v11 + 16 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
      }

      while (v10 != v13);
      v8 = v34;
    }

    v26 = *(v0 + 96);
    v28 = *(v0 + 72);
    v27 = *(v0 + 80);
    v29 = MEMORY[0x1B2740030](v11, MEMORY[0x1E69E6158]);
    v31 = v30;

    v32 = sub_1B2061574(v29, v31, &v39);

    *(v8 + 4) = v32;
    _os_log_impl(&dword_1B1F9F000, log, v36, "Saved alarmkit authorizations into core data: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x1B2741310](v35, -1, -1);
    MEMORY[0x1B2741310](v8, -1, -1);

    (*(v27 + 8))(v26, v28);
  }

  else
  {
    v23 = *(v0 + 96);
    v25 = *(v0 + 72);
    v24 = *(v0 + 80);

    (*(v24 + 8))(v23, v25);
  }

  (*(v0 + 56))(0);

  v33 = *(v0 + 8);

  return v33();
}

char *sub_1B208CCB8()
{
  v44 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  v4 = sub_1B205E940();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_1B20A9894();
  v6 = sub_1B20A9C84();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v42 = v9;
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
    v39 = v6;
    v38 = v9;
    if (v10)
    {
      v43 = MEMORY[0x1E69E7CC0];
      result = sub_1B2091C38(0, v10 & ~(v10 >> 63), 0);
      if (v10 < 0)
      {
        __break(1u);
        return result;
      }

      v37 = v8;
      v13 = 0;
      v11 = v43;
      v41 = v0[6] + 32;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1B27403C0](v13, v0[6]);
        }

        else
        {
          v14 = *(v41 + 8 * v13);
        }

        v15 = v14;
        v16 = [v14 bundleID];
        v17 = sub_1B20A9A74();
        v19 = v18;

        v43 = v11;
        v21 = *(v11 + 16);
        v20 = *(v11 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1B2091C38((v20 > 1), v21 + 1, 1);
          v11 = v43;
        }

        ++v13;
        *(v11 + 16) = v21 + 1;
        v22 = v11 + 16 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
      }

      while (v10 != v13);
      v8 = v37;
    }

    v26 = v0[10];
    v27 = v0[11];
    v28 = v0[9];
    v29 = MEMORY[0x1B2740030](v11, MEMORY[0x1E69E6158]);
    v31 = v30;

    v32 = sub_1B2061574(v29, v31, &v42);

    *(v8 + 4) = v32;
    _os_log_impl(&dword_1B1F9F000, log, v39, "Failed to save alarmkit authorizations into core data: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x1B2741310](v38, -1, -1);
    MEMORY[0x1B2741310](v8, -1, -1);

    (*(v26 + 8))(v27, v28);
  }

  else
  {
    v23 = v0[10];
    v24 = v0[11];
    v25 = v0[9];

    (*(v23 + 8))(v24, v25);
  }

  v33 = v0[15];
  v34 = v0[7];
  v35 = v33;
  v34(v33);

  v36 = v0[1];

  return v36();
}

uint64_t sub_1B208D000(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B20A9D34();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B208D0C0, v1, 0);
}

uint64_t sub_1B208D0C0()
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

  return MEMORY[0x1EEDB6538](v7, v8, sub_1B2097168, v6, v9);
}

uint64_t MTCDDataStore.updateAKCAuthorizations(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v9 = v3;

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

uint64_t sub_1B208D350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_1B20A98B4();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B208D420, 0, 0);
}

char *sub_1B208D420()
{
  v46 = v0;
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 104) = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    v4[1] = sub_1B208D7F0;
    v5 = *(v0 + 48);

    return sub_1B208DF78(v5);
  }

  else
  {
    v7 = *(v0 + 96);
    v8 = *(v0 + 72);
    v9 = *(v0 + 80);
    v10 = sub_1B205E940();
    (*(v9 + 16))(v7, v10, v8);

    v11 = sub_1B20A9894();
    v12 = sub_1B20A9C74();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 48);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v44 = v15;
      *v14 = 136315138;
      v41 = v12;
      if (v13 >> 62)
      {
        v16 = sub_1B20A9DE4();
      }

      else
      {
        v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v17 = MEMORY[0x1E69E7CC0];
      log = v11;
      if (v16)
      {
        v39 = v15;
        v40 = v14;
        v45 = MEMORY[0x1E69E7CC0];
        result = sub_1B2091C38(0, v16 & ~(v16 >> 63), 0);
        if (v16 < 0)
        {
          __break(1u);
          return result;
        }

        v18 = 0;
        v17 = v45;
        v43 = *(v0 + 48) + 32;
        do
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x1B27403C0](v18, *(v0 + 48));
          }

          else
          {
            v19 = *(v43 + 8 * v18);
          }

          v20 = v19;
          v21 = [v19 bundleID];
          v22 = sub_1B20A9A74();
          v24 = v23;

          v45 = v17;
          v26 = *(v17 + 16);
          v25 = *(v17 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_1B2091C38((v25 > 1), v26 + 1, 1);
            v17 = v45;
          }

          ++v18;
          *(v17 + 16) = v26 + 1;
          v27 = v17 + 16 * v26;
          *(v27 + 32) = v22;
          *(v27 + 40) = v24;
        }

        while (v16 != v18);
        v15 = v39;
        v14 = v40;
      }

      v31 = *(v0 + 96);
      v33 = *(v0 + 72);
      v32 = *(v0 + 80);
      v34 = MEMORY[0x1B2740030](v17, MEMORY[0x1E69E6158]);
      v36 = v35;

      v37 = sub_1B2061574(v34, v36, &v44);

      *(v14 + 4) = v37;
      _os_log_impl(&dword_1B1F9F000, log, v41, "Updated alarmkit authorizations in core data: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1B2741310](v15, -1, -1);
      MEMORY[0x1B2741310](v14, -1, -1);

      (*(v32 + 8))(v31, v33);
    }

    else
    {
      v28 = *(v0 + 96);
      v30 = *(v0 + 72);
      v29 = *(v0 + 80);

      (*(v29 + 8))(v28, v30);
    }

    (*(v0 + 56))(0);

    v38 = *(v0 + 8);

    return v38();
  }
}

uint64_t sub_1B208D7F0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1B208DC30;
  }

  else
  {

    v2 = sub_1B208D90C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

char *sub_1B208D90C()
{
  v41 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = sub_1B205E940();
  (*(v3 + 16))(v1, v4, v2);

  v5 = sub_1B20A9894();
  v6 = sub_1B20A9C74();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 48);
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
    log = v5;
    v36 = v6;
    v35 = v9;
    if (v10)
    {
      v40 = MEMORY[0x1E69E7CC0];
      result = sub_1B2091C38(0, v10 & ~(v10 >> 63), 0);
      if (v10 < 0)
      {
        __break(1u);
        return result;
      }

      v34 = v8;
      v13 = 0;
      v11 = v40;
      v38 = *(v0 + 48) + 32;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1B27403C0](v13, *(v0 + 48));
        }

        else
        {
          v14 = *(v38 + 8 * v13);
        }

        v15 = v14;
        v16 = [v14 bundleID];
        v17 = sub_1B20A9A74();
        v19 = v18;

        v40 = v11;
        v21 = *(v11 + 16);
        v20 = *(v11 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1B2091C38((v20 > 1), v21 + 1, 1);
          v11 = v40;
        }

        ++v13;
        *(v11 + 16) = v21 + 1;
        v22 = v11 + 16 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
      }

      while (v10 != v13);
      v8 = v34;
    }

    v26 = *(v0 + 96);
    v28 = *(v0 + 72);
    v27 = *(v0 + 80);
    v29 = MEMORY[0x1B2740030](v11, MEMORY[0x1E69E6158]);
    v31 = v30;

    v32 = sub_1B2061574(v29, v31, &v39);

    *(v8 + 4) = v32;
    _os_log_impl(&dword_1B1F9F000, log, v36, "Updated alarmkit authorizations in core data: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x1B2741310](v35, -1, -1);
    MEMORY[0x1B2741310](v8, -1, -1);

    (*(v27 + 8))(v26, v28);
  }

  else
  {
    v23 = *(v0 + 96);
    v25 = *(v0 + 72);
    v24 = *(v0 + 80);

    (*(v24 + 8))(v23, v25);
  }

  (*(v0 + 56))(0);

  v33 = *(v0 + 8);

  return v33();
}

char *sub_1B208DC30()
{
  v44 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  v4 = sub_1B205E940();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_1B20A9894();
  v6 = sub_1B20A9C84();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v42 = v9;
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
    v39 = v6;
    v38 = v9;
    if (v10)
    {
      v43 = MEMORY[0x1E69E7CC0];
      result = sub_1B2091C38(0, v10 & ~(v10 >> 63), 0);
      if (v10 < 0)
      {
        __break(1u);
        return result;
      }

      v37 = v8;
      v13 = 0;
      v11 = v43;
      v41 = v0[6] + 32;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1B27403C0](v13, v0[6]);
        }

        else
        {
          v14 = *(v41 + 8 * v13);
        }

        v15 = v14;
        v16 = [v14 bundleID];
        v17 = sub_1B20A9A74();
        v19 = v18;

        v43 = v11;
        v21 = *(v11 + 16);
        v20 = *(v11 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1B2091C38((v20 > 1), v21 + 1, 1);
          v11 = v43;
        }

        ++v13;
        *(v11 + 16) = v21 + 1;
        v22 = v11 + 16 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
      }

      while (v10 != v13);
      v8 = v37;
    }

    v26 = v0[10];
    v27 = v0[11];
    v28 = v0[9];
    v29 = MEMORY[0x1B2740030](v11, MEMORY[0x1E69E6158]);
    v31 = v30;

    v32 = sub_1B2061574(v29, v31, &v42);

    *(v8 + 4) = v32;
    _os_log_impl(&dword_1B1F9F000, log, v39, "Failed to update alarmkit authorizations in core data: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x1B2741310](v38, -1, -1);
    MEMORY[0x1B2741310](v8, -1, -1);

    (*(v26 + 8))(v27, v28);
  }

  else
  {
    v23 = v0[10];
    v24 = v0[11];
    v25 = v0[9];

    (*(v23 + 8))(v24, v25);
  }

  v33 = v0[15];
  v34 = v0[7];
  v35 = v33;
  v34(v33);

  v36 = v0[1];

  return v36();
}

uint64_t sub_1B208DF78(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B20A9D34();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B208E038, v1, 0);
}

uint64_t sub_1B208E038()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  type metadata accessor for AKCDAuthorization();
  v6 = static AKCDAuthorization.fetchRequest()();
  v0[7] = v6;
  v7 = sub_1B2097398(v5);
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

  return MEMORY[0x1EEDB6538](v11, v12, sub_1B20975E4, v9, v13);
}

void sub_1B208E208(void *a1, int a2, uint64_t a3, void *aBlock, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = _Block_copy(aBlock);
  sub_1B20982AC(0, &qword_1EB79CE28, 0x1E698A738);
  v10 = sub_1B20A9B04();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = v10;
  v12[4] = a7;
  v12[5] = v11;
  v13 = a1;

  sub_1B2068230();
}

uint64_t MTCDDataStore.deleteAKCAuthorizations(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v9 = v3;

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

uint64_t sub_1B208E418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_1B20A98B4();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B208E4E8, 0, 0);
}

uint64_t sub_1B208E4E8()
{
  v25 = v0;
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 104) = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    v4[1] = sub_1B208E760;
    v5 = *(v0 + 48);

    return sub_1B208EC28(v5);
  }

  else
  {
    v7 = *(v0 + 96);
    v8 = *(v0 + 72);
    v9 = *(v0 + 80);
    v10 = sub_1B205E940();
    (*(v9 + 16))(v7, v10, v8);

    v11 = sub_1B20A9894();
    v12 = sub_1B20A9C74();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 96);
    v15 = *(v0 + 72);
    v16 = *(v0 + 80);
    if (v13)
    {
      v17 = *(v0 + 48);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      v20 = MEMORY[0x1B2740030](v17, MEMORY[0x1E69E6158]);
      v22 = sub_1B2061574(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1B1F9F000, v11, v12, "Deleted alarmkit authorizations from core data: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1B2741310](v19, -1, -1);
      MEMORY[0x1B2741310](v18, -1, -1);
    }

    (*(v16 + 8))(v14, v15);
    (*(v0 + 56))(0);

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_1B208E760()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1B208EA40;
  }

  else
  {

    v2 = sub_1B208E87C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B208E87C()
{
  v20 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = sub_1B205E940();
  (*(v3 + 16))(v1, v4, v2);

  v5 = sub_1B20A9894();
  v6 = sub_1B20A9C74();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 96);
  v9 = *(v0 + 72);
  v10 = *(v0 + 80);
  if (v7)
  {
    v11 = *(v0 + 48);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    v14 = MEMORY[0x1B2740030](v11, MEMORY[0x1E69E6158]);
    v16 = sub_1B2061574(v14, v15, &v19);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1B1F9F000, v5, v6, "Deleted alarmkit authorizations from core data: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B2741310](v13, -1, -1);
    MEMORY[0x1B2741310](v12, -1, -1);
  }

  (*(v10 + 8))(v8, v9);
  (*(v0 + 56))(0);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1B208EA40()
{
  v23 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  v4 = sub_1B205E940();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_1B20A9894();
  v6 = sub_1B20A9C84();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];
  if (v7)
  {
    v11 = v0[6];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    v14 = MEMORY[0x1B2740030](v11, MEMORY[0x1E69E6158]);
    v16 = sub_1B2061574(v14, v15, &v22);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1B1F9F000, v5, v6, "Failed to delete alarmkit authorizations from core data: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B2741310](v13, -1, -1);
    MEMORY[0x1B2741310](v12, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  v17 = v0[15];
  v18 = v0[7];
  v19 = v17;
  v18(v17);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1B208EC28(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B20A9D34();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B208ECE8, v1, 0);
}

uint64_t sub_1B208ECE8()
{
  v1 = v0[5];
  v2 = v0[3];
  v16 = v0[4];
  v17 = v0[6];
  v3 = v0[2];
  v4 = type metadata accessor for AKCDAuthorization();
  v5 = (*(v4 + 88))();
  v0[7] = v5;
  sub_1B20982AC(0, &qword_1EB79CE38, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4D0, &qword_1B20B8F70);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B20B8E70;
  *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F510, &qword_1B20B91C8);
  *(v6 + 64) = sub_1B209849C(&qword_1EB79CE50, &qword_1EB79F510, &qword_1B20B91C8, MEMORY[0x1E6969E28]);
  *(v6 + 32) = v3;

  v7 = sub_1B20A9C64();
  [v5 setPredicate_];

  v8 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];
  v0[8] = v8;
  v9 = [*(v2 + 112) newBackgroundContext];
  v0[9] = v9;
  v10 = swift_allocObject();
  v0[10] = v10;
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  (*(v1 + 104))(v17, *MEMORY[0x1E695D2B8], v16);
  v9;
  v11 = v8;
  v12 = swift_task_alloc();
  v0[11] = v12;
  *v12 = v0;
  v12[1] = sub_1B2076DEC;
  v13 = v0[6];
  v14 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEDB6538](v12, v13, sub_1B209893C, v10, v14);
}

void sub_1B208EFA4(void *a1, int a2, uint64_t a3, void *aBlock, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = _Block_copy(aBlock);
  v10 = sub_1B20A9B04();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = v10;
  v12[4] = a7;
  v12[5] = v11;
  v13 = a1;

  sub_1B2068230();
}

uint64_t MTCDDataStore.getAKCAuthorizations(completion:)(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B208F194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_1B20A98B4();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B208F270, 0, 0);
}

uint64_t sub_1B208F270()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[13] = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    v0[14] = v4;
    *v4 = v0;
    v4[1] = sub_1B208F460;

    return sub_1B20909D8(0);
  }

  else
  {
    v6 = v0[11];
    v7 = v0[8];
    v8 = v0[9];
    v9 = sub_1B205E940();
    (*(v8 + 16))(v6, v9, v7);
    v10 = sub_1B20A9894();
    v11 = sub_1B20A9C74();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1B1F9F000, v10, v11, "No alarmkit authorizations fetched", v12, 2u);
      MEMORY[0x1B2741310](v12, -1, -1);
    }

    v13 = v0[11];
    v14 = v0[8];
    v15 = v0[9];
    v16 = v0[6];

    (*(v15 + 8))(v13, v14);
    v16(0);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1B208F460(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_1B208F96C;
  }

  else
  {
    v4 = sub_1B208F594;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B208F594()
{
  v39 = v0;
  v1 = v0[15];
  v2 = v0[8];
  v3 = v0[9];
  if (!v1)
  {
    v18 = v0[11];
    v19 = sub_1B205E940();
    (*(v3 + 16))(v18, v19, v2);
    v20 = sub_1B20A9894();
    v21 = sub_1B20A9C74();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1B1F9F000, v20, v21, "No alarmkit authorizations fetched", v22, 2u);
      MEMORY[0x1B2741310](v22, -1, -1);
    }

    v23 = v0[11];
    v24 = v0[8];
    v25 = v0[9];
    v26 = v0[6];

    (*(v25 + 8))(v23, v24);
    v26(0);
    goto LABEL_20;
  }

  v4 = v0[10];
  v5 = sub_1B205E940();
  (*(v3 + 16))(v4, v5, v2);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C74();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[9];
  v10 = v0[10];
  v11 = v0[8];
  if (v8)
  {
    v37 = v0[10];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v38 = v13;
    *v12 = 136315138;
    v14 = type metadata accessor for AKCDAuthorization();
    v15 = MEMORY[0x1B2740030](v1, v14);
    v17 = sub_1B2061574(v15, v16, &v38);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1B1F9F000, v6, v7, "Fetched alarmkit authorizations: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B2741310](v13, -1, -1);
    MEMORY[0x1B2741310](v12, -1, -1);

    (*(v9 + 8))(v37, v11);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v27 = v0[15];
  if (v27 >> 62)
  {
    v28 = sub_1B20A9DE4();
    if (v28)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
LABEL_10:
      v38 = MEMORY[0x1E69E7CC0];
      result = sub_1B20A9EE4();
      if (v28 < 0)
      {
        __break(1u);
        return result;
      }

      v30 = 0;
      v31 = v0[15] & 0xC000000000000001;
      v32 = MEMORY[0x1E69E7D40];
      do
      {
        if (v31)
        {
          v33 = MEMORY[0x1B27403C0](v30, v1);
        }

        else
        {
          v33 = *(v1 + 8 * v30 + 32);
        }

        v34 = v33;
        ++v30;
        (*((*v32 & *v33) + 0x60))();

        sub_1B20A9EC4();
        sub_1B20A9EF4();
        sub_1B20A9F04();
        sub_1B20A9ED4();
      }

      while (v28 != v30);

      v35 = v38;
      goto LABEL_19;
    }
  }

  v35 = MEMORY[0x1E69E7CC0];
LABEL_19:
  (v0[6])(v35);

LABEL_20:

  v36 = v0[1];

  return v36();
}

uint64_t sub_1B208F96C()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[8];
  v4 = v0[9];
  v5 = sub_1B205E940();
  (*(v4 + 16))(v2, v5, v3);
  v6 = v1;
  v7 = sub_1B20A9894();
  v8 = sub_1B20A9C84();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[16];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1B1F9F000, v7, v8, "Failed to fetch alarmkit authorizations: %@", v10, 0xCu);
    sub_1B20985B4(v11, &qword_1EB79F4B0, &qword_1B20B8ED8);
    MEMORY[0x1B2741310](v11, -1, -1);
    MEMORY[0x1B2741310](v10, -1, -1);
  }

  v14 = v0[16];
  v15 = v0[12];
  v16 = v0[8];
  v17 = v0[9];
  v18 = v0[6];

  (*(v17 + 8))(v15, v16);
  v18(0);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1B208FB38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B208FBC8;

  return sub_1B20909D8(0);
}

uint64_t sub_1B208FBC8(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

void sub_1B208FD04(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a6;
  v10[4] = v9;
  v11 = a1;

  sub_1B2068230();
}

uint64_t MTCDDataStore.getAKCAuthorizations(predicate:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v9 = a1;

  v10 = v3;
  os_unfair_lock_lock(v8 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v8 + 4);
  v11 = *&v10[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v11)
  {
    v12 = *&v10[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v11(v13);
    sub_1B1FA6834(v11, v12);
  }
}

uint64_t sub_1B208FEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_1B20A98B4();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B208FFB8, 0, 0);
}

uint64_t sub_1B208FFB8()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[14] = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    v0[15] = v4;
    *v4 = v0;
    v4[1] = sub_1B209020C;
    v5 = v0[6];

    return sub_1B20909D8(v5);
  }

  else
  {
    v7 = v0[12];
    v8 = v0[9];
    v9 = v0[10];
    v10 = v0[6];
    v11 = sub_1B205E940();
    (*(v9 + 16))(v7, v11, v8);
    v12 = v10;
    v13 = sub_1B20A9894();
    v14 = sub_1B20A9C74();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = v0[6];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v12;
      *v17 = v15;
      v18 = v12;
      _os_log_impl(&dword_1B1F9F000, v13, v14, "No alarmkit authorizations fetched with predicate: %@", v16, 0xCu);
      sub_1B20985B4(v17, &qword_1EB79F4B0, &qword_1B20B8ED8);
      MEMORY[0x1B2741310](v17, -1, -1);
      MEMORY[0x1B2741310](v16, -1, -1);
    }

    v19 = v0[12];
    v20 = v0[9];
    v21 = v0[10];
    v22 = v0[7];

    (*(v21 + 8))(v19, v20);
    v22(0);

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_1B209020C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_1B20907D0;
  }

  else
  {

    v4 = sub_1B2090328;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B2090328()
{
  v48 = v0;
  v1 = v0[16];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[6];
  if (!v1)
  {
    v21 = v0[12];
    v22 = sub_1B205E940();
    (*(v3 + 16))(v21, v22, v2);
    v23 = v4;
    v24 = sub_1B20A9894();
    v25 = sub_1B20A9C74();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = v0[6];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v23;
      *v28 = v26;
      v29 = v23;
      _os_log_impl(&dword_1B1F9F000, v24, v25, "No alarmkit authorizations fetched with predicate: %@", v27, 0xCu);
      sub_1B20985B4(v28, &qword_1EB79F4B0, &qword_1B20B8ED8);
      MEMORY[0x1B2741310](v28, -1, -1);
      MEMORY[0x1B2741310](v27, -1, -1);
    }

    v30 = v0[12];
    v31 = v0[9];
    v32 = v0[10];
    v33 = v0[7];

    (*(v32 + 8))(v30, v31);
    v33(0);
    goto LABEL_20;
  }

  v5 = v0[13];
  v6 = sub_1B205E940();
  (*(v3 + 16))(v5, v6, v2);
  v7 = v4;

  v8 = sub_1B20A9894();
  v9 = sub_1B20A9C74();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[13];
  v12 = v0[9];
  v13 = v0[10];
  if (v10)
  {
    v44 = v0[6];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = v46;
    *v14 = 136315394;
    v16 = type metadata accessor for AKCDAuthorization();
    v17 = MEMORY[0x1B2740030](v1, v16);
    v45 = v12;
    v19 = sub_1B2061574(v17, v18, &v47);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v7;
    *v15 = v44;
    v20 = v7;
    _os_log_impl(&dword_1B1F9F000, v8, v9, "Fetched alarmkit authorizations: %s with predicate: %@", v14, 0x16u);
    sub_1B20985B4(v15, &qword_1EB79F4B0, &qword_1B20B8ED8);
    MEMORY[0x1B2741310](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x1B2741310](v46, -1, -1);
    MEMORY[0x1B2741310](v14, -1, -1);

    (*(v13 + 8))(v11, v45);
  }

  else
  {

    (*(v13 + 8))(v11, v12);
  }

  v34 = v0[16];
  if (v34 >> 62)
  {
    v35 = sub_1B20A9DE4();
    if (v35)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
LABEL_10:
      v47 = MEMORY[0x1E69E7CC0];
      result = sub_1B20A9EE4();
      if (v35 < 0)
      {
        __break(1u);
        return result;
      }

      v37 = 0;
      v38 = v0[16] & 0xC000000000000001;
      v39 = MEMORY[0x1E69E7D40];
      do
      {
        if (v38)
        {
          v40 = MEMORY[0x1B27403C0](v37, v1);
        }

        else
        {
          v40 = *(v1 + 8 * v37 + 32);
        }

        v41 = v40;
        ++v37;
        (*((*v39 & *v40) + 0x60))();

        sub_1B20A9EC4();
        sub_1B20A9EF4();
        sub_1B20A9F04();
        sub_1B20A9ED4();
      }

      while (v35 != v37);

      v42 = v47;
      goto LABEL_19;
    }
  }

  v42 = MEMORY[0x1E69E7CC0];
LABEL_19:
  (v0[7])(v42);

LABEL_20:

  v43 = v0[1];

  return v43();
}

uint64_t sub_1B20907D0()
{
  v1 = v0[17];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[6];

  v6 = sub_1B205E940();
  (*(v3 + 16))(v2, v6, v4);
  v7 = v5;
  v8 = v1;
  v9 = sub_1B20A9894();
  v10 = sub_1B20A9C84();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[17];
    v12 = v0[6];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412546;
    *(v13 + 4) = v7;
    *v14 = v12;
    *(v13 + 12) = 2112;
    v15 = v7;
    v16 = v11;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v17;
    v14[1] = v17;
    _os_log_impl(&dword_1B1F9F000, v9, v10, "Failed to fetch alarmkit authorizations with predicate: %@ error: %@ ", v13, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4B0, &qword_1B20B8ED8);
    swift_arrayDestroy();
    MEMORY[0x1B2741310](v14, -1, -1);
    MEMORY[0x1B2741310](v13, -1, -1);
  }

  v18 = v0[17];
  v20 = v0[10];
  v19 = v0[11];
  v21 = v0[9];
  v22 = v0[7];

  (*(v20 + 8))(v19, v21);
  v22(0);

  v23 = v0[1];

  return v23();
}

uint64_t sub_1B20909D8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1B20A9D34();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  sub_1B20A9BA4();
  v2[8] = sub_1B20A9B94();
  v5 = sub_1B20A9B64();
  v2[9] = v5;
  v2[10] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B2090ACC, v5, v4);
}

uint64_t sub_1B2090ACC()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v0[11] = [*(v4 + 112) viewContext];
  v6 = swift_allocObject();
  v0[12] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v7 = v5;

  v8 = swift_task_alloc();
  v0[13] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F520, &qword_1B20B9280);
  *v8 = v0;
  v8[1] = sub_1B2090C30;
  v10 = v0[7];

  return MEMORY[0x1EEDB6538](v0 + 2, v10, sub_1B2097C30, v6, v9);
}

uint64_t sub_1B2090C30()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  *(*v1 + 112) = v0;

  (*(v5 + 8))(v4, v6);

  v7 = *(v2 + 80);
  v8 = *(v2 + 72);
  if (v0)
  {
    v9 = sub_1B2098890;
  }

  else
  {
    v9 = sub_1B20988A8;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1B2090F00(uint64_t a1)
{
  sub_1B20982AC(0, &qword_1EB79CE38, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4D0, &qword_1B20B8F70);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B20B8E70;
  *(v2 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F510, &qword_1B20B91C8);
  *(v2 + 64) = sub_1B209849C(&qword_1EB79CE50, &qword_1EB79F510, &qword_1B20B91C8, MEMORY[0x1E6969E28]);
  *(v2 + 32) = a1;

  return sub_1B20A9C64();
}

uint64_t sub_1B2090FF4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B20910EC;

  return v6(a1);
}

uint64_t sub_1B20910EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_1B20911E4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F588, &qword_1B20B9598);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F590, &unk_1B20B95A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B2091318(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F570, &qword_1B20B9570);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B2091424(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F548, &qword_1B20B9540);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1B2091528(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4F0, &qword_1B20B9128);
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

unint64_t sub_1B20915B0()
{
  result = qword_1EB79F4B8;
  if (!qword_1EB79F4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB79F4B8);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B2091644()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B20684D4;

  return sub_1B2066104(v3, v4, v5, v2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B20916FC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void *sub_1B209175C(uint64_t *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result didFinishLoadingStore];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B2091880()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B2098894;

  return sub_1B20689A4(v2, v3, v5, v4);
}

uint64_t sub_1B209192C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

id sub_1B209193C()
{
  v1 = *(v0 + 16);
  v18 = *(v0 + 24);
  if (v1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B20A9DE4())
  {
    v16 = v1 & 0xFFFFFFFFFFFFFF8;
    v17 = v1 & 0xC000000000000001;
    v3 = 4;
    v15 = v1;
    while (1)
    {
      v4 = v3 - 4;
      if (v17)
      {
        v5 = MEMORY[0x1B27403C0](v3 - 4, v1);
      }

      else
      {
        if (v4 >= *(v16 + 16))
        {
          goto LABEL_12;
        }

        v5 = *(v1 + 8 * v3);
      }

      v6 = v5;
      v7 = v3 - 3;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      type metadata accessor for MTCDAlarm();
      v8 = i;
      v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      v10 = MEMORY[0x1E69E7D40];
      (*((*MEMORY[0x1E69E7D40] & *v9) + 0x50))(v6);
      type metadata accessor for MTCDSound();
      v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      v12 = [v6 sound];
      (*((*v10 & *v11) + 0x50))();

      [v9 setSound_];
      i = v8;
      v1 = v15;

      ++v3;
      if (v7 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
  v19 = 0;
  if ([v18 save_])
  {
    return v19;
  }

  v14 = v19;
  sub_1B20A9754();

  return swift_willThrow();
}

uint64_t sub_1B2091B6C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B2098894;

  return sub_1B206A43C(v2, v3, v5, v4);
}

void *sub_1B2091C18(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B2091C98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B2091C38(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B2091E70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B2091C58(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B2091F7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B2091C78(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B2092080(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B2091C98(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F560, &qword_1B20B9558);
  v10 = *(sub_1B20A9874() - 8);
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
  v15 = *(sub_1B20A9874() - 8);
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

char *sub_1B2091E70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F570, &qword_1B20B9570);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B2091F7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F550, &qword_1B20B9548);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1B2092080(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F578, &qword_1B20B9578);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB79F640, &qword_1B20B8D08) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB79F640, &qword_1B20B8D08) - 8);
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

uint64_t sub_1B2092270(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1B20AA004();
  sub_1B20A9AA4();
  v8 = sub_1B20AA024();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1B20A9F84() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1B2092DE0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1B20923C0(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1B20924EC(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1B20924EC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1B20AA004();
  sub_1B20A9AA4();
  v6 = sub_1B20AA024();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1B20A9F84() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B2092628();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1B2092C1C(v8);
  *v2 = v16;
  return v12;
}

void *sub_1B2092628()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F580, &qword_1B20B9580);
  v2 = *v0;
  v3 = sub_1B20A9E44();
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

uint64_t sub_1B2092784(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F580, &qword_1B20B9580);
  result = sub_1B20A9E54();
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
      sub_1B20AA004();

      sub_1B20A9AA4();
      result = sub_1B20AA024();
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

uint64_t sub_1B20929BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F580, &qword_1B20B9580);
  result = sub_1B20A9E54();
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
      sub_1B20AA004();
      sub_1B20A9AA4();
      result = sub_1B20AA024();
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

unint64_t sub_1B2092C1C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1B20A9DB4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1B20AA004();

        sub_1B20A9AA4();
        v10 = sub_1B20AA024();

        v11 = v10 & v7;
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

uint64_t sub_1B2092DE0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1B20929BC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1B2092628();
      goto LABEL_16;
    }

    sub_1B2092784(v8 + 1);
  }

  v10 = *v4;
  sub_1B20AA004();
  sub_1B20A9AA4();
  result = sub_1B20AA024();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1B20A9F84();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1B20A9FA4();
  __break(1u);
  return result;
}

uint64_t sub_1B2092F60(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1B2094554(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1B2092FDC(v6);
  return sub_1B20A9ED4();
}

void sub_1B2092FDC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1B20A9F64();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1B20982AC(0, &qword_1EB79CE30, off_1E7B0BB68);
        v6 = sub_1B20A9B34();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1B2093334(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1B20930F0(0, v2, 1, a1);
  }
}

void sub_1B20930F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = sub_1B20A9834();
  v8 = MEMORY[0x1EEE9AC00](v38);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v32 = a2;
  if (a3 != a2)
  {
    v13 = *a4;
    v36 = (v10 + 8);
    v39 = v13;
    v14 = v13 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v34 = v14;
    v35 = a3;
    v16 = *(v39 + 8 * a3);
    v33 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = v16;
      v20 = v18;
      v21 = [v19 lastModified];
      if (!v21)
      {
        break;
      }

      v22 = v21;
      sub_1B20A9804();

      v23 = [v20 lastModified];
      if (!v23)
      {
        goto LABEL_13;
      }

      v24 = v23;
      v25 = v37;
      sub_1B20A9804();

      v40 = sub_1B20A9814();
      v26 = v17;
      v27 = *v36;
      v28 = v25;
      v29 = v38;
      (*v36)(v28, v38);
      v27(v12, v29);

      if (v40 == -1)
      {
        if (!v39)
        {
          goto LABEL_14;
        }

        v30 = *v14;
        v16 = *(v14 + 8);
        *v14 = v16;
        *(v14 + 8) = v30;
        v14 -= 8;
        ++v17;
        if (v26 != -1)
        {
          continue;
        }
      }

      a3 = v35 + 1;
      v14 = v34 + 8;
      v15 = v33 - 1;
      if (v35 + 1 == v32)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }
}

void sub_1B2093334(id *a1, uint64_t a2, char **a3, int64_t a4)
{
  v6 = v4;
  v140 = a1;
  v152 = sub_1B20A9834();
  v9 = MEMORY[0x1EEE9AC00](v152);
  v149 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v134 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v143 = &v134 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v144 = &v134 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v136 = &v134 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v148 = a3;
  v22 = a3[1];
  if (v22 >= 1)
  {
    v135 = (&v134 - v21);
    v23 = 0;
    v151 = (v20 + 8);
    v24 = MEMORY[0x1E69E7CC0];
    v25 = &selRef_handleBedtimeForAlarm_date_;
    v139 = a4;
    v153 = v13;
    while (1)
    {
      v26 = v23;
      v27 = v23 + 1;
      v141 = v23;
      if ((v23 + 1) < v22)
      {
        v146 = v22;
        v137 = v24;
        v138 = v6;
        v28 = *v148;
        v29 = *&(*v148)[8 * v23];
        v30 = *&(*v148)[8 * v27];
        v31 = v29;
        v32 = [v30 v25[288]];
        if (!v32)
        {
          goto LABEL_142;
        }

        v33 = v32;
        v150 = v30;
        v5 = v135;
        sub_1B20A9804();

        v34 = [v31 v25[288]];
        if (!v34)
        {
          goto LABEL_143;
        }

        v35 = v34;
        v23 = v136;
        sub_1B20A9804();

        v147 = sub_1B20A9814();
        v36 = v152;
        v37 = *v151;
        (*v151)(v23, v152);
        v145 = v37;
        v37(v5, v36);

        v38 = (v141 + 2);
        v142 = 8 * v141;
        v39 = &v28[8 * v141 + 16];
        while (1)
        {
          v40 = v146;
          if (v146 == v38)
          {
            break;
          }

          v41 = *(v39 - 1);
          v42 = *v39;
          v43 = v41;
          v44 = [v42 v25[288]];
          if (!v44)
          {
            goto LABEL_137;
          }

          v45 = v44;
          v46 = v144;
          sub_1B20A9804();

          v47 = [v43 v25[288]];
          if (!v47)
          {
            goto LABEL_136;
          }

          v48 = v47;
          LODWORD(v150) = v147 == -1;
          v49 = v143;
          sub_1B20A9804();

          v50 = sub_1B20A9814();
          v51 = v49;
          v23 = v46;
          v52 = v152;
          v5 = v145;
          (v145)(v51, v152);
          v5(v23, v52);

          ++v38;
          ++v39;
          v13 = v153;
          v25 = &selRef_handleBedtimeForAlarm_date_;
          if (((v150 ^ (v50 != -1)) & 1) == 0)
          {
            v40 = (v38 - 1);
            break;
          }
        }

        v24 = v137;
        v6 = v138;
        a4 = v139;
        v26 = v141;
        v53 = v142;
        if (v147 == -1)
        {
          if (v40 < v141)
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
            return;
          }

          if (v141 < v40)
          {
            v54 = 8 * v40 - 8;
            v55 = v40;
            v56 = v141;
            do
            {
              if (v56 != --v55)
              {
                v58 = *v148;
                if (!*v148)
                {
                  goto LABEL_140;
                }

                v57 = *&v58[v53];
                *&v58[v53] = *&v58[v54];
                *&v58[v54] = v57;
              }

              ++v56;
              v54 -= 8;
              v53 += 8;
            }

            while (v56 < v55);
          }
        }

        v27 = v40;
      }

      v59 = v148[1];
      if (v27 >= v59)
      {
        v23 = v27;
        if (v27 < v26)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v60 = v27;
        v79 = __OFSUB__(v27, v26);
        v61 = v27 - v26;
        if (v79)
        {
          goto LABEL_128;
        }

        if (v61 >= a4)
        {
          goto LABEL_31;
        }

        v62 = (v26 + a4);
        if (__OFADD__(v26, a4))
        {
          goto LABEL_129;
        }

        if (v62 >= v59)
        {
          v62 = v148[1];
        }

        if (v62 < v26)
        {
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        if (v60 == v62)
        {
LABEL_31:
          v23 = v60;
          if (v60 < v26)
          {
            goto LABEL_127;
          }
        }

        else
        {
          v137 = v24;
          v138 = v6;
          v150 = *v148;
          v112 = &v150[8 * v60 - 8];
          v113 = (v26 - v60);
          v142 = v62;
          do
          {
            v146 = v112;
            v147 = v60;
            v114 = *&v150[8 * v60];
            v145 = v113;
            while (1)
            {
              v115 = *v112;
              v5 = v114;
              v116 = v115;
              v117 = [v5 v25[288]];
              if (!v117)
              {
                goto LABEL_133;
              }

              v118 = v117;
              sub_1B20A9804();

              v119 = [v116 v25[288]];
              if (!v119)
              {
                goto LABEL_134;
              }

              v120 = v119;
              v121 = v149;
              sub_1B20A9804();

              v122 = sub_1B20A9814();
              v123 = v13;
              v124 = *v151;
              v125 = v121;
              v126 = v152;
              (*v151)(v125, v152);
              v124(v123, v126);

              if (v122 != -1)
              {
                break;
              }

              if (!v150)
              {
                goto LABEL_135;
              }

              v127 = *v112;
              v114 = *(v112 + 1);
              *v112 = v114;
              *(v112 + 1) = v127;
              v112 -= 8;
              v128 = __CFADD__(v113++, 1);
              v13 = v153;
              v25 = &selRef_handleBedtimeForAlarm_date_;
              if (v128)
              {
                goto LABEL_86;
              }
            }

            v13 = v153;
            v25 = &selRef_handleBedtimeForAlarm_date_;
LABEL_86:
            v60 = v147 + 1;
            v112 = v146 + 8;
            v113 = v145 - 1;
          }

          while (v147 + 1 != v142);
          v23 = v142;
          v24 = v137;
          v6 = v138;
          if (v142 < v141)
          {
            goto LABEL_127;
          }
        }
      }

      v63 = v24;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v24 = v63;
      }

      else
      {
        v24 = sub_1B2091424(0, *(v63 + 2) + 1, 1, v63);
      }

      v65 = *(v24 + 2);
      v64 = *(v24 + 3);
      v66 = v65 + 1;
      if (v65 >= v64 >> 1)
      {
        v24 = sub_1B2091424((v64 > 1), v65 + 1, 1, v24);
      }

      *(v24 + 2) = v66;
      v67 = &v24[16 * v65];
      *(v67 + 4) = v141;
      *(v67 + 5) = v23;
      v5 = *v140;
      if (!*v140)
      {
        goto LABEL_141;
      }

      if (v65)
      {
        while (1)
        {
          v68 = v66 - 1;
          if (v66 >= 4)
          {
            break;
          }

          if (v66 == 3)
          {
            v69 = *(v24 + 4);
            v70 = *(v24 + 5);
            v79 = __OFSUB__(v70, v69);
            v71 = v70 - v69;
            v72 = v79;
LABEL_53:
            if (v72)
            {
              goto LABEL_116;
            }

            v85 = &v24[16 * v66];
            v87 = *v85;
            v86 = *(v85 + 1);
            v88 = __OFSUB__(v86, v87);
            v89 = v86 - v87;
            v90 = v88;
            if (v88)
            {
              goto LABEL_119;
            }

            v91 = &v24[16 * v68 + 32];
            v93 = *v91;
            v92 = *(v91 + 1);
            v79 = __OFSUB__(v92, v93);
            v94 = v92 - v93;
            if (v79)
            {
              goto LABEL_122;
            }

            if (__OFADD__(v89, v94))
            {
              goto LABEL_123;
            }

            if (v89 + v94 >= v71)
            {
              if (v71 < v94)
              {
                v68 = v66 - 2;
              }

              goto LABEL_74;
            }

            goto LABEL_67;
          }

          v95 = &v24[16 * v66];
          v97 = *v95;
          v96 = *(v95 + 1);
          v79 = __OFSUB__(v96, v97);
          v89 = v96 - v97;
          v90 = v79;
LABEL_67:
          if (v90)
          {
            goto LABEL_118;
          }

          v98 = &v24[16 * v68];
          v100 = *(v98 + 4);
          v99 = *(v98 + 5);
          v79 = __OFSUB__(v99, v100);
          v101 = v99 - v100;
          if (v79)
          {
            goto LABEL_121;
          }

          if (v101 < v89)
          {
            goto LABEL_3;
          }

LABEL_74:
          v106 = v68 - 1;
          if (v68 - 1 >= v66)
          {
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
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            goto LABEL_130;
          }

          if (!*v148)
          {
            goto LABEL_138;
          }

          v107 = v24;
          v108 = *&v24[16 * v106 + 32];
          v109 = *&v24[16 * v68 + 40];
          sub_1B2093CD8(&(*v148)[8 * v108], &(*v148)[8 * *&v24[16 * v68 + 32]], &(*v148)[8 * v109], v5);
          if (v6)
          {
            goto LABEL_110;
          }

          if (v109 < v108)
          {
            goto LABEL_112;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v110 = v107;
          }

          else
          {
            v110 = sub_1B2094270(v107);
          }

          v13 = v153;
          if (v106 >= *(v110 + 2))
          {
            goto LABEL_113;
          }

          v111 = &v110[16 * v106];
          *(v111 + 4) = v108;
          *(v111 + 5) = v109;
          v154 = v110;
          sub_1B20941E4(v68);
          v24 = v154;
          v66 = *(v154 + 2);
          if (v66 <= 1)
          {
            goto LABEL_3;
          }
        }

        v73 = &v24[16 * v66 + 32];
        v74 = *(v73 - 64);
        v75 = *(v73 - 56);
        v79 = __OFSUB__(v75, v74);
        v76 = v75 - v74;
        if (v79)
        {
          goto LABEL_114;
        }

        v78 = *(v73 - 48);
        v77 = *(v73 - 40);
        v79 = __OFSUB__(v77, v78);
        v71 = v77 - v78;
        v72 = v79;
        if (v79)
        {
          goto LABEL_115;
        }

        v80 = &v24[16 * v66];
        v82 = *v80;
        v81 = *(v80 + 1);
        v79 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v79)
        {
          goto LABEL_117;
        }

        v79 = __OFADD__(v71, v83);
        v84 = v71 + v83;
        if (v79)
        {
          goto LABEL_120;
        }

        if (v84 >= v76)
        {
          v102 = &v24[16 * v68 + 32];
          v104 = *v102;
          v103 = *(v102 + 1);
          v79 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v79)
          {
            goto LABEL_124;
          }

          if (v71 < v105)
          {
            v68 = v66 - 2;
          }

          goto LABEL_74;
        }

        goto LABEL_53;
      }

LABEL_3:
      v22 = v148[1];
      a4 = v139;
      if (v23 >= v22)
      {
        goto LABEL_99;
      }
    }
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_99:
  v5 = *v140;
  if (!*v140)
  {
    goto LABEL_144;
  }

  v23 = v24;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v129 = v23;
  }

  else
  {
LABEL_131:
    v129 = sub_1B2094270(v23);
  }

  v154 = v129;
  v23 = *(v129 + 2);
  if (v23 >= 2)
  {
    while (*v148)
    {
      v130 = *&v129[16 * v23];
      v131 = v129;
      v132 = *&v129[16 * v23 + 24];
      sub_1B2093CD8(&(*v148)[8 * v130], &(*v148)[8 * *&v129[16 * v23 + 16]], &(*v148)[8 * v132], v5);
      if (v6)
      {
        goto LABEL_110;
      }

      if (v132 < v130)
      {
        goto LABEL_125;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v131 = sub_1B2094270(v131);
      }

      if (v23 - 2 >= *(v131 + 2))
      {
        goto LABEL_126;
      }

      v133 = &v131[16 * v23];
      *v133 = v130;
      *(v133 + 1) = v132;
      v154 = v131;
      sub_1B20941E4(v23 - 1);
      v129 = v154;
      v23 = *(v154 + 2);
      if (v23 <= 1)
      {
        goto LABEL_110;
      }
    }

    goto LABEL_139;
  }

LABEL_110:
}

uint64_t sub_1B2093CD8(void **a1, void **a2, void **a3, void **a4)
{
  v65 = sub_1B20A9834();
  v8 = *(v65 - 8);
  v9 = MEMORY[0x1EEE9AC00](v65);
  v61 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v63 = (&v58 - v12);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v60 = &v58 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v62 = (&v58 - v15);
  v16 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v16 = a2 - a1;
  }

  v17 = v16 >> 3;
  v18 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v18 = a3 - a2;
  }

  v19 = v18 >> 3;
  if (v17 < v18 >> 3)
  {
    if (a4 != a1 || &a1[v17] <= a4)
    {
      memmove(a4, a1, 8 * v17);
    }

    v67 = &a4[v17];
    if (a2 - a1 >= 8)
    {
      v20 = a2;
      if (a2 < a3)
      {
        v61 = (v8 + 8);
        v21 = &selRef_handleBedtimeForAlarm_date_;
        v66 = a3;
        v22 = v62;
        while (1)
        {
          v23 = *v20;
          v63 = a4;
          v24 = *a4;
          v25 = v23;
          v26 = v24;
          result = [v25 v21[288]];
          if (!result)
          {
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }

          v28 = result;
          v64 = a1;
          sub_1B20A9804();

          result = [v26 v21[288]];
          if (!result)
          {
            goto LABEL_48;
          }

          v29 = result;
          v30 = v60;
          sub_1B20A9804();

          v31 = sub_1B20A9814();
          v32 = *v61;
          v33 = v65;
          (*v61)(v30, v65);
          v32(v22, v33);

          if (v31 != -1)
          {
            break;
          }

          v35 = v20;
          a4 = v63;
          v34 = v64;
          v37 = v64 == v20++;
          v36 = v66;
          if (!v37)
          {
            goto LABEL_16;
          }

LABEL_17:
          a1 = v34 + 1;
          v21 = &selRef_handleBedtimeForAlarm_date_;
          if (a4 >= v67 || v20 >= v36)
          {
            goto LABEL_41;
          }
        }

        v34 = v64;
        v35 = v63;
        a4 = v63 + 1;
        v36 = v66;
        if (v64 == v63)
        {
          goto LABEL_17;
        }

LABEL_16:
        *v34 = *v35;
        goto LABEL_17;
      }
    }

LABEL_41:
    a2 = a1;
    goto LABEL_43;
  }

  if (a4 != a2 || &a2[v19] <= a4)
  {
    memmove(a4, a2, 8 * v19);
  }

  v67 = &a4[v19];
  if (a3 - a2 < 8 || a2 <= a1)
  {
LABEL_43:
    if (a2 != a4 || a2 >= (a4 + ((v67 - a4 + (v67 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(a2, a4, 8 * (v67 - a4));
    }

    return 1;
  }

  v60 = (v8 + 8);
  v38 = &selRef_handleBedtimeForAlarm_date_;
  v64 = a1;
LABEL_29:
  v59 = a2;
  v39 = a2 - 1;
  v40 = (a3 - 1);
  v41 = v67;
  v62 = v39;
  while (1)
  {
    v66 = v40;
    v42 = *--v41;
    v43 = *v39;
    v44 = v42;
    v45 = v43;
    result = [v44 v38[288]];
    if (!result)
    {
      goto LABEL_49;
    }

    v46 = result;
    v47 = a4;
    v48 = v63;
    sub_1B20A9804();

    result = [v45 v38[288]];
    if (!result)
    {
      break;
    }

    v49 = result;
    v50 = v61;
    sub_1B20A9804();

    v51 = sub_1B20A9814();
    v52 = *v60;
    v53 = v50;
    v54 = v65;
    (*v60)(v53, v65);
    v52(v48, v54);

    if (v51 == -1)
    {
      a3 = v66;
      a4 = v47;
      v56 = v64;
      v57 = v62;
      if (v66 + 8 != v59)
      {
        *v66 = *v62;
      }

      v38 = &selRef_handleBedtimeForAlarm_date_;
      if (v67 <= v47 || (a2 = v57, v57 <= v56))
      {
        a2 = v57;
        goto LABEL_43;
      }

      goto LABEL_29;
    }

    v55 = v66;
    a4 = v47;
    v39 = v62;
    if (v66 + 8 != v67)
    {
      *v66 = *v41;
    }

    v40 = v55 - 8;
    v67 = v41;
    v38 = &selRef_handleBedtimeForAlarm_date_;
    if (v41 <= a4)
    {
      v67 = v41;
      a2 = v59;
      goto LABEL_43;
    }
  }

LABEL_50:
  __break(1u);
  return result;
}
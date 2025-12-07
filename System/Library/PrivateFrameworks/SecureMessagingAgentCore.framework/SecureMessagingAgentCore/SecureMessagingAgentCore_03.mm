void DaemonPersister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:)()
{
  v88 = v0;
  v1 = *(v0 + 104);
  v2 = (*(**(v0 + 88) + 264))();
  v3 = *(v1 + 16);
  v4 = *(v0 + 96);
  v5 = *(v0 + 56);
  if (v2)
  {
    v3(*(v0 + 136), v5, v4);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 136);
    v84 = v3;
    if (v8)
    {
      log = v6;
      v10 = *(v0 + 128);
      v12 = *(v0 + 96);
      v11 = *(v0 + 104);
      v76 = *(v0 + 64);
      v77 = *(v0 + 72);
      v13 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v87[0] = v78;
      *v13 = 136315394;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, v87);
      *(v13 + 12) = 2080;
      v3(v10, v9, v12);
      v14 = String.init<A>(describing:)();
      v16 = v15;
      v17 = v12;
      v18 = *(v11 + 8);
      v18(v9, v17);
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v87);

      *(v13 + 14) = v19;
      _os_log_impl(&dword_26524C000, log, v7, "DaemonPersister saveEventsSinceLastKeyUpdate using persistence mode { identifier: %s, eventsSinceLastKeyUpdate: %s }", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v78, -1, -1);
      MEMORY[0x2667577B0](v13, -1, -1);
    }

    else
    {
      v34 = *(v0 + 96);
      v35 = *(v0 + 104);

      v18 = *(v35 + 8);
      v20 = (v18)(v9, v34);
    }

    if ((*(**(v0 + 88) + 192))(v20))
    {
      type metadata accessor for MLS.UniqueClientIdentifier();
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D008]);
      v36 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      *(v0 + 168) = v36;
      *(v0 + 176) = v37;
      v66 = v36;
      v67 = v37;

      outlined copy of Data._Representation(v66, v67);
      v68 = MLS.EventsSinceLastUpdate.messages.getter();
      MLS.EventsSinceLastUpdate.timeOfLastUpdate.getter();
      if ((*&v69 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v69 > -1.0)
      {
        if (v69 < 1.84467441e19)
        {
          v71 = *(v0 + 64);
          v70 = *(v0 + 72);
          v72 = v69;
          v73 = MLS.EventsSinceLastUpdate.isFirstKeyUpdate.getter();
          *(v0 + 40) = &type metadata for KeyUpdateModel;
          *(v0 + 48) = &protocol witness table for KeyUpdateModel;
          v74 = swift_allocObject();
          *(v0 + 16) = v74;
          *(v74 + 16) = v66;
          *(v74 + 24) = v67;
          *(v74 + 32) = v71;
          *(v74 + 40) = v70;
          *(v74 + 48) = v68;
          *(v74 + 56) = v72;
          *(v74 + 64) = v73 & 1;
          outlined copy of Data._Representation(v66, v67);

          v75 = swift_task_alloc();
          *(v0 + 184) = v75;
          *v75 = v0;
          v75[1] = DaemonPersister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:);

          SqliteStore.insert(_:)(v0 + 16);
          return;
        }

LABEL_27:
        __break(1u);
        return;
      }

      __break(1u);
      goto LABEL_27;
    }

    v46 = *(v0 + 120);
    v47 = *(v0 + 96);
    v48 = *(v0 + 56);

    v84(v46, v48, v47);

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v52 = *(v0 + 120);
      v51 = *(v0 + 128);
      v53 = *(v0 + 96);
      v83 = v18;
      v55 = *(v0 + 64);
      v54 = *(v0 + 72);
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v87[0] = v57;
      *v56 = 136315394;
      *(v56 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v54, v87);
      *(v56 + 12) = 2080;
      v84(v51, v52, v53);
      v58 = String.init<A>(describing:)();
      v60 = v59;
      v83(v52, v53);
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, v87);

      *(v56 + 14) = v61;
      _os_log_impl(&dword_26524C000, v49, v50, "DaemonPersister saveEventsSinceLastKeyUpdate called outside atomically block { identifier: %s, eventsSinceLastKeyUpdate: %s }", v56, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v57, -1, -1);
      MEMORY[0x2667577B0](v56, -1, -1);
    }

    else
    {
      v62 = *(v0 + 120);
      v63 = *(v0 + 96);

      v18(v62, v63);
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v64 = 6;
    *(v64 + 8) = 0;
    *(v64 + 16) = 0;
    swift_willThrow();

    v65 = *(v0 + 8);

    v65();
  }

  else
  {
    v3(*(v0 + 112), v5, v4);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v85 = v3;
      v23 = *(v0 + 128);
      loga = v22;
      v25 = *(v0 + 104);
      v24 = *(v0 + 112);
      v26 = *(v0 + 96);
      v27 = *(v0 + 64);
      v79 = *(v0 + 72);
      v28 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v87[0] = v82;
      *v28 = 136315394;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v79, v87);
      *(v28 + 12) = 2080;
      v85(v23, v24, v26);
      v29 = String.init<A>(describing:)();
      v31 = v30;
      (*(v25 + 8))(v24, v26);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, v87);

      *(v28 + 14) = v32;
      _os_log_impl(&dword_26524C000, v21, loga, "DaemonPersister saveEventsSinceLastKeyUpdate using inMemory mode { identifier: %s, eventsSinceLastKeyUpdate: %s }", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v82, -1, -1);
      MEMORY[0x2667577B0](v28, -1, -1);
    }

    else
    {
      v39 = *(v0 + 104);
      v38 = *(v0 + 112);
      v40 = *(v0 + 96);

      v33 = (*(v39 + 8))(v38, v40);
    }

    *(v0 + 200) = (*(**(v0 + 88) + 168))(v33);
    v86 = (*MEMORY[0x277D4CE98] + MEMORY[0x277D4CE98]);
    v41 = swift_task_alloc();
    *(v0 + 208) = v41;
    *v41 = v0;
    v41[1] = DaemonPersister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:);
    v42 = *(v0 + 72);
    v43 = *(v0 + 80);
    v45 = *(v0 + 56);
    v44 = *(v0 + 64);

    v86(v45, v44, v42, v43);
  }
}

uint64_t DaemonPersister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:)()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    outlined consume of Data._Representation(v2[21], v2[22]);
    v3 = v2[19];
    v4 = v2[20];
    v5 = DaemonPersister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 2);
    v3 = v2[19];
    v4 = v2[20];
    v5 = DaemonPersister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{
  v1 = v0[21];
  v2 = v0[22];

  outlined consume of Data._Representation(v1, v2);

  outlined consume of Data._Representation(v1, v2);

  v3 = v0[1];

  return v3();
}

{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = DaemonPersister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:);
  }

  else
  {

    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = DaemonPersister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  outlined consume of Data._Representation(v0[21], v0[22]);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t DaemonPersister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  type metadata accessor for MLSActor();
  v5[7] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x2822009F8](DaemonPersister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:), v7, v6);
}

uint64_t DaemonPersister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:)()
{
  v27 = v0;
  v1 = (*(**(v0 + 48) + 264))();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  if (v1)
  {
    if (v4)
    {
      v6 = *(v0 + 24);
      v5 = *(v0 + 32);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v26[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, v26);
      _os_log_impl(&dword_26524C000, v2, v3, "DaemonPersister loadEventsSinceLastKeyUpdate using persistence mode { identifier: %s }", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x2667577B0](v8, -1, -1);
      MEMORY[0x2667577B0](v7, -1, -1);
    }

    type metadata accessor for MLS.UniqueClientIdentifier();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D008]);
    v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    *(v0 + 80) = v9;
    *(v0 + 88) = v10;
    v21 = v9;
    v22 = v10;

    v23 = swift_task_alloc();
    *(v0 + 96) = v23;
    *v23 = v0;
    v23[1] = DaemonPersister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:);
    v16 = *(v0 + 24);
    v17 = *(v0 + 32);
    v18 = v21;
    v19 = v22;
    v20 = specialized SqliteStore.query<A>(_:);
  }

  else
  {
    if (v4)
    {
      v12 = *(v0 + 24);
      v11 = *(v0 + 32);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v26[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, v26);
      _os_log_impl(&dword_26524C000, v2, v3, "DaemonPersister loadEventsSinceLastKeyUpdate using inMemory mode { identifier: %s }", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x2667577B0](v14, -1, -1);
      MEMORY[0x2667577B0](v13, -1, -1);
    }

    *(v0 + 120) = (*(**(v0 + 48) + 168))();
    v25 = (*MEMORY[0x277D4CE50] + MEMORY[0x277D4CE50]);
    v15 = swift_task_alloc();
    *(v0 + 128) = v15;
    *v15 = v0;
    v15[1] = DaemonPersister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:);
    v16 = *(v0 + 32);
    v17 = *(v0 + 40);
    v18 = *(v0 + 16);
    v19 = *(v0 + 24);
    v20 = v25;
  }

  return v20(v18, v19, v16, v17);
}

{
  v1 = v0[13];

  v2 = *(v1 + 16);
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[2];
  if (v2)
  {
    v7 = *(v3 + 32);
    v8 = *(v3 + 40);
    v13 = v0[11];
    outlined copy of Data._Representation(v7, v8);

    MLS.EventsSinceLastUpdate.init(messages:timeOfLastUpdate:isFirstKeyUpdate:)();
    outlined consume of Data._Representation(v5, v13);

    outlined consume of Data._Representation(v7, v8);
    v9 = 0;
  }

  else
  {

    outlined consume of Data._Representation(v5, v4);
    v9 = 1;
  }

  Update = type metadata accessor for MLS.EventsSinceLastUpdate();
  (*(*(Update - 8) + 56))(v6, v9, 1, Update);
  v11 = v0[1];

  return v11();
}

{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = DaemonPersister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:);
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = DaemonPersister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[10];
  v2 = v0[11];

  outlined consume of Data._Representation(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t DaemonPersister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 104) = a1;
  *(v4 + 112) = v1;

  v5 = *(v3 + 72);
  v6 = *(v3 + 64);
  if (v1)
  {
    v7 = DaemonPersister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:);
  }

  else
  {
    v7 = DaemonPersister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t DaemonPersister.loadClientIdentifiersWithEvents()()
{
  v1[2] = v0;
  type metadata accessor for MLSActor();
  v1[3] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](DaemonPersister.loadClientIdentifiersWithEvents(), v3, v2);
}

{
  v1 = (*(**(v0 + 16) + 264))();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  if (v1)
  {
    if (v4)
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_26524C000, v2, v3, "DaemonPersister loadClientIdentifiersWithEvents using persistence mode", v5, 2u);
      MEMORY[0x2667577B0](v5, -1, -1);
    }

    v6 = *(v0 + 16);

    *(v0 + 48) = *(v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
    v12 = specialized SqliteStore.query<A>(_:);
    v7 = swift_task_alloc();
    *(v0 + 56) = v7;
    *v7 = v0;
    v8 = DaemonPersister.loadClientIdentifiersWithEvents();
  }

  else
  {
    if (v4)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_26524C000, v2, v3, "DaemonPersister loadClientIdentifiersWithEvents using inMemory mode", v9, 2u);
      MEMORY[0x2667577B0](v9, -1, -1);
    }

    v10 = *(v0 + 16);

    *(v0 + 104) = (*(*v10 + 168))();
    v12 = (*MEMORY[0x277D4CE58] + MEMORY[0x277D4CE58]);
    v7 = swift_task_alloc();
    *(v0 + 112) = v7;
    *v7 = v0;
    v8 = DaemonPersister.loadClientIdentifiersWithEvents();
  }

  v7[1] = v8;

  return v12();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[8];
  v4 = v0[2];

  v5 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4DataV_SayAFGTt0g5Tf4g_n(v3);

  v6 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4DataV_SayAFGTt0g5Tf4g_n(v1);

  specialized Set.union<A>(_:)(v6, v5);
  v8 = v7;

  v9 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy10Foundation4DataVG_15SecureMessaging3MLSO22UniqueClientIdentifierVsAE_pTg504_s24fg33AgentCore15DaemonPersisterC31loadj35IdentifiersWithEventsSay0aB03MLSO06i3H10k22VGyYaKFAI10Foundation4E7VKXEfU_0fgM4Core0oP0CTf1cn_nTf4ng_n(v8, v4);

  v11 = v0[1];
  if (!v2)
  {
    v10 = v9;
  }

  return v11(v10);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 128);
  v2 = *(v0 + 8);

  return v2(v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DaemonPersister.loadClientIdentifiersWithEvents()(uint64_t a1)
{
  v3 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v4 = v3[4];
    v5 = v3[5];

    return MEMORY[0x2822009F8](DaemonPersister.loadClientIdentifiersWithEvents(), v4, v5);
  }

  else
  {
    v6 = swift_task_alloc();
    v3[10] = v6;
    *v6 = v3;
    v6[1] = DaemonPersister.loadClientIdentifiersWithEvents();

    return specialized SqliteStore.query<A>(_:)();
  }
}

{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {

    v5 = v4[4];
    v6 = v4[5];
    v7 = DaemonPersister.loadClientIdentifiersWithEvents();
  }

  else
  {
    v4[12] = a1;
    v5 = v4[4];
    v6 = v4[5];
    v7 = DaemonPersister.loadClientIdentifiersWithEvents();
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = v4[4];
    v6 = v4[5];
    v7 = DaemonPersister.loadClientIdentifiersWithEvents();
  }

  else
  {

    v4[16] = a1;
    v5 = v4[4];
    v6 = v4[5];
    v7 = DaemonPersister.loadClientIdentifiersWithEvents();
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

void specialized Set.union<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v14[2] = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    outlined copy of Data._Representation(*v11, v13);
    specialized Set._Variant.insert(_:)(v14, v12, v13);
    outlined consume of Data._Representation(v14[0], v14[1]);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
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
}

uint64_t DaemonPersister.loadEvents(clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[47] = a2;
  v3[48] = v2;
  v3[46] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMR);
  v3[49] = v4;
  v3[50] = *(v4 - 8);
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v5 = type metadata accessor for MLS.OutgoingEventState();
  v3[55] = v5;
  v3[56] = *(v5 - 8);
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v6 = type metadata accessor for MLS.GroupVersion();
  v3[59] = v6;
  v3[60] = *(v6 - 8);
  v3[61] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v3[62] = v7;
  v3[63] = *(v7 - 8);
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v3[68] = v8;
  v3[69] = *(v8 - 8);
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v9 = type metadata accessor for MLS.UniqueClientIdentifier();
  v3[74] = v9;
  v3[75] = *(v9 - 8);
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  v3[83] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v3[84] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[85] = v11;
  v3[86] = v10;

  return MEMORY[0x2822009F8](DaemonPersister.loadEvents(clientIdentifier:), v11, v10);
}

uint64_t DaemonPersister.loadEvents(clientIdentifier:)()
{
  v65 = v0;
  v1 = *(v0 + 600);
  v2 = (*(**(v0 + 384) + 264))();
  *(v0 + 696) = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_logger;
  v3 = *(v1 + 16);
  *(v0 + 704) = v3;
  *(v0 + 712) = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v4 = *(v0 + 592);
  v5 = *(v0 + 376);
  if (v2)
  {
    v3(*(v0 + 664), v5, v4);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 664);
    v10 = *(v0 + 600);
    v11 = *(v0 + 592);
    if (v8)
    {
      v58 = v3;
      v12 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v64[0] = v60;
      *v12 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v7;
      v15 = v14;
      v16 = v11;
      v17 = *(v10 + 8);
      v17(v9, v16);
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v64);

      v19 = v12;
      v3 = v58;
      *(v19 + 1) = v18;
      v20 = v19;
      _os_log_impl(&dword_26524C000, v6, v57, "DaemonPersister loadEventsClientIdentifier using persistence mode { identifier: %s }", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      MEMORY[0x2667577B0](v60, -1, -1);
      MEMORY[0x2667577B0](v20, -1, -1);
    }

    else
    {

      v33 = v11;
      v17 = *(v10 + 8);
      v17(v9, v33);
    }

    *(v0 + 720) = v17;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D008]);
    v34 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    *(v0 + 728) = v34;
    *(v0 + 736) = v35;
    v63 = v35;
    v59 = v34;
    v3(*(v0 + 656), *(v0 + 376), *(v0 + 592));
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v0 + 656);
    v44 = *(v0 + 592);
    if (v42)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v64[0] = v46;
      *v45 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v17;
      v49 = v47;
      v51 = v50;
      v48(v43, v44);
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, v64);

      *(v45 + 4) = v52;
      _os_log_impl(&dword_26524C000, v40, v41, "DaemonPersister loadEventsClientIdentifier loading incoming events { identifier: %s }", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x2667577B0](v46, -1, -1);
      MEMORY[0x2667577B0](v45, -1, -1);
    }

    else
    {

      v17(v43, v44);
    }

    v53 = *(v0 + 384);
    v54 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say15SecureMessaging3MLSO17IncomingEventTypeOy_AE9AllMemberO10Foundation4DataVGGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    *(v0 + 744) = v54;
    *(v0 + 352) = v54;
    *(v0 + 752) = *(v53 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
    outlined copy of Data._Representation(v59, v63);
    v55 = swift_task_alloc();
    *(v0 + 760) = v55;
    *v55 = v0;
    v55[1] = DaemonPersister.loadEvents(clientIdentifier:);
    v37 = v59;
    v38 = v63;
    v39 = specialized SqliteStore.query<A>(_:);
  }

  else
  {
    v3(*(v0 + 608), v5, v4);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 608);
    v25 = *(v0 + 600);
    v26 = *(v0 + 592);
    if (v23)
    {
      v27 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v64[0] = v61;
      *v27 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v25 + 8))(v24, v26);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v64);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_26524C000, v21, v22, "DaemonPersister loadEventsClientIdentifier using inMemory mode { identifier: %s }", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      MEMORY[0x2667577B0](v61, -1, -1);
      MEMORY[0x2667577B0](v27, -1, -1);
    }

    else
    {

      v32 = (*(v25 + 8))(v24, v26);
    }

    *(v0 + 824) = (*(**(v0 + 384) + 168))(v32);
    v62 = (*MEMORY[0x277D4CDF0] + MEMORY[0x277D4CDF0]);
    v36 = swift_task_alloc();
    *(v0 + 832) = v36;
    *v36 = v0;
    v36[1] = DaemonPersister.loadEvents(clientIdentifier:);
    v37 = *(v0 + 368);
    v38 = *(v0 + 376);
    v39 = v62;
  }

  return v39(v37, v38);
}

{
  v200 = v0;
  v1 = *(v0 + 808);

  v196 = v1;
  v191 = *(v1 + 16);
  if (v191)
  {
    v3 = 0;
    v169 = (v0 + 272);
    v170 = (v0 + 240);
    v4 = (*(v0 + 808) + 32);
    v5 = *(v0 + 448);
    v167 = (v5 + 56);
    v168 = (v5 + 16);
    v6 = *(v0 + 504);
    v186 = (v6 + 16);
    v7 = *(v0 + 480);
    v166 = (v7 + 16);
    v152 = (v5 + 8);
    v185 = (v6 + 8);
    v179 = (v7 + 8);
    v164 = *(v0 + 392);
    v165 = *(v0 + 400);
    v8 = *(v0 + 816);
    while (1)
    {
      if (v3 >= *(v196 + 16))
      {
        __break(1u);
        return result;
      }

      v10 = v4[2];
      v9 = v4[3];
      v11 = v4[4];
      *(v0 + 96) = v4[5];
      v12 = v4[1];
      *(v0 + 16) = *v4;
      *(v0 + 32) = v12;
      *(v0 + 64) = v9;
      *(v0 + 80) = v11;
      *(v0 + 48) = v10;
      outlined init with copy of OutgoingEventModel(v0 + 16, v0 + 112);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      if (v8)
      {
        v142 = *(v0 + 736);
        v143 = *(v0 + 728);
        outlined consume of Data._Representation(v143, v142);
        outlined consume of Data._Representation(v143, v142);
        outlined consume of Data._Representation(v143, v142);
        outlined destroy of OutgoingEventModel(v0 + 16);

        v141 = *(v0 + 8);
        goto LABEL_38;
      }

      v13 = *(v0 + 56);
      v14 = *(v0 + 328);
      if (v13 >> 60 == 15 || (v15 = *(v0 + 72), v15 >> 60 == 15))
      {
        v194 = *(v0 + 320);
        (*(v0 + 704))(*(v0 + 616), *(v0 + 376), *(v0 + 592));

        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.default.getter();

        v192 = v17;
        v18 = os_log_type_enabled(v16, v17);
        v19 = *(v0 + 720);
        v20 = *(v0 + 616);
        v21 = *(v0 + 592);
        if (v18)
        {
          v197 = v3;
          v22 = swift_slowAlloc();
          v189 = swift_slowAlloc();
          v199[0] = v189;
          *v22 = 136315394;
          _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
          v23 = dispatch thunk of CustomStringConvertible.description.getter();
          v24 = v4;
          v26 = v25;
          v19(v20, v21);
          v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v26, v199);
          v4 = v24;

          *(v22 + 4) = v27;
          *(v22 + 12) = 2080;
          v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v194, v14, v199);

          *(v22 + 14) = v28;
          _os_log_impl(&dword_26524C000, v16, v192, "DaemonPersister loadEventsClientIdentifier loading outgoing events - skip nil event { identifier: %s, event: %s }", v22, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2667577B0](v189, -1, -1);
          v29 = v22;
          v3 = v197;
          MEMORY[0x2667577B0](v29, -1, -1);

          result = outlined destroy of OutgoingEventModel(v0 + 16);
        }

        else
        {

          outlined destroy of OutgoingEventModel(v0 + 16);

          result = (v19)(v20, v21);
        }

        goto LABEL_4;
      }

      v188 = v4;
      v30 = *(v0 + 64);
      v193 = *(v0 + 48);
      v195 = *(v0 + 56);
      outlined copy of Data?(v193, v13);
      v190 = v30;
      outlined copy of Data?(v30, v15);

      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      v198 = v3;
      v31 = *(v0 + 336);
      v32 = *(v0 + 344);
      v33 = *(v0 + 360);
      if (!*(v33 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 336), *(v0 + 344)), (v34 & 1) == 0))
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v199[0] = v33;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(MEMORY[0x277D84F90], v31, v32, isUniquelyReferenced_nonNull_native);

        *(v0 + 360) = v199[0];
      }

      lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.OutgoingEventType<MLS.AllMember, Data> and conformance MLS.OutgoingEventType<A, B>, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR, MEMORY[0x277D4CED0]);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.GroupVersion and conformance MLS.GroupVersion, MEMORY[0x277D4CC78], MEMORY[0x277D4CC88]);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      v36 = *(v0 + 88);
      v187 = v15;
      v180 = v31;
      if (v36 >> 60 != 15)
      {
        break;
      }

      v37 = specialized Dictionary.subscript.modify(v170, v31, v32);
      if (*v38)
      {
        v39 = v38;
        v171 = v37;
        v182 = v32;
        v40 = *(v0 + 536);
        v42 = *(v0 + 488);
        v41 = *(v0 + 496);
        v43 = *(v0 + 472);
        v44 = *(v0 + 424);
        v45 = *(v0 + 408);
        (*v167)(v44, 1, 1, *(v0 + 440));
        v46 = *(v164 + 48);
        v47 = *(v164 + 64);
        type = *v186;
        (*v186)(v45, v40, v41);
        outlined init with take of MLS.OutgoingEventState?(v44, v45 + v46, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
        (*v166)(v45 + v47, v42, v43);
        v48 = *v39;
        v49 = swift_isUniquelyReferenced_nonNull_native();
        *v39 = v48;
        if ((v49 & 1) == 0)
        {
          v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48[2] + 1, 1, v48);
          *v39 = v48;
        }

        v51 = v48[2];
        v50 = v48[3];
        if (v51 >= v50 >> 1)
        {
          v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v48);
          *v39 = v48;
        }

        v32 = v182;
        v52 = *(v0 + 408);
        v48[2] = v51 + 1;
        outlined init with take of MLS.OutgoingEventState?(v52, v48 + ((*(v165 + 80) + 32) & ~*(v165 + 80)) + *(v165 + 72) * v51, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMR);
        v171();
        v53 = type;
      }

      else
      {
        (v37)(v170, 0);
        v53 = *v186;
      }

      v73 = *(v0 + 704);
      v74 = *(v0 + 624);
      v75 = *(v0 + 592);
      v76 = *(v0 + 376);
      typeb = v53;
      v53(*(v0 + 512), *(v0 + 536), *(v0 + 496));
      v73(v74, v76, v75);

      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.default.getter();

      v79 = os_log_type_enabled(v77, v78);
      v184 = *(v0 + 720);
      v172 = *(v0 + 624);
      v80 = *(v0 + 592);
      v81 = *(v0 + 536);
      if (!v79)
      {
        v97 = *(v0 + 512);
        v99 = *(v0 + 488);
        v98 = *(v0 + 496);
        v100 = *(v0 + 472);
        outlined consume of Data?(v193, v195);
        outlined consume of Data?(v190, v187);

        outlined destroy of OutgoingEventModel(v0 + 16);

        v184(v172, v80);
        v101 = *v185;
        (*v185)(v97, v98);
        (*v179)(v99, v100);
        result = (v101)(v81, v98);
LABEL_35:
        v3 = v198;
        v4 = v188;
        goto LABEL_4;
      }

      v82 = *(v0 + 520);
      v163 = *(v0 + 536);
      v83 = v32;
      v84 = *(v0 + 512);
      loga = v77;
      v85 = *(v0 + 496);
      v158 = *(v0 + 472);
      v161 = *(v0 + 488);
      v86 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      v199[0] = v150;
      *v86 = 136315650;
      typeb(v82, v84, v85);
      typed = v78;
      v87 = String.init<A>(describing:)();
      v89 = v88;
      v90 = *v185;
      (*v185)(v84, v85);
      v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v89, v199);

      *(v86 + 4) = v91;
      *(v86 + 12) = 2080;
      v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v180, v83, v199);

      *(v86 + 14) = v92;
      *(v86 + 22) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v93 = dispatch thunk of CustomStringConvertible.description.getter();
      v95 = v94;
      v184(v172, v80);
      v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v95, v199);

      *(v86 + 24) = v96;
      _os_log_impl(&dword_26524C000, loga, typed, "DaemonPersister loadEventsClientIdentifier loaded outgoing event { outgoingEvent: %s, for group: %s, for client: %s }", v86, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v150, -1, -1);
      MEMORY[0x2667577B0](v86, -1, -1);
      outlined consume of Data?(v193, v195);
      outlined consume of Data?(v190, v187);

      outlined destroy of OutgoingEventModel(v0 + 16);
      (*v179)(v161, v158);
      result = (v90)(v163, v85);
      v3 = v198;
      v4 = v188;
LABEL_4:
      v8 = 0;
      ++v3;
      v4 += 6;
      if (v191 == v3)
      {
        goto LABEL_36;
      }
    }

    v54 = v32;
    v55 = *(v0 + 80);
    outlined copy of Data._Representation(v55, v36);
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.OutgoingEventState and conformance MLS.OutgoingEventState, MEMORY[0x277D4CF20], MEMORY[0x277D4CF30]);
    v160 = v55;
    v162 = v36;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v183 = v54;
    v56 = specialized Dictionary.subscript.modify(v169, v31, v54);
    if (*v57)
    {
      v58 = v57;
      v59 = *(v0 + 536);
      v61 = *(v0 + 488);
      v60 = *(v0 + 496);
      v155 = *(v0 + 472);
      v157 = v56;
      v63 = *(v0 + 432);
      v62 = *(v0 + 440);
      v64 = *(v0 + 416);
      (*v168)(v63, *(v0 + 464), v62);
      (*v167)(v63, 0, 1, v62);
      v65 = *(v164 + 48);
      v66 = *(v164 + 64);
      *typea = *v186;
      (*v186)(v64, v59, v60);
      outlined init with take of MLS.OutgoingEventState?(v63, v64 + v65, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
      (*v166)(v64 + v66, v61, v155);
      v67 = *v58;
      v68 = swift_isUniquelyReferenced_nonNull_native();
      *v58 = v67;
      if ((v68 & 1) == 0)
      {
        v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v67[2] + 1, 1, v67);
        *v58 = v67;
      }

      v70 = v67[2];
      v69 = v67[3];
      if (v70 >= v69 >> 1)
      {
        v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v70 + 1, 1, v67);
        *v58 = v67;
      }

      v71 = *(v0 + 416);
      v67[2] = v70 + 1;
      outlined init with take of MLS.OutgoingEventState?(v71, v67 + ((*(v165 + 80) + 32) & ~*(v165 + 80)) + *(v165 + 72) * v70, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMR);
      v157();
      v72 = *typea;
    }

    else
    {
      (v56)(v169, 0);
      v72 = *v186;
    }

    v102 = *(v0 + 704);
    v103 = *(v0 + 632);
    v104 = *(v0 + 592);
    v106 = *(v0 + 456);
    v105 = *(v0 + 464);
    v107 = *(v0 + 440);
    v108 = *(v0 + 376);
    typec = v72;
    v72(*(v0 + 528), *(v0 + 536), *(v0 + 496));
    (*v168)(v106, v105, v107);
    v102(v103, v108, v104);

    v109 = Logger.logObject.getter();
    LOBYTE(v103) = static os_log_type_t.default.getter();

    v110 = v103;
    v111 = os_log_type_enabled(v109, v103);
    v112 = *(v0 + 720);
    log = *(v0 + 592);
    v156 = *(v0 + 632);
    v159 = *(v0 + 536);
    v113 = *(v0 + 528);
    if (v111)
    {
      v146 = *(v0 + 720);
      v114 = *(v0 + 520);
      v115 = *(v0 + 496);
      v149 = *(v0 + 472);
      v151 = *(v0 + 488);
      v148 = *(v0 + 464);
      v144 = *(v0 + 456);
      v116 = *(v0 + 440);
      v117 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      v199[0] = v147;
      *v117 = 136315906;
      typec(v114, v113, v115);
      v118 = String.init<A>(describing:)();
      v120 = v119;
      v145 = *v185;
      typee = v110;
      (*v185)(v113, v115);
      v121 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v118, v120, v199);

      *(v117 + 4) = v121;
      *(v117 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.OutgoingEventState and conformance MLS.OutgoingEventState, MEMORY[0x277D4CF20], MEMORY[0x277D4CF38]);
      v122 = dispatch thunk of CustomStringConvertible.description.getter();
      v124 = v123;
      v125 = *v152;
      (*v152)(v144, v116);
      v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v124, v199);

      *(v117 + 14) = v126;
      *(v117 + 22) = 2080;
      v127 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v180, v183, v199);

      *(v117 + 24) = v127;
      *(v117 + 32) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v128 = dispatch thunk of CustomStringConvertible.description.getter();
      v130 = v129;
      v146(v156, log);
      v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v130, v199);

      *(v117 + 34) = v131;
      _os_log_impl(&dword_26524C000, v109, typee, "DaemonPersister loadEventsClientIdentifier loaded outgoing event { outgoingEvent: %s, state: %s,for group: %s, for client: %s }", v117, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v147, -1, -1);
      MEMORY[0x2667577B0](v117, -1, -1);
      outlined consume of Data?(v193, v195);
      outlined consume of Data?(v160, v162);
      outlined consume of Data?(v190, v187);

      outlined destroy of OutgoingEventModel(v0 + 16);
      v125(v148, v116);
      (*v179)(v151, v149);
      result = (v145)(v159, v115);
    }

    else
    {
      v132 = *(v0 + 496);
      v181 = *(v0 + 488);
      v134 = *(v0 + 464);
      v133 = *(v0 + 472);
      v135 = *(v0 + 456);
      v136 = *(v0 + 440);
      outlined consume of Data?(v193, v195);
      outlined consume of Data?(v160, v162);
      outlined consume of Data?(v190, v187);

      outlined destroy of OutgoingEventModel(v0 + 16);

      v112(v156, log);
      v137 = *v152;
      (*v152)(v135, v136);
      v138 = *v185;
      (*v185)(v113, v132);
      v137(v134, v136);
      (*v179)(v181, v133);
      result = (v138)(v159, v132);
    }

    goto LABEL_35;
  }

LABEL_36:
  v139 = *(v0 + 736);
  v140 = *(v0 + 728);
  outlined consume of Data._Representation(v140, v139);

  MLS.StoredEvents.init(groupToOutgoingEvents:groupToIncomingEvents:)();
  outlined consume of Data._Representation(v140, v139);
  outlined consume of Data._Representation(v140, v139);

  v141 = *(v0 + 8);
LABEL_38:

  return v141();
}

{
  v2 = *v1;
  *(*v1 + 840) = v0;

  if (v0)
  {
    v3 = *(v2 + 688);
    v4 = *(v2 + 680);
    v5 = DaemonPersister.loadEvents(clientIdentifier:);
  }

  else
  {

    v3 = *(v2 + 688);
    v4 = *(v2 + 680);
    v5 = DaemonPersister.loadEvents(clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[92];
  v2 = v0[91];

  outlined consume of Data._Representation(v2, v1);

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[92];
  v2 = v0[91];
  outlined consume of Data._Representation(v2, v1);

  outlined consume of Data._Representation(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t DaemonPersister.loadEvents(clientIdentifier:)(uint64_t a1)
{
  v3 = *v2;
  v3[96] = a1;
  v3[97] = v1;

  if (v1)
  {
    outlined consume of Data._Representation(v3[91], v3[92]);
    v4 = v3[86];
    v5 = v3[85];
    v6 = DaemonPersister.loadEvents(clientIdentifier:);
  }

  else
  {
    v4 = v3[86];
    v5 = v3[85];
    v6 = DaemonPersister.loadEvents(clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v3 = *v2;
  v3[101] = a1;
  v3[102] = v1;

  if (v1)
  {
    outlined consume of Data._Representation(v3[91], v3[92]);
    v4 = v3[86];
    v5 = v3[85];
    v6 = DaemonPersister.loadEvents(clientIdentifier:);
  }

  else
  {
    v4 = v3[86];
    v5 = v3[85];
    v6 = DaemonPersister.loadEvents(clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

void DaemonPersister.loadEvents(clientIdentifier:)()
{
  v107 = v0;
  v1 = v0[96];
  v89 = *(v1 + 16);
  v0[98] = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_decoder;
  if (v89)
  {
    v2 = 0;
    v88 = (v0 + 26);
    v3 = v0[69];
    v81 = v3;
    v86 = (v3 + 16);
    v93 = (v3 + 8);
    v4 = v0[97];
    v5 = (v1 + 48);
    v87 = v1;
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v96 = v2;
      v8 = *v5;
      v9 = v5[1];
      v11 = v5[2];
      v10 = v5[3];
      v13 = v5[4];
      v12 = v5[5];
      v97 = v5;
      v98 = *(v5 - 2);
      v99 = *(v5 - 1);
      outlined copy of Data._Representation(v98, v99);
      outlined copy of Data._Representation(v8, v9);
      v103 = v11;
      v104 = v10;
      outlined copy of Data._Representation(v11, v10);
      v102 = v13;
      outlined copy of Data._Representation(v13, v12);
      v100 = v8;
      v101 = v9;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      if (v4)
      {
        break;
      }

      v14 = v0[38];
      v15 = v0[39];
      v16 = v0[44];
      v95 = v12;
      if (!*(v16 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v14, v15), (v17 & 1) == 0))
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v106[0] = v16;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(MEMORY[0x277D84F90], v14, v15, isUniquelyReferenced_nonNull_native);

        v0[44] = v106[0];
      }

      lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingEventType<MLS.AllMember, Data> and conformance MLS.IncomingEventType<A, B>, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR, MEMORY[0x277D4CEC0]);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      v20 = specialized Dictionary.subscript.modify(v88, v14, v15);
      v92 = v14;
      v94 = v15;
      if (*v19)
      {
        v21 = v19;
        v90 = *v86;
        (*v86)(v0[72], v0[73], v0[68]);
        v22 = *v21;
        v23 = swift_isUniquelyReferenced_nonNull_native();
        *v21 = v22;
        if ((v23 & 1) == 0)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22[2] + 1, 1, v22);
          *v21 = v22;
        }

        v25 = v22[2];
        v24 = v22[3];
        if (v25 >= v24 >> 1)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v22);
          *v21 = v22;
        }

        v26 = v0[72];
        v27 = v0[68];
        v22[2] = v25 + 1;
        (*(v81 + 32))(v22 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v25, v26, v27);
        (v20)(v88, 0);
        v28 = v90;
      }

      else
      {
        (v20)(v88, 0);
        v28 = *v86;
      }

      v29 = v0[88];
      v30 = v0[81];
      v31 = v0[74];
      v32 = v0[47];
      v28(v0[71], v0[73], v0[68]);
      v29(v30, v32, v31);

      v33 = Logger.logObject.getter();
      LOBYTE(v30) = static os_log_type_t.default.getter();

      v34 = v30;
      v35 = os_log_type_enabled(v33, v30);
      v36 = v0[90];
      v37 = v0[81];
      v38 = v0[74];
      v39 = v0[73];
      v40 = v0[71];
      if (v35)
      {
        v82 = v0[74];
        v83 = v0[90];
        v41 = v0[70];
        v42 = v0[68];
        log = v33;
        v43 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v106[0] = v85;
        *v43 = 136315650;
        v28(v41, v40, v42);
        v44 = String.init<A>(describing:)();
        v91 = v39;
        v46 = v45;
        v47 = *v93;
        (*v93)(v40, v42);
        v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, v106);

        *(v43 + 4) = v48;
        *(v43 + 12) = 2080;
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v94, v106);

        *(v43 + 14) = v49;
        *(v43 + 22) = 2080;
        _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
        v50 = dispatch thunk of CustomStringConvertible.description.getter();
        v52 = v51;
        v83(v37, v82);
        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, v106);

        *(v43 + 24) = v53;
        _os_log_impl(&dword_26524C000, log, v34, "DaemonPersister loadEventsClientIdentifier loaded incoming event { incomingEvent: %s, for group: %s, for client: %s }", v43, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2667577B0](v85, -1, -1);
        MEMORY[0x2667577B0](v43, -1, -1);

        outlined consume of Data._Representation(v98, v99);
        outlined consume of Data._Representation(v100, v101);
        outlined consume of Data._Representation(v103, v104);
        outlined consume of Data._Representation(v102, v95);
        v47(v91, v42);
      }

      else
      {
        v6 = v0[68];

        outlined consume of Data._Representation(v98, v99);
        outlined consume of Data._Representation(v100, v101);
        outlined consume of Data._Representation(v103, v104);
        outlined consume of Data._Representation(v102, v95);

        v36(v37, v38);
        v7 = *v93;
        (*v93)(v40, v6);
        v7(v39, v6);
      }

      v1 = v87;
      v4 = 0;
      v2 = v96 + 1;
      v5 = v97 + 8;
      if (v89 == v96 + 1)
      {
        goto LABEL_22;
      }
    }

    v54 = v12;
    v55 = v0[92];
    v56 = v0[91];
    outlined consume of Data._Representation(v56, v55);

    outlined consume of Data._Representation(v56, v55);
    outlined consume of Data._Representation(v98, v99);
    outlined consume of Data._Representation(v8, v9);
    outlined consume of Data._Representation(v11, v104);
    outlined consume of Data._Representation(v13, v54);

    v57 = v0[1];

    v57();
  }

  else
  {
LABEL_22:
    v58 = v0[88];
    v59 = v0;
    v60 = v0[80];
    v61 = v0[74];
    v62 = v0[47];

    v58(v60, v62, v61);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    v65 = os_log_type_enabled(v63, v64);
    v66 = v0[90];
    v67 = v0[80];
    v68 = v0[74];
    if (v65)
    {
      v69 = v0[90];
      v70 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v106[0] = v105;
      *v70 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v71 = dispatch thunk of CustomStringConvertible.description.getter();
      v73 = v72;
      v69(v67, v68);
      v0 = v59;
      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, v106);

      *(v70 + 4) = v74;
      _os_log_impl(&dword_26524C000, v63, v64, "DaemonPersister loadEventsClientIdentifier loading outgoing events { identifier: %s }", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v105);
      MEMORY[0x2667577B0](v105, -1, -1);
      MEMORY[0x2667577B0](v70, -1, -1);
    }

    else
    {

      v66(v67, v68);
    }

    v75 = v0[92];
    v76 = v0[91];
    v77 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say15SecureMessaging3MLSO17OutgoingEventTypeOy_AE9AllMemberO10Foundation4DataVG_AE0fG5StateVSgAE12GroupVersionVtGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v0[99] = v77;
    v0[45] = v77;
    outlined copy of Data._Representation(v76, v75);
    v78 = swift_task_alloc();
    v0[100] = v78;
    *v78 = v0;
    v78[1] = DaemonPersister.loadEvents(clientIdentifier:);
    v79 = v0[92];
    v80 = v0[91];

    specialized SqliteStore.query<A>(_:)(v80, v79);
  }
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = specialized Dictionary._Variant.subscript.modify(v6, a2, a3);
  return Dictionary.subscript.modifyspecialized ;
}

{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = specialized Dictionary._Variant.subscript.modify(v6, a2, a3);
  return Dictionary.subscript.modifyspecialized ;
}

{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = specialized Dictionary._Variant.subscript.modify(v6, a2, a3);
  return Dictionary.subscript.modifyspecialized ;
}

void Dictionary.subscript.modifyspecialized (void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t DaemonPersister.loadRetriableEventStates(clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[36] = a2;
  v3[37] = v2;
  v3[35] = a1;
  v4 = type metadata accessor for MLS.OutgoingEventState();
  v3[38] = v4;
  v3[39] = *(v4 - 8);
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v5 = type metadata accessor for MLS.UniqueClientIdentifier();
  v3[43] = v5;
  v3[44] = *(v5 - 8);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v3[50] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[51] = v7;
  v3[52] = v6;

  return MEMORY[0x2822009F8](DaemonPersister.loadRetriableEventStates(clientIdentifier:), v7, v6);
}

uint64_t DaemonPersister.loadRetriableEventStates(clientIdentifier:)()
{
  v45 = v0;
  v1 = *(v0 + 352);
  v2 = (*(**(v0 + 296) + 264))();
  *(v0 + 424) = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_logger;
  v3 = *(v1 + 16);
  *(v0 + 432) = v3;
  *(v0 + 440) = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v4 = *(v0 + 344);
  v5 = *(v0 + 288);
  if (v2)
  {
    v3(*(v0 + 392), v5, v4);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 392);
    v10 = *(v0 + 344);
    v11 = *(v0 + 352);
    if (v8)
    {
      v12 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v44[0] = v41;
      *v12 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      v16 = *(v11 + 8);
      v16(v9, v10);
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v44);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_26524C000, v6, v7, "DaemonPersister loadRetriableEventStatesClientIdentifier using persistence mode { identifier: %s }", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x2667577B0](v41, -1, -1);
      MEMORY[0x2667577B0](v12, -1, -1);
    }

    else
    {

      v16 = *(v11 + 8);
      v16(v9, v10);
    }

    *(v0 + 448) = v16;
    v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say15SecureMessaging3MLSO18OutgoingEventStateVGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    *(v0 + 456) = v30;
    *(v0 + 272) = v30;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D008]);
    v31 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    *(v0 + 464) = v31;
    *(v0 + 472) = v32;
    v37 = v31;
    v38 = v32;
    outlined copy of Data._Representation(v31, v32);
    v39 = swift_task_alloc();
    *(v0 + 480) = v39;
    *v39 = v0;
    v39[1] = DaemonPersister.loadRetriableEventStates(clientIdentifier:);
    v34 = v37;
    v35 = v38;
    v36 = specialized SqliteStore.query<A>(_:);
  }

  else
  {
    v3(*(v0 + 360), v5, v4);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v22 = *(v0 + 352);
    v21 = *(v0 + 360);
    v23 = *(v0 + 344);
    if (v20)
    {
      v24 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v44[0] = v42;
      *v24 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v22 + 8))(v21, v23);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v44);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_26524C000, v18, v19, "DaemonPersister loadRetriableEventStatesClientIdentifier using inMemory mode { identifier: %s }", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x2667577B0](v42, -1, -1);
      MEMORY[0x2667577B0](v24, -1, -1);
    }

    else
    {

      v29 = (*(v22 + 8))(v21, v23);
    }

    *(v0 + 504) = (*(**(v0 + 296) + 168))(v29);
    v43 = (*MEMORY[0x277D4CE40] + MEMORY[0x277D4CE40]);
    v33 = swift_task_alloc();
    *(v0 + 512) = v33;
    *v33 = v0;
    v33[1] = DaemonPersister.loadRetriableEventStates(clientIdentifier:);
    v34 = *(v0 + 280);
    v35 = *(v0 + 288);
    v36 = v43;
  }

  return v36(v34, v35);
}

{
  v118 = v0;
  v1 = *(v0 + 488);

  v116 = v1;
  v115 = *(v1 + 16);
  if (v115)
  {
    v3 = 0;
    v100 = (v0 + 208);
    v4 = *(v0 + 496);
    v5 = (*(v0 + 488) + 32);
    v6 = *(v0 + 312);
    v99 = (v6 + 16);
    v92 = v6;
    v98 = (v6 + 8);
    while (v3 < *(v116 + 16))
    {
      v7 = v5[2];
      v8 = v5[3];
      v9 = v5[4];
      *(v0 + 96) = v5[5];
      v10 = v5[1];
      *(v0 + 16) = *v5;
      *(v0 + 32) = v10;
      *(v0 + 64) = v8;
      *(v0 + 80) = v9;
      *(v0 + 48) = v7;
      outlined init with copy of OutgoingEventModel(v0 + 16, v0 + 112);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      if (v4)
      {
        v91 = *(v0 + 464);
        v90 = *(v0 + 472);
        outlined consume of Data._Representation(v91, v90);
        outlined consume of Data._Representation(v91, v90);
        outlined destroy of OutgoingEventModel(v0 + 16);

        v89 = *(v0 + 8);
        goto LABEL_31;
      }

      v11 = *(v0 + 88);
      v12 = *(v0 + 240);
      v13 = *(v0 + 248);
      if (v11 >> 60 == 15)
      {
        (*(v0 + 432))(*(v0 + 368), *(v0 + 288), *(v0 + 344));

        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.default.getter();

        v16 = os_log_type_enabled(v14, v15);
        v17 = *(v0 + 448);
        v18 = *(v0 + 368);
        v19 = *(v0 + 344);
        if (v16)
        {
          v105 = v12;
          v20 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          v117[0] = v112;
          *v20 = 136315394;
          _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
          v102 = v15;
          v21 = v3;
          v22 = dispatch thunk of CustomStringConvertible.description.getter();
          loga = v14;
          v23 = v5;
          v25 = v24;
          v17(v18, v19);
          v26 = v22;
          v3 = v21;
          v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v25, v117);
          v5 = v23;

          *(v20 + 4) = v27;
          *(v20 + 12) = 2080;
          v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v13, v117);

          *(v20 + 14) = v28;
          _os_log_impl(&dword_26524C000, loga, v102, "DaemonPersister loadRetriableEventStatesClientIdentifier loading outgoing events - skip nil event state { identifier: %s, event: %s }", v20, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2667577B0](v112, -1, -1);
          MEMORY[0x2667577B0](v20, -1, -1);

          result = outlined destroy of OutgoingEventModel(v0 + 16);
        }

        else
        {

          outlined destroy of OutgoingEventModel(v0 + 16);

          result = (v17)(v18, v19);
        }
      }

      else
      {
        v29 = *(v0 + 80);
        v114 = v5;
        v113 = *(v0 + 88);
        if (*(v0 + 56) >> 60 == 15)
        {
          outlined copy of Data._Representation(v29, v11);

          dispatch thunk of JSONDecoder.decode<A>(_:from:)();
          v30 = v29;
          v31 = *(v0 + 256);
          v32 = *(v0 + 264);
          v33 = *(v0 + 272);
          v103 = v31;
          log = v30;
          if (!*(v33 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v31, v32), (v34 & 1) == 0))
          {

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v117[0] = v33;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(MEMORY[0x277D84F90], v31, v32, isUniquelyReferenced_nonNull_native);

            *(v0 + 272) = v117[0];
          }

          _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.OutgoingEventState and conformance MLS.OutgoingEventState, MEMORY[0x277D4CF20], MEMORY[0x277D4CF30]);
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();
          v37 = specialized Dictionary.subscript.modify(v100, v31, v32);
          v101 = v3;
          if (*v36)
          {
            v38 = v36;
            v106 = *v99;
            (*v99)(*(v0 + 328), *(v0 + 336), *(v0 + 304));
            v39 = *v38;
            v40 = swift_isUniquelyReferenced_nonNull_native();
            *v38 = v39;
            if ((v40 & 1) == 0)
            {
              v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39[2] + 1, 1, v39);
              *v38 = v39;
            }

            v42 = v39[2];
            v41 = v39[3];
            if (v42 >= v41 >> 1)
            {
              v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v39);
              *v38 = v39;
            }

            v43 = *(v0 + 328);
            v44 = *(v0 + 304);
            v39[2] = v42 + 1;
            (*(v92 + 32))(v39 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v42, v43, v44);
            v37();
            v45 = v106;
          }

          else
          {
            (v37)(v100, 0);
            v45 = *v99;
          }

          v60 = *(v0 + 432);
          v61 = *(v0 + 376);
          v62 = *(v0 + 344);
          v63 = *(v0 + 288);
          v45(*(v0 + 320), *(v0 + 336), *(v0 + 304));
          v60(v61, v63, v62);

          v64 = Logger.logObject.getter();
          v65 = static os_log_type_t.default.getter();

          v66 = os_log_type_enabled(v64, v65);
          v67 = *(v0 + 448);
          v68 = *(v0 + 376);
          v69 = *(v0 + 336);
          v70 = *(v0 + 344);
          v71 = *(v0 + 320);
          v72 = *(v0 + 304);
          if (v66)
          {
            v94 = v65;
            v73 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            v117[0] = v95;
            *v73 = 136315650;
            _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.OutgoingEventState and conformance MLS.OutgoingEventState, MEMORY[0x277D4CF20], MEMORY[0x277D4CF38]);
            v93 = v67;
            v74 = dispatch thunk of CustomStringConvertible.description.getter();
            v108 = v69;
            v76 = v75;
            v77 = v72;
            v97 = v72;
            v78 = v32;
            v79 = *v98;
            (*v98)(v71, v77);
            v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, v117);

            *(v73 + 4) = v80;
            *(v73 + 12) = 2080;
            v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v78, v117);

            *(v73 + 14) = v81;
            *(v73 + 22) = 2080;
            _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
            v82 = dispatch thunk of CustomStringConvertible.description.getter();
            v84 = v83;
            v93(v68, v70);
            v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v84, v117);

            *(v73 + 24) = v85;
            _os_log_impl(&dword_26524C000, v64, v94, "DaemonPersister loadRetriableEventStatesClientIdentifier loaded outgoing event state { outgoingEvent: %s, for group: %s, for client: %s }", v73, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x2667577B0](v95, -1, -1);
            MEMORY[0x2667577B0](v73, -1, -1);
            outlined consume of Data?(log, v113);

            outlined destroy of OutgoingEventModel(v0 + 16);
            result = (v79)(v108, v97);
          }

          else
          {
            outlined consume of Data?(log, v113);

            outlined destroy of OutgoingEventModel(v0 + 16);

            v67(v68, v70);
            v86 = *v98;
            (*v98)(v71, v72);
            result = (v86)(v69, v72);
          }

          v3 = v101;
          v5 = v114;
        }

        else
        {
          (*(v0 + 432))(*(v0 + 384), *(v0 + 288), *(v0 + 344));
          outlined copy of Data?(v29, v11);

          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.default.getter();

          v48 = os_log_type_enabled(v46, v47);
          v49 = *(v0 + 448);
          v50 = *(v0 + 384);
          v51 = *(v0 + 344);
          if (v48)
          {
            v107 = v12;
            v52 = swift_slowAlloc();
            v104 = swift_slowAlloc();
            v117[0] = v104;
            *v52 = 136315394;
            _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
            v96 = v46;
            v53 = v3;
            v54 = dispatch thunk of CustomStringConvertible.description.getter();
            logb = v29;
            v56 = v55;
            v49(v50, v51);
            v57 = v54;
            v3 = v53;
            v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v56, v117);

            *(v52 + 4) = v58;
            *(v52 + 12) = 2080;
            v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v13, v117);

            *(v52 + 14) = v59;
            _os_log_impl(&dword_26524C000, v96, v47, "DaemonPersister loadRetriableEventStatesClientIdentifier loading outgoing events - skip non-retryable event { identifier: %s, event: %s }", v52, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x2667577B0](v104, -1, -1);
            MEMORY[0x2667577B0](v52, -1, -1);
            outlined consume of Data?(logb, v113);

            result = outlined destroy of OutgoingEventModel(v0 + 16);
          }

          else
          {

            outlined consume of Data?(v29, v113);
            outlined destroy of OutgoingEventModel(v0 + 16);

            result = (v49)(v50, v51);
          }

          v5 = v114;
        }
      }

      v4 = 0;
      ++v3;
      v5 += 6;
      if (v115 == v3)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_29:
    v87 = *(v0 + 464);
    v88 = *(v0 + 472);

    MLS.StoredEventStates.init(groupToOutgoingEventStates:)();
    outlined consume of Data._Representation(v87, v88);
    outlined consume of Data._Representation(v87, v88);

    v89 = *(v0 + 8);
LABEL_31:

    return v89();
  }

  return result;
}

{
  v2 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = *(v2 + 408);
    v4 = *(v2 + 416);
    v5 = DaemonPersister.loadRetriableEventStates(clientIdentifier:);
  }

  else
  {

    v3 = *(v2 + 408);
    v4 = *(v2 + 416);
    v5 = DaemonPersister.loadRetriableEventStates(clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[58];
  v2 = v0[59];

  outlined consume of Data._Representation(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t DaemonPersister.loadRetriableEventStates(clientIdentifier:)(uint64_t a1)
{
  v3 = *v2;
  v3[61] = a1;
  v3[62] = v1;

  if (v1)
  {
    outlined consume of Data._Representation(v3[58], v3[59]);
    v4 = v3[51];
    v5 = v3[52];
    v6 = DaemonPersister.loadRetriableEventStates(clientIdentifier:);
  }

  else
  {
    v4 = v3[51];
    v5 = v3[52];
    v6 = DaemonPersister.loadRetriableEventStates(clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t DaemonPersister.read(clientUUID:)(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for UUID();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v2[14] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[15] = v5;
  v2[16] = v4;

  return MEMORY[0x2822009F8](DaemonPersister.read(clientUUID:), v5, v4);
}

{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 184) = a1;
  *(v4 + 192) = v1;

  v5 = *(v3 + 128);
  v6 = *(v3 + 120);
  if (v1)
  {
    v7 = DaemonPersister.read(clientUUID:);
  }

  else
  {
    v7 = DaemonPersister.read(clientUUID:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t DaemonPersister.read(clientUUID:)()
{
  v43 = v0;
  v1 = *(v0 + 72);
  v2 = (*(**(v0 + 56) + 264))();
  *(v0 + 136) = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_logger;
  v3 = *(v1 + 16);
  *(v0 + 144) = v3;
  *(v0 + 152) = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v4 = *(v0 + 64);
  v5 = *(v0 + 48);
  if (v2)
  {
    v3(*(v0 + 104), v5, v4);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 104);
    v10 = *(v0 + 64);
    v11 = *(v0 + 72);
    if (v8)
    {
      v12 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v42 = v39;
      *v12 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      v16 = *(v11 + 8);
      v16(v9, v10);
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v42);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_26524C000, v6, v7, "DaemonPersister readClientUUID using persistence mode. { uuid: %s }", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x2667577B0](v39, -1, -1);
      MEMORY[0x2667577B0](v12, -1, -1);
    }

    else
    {

      v16 = *(v11 + 8);
      v16(v9, v10);
    }

    *(v0 + 160) = v16;
    v31 = UUID.uuidString.getter();
    v33 = v32;
    *(v0 + 168) = v32;
    v34 = swift_task_alloc();
    *(v0 + 176) = v34;
    *v34 = v0;
    v34[1] = DaemonPersister.read(clientUUID:);

    return specialized SqliteStore.query<A>(_:)(v31, v33);
  }

  else
  {
    v3(*(v0 + 88), v5, v4);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 88);
    v23 = *(v0 + 64);
    v22 = *(v0 + 72);
    if (v20)
    {
      v24 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v42 = v40;
      *v24 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      v38 = v19;
      v28 = *(v22 + 8);
      v28(v21, v23);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v42);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_26524C000, v18, v38, "DaemonPersister readClientUUID using inMemory mode { uuid: %s }", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x2667577B0](v40, -1, -1);
      MEMORY[0x2667577B0](v24, -1, -1);
    }

    else
    {

      v28 = *(v22 + 8);
      v30 = (v28)(v21, v23);
    }

    *(v0 + 200) = v28;
    *(v0 + 208) = (*(**(v0 + 56) + 168))(v30);
    v41 = (*MEMORY[0x277D4CE60] + MEMORY[0x277D4CE60]);
    v36 = swift_task_alloc();
    *(v0 + 216) = v36;
    *v36 = v0;
    v36[1] = DaemonPersister.read(clientUUID:);
    v37 = *(v0 + 48);

    return v41(v37);
  }
}

{
  v25 = v0;
  v1 = *(v0 + 184);

  v2 = *(v0 + 184);
  if (*(v1 + 16))
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);

    outlined copy of Data._Representation(v3, v4);

    outlined copy of Data._Representation(v3, v4);

    outlined consume of Data._Representation(v3, v4);
  }

  else
  {

    v3 = 0;
    v4 = 0xF000000000000000;
  }

  (*(v0 + 144))(*(v0 + 96), *(v0 + 48), *(v0 + 64));
  outlined copy of Data?(v3, v4);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  outlined consume of Data?(v3, v4);
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 160);
  v9 = *(v0 + 96);
  v10 = *(v0 + 64);
  if (v7)
  {
    log = v5;
    v11 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v11 = 136315394;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v6;
    v14 = v13;
    v8(v9, v10);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v24);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v0 + 32) = v3;
    *(v0 + 40) = v4;
    outlined copy of Data?(v3, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v16 = String.init<A>(describing:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v24);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_26524C000, log, v21, "DaemonPersister readClientUUID returning { uuid: %s, data: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v23, -1, -1);
    MEMORY[0x2667577B0](v11, -1, -1);
  }

  else
  {

    v8(v9, v10);
  }

  v19 = *(v0 + 8);

  return v19(v3, v4);
}

{
  v31 = v0;
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[18];
  v4 = v0[10];
  v5 = v0[8];
  v6 = v0[6];

  v3(v4, v6, v5);
  outlined copy of Data?(v2, v1);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  outlined consume of Data?(v2, v1);
  if (os_log_type_enabled(v7, v8))
  {
    v10 = v0[28];
    v9 = v0[29];
    v11 = v0[10];
    v28 = v0[25];
    v12 = v0[8];
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v13 = 136315394;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v28(v11, v12);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v30);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v0[2] = v10;
    v0[3] = v9;
    outlined copy of Data?(v10, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v18 = String.init<A>(describing:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v30);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_26524C000, v7, v8, "DaemonPersister readClientUUID returning { uuid: %s, data: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v29, -1, -1);
    MEMORY[0x2667577B0](v13, -1, -1);
  }

  else
  {
    v21 = v0[25];
    v22 = v0[10];
    v23 = v0[8];

    v21(v22, v23);
  }

  v24 = v0[28];
  v25 = v0[29];

  v26 = v0[1];

  return v26(v24, v25);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DaemonPersister.read(clientUUID:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[28] = a1;
  v4[29] = a2;
  v4[30] = v2;

  if (v2)
  {
    v5 = v4[15];
    v6 = v4[16];
    v7 = DaemonPersister.read(clientUUID:);
  }

  else
  {

    v5 = v4[15];
    v6 = v4[16];
    v7 = DaemonPersister.read(clientUUID:);
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t DaemonPersister.write(clientUUID:clientState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for UUID();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v4[16] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[17] = v7;
  v4[18] = v6;

  return MEMORY[0x2822009F8](DaemonPersister.write(clientUUID:clientState:), v7, v6);
}

uint64_t DaemonPersister.write(clientUUID:clientState:)()
{
  v77 = v0;
  v1 = *(v0 + 96);
  v2 = (*(**(v0 + 80) + 264))();
  v3 = *(v1 + 16);
  v4 = *(v0 + 88);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 56);
  if (v2)
  {
    v74 = *(v1 + 16);
    v3(*(v0 + 120), v7, v4);
    outlined copy of Data._Representation(v6, v5);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    outlined consume of Data._Representation(v6, v5);
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 120);
    v13 = *(v0 + 88);
    v12 = *(v0 + 96);
    if (v10)
    {
      v14 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v76[0] = v72;
      *v14 = 136315394;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      v73 = *(v12 + 8);
      v73(v11, v13);
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, v76);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      v19 = Data.description.getter();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v76);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_26524C000, v8, v9, "DaemonPersister writeClientUUID using persistence mode { uuid: %s, clientState: %s }", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v72, -1, -1);
      MEMORY[0x2667577B0](v14, -1, -1);
    }

    else
    {

      v73 = *(v12 + 8);
      v22 = (v73)(v11, v13);
    }

    if ((*(**(v0 + 80) + 192))(v22))
    {
      v39 = *(v0 + 72);
      v40 = *(v0 + 64);
      v41 = UUID.uuidString.getter();
      v43 = v42;
      *(v0 + 152) = v42;
      *(v0 + 40) = &type metadata for ClientStateModel;
      *(v0 + 48) = &protocol witness table for ClientStateModel;
      v44 = swift_allocObject();
      *(v0 + 16) = v44;
      v44[2] = v41;
      v44[3] = v43;
      v44[4] = v40;
      v44[5] = v39;
      outlined copy of Data._Representation(v40, v39);

      outlined copy of Data._Representation(v40, v39);
      v45 = swift_task_alloc();
      *(v0 + 160) = v45;
      *v45 = v0;
      v45[1] = DaemonPersister.write(clientUUID:clientState:);

      return SqliteStore.insert(_:)(v0 + 16);
    }

    else
    {
      v51 = *(v0 + 112);
      v52 = *(v0 + 88);
      v54 = *(v0 + 64);
      v53 = *(v0 + 72);
      v55 = *(v0 + 56);

      v74(v51, v55, v52);
      outlined copy of Data._Representation(v54, v53);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.fault.getter();
      outlined consume of Data._Representation(v54, v53);
      v58 = os_log_type_enabled(v56, v57);
      v59 = *(v0 + 112);
      v60 = *(v0 + 88);
      if (v58)
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v76[0] = v62;
        *v61 = 136315394;
        _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v63 = dispatch thunk of CustomStringConvertible.description.getter();
        v65 = v64;
        v73(v59, v60);
        v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, v76);

        *(v61 + 4) = v66;
        *(v61 + 12) = 2080;
        v67 = Data.description.getter();
        v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, v76);

        *(v61 + 14) = v69;
        _os_log_impl(&dword_26524C000, v56, v57, "DaemonPersister writeClientUUID called outside atomically block { uuid: %s, clientState: %s }", v61, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2667577B0](v62, -1, -1);
        MEMORY[0x2667577B0](v61, -1, -1);
      }

      else
      {

        v73(v59, v60);
      }

      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v70 = 6;
      *(v70 + 8) = 0;
      *(v70 + 16) = 0;
      swift_willThrow();

      v71 = *(v0 + 8);

      return v71();
    }
  }

  else
  {
    v3(*(v0 + 104), v7, v4);
    outlined copy of Data._Representation(v6, v5);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    outlined consume of Data._Representation(v6, v5);
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 96);
    v27 = *(v0 + 104);
    v28 = *(v0 + 88);
    if (v25)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v76[0] = v30;
      *v29 = 136315394;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      (*(v26 + 8))(v27, v28);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v76);

      *(v29 + 4) = v34;
      *(v29 + 12) = 2080;
      v35 = Data.description.getter();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v76);

      *(v29 + 14) = v37;
      _os_log_impl(&dword_26524C000, v23, v24, "DaemonPersister writeClientUUID using inMemory mode { uuid: %s, clientState: %s }", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v30, -1, -1);
      MEMORY[0x2667577B0](v29, -1, -1);
    }

    else
    {

      v38 = (*(v26 + 8))(v27, v28);
    }

    *(v0 + 176) = (*(**(v0 + 80) + 168))(v38);
    v75 = (*MEMORY[0x277D4CEA0] + MEMORY[0x277D4CEA0]);
    v47 = swift_task_alloc();
    *(v0 + 184) = v47;
    *v47 = v0;
    v47[1] = DaemonPersister.write(clientUUID:clientState:);
    v48 = *(v0 + 64);
    v49 = *(v0 + 72);
    v50 = *(v0 + 56);

    return v75(v50, v48, v49);
  }
}

{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = v2[17];
    v4 = v2[18];
    v5 = DaemonPersister.write(clientUUID:clientState:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 2);
    v3 = v2[17];
    v4 = v2[18];
    v5 = DaemonPersister.write(clientUUID:clientState:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{
  v2 = v0[8];
  v1 = v0[9];

  outlined consume of Data._Representation(v2, v1);

  v3 = v0[1];

  return v3();
}

{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = DaemonPersister.write(clientUUID:clientState:);
  }

  else
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = DaemonPersister.write(clientUUID:clientState:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = v0[8];
  v1 = v0[9];

  outlined consume of Data._Representation(v2, v1);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[116] = v4;
  v5[115] = a4;
  v5[114] = a3;
  v5[113] = a2;
  v5[112] = a1;
  v6 = type metadata accessor for MLS.EpochKey();
  v5[117] = v6;
  v5[118] = *(v6 - 8);
  v5[119] = swift_task_alloc();
  v5[120] = swift_task_alloc();
  v7 = type metadata accessor for MLS.Record();
  v5[121] = v7;
  v5[122] = *(v7 - 8);
  v5[123] = swift_task_alloc();
  v5[124] = swift_task_alloc();
  v8 = type metadata accessor for MLS.WriteGroupData();
  v5[125] = v8;
  v5[126] = *(v8 - 8);
  v5[127] = swift_task_alloc();
  v9 = type metadata accessor for MLS.Storage.EpochRecord();
  v5[128] = v9;
  v5[129] = *(v9 - 8);
  v5[130] = swift_task_alloc();
  v5[131] = swift_task_alloc();
  v5[132] = swift_task_alloc();
  v10 = type metadata accessor for MLS.Storage.GroupStateUpdate();
  v5[133] = v10;
  v5[134] = *(v10 - 8);
  v5[135] = swift_task_alloc();
  v5[136] = swift_task_alloc();
  v5[137] = swift_task_alloc();
  v5[138] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v5[139] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[140] = v12;
  v5[141] = v11;

  return MEMORY[0x2822009F8](DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:), v12, v11);
}

uint64_t DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:)()
{
  v209 = v0;
  if ((*(*v0[116] + 264))())
  {
    type metadata accessor for MLS.UniqueClientIdentifier();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D008]);
    v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v0[142] = v1;
    v0[143] = v2;
    v42 = v2;
    v205 = v1;
    v43 = v0[138];
    v44 = v0[134];
    v45 = v0[133];
    v46 = v0[114];
    v47 = v0[113];
    v48 = v0[112];
    v0[144] = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_logger;
    v49 = *(v44 + 16);
    v49(v43, v46, v45);
    outlined copy of Data._Representation(v48, v47);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    outlined consume of Data._Representation(v48, v47);
    v52 = os_log_type_enabled(v50, v51);
    v53 = v0[138];
    v202 = v42;
    v193 = v49;
    if (v52)
    {
      v190 = v0[137];
      v187 = v51;
      v54 = v0[134];
      v55 = v0[133];
      v56 = swift_slowAlloc();
      v184 = swift_slowAlloc();
      v208[0] = v184;
      *v56 = 136315394;
      v57 = Data.description.getter();
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, v208);

      *(v56 + 4) = v59;
      *(v56 + 12) = 2080;
      v49(v190, v53, v55);
      v60 = String.init<A>(describing:)();
      v62 = v61;
      v63 = v55;
      v42 = v202;
      v191 = *(v54 + 8);
      v191(v53, v63);
      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, v208);

      *(v56 + 14) = v64;
      _os_log_impl(&dword_26524C000, v50, v187, "DaemonPersister groupStateUpdate using persistence mode { groupID: %s, groupStateUpdate: %s }", v56, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v184, -1, -1);
      MEMORY[0x2667577B0](v56, -1, -1);
    }

    else
    {
      v92 = v0[134];
      v93 = v0[133];

      v191 = *(v92 + 8);
      v65 = (v191)(v53, v93);
    }

    v94 = v205;
    if ((*(*v0[116] + 192))(v65))
    {
      v95 = v0[113];
      v96 = v0[112];
      outlined copy of Data._Representation(v205, v42);
      v97 = MLS.Storage.GroupStateUpdate.groupState.getter();
      v180 = v98;
      v181 = v97;
      v0[145] = v97;
      v0[146] = v98;
      outlined copy of Data._Representation(v96, v95);
      v99 = MLS.Storage.GroupStateUpdate.epochInserts.getter();
      v100 = *(v99 + 16);
      v198 = v0;
      if (v100)
      {
        v101 = v0[129];
        v188 = *(v101 + 16);
        v102 = v99 + ((*(v101 + 80) + 32) & ~*(v101 + 80));
        v182 = *(v101 + 72);
        v185 = (v101 + 8);
        v103 = v100 - 1;
        v104 = MEMORY[0x277D84F90];
        while (1)
        {
          v105 = v0[132];
          v106 = v0[128];
          v107 = v0[113];
          v108 = v0[112];
          v194 = v102;
          v188(v105);
          outlined copy of Data._Representation(v205, v42);
          v109 = MLS.Storage.EpochRecord.epochID.getter();
          v110 = MLS.Storage.EpochRecord.data.getter();
          v112 = v111;
          (*v185)(v105, v106);
          outlined copy of Data._Representation(v108, v107);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v104 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v104 + 2) + 1, 1, v104);
          }

          v114 = *(v104 + 2);
          v113 = *(v104 + 3);
          v0 = v198;
          if (v114 >= v113 >> 1)
          {
            v104 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v113 > 1), v114 + 1, 1, v104);
          }

          v115 = &v104[80 * v114];
          v116 = *(v198 + 56);
          *(v104 + 2) = v114 + 1;
          *(v115 + 4) = v205;
          *(v115 + 5) = v202;
          *(v115 + 6) = v109;
          v115[56] = 0;
          *(v115 + 15) = *&v207[3];
          *(v115 + 57) = *v207;
          *(v115 + 8) = 1;
          v115[72] = 0;
          v117 = v208[0];
          *(v115 + 19) = *(v208 + 3);
          *(v115 + 73) = v117;
          *(v115 + 5) = v116;
          *(v115 + 12) = v110;
          *(v115 + 13) = v112;
          if (!v103)
          {
            break;
          }

          --v103;
          v102 = v194 + v182;
          v42 = v202;
        }

        v42 = v202;
      }

      else
      {

        v104 = MEMORY[0x277D84F90];
      }

      v0[147] = v104;
      v141 = MLS.Storage.GroupStateUpdate.epochUpdates.getter();
      v142 = *(v141 + 16);
      if (v142)
      {
        v143 = v0[129];
        v189 = *(v143 + 16);
        v144 = v141 + ((*(v143 + 80) + 32) & ~*(v143 + 80));
        v183 = *(v143 + 72);
        v186 = (v143 + 8);
        v145 = v142 - 1;
        v146 = MEMORY[0x277D84F90];
        while (1)
        {
          v147 = v0[131];
          v148 = v0[128];
          v149 = v0[113];
          v150 = v0[112];
          v195 = v144;
          v189(v147);
          outlined copy of Data._Representation(v205, v42);
          v151 = MLS.Storage.EpochRecord.epochID.getter();
          v152 = MLS.Storage.EpochRecord.data.getter();
          v154 = v153;
          (*v186)(v147, v148);
          outlined copy of Data._Representation(v150, v149);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v146 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v146 + 2) + 1, 1, v146);
          }

          v156 = *(v146 + 2);
          v155 = *(v146 + 3);
          v0 = v198;
          if (v156 >= v155 >> 1)
          {
            v146 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v155 > 1), v156 + 1, 1, v146);
          }

          v157 = &v146[80 * v156];
          v158 = *(v198 + 56);
          *(v146 + 2) = v156 + 1;
          *(v157 + 4) = v205;
          *(v157 + 5) = v202;
          *(v157 + 6) = v151;
          v157[56] = 0;
          *(v157 + 15) = *&v207[3];
          *(v157 + 57) = *v207;
          *(v157 + 8) = 1;
          v157[72] = 0;
          v159 = v208[0];
          *(v157 + 19) = *(v208 + 3);
          *(v157 + 73) = v159;
          *(v157 + 5) = v158;
          *(v157 + 12) = v152;
          *(v157 + 13) = v154;
          if (!v145)
          {
            break;
          }

          --v145;
          v144 = v195 + v183;
          v42 = v202;
        }

        v42 = v202;
      }

      else
      {

        v146 = MEMORY[0x277D84F90];
      }

      v0[148] = v146;
      v160 = MLS.Storage.GroupStateUpdate.epochDeletes.getter();
      v161 = *(v160 + 16);
      if (v161)
      {
        v162 = MEMORY[0x277D84F90];
        v163 = v161 - 1;
        v164 = 32;
        v165 = v205;
        while (1)
        {
          v166 = *(v160 + v164);
          outlined copy of Data._Representation(v198[112], v198[113]);
          outlined copy of Data._Representation(v165, v42);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v162 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v162 + 2) + 1, 1, v162);
          }

          v168 = *(v162 + 2);
          v167 = *(v162 + 3);
          if (v168 >= v167 >> 1)
          {
            v162 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v167 > 1), v168 + 1, 1, v162);
          }

          v169 = &v162[80 * v168];
          v170 = *(v198 + 56);
          *(v162 + 2) = v168 + 1;
          v165 = v205;
          *(v169 + 4) = v205;
          *(v169 + 5) = v42;
          *(v169 + 6) = v166;
          v169[56] = 0;
          *(v169 + 15) = *&v207[3];
          *(v169 + 57) = *v207;
          *(v169 + 8) = 1;
          v169[72] = 0;
          v171 = v208[0];
          *(v169 + 19) = *(v208 + 3);
          *(v169 + 73) = v171;
          *(v169 + 5) = v170;
          *(v169 + 6) = xmmword_265343890;
          if (!v163)
          {
            break;
          }

          --v163;
          v164 += 8;
        }

        outlined consume of Data._Representation(v205, v42);
        v0 = v198;
      }

      else
      {

        v165 = v205;
        outlined consume of Data._Representation(v205, v42);
        v162 = MEMORY[0x277D84F90];
      }

      v0[149] = v162;
      v172 = Logger.logObject.getter();
      v173 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v172, v173))
      {
        v174 = swift_slowAlloc();
        *v174 = 0;
        _os_log_impl(&dword_26524C000, v172, v173, "DaemonPersister groupStateUpdate inserting group state", v174, 2u);
        MEMORY[0x2667577B0](v174, -1, -1);
      }

      v175 = v0[116];
      v176 = v0[113];
      v177 = v0[112];

      v0[150] = *(v175 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
      v0[95] = &type metadata for GroupStateModel;
      v0[96] = &protocol witness table for GroupStateModel;
      v178 = swift_allocObject();
      v0[92] = v178;
      v178[2] = v165;
      v178[3] = v42;
      v178[4] = v177;
      v178[5] = v176;
      v178[6] = v181;
      v178[7] = v180;
      outlined copy of Data._Representation(v165, v42);
      outlined copy of Data._Representation(v177, v176);
      outlined copy of Data._Representation(v181, v180);
      v179 = swift_task_alloc();
      v0[151] = v179;
      *v179 = v0;
      v179[1] = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);

      return SqliteStore.insert(_:)((v0 + 92));
    }

    else
    {
      v118 = v0[136];
      v119 = v0[133];
      v120 = v0[114];
      v121 = v0[113];
      v122 = v0[112];

      v193(v118, v120, v119);
      outlined copy of Data._Representation(v122, v121);
      v123 = Logger.logObject.getter();
      v124 = static os_log_type_t.fault.getter();
      outlined consume of Data._Representation(v122, v121);
      if (os_log_type_enabled(v123, v124))
      {
        v125 = v0[137];
        v126 = v0[136];
        v127 = v0[133];
        v128 = swift_slowAlloc();
        v199 = swift_slowAlloc();
        v208[0] = v199;
        *v128 = 136315394;
        v129 = Data.description.getter();
        v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v130, v208);

        *(v128 + 4) = v131;
        *(v128 + 12) = 2080;
        v193(v125, v126, v127);
        v42 = v202;
        v132 = String.init<A>(describing:)();
        v134 = v133;
        v135 = v126;
        v94 = v205;
        v191(v135, v127);
        v136 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v134, v208);

        *(v128 + 14) = v136;
        _os_log_impl(&dword_26524C000, v123, v124, "DaemonPersister groupStateUpdate called outside atomically block { groupID: %s, groupStateUpdate: %s }", v128, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2667577B0](v199, -1, -1);
        MEMORY[0x2667577B0](v128, -1, -1);
      }

      else
      {
        v137 = v0[136];
        v138 = v0[133];

        v191(v137, v138);
      }

      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v139 = 6;
      *(v139 + 8) = 0;
      *(v139 + 16) = 0;
      swift_willThrow();
      outlined consume of Data._Representation(v94, v42);

      v140 = v0[1];

      return v140();
    }
  }

  else
  {
    v3 = v0[135];
    v4 = v0[133];
    v5 = v0[114];
    v6 = v0[113];
    v7 = v0;
    v8 = v0[112];
    v9 = *(v0[134] + 16);
    v9(v3, v5, v4);
    outlined copy of Data._Representation(v8, v6);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    outlined consume of Data._Representation(v8, v6);
    if (os_log_type_enabled(v10, v11))
    {
      v192 = v7[137];
      v200 = v7[135];
      v12 = v7[134];
      v13 = v7[133];
      v14 = swift_slowAlloc();
      v204 = swift_slowAlloc();
      v208[0] = v204;
      *v14 = 136315394;
      v15 = Data.description.getter();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v208);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      v9(v192, v200, v13);
      v18 = String.init<A>(describing:)();
      v20 = v19;
      (*(v12 + 8))(v200, v13);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v208);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_26524C000, v10, v11, "DaemonPersister groupStateUpdate using inMemory mode { groupID: %s, groupStateUpdate: %s }", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v204, -1, -1);
      MEMORY[0x2667577B0](v14, -1, -1);
    }

    else
    {
      v23 = v7[135];
      v24 = v7[134];
      v25 = v7[133];

      v22 = (*(v24 + 8))(v23, v25);
    }

    v26 = v7;
    v7[165] = (*(*v7[116] + 168))(v22);
    MLS.Storage.GroupStateUpdate.groupState.getter();
    v27 = MLS.Storage.GroupStateUpdate.epochInserts.getter();
    v28 = *(v27 + 16);
    v29 = MEMORY[0x277D84F90];
    if (v28)
    {
      v30 = v7[129];
      v31 = v7[122];
      v208[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
      v32 = v208[0];
      v33 = *(v30 + 16);
      v30 += 16;
      v34 = v27 + ((*(v30 + 64) + 32) & ~*(v30 + 64));
      v196 = *(v30 + 56);
      v201 = v33;
      v35 = (v30 - 8);
      do
      {
        v36 = v26[130];
        v37 = v26[128];
        v201(v36, v34, v37);
        MLS.Storage.EpochRecord.epochID.getter();
        MLS.EpochKey.init(era:epochID:)();
        MLS.Storage.EpochRecord.data.getter();
        MLS.Record.init(epochKey:data:)();
        (*v35)(v36, v37);
        v208[0] = v32;
        v39 = *(v32 + 16);
        v38 = *(v32 + 24);
        if (v39 >= v38 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
          v32 = v208[0];
        }

        v40 = v26[124];
        v41 = v26[121];
        *(v32 + 16) = v39 + 1;
        (*(v31 + 32))(v32 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v39, v40, v41);
        v34 += v196;
        --v28;
      }

      while (v28);

      v29 = MEMORY[0x277D84F90];
    }

    else
    {
    }

    v66 = MLS.Storage.GroupStateUpdate.epochUpdates.getter();
    v67 = *(v66 + 16);
    if (v67)
    {
      v68 = v26[129];
      v69 = v26[122];
      v208[0] = v29;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v67, 0);
      v70 = v208[0];
      v71 = *(v68 + 16);
      v68 += 16;
      v72 = v66 + ((*(v68 + 64) + 32) & ~*(v68 + 64));
      v197 = *(v68 + 56);
      v203 = v71;
      v73 = (v68 - 8);
      do
      {
        v74 = v26[130];
        v75 = v26[128];
        v203(v74, v72, v75);
        MLS.Storage.EpochRecord.epochID.getter();
        MLS.EpochKey.init(era:epochID:)();
        MLS.Storage.EpochRecord.data.getter();
        MLS.Record.init(epochKey:data:)();
        (*v73)(v74, v75);
        v208[0] = v70;
        v77 = *(v70 + 16);
        v76 = *(v70 + 24);
        if (v77 >= v76 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v77 + 1, 1);
          v70 = v208[0];
        }

        v78 = v26[123];
        v79 = v26[121];
        *(v70 + 16) = v77 + 1;
        (*(v69 + 32))(v70 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v77, v78, v79);
        v72 += v197;
        --v67;
      }

      while (v67);

      v29 = MEMORY[0x277D84F90];
    }

    else
    {
    }

    v80 = *(MLS.Storage.GroupStateUpdate.epochDeletes.getter() + 16);
    if (v80)
    {
      v81 = v26[118];
      v208[0] = v29;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v80, 0);
      v82 = v208[0];
      v83 = 32;
      do
      {
        MLS.EpochKey.init(era:epochID:)();
        v208[0] = v82;
        v85 = *(v82 + 16);
        v84 = *(v82 + 24);
        if (v85 >= v84 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1);
          v82 = v208[0];
        }

        v86 = v26[119];
        v87 = v26[117];
        *(v82 + 16) = v85 + 1;
        (*(v81 + 32))(v82 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v85, v86, v87);
        v83 += 8;
        --v80;
      }

      while (v80);
    }

    outlined copy of Data._Representation(v26[112], v26[113]);
    MLS.WriteGroupData.init(groupID:groupState:epochInsertRecords:epochUpdateRecords:epochDeleteKeys:)();
    v206 = (*MEMORY[0x277D4CEA8] + MEMORY[0x277D4CEA8]);
    v88 = swift_task_alloc();
    v26[166] = v88;
    *v88 = v26;
    v88[1] = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);
    v89 = v26[115];
    v90 = v26[127];

    return v206(v90, v89);
  }
}

{
  v2 = *v1;
  *(*v1 + 1216) = v0;

  if (v0)
  {

    v3 = v2[141];
    v4 = v2[140];
    v5 = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 92);
    v3 = v2[141];
    v4 = v2[140];
    v5 = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v2 = *v1;
  *(*v1 + 1248) = v0;

  if (v0)
  {

    v3 = v2[141];
    v4 = v2[140];
    v5 = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 97);
    v3 = v2[141];
    v4 = v2[140];
    v5 = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v2 = *v1;
  *(*v1 + 1280) = v0;

  if (v0)
  {

    v3 = v2[141];
    v4 = v2[140];
    v5 = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 102);
    v3 = v2[141];
    v4 = v2[140];
    v5 = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v2 = *v1;
  *(*v1 + 1312) = v0;

  if (v0)
  {

    v3 = v2[141];
    v4 = v2[140];
    v5 = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 107);
    v3 = v2[141];
    v4 = v2[140];
    v5 = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = *(v0 + 1288);
  v2 = *(v0 + 1296) + 1;
  result = outlined destroy of EpochModel(v0 + 496);
  if (v2 == v1)
  {
    v4 = *(v0 + 1168);
    v5 = *(v0 + 1160);
    v6 = *(v0 + 1144);
    v7 = *(v0 + 1136);
    v8 = *(v0 + 904);
    v9 = *(v0 + 896);

    outlined consume of Data._Representation(v7, v6);
    outlined consume of Data._Representation(v9, v8);
    outlined consume of Data._Representation(v5, v4);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v11 = *(v0 + 1296) + 1;
    *(v0 + 1296) = v11;
    v12 = *(v0 + 1192);
    if (v11 >= *(v12 + 16))
    {
      __break(1u);
    }

    else
    {
      v13 = (v12 + 80 * v11);
      *(v0 + 496) = v13[2];
      v14 = v13[3];
      v15 = v13[4];
      v16 = v13[6];
      *(v0 + 544) = v13[5];
      *(v0 + 560) = v16;
      *(v0 + 512) = v14;
      *(v0 + 528) = v15;
      *(v0 + 880) = &type metadata for EpochModel;
      *(v0 + 888) = &protocol witness table for EpochModel;
      v17 = swift_allocObject();
      *(v0 + 856) = v17;
      memmove((v17 + 16), v13 + 2, 0x50uLL);
      outlined init with copy of EpochModel(v0 + 496, v0 + 576);
      outlined init with copy of EpochModel(v0 + 496, v0 + 656);
      v18 = swift_task_alloc();
      *(v0 + 1304) = v18;
      *v18 = v0;
      v18[1] = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);

      return SqliteStore.delete(_:)(v0 + 856);
    }
  }

  return result;
}

{
  v2 = *v1;
  *(*v1 + 1336) = v0;

  (*(v2[126] + 8))(v2[127], v2[125]);

  v3 = v2[141];
  v4 = v2[140];
  if (v0)
  {
    v5 = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);
  }

  else
  {
    v5 = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[146];
  v2 = v0[145];
  v3 = v0[113];
  v4 = v0[112];
  outlined consume of Data._Representation(v0[142], v0[143]);
  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v2, v1);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 92);

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[146];
  v2 = v0[145];
  v3 = v0[113];
  v4 = v0[112];
  outlined consume of Data._Representation(v0[142], v0[143]);
  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v2, v1);
  outlined destroy of EpochModel((v0 + 2));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 97);

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[146];
  v2 = v0[145];
  v3 = v0[113];
  v4 = v0[112];
  outlined consume of Data._Representation(v0[142], v0[143]);
  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v2, v1);
  outlined destroy of EpochModel((v0 + 32));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 102);

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[146];
  v2 = v0[145];
  v3 = v0[113];
  v4 = v0[112];
  outlined consume of Data._Representation(v0[142], v0[143]);
  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v2, v1);
  outlined destroy of EpochModel((v0 + 62));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 107);

  v5 = v0[1];

  return v5();
}

void DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:)(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26524C000, v2, v3, "DaemonPersister groupStateUpdate inserting epoch records", v4, 2u);
    MEMORY[0x2667577B0](v4, -1, -1);
  }

  v5 = *(v1 + 1176);

  v6 = *(v5 + 16);
  *(v1 + 1224) = v6;
  v7 = *(v1 + 1176);
  if (v6)
  {
    *(v1 + 1232) = 0;
    if (*(v7 + 2))
    {
      *(v1 + 16) = v7[2];
      v8 = v7[3];
      v9 = v7[4];
      v10 = v7[6];
      *(v1 + 64) = v7[5];
      *(v1 + 80) = v10;
      *(v1 + 32) = v8;
      *(v1 + 48) = v9;
      *(v1 + 800) = &type metadata for EpochModel;
      *(v1 + 808) = &protocol witness table for EpochModel;
      v11 = swift_allocObject();
      *(v1 + 776) = v11;
      memmove((v11 + 16), v7 + 2, 0x50uLL);
      outlined init with copy of EpochModel(v1 + 16, v1 + 96);
      outlined init with copy of EpochModel(v1 + 16, v1 + 176);
      v12 = swift_task_alloc();
      *(v1 + 1240) = v12;
      *v12 = v1;
      v12[1] = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);

      SqliteStore.insert(_:)(v1 + 776);
      return;
    }

    __break(1u);
    goto LABEL_26;
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_26524C000, v13, v14, "DaemonPersister groupStateUpdate updating epoch records", v15, 2u);
    MEMORY[0x2667577B0](v15, -1, -1);
  }

  v16 = *(v1 + 1184);

  v17 = *(v16 + 16);
  *(v1 + 1256) = v17;
  v18 = *(v1 + 1184);
  if (v17)
  {
    *(v1 + 1264) = 0;
    if (!*(v18 + 16))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    *(v1 + 256) = *(v18 + 32);
    v19 = *(v18 + 48);
    v20 = *(v18 + 64);
    v21 = *(v18 + 96);
    *(v1 + 304) = *(v18 + 80);
    *(v1 + 320) = v21;
    *(v1 + 272) = v19;
    *(v1 + 288) = v20;
    *(v1 + 840) = &type metadata for EpochModel;
    *(v1 + 848) = &protocol witness table for EpochModel;
    v22 = swift_allocObject();
    *(v1 + 816) = v22;
    memmove((v22 + 16), (v18 + 32), 0x50uLL);
    outlined init with copy of EpochModel(v1 + 256, v1 + 336);
    outlined init with copy of EpochModel(v1 + 256, v1 + 416);
    v23 = swift_task_alloc();
    *(v1 + 1272) = v23;
    *v23 = v1;
    v23[1] = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);

    SqliteStore.update(_:)(v1 + 816);
  }

  else
  {

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_26524C000, v24, v25, "DaemonPersister groupStateUpdate deleting epoch records", v26, 2u);
      MEMORY[0x2667577B0](v26, -1, -1);
    }

    v27 = *(v1 + 1192);

    v28 = *(v27 + 16);
    *(v1 + 1288) = v28;
    v29 = *(v1 + 1192);
    if (v28)
    {
      *(v1 + 1296) = 0;
      if (!*(v29 + 16))
      {
LABEL_27:
        __break(1u);
        return;
      }

      *(v1 + 496) = *(v29 + 32);
      v30 = *(v29 + 48);
      v31 = *(v29 + 64);
      v32 = *(v29 + 96);
      *(v1 + 544) = *(v29 + 80);
      *(v1 + 560) = v32;
      *(v1 + 512) = v30;
      *(v1 + 528) = v31;
      *(v1 + 880) = &type metadata for EpochModel;
      *(v1 + 888) = &protocol witness table for EpochModel;
      v33 = swift_allocObject();
      *(v1 + 856) = v33;
      memmove((v33 + 16), (v29 + 32), 0x50uLL);
      outlined init with copy of EpochModel(v1 + 496, v1 + 576);
      outlined init with copy of EpochModel(v1 + 496, v1 + 656);
      v34 = swift_task_alloc();
      *(v1 + 1304) = v34;
      *v34 = v1;
      v34[1] = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);

      SqliteStore.delete(_:)(v1 + 856);
    }

    else
    {
      v35 = *(v1 + 1168);
      v36 = *(v1 + 1160);
      v37 = *(v1 + 1144);
      v38 = *(v1 + 1136);
      v39 = *(v1 + 904);
      v40 = *(v1 + 896);

      outlined consume of Data._Representation(v38, v37);
      outlined consume of Data._Representation(v40, v39);
      outlined consume of Data._Representation(v36, v35);

      v41 = *(v1 + 8);

      v41();
    }
  }
}

void DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:)()
{
  v1 = *(v0 + 1224);
  v2 = *(v0 + 1232) + 1;
  outlined destroy of EpochModel(v0 + 16);
  if (v2 == v1)
  {

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_26524C000, v3, v4, "DaemonPersister groupStateUpdate updating epoch records", v5, 2u);
      MEMORY[0x2667577B0](v5, -1, -1);
    }

    v6 = *(v0 + 1184);

    v7 = *(v6 + 16);
    *(v0 + 1256) = v7;
    v8 = *(v0 + 1184);
    if (v7)
    {
      *(v0 + 1264) = 0;
      if (*(v8 + 2))
      {
        *(v0 + 256) = v8[2];
        v9 = v8[3];
        v10 = v8[4];
        v11 = v8[6];
        *(v0 + 304) = v8[5];
        *(v0 + 320) = v11;
        *(v0 + 272) = v9;
        *(v0 + 288) = v10;
        *(v0 + 840) = &type metadata for EpochModel;
        *(v0 + 848) = &protocol witness table for EpochModel;
        v12 = swift_allocObject();
        *(v0 + 816) = v12;
        memmove((v12 + 16), v8 + 2, 0x50uLL);
        outlined init with copy of EpochModel(v0 + 256, v0 + 336);
        outlined init with copy of EpochModel(v0 + 256, v0 + 416);
        v13 = swift_task_alloc();
        *(v0 + 1272) = v13;
        *v13 = v0;
        v13[1] = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);

        SqliteStore.update(_:)(v0 + 816);
        return;
      }

      goto LABEL_24;
    }

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_26524C000, v22, v23, "DaemonPersister groupStateUpdate deleting epoch records", v24, 2u);
      MEMORY[0x2667577B0](v24, -1, -1);
    }

    v25 = *(v0 + 1192);

    v26 = *(v25 + 16);
    *(v0 + 1288) = v26;
    v27 = *(v0 + 1192);
    if (v26)
    {
      *(v0 + 1296) = 0;
      if (!*(v27 + 16))
      {
LABEL_25:
        __break(1u);
        return;
      }

      *(v0 + 496) = *(v27 + 32);
      v28 = *(v27 + 48);
      v29 = *(v27 + 64);
      v30 = *(v27 + 96);
      *(v0 + 544) = *(v27 + 80);
      *(v0 + 560) = v30;
      *(v0 + 512) = v28;
      *(v0 + 528) = v29;
      *(v0 + 880) = &type metadata for EpochModel;
      *(v0 + 888) = &protocol witness table for EpochModel;
      v31 = swift_allocObject();
      *(v0 + 856) = v31;
      memmove((v31 + 16), (v27 + 32), 0x50uLL);
      outlined init with copy of EpochModel(v0 + 496, v0 + 576);
      outlined init with copy of EpochModel(v0 + 496, v0 + 656);
      v32 = swift_task_alloc();
      *(v0 + 1304) = v32;
      *v32 = v0;
      v32[1] = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);

      SqliteStore.delete(_:)(v0 + 856);
    }

    else
    {
      v33 = *(v0 + 1168);
      v34 = *(v0 + 1160);
      v35 = *(v0 + 1144);
      v36 = *(v0 + 1136);
      v37 = *(v0 + 904);
      v38 = *(v0 + 896);

      outlined consume of Data._Representation(v36, v35);
      outlined consume of Data._Representation(v38, v37);
      outlined consume of Data._Representation(v34, v33);

      v39 = *(v0 + 8);

      v39();
    }
  }

  else
  {
    v14 = *(v0 + 1232) + 1;
    *(v0 + 1232) = v14;
    v15 = *(v0 + 1176);
    if (v14 >= *(v15 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v16 = (v15 + 80 * v14);
    *(v0 + 16) = v16[2];
    v17 = v16[3];
    v18 = v16[4];
    v19 = v16[6];
    *(v0 + 64) = v16[5];
    *(v0 + 80) = v19;
    *(v0 + 32) = v17;
    *(v0 + 48) = v18;
    *(v0 + 800) = &type metadata for EpochModel;
    *(v0 + 808) = &protocol witness table for EpochModel;
    v20 = swift_allocObject();
    *(v0 + 776) = v20;
    memmove((v20 + 16), v16 + 2, 0x50uLL);
    outlined init with copy of EpochModel(v0 + 16, v0 + 96);
    outlined init with copy of EpochModel(v0 + 16, v0 + 176);
    v21 = swift_task_alloc();
    *(v0 + 1240) = v21;
    *v21 = v0;
    v21[1] = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);

    SqliteStore.insert(_:)(v0 + 776);
  }
}

{
  v1 = *(v0 + 1256);
  v2 = *(v0 + 1264) + 1;
  outlined destroy of EpochModel(v0 + 256);
  if (v2 == v1)
  {

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_26524C000, v3, v4, "DaemonPersister groupStateUpdate deleting epoch records", v5, 2u);
      MEMORY[0x2667577B0](v5, -1, -1);
    }

    v6 = *(v0 + 1192);

    v7 = *(v6 + 16);
    *(v0 + 1288) = v7;
    v8 = *(v0 + 1192);
    if (v7)
    {
      *(v0 + 1296) = 0;
      if (*(v8 + 2))
      {
        *(v0 + 496) = v8[2];
        v9 = v8[3];
        v10 = v8[4];
        v11 = v8[6];
        *(v0 + 544) = v8[5];
        *(v0 + 560) = v11;
        *(v0 + 512) = v9;
        *(v0 + 528) = v10;
        *(v0 + 880) = &type metadata for EpochModel;
        *(v0 + 888) = &protocol witness table for EpochModel;
        v12 = swift_allocObject();
        *(v0 + 856) = v12;
        memmove((v12 + 16), v8 + 2, 0x50uLL);
        outlined init with copy of EpochModel(v0 + 496, v0 + 576);
        outlined init with copy of EpochModel(v0 + 496, v0 + 656);
        v13 = swift_task_alloc();
        *(v0 + 1304) = v13;
        *v13 = v0;
        v13[1] = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);

        SqliteStore.delete(_:)(v0 + 856);
        return;
      }

LABEL_17:
      __break(1u);
      return;
    }

    v22 = *(v0 + 1168);
    v23 = *(v0 + 1160);
    v24 = *(v0 + 1144);
    v25 = *(v0 + 1136);
    v26 = *(v0 + 904);
    v27 = *(v0 + 896);

    outlined consume of Data._Representation(v25, v24);
    outlined consume of Data._Representation(v27, v26);
    outlined consume of Data._Representation(v23, v22);

    v28 = *(v0 + 8);

    v28();
  }

  else
  {
    v14 = *(v0 + 1264) + 1;
    *(v0 + 1264) = v14;
    v15 = *(v0 + 1184);
    if (v14 >= *(v15 + 16))
    {
      __break(1u);
      goto LABEL_17;
    }

    v16 = (v15 + 80 * v14);
    *(v0 + 256) = v16[2];
    v17 = v16[3];
    v18 = v16[4];
    v19 = v16[6];
    *(v0 + 304) = v16[5];
    *(v0 + 320) = v19;
    *(v0 + 272) = v17;
    *(v0 + 288) = v18;
    *(v0 + 840) = &type metadata for EpochModel;
    *(v0 + 848) = &protocol witness table for EpochModel;
    v20 = swift_allocObject();
    *(v0 + 816) = v20;
    memmove((v20 + 16), v16 + 2, 0x50uLL);
    outlined init with copy of EpochModel(v0 + 256, v0 + 336);
    outlined init with copy of EpochModel(v0 + 256, v0 + 416);
    v21 = swift_task_alloc();
    *(v0 + 1272) = v21;
    *v21 = v0;
    v21[1] = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);

    SqliteStore.update(_:)(v0 + 816);
  }
}

uint64_t DaemonPersister.readGroupState(groupID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  GroupKey = type metadata accessor for MLS.ReadGroupKey();
  v4[10] = GroupKey;
  v4[11] = *(GroupKey - 8);
  v4[12] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v4[13] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[14] = v7;
  v4[15] = v6;

  return MEMORY[0x2822009F8](DaemonPersister.readGroupState(groupID:clientIdentifier:), v7, v6);
}

uint64_t DaemonPersister.readGroupState(groupID:clientIdentifier:)()
{
  v35 = v0;
  if ((*(**(v0 + 72) + 264))())
  {
    type metadata accessor for MLS.UniqueClientIdentifier();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D008]);
    v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    *(v0 + 128) = v1;
    *(v0 + 136) = v2;
    v18 = v2;
    v19 = v1;
    v21 = *(v0 + 48);
    v20 = *(v0 + 56);
    *(v0 + 144) = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_logger;
    outlined copy of Data._Representation(v21, v20);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    outlined consume of Data._Representation(v21, v20);
    if (os_log_type_enabled(v22, v23))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v34[0] = v26;
      *v25 = 136315138;
      v27 = Data.description.getter();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v34);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_26524C000, v22, v23, "DaemonPersister readGroupState using persistence mode { groupID: %s }", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x2667577B0](v26, -1, -1);
      MEMORY[0x2667577B0](v25, -1, -1);
    }

    outlined copy of Data._Representation(*(v0 + 48), *(v0 + 56));
    outlined copy of Data._Representation(v19, v18);
    v30 = swift_task_alloc();
    *(v0 + 152) = v30;
    *v30 = v0;
    v30[1] = DaemonPersister.readGroupState(groupID:clientIdentifier:);
    v31 = *(v0 + 48);
    v32 = *(v0 + 56);

    return specialized SqliteStore.query<A>(_:)(v19, v18, v31, v32);
  }

  else
  {
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    *(v0 + 176) = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_logger;
    outlined copy of Data._Representation(v4, v3);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    outlined consume of Data._Representation(v4, v3);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v34[0] = v8;
      *v7 = 136315138;
      v9 = Data.description.getter();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v34);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_26524C000, v5, v6, "DaemonPersister readGroupState using inMemory mode { groupID: %s }", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x2667577B0](v8, -1, -1);
      MEMORY[0x2667577B0](v7, -1, -1);
    }

    v13 = *(v0 + 48);
    v12 = *(v0 + 56);
    *(v0 + 184) = (*(**(v0 + 72) + 168))();
    outlined copy of Data._Representation(v13, v12);
    MLS.ReadGroupKey.init(groupID:)();
    v33 = (*MEMORY[0x277D4CE10] + MEMORY[0x277D4CE10]);
    v14 = swift_task_alloc();
    *(v0 + 192) = v14;
    *v14 = v0;
    v14[1] = DaemonPersister.readGroupState(groupID:clientIdentifier:);
    v15 = *(v0 + 96);
    v16 = *(v0 + 64);

    return v33(v15, v16);
  }
}

{
  v29 = v0;
  v1 = v0[20];

  v2 = v0[20];
  if (*(v1 + 16))
  {
    v3 = v2[4];
    v4 = v2[5];
    v5 = v2[6];
    v6 = v2[7];
    v7 = v2[8];
    v8 = v2[9];
    outlined copy of Data._Representation(v3, v4);
    outlined copy of Data._Representation(v5, v6);
    outlined copy of Data._Representation(v7, v8);

    outlined copy of Data._Representation(v7, v8);
    outlined consume of Data._Representation(v3, v4);
    outlined consume of Data._Representation(v5, v6);
    outlined consume of Data._Representation(v7, v8);
  }

  else
  {

    v7 = 0;
    v8 = 0xF000000000000000;
  }

  v10 = v0[6];
  v9 = v0[7];
  outlined copy of Data._Representation(v10, v9);
  outlined copy of Data?(v7, v8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(v10, v9);
  outlined consume of Data?(v7, v8);
  v13 = os_log_type_enabled(v11, v12);
  v15 = v0[16];
  v14 = v0[17];
  if (v13)
  {
    v27 = v0[17];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = v17;
    *v16 = 136315394;
    v18 = Data.description.getter();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v28);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v0[4] = v7;
    v0[5] = v8;
    outlined copy of Data?(v7, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v21 = String.init<A>(describing:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v28);

    *(v16 + 14) = v23;
    _os_log_impl(&dword_26524C000, v11, v12, "DaemonPersister readGroupState returning { groupID: %s, data: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v17, -1, -1);
    MEMORY[0x2667577B0](v16, -1, -1);
    v24 = v15;
    v14 = v27;
  }

  else
  {
    v24 = v0[16];
  }

  outlined consume of Data._Representation(v24, v14);

  v25 = v0[1];

  return v25(v7, v8);
}

{
  v22 = v0;
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[6];
  v3 = v0[7];

  outlined copy of Data._Representation(v4, v3);
  outlined copy of Data?(v2, v1);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data?(v2, v1);
  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[25];
    v7 = v0[26];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315394;
    v11 = Data.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v21);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v0[2] = v8;
    v0[3] = v7;
    outlined copy of Data?(v8, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v14 = String.init<A>(describing:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v21);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_26524C000, v5, v6, "DaemonPersister readGroupState returning { groupID: %s, data: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v10, -1, -1);
    MEMORY[0x2667577B0](v9, -1, -1);
  }

  v17 = v0[25];
  v18 = v0[26];

  v19 = v0[1];

  return v19(v17, v18);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  outlined consume of Data._Representation(v0[16], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t DaemonPersister.readGroupState(groupID:clientIdentifier:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *(*v2 + 128);
  v7 = *(*v2 + 56);
  v8 = *(*v2 + 48);
  *(v4 + 160) = a1;
  *(v4 + 168) = v1;

  outlined consume of Data._Representation(v6, v5);
  outlined consume of Data._Representation(v8, v7);
  v9 = *(v3 + 120);
  v10 = *(v3 + 112);
  if (v1)
  {
    v11 = DaemonPersister.readGroupState(groupID:clientIdentifier:);
  }

  else
  {
    v11 = DaemonPersister.readGroupState(groupID:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t DaemonPersister.readGroupState(groupID:clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 96);
  v7 = *(*v3 + 88);
  v8 = *(*v3 + 80);
  v5[25] = a1;
  v5[26] = a2;
  v5[27] = v2;

  (*(v7 + 8))(v6, v8);

  v9 = v4[15];
  v10 = v4[14];
  if (v2)
  {
    v11 = DaemonPersister.readGroupState(groupID:clientIdentifier:);
  }

  else
  {
    v11 = DaemonPersister.readGroupState(groupID:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t DaemonPersister.readEpochData(groupID:epochID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  type metadata accessor for MLS.EpochKey();
  v5[17] = swift_task_alloc();
  EpochKey = type metadata accessor for MLS.ReadEpochKey();
  v5[18] = EpochKey;
  v5[19] = *(EpochKey - 8);
  v5[20] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v5[21] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[22] = v8;
  v5[23] = v7;

  return MEMORY[0x2822009F8](DaemonPersister.readEpochData(groupID:epochID:clientIdentifier:), v8, v7);
}

uint64_t DaemonPersister.readEpochData(groupID:epochID:clientIdentifier:)()
{
  v38 = v0;
  if ((*(**(v0 + 128) + 264))())
  {
    type metadata accessor for MLS.UniqueClientIdentifier();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D008]);
    v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    *(v0 + 192) = v1;
    *(v0 + 200) = v2;
    v19 = v1;
    v20 = v2;
    v22 = *(v0 + 96);
    v21 = *(v0 + 104);
    *(v0 + 208) = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_logger;
    outlined copy of Data._Representation(v22, v21);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    outlined consume of Data._Representation(v22, v21);
    if (os_log_type_enabled(v23, v24))
    {
      v26 = *(v0 + 112);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v37[0] = v28;
      *v27 = 136315394;
      v29 = Data.description.getter();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v37);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2048;
      *(v27 + 14) = v26;
      _os_log_impl(&dword_26524C000, v23, v24, "DaemonPersister readEpochData using persistence mode { groupID: %s, epochID: %lld }", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x2667577B0](v28, -1, -1);
      MEMORY[0x2667577B0](v27, -1, -1);
    }

    v32 = *(v0 + 104);
    v33 = *(v0 + 112);
    v34 = *(v0 + 96);
    *(v0 + 16) = v19;
    *(v0 + 24) = v20;
    *(v0 + 32) = v33;
    *(v0 + 40) = 1;
    *(v0 + 48) = v34;
    *(v0 + 56) = v32;
    outlined copy of Data._Representation(v34, v32);
    outlined copy of Data._Representation(v19, v20);
    v35 = swift_task_alloc();
    *(v0 + 216) = v35;
    *v35 = v0;
    v35[1] = DaemonPersister.readEpochData(groupID:epochID:clientIdentifier:);

    return specialized SqliteStore.query<A>(_:)(v0 + 16);
  }

  else
  {
    v4 = *(v0 + 96);
    v3 = *(v0 + 104);
    *(v0 + 240) = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_logger;
    outlined copy of Data._Representation(v4, v3);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    outlined consume of Data._Representation(v4, v3);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 112);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v37[0] = v9;
      *v8 = 136315394;
      v10 = Data.description.getter();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v37);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2048;
      *(v8 + 14) = v7;
      _os_log_impl(&dword_26524C000, v5, v6, "DaemonPersister readEpochData using inMemory mode { groupID: %s, epochID: %lld }", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x2667577B0](v9, -1, -1);
      MEMORY[0x2667577B0](v8, -1, -1);
    }

    v13 = *(v0 + 104);
    v14 = *(v0 + 96);
    *(v0 + 248) = (*(**(v0 + 128) + 168))();
    outlined copy of Data._Representation(v14, v13);
    MLS.EpochKey.init(era:epochID:)();
    MLS.ReadEpochKey.init(groupID:epochKey:)();
    v36 = (*MEMORY[0x277D4CE00] + MEMORY[0x277D4CE00]);
    v15 = swift_task_alloc();
    *(v0 + 256) = v15;
    *v15 = v0;
    v15[1] = DaemonPersister.readEpochData(groupID:epochID:clientIdentifier:);
    v16 = *(v0 + 160);
    v17 = *(v0 + 120);

    return v36(v16, v17);
  }
}

{
  v30 = v0;
  v1 = v0[28];

  v2 = v0[28];
  if (*(v1 + 16))
  {
    v3 = v2[4];
    v4 = v2[5];
    v5 = v2[10];
    v6 = v2[11];
    v7 = v2[12];
    v8 = v2[13];
    outlined copy of Data._Representation(v3, v4);
    outlined copy of Data._Representation(v5, v6);
    outlined copy of Data?(v7, v8);

    outlined copy of Data?(v7, v8);
    outlined consume of Data._Representation(v3, v4);
    outlined consume of Data._Representation(v5, v6);
    outlined consume of Data?(v7, v8);
  }

  else
  {

    v7 = 0;
    v8 = 0xF000000000000000;
  }

  v10 = v0[12];
  v9 = v0[13];
  outlined copy of Data._Representation(v10, v9);
  outlined copy of Data?(v7, v8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(v10, v9);
  outlined consume of Data?(v7, v8);
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[25];
  if (v13)
  {
    v15 = v0[14];
    v27 = v0[24];
    v28 = v0[25];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v29 = v17;
    *v16 = 136315650;
    v18 = Data.description.getter();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v29);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2048;
    *(v16 + 14) = v15;
    *(v16 + 22) = 2080;
    v0[10] = v7;
    v0[11] = v8;
    outlined copy of Data?(v7, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v21 = String.init<A>(describing:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v29);

    *(v16 + 24) = v23;
    _os_log_impl(&dword_26524C000, v11, v12, "DaemonPersister readEpochData returning { groupID: %s, epochID: %lld, data: %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v17, -1, -1);
    MEMORY[0x2667577B0](v16, -1, -1);
    v24 = v27;
    v14 = v28;
  }

  else
  {
    v24 = v0[24];
  }

  outlined consume of Data._Representation(v24, v14);

  v25 = v0[1];

  return v25(v7, v8);
}

{
  v23 = v0;
  v2 = v0[33];
  v1 = v0[34];
  v4 = v0[12];
  v3 = v0[13];

  outlined copy of Data._Representation(v4, v3);
  outlined copy of Data?(v2, v1);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data?(v2, v1);
  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[33];
    v7 = v0[34];
    v9 = v0[14];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315650;
    v12 = Data.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v22);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v9;
    *(v10 + 22) = 2080;
    v0[8] = v8;
    v0[9] = v7;
    outlined copy of Data?(v8, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v15 = String.init<A>(describing:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v22);

    *(v10 + 24) = v17;
    _os_log_impl(&dword_26524C000, v5, v6, "DaemonPersister readEpochData returning { groupID: %s, epochID: %lld, data: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v11, -1, -1);
    MEMORY[0x2667577B0](v10, -1, -1);
  }

  v18 = v0[33];
  v19 = v0[34];

  v20 = v0[1];

  return v20(v18, v19);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  outlined consume of Data._Representation(v0[24], v0[25]);

  v1 = v0[1];

  return v1();
}

uint64_t DaemonPersister.readEpochData(groupID:epochID:clientIdentifier:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[28] = a1;
  v4[29] = v1;

  v5 = v3[13];
  v6 = v3[12];
  outlined consume of Data._Representation(v3[24], v3[25]);
  outlined consume of Data._Representation(v6, v5);
  v7 = v3[23];
  v8 = v3[22];
  if (v1)
  {
    v9 = DaemonPersister.readEpochData(groupID:epochID:clientIdentifier:);
  }

  else
  {
    v9 = DaemonPersister.readEpochData(groupID:epochID:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t DaemonPersister.readEpochData(groupID:epochID:clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[33] = a1;
  v5[34] = a2;
  v5[35] = v2;

  (*(v4[19] + 8))(v4[20], v4[18]);

  v6 = v4[23];
  v7 = v4[22];
  if (v2)
  {
    v8 = DaemonPersister.readEpochData(groupID:epochID:clientIdentifier:);
  }

  else
  {
    v8 = DaemonPersister.readEpochData(groupID:epochID:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t DaemonPersister.readGroupState(swiftMLSGroupRead:clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  GroupKey = type metadata accessor for MLS.ReadGroupKey();
  v3[9] = GroupKey;
  v3[10] = *(GroupKey - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v3[15] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[16] = v6;
  v3[17] = v5;

  return MEMORY[0x2822009F8](DaemonPersister.readGroupState(swiftMLSGroupRead:clientIdentifier:), v6, v5);
}

{
  v4 = *v3;
  v4[35] = a1;
  v4[36] = a2;
  v4[37] = v2;

  if (v2)
  {
    v5 = v4[16];
    v6 = v4[17];
    v7 = DaemonPersister.readGroupState(swiftMLSGroupRead:clientIdentifier:);
  }

  else
  {

    v5 = v4[16];
    v6 = v4[17];
    v7 = DaemonPersister.readGroupState(swiftMLSGroupRead:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t DaemonPersister.readGroupState(swiftMLSGroupRead:clientIdentifier:)()
{
  v61 = v0;
  if ((*(**(v0 + 64) + 264))())
  {
    type metadata accessor for MLS.UniqueClientIdentifier();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D008]);
    v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    *(v0 + 144) = v1;
    *(v0 + 152) = v2;
    v27 = v1;
    v28 = v2;
    v29 = *(v0 + 112);
    v30 = *(v0 + 72);
    v31 = *(v0 + 80);
    v32 = *(v0 + 48);
    *(v0 + 160) = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_logger;
    v33 = *(v31 + 16);
    *(v0 + 168) = v33;
    *(v0 + 176) = (v31 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v33(v29, v32, v30);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 112);
    v38 = *(v0 + 72);
    v39 = *(v0 + 80);
    if (v36)
    {
      v56 = *(v0 + 72);
      v40 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60[0] = v59;
      *v40 = 136315138;
      Group = MLS.ReadGroupKey.groupID.getter();
      v43 = v42;
      v52 = Data.description.getter();
      v54 = v35;
      v45 = v44;
      outlined consume of Data._Representation(Group, v43);
      v46 = *(v39 + 8);
      v46(v37, v56);
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v45, v60);

      *(v40 + 4) = v47;
      _os_log_impl(&dword_26524C000, v34, v54, "DaemonPersister readGroupState using persistence mode { groupID: %s }", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      MEMORY[0x2667577B0](v59, -1, -1);
      MEMORY[0x2667577B0](v40, -1, -1);
    }

    else
    {

      v46 = *(v39 + 8);
      v46(v37, v38);
    }

    *(v0 + 184) = v46;
    outlined copy of Data._Representation(v27, v28);
    v48 = MLS.ReadGroupKey.groupID.getter();
    v50 = v49;
    *(v0 + 192) = v48;
    *(v0 + 200) = v49;
    v51 = swift_task_alloc();
    *(v0 + 208) = v51;
    *v51 = v0;
    v51[1] = DaemonPersister.readGroupState(swiftMLSGroupRead:clientIdentifier:);

    return specialized SqliteStore.query<A>(_:)(v27, v28, v48, v50);
  }

  else
  {
    v3 = *(v0 + 96);
    v4 = *(v0 + 72);
    v5 = *(v0 + 80);
    v6 = *(v0 + 48);
    *(v0 + 232) = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_logger;
    v7 = *(v5 + 16);
    *(v0 + 240) = v7;
    *(v0 + 248) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v7(v3, v6, v4);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 96);
    v13 = *(v0 + 72);
    v12 = *(v0 + 80);
    if (v10)
    {
      v57 = v9;
      v14 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v60[0] = v55;
      *v14 = 136315138;
      v15 = MLS.ReadGroupKey.groupID.getter();
      v17 = v16;
      v53 = Data.description.getter();
      v19 = v18;
      outlined consume of Data._Representation(v15, v17);
      v20 = *(v12 + 8);
      v20(v11, v13);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v19, v60);

      *(v14 + 4) = v21;
      _os_log_impl(&dword_26524C000, v8, v57, "DaemonPersister readGroupState using inMemory mode { groupID: %s }", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      MEMORY[0x2667577B0](v55, -1, -1);
      MEMORY[0x2667577B0](v14, -1, -1);
    }

    else
    {

      v20 = *(v12 + 8);
      v22 = (v20)(v11, v13);
    }

    *(v0 + 256) = v20;
    *(v0 + 264) = (*(**(v0 + 64) + 168))(v22);
    v58 = (*MEMORY[0x277D4CE10] + MEMORY[0x277D4CE10]);
    v23 = swift_task_alloc();
    *(v0 + 272) = v23;
    *v23 = v0;
    v23[1] = DaemonPersister.readGroupState(swiftMLSGroupRead:clientIdentifier:);
    v25 = *(v0 + 48);
    v24 = *(v0 + 56);

    return v58(v25, v24);
  }
}

{
  v38 = v0;
  v1 = *(v0 + 216);

  v2 = *(v0 + 216);
  if (*(v1 + 16))
  {
    v3 = v2[4];
    v4 = v2[5];
    v5 = v2[6];
    v6 = v2[7];
    v8 = v2[8];
    v7 = v2[9];
    outlined copy of Data._Representation(v3, v4);
    outlined copy of Data._Representation(v5, v6);
    outlined copy of Data._Representation(v8, v7);

    outlined copy of Data._Representation(v8, v7);
    outlined consume of Data._Representation(v3, v4);
    outlined consume of Data._Representation(v5, v6);
    outlined consume of Data._Representation(v8, v7);
  }

  else
  {

    v8 = 0;
    v7 = 0xF000000000000000;
  }

  (*(v0 + 168))(*(v0 + 104), *(v0 + 48), *(v0 + 72));
  outlined copy of Data?(v8, v7);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  outlined consume of Data?(v8, v7);
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 184);
  v13 = *(v0 + 104);
  v14 = *(v0 + 72);
  if (v11)
  {
    v35 = *(v0 + 144);
    v36 = *(v0 + 152);
    v15 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v37 = v34;
    *v15 = 136315394;
    v31 = v12;
    Group = MLS.ReadGroupKey.groupID.getter();
    v33 = v10;
    v17 = v7;
    v18 = v8;
    v20 = v19;
    v30 = Data.description.getter();
    log = v9;
    v22 = v21;
    v23 = v20;
    v8 = v18;
    v7 = v17;
    outlined consume of Data._Representation(Group, v23);
    v31(v13, v14);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v22, &v37);

    *(v15 + 4) = v24;
    *(v15 + 12) = 2080;
    *(v0 + 32) = v8;
    *(v0 + 40) = v17;
    outlined copy of Data?(v8, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v25 = String.init<A>(describing:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v37);

    *(v15 + 14) = v27;
    _os_log_impl(&dword_26524C000, log, v33, "DaemonPersister readGroupState returning { groupID: %s, data: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v34, -1, -1);
    MEMORY[0x2667577B0](v15, -1, -1);
    outlined consume of Data._Representation(v35, v36);
  }

  else
  {
    outlined consume of Data._Representation(*(v0 + 144), *(v0 + 152));

    v12(v13, v14);
  }

  v28 = *(v0 + 8);

  return v28(v8, v7);
}

{
  v34 = v0;
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[30];
  v4 = v0[11];
  v5 = v0[9];
  v6 = v0[6];

  v3(v4, v6, v5);
  outlined copy of Data?(v2, v1);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  outlined consume of Data?(v2, v1);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[35];
    v30 = v0[32];
    v31 = v0[36];
    v10 = v0[11];
    v29 = v0[9];
    v11 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v11 = 136315394;
    Group = MLS.ReadGroupKey.groupID.getter();
    v14 = v13;
    v15 = Data.description.getter();
    v17 = v16;
    outlined consume of Data._Representation(Group, v14);
    v30(v10, v29);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v33);

    *(v11 + 4) = v18;
    *(v11 + 12) = 2080;
    v0[2] = v9;
    v0[3] = v31;
    outlined copy of Data?(v9, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v19 = String.init<A>(describing:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v33);

    *(v11 + 14) = v21;
    _os_log_impl(&dword_26524C000, v7, v8, "DaemonPersister readGroupState returning { groupID: %s, data: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v32, -1, -1);
    MEMORY[0x2667577B0](v11, -1, -1);
  }

  else
  {
    v22 = v0[32];
    v23 = v0[11];
    v24 = v0[9];

    v22(v23, v24);
  }

  v25 = v0[35];
  v26 = v0[36];

  v27 = v0[1];

  return v27(v25, v26);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  outlined consume of Data._Representation(v0[18], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t DaemonPersister.readGroupState(swiftMLSGroupRead:clientIdentifier:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *(*v2 + 192);
  v7 = *(*v2 + 152);
  v8 = *(*v2 + 144);
  *(v4 + 216) = a1;
  *(v4 + 224) = v1;

  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  v9 = *(v3 + 136);
  v10 = *(v3 + 128);
  if (v1)
  {
    v11 = DaemonPersister.readGroupState(swiftMLSGroupRead:clientIdentifier:);
  }

  else
  {
    v11 = DaemonPersister.readGroupState(swiftMLSGroupRead:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t DaemonPersister.readEpochData(swiftMLSEpochRead:clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = type metadata accessor for MLS.EpochKey();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  EpochKey = type metadata accessor for MLS.ReadEpochKey();
  v3[19] = EpochKey;
  v3[20] = *(EpochKey - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v3[33] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[34] = v7;
  v3[35] = v6;

  return MEMORY[0x2822009F8](DaemonPersister.readEpochData(swiftMLSEpochRead:clientIdentifier:), v7, v6);
}

{
  v4 = *v3;
  v4[55] = a1;
  v4[56] = a2;
  v4[57] = v2;

  if (v2)
  {
    v5 = v4[34];
    v6 = v4[35];
    v7 = DaemonPersister.readEpochData(swiftMLSEpochRead:clientIdentifier:);
  }

  else
  {

    v5 = v4[34];
    v6 = v4[35];
    v7 = DaemonPersister.readEpochData(swiftMLSEpochRead:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t DaemonPersister.readEpochData(swiftMLSEpochRead:clientIdentifier:)()
{
  v90 = v0;
  if ((*(**(v0 + 112) + 264))())
  {
    type metadata accessor for MLS.UniqueClientIdentifier();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D008]);
    v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    *(v0 + 288) = v1;
    *(v0 + 296) = v2;
    v85 = v2;
    v88 = v1;
    v33 = *(v0 + 248);
    v32 = *(v0 + 256);
    v34 = *(v0 + 240);
    v36 = *(v0 + 152);
    v35 = *(v0 + 160);
    v37 = *(v0 + 96);
    *(v0 + 304) = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_logger;
    v38 = *(v35 + 16);
    *(v0 + 312) = v38;
    *(v0 + 320) = (v35 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v38(v32, v37, v36);
    v38(v33, v37, v36);
    v38(v34, v37, v36);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    v41 = os_log_type_enabled(v39, v40);
    v43 = *(v0 + 248);
    v42 = *(v0 + 256);
    v45 = *(v0 + 152);
    v44 = *(v0 + 160);
    if (v41)
    {
      v70 = *(v0 + 248);
      v46 = *(v0 + 144);
      loga = *(v0 + 128);
      v72 = *(v0 + 120);
      v76 = *(v0 + 240);
      v47 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v89[0] = v80;
      *v47 = 136315650;
      v78 = v40;
      Epoch = MLS.ReadEpochKey.groupID.getter();
      v50 = v49;
      v51 = Data.description.getter();
      v74 = v39;
      v53 = v52;
      outlined consume of Data._Representation(Epoch, v50);
      v54 = *(v44 + 8);
      v54(v42, v45);
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v89);

      *(v47 + 4) = v55;
      *(v47 + 12) = 2048;
      MLS.ReadEpochKey.epochKey.getter();
      v56 = MLS.EpochKey.epochID.getter();
      isa = loga[1].isa;
      isa(v46, v72);
      v54(v70, v45);
      *(v47 + 14) = v56;
      *(v47 + 22) = 2048;
      MLS.ReadEpochKey.epochKey.getter();
      v57 = MLS.EpochKey.era.getter();
      isa(v46, v72);
      v54(v76, v45);
      *(v47 + 24) = v57;
      _os_log_impl(&dword_26524C000, v74, v78, "DaemonPersister readEpochData using persistence mode { groupID: %s, epochID: %lld, eraID: %lld }", v47, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v80);
      MEMORY[0x2667577B0](v80, -1, -1);
      MEMORY[0x2667577B0](v47, -1, -1);
    }

    else
    {
      v54 = *(v44 + 8);
      v54(*(v0 + 240), *(v0 + 152));
      v54(v43, v45);

      v54(v42, v45);
    }

    *(v0 + 328) = v54;
    v59 = *(v0 + 136);
    v58 = *(v0 + 144);
    v61 = *(v0 + 120);
    v60 = *(v0 + 128);
    outlined copy of Data._Representation(v88, v85);
    MLS.ReadEpochKey.epochKey.getter();
    v81 = MLS.EpochKey.epochID.getter();
    v62 = *(v60 + 8);
    *(v0 + 336) = v62;
    *(v0 + 344) = (v60 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v62(v58, v61);
    MLS.ReadEpochKey.epochKey.getter();
    v63 = MLS.EpochKey.era.getter();
    v62(v59, v61);
    v64 = MLS.ReadEpochKey.groupID.getter();
    *(v0 + 352) = v64;
    *(v0 + 360) = v65;
    *(v0 + 16) = v88;
    *(v0 + 24) = v85;
    *(v0 + 32) = v81;
    *(v0 + 40) = v63;
    *(v0 + 48) = v64;
    *(v0 + 56) = v65;
    v66 = swift_task_alloc();
    *(v0 + 368) = v66;
    *v66 = v0;
    v66[1] = DaemonPersister.readEpochData(swiftMLSEpochRead:clientIdentifier:);

    return specialized SqliteStore.query<A>(_:)(v0 + 16);
  }

  else
  {
    v4 = *(v0 + 200);
    v3 = *(v0 + 208);
    v5 = *(v0 + 192);
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = *(v0 + 96);
    *(v0 + 392) = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_logger;
    v9 = *(v7 + 16);
    *(v0 + 400) = v9;
    *(v0 + 408) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v9(v3, v8, v6);
    v9(v4, v8, v6);
    v9(v5, v8, v6);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v14 = *(v0 + 200);
    v13 = *(v0 + 208);
    v15 = *(v0 + 152);
    v16 = *(v0 + 160);
    if (v12)
    {
      v71 = *(v0 + 152);
      v73 = *(v0 + 144);
      v86 = *(v0 + 128);
      v75 = *(v0 + 120);
      v77 = *(v0 + 192);
      v17 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v89[0] = v84;
      *v17 = 136315650;
      log = v10;
      v18 = MLS.ReadEpochKey.groupID.getter();
      v79 = v11;
      v20 = v19;
      v67 = Data.description.getter();
      v22 = v21;
      outlined consume of Data._Representation(v18, v20);
      v23 = *(v16 + 8);
      v23(v13, v15);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v22, v89);

      *(v17 + 4) = v24;
      *(v17 + 12) = 2048;
      MLS.ReadEpochKey.epochKey.getter();
      v25 = MLS.EpochKey.epochID.getter();
      v68 = *(v86 + 8);
      v68(v73, v75);
      v23(v14, v71);
      *(v17 + 14) = v25;
      *(v17 + 22) = 2048;
      MLS.ReadEpochKey.epochKey.getter();
      v26 = MLS.EpochKey.era.getter();
      v68(v73, v75);
      v23(v77, v71);
      *(v17 + 24) = v26;
      _os_log_impl(&dword_26524C000, log, v79, "DaemonPersister readEpochData using inMemory mode { groupID: %s, epochID: %lld, eraID: %lld }", v17, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v84);
      MEMORY[0x2667577B0](v84, -1, -1);
      MEMORY[0x2667577B0](v17, -1, -1);
    }

    else
    {
      v23 = *(v16 + 8);
      v23(*(v0 + 192), *(v0 + 152));
      v23(v14, v15);

      v27 = (v23)(v13, v15);
    }

    *(v0 + 416) = v23;
    *(v0 + 424) = (*(**(v0 + 112) + 168))(v27);
    v87 = (*MEMORY[0x277D4CE00] + MEMORY[0x277D4CE00]);
    v28 = swift_task_alloc();
    *(v0 + 432) = v28;
    *v28 = v0;
    v28[1] = DaemonPersister.readEpochData(swiftMLSEpochRead:clientIdentifier:);
    v30 = *(v0 + 96);
    v29 = *(v0 + 104);

    return v87(v30, v29);
  }
}

{
  v53 = v0;
  v1 = v0[47];

  v2 = v0[47];
  if (*(v1 + 16))
  {
    v3 = v2[4];
    v4 = v2[5];
    v5 = v2[10];
    v6 = v2[11];
    v8 = v2[12];
    v7 = v2[13];
    outlined copy of Data._Representation(v3, v4);
    outlined copy of Data._Representation(v5, v6);
    outlined copy of Data?(v8, v7);

    outlined copy of Data?(v8, v7);
    outlined consume of Data._Representation(v3, v4);
    outlined consume of Data._Representation(v5, v6);
    v51 = v7;
    outlined consume of Data?(v8, v7);
  }

  else
  {

    v8 = 0;
    v51 = 0xF000000000000000;
  }

  v9 = v0[39];
  v10 = v0[28];
  v11 = v0[27];
  v12 = v0[19];
  v13 = v0[12];
  v9(v0[29], v13, v12);
  v9(v10, v13, v12);
  v9(v11, v13, v12);
  outlined copy of Data?(v8, v51);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  outlined consume of Data?(v8, v51);
  v50 = v8;
  if (os_log_type_enabled(v14, v15))
  {
    v42 = v0[42];
    v48 = v0[37];
    v49 = v0[41];
    v47 = v0[36];
    v46 = v15;
    v16 = v0[29];
    v43 = v0[27];
    v17 = v0[19];
    v18 = v0[18];
    v40 = v0[28];
    v41 = v0[15];
    log = v14;
    v19 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v52 = v45;
    *v19 = 136315906;
    Epoch = MLS.ReadEpochKey.groupID.getter();
    v22 = v21;
    v23 = Data.description.getter();
    v25 = v24;
    outlined consume of Data._Representation(Epoch, v22);
    v49(v16, v17);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v52);

    *(v19 + 4) = v26;
    *(v19 + 12) = 2048;
    MLS.ReadEpochKey.epochKey.getter();
    v27 = MLS.EpochKey.epochID.getter();
    v42(v18, v41);
    v49(v40, v17);
    *(v19 + 14) = v27;
    *(v19 + 22) = 2048;
    MLS.ReadEpochKey.epochKey.getter();
    v28 = MLS.EpochKey.era.getter();
    v42(v18, v41);
    v49(v43, v17);
    *(v19 + 24) = v28;
    *(v19 + 32) = 2080;
    v0[10] = v50;
    v0[11] = v51;
    outlined copy of Data?(v50, v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v29 = String.init<A>(describing:)();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v52);

    *(v19 + 34) = v31;
    _os_log_impl(&dword_26524C000, log, v46, "DaemonPersister readEpochData returning { groupID: %s, epochID: %lld, eraID: %lld, data: %s", v19, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v45, -1, -1);
    MEMORY[0x2667577B0](v19, -1, -1);
    outlined consume of Data._Representation(v47, v48);
  }

  else
  {
    v32 = v0[41];
    v33 = v0[36];
    v34 = v0[37];
    v36 = v0[28];
    v35 = v0[29];
    v37 = v0[19];
    v32(v0[27], v37);
    v32(v36, v37);
    outlined consume of Data._Representation(v33, v34);

    v32(v35, v37);
  }

  v38 = v0[1];

  return v38(v50, v51);
}

{
  v47 = v0;
  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[50];
  v4 = v0[22];
  v5 = v0[23];
  v6 = v0[21];
  v7 = v0[19];
  v8 = v0[12];

  v3(v5, v8, v7);
  v3(v4, v8, v7);
  v3(v6, v8, v7);
  outlined copy of Data?(v2, v1);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  outlined consume of Data?(v2, v1);
  if (os_log_type_enabled(v9, v10))
  {
    v38 = v0[55];
    v39 = v0[56];
    v44 = v0[52];
    v42 = v10;
    v11 = v0[23];
    log = v9;
    v13 = v0[18];
    v12 = v0[19];
    v34 = v0[22];
    v35 = v0[16];
    v36 = v0[15];
    v37 = v0[21];
    v14 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v46 = v40;
    *v14 = 136315906;
    Epoch = MLS.ReadEpochKey.groupID.getter();
    v17 = v16;
    v18 = Data.description.getter();
    v20 = v19;
    outlined consume of Data._Representation(Epoch, v17);
    v44(v11, v12);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v46);

    *(v14 + 4) = v21;
    *(v14 + 12) = 2048;
    MLS.ReadEpochKey.epochKey.getter();
    v22 = MLS.EpochKey.epochID.getter();
    v23 = *(v35 + 8);
    v23(v13, v36);
    v44(v34, v12);
    *(v14 + 14) = v22;
    *(v14 + 22) = 2048;
    MLS.ReadEpochKey.epochKey.getter();
    v24 = MLS.EpochKey.era.getter();
    v23(v13, v36);
    v44(v37, v12);
    *(v14 + 24) = v24;
    *(v14 + 32) = 2080;
    v0[8] = v38;
    v0[9] = v39;
    outlined copy of Data?(v38, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v25 = String.init<A>(describing:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v46);

    *(v14 + 34) = v27;
    _os_log_impl(&dword_26524C000, log, v42, "DaemonPersister readEpochData returning { groupID: %s, epochID: %lld, eraID: %lld, data: %s", v14, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v40, -1, -1);
    MEMORY[0x2667577B0](v14, -1, -1);
  }

  else
  {
    v28 = v0[52];
    v30 = v0[22];
    v29 = v0[23];
    v31 = v0[19];
    v28(v0[21], v31);
    v28(v30, v31);

    v28(v29, v31);
  }

  v43 = v0[55];
  v45 = v0[56];

  v32 = v0[1];

  return v32(v43, v45);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  outlined consume of Data._Representation(v0[36], v0[37]);

  v1 = v0[1];

  return v1();
}

uint64_t DaemonPersister.readEpochData(swiftMLSEpochRead:clientIdentifier:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[47] = a1;
  v4[48] = v1;

  v5 = v3[45];
  v6 = v3[44];
  outlined consume of Data._Representation(v3[36], v3[37]);
  outlined consume of Data._Representation(v6, v5);
  v7 = v3[35];
  v8 = v3[34];
  if (v1)
  {
    v9 = DaemonPersister.readEpochData(swiftMLSEpochRead:clientIdentifier:);
  }

  else
  {
    v9 = DaemonPersister.readEpochData(swiftMLSEpochRead:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[144] = v2;
  v3[143] = a2;
  v3[142] = a1;
  v4 = type metadata accessor for MLS.EpochKey();
  v3[145] = v4;
  v3[146] = *(v4 - 8);
  v3[147] = swift_task_alloc();
  v3[148] = swift_task_alloc();
  v3[149] = swift_task_alloc();
  v5 = type metadata accessor for MLS.Record();
  v3[150] = v5;
  v3[151] = *(v5 - 8);
  v3[152] = swift_task_alloc();
  v3[153] = swift_task_alloc();
  v6 = type metadata accessor for MLS.WriteGroupData();
  v3[154] = v6;
  v3[155] = *(v6 - 8);
  v3[156] = swift_task_alloc();
  v3[157] = swift_task_alloc();
  v3[158] = swift_task_alloc();
  v3[159] = swift_task_alloc();
  v3[160] = swift_task_alloc();
  v3[161] = swift_task_alloc();
  v3[162] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v3[163] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[164] = v8;
  v3[165] = v7;

  return MEMORY[0x2822009F8](DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:), v8, v7);
}

uint64_t DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:)()
{
  v214 = v0;
  if ((*(*v0[144] + 264))())
  {
    type metadata accessor for MLS.UniqueClientIdentifier();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D008]);
    v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v0[166] = v1;
    v0[167] = v2;
    v34 = v1;
    v35 = v2;
    v36 = v0[162];
    v37 = v0[161];
    v38 = v0[155];
    v39 = v0[154];
    v40 = v34;
    v41 = v0[142];
    v0[168] = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_logger;
    v42 = *(v38 + 16);
    v42(v36, v41, v39);
    v42(v37, v41, v39);
    v43 = v40;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    v46 = os_log_type_enabled(v44, v45);
    v47 = v0[162];
    log = v0[161];
    v208 = v35;
    v211 = v40;
    v193 = v42;
    if (v46)
    {
      v177 = v0[160];
      v48 = v0[155];
      v188 = v45;
      v49 = v0[154];
      v180 = v44;
      v50 = swift_slowAlloc();
      v184 = swift_slowAlloc();
      v213[0] = v184;
      *v50 = 136315394;
      v51 = MLS.WriteGroupData.groupID.getter();
      v53 = v52;
      v174 = Data.description.getter();
      v55 = v54;
      outlined consume of Data._Representation(v51, v53);
      v56 = *(v48 + 8);
      v56(v47, v49);
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v174, v55, v213);

      *(v50 + 4) = v57;
      *(v50 + 12) = 2080;
      v42(v177, log, v49);
      v58 = String.init<A>(describing:)();
      v60 = v59;
      v56(log, v49);
      v35 = v208;
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, v213);

      *(v50 + 14) = v61;
      _os_log_impl(&dword_26524C000, v180, v188, "DaemonPersister writeGroupID using persistence mode { groupID: %s, swiftMLSGroupWrite: %s }", v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v184, -1, -1);
      v43 = v211;
      MEMORY[0x2667577B0](v50, -1, -1);
    }

    else
    {
      v63 = v0[155];
      v64 = v0[154];

      v56 = *(v63 + 8);
      v56(log, v64);
      v62 = (v56)(v47, v64);
    }

    if ((*(*v0[144] + 192))(v62))
    {
      v65 = MLS.WriteGroupData.groupState.getter();
      v67 = v66;
      v0[169] = v65;
      v0[170] = v66;
      outlined copy of Data._Representation(v43, v35);
      v68 = MLS.WriteGroupData.groupID.getter();
      v0[171] = v68;
      v0[172] = v69;
      if (v67 >> 60 == 15)
      {
        v0[191] = *(v0[144] + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
        v0[115] = &type metadata for GroupStateModel;
        v0[116] = &protocol witness table for GroupStateModel;
        v70 = v68;
        v71 = v69;
        v72 = swift_allocObject();
        v0[112] = v72;
        *(v72 + 16) = v43;
        *(v72 + 24) = v35;
        *(v72 + 32) = v70;
        *(v72 + 40) = v71;
        *(v72 + 48) = xmmword_265343890;
        outlined copy of Data._Representation(v43, v35);
        outlined copy of Data._Representation(v70, v71);
        outlined copy of Data._Representation(0, 0xC000000000000000);
        v73 = swift_task_alloc();
        v0[192] = v73;
        *v73 = v0;
        v73[1] = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);

        return SqliteStore.delete(_:)((v0 + 112));
      }

      else
      {
        v168 = v67;
        v169 = v65;
        v170 = v68;
        v171 = v69;
        v96 = MLS.WriteGroupData.epochInsertRecords.getter();
        v97 = *(v96 + 16);
        v206 = v0;
        if (v97)
        {
          v98 = v0[151];
          v181 = *(v98 + 16);
          v99 = v96 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
          v178 = (v0[146] + 8);
          v172 = *(v98 + 72);
          v175 = (v98 + 8);
          v204 = v97 - 1;
          v100 = MEMORY[0x277D84F90];
          while (1)
          {
            v101 = v206[153];
            v102 = v206[150];
            v103 = v206[149];
            v104 = v206[148];
            v105 = v206[145];
            v190 = v99;
            (v181)(v101);
            outlined copy of Data._Representation(v211, v35);
            MLS.Record.epochKey.getter();
            loga = MLS.EpochKey.epochID.getter();
            v106 = *v178;
            (*v178)(v103, v105);
            MLS.Record.epochKey.getter();
            v194 = MLS.EpochKey.era.getter();
            v106(v104, v105);
            v107 = MLS.WriteGroupData.groupID.getter();
            v109 = v108;
            v110 = MLS.Record.data.getter();
            v112 = v111;
            (*v175)(v101, v102);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v100 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v100 + 2) + 1, 1, v100);
            }

            v114 = *(v100 + 2);
            v113 = *(v100 + 3);
            v35 = v208;
            if (v114 >= v113 >> 1)
            {
              v100 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v113 > 1), v114 + 1, 1, v100);
            }

            *(v100 + 2) = v114 + 1;
            v115 = &v100[80 * v114];
            *(v115 + 4) = v211;
            *(v115 + 5) = v208;
            *(v115 + 6) = loga;
            v115[56] = 0;
            *(v115 + 15) = *&v212[3];
            *(v115 + 57) = *v212;
            *(v115 + 8) = v194;
            v115[72] = 0;
            v116 = v213[0];
            *(v115 + 19) = *(v213 + 3);
            *(v115 + 73) = v116;
            *(v115 + 10) = v107;
            *(v115 + 11) = v109;
            *(v115 + 12) = v110;
            *(v115 + 13) = v112;
            if (!v204)
            {
              break;
            }

            --v204;
            v99 = v190 + v172;
          }
        }

        else
        {

          v100 = MEMORY[0x277D84F90];
        }

        v206[173] = v100;
        v122 = v206;
        v123 = MLS.WriteGroupData.epochUpdateRecords.getter();
        v124 = *(v123 + 16);
        if (v124)
        {
          v125 = v206[151];
          v182 = *(v125 + 16);
          v126 = v123 + ((*(v125 + 80) + 32) & ~*(v125 + 80));
          v179 = (v206[146] + 8);
          v173 = *(v125 + 72);
          v176 = (v125 + 8);
          v205 = v124 - 1;
          v127 = MEMORY[0x277D84F90];
          while (1)
          {
            v128 = v122[152];
            v129 = v122[150];
            v130 = v122[149];
            v131 = v122[148];
            v132 = v122[145];
            v191 = v126;
            (v182)(v128);
            outlined copy of Data._Representation(v211, v35);
            MLS.Record.epochKey.getter();
            logb = MLS.EpochKey.epochID.getter();
            v133 = *v179;
            (*v179)(v130, v132);
            MLS.Record.epochKey.getter();
            v195 = MLS.EpochKey.era.getter();
            v133(v131, v132);
            v134 = MLS.WriteGroupData.groupID.getter();
            v136 = v135;
            v137 = MLS.Record.data.getter();
            v139 = v138;
            (*v176)(v128, v129);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v127 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v127 + 2) + 1, 1, v127);
            }

            v141 = *(v127 + 2);
            v140 = *(v127 + 3);
            v35 = v208;
            v122 = v206;
            if (v141 >= v140 >> 1)
            {
              v127 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v140 > 1), v141 + 1, 1, v127);
            }

            *(v127 + 2) = v141 + 1;
            v142 = &v127[80 * v141];
            *(v142 + 4) = v211;
            *(v142 + 5) = v208;
            *(v142 + 6) = logb;
            v142[56] = 0;
            *(v142 + 15) = *&v212[3];
            *(v142 + 57) = *v212;
            *(v142 + 8) = v195;
            v142[72] = 0;
            v143 = v213[0];
            *(v142 + 19) = *(v213 + 3);
            *(v142 + 73) = v143;
            *(v142 + 10) = v134;
            *(v142 + 11) = v136;
            *(v142 + 12) = v137;
            *(v142 + 13) = v139;
            if (!v205)
            {
              break;
            }

            --v205;
            v126 = v191 + v173;
          }
        }

        else
        {

          v127 = MEMORY[0x277D84F90];
        }

        v122[174] = v127;
        v144 = MLS.WriteGroupData.epochDeleteKeys.getter();
        v145 = *(v144 + 16);
        if (v145)
        {
          v146 = v122[146];
          logc = *(v146 + 16);
          v147 = v144 + ((*(v146 + 80) + 32) & ~*(v146 + 80));
          v186 = *(v146 + 72);
          v196 = (v146 + 8);
          v148 = v145 - 1;
          v149 = MEMORY[0x277D84F90];
          v150 = v211;
          while (1)
          {
            v151 = v122[147];
            v152 = v122[145];
            (logc)(v151, v147, v152);
            outlined copy of Data._Representation(v150, v208);
            v153 = MLS.EpochKey.epochID.getter();
            v154 = MLS.EpochKey.era.getter();
            (*v196)(v151, v152);
            v155 = MLS.WriteGroupData.groupID.getter();
            v157 = v156;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v149 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v149 + 2) + 1, 1, v149);
            }

            v159 = *(v149 + 2);
            v158 = *(v149 + 3);
            if (v159 >= v158 >> 1)
            {
              v149 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v158 > 1), v159 + 1, 1, v149);
            }

            *(v149 + 2) = v159 + 1;
            v160 = &v149[80 * v159];
            v150 = v211;
            *(v160 + 4) = v211;
            *(v160 + 5) = v208;
            *(v160 + 6) = v153;
            v160[56] = 0;
            *(v160 + 15) = *&v212[3];
            *(v160 + 57) = *v212;
            *(v160 + 8) = v154;
            v160[72] = 0;
            v161 = v213[0];
            *(v160 + 19) = *(v213 + 3);
            *(v160 + 73) = v161;
            *(v160 + 10) = v155;
            *(v160 + 11) = v157;
            *(v160 + 6) = xmmword_265343890;
            if (!v148)
            {
              break;
            }

            --v148;
            v147 += v186;
          }

          v35 = v208;
          outlined consume of Data._Representation(v211, v208);
        }

        else
        {

          v150 = v211;
          outlined consume of Data._Representation(v211, v35);
          v149 = MEMORY[0x277D84F90];
        }

        v122[175] = v149;
        v162 = Logger.logObject.getter();
        v163 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v162, v163))
        {
          v164 = swift_slowAlloc();
          *v164 = 0;
          _os_log_impl(&dword_26524C000, v162, v163, "DaemonPersister writeGroupID inserting group state", v164, 2u);
          MEMORY[0x2667577B0](v164, -1, -1);
        }

        v165 = v122[144];

        v122[176] = *(v165 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
        v122[125] = &type metadata for GroupStateModel;
        v122[126] = &protocol witness table for GroupStateModel;
        v166 = swift_allocObject();
        v122[122] = v166;
        v166[2] = v150;
        v166[3] = v35;
        v166[4] = v170;
        v166[5] = v171;
        v166[6] = v169;
        v166[7] = v168;
        outlined copy of Data._Representation(v150, v35);
        outlined copy of Data._Representation(v170, v171);
        outlined copy of Data._Representation(v169, v168);
        v167 = swift_task_alloc();
        v122[177] = v167;
        *v167 = v122;
        v167[1] = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);

        return SqliteStore.insert(_:)((v122 + 122));
      }
    }

    else
    {
      v74 = v43;
      v75 = v0[159];
      v76 = v0[158];
      v77 = v0[154];
      v78 = v0[142];

      v193(v75, v78, v77);
      v193(v76, v78, v77);
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v79, v80))
      {
        v203 = v80;
        v81 = v0[159];
        v185 = v0[158];
        v189 = v0[160];
        v82 = v0[154];
        v83 = swift_slowAlloc();
        loge = swift_slowAlloc();
        v213[0] = loge;
        *v83 = 136315394;
        v84 = MLS.WriteGroupData.groupID.getter();
        v86 = v85;
        v87 = Data.description.getter();
        v89 = v88;
        outlined consume of Data._Representation(v84, v86);
        v56(v81, v82);
        v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v89, v213);

        *(v83 + 4) = v90;
        *(v83 + 12) = 2080;
        v193(v189, v185, v82);
        v91 = String.init<A>(describing:)();
        v93 = v92;
        v94 = v82;
        v74 = v211;
        v56(v185, v94);
        v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v93, v213);

        *(v83 + 14) = v95;
        _os_log_impl(&dword_26524C000, v79, v203, "DaemonPersister groupStateUpdate called outside atomically block { groupID: %s, swiftMLSGroupWrite: %s }", v83, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2667577B0](loge, -1, -1);
        MEMORY[0x2667577B0](v83, -1, -1);
      }

      else
      {
        v117 = v0[159];
        v118 = v0[158];
        v119 = v0[154];

        v56(v118, v119);
        v56(v117, v119);
      }

      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v120 = 6;
      *(v120 + 8) = 0;
      *(v120 + 16) = 0;
      swift_willThrow();
      outlined consume of Data._Representation(v74, v208);

      v121 = v0[1];

      return v121();
    }
  }

  else
  {
    v3 = v0[156];
    v4 = v0[154];
    v5 = v0[142];
    v6 = *(v0[155] + 16);
    v6(v0[157], v5, v4);
    v6(v3, v5, v4);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v192 = v0[160];
      v183 = v0[157];
      v187 = v0[156];
      v9 = v0[155];
      v10 = v0[154];
      v11 = swift_slowAlloc();
      v209 = swift_slowAlloc();
      v213[0] = v209;
      *v11 = 136315394;
      v207 = v8;
      logd = v7;
      v12 = MLS.WriteGroupData.groupID.getter();
      v14 = v13;
      v15 = Data.description.getter();
      v17 = v16;
      outlined consume of Data._Representation(v12, v14);
      v18 = *(v9 + 8);
      v18(v183, v10);
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, v213);

      *(v11 + 4) = v19;
      *(v11 + 12) = 2080;
      v6(v192, v187, v10);
      v20 = String.init<A>(describing:)();
      v22 = v21;
      v18(v187, v10);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v213);

      *(v11 + 14) = v23;
      _os_log_impl(&dword_26524C000, logd, v207, "DaemonPersister writeGroupID using inMemory mode { groupID: %s, swiftMLSGroupWrite: %s }", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v209, -1, -1);
      MEMORY[0x2667577B0](v11, -1, -1);
    }

    else
    {
      v25 = v0[157];
      v26 = v0[156];
      v27 = v0[155];
      v28 = v0[154];

      v29 = *(v27 + 8);
      v29(v26, v28);
      v24 = (v29)(v25, v28);
    }

    v0[196] = (*(*v0[144] + 168))(v24);
    v210 = (*MEMORY[0x277D4CEA8] + MEMORY[0x277D4CEA8]);
    v30 = swift_task_alloc();
    v0[197] = v30;
    *v30 = v0;
    v30[1] = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
    v31 = v0[143];
    v32 = v0[142];

    return v210(v32, v31);
  }
}

{
  v2 = *v1;
  *(*v1 + 1424) = v0;

  if (v0)
  {

    v3 = v2[165];
    v4 = v2[164];
    v5 = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 122);
    v3 = v2[165];
    v4 = v2[164];
    v5 = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v2 = *v1;
  *(*v1 + 1456) = v0;

  if (v0)
  {

    v3 = v2[165];
    v4 = v2[164];
    v5 = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 127);
    v3 = v2[165];
    v4 = v2[164];
    v5 = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v2 = *v1;
  *(*v1 + 1488) = v0;

  if (v0)
  {

    v3 = v2[165];
    v4 = v2[164];
    v5 = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 132);
    v3 = v2[165];
    v4 = v2[164];
    v5 = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v2 = *v1;
  *(*v1 + 1520) = v0;

  if (v0)
  {

    v3 = v2[165];
    v4 = v2[164];
    v5 = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 137);
    v3 = v2[165];
    v4 = v2[164];
    v5 = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = *(v0 + 1496);
  v2 = *(v0 + 1504) + 1;
  result = outlined destroy of EpochModel(v0 + 656);
  if (v2 == v1)
  {
    v4 = *(v0 + 1376);
    v5 = *(v0 + 1368);
    v6 = *(v0 + 1360);
    v7 = *(v0 + 1352);
    v8 = *(v0 + 1336);
    v9 = *(v0 + 1328);

    outlined consume of Data._Representation(v9, v8);
    outlined consume of Data._Representation(v5, v4);
    outlined consume of Data._Representation(v7, v6);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v11 = *(v0 + 1504) + 1;
    *(v0 + 1504) = v11;
    v12 = *(v0 + 1400);
    if (v11 >= *(v12 + 16))
    {
      __break(1u);
    }

    else
    {
      v13 = (v12 + 80 * v11);
      *(v0 + 656) = v13[2];
      v14 = v13[3];
      v15 = v13[4];
      v16 = v13[6];
      *(v0 + 704) = v13[5];
      *(v0 + 720) = v16;
      *(v0 + 672) = v14;
      *(v0 + 688) = v15;
      *(v0 + 1120) = &type metadata for EpochModel;
      *(v0 + 1128) = &protocol witness table for EpochModel;
      v17 = swift_allocObject();
      *(v0 + 1096) = v17;
      memmove((v17 + 16), v13 + 2, 0x50uLL);
      outlined init with copy of EpochModel(v0 + 656, v0 + 736);
      outlined init with copy of EpochModel(v0 + 656, v0 + 816);
      v18 = swift_task_alloc();
      *(v0 + 1512) = v18;
      *v18 = v0;
      v18[1] = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);

      return SqliteStore.delete(_:)(v0 + 1096);
    }
  }

  return result;
}

{
  v2 = *v1;
  *(*v1 + 1544) = v0;

  if (v0)
  {
    outlined consume of Data._Representation(v2[166], v2[167]);
    v3 = v2[165];
    v4 = v2[164];
    v5 = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 112);
    v3 = v2[165];
    v4 = v2[164];
    v5 = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = *(v0 + 1336);
  v2 = *(v0 + 1328);
  outlined copy of Data._Representation(v2, v1);
  v3 = MLS.WriteGroupData.groupID.getter();
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  *(v0 + 64) = v3;
  *(v0 + 72) = v4;
  *(v0 + 80) = xmmword_2653419D0;
  *(v0 + 960) = &type metadata for EpochModel;
  *(v0 + 968) = &protocol witness table for EpochModel;
  v5 = swift_allocObject();
  *(v0 + 936) = v5;
  v6 = *(v0 + 32);
  v7 = *(v0 + 64);
  v8 = *(v0 + 80);
  v5[3] = *(v0 + 48);
  v5[4] = v7;
  v5[5] = v8;
  v5[1] = *(v0 + 16);
  v5[2] = v6;
  outlined init with copy of EpochModel(v0 + 16, v0 + 96);
  v9 = swift_task_alloc();
  *(v0 + 1552) = v9;
  *v9 = v0;
  v9[1] = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);

  return SqliteStore.delete(_:)(v0 + 936);
}

{
  v2 = *v1;
  *(*v1 + 1560) = v0;

  if (v0)
  {
    outlined consume of Data._Representation(v2[166], v2[167]);
    v3 = v2[165];
    v4 = v2[164];
    v5 = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 117);
    v3 = v2[165];
    v4 = v2[164];
    v5 = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = v0[172];
  v2 = v0[171];
  v3 = v0[167];
  v4 = v0[166];

  outlined destroy of EpochModel((v0 + 2));
  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v2, v1);
  outlined consume of Data._Representation(0, 0xC000000000000000);
  outlined consume of Data._Representation(v4, v3);

  v5 = v0[1];

  return v5();
}

{
  v2 = *v1;
  *(*v1 + 1584) = v0;

  if (v0)
  {
    v3 = *(v2 + 1320);
    v4 = *(v2 + 1312);
    v5 = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
  }

  else
  {

    v3 = *(v2 + 1320);
    v4 = *(v2 + 1312);
    v5 = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[172];
  v2 = v0[171];
  outlined consume of Data._Representation(v0[166], v0[167]);
  outlined consume of Data._Representation(v2, v1);
  outlined consume of Data._Representation(0, 0xC000000000000000);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 112);

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[172];
  v2 = v0[171];
  outlined consume of Data._Representation(v0[166], v0[167]);
  outlined consume of Data._Representation(v2, v1);
  outlined consume of Data._Representation(0, 0xC000000000000000);
  outlined destroy of EpochModel((v0 + 2));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 117);

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[172];
  v2 = v0[171];
  v3 = v0[170];
  v4 = v0[169];
  outlined consume of Data._Representation(v0[166], v0[167]);
  outlined consume of Data._Representation(v2, v1);
  outlined consume of Data._Representation(v4, v3);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 122);

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[172];
  v2 = v0[171];
  v3 = v0[170];
  v4 = v0[169];
  outlined consume of Data._Representation(v0[166], v0[167]);
  outlined consume of Data._Representation(v2, v1);
  outlined consume of Data._Representation(v4, v3);
  outlined destroy of EpochModel((v0 + 22));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 127);

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[172];
  v2 = v0[171];
  v3 = v0[170];
  v4 = v0[169];
  outlined consume of Data._Representation(v0[166], v0[167]);
  outlined consume of Data._Representation(v2, v1);
  outlined consume of Data._Representation(v4, v3);
  outlined destroy of EpochModel((v0 + 52));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 132);

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[172];
  v2 = v0[171];
  v3 = v0[170];
  v4 = v0[169];
  outlined consume of Data._Representation(v0[166], v0[167]);
  outlined consume of Data._Representation(v2, v1);
  outlined consume of Data._Representation(v4, v3);
  outlined destroy of EpochModel((v0 + 82));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 137);

  v5 = v0[1];

  return v5();
}

void DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:)(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26524C000, v2, v3, "DaemonPersister writeGroupID inserting epoch records", v4, 2u);
    MEMORY[0x2667577B0](v4, -1, -1);
  }

  v5 = *(v1 + 1384);

  v6 = *(v5 + 16);
  *(v1 + 1432) = v6;
  v7 = *(v1 + 1384);
  if (v6)
  {
    *(v1 + 1440) = 0;
    if (*(v7 + 2))
    {
      *(v1 + 176) = v7[2];
      v8 = v7[3];
      v9 = v7[4];
      v10 = v7[6];
      *(v1 + 224) = v7[5];
      *(v1 + 240) = v10;
      *(v1 + 192) = v8;
      *(v1 + 208) = v9;
      *(v1 + 1040) = &type metadata for EpochModel;
      *(v1 + 1048) = &protocol witness table for EpochModel;
      v11 = swift_allocObject();
      *(v1 + 1016) = v11;
      memmove((v11 + 16), v7 + 2, 0x50uLL);
      outlined init with copy of EpochModel(v1 + 176, v1 + 256);
      outlined init with copy of EpochModel(v1 + 176, v1 + 336);
      v12 = swift_task_alloc();
      *(v1 + 1448) = v12;
      *v12 = v1;
      v12[1] = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);

      SqliteStore.insert(_:)(v1 + 1016);
      return;
    }

    __break(1u);
    goto LABEL_26;
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_26524C000, v13, v14, "DaemonPersister writeGroupID updating epoch records", v15, 2u);
    MEMORY[0x2667577B0](v15, -1, -1);
  }

  v16 = *(v1 + 1392);

  v17 = *(v16 + 16);
  *(v1 + 1464) = v17;
  v18 = *(v1 + 1392);
  if (v17)
  {
    *(v1 + 1472) = 0;
    if (!*(v18 + 16))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    *(v1 + 416) = *(v18 + 32);
    v19 = *(v18 + 48);
    v20 = *(v18 + 64);
    v21 = *(v18 + 96);
    *(v1 + 464) = *(v18 + 80);
    *(v1 + 480) = v21;
    *(v1 + 432) = v19;
    *(v1 + 448) = v20;
    *(v1 + 1080) = &type metadata for EpochModel;
    *(v1 + 1088) = &protocol witness table for EpochModel;
    v22 = swift_allocObject();
    *(v1 + 1056) = v22;
    memmove((v22 + 16), (v18 + 32), 0x50uLL);
    outlined init with copy of EpochModel(v1 + 416, v1 + 496);
    outlined init with copy of EpochModel(v1 + 416, v1 + 576);
    v23 = swift_task_alloc();
    *(v1 + 1480) = v23;
    *v23 = v1;
    v23[1] = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);

    SqliteStore.update(_:)(v1 + 1056);
  }

  else
  {

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_26524C000, v24, v25, "DaemonPersister writeGroupID deleting epoch records", v26, 2u);
      MEMORY[0x2667577B0](v26, -1, -1);
    }

    v27 = *(v1 + 1400);

    v28 = *(v27 + 16);
    *(v1 + 1496) = v28;
    v29 = *(v1 + 1400);
    if (v28)
    {
      *(v1 + 1504) = 0;
      if (!*(v29 + 16))
      {
LABEL_27:
        __break(1u);
        return;
      }

      *(v1 + 656) = *(v29 + 32);
      v30 = *(v29 + 48);
      v31 = *(v29 + 64);
      v32 = *(v29 + 96);
      *(v1 + 704) = *(v29 + 80);
      *(v1 + 720) = v32;
      *(v1 + 672) = v30;
      *(v1 + 688) = v31;
      *(v1 + 1120) = &type metadata for EpochModel;
      *(v1 + 1128) = &protocol witness table for EpochModel;
      v33 = swift_allocObject();
      *(v1 + 1096) = v33;
      memmove((v33 + 16), (v29 + 32), 0x50uLL);
      outlined init with copy of EpochModel(v1 + 656, v1 + 736);
      outlined init with copy of EpochModel(v1 + 656, v1 + 816);
      v34 = swift_task_alloc();
      *(v1 + 1512) = v34;
      *v34 = v1;
      v34[1] = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);

      SqliteStore.delete(_:)(v1 + 1096);
    }

    else
    {
      v35 = *(v1 + 1376);
      v36 = *(v1 + 1368);
      v37 = *(v1 + 1360);
      v38 = *(v1 + 1352);
      v39 = *(v1 + 1336);
      v40 = *(v1 + 1328);

      outlined consume of Data._Representation(v40, v39);
      outlined consume of Data._Representation(v36, v35);
      outlined consume of Data._Representation(v38, v37);

      v41 = *(v1 + 8);

      v41();
    }
  }
}

void DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:)()
{
  v1 = *(v0 + 1432);
  v2 = *(v0 + 1440) + 1;
  outlined destroy of EpochModel(v0 + 176);
  if (v2 == v1)
  {

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_26524C000, v3, v4, "DaemonPersister writeGroupID updating epoch records", v5, 2u);
      MEMORY[0x2667577B0](v5, -1, -1);
    }

    v6 = *(v0 + 1392);

    v7 = *(v6 + 16);
    *(v0 + 1464) = v7;
    v8 = *(v0 + 1392);
    if (v7)
    {
      *(v0 + 1472) = 0;
      if (*(v8 + 2))
      {
        *(v0 + 416) = v8[2];
        v9 = v8[3];
        v10 = v8[4];
        v11 = v8[6];
        *(v0 + 464) = v8[5];
        *(v0 + 480) = v11;
        *(v0 + 432) = v9;
        *(v0 + 448) = v10;
        *(v0 + 1080) = &type metadata for EpochModel;
        *(v0 + 1088) = &protocol witness table for EpochModel;
        v12 = swift_allocObject();
        *(v0 + 1056) = v12;
        memmove((v12 + 16), v8 + 2, 0x50uLL);
        outlined init with copy of EpochModel(v0 + 416, v0 + 496);
        outlined init with copy of EpochModel(v0 + 416, v0 + 576);
        v13 = swift_task_alloc();
        *(v0 + 1480) = v13;
        *v13 = v0;
        v13[1] = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);

        SqliteStore.update(_:)(v0 + 1056);
        return;
      }

      goto LABEL_24;
    }

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_26524C000, v22, v23, "DaemonPersister writeGroupID deleting epoch records", v24, 2u);
      MEMORY[0x2667577B0](v24, -1, -1);
    }

    v25 = *(v0 + 1400);

    v26 = *(v25 + 16);
    *(v0 + 1496) = v26;
    v27 = *(v0 + 1400);
    if (v26)
    {
      *(v0 + 1504) = 0;
      if (!*(v27 + 16))
      {
LABEL_25:
        __break(1u);
        return;
      }

      *(v0 + 656) = *(v27 + 32);
      v28 = *(v27 + 48);
      v29 = *(v27 + 64);
      v30 = *(v27 + 96);
      *(v0 + 704) = *(v27 + 80);
      *(v0 + 720) = v30;
      *(v0 + 672) = v28;
      *(v0 + 688) = v29;
      *(v0 + 1120) = &type metadata for EpochModel;
      *(v0 + 1128) = &protocol witness table for EpochModel;
      v31 = swift_allocObject();
      *(v0 + 1096) = v31;
      memmove((v31 + 16), (v27 + 32), 0x50uLL);
      outlined init with copy of EpochModel(v0 + 656, v0 + 736);
      outlined init with copy of EpochModel(v0 + 656, v0 + 816);
      v32 = swift_task_alloc();
      *(v0 + 1512) = v32;
      *v32 = v0;
      v32[1] = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);

      SqliteStore.delete(_:)(v0 + 1096);
    }

    else
    {
      v33 = *(v0 + 1376);
      v34 = *(v0 + 1368);
      v35 = *(v0 + 1360);
      v36 = *(v0 + 1352);
      v37 = *(v0 + 1336);
      v38 = *(v0 + 1328);

      outlined consume of Data._Representation(v38, v37);
      outlined consume of Data._Representation(v34, v33);
      outlined consume of Data._Representation(v36, v35);

      v39 = *(v0 + 8);

      v39();
    }
  }

  else
  {
    v14 = *(v0 + 1440) + 1;
    *(v0 + 1440) = v14;
    v15 = *(v0 + 1384);
    if (v14 >= *(v15 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v16 = (v15 + 80 * v14);
    *(v0 + 176) = v16[2];
    v17 = v16[3];
    v18 = v16[4];
    v19 = v16[6];
    *(v0 + 224) = v16[5];
    *(v0 + 240) = v19;
    *(v0 + 192) = v17;
    *(v0 + 208) = v18;
    *(v0 + 1040) = &type metadata for EpochModel;
    *(v0 + 1048) = &protocol witness table for EpochModel;
    v20 = swift_allocObject();
    *(v0 + 1016) = v20;
    memmove((v20 + 16), v16 + 2, 0x50uLL);
    outlined init with copy of EpochModel(v0 + 176, v0 + 256);
    outlined init with copy of EpochModel(v0 + 176, v0 + 336);
    v21 = swift_task_alloc();
    *(v0 + 1448) = v21;
    *v21 = v0;
    v21[1] = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);

    SqliteStore.insert(_:)(v0 + 1016);
  }
}

{
  v1 = *(v0 + 1464);
  v2 = *(v0 + 1472) + 1;
  outlined destroy of EpochModel(v0 + 416);
  if (v2 == v1)
  {

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_26524C000, v3, v4, "DaemonPersister writeGroupID deleting epoch records", v5, 2u);
      MEMORY[0x2667577B0](v5, -1, -1);
    }

    v6 = *(v0 + 1400);

    v7 = *(v6 + 16);
    *(v0 + 1496) = v7;
    v8 = *(v0 + 1400);
    if (v7)
    {
      *(v0 + 1504) = 0;
      if (*(v8 + 2))
      {
        *(v0 + 656) = v8[2];
        v9 = v8[3];
        v10 = v8[4];
        v11 = v8[6];
        *(v0 + 704) = v8[5];
        *(v0 + 720) = v11;
        *(v0 + 672) = v9;
        *(v0 + 688) = v10;
        *(v0 + 1120) = &type metadata for EpochModel;
        *(v0 + 1128) = &protocol witness table for EpochModel;
        v12 = swift_allocObject();
        *(v0 + 1096) = v12;
        memmove((v12 + 16), v8 + 2, 0x50uLL);
        outlined init with copy of EpochModel(v0 + 656, v0 + 736);
        outlined init with copy of EpochModel(v0 + 656, v0 + 816);
        v13 = swift_task_alloc();
        *(v0 + 1512) = v13;
        *v13 = v0;
        v13[1] = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);

        SqliteStore.delete(_:)(v0 + 1096);
        return;
      }

LABEL_17:
      __break(1u);
      return;
    }

    v22 = *(v0 + 1376);
    v23 = *(v0 + 1368);
    v24 = *(v0 + 1360);
    v25 = *(v0 + 1352);
    v26 = *(v0 + 1336);
    v27 = *(v0 + 1328);

    outlined consume of Data._Representation(v27, v26);
    outlined consume of Data._Representation(v23, v22);
    outlined consume of Data._Representation(v25, v24);

    v28 = *(v0 + 8);

    v28();
  }

  else
  {
    v14 = *(v0 + 1472) + 1;
    *(v0 + 1472) = v14;
    v15 = *(v0 + 1392);
    if (v14 >= *(v15 + 16))
    {
      __break(1u);
      goto LABEL_17;
    }

    v16 = (v15 + 80 * v14);
    *(v0 + 416) = v16[2];
    v17 = v16[3];
    v18 = v16[4];
    v19 = v16[6];
    *(v0 + 464) = v16[5];
    *(v0 + 480) = v19;
    *(v0 + 432) = v17;
    *(v0 + 448) = v18;
    *(v0 + 1080) = &type metadata for EpochModel;
    *(v0 + 1088) = &protocol witness table for EpochModel;
    v20 = swift_allocObject();
    *(v0 + 1056) = v20;
    memmove((v20 + 16), v16 + 2, 0x50uLL);
    outlined init with copy of EpochModel(v0 + 416, v0 + 496);
    outlined init with copy of EpochModel(v0 + 416, v0 + 576);
    v21 = swift_task_alloc();
    *(v0 + 1480) = v21;
    *v21 = v0;
    v21[1] = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);

    SqliteStore.update(_:)(v0 + 1056);
  }
}

uint64_t DaemonPersister.getSwiftMLSPersister(forClientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v4 = type metadata accessor for MLS.UniqueClientIdentifier();
  v3[19] = v4;
  v3[20] = *(v4 - 8);
  v3[21] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v3[22] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](DaemonPersister.getSwiftMLSPersister(forClientIdentifier:), v6, v5);
}

uint64_t DaemonPersister.getSwiftMLSPersister(forClientIdentifier:)()
{
  v23 = v0;
  v1 = *(v0 + 144);

  v3 = (*(*v1 + 216))(v2);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 136)), (v5 & 1) != 0))
  {
    v6 = *(v0 + 128);
    outlined init with copy of SMAUserDefaultsProtocol(*(v3 + 56) + 40 * v4, v0 + 56);

    outlined init with take of MLS.SwiftMLSPersisterProtocol((v0 + 56), v0 + 16);
    outlined init with take of MLS.SwiftMLSPersisterProtocol((v0 + 16), v6);
  }

  else
  {
    v7 = *(v0 + 160);
    v8 = *(v0 + 168);
    v9 = *(v0 + 144);
    v10 = *(v0 + 152);
    v20 = v10;
    v11 = *(v0 + 136);
    v21 = *(v0 + 128);

    v12 = *(v7 + 16);
    v12(v8, v11, v10);
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DaemonPersister and conformance DaemonPersister, type metadata accessor for DaemonPersister, &protocol conformance descriptor for DaemonPersister);
    v13 = type metadata accessor for MLS.SwiftMLSPersister();
    swift_allocObject();

    v14 = MLS.SwiftMLSPersister.init(clientIdentifier:delegatePersister:)();
    v12(v8, v11, v20);
    v22[3] = v13;
    v15 = _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.SwiftMLSPersister and conformance MLS.SwiftMLSPersister, MEMORY[0x277D4CEE0], MEMORY[0x277D4CED8]);
    v22[4] = v15;
    v22[0] = v14;
    v16 = *(*v9 + 232);

    v17 = v16(v0 + 96);
    specialized Dictionary.subscript.setter(v22, v8);
    v17(v0 + 96, 0);
    v21[3] = v13;
    v21[4] = v15;
    *v21 = v14;
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t DaemonPersister.deinit()
{
  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_featureFlagStore;
  v4 = type metadata accessor for SMAFeatureFlagsStore();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t DaemonPersister.__deallocating_deinit()
{
  DaemonPersister.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t protocol witness for MLS.Persister.atomically<A>(with:do:rollback:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = (*(*v8 + 304) + **(*v8 + 304));
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v20(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t protocol witness for MLS.Persister.save(swiftMLSClientID:forIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 312) + **(*v2 + 312));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v8(a1, a2);
}

uint64_t protocol witness for MLS.Persister.loadSwiftMLSClientID(identifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 320) + **(*v2 + 320));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v8(a1, a2);
}

uint64_t protocol witness for MLS.Persister.save(swiftMLSGroupID:forIdentifier:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 328) + **(*v5 + 328));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.Persister.loadSwiftMLSGroupID(identifier:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 336) + **(*v3 + 336));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for MLS.Persister.loadSwiftMLSGroupID(identifier:clientIdentifier:) in conformance DaemonPersister;

  return v10(a1, a2, a3);
}

uint64_t protocol witness for MLS.Persister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 344) + **(*v3 + 344));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for MLS.Persister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:) in conformance DaemonPersister;

  return v10(a1, a2, a3);
}

uint64_t protocol witness for MLS.Persister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t protocol witness for MLS.Persister.save(groupClientContextBlob:forIdentifier:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 352) + **(*v5 + 352));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.Persister.loadGroupClientContextBlob(identifier:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 360) + **(*v3 + 360));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for MLS.Persister.loadSwiftMLSGroupID(identifier:clientIdentifier:) in conformance DaemonPersister;

  return v10(a1, a2, a3);
}

uint64_t protocol witness for MLS.Persister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 368) + **(*v4 + 368));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = protocol witness for MLS.Persister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:) in conformance DaemonPersister;

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.Persister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:) in conformance DaemonPersister(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t protocol witness for MLS.Persister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 376) + **(*v5 + 376));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.Persister.replaceGroupMembers(identifier:newMembers:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 384) + **(*v4 + 384));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.Persister.deleteGroup(identifier:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 408) + **(*v3 + 408));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v10(a1, a2, a3);
}

uint64_t protocol witness for MLS.Persister.deleteSecureMessagingGroup(identifier:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 416) + **(*v3 + 416));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v10(a1, a2, a3);
}

uint64_t protocol witness for MLS.Persister.save(outgoingEventUpdate:forGroup:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 424) + **(*v4 + 424));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.Persister.save(incomingEvent:forGroup:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 432) + **(*v4 + 432));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.Persister.delete(incomingEvent:forGroup:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 440) + **(*v4 + 440));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.Persister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 448) + **(*v4 + 448));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.Persister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 456) + **(*v4 + 456));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.Persister.loadClientIdentifiersWithEvents() in conformance DaemonPersister()
{
  v4 = (*(*v0 + 464) + **(*v0 + 464));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for MLS.Persister.loadClientIdentifiersWithEvents() in conformance DaemonPersister;

  return v4();
}

uint64_t protocol witness for MLS.Persister.loadEvents(clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 472) + **(*v2 + 472));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v8(a1, a2);
}

uint64_t protocol witness for MLS.Persister.loadRetriableEventStates(clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 480) + **(*v2 + 480));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v8(a1, a2);
}

uint64_t protocol witness for MLS.Persister.readGroupState(swiftMLSGroupRead:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 528) + **(*v2 + 528));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for MLS.Persister.loadSwiftMLSGroupID(identifier:clientIdentifier:) in conformance DaemonPersister;

  return v8(a1, a2);
}

uint64_t protocol witness for MLS.Persister.readEpochData(swiftMLSEpochRead:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 536) + **(*v2 + 536));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for MLS.Persister.loadSwiftMLSGroupID(identifier:clientIdentifier:) in conformance DaemonPersister;

  return v8(a1, a2);
}

uint64_t protocol witness for MLS.Persister.write(swiftMLSGroupWrite:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 544) + **(*v2 + 544));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v8(a1, a2);
}

uint64_t protocol witness for MLS.Persister.read(clientUUID:) in conformance DaemonPersister(uint64_t a1)
{
  v6 = (*(*v1 + 488) + **(*v1 + 488));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for MLS.Persister.loadSwiftMLSGroupID(identifier:clientIdentifier:) in conformance DaemonPersister;

  return v6(a1);
}

uint64_t protocol witness for MLS.Persister.write(clientUUID:clientState:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 496) + **(*v3 + 496));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v10(a1, a2, a3);
}

uint64_t protocol witness for MLS.Persister.loadRetryCount(forGroup:messageID:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 392) + **(*v5 + 392));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = protocol witness for MLS.Persister.loadRetryCount(forGroup:messageID:clientIdentifier:) in conformance DaemonPersister;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.Persister.loadRetryCount(forGroup:messageID:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, char a2)
{
  v6 = *v3;

  if (v2)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v6 + 8);

    return v9(a1, a2 & 1);
  }
}

uint64_t protocol witness for MLS.Persister.save(retryCount:forGroup:messageID:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 400) + **(*v6 + 400));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for MLS.Persister.getSwiftMLSPersister(forClientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 552) + **(*v2 + 552));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v8(a1, a2);
}

uint64_t specialized SqliteStore.query<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](specialized SqliteStore.query<A>(_:), v2, 0);
}

{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](specialized SqliteStore.query<A>(_:), v2, 0);
}

{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](specialized SqliteStore.query<A>(_:), v2, 0);
}

{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](specialized SqliteStore.query<A>(_:), v2, 0);
}

uint64_t specialized SqliteStore.query<A>(_:)()
{
  v47 = v0;
  v1 = *(v0 + 80);
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = SecureMessagingClientQuery.queryStatement(_:)(v3, *(v0 + 64), *(v0 + 72));
    v5 = v4;
    if (v4)
    {
      v6 = sqlite3_step(v4);
      v7 = v6;
      if ((v6 & 0xFFFFFFFE) == 0x64)
      {
        v8 = MEMORY[0x277D84F90];
        if (v6 == 100)
        {
          do
          {
            if (one-time initialization token for converter != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v15 = static SecureMessagingClientQuery.converter;

            v16 = v15(v5);
            v18 = v17;
            v20 = v19;
            v22 = v21;

            if (v22)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
              }

              v24 = *(v8 + 2);
              v23 = *(v8 + 3);
              if (v24 >= v23 >> 1)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v8);
              }

              *(v8 + 2) = v24 + 1;
              v14 = &v8[32 * v24];
              *(v14 + 4) = v16;
              *(v14 + 5) = v18;
              *(v14 + 6) = v20;
              *(v14 + 7) = v22;
            }
          }

          while (sqlite3_step(v5) == 100);
        }

        sqlite3_finalize(v5);
        v9 = *(v0 + 8);

        return v9(v8);
      }

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v33, v34))
      {

        goto LABEL_31;
      }

      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v45 = v36;
      *v35 = 136315138;
      v37 = sqlite3_errmsg(*(v1 + v2));

      if (v37)
      {
        v38 = String.init(cString:)();
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v45);

        *(v35 + 4) = v40;
        _os_log_impl(&dword_26524C000, v33, v34, "query-sqlite3_step: SQLite error %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
        MEMORY[0x2667577B0](v36, -1, -1);
        MEMORY[0x2667577B0](v35, -1, -1);

LABEL_31:
        v45 = 0x726F7272456C7173;
        v46 = 0xE90000000000003ALL;
        *(v0 + 40) = v7;
        v41 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v41);

        v42 = v45;
        v43 = v46;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v44 = 0;
        *(v44 + 8) = v42;
        *(v44 + 16) = v43;
        swift_willThrow();
        sqlite3_finalize(v5);
        goto LABEL_10;
      }

LABEL_33:
      __break(1u);
      return result;
    }

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v45 = v28;
      *v27 = 136315138;
      v29 = sqlite3_errmsg(*(v1 + v2));

      if (!v29)
      {
        __break(1u);
        goto LABEL_33;
      }

      v30 = String.init(cString:)();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v45);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_26524C000, v25, v26, "query-queryStatement: SQLite error %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x2667577B0](v28, -1, -1);
      MEMORY[0x2667577B0](v27, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v12 = 2;
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v12 = 1;
  }

  *v11 = v12;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  swift_willThrow();
LABEL_10:
  v13 = *(v0 + 8);

  return v13();
}

{
  v48 = v0;
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = SecureMessagingGroupQuery.queryStatement(_:)(v3, *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
    v5 = v4;
    if (v4)
    {
      v6 = sqlite3_step(v4);
      v7 = v6;
      if ((v6 & 0xFFFFFFFE) == 0x64)
      {
        v8 = MEMORY[0x277D84F90];
        if (v6 == 100)
        {
          do
          {
            if (one-time initialization token for converter != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v17 = static SecureMessagingGroupQuery.converter;

            v17(&v40, v5);

            if (*(&v41 + 1))
            {
              v44 = v40;
              v45 = v41;
              v46 = v42;
              v47 = v43;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
              }

              v19 = *(v8 + 2);
              v18 = *(v8 + 3);
              if (v19 >= v18 >> 1)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v8);
              }

              *(v8 + 2) = v19 + 1;
              v13 = &v8[64 * v19];
              v14 = v44;
              v15 = v45;
              v16 = v47;
              *(v13 + 4) = v46;
              *(v13 + 5) = v16;
              *(v13 + 2) = v14;
              *(v13 + 3) = v15;
            }
          }

          while (sqlite3_step(v5) == 100);
        }

        sqlite3_finalize(v5);
        v36 = *(v0 + 8);

        return v36(v8);
      }

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v28, v29))
      {

        goto LABEL_32;
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v44 = v31;
      *v30 = 136315138;
      v32 = sqlite3_errmsg(*(v1 + v2));

      if (v32)
      {
        v33 = String.init(cString:)();
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v44);

        *(v30 + 4) = v35;
        _os_log_impl(&dword_26524C000, v28, v29, "query-sqlite3_step: SQLite error %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        MEMORY[0x2667577B0](v31, -1, -1);
        MEMORY[0x2667577B0](v30, -1, -1);

LABEL_32:
        *&v44 = 0x726F7272456C7173;
        *(&v44 + 1) = 0xE90000000000003ALL;
        *(v0 + 40) = v7;
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v37);

        v38 = v44;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v39 = 0;
        *(v39 + 8) = v38;
        swift_willThrow();
        sqlite3_finalize(v5);
        goto LABEL_8;
      }

LABEL_34:
      __break(1u);
      return result;
    }

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v44 = v23;
      *v22 = 136315138;
      v24 = sqlite3_errmsg(*(v1 + v2));

      if (!v24)
      {
        __break(1u);
        goto LABEL_34;
      }

      v25 = String.init(cString:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v44);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_26524C000, v20, v21, "query-queryStatement: SQLite error %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x2667577B0](v23, -1, -1);
      MEMORY[0x2667577B0](v22, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 2;
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 1;
  }

  *v9 = v10;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  swift_willThrow();
LABEL_8:
  v11 = *(v0 + 8);

  return v11();
}

{
  v48 = v0;
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = SwiftMLSGroupIDQuery.queryStatement(_:)(v3, *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
    v5 = v4;
    if (v4)
    {
      v6 = sqlite3_step(v4);
      v7 = v6;
      if ((v6 & 0xFFFFFFFE) == 0x64)
      {
        v8 = MEMORY[0x277D84F90];
        if (v6 == 100)
        {
          do
          {
            if (one-time initialization token for converter != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v17 = static SwiftMLSGroupIDQuery.converter;

            v17(&v40, v5);

            if (*(&v41 + 1))
            {
              v44 = v40;
              v45 = v41;
              v46 = v42;
              v47 = v43;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
              }

              v19 = *(v8 + 2);
              v18 = *(v8 + 3);
              if (v19 >= v18 >> 1)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v8);
              }

              *(v8 + 2) = v19 + 1;
              v13 = &v8[64 * v19];
              v14 = v44;
              v15 = v45;
              v16 = v47;
              *(v13 + 4) = v46;
              *(v13 + 5) = v16;
              *(v13 + 2) = v14;
              *(v13 + 3) = v15;
            }
          }

          while (sqlite3_step(v5) == 100);
        }

        sqlite3_finalize(v5);
        v36 = *(v0 + 8);

        return v36(v8);
      }

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v28, v29))
      {

        goto LABEL_32;
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v44 = v31;
      *v30 = 136315138;
      v32 = sqlite3_errmsg(*(v1 + v2));

      if (v32)
      {
        v33 = String.init(cString:)();
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v44);

        *(v30 + 4) = v35;
        _os_log_impl(&dword_26524C000, v28, v29, "query-sqlite3_step: SQLite error %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        MEMORY[0x2667577B0](v31, -1, -1);
        MEMORY[0x2667577B0](v30, -1, -1);

LABEL_32:
        *&v44 = 0x726F7272456C7173;
        *(&v44 + 1) = 0xE90000000000003ALL;
        *(v0 + 40) = v7;
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v37);

        v38 = v44;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v39 = 0;
        *(v39 + 8) = v38;
        swift_willThrow();
        sqlite3_finalize(v5);
        goto LABEL_8;
      }

LABEL_34:
      __break(1u);
      return result;
    }

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v44 = v23;
      *v22 = 136315138;
      v24 = sqlite3_errmsg(*(v1 + v2));

      if (!v24)
      {
        __break(1u);
        goto LABEL_34;
      }

      v25 = String.init(cString:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v44);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_26524C000, v20, v21, "query-queryStatement: SQLite error %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x2667577B0](v23, -1, -1);
      MEMORY[0x2667577B0](v22, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 2;
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 1;
  }

  *v9 = v10;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  swift_willThrow();
LABEL_8:
  v11 = *(v0 + 8);

  return v11();
}

{
  v48 = v0;
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = PendingGroupMemberQuery.queryStatement(_:)(v3, *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
    v5 = v4;
    if (v4)
    {
      v6 = sqlite3_step(v4);
      v7 = v6;
      if ((v6 & 0xFFFFFFFE) == 0x64)
      {
        if (v6 == 100)
        {
          v8 = MEMORY[0x277D84F90];
          do
          {
            if (one-time initialization token for converter != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v17 = static PendingGroupMemberQuery.converter;

            v17(&v40, v5);

            if (*(&v41 + 1))
            {
              v46 = v42;
              v47[0] = *v43;
              *(v47 + 13) = *&v43[13];
              v44 = v40;
              v45 = v41;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
              }

              v19 = *(v8 + 2);
              v18 = *(v8 + 3);
              if (v19 >= v18 >> 1)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v8);
              }

              *(v8 + 2) = v19 + 1;
              v13 = &v8[72 * v19];
              *(v13 + 2) = v44;
              v14 = v45;
              v15 = v46;
              v16 = v47[0];
              *(v13 + 93) = *(v47 + 13);
              *(v13 + 4) = v15;
              *(v13 + 5) = v16;
              *(v13 + 3) = v14;
            }
          }

          while (sqlite3_step(v5) == 100);
        }

        else
        {
          v8 = MEMORY[0x277D84F90];
        }

        sqlite3_finalize(v5);
        v36 = *(v0 + 8);

        return v36(v8);
      }

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v28, v29))
      {

        goto LABEL_33;
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v44 = v31;
      *v30 = 136315138;
      v32 = sqlite3_errmsg(*(v1 + v2));

      if (v32)
      {
        v33 = String.init(cString:)();
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v44);

        *(v30 + 4) = v35;
        _os_log_impl(&dword_26524C000, v28, v29, "query-sqlite3_step: SQLite error %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        MEMORY[0x2667577B0](v31, -1, -1);
        MEMORY[0x2667577B0](v30, -1, -1);

LABEL_33:
        *&v44 = 0x726F7272456C7173;
        *(&v44 + 1) = 0xE90000000000003ALL;
        *(v0 + 40) = v7;
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v37);

        v38 = v44;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v39 = 0;
        *(v39 + 8) = v38;
        swift_willThrow();
        sqlite3_finalize(v5);
        goto LABEL_8;
      }

LABEL_35:
      __break(1u);
      return result;
    }

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v44 = v23;
      *v22 = 136315138;
      v24 = sqlite3_errmsg(*(v1 + v2));

      if (!v24)
      {
        __break(1u);
        goto LABEL_35;
      }

      v25 = String.init(cString:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v44);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_26524C000, v20, v21, "query-queryStatement: SQLite error %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x2667577B0](v23, -1, -1);
      MEMORY[0x2667577B0](v22, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 2;
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 1;
  }

  *v9 = v10;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  swift_willThrow();
LABEL_8:
  v11 = *(v0 + 8);

  return v11();
}

{
  v48 = v0;
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = GroupMemberQuery.queryStatement(_:)(v3, *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
    v5 = v4;
    if (v4)
    {
      v6 = sqlite3_step(v4);
      v7 = v6;
      if ((v6 & 0xFFFFFFFE) == 0x64)
      {
        if (v6 == 100)
        {
          v8 = MEMORY[0x277D84F90];
          do
          {
            if (one-time initialization token for converter != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v17 = static GroupMemberQuery.converter;

            v17(&v40, v5);

            if (*(&v41 + 1))
            {
              v46 = v42;
              v47[0] = *v43;
              *(v47 + 13) = *&v43[13];
              v44 = v40;
              v45 = v41;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
              }

              v19 = *(v8 + 2);
              v18 = *(v8 + 3);
              if (v19 >= v18 >> 1)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v8);
              }

              *(v8 + 2) = v19 + 1;
              v13 = &v8[72 * v19];
              *(v13 + 2) = v44;
              v14 = v45;
              v15 = v46;
              v16 = v47[0];
              *(v13 + 93) = *(v47 + 13);
              *(v13 + 4) = v15;
              *(v13 + 5) = v16;
              *(v13 + 3) = v14;
            }
          }

          while (sqlite3_step(v5) == 100);
        }

        else
        {
          v8 = MEMORY[0x277D84F90];
        }

        sqlite3_finalize(v5);
        v36 = *(v0 + 8);

        return v36(v8);
      }

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v28, v29))
      {

        goto LABEL_33;
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v44 = v31;
      *v30 = 136315138;
      v32 = sqlite3_errmsg(*(v1 + v2));

      if (v32)
      {
        v33 = String.init(cString:)();
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v44);

        *(v30 + 4) = v35;
        _os_log_impl(&dword_26524C000, v28, v29, "query-sqlite3_step: SQLite error %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        MEMORY[0x2667577B0](v31, -1, -1);
        MEMORY[0x2667577B0](v30, -1, -1);

LABEL_33:
        *&v44 = 0x726F7272456C7173;
        *(&v44 + 1) = 0xE90000000000003ALL;
        *(v0 + 40) = v7;
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v37);

        v38 = v44;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v39 = 0;
        *(v39 + 8) = v38;
        swift_willThrow();
        sqlite3_finalize(v5);
        goto LABEL_8;
      }

LABEL_35:
      __break(1u);
      return result;
    }

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v44 = v23;
      *v22 = 136315138;
      v24 = sqlite3_errmsg(*(v1 + v2));

      if (!v24)
      {
        __break(1u);
        goto LABEL_35;
      }

      v25 = String.init(cString:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v44);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_26524C000, v20, v21, "query-queryStatement: SQLite error %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x2667577B0](v23, -1, -1);
      MEMORY[0x2667577B0](v22, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 2;
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 1;
  }

  *v9 = v10;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  swift_willThrow();
LABEL_8:
  v11 = *(v0 + 8);

  return v11();
}

{
  v48 = v0;
  v1 = *(v0 + 72);
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = FailureToDecryptRetryQuery.queryStatement(_:)(v3);
    v5 = v4;
    if (v4)
    {
      v6 = sqlite3_step(v4);
      v7 = v6;
      if ((v6 & 0xFFFFFFFE) == 0x64)
      {
        v8 = MEMORY[0x277D84F90];
        if (v6 == 100)
        {
          do
          {
            if (one-time initialization token for converter != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v17 = static FailureToDecryptRetryQuery.converter;

            v17(&v40, v5);

            if (*(&v41 + 1))
            {
              v44 = v40;
              v45 = v41;
              v46 = v42;
              v47 = v43;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
              }

              v19 = *(v8 + 2);
              v18 = *(v8 + 3);
              if (v19 >= v18 >> 1)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v8);
              }

              *(v8 + 2) = v19 + 1;
              v13 = &v8[64 * v19];
              v14 = v44;
              v15 = v45;
              v16 = v47;
              *(v13 + 4) = v46;
              *(v13 + 5) = v16;
              *(v13 + 2) = v14;
              *(v13 + 3) = v15;
            }
          }

          while (sqlite3_step(v5) == 100);
        }

        sqlite3_finalize(v5);
        v36 = *(v0 + 8);

        return v36(v8);
      }

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v28, v29))
      {

        goto LABEL_32;
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v44 = v31;
      *v30 = 136315138;
      v32 = sqlite3_errmsg(*(v1 + v2));

      if (v32)
      {
        v33 = String.init(cString:)();
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v44);

        *(v30 + 4) = v35;
        _os_log_impl(&dword_26524C000, v28, v29, "query-sqlite3_step: SQLite error %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        MEMORY[0x2667577B0](v31, -1, -1);
        MEMORY[0x2667577B0](v30, -1, -1);

LABEL_32:
        *&v44 = 0x726F7272456C7173;
        *(&v44 + 1) = 0xE90000000000003ALL;
        *(v0 + 40) = v7;
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v37);

        v38 = v44;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v39 = 0;
        *(v39 + 8) = v38;
        swift_willThrow();
        sqlite3_finalize(v5);
        goto LABEL_8;
      }

LABEL_34:
      __break(1u);
      return result;
    }

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v44 = v23;
      *v22 = 136315138;
      v24 = sqlite3_errmsg(*(v1 + v2));

      if (!v24)
      {
        __break(1u);
        goto LABEL_34;
      }

      v25 = String.init(cString:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v44);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_26524C000, v20, v21, "query-queryStatement: SQLite error %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x2667577B0](v23, -1, -1);
      MEMORY[0x2667577B0](v22, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 2;
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 1;
  }

  *v9 = v10;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  swift_willThrow();
LABEL_8:
  v11 = *(v0 + 8);

  return v11();
}

{
  v48 = v0;
  v1 = *(v0 + 152);
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = KeyUpdateQuery.queryStatement(_:)(v3, *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));
    v5 = v4;
    if (v4)
    {
      v6 = sqlite3_step(v4);
      v7 = v6;
      if ((v6 & 0xFFFFFFFE) == 0x64)
      {
        v8 = MEMORY[0x277D84F90];
        if (v6 == 100)
        {
          do
          {
            if (one-time initialization token for converter != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v15 = static KeyUpdateQuery.converter;

            v15(v5);
            v16 = *(v0 + 16);
            v17 = *(v0 + 24);
            v19 = *(v0 + 32);
            v18 = *(v0 + 40);
            v21 = *(v0 + 48);
            v20 = *(v0 + 56);
            v45 = *(v0 + 64);

            if (v18)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
              }

              v23 = *(v8 + 2);
              v22 = *(v8 + 3);
              if (v23 >= v22 >> 1)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v8);
              }

              *(v8 + 2) = v23 + 1;
              v14 = &v8[56 * v23];
              *(v14 + 4) = v16;
              *(v14 + 5) = v17;
              *(v14 + 6) = v19;
              *(v14 + 7) = v18;
              *(v14 + 8) = v21;
              *(v14 + 9) = v20;
              v14[80] = v45 & 1;
            }
          }

          while (sqlite3_step(v5) == 100);
        }

        sqlite3_finalize(v5);
        v9 = *(v0 + 8);

        return v9(v8);
      }

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v32, v33))
      {

        goto LABEL_31;
      }

      v34 = v5;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v46 = v36;
      *v35 = 136315138;
      v37 = sqlite3_errmsg(*(v1 + v2));

      if (v37)
      {
        v38 = String.init(cString:)();
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v46);

        *(v35 + 4) = v40;
        _os_log_impl(&dword_26524C000, v32, v33, "query-sqlite3_step: SQLite error %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
        MEMORY[0x2667577B0](v36, -1, -1);
        MEMORY[0x2667577B0](v35, -1, -1);

        v5 = v34;
LABEL_31:
        v46 = 0x726F7272456C7173;
        v47 = 0xE90000000000003ALL;
        *(v0 + 96) = v7;
        v41 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v41);

        v42 = v46;
        v43 = v47;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v44 = 0;
        *(v44 + 8) = v42;
        *(v44 + 16) = v43;
        swift_willThrow();
        sqlite3_finalize(v5);
        goto LABEL_10;
      }

LABEL_33:
      __break(1u);
      return result;
    }

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v46 = v27;
      *v26 = 136315138;
      v28 = sqlite3_errmsg(*(v1 + v2));

      if (!v28)
      {
        __break(1u);
        goto LABEL_33;
      }

      v29 = String.init(cString:)();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v46);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_26524C000, v24, v25, "query-queryStatement: SQLite error %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x2667577B0](v27, -1, -1);
      MEMORY[0x2667577B0](v26, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v12 = 2;
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v12 = 1;
  }

  *v11 = v12;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  swift_willThrow();
LABEL_10:
  v13 = *(v0 + 8);

  return v13();
}

{
  v45 = v0;
  v1 = *(v0 + 80);
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = IncomingEventQuery.queryStatement(_:)(v3, *(v0 + 64), *(v0 + 72));
    v5 = v4;
    if (v4)
    {
      v6 = sqlite3_step(v4);
      v7 = v6;
      if ((v6 & 0xFFFFFFFE) == 0x64)
      {
        v8 = MEMORY[0x277D84F90];
        if (v6 == 100)
        {
          do
          {
            if (one-time initialization token for converter != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v17 = static IncomingEventQuery.converter;

            v17(v40, v5);

            if (*(&v40[0] + 1) >> 60 != 15)
            {
              v41 = v40[0];
              v42 = v40[1];
              v43 = v40[2];
              v44 = v40[3];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
              }

              v19 = *(v8 + 2);
              v18 = *(v8 + 3);
              if (v19 >= v18 >> 1)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v8);
              }

              *(v8 + 2) = v19 + 1;
              v13 = &v8[64 * v19];
              v14 = v41;
              v15 = v42;
              v16 = v44;
              *(v13 + 4) = v43;
              *(v13 + 5) = v16;
              *(v13 + 2) = v14;
              *(v13 + 3) = v15;
            }
          }

          while (sqlite3_step(v5) == 100);
        }

        sqlite3_finalize(v5);
        v36 = *(v0 + 8);

        return v36(v8);
      }

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v28, v29))
      {

        goto LABEL_32;
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v41 = v31;
      *v30 = 136315138;
      v32 = sqlite3_errmsg(*(v1 + v2));

      if (v32)
      {
        v33 = String.init(cString:)();
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v41);

        *(v30 + 4) = v35;
        _os_log_impl(&dword_26524C000, v28, v29, "query-sqlite3_step: SQLite error %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        MEMORY[0x2667577B0](v31, -1, -1);
        MEMORY[0x2667577B0](v30, -1, -1);

LABEL_32:
        *&v41 = 0x726F7272456C7173;
        *(&v41 + 1) = 0xE90000000000003ALL;
        *(v0 + 40) = v7;
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v37);

        v38 = v41;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v39 = 0;
        *(v39 + 8) = v38;
        swift_willThrow();
        sqlite3_finalize(v5);
        goto LABEL_8;
      }

LABEL_34:
      __break(1u);
      return result;
    }

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v41 = v23;
      *v22 = 136315138;
      v24 = sqlite3_errmsg(*(v1 + v2));

      if (!v24)
      {
        __break(1u);
        goto LABEL_34;
      }

      v25 = String.init(cString:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v41);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_26524C000, v20, v21, "query-queryStatement: SQLite error %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x2667577B0](v23, -1, -1);
      MEMORY[0x2667577B0](v22, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 2;
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 1;
  }

  *v9 = v10;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  swift_willThrow();
LABEL_8:
  v11 = *(v0 + 8);

  return v11();
}

{
  v48 = v0;
  v1 = *(v0 + 80);
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = OutgoingEventQuery.queryStatement(_:)(v3, *(v0 + 64), *(v0 + 72));
    v5 = v4;
    if (v4)
    {
      v6 = sqlite3_step(v4);
      v7 = v6;
      if ((v6 & 0xFFFFFFFE) == 0x64)
      {
        v8 = MEMORY[0x277D84F90];
        if (v6 == 100)
        {
          do
          {
            if (one-time initialization token for converter != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v18 = static OutgoingEventQuery.converter;

            v18(v41, v5);

            if (*(&v41[0] + 1) >> 60 != 15)
            {
              v44 = v41[2];
              v45 = v41[3];
              v46 = v41[4];
              v47 = v41[5];
              v42 = v41[0];
              v43 = v41[1];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
              }

              v20 = *(v8 + 2);
              v19 = *(v8 + 3);
              if (v20 >= v19 >> 1)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v8);
              }

              *(v8 + 2) = v20 + 1;
              v13 = &v8[96 * v20];
              v14 = v43;
              *(v13 + 2) = v42;
              *(v13 + 3) = v14;
              v15 = v44;
              v16 = v45;
              v17 = v47;
              *(v13 + 6) = v46;
              *(v13 + 7) = v17;
              *(v13 + 4) = v15;
              *(v13 + 5) = v16;
            }
          }

          while (sqlite3_step(v5) == 100);
        }

        sqlite3_finalize(v5);
        v37 = *(v0 + 8);

        return v37(v8);
      }

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v29, v30))
      {

        goto LABEL_32;
      }

      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v42 = v32;
      *v31 = 136315138;
      v33 = sqlite3_errmsg(*(v1 + v2));

      if (v33)
      {
        v34 = String.init(cString:)();
        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v42);

        *(v31 + 4) = v36;
        _os_log_impl(&dword_26524C000, v29, v30, "query-sqlite3_step: SQLite error %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        MEMORY[0x2667577B0](v32, -1, -1);
        MEMORY[0x2667577B0](v31, -1, -1);

LABEL_32:
        *&v42 = 0x726F7272456C7173;
        *(&v42 + 1) = 0xE90000000000003ALL;
        *(v0 + 40) = v7;
        v38 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v38);

        v39 = v42;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v40 = 0;
        *(v40 + 8) = v39;
        swift_willThrow();
        sqlite3_finalize(v5);
        goto LABEL_8;
      }

LABEL_34:
      __break(1u);
      return result;
    }

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v42 = v24;
      *v23 = 136315138;
      v25 = sqlite3_errmsg(*(v1 + v2));

      if (!v25)
      {
        __break(1u);
        goto LABEL_34;
      }

      v26 = String.init(cString:)();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v42);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_26524C000, v21, v22, "query-queryStatement: SQLite error %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x2667577B0](v24, -1, -1);
      MEMORY[0x2667577B0](v23, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 2;
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 1;
  }

  *v9 = v10;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  swift_willThrow();
LABEL_8:
  v11 = *(v0 + 8);

  return v11();
}

{
  v47 = v0;
  v1 = *(v0 + 80);
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = ClientStateQuery.queryStatement(_:)(v3, *(v0 + 64), *(v0 + 72));
    v5 = v4;
    if (v4)
    {
      v6 = sqlite3_step(v4);
      v7 = v6;
      if ((v6 & 0xFFFFFFFE) == 0x64)
      {
        v8 = MEMORY[0x277D84F90];
        if (v6 == 100)
        {
          do
          {
            if (one-time initialization token for converter != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v15 = static ClientStateQuery.converter;

            v16 = v15(v5);
            v18 = v17;
            v20 = v19;
            v22 = v21;

            if (v18)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
              }

              v24 = *(v8 + 2);
              v23 = *(v8 + 3);
              if (v24 >= v23 >> 1)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v8);
              }

              *(v8 + 2) = v24 + 1;
              v14 = &v8[32 * v24];
              *(v14 + 4) = v16;
              *(v14 + 5) = v18;
              *(v14 + 6) = v20;
              *(v14 + 7) = v22;
            }
          }

          while (sqlite3_step(v5) == 100);
        }

        sqlite3_finalize(v5);
        v9 = *(v0 + 8);

        return v9(v8);
      }

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v33, v34))
      {

        goto LABEL_31;
      }

      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v45 = v36;
      *v35 = 136315138;
      v37 = sqlite3_errmsg(*(v1 + v2));

      if (v37)
      {
        v38 = String.init(cString:)();
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v45);

        *(v35 + 4) = v40;
        _os_log_impl(&dword_26524C000, v33, v34, "query-sqlite3_step: SQLite error %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
        MEMORY[0x2667577B0](v36, -1, -1);
        MEMORY[0x2667577B0](v35, -1, -1);

LABEL_31:
        v45 = 0x726F7272456C7173;
        v46 = 0xE90000000000003ALL;
        *(v0 + 40) = v7;
        v41 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v41);

        v42 = v45;
        v43 = v46;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v44 = 0;
        *(v44 + 8) = v42;
        *(v44 + 16) = v43;
        swift_willThrow();
        sqlite3_finalize(v5);
        goto LABEL_10;
      }

LABEL_33:
      __break(1u);
      return result;
    }

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v45 = v28;
      *v27 = 136315138;
      v29 = sqlite3_errmsg(*(v1 + v2));

      if (!v29)
      {
        __break(1u);
        goto LABEL_33;
      }

      v30 = String.init(cString:)();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v45);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_26524C000, v25, v26, "query-queryStatement: SQLite error %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x2667577B0](v28, -1, -1);
      MEMORY[0x2667577B0](v27, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v12 = 2;
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v12 = 1;
  }

  *v11 = v12;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  swift_willThrow();
LABEL_10:
  v13 = *(v0 + 8);

  return v13();
}

{
  v44 = v0;
  v1 = *(v0 + 144);
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = GroupStateQuery.queryStatement(_:)(v3, *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));
    v5 = v4;
    if (v4)
    {
      v6 = sqlite3_step(v4);
      v7 = v6;
      if ((v6 & 0xFFFFFFFE) == 0x64)
      {
        v8 = MEMORY[0x277D84F90];
        if (v6 == 100)
        {
          do
          {
            if (one-time initialization token for converter != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v14 = static GroupStateQuery.converter;

            v14(v5);
            v40 = *(v0 + 32);
            v41 = *(v0 + 16);
            v15 = *(v0 + 48);
            v16 = *(v0 + 56);

            if (*(&v41 + 1) >> 60 != 15)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
              }

              v18 = *(v8 + 2);
              v17 = *(v8 + 3);
              if (v18 >= v17 >> 1)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v8);
              }

              *(v8 + 2) = v18 + 1;
              v13 = &v8[48 * v18];
              *(v13 + 2) = v41;
              *(v13 + 3) = v40;
              *(v13 + 8) = v15;
              *(v13 + 9) = v16;
            }
          }

          while (sqlite3_step(v5) == 100);
        }

        sqlite3_finalize(v5);
        v35 = *(v0 + 8);

        return v35(v8);
      }

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v27, v28))
      {

        goto LABEL_32;
      }

      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v42 = v30;
      *v29 = 136315138;
      v31 = sqlite3_errmsg(*(v1 + v2));

      if (v31)
      {
        v32 = String.init(cString:)();
        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v42);

        *(v29 + 4) = v34;
        _os_log_impl(&dword_26524C000, v27, v28, "query-sqlite3_step: SQLite error %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        MEMORY[0x2667577B0](v30, -1, -1);
        MEMORY[0x2667577B0](v29, -1, -1);

LABEL_32:
        v42 = 0x726F7272456C7173;
        v43 = 0xE90000000000003ALL;
        *(v0 + 88) = v7;
        v36 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v36);

        v37 = v42;
        v38 = v43;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v39 = 0;
        *(v39 + 8) = v37;
        *(v39 + 16) = v38;
        swift_willThrow();
        sqlite3_finalize(v5);
        goto LABEL_8;
      }

LABEL_34:
      __break(1u);
      return result;
    }

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v42 = v22;
      *v21 = 136315138;
      v23 = sqlite3_errmsg(*(v1 + v2));

      if (!v23)
      {
        __break(1u);
        goto LABEL_34;
      }

      v24 = String.init(cString:)();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v42);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_26524C000, v19, v20, "query-queryStatement: SQLite error %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x2667577B0](v22, -1, -1);
      MEMORY[0x2667577B0](v21, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 2;
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 1;
  }

  *v9 = v10;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  swift_willThrow();
LABEL_8:
  v11 = *(v0 + 8);

  return v11();
}

{
  v46 = v0;
  v1 = *(v0 + 72);
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = EpochQuery.queryStatement(_:)(v3);
    v5 = v4;
    if (v4)
    {
      v6 = sqlite3_step(v4);
      v7 = v6;
      if ((v6 & 0xFFFFFFFE) == 0x64)
      {
        v8 = MEMORY[0x277D84F90];
        if (v6 == 100)
        {
          do
          {
            if (one-time initialization token for converter != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v17 = static EpochQuery.converter;

            v17(v40, v5);

            if (*(&v40[0] + 1) >> 60 != 15)
            {
              v43 = v40[2];
              v44 = v40[3];
              v45 = v40[4];
              v41 = v40[0];
              v42 = v40[1];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
              }

              v19 = *(v8 + 2);
              v18 = *(v8 + 3);
              if (v19 >= v18 >> 1)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v8);
              }

              *(v8 + 2) = v19 + 1;
              v13 = &v8[80 * v19];
              *(v13 + 2) = v41;
              v14 = v42;
              v15 = v43;
              v16 = v45;
              *(v13 + 5) = v44;
              *(v13 + 6) = v16;
              *(v13 + 3) = v14;
              *(v13 + 4) = v15;
            }
          }

          while (sqlite3_step(v5) == 100);
        }

        sqlite3_finalize(v5);
        v36 = *(v0 + 8);

        return v36(v8);
      }

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v28, v29))
      {

        goto LABEL_32;
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v41 = v31;
      *v30 = 136315138;
      v32 = sqlite3_errmsg(*(v1 + v2));

      if (v32)
      {
        v33 = String.init(cString:)();
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v41);

        *(v30 + 4) = v35;
        _os_log_impl(&dword_26524C000, v28, v29, "query-sqlite3_step: SQLite error %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        MEMORY[0x2667577B0](v31, -1, -1);
        MEMORY[0x2667577B0](v30, -1, -1);

LABEL_32:
        *&v41 = 0x726F7272456C7173;
        *(&v41 + 1) = 0xE90000000000003ALL;
        *(v0 + 40) = v7;
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v37);

        v38 = v41;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v39 = 0;
        *(v39 + 8) = v38;
        swift_willThrow();
        sqlite3_finalize(v5);
        goto LABEL_8;
      }

LABEL_34:
      __break(1u);
      return result;
    }

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v41 = v23;
      *v22 = 136315138;
      v24 = sqlite3_errmsg(*(v1 + v2));

      if (!v24)
      {
        __break(1u);
        goto LABEL_34;
      }

      v25 = String.init(cString:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v41);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_26524C000, v20, v21, "query-queryStatement: SQLite error %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x2667577B0](v23, -1, -1);
      MEMORY[0x2667577B0](v22, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 2;
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 1;
  }

  *v9 = v10;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  swift_willThrow();
LABEL_8:
  v11 = *(v0 + 8);

  return v11();
}

{
  *(v1 + 64) = v0;
  return MEMORY[0x2822009F8](specialized SqliteStore.query<A>(_:), v0, 0);
}

{
  v43 = v0;
  v1 = *(v0 + 64);
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = specialized OutgoingClientWithEventQuery.queryStatement(_:)(v3);
    v5 = v4;
    if (v4)
    {
      v6 = sqlite3_step(v4);
      v7 = v6;
      if ((v6 & 0xFFFFFFFE) == 0x64)
      {
        v8 = MEMORY[0x277D84F90];
        if (v6 == 100)
        {
          do
          {
            swift_beginAccess();
            v14 = static OutgoingClientWithEventQuery.converter;

            v15 = v14(v5);
            v17 = v16;

            if (v17 >> 60 != 15)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
              }

              v19 = *(v8 + 2);
              v18 = *(v8 + 3);
              if (v19 >= v18 >> 1)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v8);
              }

              *(v8 + 2) = v19 + 1;
              v13 = &v8[16 * v19];
              *(v13 + 4) = v15;
              *(v13 + 5) = v17;
            }
          }

          while (sqlite3_step(v5) == 100);
        }

        sqlite3_finalize(v5);
        v36 = *(v0 + 8);

        return v36(v8);
      }

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v28, v29))
      {

        goto LABEL_30;
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v41 = v31;
      *v30 = 136315138;
      v32 = sqlite3_errmsg(*(v1 + v2));

      if (v32)
      {
        v33 = String.init(cString:)();
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v41);

        *(v30 + 4) = v35;
        _os_log_impl(&dword_26524C000, v28, v29, "query-sqlite3_step: SQLite error %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        MEMORY[0x2667577B0](v31, -1, -1);
        MEMORY[0x2667577B0](v30, -1, -1);

LABEL_30:
        v41 = 0x726F7272456C7173;
        v42 = 0xE90000000000003ALL;
        *(v0 + 40) = v7;
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v37);

        v38 = v41;
        v39 = v42;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v40 = 0;
        *(v40 + 8) = v38;
        *(v40 + 16) = v39;
        swift_willThrow();
        sqlite3_finalize(v5);
        goto LABEL_8;
      }

LABEL_32:
      __break(1u);
      return result;
    }

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v41 = v23;
      *v22 = 136315138;
      v24 = sqlite3_errmsg(*(v1 + v2));

      if (!v24)
      {
        __break(1u);
        goto LABEL_32;
      }

      v25 = String.init(cString:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v41);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_26524C000, v20, v21, "query-queryStatement: SQLite error %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x2667577B0](v23, -1, -1);
      MEMORY[0x2667577B0](v22, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 2;
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 1;
  }

  *v9 = v10;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  swift_willThrow();
LABEL_8:
  v11 = *(v0 + 8);

  return v11();
}

{
  *(v1 + 64) = v0;
  return MEMORY[0x2822009F8](specialized SqliteStore.query<A>(_:), v0, 0);
}

{
  v43 = v0;
  v1 = *(v0 + 64);
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = specialized IncomingClientWithEventQuery.queryStatement(_:)(v3);
    v5 = v4;
    if (v4)
    {
      v6 = sqlite3_step(v4);
      v7 = v6;
      if ((v6 & 0xFFFFFFFE) == 0x64)
      {
        v8 = MEMORY[0x277D84F90];
        if (v6 == 100)
        {
          do
          {
            swift_beginAccess();
            v14 = static IncomingClientWithEventQuery.converter;

            v15 = v14(v5);
            v17 = v16;

            if (v17 >> 60 != 15)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
              }

              v19 = *(v8 + 2);
              v18 = *(v8 + 3);
              if (v19 >= v18 >> 1)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v8);
              }

              *(v8 + 2) = v19 + 1;
              v13 = &v8[16 * v19];
              *(v13 + 4) = v15;
              *(v13 + 5) = v17;
            }
          }

          while (sqlite3_step(v5) == 100);
        }

        sqlite3_finalize(v5);
        v36 = *(v0 + 8);

        return v36(v8);
      }

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v28, v29))
      {

        goto LABEL_30;
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v41 = v31;
      *v30 = 136315138;
      v32 = sqlite3_errmsg(*(v1 + v2));

      if (v32)
      {
        v33 = String.init(cString:)();
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v41);

        *(v30 + 4) = v35;
        _os_log_impl(&dword_26524C000, v28, v29, "query-sqlite3_step: SQLite error %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        MEMORY[0x2667577B0](v31, -1, -1);
        MEMORY[0x2667577B0](v30, -1, -1);

LABEL_30:
        v41 = 0x726F7272456C7173;
        v42 = 0xE90000000000003ALL;
        *(v0 + 40) = v7;
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v37);

        v38 = v41;
        v39 = v42;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v40 = 0;
        *(v40 + 8) = v38;
        *(v40 + 16) = v39;
        swift_willThrow();
        sqlite3_finalize(v5);
        goto LABEL_8;
      }

LABEL_32:
      __break(1u);
      return result;
    }

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v41 = v23;
      *v22 = 136315138;
      v24 = sqlite3_errmsg(*(v1 + v2));

      if (!v24)
      {
        __break(1u);
        goto LABEL_32;
      }

      v25 = String.init(cString:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v41);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_26524C000, v20, v21, "query-queryStatement: SQLite error %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x2667577B0](v23, -1, -1);
      MEMORY[0x2667577B0](v22, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 2;
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 1;
  }

  *v9 = v10;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  swift_willThrow();
LABEL_8:
  v11 = *(v0 + 8);

  return v11();
}

{
  *(v1 + 240) = v0;
  return MEMORY[0x2822009F8](specialized SqliteStore.query<A>(_:), v0, 0);
}

{
  v70 = v0;
  v1 = *(v0 + 240);
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = specialized StateMachineQuery.queryStatement(_:)(v3);
    v5 = v4;
    if (v4)
    {
      v6 = sqlite3_step(v4);
      v7 = v6;
      if ((v6 & 0xFFFFFFFE) == 0x64)
      {
        if (v6 == 100)
        {
          v8 = MEMORY[0x277D84F90];
          do
          {
            if (one-time initialization token for converter != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v22 = static StateMachineQuery.converter;

            v22(&v50, v5);

            v23 = v59[0];
            *(v0 + 144) = v58;
            *(v0 + 160) = v23;
            *(v0 + 169) = *(v59 + 9);
            v24 = v55;
            *(v0 + 80) = v54;
            *(v0 + 96) = v24;
            v25 = v57;
            *(v0 + 112) = v56;
            *(v0 + 128) = v25;
            v26 = v51;
            *(v0 + 16) = v50;
            *(v0 + 32) = v26;
            v27 = v53;
            *(v0 + 48) = v52;
            *(v0 + 64) = v27;
            if (_s24SecureMessagingAgentCore17StateMachineModelVSgWOg(v0 + 16) != 1)
            {
              v68 = v58;
              v69[0] = v59[0];
              *(v69 + 9) = *(v59 + 9);
              v64 = v54;
              v65 = v55;
              v66 = v56;
              v67 = v57;
              v60 = v50;
              v61 = v51;
              v62 = v52;
              v63 = v53;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
              }

              v29 = *(v8 + 2);
              v28 = *(v8 + 3);
              if (v29 >= v28 >> 1)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v8);
              }

              *(v8 + 2) = v29 + 1;
              v13 = &v8[176 * v29];
              v14 = v60;
              v15 = v62;
              *(v13 + 3) = v61;
              *(v13 + 4) = v15;
              *(v13 + 2) = v14;
              v16 = v63;
              v17 = v64;
              v18 = v66;
              *(v13 + 7) = v65;
              *(v13 + 8) = v18;
              *(v13 + 5) = v16;
              *(v13 + 6) = v17;
              v19 = v67;
              v20 = v68;
              v21 = v69[0];
              *(v13 + 185) = *(v69 + 9);
              *(v13 + 10) = v20;
              *(v13 + 11) = v21;
              *(v13 + 9) = v19;
            }
          }

          while (sqlite3_step(v5) == 100);
        }

        else
        {
          v8 = MEMORY[0x277D84F90];
        }

        sqlite3_finalize(v5);
        v46 = *(v0 + 8);

        return v46(v8);
      }

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v38, v39))
      {

        goto LABEL_33;
      }

      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v60 = v41;
      *v40 = 136315138;
      v42 = sqlite3_errmsg(*(v1 + v2));

      if (v42)
      {
        v43 = String.init(cString:)();
        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v60);

        *(v40 + 4) = v45;
        _os_log_impl(&dword_26524C000, v38, v39, "query-sqlite3_step: SQLite error %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v41);
        MEMORY[0x2667577B0](v41, -1, -1);
        MEMORY[0x2667577B0](v40, -1, -1);

LABEL_33:
        *&v60 = 0x726F7272456C7173;
        *(&v60 + 1) = 0xE90000000000003ALL;
        *(v0 + 216) = v7;
        v47 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v47);

        v48 = v60;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v49 = 0;
        *(v49 + 8) = v48;
        swift_willThrow();
        sqlite3_finalize(v5);
        goto LABEL_8;
      }

LABEL_35:
      __break(1u);
      return result;
    }

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v60 = v33;
      *v32 = 136315138;
      v34 = sqlite3_errmsg(*(v1 + v2));

      if (!v34)
      {
        __break(1u);
        goto LABEL_35;
      }

      v35 = String.init(cString:)();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v60);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_26524C000, v30, v31, "query-queryStatement: SQLite error %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x2667577B0](v33, -1, -1);
      MEMORY[0x2667577B0](v32, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 2;
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 1;
  }

  *v9 = v10;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  swift_willThrow();
LABEL_8:
  v11 = *(v0 + 8);

  return v11();
}
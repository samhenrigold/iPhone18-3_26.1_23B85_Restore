uint64_t BackgroundGroupSessionManager.start(presenceSession:)(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  type metadata accessor for UUID();
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](BackgroundGroupSessionManager.start(presenceSession:), v1, 0);
}

{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 104) = v1;

  v5 = *(v3 + 56);
  if (v1)
  {
    v6 = BackgroundGroupSessionManager.start(presenceSession:);
  }

  else
  {
    v6 = BackgroundGroupSessionManager.start(presenceSession:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v4[16] = v1;

  v5 = v3[7];
  if (v1)
  {
    v6 = BackgroundGroupSessionManager.start(presenceSession:);
  }

  else
  {
    v6 = BackgroundGroupSessionManager.start(presenceSession:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t BackgroundGroupSessionManager.start(presenceSession:)()
{
  v39 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 72) = __swift_project_value_buffer(v1, static Log.default);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v38[0] = v5;
    *v4 = 136315138;
    v6 = PresenceSession.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, v38);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Start request for presence session: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B2715BA0](v5, -1, -1);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  v9 = (*(**(v0 + 48) + 304))();
  *(v0 + 80) = v9;
  if (v9)
  {
    v11 = v10;
    ObjectType = swift_getObjectType();
    v13 = swift_task_alloc();
    *(v0 + 88) = v13;
    v14 = *(v11 + 8);
    *v13 = v0;
    v13[1] = BackgroundGroupSessionManager.start(presenceSession:);

    return GroupSessionProvider.backgroundSessionCreationRequest.getter(ObjectType, v14);
  }

  else
  {

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v38[0] = v19;
      *v18 = 136315138;
      v20 = PresenceSession.description.getter();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v38);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1AEE80000, v16, v17, "Failed to find provider on presenceSession: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1B2715BA0](v19, -1, -1);
      MEMORY[0x1B2715BA0](v18, -1, -1);
    }

    lazy protocol witness table accessor for type BackgroundGroupSessionManagerError and conformance BackgroundGroupSessionManagerError();
    v23 = swift_allocError();
    *v24 = 8;
    swift_willThrow();

    v25 = v23;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v38[0] = v29;
      *v28 = 136315394;
      v30 = PresenceSession.description.getter();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v38);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      *(v0 + 40) = v23;
      v33 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v34 = String.init<A>(reflecting:)();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v38);

      *(v28 + 14) = v36;
      _os_log_impl(&dword_1AEE80000, v26, v27, "Failed to issue creation of presence session for presenceSession: %s, error: %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v29, -1, -1);
      MEMORY[0x1B2715BA0](v28, -1, -1);
    }

    swift_willThrow();

    v37 = *(v0 + 8);

    return v37();
  }
}

{
  swift_unknownObjectRelease();
  BackgroundSessionCreationRequest.id.getter();
  BackgroundSessionCreationRequest.isCrossAccount.getter();
  v1 = objc_allocWithZone(type metadata accessor for PresenceSessionCreationRequest());
  v2 = PresenceSessionCreationRequest.init(id:isCrossAccount:)();
  *(v0 + 112) = v2;
  ObjectType = swift_getObjectType();
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = BackgroundGroupSessionManager.start(presenceSession:);

  return MEMORY[0x1EEDF8BC8](v2, ObjectType);
}

{
  v15 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[14];
  v5 = v0[12];
  if (v3)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = PresenceSession.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1AEE80000, v1, v2, "Successfully created remote session for presenceSession: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  v11 = v0[3];

  v12 = v0[1];

  return v12(v11);
}

{
  v17 = v0;
  swift_unknownObjectRelease();
  v1 = v0[13];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16[0] = v6;
    *v5 = 136315394;
    v7 = PresenceSession.description.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v16);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    v0[5] = v1;
    v10 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v16);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Failed to issue creation of presence session for presenceSession: %s, error: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v6, -1, -1);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }

  swift_willThrow();

  v14 = v0[1];

  return v14();
}

{
  v18 = v0;
  v1 = *(v0 + 96);

  v2 = *(v0 + 128);

  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17[0] = v7;
    *v6 = 136315394;
    v8 = PresenceSession.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v17);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v0 + 40) = v2;
    v11 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v17);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_1AEE80000, v4, v5, "Failed to issue creation of presence session for presenceSession: %s, error: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  swift_willThrow();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t BackgroundGroupSessionManager.start(presenceProvider:)(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;
  v4 = type metadata accessor for UUID();
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](BackgroundGroupSessionManager.start(presenceProvider:), v2, 0);
}

{
  v14 = v2;
  swift_unknownObjectRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v12 = *(v2 + 192);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    *(v2 + 128) = v12;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities08PresenceA15SessionProvider_pMd, &_s15GroupActivities08PresenceA15SessionProvider_pMR);
    v7 = String.init<A>(reflecting:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Successfully started PresenceSession for provider: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B2715BA0](v6, -1, -1);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }

  v10 = *(v2 + 8);

  return v10();
}

{
  v22 = v2;
  v3 = *(v2 + 296);
  swift_unknownObjectRetain();
  v4 = v3;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v2 + 296);
    v20 = *(v2 + 192);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21[0] = v9;
    *v8 = 136315394;
    *(v2 + 112) = v20;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities08PresenceA15SessionProvider_pMd, &_s15GroupActivities08PresenceA15SessionProvider_pMR);
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v21);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v2 + 176) = v7;
    v13 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v14 = String.init<A>(reflecting:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v21);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1AEE80000, v5, v6, "Failed to join PresenceSession for provider: %s, error: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v9, -1, -1);
    MEMORY[0x1B2715BA0](v8, -1, -1);
  }

  v17 = *(v2 + 248);
  GroupSessionProvider.uuid.getter(*(v2 + 272), *(v2 + 264), v17);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(0, v17);
  swift_endAccess();
  BackgroundGroupSessionManager.providerObservers.didset();
  swift_willThrow();

  v18 = *(v2 + 8);

  return v18();
}

uint64_t BackgroundGroupSessionManager.start(presenceProvider:)()
{
  v66 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 256) = __swift_project_value_buffer(v1, static Log.default);
  swift_unknownObjectRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 248);
    v5 = *(v0 + 224);
    v60 = *(v0 + 216);
    v6 = *(v0 + 192);
    v7 = *(v0 + 200);
    v8 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v65[0] = v62;
    *v8 = 136315394;
    *(v0 + 160) = v6;
    *(v0 + 168) = v7;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities08PresenceA15SessionProvider_pMd, &_s15GroupActivities08PresenceA15SessionProvider_pMR);
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v65);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    ObjectType = swift_getObjectType();
    v13 = *(v7 + 8);
    GroupSessionProvider.uuid.getter(ObjectType, v13, v4);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v5 + 8))(v4, v60);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v65);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Start request for presenceProvider: %s, id: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v62, -1, -1);
    MEMORY[0x1B2715BA0](v8, -1, -1);
  }

  else
  {
    v18 = *(v0 + 200);

    v13 = *(v18 + 8);
  }

  *(v0 + 264) = v13;
  v19 = *(v0 + 240);
  v20 = *(v0 + 208);
  v21 = swift_getObjectType();
  *(v0 + 272) = v21;
  GroupSessionProvider.uuid.getter(v21, v13, v19);
  swift_beginAccess();
  v63 = v13;
  if (*(*(v20 + 128) + 16))
  {
    v22 = *(v0 + 240);

    specialized __RawDictionaryStorage.find<A>(_:)(v22);
    if (v23)
    {
      v24 = *(v0 + 240);
      v25 = *(v0 + 216);
      v26 = *(*(v0 + 224) + 8);

      v59 = v26;
      v26(v24, v25);

      swift_unknownObjectRetain();

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.fault.getter();

      swift_unknownObjectRelease();
      if (!os_log_type_enabled(v27, v28))
      {
LABEL_19:

        lazy protocol witness table accessor for type BackgroundGroupSessionManagerError and conformance BackgroundGroupSessionManagerError();
        swift_allocError();
        *v57 = 7;
        swift_willThrow();

        v58 = *(v0 + 8);

        return v58();
      }

      v29 = *(v0 + 232);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v65[0] = v31;
      *v30 = 136315394;
      GroupSessionProvider.uuid.getter(v21, v63, v29);
      v32 = *(v20 + 128);
      if (*(v32 + 16))
      {
        v33 = *(v0 + 232);

        v34 = specialized __RawDictionaryStorage.find<A>(_:)(v33);
        if (v35)
        {
          v36 = *(v0 + 232);
          v37 = *(v0 + 216);
          v38 = *(*(v32 + 56) + 8 * v34);

          v59(v36, v37);

          *(v0 + 184) = v38;
          type metadata accessor for PresenceGroupSessionProviderObserver();
          v39 = String.init<A>(reflecting:)();
          v41 = v40;
LABEL_18:
          v64 = *(v0 + 192);
          v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v65);

          *(v30 + 4) = v53;
          *(v30 + 12) = 2080;
          *(v0 + 144) = v64;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities08PresenceA15SessionProvider_pMd, &_s15GroupActivities08PresenceA15SessionProvider_pMR);
          v54 = String.init<A>(reflecting:)();
          v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v65);

          *(v30 + 14) = v56;
          _os_log_impl(&dword_1AEE80000, v27, v28, "Tried to start PresenceGroupSessionProvider with the same identifier as one that is already tracked. Existing: %s new: %s", v30, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B2715BA0](v31, -1, -1);
          MEMORY[0x1B2715BA0](v30, -1, -1);
          goto LABEL_19;
        }
      }

      v59(*(v0 + 232), *(v0 + 216));
      v41 = 0xE300000000000000;
      v39 = 7104878;
      goto LABEL_18;
    }
  }

  v42 = *(v0 + 248);
  v44 = *(v0 + 200);
  v43 = *(v0 + 208);
  v45 = *(v0 + 192);
  v46 = *(*(v0 + 224) + 8);
  v61 = *(v0 + 216);
  (v46)(*(v0 + 240));
  type metadata accessor for PresenceGroupSessionProviderObserver();
  v47 = swift_allocObject();
  *(v0 + 280) = v47;
  v47[3] = 0;
  swift_unknownObjectWeakInit();
  v47[7] = MEMORY[0x1E69E7CD0];
  v47[4] = v45;
  v47[5] = v44;
  swift_beginAccess();
  v47[3] = &protocol witness table for BackgroundGroupSessionManager;
  swift_unknownObjectWeakAssign();
  type metadata accessor for PresenceSession(0);
  v48 = swift_allocObject();
  swift_unknownObjectRetain();

  v49 = specialized PresenceSession.init(provider:serviceProvider:)(v45, v44, v43, v48);

  v47[6] = v49;
  GroupSessionProvider.uuid.getter(v21, v13, v42);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65[0] = *(v20 + 128);
  *(v20 + 128) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v47, v42, isUniquelyReferenced_nonNull_native);
  v46(v42, v61);
  *(v20 + 128) = v65[0];
  swift_endAccess();
  BackgroundGroupSessionManager.presenceProviderObservers.didset();
  v51 = swift_task_alloc();
  *(v0 + 288) = v51;
  *v51 = v0;
  v51[1] = BackgroundGroupSessionManager.start(presenceProvider:);

  return PresenceGroupSessionProviderObserver.join()();
}

{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 208);
  if (v0)
  {
    v4 = BackgroundGroupSessionManager.start(presenceProvider:);
  }

  else
  {
    v4 = BackgroundGroupSessionManager.start(presenceProvider:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t BackgroundGroupSessionManager.start(provider:)(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  v4 = type metadata accessor for OSSignpostID();
  v3[31] = v4;
  v3[32] = *(v4 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[35] = v5;
  v3[36] = *(v5 - 8);
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](BackgroundGroupSessionManager.start(provider:), v2, 0);
}

{
  v23 = v2;
  v3 = *(v2 + 408);
  swift_unknownObjectRetain();
  v4 = v3;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v2 + 408);
    v21 = *(v2 + 224);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22[0] = v9;
    *v8 = 136315394;
    *(v2 + 152) = v21;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A15SessionProvider_pMd, &_s15GroupActivities0A15SessionProvider_pMR);
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v22);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v2 + 200) = v7;
    v13 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v14 = String.init<A>(reflecting:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v22);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1AEE80000, v5, v6, "Failed to issue begin request for provider: %s error: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v9, -1, -1);
    MEMORY[0x1B2715BA0](v8, -1, -1);
  }

  v17 = *(v2 + 376);
  v18 = *(v2 + 320);
  GroupSessionProvider.uuid.getter(*(v2 + 344), *(v2 + 232), v18);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(0, v18);
  swift_endAccess();
  BackgroundGroupSessionManager.providerObservers.didset();
  swift_willThrow();

  v19 = *(v2 + 8);

  return v19();
}

uint64_t BackgroundGroupSessionManager.start(provider:)()
{
  v66 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 328) = __swift_project_value_buffer(v1, static Log.default);
  swift_unknownObjectRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 320);
    v5 = *(v0 + 288);
    v61 = *(v0 + 280);
    v7 = *(v0 + 224);
    v6 = *(v0 + 232);
    v8 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v65[0] = v62;
    *v8 = 136315394;
    *(v0 + 184) = v7;
    *(v0 + 192) = v6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A15SessionProvider_pMd, &_s15GroupActivities0A15SessionProvider_pMR);
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v65);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    ObjectType = swift_getObjectType();
    GroupSessionProvider.uuid.getter(ObjectType, v6, v4);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v5 + 8))(v4, v61);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v65);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Start request for provider: %s id: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v62, -1, -1);
    MEMORY[0x1B2715BA0](v8, -1, -1);
  }

  v17 = *(v0 + 312);
  v19 = *(v0 + 232);
  v18 = *(v0 + 240);
  v20 = *(v0 + 224);
  type metadata accessor for GroupSessionProviderObserver();
  v21 = swift_allocObject();
  *(v0 + 336) = v21;
  v21[3] = 0;
  swift_unknownObjectWeakInit();
  v22 = MEMORY[0x1E69E7CD0];
  v21[6] = 0;
  v21[7] = v22;
  v21[4] = v20;
  v21[5] = v19;
  swift_beginAccess();
  v21[3] = &protocol witness table for BackgroundGroupSessionManager;
  swift_unknownObjectWeakAssign();
  v23 = swift_getObjectType();
  *(v0 + 344) = v23;
  swift_unknownObjectRetain();
  GroupSessionProvider.uuid.getter(v23, v19, v17);
  swift_beginAccess();
  if (*(*(v18 + 136) + 16))
  {
    v24 = *(v0 + 312);

    specialized __RawDictionaryStorage.find<A>(_:)(v24);
    if (v25)
    {
      v26 = *(v0 + 312);
      v27 = *(v0 + 280);
      v28 = *(*(v0 + 288) + 8);

      v60 = v28;
      v28(v26, v27);

      swift_unknownObjectRetain();

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.fault.getter();

      swift_unknownObjectRelease();
      if (!os_log_type_enabled(v29, v30))
      {
LABEL_18:

        lazy protocol witness table accessor for type BackgroundGroupSessionManagerError and conformance BackgroundGroupSessionManagerError();
        swift_allocError();
        *v58 = 7;
        swift_willThrow();

        v59 = *(v0 + 8);

        return v59();
      }

      v31 = *(v0 + 296);
      v32 = *(v0 + 232);
      v33 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v65[0] = v64;
      *v33 = 136315394;
      GroupSessionProvider.uuid.getter(v23, v32, v31);
      v34 = *(v18 + 136);
      if (*(v34 + 16))
      {
        v35 = *(v0 + 296);

        v36 = specialized __RawDictionaryStorage.find<A>(_:)(v35);
        if (v37)
        {
          v38 = *(v0 + 296);
          v39 = *(v0 + 280);
          v40 = *(*(v34 + 56) + 8 * v36);

          v60(v38, v39);

          *(v0 + 216) = v40;
          v41 = String.init<A>(reflecting:)();
          v43 = v42;
LABEL_17:
          v63 = *(v0 + 224);
          v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, v65);

          *(v33 + 4) = v54;
          *(v33 + 12) = 2080;
          *(v0 + 168) = v63;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A15SessionProvider_pMd, &_s15GroupActivities0A15SessionProvider_pMR);
          v55 = String.init<A>(reflecting:)();
          v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, v65);

          *(v33 + 14) = v57;
          _os_log_impl(&dword_1AEE80000, v29, v30, "Tried to start provider with same identifier as already tracked item. Existing: %s new: %s", v33, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B2715BA0](v64, -1, -1);
          MEMORY[0x1B2715BA0](v33, -1, -1);
          goto LABEL_18;
        }
      }

      v60(*(v0 + 296), *(v0 + 280));
      v43 = 0xE300000000000000;
      v41 = 7104878;
      goto LABEL_17;
    }
  }

  v44 = *(v0 + 312);
  v45 = *(v0 + 320);
  v46 = *(v0 + 280);
  v47 = *(v0 + 288);
  v48 = *(v0 + 232);
  v49 = *(v47 + 8);
  *(v0 + 352) = v49;
  *(v0 + 360) = (v47 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v49(v44, v46);
  GroupSessionProvider.uuid.getter(v23, v48, v45);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65[0] = *(v18 + 136);
  *(v18 + 136) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v21, v45, isUniquelyReferenced_nonNull_native);
  v49(v45, v46);
  *(v18 + 136) = v65[0];
  swift_endAccess();
  BackgroundGroupSessionManager.providerObservers.didset();
  v51 = swift_task_alloc();
  *(v0 + 368) = v51;
  *v51 = v0;
  v51[1] = BackgroundGroupSessionManager.start(provider:);
  v52 = *(v0 + 232);

  return GroupSessionProvider.backgroundSessionCreationRequest.getter(v23, v52);
}

{
  v63 = v0;
  v1 = v0[30];
  GroupSessionProvider.uuid.getter(v0[43], v0[29], v0[38]);
  if (*(*(v1 + 136) + 16))
  {
    v2 = v0[38];

    specialized __RawDictionaryStorage.find<A>(_:)(v2);
    if (v3)
    {
      v4 = v0[44];
      v5 = v0[38];
      v6 = v0[35];

      v4(v5, v6);

      if (one-time initialization token for groupSession != -1)
      {
        swift_once();
      }

      v7 = v0[47];
      v8 = v0[44];
      v9 = v0[40];
      v10 = v0[35];
      v11 = type metadata accessor for OSSignposter();
      __swift_project_value_buffer(v11, static Signposts.groupSession);
      v12 = BackgroundSessionCreationRequest.activitySessionRequest.getter();
      v13 = [v12 UUID];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      UUID.uint64Value.getter(v14);
      v8(v9, v10);
      OSSignpostID.init(_:)();
      v15 = v7;
      v16 = OSSignposter.logHandle.getter();
      v17 = static os_signpost_type_t.begin.getter();

      if (OS_os_log.signpostsEnabled.getter())
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v62[0] = v19;
        *v18 = 136315138;
        v20 = BackgroundSessionCreationRequest.activitySessionRequest.getter();
        v21 = [v20 activityIdentifier];

        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v62);

        *(v18 + 4) = v25;
        v26 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&dword_1AEE80000, v16, v17, v26, "GroupSessionRequested", "%s enableTelemetry=YES", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x1B2715BA0](v19, -1, -1);
        MEMORY[0x1B2715BA0](v18, -1, -1);
      }

      v60 = v0[44];
      v27 = v0[40];
      v28 = v0[34];
      v56 = v0[43];
      v58 = v0[35];
      v29 = v0[32];
      v30 = v0[30];
      v31 = v0[31];
      v32 = v0[29];
      (*(v29 + 16))(v0[33], v28, v31);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      v33 = OSSignpostIntervalState.init(id:isOpen:)();
      v0[49] = v33;
      (*(v29 + 8))(v28, v31);
      GroupSessionProvider.uuid.getter(v56, v32, v27);
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62[0] = *(v30 + 144);
      *(v30 + 144) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v27, isUniquelyReferenced_nonNull_native);
      v60(v27, v58);
      *(v30 + 144) = v62[0];
      swift_endAccess();
      BackgroundGroupSessionManager.requestedGroupSessionSignpostStates.didset();
      ObjectType = swift_getObjectType();
      v36 = swift_task_alloc();
      v0[50] = v36;
      *v36 = v0;
      v36[1] = BackgroundGroupSessionManager.start(provider:);
      v37 = v0[47];

      return MEMORY[0x1EEDF8BD8](v37, ObjectType);
    }
  }

  (v0[44])(v0[38], v0[35]);
  swift_unknownObjectRetain();
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v38, v39))
  {
    v61 = v0[44];
    v40 = v0[40];
    v57 = v0[43];
    v59 = v0[35];
    v42 = v0[28];
    v41 = v0[29];
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v62[0] = v44;
    *v43 = 136315394;
    v0[17] = v42;
    v0[18] = v41;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A15SessionProvider_pMd, &_s15GroupActivities0A15SessionProvider_pMR);
    v45 = String.init<A>(reflecting:)();
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, v62);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2080;
    GroupSessionProvider.uuid.getter(v57, v41, v40);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = v49;
    v61(v40, v59);
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, v62);

    *(v43 + 14) = v51;
    _os_log_impl(&dword_1AEE80000, v38, v39, "provider: %s id: %s was cancelled while fetching the creationRequest object.", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v44, -1, -1);
    MEMORY[0x1B2715BA0](v43, -1, -1);
  }

  v52 = v0[47];
  lazy protocol witness table accessor for type BackgroundGroupSessionManagerError and conformance BackgroundGroupSessionManagerError();
  swift_allocError();
  *v53 = 9;
  swift_willThrow();

  v54 = v0[1];

  return v54();
}

{
  v2 = *v1;
  *(*v1 + 408) = v0;

  v3 = *(v2 + 240);
  if (v0)
  {
    v4 = BackgroundGroupSessionManager.start(provider:);
  }

  else
  {
    v4 = BackgroundGroupSessionManager.start(provider:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v15 = v0;
  v1 = *(v0 + 376);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 376);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    *(v0 + 208) = v4;
    type metadata accessor for BackgroundSessionCreationRequest();
    v7 = v4;
    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v14);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Successfully started provider for request: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B2715BA0](v6, -1, -1);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }

  v11 = *(v0 + 376);
  GroupSessionProviderObserver.start()();

  v12 = *(v0 + 8);

  return v12();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t BackgroundGroupSessionManager.start(provider:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 376) = a1;
  *(v4 + 384) = v1;

  v5 = *(v3 + 240);
  if (v1)
  {
    v6 = BackgroundGroupSessionManager.start(provider:);
  }

  else
  {
    v6 = BackgroundGroupSessionManager.start(provider:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t BackgroundGroupSessionManager.leave(identifier:)(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for UUID();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](BackgroundGroupSessionManager.leave(identifier:), v1, 0);
}

uint64_t BackgroundGroupSessionManager.leave(identifier:)()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.default);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[10];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 136315138;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v27);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1AEE80000, v6, v7, "Leave request for providerID: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B2715BA0](v13, -1, -1);
    MEMORY[0x1B2715BA0](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = v0[8];
  v18 = v0[9];
  swift_beginAccess();
  v20 = specialized Dictionary.removeValue(forKey:)(v19);
  v0[13] = v20;
  swift_endAccess();
  BackgroundGroupSessionManager.presenceProviderObservers.didset();
  swift_beginAccess();
  v21 = specialized Dictionary.removeValue(forKey:)(v19);
  v0[14] = v21;
  swift_endAccess();
  BackgroundGroupSessionManager.providerObservers.didset();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type BackgroundGroupSessionManager and conformance BackgroundGroupSessionManager, v22, type metadata accessor for BackgroundGroupSessionManager, &protocol conformance descriptor for BackgroundGroupSessionManager);
  v23 = swift_task_alloc();
  v0[15] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = v18;
  v23[5] = v19;
  v24 = swift_task_alloc();
  v0[16] = v24;
  *v24 = v0;
  v24[1] = BackgroundGroupSessionManager.leave(identifier:);

  return MEMORY[0x1EEE6DD58]();
}

{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = BackgroundGroupSessionManager.leave(identifier:);
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = BackgroundGroupSessionManager.leave(identifier:);
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in BackgroundGroupSessionManager.leave(identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  v8 = type metadata accessor for UUID();
  v6[7] = v8;
  v9 = *(v8 - 8);
  v6[8] = v9;
  v6[9] = *(v9 + 64);
  v6[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundGroupSessionManager.leave(identifier:), a5, 0);
}

uint64_t closure #1 in BackgroundGroupSessionManager.leave(identifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  if (v3)
  {
    v4 = v2[11];
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v3;

    _sScg7addTask8priority9operationyScPSg_xyYaKYAcntFyt_s5Error_pTg5(v4, &async function pointer to partial apply for closure #1 in closure #1 in BackgroundGroupSessionManager.leave(identifier:), v6);
    outlined destroy of NSObject?(v4, &_sScPSgMd, &_sScPSgMR);
  }

  v7 = v2[4];
  if (v7)
  {
    v9 = v2[10];
    v8 = v2[11];
    v10 = v2[8];
    v12 = v2[6];
    v11 = v2[7];
    v13 = v2[5];
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    (*(v10 + 16))(v9, v12, v11);
    v15 = (*(v10 + 80) + 48) & ~*(v10 + 80);
    v16 = swift_allocObject();
    *(v16 + 2) = 0;
    *(v16 + 3) = 0;
    *(v16 + 4) = v7;
    *(v16 + 5) = v13;
    (*(v10 + 32))(&v16[v15], v9, v11);

    _sScg7addTask8priority9operationyScPSg_xyYaKYAcntFyt_s5Error_pTg5(v8, &async function pointer to partial apply for closure #2 in closure #1 in BackgroundGroupSessionManager.leave(identifier:), v16);
    outlined destroy of NSObject?(v8, &_sScPSgMd, &_sScPSgMR);
  }

  v17 = v2[5];
  v2[12] = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type BackgroundGroupSessionManager and conformance BackgroundGroupSessionManager, a2, type metadata accessor for BackgroundGroupSessionManager, &protocol conformance descriptor for BackgroundGroupSessionManager);
  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v2[13] = v18;
  v2[14] = v20;

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundGroupSessionManager.leave(identifier:), v18, v20);
}

uint64_t closure #1 in BackgroundGroupSessionManager.leave(identifier:)()
{
  v1 = v0[2];
  v2 = *v1;
  v0[15] = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v0[16] = v3;
  if (MEMORY[0x1B2714550](v2, MEMORY[0x1E69E7CA8] + 8, v3, MEMORY[0x1E69E7288]))
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    v0[17] = 0;
    v6 = v0[12];
    v7 = v0[5];
    v8 = swift_task_alloc();
    v0[18] = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgyyts5Error_pGMd, &_sScgyyts5Error_pGMR);
    *v8 = v0;
    v8[1] = closure #1 in BackgroundGroupSessionManager.leave(identifier:);

    return MEMORY[0x1EEE6DAC8](v0 + 20, v7, v6, v9);
  }
}

{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = closure #1 in BackgroundGroupSessionManager.leave(identifier:);
  }

  else
  {
    *(v2 + 161) = *(v2 + 160);
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = closure #1 in BackgroundGroupSessionManager.leave(identifier:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

{
  if (*(v0 + 161))
  {
    v1 = *(v0 + 136);
    if (MEMORY[0x1B2714550](*(v0 + 120), MEMORY[0x1E69E7CA8] + 8, *(v0 + 128), MEMORY[0x1E69E7288]))
    {
      if (v1)
      {
        swift_willThrow();
      }

      v2 = *(v0 + 8);

      return v2();
    }

    *(v0 + 136) = v1;
  }

  v4 = *(v0 + 96);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgyyts5Error_pGMd, &_sScgyyts5Error_pGMR);
  *v6 = v0;
  v6[1] = closure #1 in BackgroundGroupSessionManager.leave(identifier:);

  return MEMORY[0x1EEE6DAC8](v0 + 160, v5, v4, v7);
}

{
  v1 = v0[19];
  if (v0[17])
  {

    v1 = v0[17];
  }

  if (MEMORY[0x1B2714550](v0[15], MEMORY[0x1E69E7CA8] + 8, v0[16], MEMORY[0x1E69E7288]))
  {
    if (v1)
    {
      swift_willThrow();
    }

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[17] = v1;
    v4 = v0[12];
    v5 = v0[5];
    v6 = swift_task_alloc();
    v0[18] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgyyts5Error_pGMd, &_sScgyyts5Error_pGMR);
    *v6 = v0;
    v6[1] = closure #1 in BackgroundGroupSessionManager.leave(identifier:);

    return MEMORY[0x1EEE6DAC8](v0 + 20, v5, v4, v7);
  }
}

uint64_t closure #1 in closure #1 in BackgroundGroupSessionManager.leave(identifier:)()
{
  v14 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[4] = __swift_project_value_buffer(v1, static Log.default);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v0[2] = v4;
    type metadata accessor for PresenceGroupSessionProviderObserver();

    v7 = String.init<A>(reflecting:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Leaving presence providerObserver %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B2715BA0](v6, -1, -1);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }

  v12 = (*(*v0[3] + 176) + **(*v0[3] + 176));
  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = closure #1 in closure #1 in BackgroundGroupSessionManager.leave(identifier:);

  return v12();
}

{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in BackgroundGroupSessionManager.leave(identifier:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t closure #1 in closure #1 in BackgroundGroupSessionManager.leave(identifier:)(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Failed to leave the PresenceSession.", v4, 2u);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t _sScg7addTask8priority9operationyScPSg_xyYaKYAcntFyt_s5Error_pTg5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v18 - v8;
  outlined init with copy of URL?(a1, v18 - v8, &_sScPSgMd, &_sScPSgMR);
  v10 = type metadata accessor for TaskPriority();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of NSObject?(v9, &_sScPSgMd, &_sScPSgMR);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = dispatch thunk of Actor.unownedExecutor.getter();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t closure #2 in closure #1 in BackgroundGroupSessionManager.leave(identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = type metadata accessor for UUID();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in BackgroundGroupSessionManager.leave(identifier:), 0, 0);
}

uint64_t closure #2 in closure #1 in BackgroundGroupSessionManager.leave(identifier:)()
{
  v15 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[10] = __swift_project_value_buffer(v1, static Log.default);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v0[3] = v4;
    type metadata accessor for GroupSessionProviderObserver();

    v7 = String.init<A>(reflecting:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Leaving providerObserver: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B2715BA0](v6, -1, -1);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }

  ObjectType = swift_getObjectType();
  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = closure #2 in closure #1 in BackgroundGroupSessionManager.leave(identifier:);
  v12 = v0[6];

  return MEMORY[0x1EEDF8BE0](v12, ObjectType);
}

{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in BackgroundGroupSessionManager.leave(identifier:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v25 = v0;
  v1 = v0[12];
  (*(v0[8] + 16))(v0[9], v0[6], v0[7]);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[12];
    v7 = v0[8];
    v6 = v0[9];
    v8 = v0[7];
    v9 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24[0] = v23;
    *v9 = 136315394;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    (*(v7 + 8))(v6, v8);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, v24);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v0[2] = v5;
    v14 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v24);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Failed to leave identifier: %s error: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v23, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);
  }

  else
  {
    v19 = v0[8];
    v18 = v0[9];
    v20 = v0[7];

    (*(v19 + 8))(v18, v20);
  }

  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t BackgroundGroupSessionManager.updateMembers(identifier:members:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for UUID();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](BackgroundGroupSessionManager.updateMembers(identifier:members:), v2, 0);
}

uint64_t BackgroundGroupSessionManager.updateMembers(identifier:members:)()
{
  v78 = v0;
  if (one-time initialization token for default != -1)
  {
LABEL_39:
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[7];
  v5 = type metadata accessor for Logger();
  v0[15] = __swift_project_value_buffer(v5, static Log.default);
  v6 = *(v3 + 16);
  v0[16] = v6;
  v0[17] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v75 = v6;
  v6(v1, v4, v2);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[14];
  v12 = v0[10];
  v11 = v0[11];
  if (v9)
  {
    v73 = v0[8];
    v13 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v77[0] = v74;
    *v13 = 136315394;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    log = v7;
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v77);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    v0[6] = v73;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15GroupActivities17AddressableMemberVGMd, &_sShy15GroupActivities17AddressableMemberVGMR);
    v19 = String.init<A>(reflecting:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v77);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_1AEE80000, log, v8, "Update member request for identifier: %s with members: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v74, -1, -1);
    MEMORY[0x1B2715BA0](v13, -1, -1);
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v0[18] = v17;
  v22 = v0[9];
  swift_beginAccess();
  if (*(*(v22 + 136) + 16) && (v23 = v0[7], , specialized __RawDictionaryStorage.find<A>(_:)(v23), LOBYTE(v23) = v24, , (v23 & 1) != 0))
  {
    v25 = v0[8];
    v26 = MEMORY[0x1E69E7CC0];
    v27 = *(v25 + 56);
    v77[0] = MEMORY[0x1E69E7CC0];
    v28 = -1;
    v29 = -1 << *(v25 + 32);
    if (-v29 < 64)
    {
      v28 = ~(-1 << -v29);
    }

    v30 = v28 & v27;
    v31 = (63 - v29) >> 6;

    v32 = 0;
    if (!v30)
    {
      goto LABEL_12;
    }

    do
    {
LABEL_10:
      while (1)
      {
        v33 = __clz(__rbit64(v30));
        v30 &= v30 - 1;
        v34 = (*(v25 + 48) + ((v32 << 10) | (16 * v33)));
        v35 = *v34;
        v36 = v34[1];
        v37 = objc_opt_self();

        v38 = MEMORY[0x1B2714130](v35, v36);
        v39 = [v37 normalizedHandleWithDestinationID_];

        if (v39)
        {
          break;
        }

        if (!v30)
        {
          goto LABEL_12;
        }
      }

      MEMORY[0x1B27142A0](v40);
      if (*((v77[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v26 = v77[0];
    }

    while (v30);
    while (1)
    {
LABEL_12:
      v41 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v41 >= v31)
      {
        break;
      }

      v30 = *(v25 + 56 + 8 * v41);
      ++v32;
      if (v30)
      {
        v32 = v41;
        goto LABEL_10;
      }
    }

    v55 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8TUHandleC_SayAEGTt0g5Tf4g_n(v26);
    v0[19] = v55;

    if ((v55 & 0xC000000000000001) != 0)
    {
      v56 = __CocoaSet.count.getter();
    }

    else
    {
      v56 = v55[2];
    }

    if (v56 == *(v0[8] + 16))
    {
      ObjectType = swift_getObjectType();
      v58 = swift_task_alloc();
      v0[20] = v58;
      *v58 = v0;
      v58[1] = BackgroundGroupSessionManager.updateMembers(identifier:members:);
      v59 = v0[7];

      return MEMORY[0x1EEDF8BD0](v59, v55, ObjectType);
    }

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v77[0] = v63;
      *v62 = 136315394;
      lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember();
      v64 = Set.description.getter();
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, v77);

      *(v62 + 4) = v66;
      *(v62 + 12) = 2080;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
      lazy protocol witness table accessor for type CPParticipant and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
      v67 = Set.description.getter();
      v69 = v68;

      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, v77);

      *(v62 + 14) = v70;
      _os_log_impl(&dword_1AEE80000, v60, v61, "Failed to convert members types: %s vs convertedMembers: %s", v62, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v63, -1, -1);
      MEMORY[0x1B2715BA0](v62, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type BackgroundGroupSessionManagerError and conformance BackgroundGroupSessionManagerError();
    swift_allocError();
    *v71 = 8;
    swift_willThrow();

    v53 = v0[1];
  }

  else
  {
    v75(v0[13], v0[7], v0[10]);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.fault.getter();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v0[13];
    v46 = v0[10];
    if (v44)
    {
      v76 = v17;
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v77[0] = v48;
      *v47 = 136315138;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      v76(v45, v46);
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, v77);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_1AEE80000, v42, v43, "updateMembers called for unknown providerID: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x1B2715BA0](v48, -1, -1);
      MEMORY[0x1B2715BA0](v47, -1, -1);
    }

    else
    {

      v17(v45, v46);
    }

    v53 = v0[1];
  }

  return v53();
}

{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);

    v4 = BackgroundGroupSessionManager.updateMembers(identifier:members:);
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 72);
    v4 = BackgroundGroupSessionManager.updateMembers(identifier:members:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v28 = v0;
  v1 = *(v0 + 168);
  (*(v0 + 128))(*(v0 + 96), *(v0 + 56), *(v0 + 80));

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 144);
    v6 = *(v0 + 96);
    v7 = *(v0 + 80);
    v25 = *(v0 + 168);
    v8 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27[0] = v26;
    *v8 = 136315650;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    v5(v6, v7);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v27);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember();
    v13 = Set.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v27);

    *(v8 + 14) = v15;
    *(v8 + 22) = 2080;
    *(v0 + 40) = v25;
    v16 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v17 = String.init<A>(reflecting:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v27);

    *(v8 + 24) = v19;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Failed to update members on identifier: %s with members: %s error: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v26, -1, -1);
    MEMORY[0x1B2715BA0](v8, -1, -1);
  }

  else
  {
    v20 = *(v0 + 144);
    v21 = *(v0 + 96);
    v22 = *(v0 + 80);

    v20(v21, v22);
  }

  swift_willThrow();

  v23 = *(v0 + 8);

  return v23();
}

uint64_t BackgroundGroupSessionManager.begin(activity:request:onConversationWithUUID:)(uint64_t a1)
{
  lazy protocol witness table accessor for type BackgroundGroupSessionManagerError and conformance BackgroundGroupSessionManagerError();
  swift_allocError();
  *v2 = 5;
  swift_willThrow();
  v3 = *(v1 + 8);

  return v3(0);
}

uint64_t BackgroundGroupSessionManager.end(activity:)(uint64_t a1)
{
  lazy protocol witness table accessor for type BackgroundGroupSessionManagerError and conformance BackgroundGroupSessionManagerError();
  swift_allocError();
  *v2 = 5;
  swift_willThrow();
  v3 = *(v1 + 8);

  return v3();
}

void BackgroundGroupSessionManager.updateShare(_:activityID:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.default);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1AEE80000, v5, v6, "Updating CKShare", v7, 2u);
    MEMORY[0x1B2715BA0](v7, -1, -1);
  }

  lazy protocol witness table accessor for type BackgroundGroupSessionManagerError and conformance BackgroundGroupSessionManagerError();
  v8 = swift_allocError();
  *v9 = 5;
  a3();
}

Swift::Void __swiftcall BackgroundGroupSessionManager.updateProviders(for:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMR);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v31 - v4;
  if (one-time initialization token for default != -1)
  {
LABEL_16:
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.default);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34[0] = v32;
    *v9 = 136315394;
    swift_beginAccess();
    type metadata accessor for UUID();
    type metadata accessor for GroupSessionProviderObserver();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    HIDWORD(v31) = v8;

    v10 = Dictionary.description.getter();
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, v34);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
    v14 = Dictionary.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v34);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_1AEE80000, v7, BYTE4(v31), "Updating providers %s for containers: %s", v9, 0x16u);
    v17 = v32;
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v17, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);
  }

  swift_beginAccess();

  v19 = specialized _NativeDictionary.filter(_:)(v18, a1._rawValue);

  v20 = 1 << *(v19 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v19 + 64);
  v23 = (v20 + 63) >> 6;

  v24 = 0;
  a1._rawValue = &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMR;
  if (v22)
  {
    while (1)
    {
      v25 = v24;
LABEL_12:
      v26 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v27 = v26 | (v25 << 6);
      v28 = *(v19 + 48);
      v29 = type metadata accessor for UUID();
      (*(*(v29 - 8) + 16))(v5, v28 + *(*(v29 - 8) + 72) * v27, v29);
      v30 = *(*(v19 + 56) + 8 * v27);
      *&v5[*(v33 + 48)] = v30;

      closure #2 in BackgroundGroupSessionManager.updateProviders(for:)(v5, v30, v2);
      outlined destroy of NSObject?(v5, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMR);
      if (!v22)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v25 >= v23)
    {
      break;
    }

    v22 = *(v19 + 64 + 8 * v25);
    ++v24;
    if (v22)
    {
      v24 = v25;
      goto LABEL_12;
    }
  }
}

uint64_t closure #2 in BackgroundGroupSessionManager.updateProviders(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.default);
  (*(v6 + 16))(v8, a1, v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v26 = a2;
    v13 = v12;
    v25 = swift_slowAlloc();
    v27[0] = v25;
    *v13 = 136315138;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = a1;
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v17, v27);
    a1 = v15;

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1AEE80000, v10, v11, "Removing providerObserver %s due to it not being present in containers", v13, 0xCu);
    v19 = v25;
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x1B2715BA0](v19, -1, -1);
    v20 = v13;
    a2 = v26;
    MEMORY[0x1B2715BA0](v20, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  swift_beginAccess();
  specialized Dictionary.removeValue(forKey:)(a1);
  swift_endAccess();

  BackgroundGroupSessionManager.providerObservers.didset();
  v21 = *(a2 + 40);
  ObjectType = swift_getObjectType();
  (*(v21 + 64))(ObjectType, v21);
  v27[0] = 0;
  CurrentValueSubject.send(_:)();
}

void *BackgroundGroupSessionManager.deinit()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 160));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t BackgroundGroupSessionManager.__deallocating_deinit()
{
  BackgroundGroupSessionManager.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t protocol witness for ActivitySessionContainerProvider.onActivitySessionsChanged.getter in conformance BackgroundGroupSessionManager()
{
  v1 = *(*v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGMd, &_s7Combine12PublisherBoxCyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;

  return v2;
}

uint64_t protocol witness for ActivitySessionContainerProvider.topicCategory(groupUUID:name:) in conformance BackgroundGroupSessionManager()
{
  v0 = type metadata accessor for PubSubClient.TopicCategory();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVy14CopresenceCore12PubSubClientC13TopicCategoryOGMd, &_s7Combine4JustVy14CopresenceCore12PubSubClientC13TopicCategoryOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v1 + 104))(v3, *MEMORY[0x1E69974F0], v0);
  Just.init(_:)();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Just<PubSubClient.TopicCategory> and conformance Just<A>, &_s7Combine4JustVy14CopresenceCore12PubSubClientC13TopicCategoryOGMd, &_s7Combine4JustVy14CopresenceCore12PubSubClientC13TopicCategoryOGMR, MEMORY[0x1E695C008]);
  v8 = Publisher.eraseToAnyPublisher()();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t protocol witness for GroupSessionServiceProvider.start(provider:) in conformance BackgroundGroupSessionManager(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return BackgroundGroupSessionManager.start(provider:)(a1, a2);
}

uint64_t protocol witness for GroupSessionServiceProvider.start(presenceProvider:) in conformance BackgroundGroupSessionManager(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return BackgroundGroupSessionManager.start(presenceProvider:)(a1, a2);
}

uint64_t protocol witness for GroupSessionServiceProvider.leave(identifier:) in conformance BackgroundGroupSessionManager(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return BackgroundGroupSessionManager.leave(identifier:)(a1);
}

uint64_t protocol witness for GroupSessionServiceProvider.updateMembers(identifier:members:) in conformance BackgroundGroupSessionManager(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return BackgroundGroupSessionManager.updateMembers(identifier:members:)(a1, a2);
}

uint64_t protocol witness for GroupSessionServiceProvider.prewarm() in conformance BackgroundGroupSessionManager()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return BackgroundGroupSessionManager.prewarm()();
}

uint64_t protocol witness for GroupSessionServiceProvider.start(presenceSession:) in conformance BackgroundGroupSessionManager(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for CollaborationGroupActivity.share.getter in conformance CollaborationActivity;

  return BackgroundGroupSessionManager.start(presenceSession:)(a1);
}

uint64_t protocol witness for InternalGroupSessionProvider.groupSessionsPublisher.getter in conformance BackgroundGroupSessionManager()
{
  v1 = *(v0 + 208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA19CurrentValueSubjectCySay15GroupActivities0G7SessionCyAF03AnyG8ActivityVGGs5NeverOGGMd, &_s7Combine12PublisherBoxCyAA19CurrentValueSubjectCySay15GroupActivities0G7SessionCyAF03AnyG8ActivityVGGs5NeverOGGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;

  return v2;
}

uint64_t BackgroundGroupSessionManager.didDisconnect(client:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return specialized BackgroundGroupSessionManager.didDisconnect(client:)();
}

void invalidateProvider #1 (id:) in BackgroundGroupSessionManager.didDisconnect(client:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v32 - v9;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.default);
  v35 = *(v5 + 16);
  v35(v10, a1, v4);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v34 = a2;
    v15 = v14;
    v32 = swift_slowAlloc();
    v33 = a1;
    v37[0] = v32;
    *v15 = 136315138;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v8;
    v19 = v18;
    (*(v5 + 8))(v10, v4);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v19, v37);
    v8 = v17;

    *(v15 + 4) = v20;
    _os_log_impl(&dword_1AEE80000, v12, v13, "Invalidating provider for ID: %s", v15, 0xCu);
    v21 = v32;
    __swift_destroy_boxed_opaque_existential_0(v32);
    a1 = v33;
    MEMORY[0x1B2715BA0](v21, -1, -1);
    v22 = v15;
    a2 = v34;
    MEMORY[0x1B2715BA0](v22, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v10, v4);
  }

  swift_beginAccess();
  v23 = *(a2 + 136);
  if (*(v23 + 16))
  {

    v24 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v25)
    {
      v26 = v8;
      v27 = *(*(v23 + 56) + 8 * v24);

      v28 = *(v27 + 40);
      ObjectType = swift_getObjectType();
      (*(v28 + 64))(ObjectType, v28);
      lazy protocol witness table accessor for type BackgroundGroupSessionManagerError and conformance BackgroundGroupSessionManagerError();
      v30 = swift_allocError();
      *v31 = 6;
      v36 = v30;
      CurrentValueSubject.send(_:)();
      v8 = v26;

      outlined consume of GroupSession<A>.State<A>(v36);
    }

    else
    {
    }
  }

  v35(v8, a1, v4);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(0, v8);
  swift_endAccess();
  BackgroundGroupSessionManager.providerObservers.didset();
}

Swift::Void __swiftcall BackgroundGroupSessionManager.handleContainers(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v57 = type metadata accessor for OSSignpostError();
  v67 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for OSSignpostID();
  v65 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for UUID();
  v59 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x1E69E7CC0];
  if (a1._rawValue >> 62)
  {
LABEL_38:
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v60 = v6;
  v70 = v8;
  if (v9)
  {
    v10 = 0;
    v8 = (a1._rawValue & 0xC000000000000001);
    v71 = v9;
    do
    {
      if (v8)
      {
        v11 = MEMORY[0x1B2714B30](v10, a1._rawValue);
      }

      else
      {
        if (v10 >= *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v11 = *(a1._rawValue + v10 + 4);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if ([v11 state] == 3 && objc_msgSend(v12, sel_localParticipantIdentifier))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v6 = v2;
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v9 = v71;
      }

      else
      {
      }

      ++v10;
    }

    while (v13 != v9);
    a1._rawValue = v73;
    v6 = v60;
    v8 = v70;
    v73 = MEMORY[0x1E69E7CC0];
    if ((a1._rawValue & 0x8000000000000000) != 0)
    {
LABEL_39:
      v14 = __CocoaSet.count.getter();
      if (!v14)
      {
        goto LABEL_40;
      }

LABEL_20:
      v15 = 0;
      while (2)
      {
        if ((a1._rawValue & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1B2714B30](v15, a1._rawValue);
        }

        else
        {
          if (v15 >= *(a1._rawValue + 2))
          {
            goto LABEL_37;
          }

          v16 = *(a1._rawValue + v15 + 4);
        }

        v8 = v16;
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_36;
        }

        v18 = specialized InternalGroupSessionProvider.groupSessions(for:)(v16);
        if (v18 >> 62)
        {
          v20 = __CocoaSet.count.getter();

          if (v20)
          {
            goto LABEL_21;
          }

LABEL_29:
        }

        else
        {
          v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (!v19)
          {
            goto LABEL_29;
          }

LABEL_21:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v15;
        if (v17 == v14)
        {
          v21 = v73;
          v8 = v70;
          goto LABEL_41;
        }

        continue;
      }
    }
  }

  else
  {
    a1._rawValue = MEMORY[0x1E69E7CC0];
    v73 = MEMORY[0x1E69E7CC0];
    if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }
  }

  if ((a1._rawValue & 0x4000000000000000) != 0)
  {
    goto LABEL_39;
  }

  v14 = *(a1._rawValue + 2);
  if (v14)
  {
    goto LABEL_20;
  }

LABEL_40:
  v21 = MEMORY[0x1E69E7CC0];
LABEL_41:

  if ((v21 & 0x8000000000000000) != 0 || (v21 & 0x4000000000000000) != 0)
  {
    goto LABEL_72;
  }

  for (i = *(v21 + 16); i; i = __CocoaSet.count.getter())
  {
    v24 = 0;
    v68 = v21 & 0xC000000000000001;
    v66 = (v59 + 8);
    v61 = (v65 + 8);
    v55 = (v67 + 88);
    v54 = *MEMORY[0x1E69E93E8];
    v53 = (v67 + 8);
    *&v22 = 136315138;
    v58 = v22;
    v63 = v21;
    v67 = i;
    v65 = v2;
    while (1)
    {
      if (v68)
      {
        v25 = MEMORY[0x1B2714B30](v24, v21);
      }

      else
      {
        if (v24 >= *(v21 + 16))
        {
          goto LABEL_71;
        }

        v25 = *(v21 + 8 * v24 + 32);
      }

      v26 = v25;
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      v28 = [v25 groupUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_beginAccess();
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
      if (v30)
      {
        v31 = v29;
        v64 = v26;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = *(v2 + 18);
        v72 = v33;
        *(v2 + 18) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          specialized _NativeDictionary.copy()();
          v33 = v72;
        }

        v34 = *(v59 + 8);
        v35 = v69;
        v34(*(v33 + 48) + *(v59 + 72) * v31, v69);
        v71 = *(*(v33 + 56) + 8 * v31);
        specialized _NativeDictionary._delete(at:)(v31, v33);
        v34(v70, v35);
        *(v2 + 18) = v33;
        v27 = v24 + 1;
        v26 = v64;
      }

      else
      {
        (*v66)(v8, v69);
        v71 = 0;
      }

      swift_endAccess();
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static Log.default);
      v2 = v65;

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v73 = v40;
        *v39 = v58;
        v72 = *(v2 + 18);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10Foundation4UUIDV2os23OSSignpostIntervalStateCGMd, &_sSDy10Foundation4UUIDV2os23OSSignpostIntervalStateCGMR);
        v41 = String.init<A>(reflecting:)();
        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v73);
        v6 = v60;

        *(v39 + 4) = v43;
        v21 = v63;
        _os_log_impl(&dword_1AEE80000, v37, v38, "requestedGroupSessionSignpostStates updated to %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x1B2715BA0](v40, -1, -1);
        MEMORY[0x1B2715BA0](v39, -1, -1);
      }

      if (v71)
      {
        if (one-time initialization token for groupSession != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for OSSignposter();
        __swift_project_value_buffer(v44, static Signposts.groupSession);
        v45 = OSSignposter.logHandle.getter();
        OSSignpostIntervalState.signpostID.getter();
        v46 = static os_signpost_type_t.end.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {

          v47 = v56;
          checkForErrorAndConsumeState(state:)();

          v48 = (*v55)(v47, v57);
          v49 = "[Error] Interval already ended";
          if (v48 != v54)
          {
            (*v53)(v56, v57);
            v49 = "";
          }

          v50 = swift_slowAlloc();
          *v50 = 0;
          v51 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&dword_1AEE80000, v45, v46, v51, "GroupSessionRequested", v49, v50, 2u);
          MEMORY[0x1B2715BA0](v50, -1, -1);

          (*v61)(v6, v62);
          v21 = v63;
        }

        else
        {

          (*v61)(v6, v62);
        }
      }

      else
      {
      }

      ++v24;
      v8 = v70;
      if (v27 == v67)
      {
        goto LABEL_75;
      }
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    ;
  }

LABEL_75:
}

uint64_t BackgroundGroupSessionManager.didDisconnect(client:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;

  swift_unknownObjectRetain();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in BackgroundGroupSessionManager.didDisconnect(client:), v9);
}

uint64_t closure #1 in BackgroundGroupSessionManager.didDisconnect(client:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return specialized BackgroundGroupSessionManager.didDisconnect(client:)();
}

uint64_t closure #4 in BackgroundGroupSessionManager.didUpdateContainers(client:containers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](closure #4 in BackgroundGroupSessionManager.didUpdateContainers(client:containers:), a4, 0);
}

uint64_t closure #4 in BackgroundGroupSessionManager.didUpdateContainers(client:containers:)()
{
  BackgroundGroupSessionManager.handleContainers(_:)(v0[3]);
  rawValue = v0[1]._rawValue;

  return rawValue();
}

uint64_t BackgroundGroupSessionManager.sessionDidRejectKeyRecoveryRequest(sessionID:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v35 = v10;
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - v11;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.default);
  v34 = *(v8 + 16);
  v34(v12, a1, v7);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32 = a1;
    v17 = v16;
    v31 = swift_slowAlloc();
    v37 = v31;
    *v17 = 136315138;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v6;
    v19 = v2;
    v21 = v20;
    (*(v8 + 8))(v12, v7);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v21, &v37);
    v2 = v19;
    v6 = v33;

    *(v17 + 4) = v22;
    _os_log_impl(&dword_1AEE80000, v14, v15, "BackgroundGroupSessionManager received indication that session %s rejected a keyRecoveryRequest", v17, 0xCu);
    v23 = v31;
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x1B2715BA0](v23, -1, -1);
    v24 = v17;
    a1 = v32;
    MEMORY[0x1B2715BA0](v24, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v12, v7);
  }

  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
  v26 = v36;
  v34(v36, a1, v7);
  v27 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  *(v28 + 4) = v2;
  (*(v8 + 32))(&v28[v27], v26, v7);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in BackgroundGroupSessionManager.sessionDidRejectKeyRecoveryRequest(sessionID:), v28);
}

uint64_t closure #1 in BackgroundGroupSessionManager.sessionDidRejectKeyRecoveryRequest(sessionID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v7 = type metadata accessor for UUID();
  v5[20] = v7;
  v5[21] = *(v7 - 8);
  v5[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundGroupSessionManager.sessionDidRejectKeyRecoveryRequest(sessionID:), a4, 0);
}

uint64_t closure #1 in BackgroundGroupSessionManager.sessionDidRejectKeyRecoveryRequest(sessionID:)()
{
  v1 = *(v0 + 144);
  swift_beginAccess();
  *(v0 + 184) = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundGroupSessionManager.sessionDidRejectKeyRecoveryRequest(sessionID:), 0, 0);
}

{
  v28 = v0;
  if (*(*(v0 + 184) + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 152)), (v2 & 1) != 0))
  {
    v3 = *(*(*(v0 + 184) + 56) + 8 * v1);
    *(v0 + 192) = v3;

    *(v0 + 120) = *(v3 + 32);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A15SessionProvider_pMd, &_s15GroupActivities0A15SessionProvider_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities013ErrorRecoveryA15SessionProvider_pMd, &_s15GroupActivities013ErrorRecoveryA15SessionProvider_pMR);
    if (swift_dynamicCast())
    {
      outlined init with take of Transferable((v0 + 56), v0 + 16);
      v4 = *(v0 + 40);
      v5 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
      v26 = (*(v5 + 8) + **(v5 + 8));
      v6 = swift_task_alloc();
      *(v0 + 200) = v6;
      *v6 = v0;
      v6[1] = closure #1 in BackgroundGroupSessionManager.sessionDidRejectKeyRecoveryRequest(sessionID:);

      return v26(v4, v5);
    }

    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    outlined destroy of NSObject?(v0 + 56, &_s15GroupActivities013ErrorRecoveryA15SessionProvider_pSgMd, &_s15GroupActivities013ErrorRecoveryA15SessionProvider_pSgMR);
  }

  else
  {

    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 168);
    v8 = *(v0 + 176);
    v11 = *(v0 + 152);
    v10 = *(v0 + 160);
    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.default);
    (*(v9 + 16))(v8, v11, v10);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 168);
    v16 = *(v0 + 176);
    v18 = *(v0 + 160);
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v19 = 136315138;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v17 + 8))(v16, v18);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v27);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_1AEE80000, v13, v14, "Couldn't find observer for %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x1B2715BA0](v20, -1, -1);
      MEMORY[0x1B2715BA0](v19, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
    }
  }

  v25 = *(v0 + 8);

  return v25();
}

{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = closure #1 in BackgroundGroupSessionManager.sessionDidRejectKeyRecoveryRequest(sessionID:);
  }

  else
  {
    v2 = closure #1 in BackgroundGroupSessionManager.sessionDidRejectKeyRecoveryRequest(sessionID:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.default);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Fetched updated membership list", v4, 2u);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v5 = *(v0 + 8);

  return v5();
}

{
  v17 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[26];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v0[17] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1AEE80000, v4, v5, "Failed to fetch membership update: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B2715BA0](v9, -1, -1);
    MEMORY[0x1B2715BA0](v8, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v14 = v0[1];

  return v14();
}

uint64_t BackgroundGroupSessionManager.sessionDidReceiveUpdatedUnknownParticipantList(sessionID:unknownParticipants:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = &v35 - v7;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v39 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.default);
  v15 = *(v9 + 16);
  v40 = a1;
  v38 = v15;
  v15(v13, a1, v8);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v37 = a2;
    v19 = v18;
    v35 = swift_slowAlloc();
    v42 = v35;
    *v19 = 136315394;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v3;
    v22 = v21;
    (*(v9 + 8))(v13, v8);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v42);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    lazy protocol witness table accessor for type CPParticipant and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    v3 = v36;
    v24 = Set.description.getter();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v42);

    *(v19 + 14) = v26;
    _os_log_impl(&dword_1AEE80000, v16, v17, "BackgroundGroupSessionManager received indication that session %s received an updated unknown participant list %s", v19, 0x16u);
    v27 = v35;
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v27, -1, -1);
    v28 = v19;
    a2 = v37;
    MEMORY[0x1B2715BA0](v28, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v13, v8);
  }

  v29 = type metadata accessor for TaskPriority();
  v30 = v41;
  (*(*(v29 - 8) + 56))(v41, 1, 1, v29);
  v31 = v39;
  v38(v39, v40, v8);
  v32 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v33 = swift_allocObject();
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  *(v33 + 4) = v3;
  (*(v9 + 32))(&v33[v32], v31, v8);
  *&v33[(v10 + v32 + 7) & 0xFFFFFFFFFFFFFFF8] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v30, &async function pointer to partial apply for closure #1 in BackgroundGroupSessionManager.sessionDidReceiveUpdatedUnknownParticipantList(sessionID:unknownParticipants:), v33);
}

uint64_t closure #1 in BackgroundGroupSessionManager.sessionDidReceiveUpdatedUnknownParticipantList(sessionID:unknownParticipants:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v8 = type metadata accessor for UUID();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundGroupSessionManager.sessionDidReceiveUpdatedUnknownParticipantList(sessionID:unknownParticipants:), a4, 0);
}

uint64_t closure #1 in BackgroundGroupSessionManager.sessionDidReceiveUpdatedUnknownParticipantList(sessionID:unknownParticipants:)()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  *(v0 + 88) = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundGroupSessionManager.sessionDidReceiveUpdatedUnknownParticipantList(sessionID:unknownParticipants:), 0, 0);
}

{
  v29 = v0;
  if (*(v0[11] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[6]), (v2 & 1) != 0))
  {
    v3 = v0[7];
    v4 = *(*(v0[11] + 56) + 8 * v1);
    v0[12] = v4;

    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8TUHandleCG_15GroupActivities17AddressableMemberVs5NeverOTg504_s15e141Activities010BackgroundA14SessionManagerC46sessionDidReceiveUpdatedUnknownParticipantList0F2ID19unknownParticipantsy10Foundation4UUIDV_ShySo8d16CGtFyyYacfU_AA17gH8VAKXEfU_Tf1cn_n(v3);
    v6 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15GroupActivities17AddressableMemberV_SayAFGTt0g5Tf4g_n(v5);
    v0[13] = v6;

    v27 = (*(*v4 + 200) + **(*v4 + 200));
    v7 = swift_task_alloc();
    v0[14] = v7;
    *v7 = v0;
    v7[1] = closure #1 in BackgroundGroupSessionManager.sessionDidReceiveUpdatedUnknownParticipantList(sessionID:unknownParticipants:);

    return v27(v6);
  }

  else
  {

    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v10 = v0[9];
    v9 = v0[10];
    v11 = v0[8];
    v12 = v0[6];
    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Log.default);
    (*(v10 + 16))(v9, v12, v11);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    v16 = os_log_type_enabled(v14, v15);
    v18 = v0[9];
    v17 = v0[10];
    v19 = v0[8];
    if (v16)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 136315138;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v18 + 8))(v17, v19);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v28);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_1AEE80000, v14, v15, "Couldn't find observer for %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x1B2715BA0](v21, -1, -1);
      MEMORY[0x1B2715BA0](v20, -1, -1);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
    }

    v26 = v0[1];

    return v26();
  }
}

{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = closure #1 in BackgroundGroupSessionManager.sessionDidReceiveUpdatedUnknownParticipantList(sessionID:unknownParticipants:);
  }

  else
  {

    v2 = closure #1 in BackgroundGroupSessionManager.sessionDidReceiveUpdatedUnknownParticipantList(sessionID:unknownParticipants:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v12 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.default);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    lazy protocol witness table accessor for type CPParticipant and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    v6 = Set.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Handled unknown participant list: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B2715BA0](v5, -1, -1);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  v9 = *(v0 + 8);

  return v9();
}

{
  v14 = v0;

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.default);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 120);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    lazy protocol witness table accessor for type CPParticipant and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    v8 = Set.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Failed to handle unknown participant list: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t protocol witness for BackGroundSessionManagerClientDelegate.didDisconnect(client:) in conformance BackgroundGroupSessionManager(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;

  swift_unknownObjectRetain();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in BackgroundGroupSessionManager.didDisconnect(client:)partial apply, v9);
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v7);
      result = MEMORY[0x1B2715020](*(a2 + 40), *v11);
      v12 = result & v8;
      if (v4 >= v9)
      {
        if (v12 < v9 || v4 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v9 && v4 < v12)
      {
        goto LABEL_5;
      }

      v15 = (v10 + 8 * v4);
      if (v4 != v7 || v15 >= v11 + 1)
      {
        *v15 = *v11;
      }

      v16 = *(a2 + 56);
      v17 = *(*(type metadata accessor for InternalParticipant(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v7);
      result = MEMORY[0x1B2715020](*(a2 + 40), *v11);
      v12 = result & v8;
      if (v4 >= v9)
      {
        if (v12 < v9 || v4 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v9 && v4 < v12)
      {
        goto LABEL_5;
      }

      v15 = (v10 + 8 * v4);
      if (v4 != v7 || v15 >= v11 + 1)
      {
        *v15 = *v11;
      }

      v16 = *(a2 + 56);
      v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySi_GMd, &_sScS12ContinuationVySi_GMR) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
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
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
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
          v27 = *(*(type metadata accessor for LinkManager.Attachment(0) - 8) + 72);
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

{
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    v38 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v39 = *(v15 + 56);
    v36 = (v15 - 8);
    v37 = v16;
    do
    {
      v17 = v9;
      v18 = v39 * v11;
      v19 = v14;
      v20 = v15;
      v37(v8, *(a2 + 48) + v39 * v11, v4);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v36)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v38)
      {
        if (v22 >= v38 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v39 * a1;
          v26 = v25 + v18 + v39;
          v27 = v39 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v39 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v11);
          if (a1 != v11 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v38 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
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

{
  v40 = type metadata accessor for UUID();
  v4 = *(v40 - 8);
  result = MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 16 * a1);
          v30 = (v28 + 16 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

{
  v35 = type metadata accessor for UUID();
  v4 = *(v35 - 8);
  result = MEMORY[0x1EEE9AC00](v35);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = _HashTable.previousHole(before:)();
    v13 = v11;
    v34 = (v12 + 1) & v11;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v32 = a2 + 64;
    v33 = v15;
    v16 = *(v14 + 56);
    v31 = (v14 - 8);
    v36 = v13;
    v17 = v35;
    do
    {
      v18 = v16;
      v19 = v16 * v10;
      v20 = *(a2 + 48) + v16 * v10;
      v21 = v14;
      v33(v7, v20, v17);
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v31)(v7, v17);
      v23 = v36;
      v24 = v22 & v36;
      if (a1 >= v34)
      {
        if (v24 >= v34 && a1 >= v24)
        {
LABEL_15:
          v14 = v21;
          v16 = v18;
          if (v18 * a1 < v19 || *(a2 + 48) + v18 * a1 >= (*(a2 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v27 = *(a2 + 56);
          result = v27 + 24 * a1;
          v8 = v32;
          if (a1 < v10 || result >= v27 + 24 * v10 + 24)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v23 = v36;
          }

          else
          {
            v23 = v36;
            if (a1 != v10)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v23 = v36;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v34 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v8 = v32;
      v16 = v18;
LABEL_4:
      v10 = (v10 + 1) & v23;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }

  return result;
}

{
  v40 = type metadata accessor for UUID();
  v4 = *(v40 - 8);
  result = MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    do
    {
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v7);
      result = MEMORY[0x1B2715020](*(a2 + 40), *v12);
      v13 = result & v8;
      if (v4 >= v9)
      {
        if (v13 >= v9 && v4 >= v13)
        {
LABEL_15:
          v16 = (v11 + 8 * v4);
          if (v4 != v7 || v16 >= v12 + 1)
          {
            *v16 = *v12;
          }

          v17 = *(a2 + 56);
          v18 = v17 + 24 * v4;
          v19 = (v17 + 24 * v7);
          if (v4 != v7 || v18 >= v19 + 24)
          {
            v10 = *v19;
            *(v18 + 16) = *(v19 + 2);
            *v18 = v10;
            v4 = v7;
          }
        }
      }

      else if (v13 >= v9 || v4 >= v13)
      {
        goto LABEL_15;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v8;
      if (v4 >= v9)
      {
        if (v11 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v4);
        v14 = (v12 + 16 * v7);
        if (v4 != v7 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 16 * v4);
        v17 = (v15 + 16 * v7);
        if (16 * v4 != 16 * v7 || (v4 = v7, v16 >= v17 + 1))
        {
          *v16 = *v17;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v12 = Hasher._finalize()();

      v13 = v12 & v8;
      if (v4 >= v9)
      {
        if (v13 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 16 * v4);
        v16 = (v14 + 16 * v7);
        if (v4 != v7 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = v17 + 40 * v4;
        v19 = (v17 + 40 * v7);
        if (v4 != v7 || v18 >= v19 + 40)
        {
          v10 = *v19;
          v11 = v19[1];
          *(v18 + 32) = *(v19 + 4);
          *v18 = v10;
          *(v18 + 16) = v11;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int specialized _NativeDictionary._delete(at:)(Swift::Int result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    do
    {
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v12 = result & v8;
      if (v4 >= v9)
      {
        if (v12 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + v4);
        v15 = (v13 + v7);
        if (v4 != v7 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 48 * v4);
        v18 = (v16 + 48 * v7);
        if (48 * v4 < (48 * v7) || v17 >= v18 + 3 || v4 != v7)
        {
          v10 = *v18;
          v11 = v18[2];
          v17[1] = v18[1];
          v17[2] = v11;
          *v17 = v10;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation4UUIDV15GroupActivities0K23SessionProviderObserverCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab28VKXEfU_10Foundation4UUIDV_15k14Activities0J23mnO4CTG5ANxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjMIsgnndzo_Tf1nc_n04_s15k26Activities010BackgroundA14m35ManagerC15updateProviders3forySDy10w64UUIDVSo022TUConversationActivityD9ContainerCG_tFSbAH3key_AA0aD16nO15C5valuet_tXEfU_SDyAJSo022TUConversationActivityM9ContainerCGTf1nnc_n(unint64_t *result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = specialized closure #1 in _NativeDictionary.filter(_:)(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v42 = a1;
  v50 = type metadata accessor for UUID();
  v11 = *(v50 - 8);
  v12 = MEMORY[0x1EEE9AC00](v50);
  v49 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v43 = &v37 - v14;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = static _DictionaryStorage.allocate(capacity:)();
  v16 = result;
  if (a2 < 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = *v42;
  }

  v18 = 0;
  v39 = v11 + 16;
  v40 = result;
  v48 = v11 + 32;
  v19 = result + 64;
  v38 = a4;
  v41 = v11;
  v20 = v50;
  while (v17)
  {
    v21 = __clz(__rbit64(v17));
    v44 = (v17 - 1) & v17;
LABEL_16:
    v24 = v21 | (v18 << 6);
    v25 = a4[6];
    v47 = *(v11 + 72);
    v26 = v43;
    (*(v11 + 16))(v43, v25 + v47 * v24, v20);
    v27 = *(a4[7] + 8 * v24);
    v45 = *(v11 + 32);
    v45(v49, v26, v20);
    v16 = v40;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v46 = v27;

    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v28 = -1 << *(v16 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v19 + 8 * (v29 >> 6))) == 0)
    {
      v32 = 0;
      v33 = (63 - v28) >> 6;
      v11 = v41;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v19 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v19 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
    v11 = v41;
LABEL_26:
    *(v19 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    result = (v45)(*(v16 + 48) + v31 * v47, v49, v50);
    *(*(v16 + 56) + 8 * v31) = v46;
    ++*(v16 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v38;
    v17 = v44;
    if (!a3)
    {
      return v16;
    }
  }

  v22 = v18;
  while (1)
  {
    v18 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v18 >= a2)
    {
      return v16;
    }

    v23 = v42[v18];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v44 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void specialized Set.subscript.getter(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1B2714A60](a1, a2, v11);
      type metadata accessor for OS_dispatch_queue(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for OS_dispatch_queue(0, a5, a6);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v6 = v19;
    v12 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v13 = -1 << *(a4 + 32);
    v10 = v12 & ~v13;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = static NSObject.== infix(_:_:)();

        if (v16)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v14;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v17 = *(*(a4 + 48) + 8 * v10);

  v18 = v17;
}

uint64_t specialized TopicManager.init(provider:featureFlags:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities12TopicManagerC18ConversationClientCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities12TopicManagerC18ConversationClientCGGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - v8 + 8;
  v19[3] = type metadata accessor for BackgroundGroupSessionManager();
  v19[4] = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type BackgroundGroupSessionManager and conformance BackgroundGroupSessionManager, v10, type metadata accessor for BackgroundGroupSessionManager, &protocol conformance descriptor for BackgroundGroupSessionManager);
  v19[0] = a1;
  v11 = OBJC_IVAR____TtC15GroupActivities12TopicManager__conversationClientsByGroupUUID;
  v12 = MEMORY[0x1E69E7CC0];
  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_15GroupActivities12TopicManagerC18ConversationClientCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10Foundation4UUIDV15GroupActivities12TopicManagerC18ConversationClientCGMd, &_sSDy10Foundation4UUIDV15GroupActivities12TopicManagerC18ConversationClientCGMR);
  Published.init(initialValue:)();
  (*(v7 + 32))(a3 + v11, v9, v6);
  if (v12 >> 62 && __CocoaSet.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CD0];
  }

  *(a3 + OBJC_IVAR____TtC15GroupActivities12TopicManager_cancellables) = v13;
  v14 = OBJC_IVAR____TtC15GroupActivities12TopicManager_lock;
  type metadata accessor for Lock();
  swift_allocObject();
  *(a3 + v14) = Lock.init()();
  outlined init with copy of Transferable(v19, a3 + OBJC_IVAR____TtC15GroupActivities12TopicManager_provider);
  *(a3 + OBJC_IVAR____TtC15GroupActivities12TopicManager_featureFlags) = a2;
  v15 = *(a1 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGMd, &_s7Combine12PublisherBoxCyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v18 = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[UUID : TUConversationActivitySessionContainer], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR, MEMORY[0x1E695BED8]);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0(v19);
  return a3;
}

uint64_t specialized Sequence.compactMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, uint64_t, uint64_t))
{
  v5 = v4;
  v31 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
    lazy protocol witness table accessor for type CPParticipant and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
    Set.Iterator.init(_cocoa:)();
    result = v26;
    v7 = v27;
    v8 = v28;
    v9 = v29;
    v10 = v30;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v20 = MEMORY[0x1E69E7CC0];
  v24 = result;
LABEL_8:
  v14 = v9;
  v15 = v10;
  while (result < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58), swift_dynamicCast(), v18 = v25, v9 = v14, v10 = v15, !v25))
    {
LABEL_24:
      result = v24;
LABEL_25:
      outlined consume of [UUID : Conversation].Iterator._Variant(result);
      return v20;
    }

LABEL_18:
    v19 = a4(v18, a2, a3);

    if (v5)
    {
      outlined consume of [UUID : Conversation].Iterator._Variant(v24);

      return v20;
    }

    v14 = v9;
    v15 = v10;
    result = v24;
    if (v19)
    {
      MEMORY[0x1B27142A0](v24);
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v20 = v31;
      result = v24;
      goto LABEL_8;
    }
  }

  v16 = v14;
  v17 = v15;
  v9 = v14;
  if (v15)
  {
LABEL_14:
    v10 = (v17 - 1) & v17;
    v18 = *(*(result + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v18)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v9 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v9 >= ((v8 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v17 = *(v7 + 8 * v9);
    ++v16;
    if (v17)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void *specialized BackgroundGroupSessionManager.init(client:)(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  swift_defaultActor_initialize();
  v7 = MEMORY[0x1E69E7CC8];
  a2[16] = MEMORY[0x1E69E7CC8];
  a2[17] = v7;
  a2[18] = v7;
  a2[19] = 0;
  v8 = type metadata accessor for BackgroundAudioSessionAssertionManager();
  inited = swift_initStaticObject();
  a2[23] = v8;
  a2[24] = &protocol witness table for BackgroundAudioSessionAssertionManager;
  a2[20] = inited;
  v10 = MEMORY[0x1E69E7CC0];
  v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So38TUConversationActivitySessionContainerCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR);
  swift_allocObject();
  a2[25] = CurrentValueSubject.init(_:)();
  v19 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay15GroupActivities0E7SessionCyAD03AnyE8ActivityVGGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay15GroupActivities0E7SessionCyAD03AnyE8ActivityVGGs5NeverOGMR);
  swift_allocObject();
  a2[26] = CurrentValueSubject.init(_:)();
  a2[27] = 0;
  v11 = MEMORY[0x1E69976A8];
  a2[14] = a1;
  a2[15] = v11;
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type BackgroundGroupSessionManager and conformance BackgroundGroupSessionManager, v12, type metadata accessor for BackgroundGroupSessionManager, &protocol conformance descriptor for BackgroundGroupSessionManager);
  type metadata accessor for BackgroundSessionManagerClient();
  swift_unknownObjectRetain();
  v13 = a1;

  dispatch thunk of BackgroundSessionManagerClientProtocol.delegate.setter();

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v15;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &closure #1 in BackgroundGroupSessionManager.init(client:)partial apply, v16);

  return a2;
}

uint64_t specialized PresenceSession.init(provider:serviceProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v43 = a2;
  v41 = a1;
  v44 = type metadata accessor for UUID();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v40 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMd, &_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMR);
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v34 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v36 = &v34 - v9;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities19PresenceSessionInfoVGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities19PresenceSessionInfoVGMR);
  v10 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVyShy15GroupActivities17AddressableMemberVGGMd, &_s14CopresenceCore14CurrentSubjectVyShy15GroupActivities17AddressableMemberVGGMR);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities15PresenceSessionC5StateOGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities15PresenceSessionC5StateOGMR);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v34 - v19;
  v21 = OBJC_IVAR____TtC15GroupActivities15PresenceSession__state;
  LOBYTE(v47) = 0;
  CurrentSubject.init(wrappedValue:)();
  (*(v18 + 32))(a4 + v21, v20, v17);
  v22 = MEMORY[0x1E69E7CD0];
  *(a4 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_activeParticipants) = MEMORY[0x1E69E7CD0];
  v23 = OBJC_IVAR____TtC15GroupActivities15PresenceSession__members;
  v47 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15GroupActivities17AddressableMemberVGMd, &_sShy15GroupActivities17AddressableMemberVGMR);
  CurrentSubject.init(wrappedValue:)();
  (*(v14 + 32))(a4 + v23, v16, v13);
  v24 = OBJC_IVAR____TtC15GroupActivities15PresenceSession__sessionInfo;
  v47 = v22;
  CurrentSubject.init(wrappedValue:)();
  (*(v10 + 32))(a4 + v24, v12, v35);
  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v36, 1, 1, v25);
  (*(v38 + 104))(v37, *MEMORY[0x1E69E8650], v39);
  AsyncSerialQueue.init(priority:bufferingPolicy:)();
  *(a4 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_observers) = v22;
  v26 = a4 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_provider;
  *(a4 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_provider + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_connection) = 0;
  ObjectType = swift_getObjectType();
  v28 = v43;
  v29 = *(v43 + 8);
  v30 = v40;
  GroupSessionProvider.uuid.getter(ObjectType, v29, v40);
  (*(v42 + 32))(a4 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_id, v30, v44);
  swift_beginAccess();
  *(v26 + 8) = v28;
  swift_unknownObjectWeakAssign();
  v31 = (a4 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_serviceProvider);
  *v31 = v45;
  v31[1] = &protocol witness table for BackgroundGroupSessionManager;
  v32 = *(v29 + 72);
  swift_unknownObjectRetain();
  v46 = v32(ObjectType, v29);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<Set<AddressableMember>, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMR, MEMORY[0x1E695BFB0]);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return a4;
}

uint64_t specialized BackgroundGroupSessionManager.updateShare(_:activityID:)()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Log.default);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1AEE80000, v1, v2, "Updating CKShare", v3, 2u);
    MEMORY[0x1B2715BA0](v3, -1, -1);
  }

  lazy protocol witness table accessor for type BackgroundGroupSessionManagerError and conformance BackgroundGroupSessionManagerError();
  swift_allocError();
  *v4 = 5;
  return swift_willThrow();
}

void *specialized BackgroundGroupSessionManager.init(client:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - v8;
  swift_defaultActor_initialize();
  v10 = MEMORY[0x1E69E7CC8];
  a2[16] = MEMORY[0x1E69E7CC8];
  a2[17] = v10;
  a2[18] = v10;
  a2[19] = 0;
  v11 = type metadata accessor for BackgroundAudioSessionAssertionManager();
  inited = swift_initStaticObject();
  a2[23] = v11;
  a2[24] = &protocol witness table for BackgroundAudioSessionAssertionManager;
  a2[20] = inited;
  v13 = MEMORY[0x1E69E7CC0];
  v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So38TUConversationActivitySessionContainerCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR);
  swift_allocObject();
  a2[25] = CurrentValueSubject.init(_:)();
  v20 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay15GroupActivities0E7SessionCyAD03AnyE8ActivityVGGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay15GroupActivities0E7SessionCyAD03AnyE8ActivityVGGs5NeverOGMR);
  swift_allocObject();
  a2[26] = CurrentValueSubject.init(_:)();
  a2[27] = 0;
  a2[14] = a1;
  a2[15] = a4;
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type BackgroundGroupSessionManager and conformance BackgroundGroupSessionManager, v14, type metadata accessor for BackgroundGroupSessionManager, &protocol conformance descriptor for BackgroundGroupSessionManager);
  swift_unknownObjectRetain_n();

  dispatch thunk of BackgroundSessionManagerClientProtocol.delegate.setter();
  swift_unknownObjectRelease();
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v16;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in BackgroundGroupSessionManager.init(client:), v17);

  return a2;
}

unint64_t lazy protocol witness table accessor for type BackgroundGroupSessionManagerError and conformance BackgroundGroupSessionManagerError()
{
  result = lazy protocol witness table cache variable for type BackgroundGroupSessionManagerError and conformance BackgroundGroupSessionManagerError;
  if (!lazy protocol witness table cache variable for type BackgroundGroupSessionManagerError and conformance BackgroundGroupSessionManagerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundGroupSessionManagerError and conformance BackgroundGroupSessionManagerError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BackgroundGroupSessionManagerError and conformance BackgroundGroupSessionManagerError;
  if (!lazy protocol witness table cache variable for type BackgroundGroupSessionManagerError and conformance BackgroundGroupSessionManagerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundGroupSessionManagerError and conformance BackgroundGroupSessionManagerError);
  }

  return result;
}

uint64_t partial apply for closure #1 in BackgroundGroupSessionManager.leave(identifier:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in BackgroundGroupSessionManager.leave(identifier:)(a1, a2, v6, v7, v9, v8);
}

uint64_t specialized BackgroundGroupSessionManager.didDisconnect(client:)()
{
  v1[7] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetSgMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetSgMR);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetSgMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetSgMR);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized BackgroundGroupSessionManager.didDisconnect(client:), v0, 0);
}

{
  v122 = v0;
  if (one-time initialization token for default == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v1 = type metadata accessor for Logger();
    *(v0 + 192) = __swift_project_value_buffer(v1, static Log.default);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1AEE80000, v2, v3, "Disconnected", v4, 2u);
      MEMORY[0x1B2715BA0](v4, -1, -1);
    }

    v5 = *(v0 + 56);

    swift_beginAccess();
    v6 = *(v5 + 136);
    *(v0 + 200) = v6;
    v7 = *(v6 + 32);
    *(v0 + 392) = v7;
    v8 = -1;
    v9 = -1 << v7;
    if (-(-1 << v7) < 64)
    {
      v8 = ~(-1 << -(-1 << v7));
    }

    v10 = MEMORY[0x1E69E7CC8];
    v11 = v8 & *(v6 + 64);
    *(v0 + 224) = MEMORY[0x1E69E7CC8];
    v12 = MEMORY[0x1E69E7CC0];
    *(v0 + 208) = v10;
    *(v0 + 216) = v12;

    if (v11)
    {
      v13 = 0;
LABEL_11:
      v17 = *(v0 + 168);
      v16 = *(v0 + 176);
      v18 = *(v0 + 80);
      v19 = *(v0 + 88);
      v20 = (v11 - 1) & v11;
      v21 = __clz(__rbit64(v11)) | (v13 << 6);
      (*(v19 + 16))(v17, *(v6 + 48) + *(v19 + 72) * v21, v18);
      v22 = *(*(v6 + 56) + 8 * v21);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMR);
      v24 = *(v23 + 48);
      (*(v19 + 32))(v16, v17, v18);
      *(v16 + v24) = v22;
      (*(*(v23 - 8) + 56))(v16, 0, 1, v23);

      v15 = v13;
    }

    else
    {
      v14 = 0;
      v15 = ((63 - v9) >> 6) - 1;
      while (v15 != v14)
      {
        v13 = v14 + 1;
        v11 = *(v6 + 72 + 8 * v14++);
        if (v11)
        {
          goto LABEL_11;
        }
      }

      v94 = *(v0 + 176);
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMR);
      (*(*(v95 - 8) + 56))(v94, 1, 1, v95);
      v20 = 0;
    }

    *(v0 + 232) = v20;
    *(v0 + 240) = v15;
    v25 = *(v0 + 184);
    outlined init with take of Date?(*(v0 + 176), v25, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetSgMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetSgMR);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMR);
    if ((*(*(v26 - 8) + 48))(v25, 1, v26) != 1)
    {
      v83 = *(v0 + 152);
      v82 = *(v0 + 160);
      v84 = *(v0 + 80);
      v85 = *(v0 + 88);
      v86 = *(*(v0 + 184) + *(v26 + 48));
      *(v0 + 248) = v86;
      v87 = *(v85 + 32);
      *(v0 + 256) = v87;
      *(v0 + 264) = (v85 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v87(v82);
      v88 = *(v85 + 16);
      *(v0 + 272) = v88;
      *(v0 + 280) = (v85 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v88(v83, v82, v84);
      v89 = *(v86 + 40);
      ObjectType = swift_getObjectType();
      v91 = swift_task_alloc();
      *(v0 + 288) = v91;
      *v91 = v0;
      v91[1] = specialized BackgroundGroupSessionManager.didDisconnect(client:);

      return GroupSessionProvider.backgroundSessionCreationRequest.getter(ObjectType, v89);
    }

    v27 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v27)
    {
      v28 = *(v0 + 88);
      v29 = MEMORY[0x1E69E7CC0] + ((*(v28 + 80) + 32) & ~*(v28 + 80));
      v30 = *(v28 + 72);
      v31 = *(v28 + 16);
      do
      {
        v32 = *(v0 + 144);
        v33 = *(v0 + 80);
        v34 = *(v0 + 88);
        v35 = *(v0 + 56);
        v31(v32, v29, v33);
        invalidateProvider #1 (id:) in BackgroundGroupSessionManager.didDisconnect(client:)(v32, v35);
        (*(v34 + 8))(v32, v33);
        v29 += v30;
        --v27;
      }

      while (v27);
    }

    v36 = 0;
    v37 = MEMORY[0x1E69E7CC8];
    v38 = *(MEMORY[0x1E69E7CC8] + 32);
    *(v0 + 393) = v38;
    v39 = 1 << v38;
    v40 = *(v37 + 64);
    v41 = v39 < 64 ? ~(-1 << v39) : -1;
    v42 = v41 & v40;
    if ((v41 & v40) != 0)
    {
      break;
    }

LABEL_23:
    v45 = ((1 << *(v0 + 393)) + 63) >> 6;
    if (v45 <= v36 + 1)
    {
      v46 = v36 + 1;
    }

    else
    {
      v46 = ((1 << *(v0 + 393)) + 63) >> 6;
    }

    v47 = v46 - 1;
    while (1)
    {
      v48 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v48 >= v45)
      {
        v80 = *(v0 + 64);
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMR);
        (*(*(v81 - 8) + 56))(v80, 1, 1, v81);
        v42 = 0;
        v59 = v47;
        goto LABEL_32;
      }

      v44 = *(v0 + 224);
      v42 = *(v44 + 8 * v48 + 64);
      ++v36;
      if (v42)
      {
        v36 = v48;
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v44 = *(v0 + 224);
LABEL_31:
    v49 = *(v0 + 168);
    v50 = *(v0 + 80);
    v51 = *(v0 + 88);
    v52 = *(v0 + 64);
    v53 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
    v54 = v53 | (v36 << 6);
    (*(v51 + 16))(v49, *(v44 + 48) + *(v51 + 72) * v54, v50);
    v55 = *(*(v44 + 56) + 8 * v54);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMR);
    v57 = *(v56 + 48);
    (*(v51 + 32))(v52, v49, v50);
    *(v52 + v57) = v55;
    (*(*(v56 - 8) + 56))(v52, 0, 1, v56);
    v58 = v55;
    v59 = v36;
LABEL_32:
    *(v0 + 312) = v42;
    *(v0 + 320) = v59;
    v60 = *(v0 + 72);
    outlined init with take of Date?(*(v0 + 64), v60, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetSgMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetSgMR);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMR);
    if ((*(*(v61 - 8) + 48))(v60, 1, v61) == 1)
    {
      break;
    }

    v62 = *(v0 + 136);
    v63 = *(v0 + 88);
    v64 = *(v0 + 56);
    v65 = *(*(v0 + 72) + *(v61 + 48));
    *(v0 + 328) = v65;
    (*(v63 + 32))(v62);
    if (*(*(v64 + 136) + 16))
    {
      v66 = *(v0 + 136);

      specialized __RawDictionaryStorage.find<A>(_:)(v66);
      if (v67)
      {
        v118 = v65;
        v97 = *(v0 + 128);
        v96 = *(v0 + 136);
        v98 = *(v0 + 80);
        v99 = *(v0 + 88);

        v100 = *(v99 + 16);
        *(v0 + 336) = v100;
        *(v0 + 344) = (v99 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v100(v97, v96, v98);
        v101 = Logger.logObject.getter();
        v102 = static os_log_type_t.default.getter();
        v103 = os_log_type_enabled(v101, v102);
        v104 = *(v0 + 128);
        v105 = *(v0 + 80);
        v106 = *(v0 + 88);
        if (v103)
        {
          v107 = swift_slowAlloc();
          v120 = swift_slowAlloc();
          v121 = v120;
          *v107 = 136315138;
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v108 = dispatch thunk of CustomStringConvertible.description.getter();
          v110 = v109;
          v111 = *(v106 + 8);
          v111(v104, v105);
          v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v110, &v121);

          *(v107 + 4) = v112;
          _os_log_impl(&dword_1AEE80000, v101, v102, "Attempting to recover providerID: %s", v107, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v120);
          MEMORY[0x1B2715BA0](v120, -1, -1);
          MEMORY[0x1B2715BA0](v107, -1, -1);
        }

        else
        {

          v111 = *(v106 + 8);
          v111(v104, v105);
        }

        *(v0 + 352) = v111;
        v113 = swift_getObjectType();
        v114 = swift_task_alloc();
        *(v0 + 360) = v114;
        *v114 = v0;
        v114[1] = specialized BackgroundGroupSessionManager.didDisconnect(client:);

        return MEMORY[0x1EEDF8BD8](v118, v113);
      }
    }

    (*(*(v0 + 88) + 16))(*(v0 + 112), *(v0 + 136), *(v0 + 80));
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();
    v70 = os_log_type_enabled(v68, v69);
    v119 = *(v0 + 136);
    v71 = *(v0 + 112);
    v73 = *(v0 + 80);
    v72 = *(v0 + 88);
    if (v70)
    {
      v116 = v59;
      v74 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v121 = v115;
      *v74 = 136315138;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v117 = v65;
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      v78 = *(v72 + 8);
      v78(v71, v73);
      v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v77, &v121);

      *(v74 + 4) = v79;
      __swift_destroy_boxed_opaque_existential_0(v115);
      MEMORY[0x1B2715BA0](v115, -1, -1);
      MEMORY[0x1B2715BA0](v74, -1, -1);

      v78(v119, v73);
      v36 = v116;
      if (!v42)
      {
        goto LABEL_23;
      }
    }

    else
    {

      v43 = *(v72 + 8);
      v43(v71, v73);
      v43(v119, v73);
      v36 = v59;
      if (!v42)
      {
        goto LABEL_23;
      }
    }
  }

  v93 = *(v0 + 8);

  return v93();
}

{
  v127 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 208);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v126 = v2;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v1, v4, isUniquelyReferenced_nonNull_native);
  v8 = *(v6 + 8);
  v8(v4, v5);

  v9 = v126;
  v10 = (v8)(v3, v5);
  v12 = *(v0 + 216);
  v13 = *(v0 + 232);
  v14 = *(v0 + 240);
  *(v0 + 224) = v126;
  *(v0 + 208) = v9;
  v120 = v9;
  v123 = v12;
  if (v13)
  {
    v15 = *(v0 + 200);
LABEL_11:
    v21 = *(v0 + 168);
    v20 = *(v0 + 176);
    v23 = *(v0 + 80);
    v22 = *(v0 + 88);
    v24 = (v13 - 1) & v13;
    v25 = __clz(__rbit64(v13)) | (v14 << 6);
    (*(v22 + 16))(v21, *(v15 + 48) + *(v22 + 72) * v25, v23);
    v26 = *(*(v15 + 56) + 8 * v25);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMR);
    v28 = *(v27 + 48);
    (*(v22 + 32))(v20, v21, v23);
    *(v20 + v28) = v26;
    (*(*(v27 - 8) + 56))(v20, 0, 1, v27);

    v18 = v14;
LABEL_12:
    *(v0 + 232) = v24;
    *(v0 + 240) = v18;
    v29 = *(v0 + 184);
    outlined init with take of Date?(*(v0 + 176), v29, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetSgMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetSgMR);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMR);
    if ((*(*(v30 - 8) + 48))(v29, 1, v30) != 1)
    {
      v42 = *(v0 + 152);
      v41 = *(v0 + 160);
      v43 = *(v0 + 80);
      v44 = *(v0 + 88);
      v45 = *(*(v0 + 184) + *(v30 + 48));
      *(v0 + 248) = v45;
      v46 = *(v44 + 32);
      *(v0 + 256) = v46;
      *(v0 + 264) = (v44 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v46(v41);
      v47 = *(v44 + 16);
      *(v0 + 272) = v47;
      *(v0 + 280) = (v44 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v47(v42, v41, v43);
      v48 = *(v45 + 40);
      ObjectType = swift_getObjectType();
      v50 = swift_task_alloc();
      *(v0 + 288) = v50;
      *v50 = v0;
      v50[1] = specialized BackgroundGroupSessionManager.didDisconnect(client:);

      return GroupSessionProvider.backgroundSessionCreationRequest.getter(ObjectType, v48);
    }

    v31 = *(v123 + 16);
    if (v31)
    {
      v32 = *(v0 + 88);
      v33 = v123 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
      v34 = *(v32 + 72);
      v35 = *(v32 + 16);
      v36 = v120;
      do
      {
        v37 = *(v0 + 144);
        v39 = *(v0 + 80);
        v38 = *(v0 + 88);
        v40 = *(v0 + 56);
        v35(v37, v33, v39);
        invalidateProvider #1 (id:) in BackgroundGroupSessionManager.didDisconnect(client:)(v37, v40);
        (*(v38 + 8))(v37, v39);
        v33 += v34;
        --v31;
      }

      while (v31);
    }

    else
    {

      v36 = v120;
    }

    v54 = 0;
    v55 = *(v36 + 32);
    *(v0 + 393) = v55;
    v56 = 1 << v55;
    if (v56 < 64)
    {
      v57 = ~(-1 << v56);
    }

    else
    {
      v57 = -1;
    }

    v58 = v57 & *(v36 + 64);
    if (!v58)
    {
      goto LABEL_29;
    }

    do
    {
      while (1)
      {
        v60 = *(v0 + 224);
LABEL_37:
        v65 = *(v0 + 168);
        v66 = *(v0 + 80);
        v67 = *(v0 + 88);
        v68 = *(v0 + 64);
        v69 = __clz(__rbit64(v58));
        v58 &= v58 - 1;
        v70 = v69 | (v54 << 6);
        (*(v67 + 16))(v65, *(v60 + 48) + *(v67 + 72) * v70, v66);
        v71 = *(*(v60 + 56) + 8 * v70);
        v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMR);
        v73 = *(v72 + 48);
        (*(v67 + 32))(v68, v65, v66);
        *(v68 + v73) = v71;
        (*(*(v72 - 8) + 56))(v68, 0, 1, v72);
        v74 = v71;
        v75 = v54;
LABEL_38:
        *(v0 + 312) = v58;
        *(v0 + 320) = v75;
        v76 = *(v0 + 72);
        outlined init with take of Date?(*(v0 + 64), v76, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetSgMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetSgMR);
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMR);
        if ((*(*(v77 - 8) + 48))(v76, 1, v77) == 1)
        {

          v98 = *(v0 + 8);

          return v98();
        }

        v78 = *(v0 + 136);
        v79 = *(v0 + 88);
        v80 = *(v0 + 56);
        v81 = *(*(v0 + 72) + *(v77 + 48));
        *(v0 + 328) = v81;
        (*(v79 + 32))(v78);
        if (*(*(v80 + 136) + 16))
        {
          v82 = *(v0 + 136);

          specialized __RawDictionaryStorage.find<A>(_:)(v82);
          if (v83)
          {
            v122 = v81;
            v100 = *(v0 + 128);
            v99 = *(v0 + 136);
            v101 = *(v0 + 80);
            v102 = *(v0 + 88);

            v103 = *(v102 + 16);
            *(v0 + 336) = v103;
            *(v0 + 344) = (v102 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
            v103(v100, v99, v101);
            v104 = Logger.logObject.getter();
            v105 = static os_log_type_t.default.getter();
            v106 = os_log_type_enabled(v104, v105);
            v107 = *(v0 + 128);
            v108 = *(v0 + 80);
            v109 = *(v0 + 88);
            if (v106)
            {
              v110 = swift_slowAlloc();
              v125 = swift_slowAlloc();
              v126 = v125;
              *v110 = 136315138;
              _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
              v111 = dispatch thunk of CustomStringConvertible.description.getter();
              v113 = v112;
              v114 = *(v109 + 8);
              v114(v107, v108);
              v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v113, &v126);

              *(v110 + 4) = v115;
              _os_log_impl(&dword_1AEE80000, v104, v105, "Attempting to recover providerID: %s", v110, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v125);
              MEMORY[0x1B2715BA0](v125, -1, -1);
              MEMORY[0x1B2715BA0](v110, -1, -1);
            }

            else
            {

              v114 = *(v109 + 8);
              v114(v107, v108);
            }

            *(v0 + 352) = v114;
            v116 = swift_getObjectType();
            v117 = swift_task_alloc();
            *(v0 + 360) = v117;
            *v117 = v0;
            v117[1] = specialized BackgroundGroupSessionManager.didDisconnect(client:);
            v10 = v122;
            v11 = v116;

            return MEMORY[0x1EEDF8BD8](v10, v11);
          }
        }

        (*(*(v0 + 88) + 16))(*(v0 + 112), *(v0 + 136), *(v0 + 80));
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.default.getter();
        v86 = os_log_type_enabled(v84, v85);
        v124 = *(v0 + 136);
        v87 = *(v0 + 112);
        v89 = *(v0 + 80);
        v88 = *(v0 + 88);
        if (v86)
        {
          break;
        }

        v59 = *(v88 + 8);
        v59(v87, v89);
        v10 = (v59)(v124, v89);
        v54 = v75;
        if (!v58)
        {
          goto LABEL_29;
        }
      }

      v119 = v75;
      v90 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v126 = v118;
      *v90 = 136315138;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v121 = v81;
      v91 = dispatch thunk of CustomStringConvertible.description.getter();
      v93 = v92;
      v94 = *(v88 + 8);
      v94(v87, v89);
      v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v93, &v126);

      *(v90 + 4) = v95;
      __swift_destroy_boxed_opaque_existential_0(v118);
      MEMORY[0x1B2715BA0](v118, -1, -1);
      MEMORY[0x1B2715BA0](v90, -1, -1);

      v10 = (v94)(v124, v89);
      v54 = v119;
    }

    while (v58);
LABEL_29:
    v61 = ((1 << *(v0 + 393)) + 63) >> 6;
    if (v61 <= v54 + 1)
    {
      v62 = v54 + 1;
    }

    else
    {
      v62 = ((1 << *(v0 + 393)) + 63) >> 6;
    }

    v63 = v62 - 1;
    while (1)
    {
      v64 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      if (v64 >= v61)
      {
        v96 = *(v0 + 64);
        v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMR);
        (*(*(v97 - 8) + 56))(v96, 1, 1, v97);
        v58 = 0;
        v75 = v63;
        goto LABEL_38;
      }

      v60 = *(v0 + 224);
      v58 = *(v60 + 8 * v64 + 64);
      ++v54;
      if (v58)
      {
        v54 = v64;
        goto LABEL_37;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = ((1 << *(v0 + 392)) + 63) >> 6;
    if (v16 <= (v14 + 1))
    {
      v17 = v14 + 1;
    }

    else
    {
      v17 = ((1 << *(v0 + 392)) + 63) >> 6;
    }

    v18 = v17 - 1;
    while (1)
    {
      v19 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v19 >= v16)
      {
        v52 = *(v0 + 176);
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMR);
        (*(*(v53 - 8) + 56))(v52, 1, 1, v53);
        v24 = 0;
        goto LABEL_12;
      }

      v15 = *(v0 + 200);
      v13 = *(v15 + 8 * v19 + 64);
      ++v14;
      if (v13)
      {
        v14 = v19;
        goto LABEL_11;
      }
    }
  }

  __break(1u);
  return MEMORY[0x1EEDF8BD8](v10, v11);
}

{
  v2 = *v1;
  *(*v1 + 368) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = specialized BackgroundGroupSessionManager.didDisconnect(client:);
  }

  else
  {
    v4 = specialized BackgroundGroupSessionManager.didDisconnect(client:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v91 = v0;
  (*(v0 + 336))(*(v0 + 120), *(v0 + 136), *(v0 + 80));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 352);
  v5 = *(v0 + 136);
  v6 = *(v0 + 120);
  v7 = &loc_1AF00B000;
  v8 = *(v0 + 80);
  if (v3)
  {
    v84 = *(v0 + 328);
    v87 = *(v0 + 352);
    v9 = swift_slowAlloc();
    v82 = v5;
    v10 = swift_slowAlloc();
    v90 = v10;
    *v9 = 136315138;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    v87(v6, v8);
    v14 = v11;
    v7 = &loc_1AF00B000;
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v90);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_1AEE80000, v1, v2, "Recovered providerID: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B2715BA0](v10, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);

    v16 = (v87)(v82, v8);
  }

  else
  {

    v4(v6, v8);
    v4(v5, v8);
  }

  v19 = *(v0 + 312);
  v18 = *(v0 + 320);
  v80 = v7[329];
  if (!v19)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v21 = *(v0 + 224);
LABEL_16:
    v26 = *(v0 + 168);
    v27 = *(v0 + 80);
    v28 = *(v0 + 88);
    v29 = *(v0 + 64);
    v30 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v31 = v30 | (v18 << 6);
    (*(v28 + 16))(v26, *(v21 + 48) + *(v28 + 72) * v31, v27);
    v32 = *(*(v21 + 56) + 8 * v31);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMR);
    v34 = *(v33 + 48);
    (*(v28 + 32))(v29, v26, v27);
    *(v29 + v34) = v32;
    (*(*(v33 - 8) + 56))(v29, 0, 1, v33);
    v35 = v32;
    v36 = v18;
LABEL_17:
    *(v0 + 312) = v19;
    *(v0 + 320) = v36;
    v37 = *(v0 + 72);
    outlined init with take of Date?(*(v0 + 64), v37, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetSgMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetSgMR);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMR);
    if ((*(*(v38 - 8) + 48))(v37, 1, v38) == 1)
    {
      break;
    }

    v39 = *(v0 + 136);
    v40 = *(v0 + 88);
    v41 = *(v0 + 56);
    v42 = *(*(v0 + 72) + *(v38 + 48));
    *(v0 + 328) = v42;
    (*(v40 + 32))(v39);
    if (*(*(v41 + 136) + 16))
    {
      v43 = *(v0 + 136);

      specialized __RawDictionaryStorage.find<A>(_:)(v43);
      if (v44)
      {
        v86 = v42;
        v62 = *(v0 + 128);
        v61 = *(v0 + 136);
        v63 = *(v0 + 80);
        v64 = *(v0 + 88);

        v65 = *(v64 + 16);
        *(v0 + 336) = v65;
        *(v0 + 344) = (v64 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v65(v62, v61, v63);
        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.default.getter();
        v68 = os_log_type_enabled(v66, v67);
        v69 = *(v0 + 128);
        v70 = *(v0 + 80);
        v71 = *(v0 + 88);
        if (v68)
        {
          v72 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v90 = v89;
          *v72 = v80;
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v73 = dispatch thunk of CustomStringConvertible.description.getter();
          v75 = v74;
          v76 = *(v71 + 8);
          v76(v69, v70);
          v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, &v90);

          *(v72 + 4) = v77;
          _os_log_impl(&dword_1AEE80000, v66, v67, "Attempting to recover providerID: %s", v72, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v89);
          MEMORY[0x1B2715BA0](v89, -1, -1);
          MEMORY[0x1B2715BA0](v72, -1, -1);
        }

        else
        {

          v76 = *(v71 + 8);
          v76(v69, v70);
        }

        *(v0 + 352) = v76;
        ObjectType = swift_getObjectType();
        v79 = swift_task_alloc();
        *(v0 + 360) = v79;
        *v79 = v0;
        v79[1] = specialized BackgroundGroupSessionManager.didDisconnect(client:);
        v16 = v86;
        v17 = ObjectType;

        return MEMORY[0x1EEDF8BD8](v16, v17);
      }
    }

    (*(*(v0 + 88) + 16))(*(v0 + 112), *(v0 + 136), *(v0 + 80));
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    v47 = os_log_type_enabled(v45, v46);
    v88 = *(v0 + 136);
    v48 = *(v0 + 112);
    v50 = *(v0 + 80);
    v49 = *(v0 + 88);
    if (v47)
    {
      v83 = v36;
      v51 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v90 = v81;
      *v51 = v80;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v85 = v42;
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;
      v55 = *(v49 + 8);
      v55(v48, v50);
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, &v90);

      *(v51 + 4) = v56;
      __swift_destroy_boxed_opaque_existential_0(v81);
      MEMORY[0x1B2715BA0](v81, -1, -1);
      MEMORY[0x1B2715BA0](v51, -1, -1);

      v16 = (v55)(v88, v50);
      v18 = v83;
      if (!v19)
      {
LABEL_8:
        v22 = ((1 << *(v0 + 393)) + 63) >> 6;
        if (v22 <= v18 + 1)
        {
          v23 = v18 + 1;
        }

        else
        {
          v23 = ((1 << *(v0 + 393)) + 63) >> 6;
        }

        v24 = v23 - 1;
        while (1)
        {
          v25 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v25 >= v22)
          {
            v57 = *(v0 + 64);
            v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMR);
            (*(*(v58 - 8) + 56))(v57, 1, 1, v58);
            v19 = 0;
            v36 = v24;
            goto LABEL_17;
          }

          v21 = *(v0 + 224);
          v19 = *(v21 + 8 * v25 + 64);
          ++v18;
          if (v19)
          {
            v18 = v25;
            goto LABEL_16;
          }
        }

        __break(1u);
        return MEMORY[0x1EEDF8BD8](v16, v17);
      }
    }

    else
    {

      v20 = *(v49 + 8);
      v20(v48, v50);
      v16 = (v20)(v88, v50);
      v18 = v36;
      if (!v19)
      {
        goto LABEL_8;
      }
    }
  }

  v59 = *(v0 + 8);

  return v59();
}

{
  v134 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 248);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v133 = v5;
    *v4 = 136315138;
    *(v0 + 48) = v3;
    type metadata accessor for GroupSessionProviderObserver();

    v6 = String.init<A>(reflecting:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v133);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1AEE80000, v1, v2, "Failed to re-create TUConversationActivityCreateSessionRequest for providerManager: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B2715BA0](v5, -1, -1);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  (*(v0 + 272))(*(v0 + 104), *(v0 + 160), *(v0 + 80));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + 216);
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_4;
  }

  while (1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10);
LABEL_4:
    v12 = v10[2];
    v11 = v10[3];
    v130 = (v12 >= v11 >> 1 ? specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10) : v10);
    v13 = *(v0 + 376);
    v14 = *(v0 + 256);
    v15 = *(v0 + 160);
    v16 = *(v0 + 104);
    v17 = *(v0 + 80);
    v18 = *(v0 + 88);

    v13(v15, v17);
    *(v130 + 2) = v12 + 1;
    v14(&v130[((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v12], v16, v17);
    v19 = *(v0 + 232);
    v20 = *(v0 + 240);
    v21 = *(v0 + 224);
    *(v0 + 216) = v130;
    v127 = v21;
    if (v19)
    {
      break;
    }

    v23 = ((1 << *(v0 + 392)) + 63) >> 6;
    if (v23 <= (v20 + 1))
    {
      v24 = v20 + 1;
    }

    else
    {
      v24 = ((1 << *(v0 + 392)) + 63) >> 6;
    }

    v25 = v24 - 1;
    while (1)
    {
      v26 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v26 >= v23)
      {
        v59 = *(v0 + 176);
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMR);
        (*(*(v60 - 8) + 56))(v59, 1, 1, v60);
        v31 = 0;
        goto LABEL_17;
      }

      v22 = *(v0 + 200);
      v19 = *(v22 + 8 * v26 + 64);
      ++v20;
      if (v19)
      {
        v20 = v26;
        goto LABEL_16;
      }
    }

LABEL_61:
    __break(1u);
  }

  v22 = *(v0 + 200);
LABEL_16:
  v28 = *(v0 + 168);
  v27 = *(v0 + 176);
  v29 = *(v0 + 80);
  v30 = *(v0 + 88);
  v31 = (v19 - 1) & v19;
  v32 = __clz(__rbit64(v19)) | (v20 << 6);
  (*(v30 + 16))(v28, *(v22 + 48) + *(v30 + 72) * v32, v29);
  v33 = *(*(v22 + 56) + 8 * v32);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMR);
  v35 = *(v34 + 48);
  (*(v30 + 32))(v27, v28, v29);
  *(v27 + v35) = v33;
  (*(*(v34 - 8) + 56))(v27, 0, 1, v34);

  v25 = v20;
LABEL_17:
  *(v0 + 232) = v31;
  *(v0 + 240) = v25;
  v36 = *(v0 + 184);
  outlined init with take of Date?(*(v0 + 176), v36, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetSgMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetSgMR);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMR);
  if ((*(*(v37 - 8) + 48))(v36, 1, v37) != 1)
  {
    v49 = *(v0 + 152);
    v48 = *(v0 + 160);
    v50 = *(v0 + 80);
    v51 = *(v0 + 88);
    v52 = *(*(v0 + 184) + *(v37 + 48));
    *(v0 + 248) = v52;
    v53 = *(v51 + 32);
    *(v0 + 256) = v53;
    *(v0 + 264) = (v51 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v53(v48);
    v54 = *(v51 + 16);
    *(v0 + 272) = v54;
    *(v0 + 280) = (v51 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v54(v49, v48, v50);
    v55 = *(v52 + 40);
    ObjectType = swift_getObjectType();
    v57 = swift_task_alloc();
    *(v0 + 288) = v57;
    *v57 = v0;
    v57[1] = specialized BackgroundGroupSessionManager.didDisconnect(client:);

    return GroupSessionProvider.backgroundSessionCreationRequest.getter(ObjectType, v55);
  }

  v38 = *(v130 + 2);
  if (v38)
  {
    v39 = *(v0 + 88);
    v40 = &v130[(*(v39 + 80) + 32) & ~*(v39 + 80)];
    v41 = *(v39 + 72);
    v42 = *(v39 + 16);
    v43 = v127;
    do
    {
      v44 = *(v0 + 144);
      v46 = *(v0 + 80);
      v45 = *(v0 + 88);
      v47 = *(v0 + 56);
      v42(v44, v40, v46);
      invalidateProvider #1 (id:) in BackgroundGroupSessionManager.didDisconnect(client:)(v44, v47);
      (*(v45 + 8))(v44, v46);
      v40 += v41;
      --v38;
    }

    while (v38);
  }

  else
  {

    v43 = v127;
  }

  v61 = 0;
  v62 = *(v43 + 32);
  *(v0 + 393) = v62;
  v63 = 1 << v62;
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  else
  {
    v64 = -1;
  }

  v65 = v64 & *(v43 + 64);
  if (!v65)
  {
LABEL_34:
    v68 = ((1 << *(v0 + 393)) + 63) >> 6;
    if (v68 <= v61 + 1)
    {
      v69 = v61 + 1;
    }

    else
    {
      v69 = ((1 << *(v0 + 393)) + 63) >> 6;
    }

    v70 = v69 - 1;
    while (1)
    {
      v71 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      if (v71 >= v68)
      {
        v103 = *(v0 + 64);
        v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMR);
        (*(*(v104 - 8) + 56))(v103, 1, 1, v104);
        v65 = 0;
        v82 = v70;
        goto LABEL_43;
      }

      v67 = *(v0 + 224);
      v65 = *(v67 + 8 * v71 + 64);
      ++v61;
      if (v65)
      {
        v61 = v71;
        goto LABEL_42;
      }
    }

    __break(1u);
    goto LABEL_61;
  }

  while (1)
  {
    v67 = *(v0 + 224);
LABEL_42:
    v72 = *(v0 + 168);
    v73 = *(v0 + 80);
    v74 = *(v0 + 88);
    v75 = *(v0 + 64);
    v76 = __clz(__rbit64(v65));
    v65 &= v65 - 1;
    v77 = v76 | (v61 << 6);
    (*(v74 + 16))(v72, *(v67 + 48) + *(v74 + 72) * v77, v73);
    v78 = *(*(v67 + 56) + 8 * v77);
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMR);
    v80 = *(v79 + 48);
    (*(v74 + 32))(v75, v72, v73);
    *(v75 + v80) = v78;
    (*(*(v79 - 8) + 56))(v75, 0, 1, v79);
    v81 = v78;
    v82 = v61;
LABEL_43:
    *(v0 + 312) = v65;
    *(v0 + 320) = v82;
    v83 = *(v0 + 72);
    outlined init with take of Date?(*(v0 + 64), v83, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetSgMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetSgMR);
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMR);
    if ((*(*(v84 - 8) + 48))(v83, 1, v84) == 1)
    {
      break;
    }

    v85 = *(v0 + 136);
    v86 = *(v0 + 88);
    v87 = *(v0 + 56);
    v88 = *(*(v0 + 72) + *(v84 + 48));
    *(v0 + 328) = v88;
    (*(v86 + 32))(v85);
    if (*(*(v87 + 136) + 16))
    {
      v89 = *(v0 + 136);

      specialized __RawDictionaryStorage.find<A>(_:)(v89);
      if (v90)
      {
        v129 = v88;
        v107 = *(v0 + 128);
        v106 = *(v0 + 136);
        v108 = *(v0 + 80);
        v109 = *(v0 + 88);

        v110 = *(v109 + 16);
        *(v0 + 336) = v110;
        *(v0 + 344) = (v109 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v110(v107, v106, v108);
        v111 = Logger.logObject.getter();
        v112 = static os_log_type_t.default.getter();
        v113 = os_log_type_enabled(v111, v112);
        v114 = *(v0 + 128);
        v115 = *(v0 + 80);
        v116 = *(v0 + 88);
        if (v113)
        {
          v117 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          v133 = v132;
          *v117 = 136315138;
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v118 = dispatch thunk of CustomStringConvertible.description.getter();
          v120 = v119;
          v121 = *(v116 + 8);
          v121(v114, v115);
          v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v118, v120, &v133);

          *(v117 + 4) = v122;
          _os_log_impl(&dword_1AEE80000, v111, v112, "Attempting to recover providerID: %s", v117, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v132);
          MEMORY[0x1B2715BA0](v132, -1, -1);
          MEMORY[0x1B2715BA0](v117, -1, -1);
        }

        else
        {

          v121 = *(v116 + 8);
          v121(v114, v115);
        }

        *(v0 + 352) = v121;
        v123 = swift_getObjectType();
        v124 = swift_task_alloc();
        *(v0 + 360) = v124;
        *v124 = v0;
        v124[1] = specialized BackgroundGroupSessionManager.didDisconnect(client:);

        return MEMORY[0x1EEDF8BD8](v129, v123);
      }
    }

    (*(*(v0 + 88) + 16))(*(v0 + 112), *(v0 + 136), *(v0 + 80));
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.default.getter();
    v93 = os_log_type_enabled(v91, v92);
    v131 = *(v0 + 136);
    v94 = *(v0 + 112);
    v96 = *(v0 + 80);
    v95 = *(v0 + 88);
    if (v93)
    {
      v126 = v82;
      v97 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v133 = v125;
      *v97 = 136315138;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v128 = v88;
      v98 = dispatch thunk of CustomStringConvertible.description.getter();
      v100 = v99;
      v101 = *(v95 + 8);
      v101(v94, v96);
      v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v100, &v133);

      *(v97 + 4) = v102;
      __swift_destroy_boxed_opaque_existential_0(v125);
      MEMORY[0x1B2715BA0](v125, -1, -1);
      MEMORY[0x1B2715BA0](v97, -1, -1);

      v101(v131, v96);
      v61 = v126;
      if (!v65)
      {
        goto LABEL_34;
      }
    }

    else
    {

      v66 = *(v95 + 8);
      v66(v94, v96);
      v66(v131, v96);
      v61 = v82;
      if (!v65)
      {
        goto LABEL_34;
      }
    }
  }

  v105 = *(v0 + 8);

  return v105();
}

{
  v98 = v0;
  v1 = *(v0 + 368);
  (*(v0 + 336))(*(v0 + 96), *(v0 + 136), *(v0 + 80));
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 368);
    v6 = *(v0 + 96);
    v7 = *(v0 + 80);
    v94 = *(v0 + 352);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v97 = v9;
    *v8 = 136315394;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v94(v6, v7);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v97);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    *(v0 + 40) = v5;
    v14 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v97);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Failed to recover providerID: %s, error: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v9, -1, -1);
    MEMORY[0x1B2715BA0](v8, -1, -1);
  }

  else
  {
    v18 = *(v0 + 352);
    v19 = *(v0 + 96);
    v20 = *(v0 + 80);

    v18(v19, v20);
  }

  v21 = *(v0 + 368);
  v22 = *(v0 + 352);
  v23 = *(v0 + 328);
  v24 = *(v0 + 136);
  v25 = *(v0 + 80);
  invalidateProvider #1 (id:) in BackgroundGroupSessionManager.didDisconnect(client:)(v24, *(v0 + 56));

  v22(v24, v25);
  v29 = *(v0 + 312);
  v28 = *(v0 + 320);
  if (!v29)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v31 = *(v0 + 224);
LABEL_16:
    v36 = *(v0 + 168);
    v37 = *(v0 + 80);
    v38 = *(v0 + 88);
    v39 = *(v0 + 64);
    v40 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v41 = v40 | (v28 << 6);
    (*(v38 + 16))(v36, *(v31 + 48) + *(v38 + 72) * v41, v37);
    v42 = *(*(v31 + 56) + 8 * v41);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMR);
    v44 = *(v43 + 48);
    (*(v38 + 32))(v39, v36, v37);
    *(v39 + v44) = v42;
    (*(*(v43 - 8) + 56))(v39, 0, 1, v43);
    v45 = v42;
    v46 = v28;
LABEL_17:
    *(v0 + 312) = v29;
    *(v0 + 320) = v46;
    v47 = *(v0 + 72);
    outlined init with take of Date?(*(v0 + 64), v47, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetSgMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetSgMR);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMR);
    if ((*(*(v48 - 8) + 48))(v47, 1, v48) == 1)
    {
      break;
    }

    v49 = *(v0 + 136);
    v50 = *(v0 + 88);
    v51 = *(v0 + 56);
    v52 = *(*(v0 + 72) + *(v48 + 48));
    *(v0 + 328) = v52;
    (*(v50 + 32))(v49);
    if (*(*(v51 + 136) + 16))
    {
      v53 = *(v0 + 136);

      specialized __RawDictionaryStorage.find<A>(_:)(v53);
      if (v54)
      {
        v93 = v52;
        v72 = *(v0 + 128);
        v71 = *(v0 + 136);
        v73 = *(v0 + 80);
        v74 = *(v0 + 88);

        v75 = *(v74 + 16);
        *(v0 + 336) = v75;
        *(v0 + 344) = (v74 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v75(v72, v71, v73);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.default.getter();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 128);
        v80 = *(v0 + 80);
        v81 = *(v0 + 88);
        if (v78)
        {
          v82 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v97 = v96;
          *v82 = 136315138;
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v83 = dispatch thunk of CustomStringConvertible.description.getter();
          v85 = v84;
          v86 = *(v81 + 8);
          v86(v79, v80);
          v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, &v97);

          *(v82 + 4) = v87;
          _os_log_impl(&dword_1AEE80000, v76, v77, "Attempting to recover providerID: %s", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v96);
          MEMORY[0x1B2715BA0](v96, -1, -1);
          MEMORY[0x1B2715BA0](v82, -1, -1);
        }

        else
        {

          v86 = *(v81 + 8);
          v86(v79, v80);
        }

        *(v0 + 352) = v86;
        ObjectType = swift_getObjectType();
        v89 = swift_task_alloc();
        *(v0 + 360) = v89;
        *v89 = v0;
        v89[1] = specialized BackgroundGroupSessionManager.didDisconnect(client:);
        v26 = v93;
        v27 = ObjectType;

        return MEMORY[0x1EEDF8BD8](v26, v27);
      }
    }

    (*(*(v0 + 88) + 16))(*(v0 + 112), *(v0 + 136), *(v0 + 80));
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    v57 = os_log_type_enabled(v55, v56);
    v95 = *(v0 + 136);
    v58 = *(v0 + 112);
    v60 = *(v0 + 80);
    v59 = *(v0 + 88);
    if (v57)
    {
      v91 = v46;
      v61 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v97 = v90;
      *v61 = 136315138;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v92 = v52;
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      v65 = *(v59 + 8);
      v65(v58, v60);
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, &v97);

      *(v61 + 4) = v66;
      __swift_destroy_boxed_opaque_existential_0(v90);
      MEMORY[0x1B2715BA0](v90, -1, -1);
      MEMORY[0x1B2715BA0](v61, -1, -1);

      v26 = (v65)(v95, v60);
      v28 = v91;
      if (!v29)
      {
LABEL_8:
        v32 = ((1 << *(v0 + 393)) + 63) >> 6;
        if (v32 <= v28 + 1)
        {
          v33 = v28 + 1;
        }

        else
        {
          v33 = ((1 << *(v0 + 393)) + 63) >> 6;
        }

        v34 = v33 - 1;
        while (1)
        {
          v35 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          if (v35 >= v32)
          {
            v67 = *(v0 + 64);
            v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMR);
            (*(*(v68 - 8) + 56))(v67, 1, 1, v68);
            v29 = 0;
            v46 = v34;
            goto LABEL_17;
          }

          v31 = *(v0 + 224);
          v29 = *(v31 + 8 * v35 + 64);
          ++v28;
          if (v29)
          {
            v28 = v35;
            goto LABEL_16;
          }
        }

        __break(1u);
        return MEMORY[0x1EEDF8BD8](v26, v27);
      }
    }

    else
    {

      v30 = *(v59 + 8);
      v30(v58, v60);
      v26 = (v30)(v95, v60);
      v28 = v46;
      if (!v29)
      {
        goto LABEL_8;
      }
    }
  }

  v69 = *(v0 + 8);

  return v69();
}

uint64_t specialized BackgroundGroupSessionManager.didDisconnect(client:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 296) = v1;

  if (v1)
  {
    v5 = v4[19];
    v6 = v4[10];
    v7 = v4[11];
    v8 = v4[7];
    v9 = *(v7 + 8);
    v4[47] = v9;
    v4[48] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v6);
    v10 = specialized BackgroundGroupSessionManager.didDisconnect(client:);
    v11 = v8;
  }

  else
  {
    v11 = v4[7];
    v4[38] = a1;
    v10 = specialized BackgroundGroupSessionManager.didDisconnect(client:);
  }

  return MEMORY[0x1EEE6DFA0](v10, v11, 0);
}

uint64_t partial apply for closure #1 in BackgroundGroupSessionManager.didDisconnect(client:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in BackgroundGroupSessionManager.didDisconnect(client:)();
}

uint64_t specialized BackgroundGroupSessionManager.didUpdateContainers(client:containers:)(unint64_t isUniquelyReferenced_nonNull_native)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v50 - v5;
  v58 = type metadata accessor for UUID();
  v55 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.default);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    v12 = os_log_type_enabled(v10, v11);
    v59 = isUniquelyReferenced_nonNull_native;
    v51 = v6;
    if (v12)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v62 = v14;
      *v13 = 136315138;
      v61 = isUniquelyReferenced_nonNull_native;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo38TUConversationActivitySessionContainerCGMd, &_sSaySo38TUConversationActivitySessionContainerCGMR);
      v15 = String.init<A>(reflecting:)();
      v6 = v16;
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v62);

      *(v13 + 4) = v17;
      isUniquelyReferenced_nonNull_native = v59;
      _os_log_impl(&dword_1AEE80000, v10, v11, "BackgroundGroupSessionManager received updated containers: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x1B2715BA0](v14, -1, -1);
      MEMORY[0x1B2715BA0](v13, -1, -1);
    }

    v52 = *(v2 + 200);
    v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So38TUConversationActivitySessionContainerCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v19 = isUniquelyReferenced_nonNull_native >> 62 ? __CocoaSet.count.getter() : *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
    v53 = v2;
    v60 = v19;
    if (v19)
    {
      break;
    }

LABEL_24:
    v62 = v18;
    CurrentValueSubject.send(_:)();
    v39 = v60;

    v40 = v53;
    v41 = MEMORY[0x1E69E7CC0];
    v62 = MEMORY[0x1E69E7CC0];
    if (!v39)
    {
LABEL_37:

      v45 = specialized Sequence.flatMap<A>(_:)(v41);

      v62 = v45;
      CurrentValueSubject.send(_:)();

      v46 = type metadata accessor for TaskPriority();
      v47 = v51;
      (*(*(v46 - 8) + 56))(v51, 1, 1, v46);
      v48 = swift_allocObject();
      v48[2] = 0;
      v48[3] = 0;
      v48[4] = v40;
      v48[5] = isUniquelyReferenced_nonNull_native;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v47, &async function pointer to partial apply for closure #4 in BackgroundGroupSessionManager.didUpdateContainers(client:containers:), v48);
    }

    v6 = 0;
    v2 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v8 = (isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v2)
      {
        v42 = MEMORY[0x1B2714B30](v6, isUniquelyReferenced_nonNull_native);
      }

      else
      {
        if (v6 >= *(v8 + 2))
        {
          goto LABEL_42;
        }

        v42 = *(isUniquelyReferenced_nonNull_native + 8 * v6 + 32);
      }

      v43 = v42;
      v44 = (v6 + 1);
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ([v42 state] == 3 && objc_msgSend(v43, sel_localParticipantIdentifier))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        isUniquelyReferenced_nonNull_native = v59;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v39 = v60;
      }

      else
      {
      }

      ++v6;
      if (v44 == v39)
      {
        v41 = v62;
        v40 = v53;
        goto LABEL_37;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    swift_once();
  }

  v20 = 0;
  v56 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v57 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v54 = (v55 + 2);
  v2 = (v55 + 1);
  while (1)
  {
    if (v57)
    {
      v23 = MEMORY[0x1B2714B30](v20, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      if (v20 >= *(v56 + 16))
      {
        goto LABEL_39;
      }

      v23 = *(isUniquelyReferenced_nonNull_native + 8 * v20 + 32);
    }

    v24 = v23;
    v25 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v26 = [v23 groupUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v18;
    v29 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
    v30 = v18[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_40;
    }

    v6 = v28;
    if (v18[3] < v32)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
    }

LABEL_20:
    isUniquelyReferenced_nonNull_native = v59;
    v18 = v62;
    if (v6)
    {
      v21 = v62[7];
      v22 = *(v21 + 8 * v29);
      *(v21 + 8 * v29) = v27;

      (*v2)(v8, v58);
    }

    else
    {
      v62[(v29 >> 6) + 8] |= 1 << v29;
      v6 = v55;
      v35 = v58;
      v55[2](v18[6] + v55[9] * v29, v8, v58);
      *(v18[7] + 8 * v29) = v27;

      (*(v6 + 8))(v8, v35);
      v36 = v18[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_43;
      }

      v18[2] = v38;
    }

    ++v20;
    if (v25 == v60)
    {
      goto LABEL_24;
    }
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, isUniquelyReferenced_nonNull_native);
  v33 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
  if ((v6 & 1) == (v34 & 1))
  {
    v29 = v33;
    goto LABEL_20;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in BackgroundGroupSessionManager.sessionDidRejectKeyRecoveryRequest(sessionID:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in BackgroundGroupSessionManager.sessionDidRejectKeyRecoveryRequest(sessionID:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t partial apply for closure #1 in BackgroundGroupSessionManager.sessionDidReceiveUpdatedUnknownParticipantList(sessionID:unknownParticipants:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in BackgroundGroupSessionManager.sessionDidReceiveUpdatedUnknownParticipantList(sessionID:unknownParticipants:)(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t getEnumTagSinglePayload for BackgroundGroupSessionManagerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BackgroundGroupSessionManagerError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of BackgroundGroupSessionManager.prepareForActivation(options:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 352) + **(*v2 + 352));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v8(a1, a2);
}

uint64_t dispatch thunk of BackgroundGroupSessionManager.prewarm()()
{
  v4 = (*(*v0 + 360) + **(*v0 + 360));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v4();
}

uint64_t dispatch thunk of BackgroundGroupSessionManager.start(presenceSession:)(uint64_t a1)
{
  v6 = (*(*v1 + 368) + **(*v1 + 368));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:);

  return v6(a1);
}

uint64_t dispatch thunk of BackgroundGroupSessionManager.start(presenceProvider:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 376) + **(*v2 + 376));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v8(a1, a2);
}

uint64_t dispatch thunk of BackgroundGroupSessionManager.start(provider:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 384) + **(*v2 + 384));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v8(a1, a2);
}

uint64_t dispatch thunk of BackgroundGroupSessionManager.leave(identifier:)(uint64_t a1)
{
  v6 = (*(*v1 + 392) + **(*v1 + 392));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v6(a1);
}

uint64_t dispatch thunk of BackgroundGroupSessionManager.updateMembers(identifier:members:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 400) + **(*v2 + 400));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v8(a1, a2);
}

uint64_t dispatch thunk of BackgroundGroupSessionManager.begin(activity:request:onConversationWithUUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 408) + **(*v3 + 408));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of BackgroundGroupSessionManager.end(activity:)(uint64_t a1)
{
  v6 = (*(*v1 + 416) + **(*v1 + 416));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v6(a1);
}

uint64_t closure #1 in BackgroundGroupSessionManager.didDisconnect(client:)partial apply()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return closure #1 in BackgroundGroupSessionManager.didDisconnect(client:)();
}

uint64_t objectdestroyTm_6(void (*a1)(void), uint64_t a2)
{
  swift_unknownObjectRelease();

  a1(*(v2 + 40));

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

uint64_t partial apply for closure #4 in BackgroundGroupSessionManager.didUpdateContainers(client:containers:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #4 in BackgroundGroupSessionManager.didUpdateContainers(client:containers:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #2 in closure #1 in BackgroundGroupSessionManager.leave(identifier:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #2 in closure #1 in BackgroundGroupSessionManager.leave(identifier:)(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t partial apply for closure #1 in closure #1 in BackgroundGroupSessionManager.leave(identifier:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in closure #1 in BackgroundGroupSessionManager.leave(identifier:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in BackgroundGroupSessionManager.init(client:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in BackgroundGroupSessionManager.init(client:)(a1, v4, v5, v6);
}

uint64_t objectdestroy_83Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t outlined init with copy of InternalParticipant(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalParticipant(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of InternalParticipant(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalParticipant(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SystemCoordinatorParticipantRoleRequest.CodingKeys()
{
  v1 = 0x6574736575716572;
  if (*v0 != 1)
  {
    v1 = 0x64656E6769736572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SystemCoordinatorParticipantRoleRequest.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized SystemCoordinatorParticipantRoleRequest.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemCoordinatorParticipantRoleRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.CodingKeys and conformance SystemCoordinatorParticipantRoleRequest.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemCoordinatorParticipantRoleRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.CodingKeys and conformance SystemCoordinatorParticipantRoleRequest.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemCoordinatorParticipantRoleRequest.NoneCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.NoneCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.NoneCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemCoordinatorParticipantRoleRequest.NoneCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.NoneCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.NoneCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656449656C6F72 && a2 == 0xEE00726569666974)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SystemCoordinatorParticipantRoleRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities39SystemCoordinatorParticipantRoleRequestO08ResignedI10CodingKeys33_D6B73B33FDCA861DFE8CDB59CEDA0070LLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities39SystemCoordinatorParticipantRoleRequestO08ResignedI10CodingKeys33_D6B73B33FDCA861DFE8CDB59CEDA0070LLOGMR);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v23 = &v18 - v4;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities39SystemCoordinatorParticipantRoleRequestO09RequestedI10CodingKeys33_D6B73B33FDCA861DFE8CDB59CEDA0070LLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities39SystemCoordinatorParticipantRoleRequestO09RequestedI10CodingKeys33_D6B73B33FDCA861DFE8CDB59CEDA0070LLOGMR);
  v22 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v21 = &v18 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities39SystemCoordinatorParticipantRoleRequestO14NoneCodingKeys33_D6B73B33FDCA861DFE8CDB59CEDA0070LLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities39SystemCoordinatorParticipantRoleRequestO14NoneCodingKeys33_D6B73B33FDCA861DFE8CDB59CEDA0070LLOGMR);
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities39SystemCoordinatorParticipantRoleRequestO10CodingKeys33_D6B73B33FDCA861DFE8CDB59CEDA0070LLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities39SystemCoordinatorParticipantRoleRequestO10CodingKeys33_D6B73B33FDCA861DFE8CDB59CEDA0070LLOGMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  v13 = v1[1];
  v18 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.CodingKeys and conformance SystemCoordinatorParticipantRoleRequest.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (!v13)
  {
    v27 = 0;
    lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.NoneCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.NoneCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v19 + 8))(v8, v20);
    return (*(v10 + 8))(v12, v9);
  }

  if (v13 == 1)
  {
    v29 = 2;
    lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys();
    v14 = v23;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v25 + 8))(v14, v26);
    return (*(v10 + 8))(v12, v9);
  }

  v28 = 1;
  lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys();
  v16 = v21;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v17 = v24;
  KeyedEncodingContainer.encode(_:forKey:)();
  (*(v22 + 8))(v16, v17);
  return (*(v10 + 8))(v12, v9);
}

uint64_t SystemCoordinatorParticipantRoleRequest.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (!v2)
  {
    v3 = 0;
    return MEMORY[0x1B2715040](v3);
  }

  if (v2 == 1)
  {
    v3 = 2;
    return MEMORY[0x1B2715040](v3);
  }

  MEMORY[0x1B2715040](1);

  return String.hash(into:)();
}

Swift::Int SystemCoordinatorParticipantRoleRequest.hashValue.getter()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x1B2715040](1);
      String.hash(into:)();
      return Hasher._finalize()();
    }

    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1B2715040](v2);
  return Hasher._finalize()();
}

uint64_t SystemCoordinatorParticipantRoleRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities39SystemCoordinatorParticipantRoleRequestO08ResignedI10CodingKeys33_D6B73B33FDCA861DFE8CDB59CEDA0070LLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities39SystemCoordinatorParticipantRoleRequestO08ResignedI10CodingKeys33_D6B73B33FDCA861DFE8CDB59CEDA0070LLOGMR);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v37 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities39SystemCoordinatorParticipantRoleRequestO09RequestedI10CodingKeys33_D6B73B33FDCA861DFE8CDB59CEDA0070LLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities39SystemCoordinatorParticipantRoleRequestO09RequestedI10CodingKeys33_D6B73B33FDCA861DFE8CDB59CEDA0070LLOGMR);
  v42 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities39SystemCoordinatorParticipantRoleRequestO14NoneCodingKeys33_D6B73B33FDCA861DFE8CDB59CEDA0070LLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities39SystemCoordinatorParticipantRoleRequestO14NoneCodingKeys33_D6B73B33FDCA861DFE8CDB59CEDA0070LLOGMR);
  v39 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities39SystemCoordinatorParticipantRoleRequestO10CodingKeys33_D6B73B33FDCA861DFE8CDB59CEDA0070LLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities39SystemCoordinatorParticipantRoleRequestO10CodingKeys33_D6B73B33FDCA861DFE8CDB59CEDA0070LLOGMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - v12;
  v14 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.CodingKeys and conformance SystemCoordinatorParticipantRoleRequest.CodingKeys();
  v15 = v45;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v16 = v44;
    v37 = v11;
    v45 = v13;
    v17 = KeyedDecodingContainer.allKeys.getter();
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = *(v17 + 32);
      if (v18 == 1 && v19 != 3)
      {
        if (*(v17 + 32))
        {
          if (v19 == 1)
          {
            v48 = 1;
            lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys();
            v26 = v6;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            v27 = v43;
            v28 = v38;
            v29 = KeyedDecodingContainer.decode(_:forKey:)();
            v30 = v37;
            v34 = v29;
            v36 = v35;
            (*(v42 + 8))(v26, v28);
            (*(v30 + 8))(v45, v10);
            swift_unknownObjectRelease();
LABEL_16:
            *v27 = v34;
            v27[1] = v36;
            return __swift_destroy_boxed_opaque_existential_0(v46);
          }

          v49 = 2;
          lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys();
          v32 = v45;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v40 + 8))(v16, v41);
          (*(v37 + 8))(v32, v10);
          swift_unknownObjectRelease();
          v34 = 0;
          v36 = 1;
        }

        else
        {
          v47 = 0;
          lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.NoneCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.NoneCodingKeys();
          v31 = v45;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v39 + 8))(v9, v7);
          (*(v37 + 8))(v31, v10);
          swift_unknownObjectRelease();
          v34 = 0;
          v36 = 0;
        }

        v27 = v43;
        goto LABEL_16;
      }
    }

    v21 = type metadata accessor for DecodingError();
    swift_allocError();
    v22 = v10;
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v24 = &type metadata for SystemCoordinatorParticipantRoleRequest;
    v25 = v45;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v21 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v21);
    swift_willThrow();
    (*(v37 + 8))(v25, v22);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v46);
}

uint64_t specialized Collection<>.popFirst()()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL specialized Collection<>.popFirst()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SystemCoordinatorParticipantRoleRequest()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x1B2715040](1);
      String.hash(into:)();
      return Hasher._finalize()();
    }

    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1B2715040](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SystemCoordinatorParticipantRoleRequest(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (!v2)
  {
    v3 = 0;
    return MEMORY[0x1B2715040](v3);
  }

  if (v2 == 1)
  {
    v3 = 2;
    return MEMORY[0x1B2715040](v3);
  }

  MEMORY[0x1B2715040](1);

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SystemCoordinatorParticipantRoleRequest(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1B2715040](1);
      String.hash(into:)();
      return Hasher._finalize()();
    }

    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1B2715040](v3);
  return Hasher._finalize()();
}

uint64_t specialized static SystemCoordinatorParticipantRoleRequest.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!v3)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    outlined consume of SystemCoordinatorParticipantRoleRequest(*a1, 0);
    v7 = v4;
    v8 = 0;
LABEL_15:
    outlined consume of SystemCoordinatorParticipantRoleRequest(v7, v8);
    return 1;
  }

  if (v3 != 1)
  {
    if (v5 < 2)
    {
      goto LABEL_8;
    }

    v9 = *a1;
    if (v2 != v4 || v3 != v5)
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of SystemCoordinatorParticipantRoleRequest(v4, v5);
      outlined copy of SystemCoordinatorParticipantRoleRequest(v2, v3);
      outlined consume of SystemCoordinatorParticipantRoleRequest(v2, v3);
      outlined consume of SystemCoordinatorParticipantRoleRequest(v4, v5);
      return v11 & 1;
    }

    outlined copy of SystemCoordinatorParticipantRoleRequest(v9, v3);
    outlined copy of SystemCoordinatorParticipantRoleRequest(v2, v3);
    outlined consume of SystemCoordinatorParticipantRoleRequest(v2, v3);
    v7 = v2;
    v8 = v3;
    goto LABEL_15;
  }

  if (v5 != 1)
  {
LABEL_8:
    outlined copy of SystemCoordinatorParticipantRoleRequest(*a2, *(a2 + 8));
    outlined copy of SystemCoordinatorParticipantRoleRequest(v2, v3);
    outlined consume of SystemCoordinatorParticipantRoleRequest(v2, v3);
    outlined consume of SystemCoordinatorParticipantRoleRequest(v4, v5);
    return 0;
  }

  v6 = 1;
  outlined consume of SystemCoordinatorParticipantRoleRequest(*a1, 1uLL);
  outlined consume of SystemCoordinatorParticipantRoleRequest(v4, 1uLL);
  return v6;
}

unint64_t lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.CodingKeys and conformance SystemCoordinatorParticipantRoleRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.CodingKeys and conformance SystemCoordinatorParticipantRoleRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.CodingKeys and conformance SystemCoordinatorParticipantRoleRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.CodingKeys and conformance SystemCoordinatorParticipantRoleRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.CodingKeys and conformance SystemCoordinatorParticipantRoleRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.CodingKeys and conformance SystemCoordinatorParticipantRoleRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.CodingKeys and conformance SystemCoordinatorParticipantRoleRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.CodingKeys and conformance SystemCoordinatorParticipantRoleRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.CodingKeys and conformance SystemCoordinatorParticipantRoleRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.CodingKeys and conformance SystemCoordinatorParticipantRoleRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.CodingKeys and conformance SystemCoordinatorParticipantRoleRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.CodingKeys and conformance SystemCoordinatorParticipantRoleRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.CodingKeys and conformance SystemCoordinatorParticipantRoleRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys()
{
  result = lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys()
{
  result = lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.NoneCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.NoneCodingKeys()
{
  result = lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.NoneCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.NoneCodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.NoneCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.NoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.NoneCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.NoneCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.NoneCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.NoneCodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.NoneCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.NoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.NoneCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.NoneCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.NoneCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.NoneCodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.NoneCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.NoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.NoneCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.NoneCodingKeys);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SystemCoordinatorParticipantRoleRequest(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SystemCoordinatorParticipantRoleRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t specialized SystemCoordinatorParticipantRoleRequest.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574736575716572 && a2 == 0xED0000656C6F5264 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656E6769736572 && a2 == 0xEC000000656C6F52)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t PluginAttachmentLedgerTopic.participantsPublisher.getter(void (*a1)(void), uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  a1();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  lazy protocol witness table accessor for type CurrentValueSubject<[UInt64 : PluginAttachmentLedgerTopic.Participant], Never> and conformance CurrentValueSubject<A, B>(a4, a2, a3);
  v7 = Publisher.eraseToAnyPublisher()();

  return v7;
}

uint64_t protocol witness for PluginAttachmentLedgerTopicProvider.participantsPublisher.getter in conformance PluginAttachmentLedgerTopic(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  a3(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  lazy protocol witness table accessor for type CurrentValueSubject<[UInt64 : PluginAttachmentLedgerTopic.Participant], Never> and conformance CurrentValueSubject<A, B>(a6, a4, a5);
  v9 = Publisher.eraseToAnyPublisher()();

  return v9;
}

uint64_t protocol witness for PluginAttachmentLedgerTopicProvider.requestUploadToken() in conformance PluginAttachmentLedgerTopic(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return MEMORY[0x1EEDF8A10](a1);
}

uint64_t protocol witness for PluginAttachmentLedgerTopicProvider.refreshUploadToken() in conformance PluginAttachmentLedgerTopic(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return MEMORY[0x1EEDF8A08](a1);
}

uint64_t protocol witness for PluginAttachmentLedgerTopicProvider.requestDownloadToken(for:) in conformance PluginAttachmentLedgerTopic(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return MEMORY[0x1EEDF8A18](a1, a2);
}

uint64_t protocol witness for PluginAttachmentLedgerTopicProvider.upload(id:key:assetSkeleton:developerMetadata:storageLocation:fileHash:refSignature:) in conformance PluginAttachmentLedgerTopic(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return MEMORY[0x1EEDF8A60](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t protocol witness for PluginAttachmentLedgerTopicProvider.updateStatus(id:status:) in conformance PluginAttachmentLedgerTopic(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return MEMORY[0x1EEDF89F0](a1, a2);
}

uint64_t protocol witness for PluginAttachmentLedgerTopicProvider.remove(id:) in conformance PluginAttachmentLedgerTopic(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return MEMORY[0x1EEDF8A58](a1);
}

unint64_t instantiation function for generic protocol witness table for PluginAttachmentLedgerTopic(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PluginAttachmentLedgerTopic and conformance PluginAttachmentLedgerTopic();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PluginAttachmentLedgerTopic and conformance PluginAttachmentLedgerTopic()
{
  result = lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic and conformance PluginAttachmentLedgerTopic;
  if (!lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic and conformance PluginAttachmentLedgerTopic)
  {
    type metadata accessor for PluginAttachmentLedgerTopic();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic and conformance PluginAttachmentLedgerTopic);
  }

  return result;
}

uint64_t dispatch thunk of PluginAttachmentLedgerTopicProvider.requestUploadToken()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PluginAttachmentLedgerTopicProvider.refreshUploadToken()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PluginAttachmentLedgerTopicProvider.requestDownloadToken(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 64) + **(a4 + 64));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PluginAttachmentLedgerTopicProvider.upload(id:key:assetSkeleton:developerMetadata:storageLocation:fileHash:refSignature:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v20 = (*(a13 + 72) + **(a13 + 72));
  v18 = swift_task_alloc();
  *(v13 + 16) = v18;
  *v18 = v13;
  v18[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t dispatch thunk of PluginAttachmentLedgerTopicProvider.updateStatus(id:status:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 80) + **(a4 + 80));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PluginAttachmentLedgerTopicProvider.remove(id:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 88) + **(a3 + 88));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v9(a1, a2, a3);
}

uint64_t Topic.BootstrapPubSubTopicInfo.init(dataCryptorProvider:delegate:seqNumWatermark:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  result = outlined init with take of Transferable(a1, a5);
  a5[5] = a2;
  a5[6] = a3;
  a5[7] = a4;
  return result;
}

double Topic.topic.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t Topic.topic.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMR);
  v31 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11SubscribeOnVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO11SubscribeOnVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSo17OS_dispatch_queueCGMR);
  v32 = *(v12 - 8);
  v33 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AC11SubscribeOnVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSo17OS_dispatch_queueCGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC11SubscribeOnVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSo17OS_dispatch_queueCGGMR);
  v34 = *(v15 - 8);
  v35 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  swift_beginAccess();
  v1[2] = a1;

  if (a1)
  {
    PubSubTopic.$subscribers.getter();
    v19 = PubSubTopic.queue.getter();
    v30 = v3;
    v20 = v19;
    v37[0] = v19;
    v21 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
    type metadata accessor for OS_dispatch_queue();
    v28 = MEMORY[0x1E695C068];
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<[UInt64 : PubSubTopic.Participant]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMR, MEMORY[0x1E695C068]);
    v29 = v4;
    lazy protocol witness table accessor for type Topic and conformance Topic(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, type metadata accessor for OS_dispatch_queue, MEMORY[0x1E69E8028]);
    Publisher.subscribe<A>(on:options:)();
    outlined destroy of NSObject?(v8, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
    (*(v31 + 8))(v11, v9);

    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.SubscribeOn<Published<[UInt64 : PubSubTopic.Participant]>.Publisher, OS_dispatch_queue> and conformance Publishers.SubscribeOn<A, B>, &_s7Combine10PublishersO11SubscribeOnVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO11SubscribeOnVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSo17OS_dispatch_queueCGMR, MEMORY[0x1E695BCB8]);
    lazy protocol witness table accessor for type [UInt64 : PubSubTopic.Participant] and conformance <> [A : B]();
    v22 = v33;
    Publisher<>.removeDuplicates()();
    (*(v32 + 8))(v14, v22);
    v23 = (*(*v1 + 464))(v37);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Publishers.SubscribeOn<Published<[UInt64 : PubSubTopic.Participant]>.Publisher, OS_dispatch_queue>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC11SubscribeOnVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSo17OS_dispatch_queueCGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC11SubscribeOnVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSo17OS_dispatch_queueCGGMR, MEMORY[0x1E695BD38]);
    v24 = v35;
    Publisher<>.assign(to:)();
    (*(v34 + 8))(v17, v24);
    v23(v37, 0);
    v25 = v36;
    PubSubTopic.$queueState.getter();
    v26 = (*(*v1 + 512))(v37);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<PubSubTopic.QueueState>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMR, v28);
    v27 = v30;
    Publisher<>.assign(to:)();
    (*(v29 + 8))(v25, v27);
    v26(v37, 0);
  }

  return result;
}

uint64_t Topic.name.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t key path getter for Topic.receivedDataHandler : Topic@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 328))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Data, @unowned UInt64, @guaranteed [UInt64]?) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for Topic.receivedDataHandler : Topic(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Data, @in_guaranteed UInt64, @in_guaranteed [UInt64]?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 336);
  v8 = outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v3, v4);
  return v7(v6, v5, v8);
}

uint64_t Topic.receivedDataHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v1, *(v0 + 104));
  return v1;
}

uint64_t Topic.receivedDataHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 96);
  v6 = *(v2 + 104);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v5, v6);
}

uint64_t key path getter for Topic.pubSubStateChangedHandler : Topic@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 352))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed PlaybackSyncer.Message, @in_guaranteed UUID) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for Topic.pubSubStateChangedHandler : Topic(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed PlaybackSyncer.Message, @in_guaranteed UUID) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 360);
  v8 = outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v3, v4);
  return v7(v6, v5, v8);
}

uint64_t Topic.pubSubStateChangedHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v1, *(v0 + 120));
  return v1;
}

uint64_t Topic.pubSubStateChangedHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 112);
  v6 = *(v2 + 120);
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v5, v6);
}

uint64_t key path getter for Topic.catchupNeededHandler : Topic@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 376))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = _ss6UInt64VIegy_ABytIegnr_TRTA_0;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for Topic.catchupNeededHandler : Topic(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Error?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 384);
  v8 = outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v3, v4);
  return v7(v6, v5, v8);
}

uint64_t Topic.catchupNeededHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v1, *(v0 + 136));
  return v1;
}

uint64_t Topic.catchupNeededHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 128);
  v6 = *(v2 + 136);
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v5, v6);
}

uint64_t Topic.dataCryptor.didset()
{
  v1 = v0;
  if (one-time initialization token for topic != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.topic);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1[10], v1[11], v9);
    _os_log_impl(&dword_1AEE80000, v3, v4, "Updating PubSubTopic dataCryptorProvider, topic=%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B2715BA0](v6, -1, -1);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }

  result = (*(*v1 + 224))();
  if (result)
  {
    swift_beginAccess();
    v8 = v1[18];
    if (v8)
    {
      v9[3] = swift_getObjectType();
      v9[0] = v8;
      swift_unknownObjectRetain_n();
      PubSubTopic.refreshDataCryptorProvider(with:)();
      swift_unknownObjectRelease();

      return __swift_destroy_boxed_opaque_existential_0(v9);
    }

    else
    {
    }
  }

  return result;
}

uint64_t Topic.dataCryptor.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 144) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  Topic.dataCryptor.didset();
  return swift_unknownObjectRelease();
}

uint64_t (*Topic.dataCryptor.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return Topic.dataCryptor.modify;
}

uint64_t Topic.dataCryptor.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return Topic.dataCryptor.didset();
  }

  return result;
}

uint64_t key path getter for Topic.subscribedParticipants : Topic@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 424))();
  *a2 = result;
  return result;
}

uint64_t key path setter for Topic.subscribedParticipants : Topic(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 432);

  return v2(v3);
}

uint64_t Topic.subscribedParticipants.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t Topic.subscribedParticipants.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*Topic.subscribedParticipants.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return Topic.subscribedParticipants.modify;
}

uint64_t key path setter for Topic.$subscribedParticipants : Topic(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMR);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*(**a2 + 456))(v6);
}

uint64_t Topic.$subscribedParticipants.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*Topic.$subscribedParticipants.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15GroupActivities5Topic__subscribedParticipants;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return Topic.$subscribedParticipants.modify;
}

uint64_t key path setter for Topic.queueState : Topic(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PubSubTopic.QueueState();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 480))(v6);
}

uint64_t Topic.queueState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t Topic.queueState.setter(uint64_t a1)
{
  v2 = type metadata accessor for PubSubTopic.QueueState();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v3 + 16))(v5, a1, v2);

  static Published.subscript.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Topic.queueState.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return Topic.queueState.modify;
}

uint64_t key path setter for Topic.$queueState : Topic(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMR);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*(**a2 + 504))(v6);
}

uint64_t Topic.$subscribedParticipants.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t Topic.$queueState.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMd, &_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*Topic.$queueState.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15GroupActivities5Topic__queueState;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMd, &_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return Topic.$queueState.modify;
}

uint64_t key path getter for Topic.invalidationHandler : Topic@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 520))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = _ss5Error_pIegg_sAA_pytIegnr_TRTA_0;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for Topic.invalidationHandler : Topic(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Error?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 528);
  v8 = outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v3, v4);
  return v7(v6, v5, v8);
}

uint64_t key path getter for Topic.requestEncryptionKeysHandler : Topic@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 544))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = thunk for @escaping @callee_guaranteed (@guaranteed [UInt64]?) -> ()partial apply;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for Topic.requestEncryptionKeysHandler : Topic(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed [UInt64]?) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 552);
  v8 = outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v3, v4);
  return v7(v6, v5, v8);
}

uint64_t Topic.invalidationHandler.getter(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t Topic.invalidationHandler.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t Topic.seqNumWatermark.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15GroupActivities5Topic_seqNumWatermark;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t Topic.__allocating_init(name:delegate:pubSubTopicGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v16 = a7(a1, a2, a3, a5, a6, v7, ObjectType, a4);
  swift_unknownObjectRelease();
  return v16;
}

Swift::Void __swiftcall Topic.subscribe()()
{
  v1 = v0;
  LOBYTE(v32[0]) = 0;
  if (dispatch thunk of StateMachine.execute(_:)())
  {
    if ((*(*v0 + 400))())
    {
      if (one-time initialization token for topic != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      __swift_project_value_buffer(v2, static Log.topic);

      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v32[0] = v6;
        *v5 = 136315138;
        *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1[10], v1[11], v32);
        _os_log_impl(&dword_1AEE80000, v3, v4, "Subscribing, topic=%s", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v6);
        MEMORY[0x1B2715BA0](v6, -1, -1);
        MEMORY[0x1B2715BA0](v5, -1, -1);
      }

      v7 = v1[10];
      v8 = v1[11];
      v9 = *(*v1 + 544);

      v11 = v9(v10);
      if (v11)
      {
        v13 = v11;
        v14 = v12;
        v15 = swift_allocObject();
        *(v15 + 16) = v13;
        *(v15 + 24) = v14;
        v16 = thunk for @escaping @callee_guaranteed (@guaranteed [UInt64]?) -> ()partial apply;
      }

      else
      {
        v15 = swift_allocObject();
        *(v15 + 16) = partial apply for closure #1 in Topic.subscribe();
        *(v15 + 24) = v1;

        v16 = _sSays6UInt64VGSgIegg_ADytIegnr_TRTA_0;
      }

      v22 = v16;
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = v15;
      v24 = type metadata accessor for GroupSessionDataCryptorProvider();
      swift_allocObject();
      swift_unknownObjectRetain();
      v25 = GroupSessionDataCryptorProvider.init(topic:dataCryptor:refreshEncryptionKeysHandler:)();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v26 = v1[8];
        ObjectType = swift_getObjectType();
        v28 = (*(v26 + 8))(v7, v8, ObjectType, v26);
        swift_unknownObjectRelease();
      }

      else
      {
        v28 = 0;
      }

      v1[9] = v28;

      v32[3] = v24;
      v32[4] = MEMORY[0x1E69976B8];
      v32[0] = v25;
      v29 = lazy protocol witness table accessor for type Topic and conformance Topic(&lazy protocol witness table cache variable for type Topic and conformance Topic, type metadata accessor for Topic, &protocol conformance descriptor for Topic);
      v30 = (*(*v1 + 568))();
      v32[5] = v1;
      v32[6] = v29;
      v32[7] = v30;
      v31 = v1[3];

      v31(v32);
      swift_allocObject();
      swift_weakInit();
      swift_allocObject();
      swift_weakInit();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore11PubSubTopicCs5Error_pGMd, &_s7Combine12AnyPublisherVy14CopresenceCore11PubSubTopicCs5Error_pGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<PubSubTopic, Error> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore11PubSubTopicCs5Error_pGMd, &_s7Combine12AnyPublisherVy14CopresenceCore11PubSubTopicCs5Error_pGMR, MEMORY[0x1E695BED8]);
      Publisher.sink(receiveCompletion:receiveValue:)();

      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      swift_unknownObjectRelease();

      outlined destroy of Topic.BootstrapPubSubTopicInfo(v32);
    }

    else
    {
      if (one-time initialization token for topic != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Log.topic);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v32[0] = v21;
        *v20 = 136315138;
        *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1[10], v1[11], v32);
        _os_log_impl(&dword_1AEE80000, v18, v19, "No data cryptor is available for topic=%s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x1B2715BA0](v21, -1, -1);
        MEMORY[0x1B2715BA0](v20, -1, -1);
      }
    }
  }
}

void closure #1 in Topic.subscribe()(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for topic != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.topic);

  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a2 + 80), *(a2 + 88), &v8);
    _os_log_impl(&dword_1AEE80000, oslog, v4, "Topic missing 'requestEncryptionKeysHandler', ignoring request, topic=%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B2715BA0](v6, -1, -1);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }
}

void closure #2 in Topic.subscribe()(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (v2)
    {
      v5 = v2;
      if (one-time initialization token for topic != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Log.topic);
      v7 = v2;

      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v26[0] = v11;
        *v10 = 136315394;
        v12 = v2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v13 = String.init<A>(reflecting:)();
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v26);

        *(v10 + 4) = v15;
        *(v10 + 12) = 2080;
        v16 = v4[10];
        v17 = v4[11];

        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v26);

        *(v10 + 14) = v18;
        _os_log_impl(&dword_1AEE80000, v8, v9, "Failed to subscribe, error=%s topic=%s", v10, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B2715BA0](v11, -1, -1);
        MEMORY[0x1B2715BA0](v10, -1, -1);
      }

      LOBYTE(v26[0]) = 3;
      dispatch thunk of StateMachine.execute(_:)();
      v4[9] = 0;

      Lock.withLock<A>(_:)();

      v20 = (*(*v4 + 520))(v19);
      if (v20)
      {
        v22 = v20;
        v23 = v21;
        lazy protocol witness table accessor for type Topic.Errors and conformance Topic.Errors();
        v24 = swift_allocError();
        *v25 = 1;
        v22(v24);

        outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v22, v23);

        return;
      }
    }
  }
}

uint64_t closure #1 in closure #2 in Topic.subscribe()(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15GroupActivities5Topic_pendingMessages;
  swift_beginAccess();
  v23 = v2;
  v24 = a1;
  v3 = *(a1 + v2);
  v4 = *(v3 + 16);

  if (v4)
  {
    v6 = 0;
    v7 = (v3 + 32);
    v8 = static Log.topic;
    v25 = v4;
    v26 = v3;
    while (v6 < *(v3 + 16))
    {
      v31 = *v7;
      v9 = v7[1];
      v10 = v7[2];
      v11 = v7[3];
      v35 = *(v7 + 8);
      v33 = v10;
      v34 = v11;
      v32 = v9;
      outlined init with copy of Topic.PendingMessage(&v31, v29);
      if (one-time initialization token for topic != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, v8);
      outlined init with copy of Topic.PendingMessage(&v31, v29);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      outlined destroy of Topic.PendingMessage(&v31);
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v36 = v27;
        *v15 = 136315138;
        v29[2] = v33;
        v29[3] = v34;
        v30 = v35;
        v29[0] = v31;
        v29[1] = v32;
        outlined init with copy of Topic.PendingMessage(&v31, v28);
        v16 = String.init<A>(reflecting:)();
        v18 = v8;
        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v36);

        *(v15 + 4) = v19;
        v8 = v18;
        _os_log_impl(&dword_1AEE80000, v13, v14, "Dropping pending message due to error in subscribing: %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        v4 = v25;
        v3 = v26;
        MEMORY[0x1B2715BA0](v27, -1, -1);
        MEMORY[0x1B2715BA0](v15, -1, -1);
      }

      v20 = *(&v34 + 1);
      if (*(&v34 + 1))
      {
        lazy protocol witness table accessor for type Topic.Errors and conformance Topic.Errors();
        v21 = swift_allocError();
        *v22 = 0;
        v20();
      }

      result = outlined destroy of Topic.PendingMessage(&v31);
      ++v6;
      v7 = (v7 + 72);
      if (v4 == v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    *(v24 + v23) = MEMORY[0x1E69E7CC0];
  }

  return result;
}

void *closure #3 in Topic.subscribe()(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v41 = v9;

    Topic.topic.setter(v12);
    if (one-time initialization token for topic != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Log.topic);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();

    v16 = os_log_type_enabled(v14, v15);
    v42 = v7;
    v43 = v5;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v40 = v6;
      v19 = v3;
      v20 = v2;
      v21 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      v23 = v11[10];
      v22 = v11[11];

      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, aBlock);

      *(v17 + 4) = v24;
      _os_log_impl(&dword_1AEE80000, v14, v15, "Successfully subscribed, topic=%s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      v25 = v21;
      v2 = v20;
      v3 = v19;
      v6 = v40;
      MEMORY[0x1B2715BA0](v25, -1, -1);
      MEMORY[0x1B2715BA0](v17, -1, -1);
    }

    LOBYTE(aBlock[0]) = 2;
    if (dispatch thunk of StateMachine.execute(_:)())
    {
      v26 = (*(*v11 + 400))();
      if (v26)
      {
        v27 = v26;
        if ((*(*v11 + 224))())
        {
          ObjectType = swift_getObjectType();
          aBlock[0] = v27;
          swift_unknownObjectRetain();
          PubSubTopic.refreshDataCryptorProvider(with:)();
          swift_unknownObjectRelease();

          __swift_destroy_boxed_opaque_existential_0(aBlock);
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      Lock.withLock<A>(_:)();

      (*(*v11 + 576))(0);
    }

    else
    {

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        aBlock[0] = v31;
        *v30 = 136315138;
        v32 = v11[10];
        v33 = v11[11];

        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, aBlock);

        *(v30 + 4) = v34;
        _os_log_impl(&dword_1AEE80000, v28, v29, "Unsubscribed while subscribing, topic=%s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x1B2715BA0](v31, -1, -1);
        MEMORY[0x1B2715BA0](v30, -1, -1);
      }

      if ((*(*v11 + 224))())
      {
        v40 = PubSubTopic.queue.getter();

        v47 = partial apply for closure #1 in closure #3 in Topic.subscribe();
        v48 = v11;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        ObjectType = &block_descriptor_126;
        v35 = _Block_copy(aBlock);

        v36 = v41;
        static DispatchQoS.unspecified.getter();
        v44 = MEMORY[0x1E69E7CC0];
        lazy protocol witness table accessor for type Topic and conformance Topic(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
        v37 = v43;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v38 = v40;
        MEMORY[0x1B27147B0](0, v36, v37, v35);
        _Block_release(v35);

        (*(v3 + 8))(v37, v2);
        (*(v42 + 8))(v36, v6);
      }
    }
  }

  return result;
}

uint64_t closure #1 in closure #3 in Topic.subscribe()(uint64_t a1)
{
  result = (*(*a1 + 224))();
  if (result)
  {
    PubSubTopic.unsubscribe(force:)(0);
  }

  return result;
}

uint64_t closure #2 in closure #3 in Topic.subscribe()(uint64_t a1)
{
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v4 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15GroupActivities5Topic_pendingMessages;
  swift_beginAccess();
  v31 = v6;
  v7 = *(*(a1 + v6) + 16);
  v41 = *(a1 + v6);

  v40 = v7;
  if (v7)
  {
    v9 = 0;
    v34 = v53;
    v33 = (v2 + 8);
    v32 = (v4 + 8);
    v10 = (v41 + 96);
    v39 = a1;
    while (v9 < *(v41 + 16))
    {
      v13 = *(v10 - 4);
      v48 = *(v10 - 3);
      v14 = *(v10 - 4);
      v46 = *(v10 - 3);
      v45 = *(v10 - 16);
      v16 = *(v10 - 1);
      v15 = *v10;
      v17 = *(*a1 + 224);
      v47 = v13;
      v49 = v13;
      outlined copy of Data._Representation(v13, *(&v13 + 1));
      v50 = v48;

      v18 = outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v16, v15);
      v19 = v17(v18);
      if (v19)
      {
        v20 = v19;
        v44 = PubSubTopic.queue.getter();
        v21 = swift_allocObject();
        swift_weakInit();
        v22 = swift_allocObject();
        *(v22 + 16) = v20;
        *(v22 + 24) = v21;
        v23 = v48;
        *(v22 + 32) = v47;
        *(v22 + 48) = v23;
        v42 = v14;
        v24 = v46;
        *(v22 + 64) = v14;
        *(v22 + 72) = v24;
        *(v22 + 80) = v45;
        *(v22 + 88) = v16;
        *(v22 + 96) = v15;
        v43 = v15;
        v53[2] = closure #1 in Topic._sendData(_:to:messageTypeIdentifier:previousSeqNumUnacked:completion:)partial apply;
        v53[3] = v22;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v53[0] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v53[1] = &block_descriptor_134;
        *&v47 = _Block_copy(aBlock);

        outlined copy of Data._Representation(v49, *(&v49 + 1));

        outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v16, v15);
        v25 = v35;
        static DispatchQoS.unspecified.getter();
        v51 = MEMORY[0x1E69E7CC0];
        lazy protocol witness table accessor for type Topic and conformance Topic(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        *&v48 = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
        v26 = v37;
        v27 = v38;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v28 = v47;
        v29 = v44;
        MEMORY[0x1B27147B0](0, v25, v26, v47);
        _Block_release(v28);

        (*v33)(v26, v27);
        (*v32)(v25, v36);

        outlined consume of Data._Representation(v49, *(&v49 + 1));

        v11 = v48;
        v12 = v43;
      }

      else
      {
        outlined consume of Data._Representation(v49, *(&v49 + 1));

        v11 = v16;
        v12 = v15;
      }

      result = outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v11, v12);
      ++v9;
      v10 += 9;
      a1 = v39;
      if (v40 == v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    *(a1 + v31) = MEMORY[0x1E69E7CC0];
  }

  return result;
}

Swift::Void __swiftcall Topic.unsubscribe()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(aBlock) = 1;
  if (dispatch thunk of StateMachine.execute(_:)())
  {
    if (one-time initialization token for topic != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.topic);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = v5;
      v14 = v6;
      v15 = swift_slowAlloc();
      aBlock = v15;
      *v12 = 136315138;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v1 + 80), *(v1 + 88), &aBlock);
      _os_log_impl(&dword_1AEE80000, v10, v11, "Unsubscribing, topic=%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      v16 = v15;
      v6 = v14;
      v5 = v13;
      MEMORY[0x1B2715BA0](v16, -1, -1);
      MEMORY[0x1B2715BA0](v12, -1, -1);
    }

    swift_beginAccess();
    specialized Set._Variant.removeAll(keepingCapacity:)(1);
    v17 = swift_endAccess();
    v18 = (*(*v1 + 224))(v17);
    if (v18)
    {
      v19 = v18;
      v40 = PubSubTopic.queue.getter();
      v47 = partial apply for closure #1 in Topic.unsubscribe();
      v48 = v19;
      aBlock = MEMORY[0x1E69E9820];
      v44 = 1107296256;
      v45 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v46 = &block_descriptor_12;
      v39 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v42 = MEMORY[0x1E69E7CC0];
      v20 = v2;
      v21 = lazy protocol witness table accessor for type Topic and conformance Topic(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      v22 = v8;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      v38[1] = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
      v38[2] = v23;
      v24 = v22;
      v38[3] = v21;
      v25 = v20;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v26 = v22;
      v28 = v39;
      v27 = v40;
      MEMORY[0x1B27147B0](0, v26, v4, v39);
      _Block_release(v28);

      v29 = *(v41 + 8);
      v30 = v41 + 8;
      v29(v4, v25);
      v31 = *(v6 + 8);
      v40 = v5;
      v31(v24, v5);

      v32 = PubSubTopic.reporter.getter();
      if (v32)
      {
        v39 = v29;
        v33 = v32;
        v34 = PubSubTopicReporter.queue.getter();
        v35 = swift_allocObject();
        *(v35 + 16) = v33;
        *(v35 + 24) = v19;
        v47 = partial apply for closure #2 in Topic.unsubscribe();
        v48 = v35;
        aBlock = MEMORY[0x1E69E9820];
        v44 = 1107296256;
        v45 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v46 = &block_descriptor_25_0;
        v36 = _Block_copy(&aBlock);
        v41 = v30;
        v37 = v36;

        static DispatchQoS.unspecified.getter();
        v42 = MEMORY[0x1E69E7CC0];
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x1B27147B0](0, v24, v4, v37);
        _Block_release(v37);

        (v39)(v4, v25);
        v31(v24, v40);
      }
    }
  }
}
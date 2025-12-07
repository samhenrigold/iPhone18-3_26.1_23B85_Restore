uint64_t closure #1 in WorkoutManagedConfigurationsStore.updateManagedOccurrence(externalProvider:managedConfiguration:completionDate:)(uint64_t *a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  (*(v4 + 16))(v7, v8 + v9, v3);
  v10 = static UUID.== infix(_:_:)();
  (*(v4 + 8))(v7, v3);
  return v10 & 1;
}

void closure #2 in WorkoutManagedConfigurationsStore.updateManagedOccurrence(externalProvider:managedConfiguration:completionDate:)(int a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_getErrorValue();
    v11 = Error.localizedDescription.getter();
    v13 = v12;
  }

  else
  {
    v13 = 0xE300000000000000;
    v11 = 7104846;
  }

  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static WOLog.app);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v34 = v11;
    v18 = v17;
    v35 = swift_slowAlloc();
    v36 = v35;
    *v18 = 136315906;
    swift_beginAccess();
    v19 = *(a3 + 16);
    v33 = a1;
    v20 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    (*(v7 + 16))(v10, v19 + v20, v6);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v7 + 8))(v10, v6);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v36);

    *(v18 + 4) = v24;
    *(v18 + 12) = 1024;
    *(v18 + 14) = v33 & 1;
    *(v18 + 18) = 2080;
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v13, &v36);

    *(v18 + 20) = v25;
    *(v18 + 28) = 2080;
    swift_beginAccess();
    v26 = *(a3 + 16);
    v27 = WorkoutConfiguration.logDisplayName.getter();
    v29 = v28;

    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v36);

    *(v18 + 30) = v30;
    _os_log_impl(&dword_20AEA4000, v15, v16, "[ManagedConfigurationStore] Saved occurrence for sanitized managed_configuration: %s, success: %{BOOL}d, error: %s (%s)", v18, 0x26u);
    v31 = v35;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v31, -1, -1);
    MEMORY[0x20F2E9420](v18, -1, -1);
  }

  else
  {
  }
}

Swift::Void __swiftcall WorkoutManagedConfigurationsStore.loadIfNeeded(enteringForeground:)(Swift::Bool enteringForeground)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v63 = *(v4 - 8);
  v5 = *(v63 + 64);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v62 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v55 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v64 = &v55 - v13;
  v14 = v1[15];
  v15 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v14);
  v16 = (*(v15 + 8))(v14, v15);
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = __swift_project_value_buffer(v17, static WOLog.app);

  v61 = v18;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 67109888;
    v22 = *(v2 + 160);
    *(v21 + 4) = v22 ^ 1;
    *(v21 + 8) = 1024;
    *(v21 + 10) = v22;

    *(v21 + 14) = 1024;
    *(v21 + 16) = v16 & 1;
    *(v21 + 20) = 1024;
    *(v21 + 22) = enteringForeground;
    _os_log_impl(&dword_20AEA4000, v19, v20, "[ManagedConfigurationStore] loadIfNeeded: %{BOOL}d (loaded: %{BOOL}d, canLoadConfigurations: %{BOOL}d, enteringForeground: %{BOOL}d)", v21, 0x1Au);
    MEMORY[0x20F2E9420](v21, -1, -1);

    if ((v16 & 1) == 0)
    {
      return;
    }
  }

  else
  {

    if ((v16 & 1) == 0)
    {
      return;
    }
  }

  if (*(v2 + 160) != 1 || enteringForeground)
  {
    v23 = v64;
    UUID.init()();
    v24 = v2[10];
    v25 = v2[11];
    __swift_project_boxed_opaque_existential_1(v2 + 7, v24);
    v66 = 3;
    v57 = (*(v25 + 8))(&v66, v23, 0xD000000000000034, 0x800000020B468210, v24, v25, 15.0);
    v26 = v63;
    v59 = *(v63 + 16);
    v60 = v63 + 16;
    v59(v11, v23, v4);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v56 = v28;
      v29 = v26;
      v30 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v65 = v55;
      *v30 = 136315650;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(1702256979, 0xE400000000000000, &v65);
      *(v30 + 12) = 2080;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      v58 = *(v29 + 8);
      v58(v11, v4);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v65);

      *(v30 + 14) = v34;
      *(v30 + 22) = 2080;
      if (v57)
      {
        if (v57 == 2)
        {
          v35 = 0xEC00000065746165;
          v36 = 0x7243746F6E6E6163;
        }

        else if (v57 == 1)
        {
          v35 = 0xED00007374736978;
          v36 = 0x4579646165726C61;
        }

        else
        {
          v36 = 0;
          v35 = 0xE000000000000000;
        }
      }

      else
      {
        v35 = 0xE700000000000000;
        v36 = 0x73736563637573;
      }

      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v35, &v65);

      *(v30 + 24) = v37;
      _os_log_impl(&dword_20AEA4000, v27, v56, "[ManagedConfigurationStore] load background assertion (%s, %s) acquired: %s", v30, 0x20u);
      v38 = v55;
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v38, -1, -1);
      MEMORY[0x20F2E9420](v30, -1, -1);

      v26 = v63;
    }

    else
    {

      v58 = *(v26 + 8);
      v58(v11, v4);
    }

    static Date.timeIntervalSinceReferenceDate.getter();
    v40 = v39;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      v45 = [objc_opt_self() currentThread];
      *(v43 + 4) = v45;
      *v44 = v45;
      _os_log_impl(&dword_20AEA4000, v41, v42, "[ManagedConfigurationStore] loading all workout_managed_configurations from thread: %@", v43, 0xCu);
      _s10Foundation4UUIDVSgWOhTm_5(v44, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v44, -1, -1);
      MEMORY[0x20F2E9420](v43, -1, -1);
    }

    v46 = swift_allocObject();
    swift_weakInit();
    v47 = v62;
    v48 = v64;
    v59(v62, v64, v4);
    v49 = (*(v26 + 80) + 25) & ~*(v26 + 80);
    v50 = v4;
    v51 = swift_allocObject();
    *(v51 + 16) = v46;
    *(v51 + 24) = 3;
    (*(v26 + 32))(v51 + v49, v47, v4);
    *(v51 + ((v5 + v49 + 7) & 0xFFFFFFFFFFFFFFF8)) = v40;
    v52 = v2[5];
    v53 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v52);
    v54 = *(v53 + 88);

    v54(partial apply for closure #1 in WorkoutManagedConfigurationsStore.loadIfNeeded(enteringForeground:), v51, v52, v53);

    v58(v48, v50);
  }
}

uint64_t closure #1 in WorkoutManagedConfigurationsStore.loadIfNeeded(enteringForeground:)(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, uint64_t a5, double a6)
{
  v50 = a4;
  v51 = a1;
  v52 = a2;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v46 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchQoS();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v12);
  v44 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v14, v17);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v44 - v20;
  v22 = *(v15 + 16);
  v22(&v44 - v20, a5, v14);
  v54 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22(v54, v21, v14);
  v23 = (*(v15 + 80) + 25) & ~*(v15 + 80);
  v24 = (v16 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = a3;
  *(v26 + 16) = a3;
  v28 = v50;
  *(v26 + 24) = v50;
  v29 = *(v15 + 32);
  v53 = v14;
  v29(v26 + v23, v21, v14);
  *(v26 + v24) = a6;
  v31 = v51;
  v30 = v52;
  *(v26 + v25) = v51;
  *(v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) = v30;
  v32 = v30;
  v33 = objc_opt_self();
  v34 = v32;

  if ([v33 isMainThread])
  {
    v35 = v54;
    closure #1 in closure #1 in WorkoutManagedConfigurationsStore.loadIfNeeded(enteringForeground:)(v27, v28, v54, v31, v32, a6);

    v36 = v35;
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    v37 = static OS_dispatch_queue.main.getter();
    v38 = swift_allocObject();
    *(v38 + 16) = partial apply for closure #1 in closure #1 in WorkoutManagedConfigurationsStore.loadIfNeeded(enteringForeground:);
    *(v38 + 24) = v26;
    aBlock[4] = closure #1 in static DispatchUtilities.ensureMainQueueOrAsync(block:)partial apply;
    aBlock[5] = v38;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_56_0;
    v39 = _Block_copy(aBlock);

    v40 = v44;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v41 = v46;
    v42 = v49;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v40, v41, v39);
    _Block_release(v39);

    (*(v48 + 8))(v41, v42);
    (*(v45 + 8))(v40, v47);
    v36 = v54;
  }

  return (*(v15 + 8))(v36, v53);
}

void closure #1 in closure #1 in WorkoutManagedConfigurationsStore.loadIfNeeded(enteringForeground:)(uint64_t a1, char a2, int64_t a3, uint64_t a4, void *a5, double a6)
{
  LOBYTE(v10) = a2;
  static Date.timeIntervalSinceReferenceDate.getter();
  v13 = v12;
  if (one-time initialization token for app != -1)
  {
LABEL_47:
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static WOLog.app);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    a6 = v13 - a6;
    v17 = swift_slowAlloc();
    *v17 = 134218240;
    *(v17 + 4) = *(a4 + 16);

    *(v17 + 12) = 2048;
    *(v17 + 14) = a6;
    _os_log_impl(&dword_20AEA4000, v15, v16, "[ManagedConfigurationStore] loaded %ld workout_managed_configurations from database, elapsed time: %f seconds", v17, 0x16u);
    MEMORY[0x20F2E9420](v17, -1, -1);

    v76 = v10;
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v76 = v10;
  if (!a5)
  {
LABEL_9:
    v75 = a3;
    a5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore16ExternalProviderC_SayAC0C13ConfigurationCGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v10 = a4 + 64;
    v33 = 1 << *(a4 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(a4 + 64);
    v36 = (v33 + 63) >> 6;

    a3 = 0;
    while (1)
    {
      while (1)
      {
        do
        {
          if (!v35)
          {
            while (1)
            {
              v41 = a3 + 1;
              if (__OFADD__(a3, 1))
              {
                __break(1u);
                goto LABEL_47;
              }

              if (v41 >= v36)
              {
                break;
              }

              v35 = *(v10 + 8 * v41);
              ++a3;
              if (v35)
              {
                a3 = v41;
                goto LABEL_12;
              }
            }

            swift_beginAccess();
            Strong = swift_weakLoadStrong();
            if (Strong && (v58 = Strong, swift_beginAccess(), v59 = *(v58 + 136), , , v60 = , _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ11WorkoutCore16ExternalProviderC_SayAC0B13ConfigurationCGTt1g5(v60, v59), LOBYTE(v58) = v61, , , (v58 & 1) != 0))
            {

              v62 = Logger.logObject.getter();
              v63 = static os_log_type_t.default.getter();
              a3 = v75;
              v29 = v76;
              if (os_log_type_enabled(v62, v63))
              {
                v64 = swift_slowAlloc();
                *v64 = 0;
                _os_log_impl(&dword_20AEA4000, v62, v63, "[ManagedConfigurationStore] queried configurations match current cache - will skip reloading", v64, 2u);
                MEMORY[0x20F2E9420](v64, -1, -1);
              }
            }

            else
            {
              v65 = Logger.logObject.getter();
              v66 = static os_log_type_t.default.getter();
              a3 = v75;
              v29 = v76;
              if (os_log_type_enabled(v65, v66))
              {
                v67 = swift_slowAlloc();
                *v67 = 0;
                _os_log_impl(&dword_20AEA4000, v65, v66, "[ManagedConfigurationStore] queried configurations are different from current cache - reloading!", v67, 2u);
                MEMORY[0x20F2E9420](v67, -1, -1);
              }

              swift_beginAccess();
              v68 = swift_weakLoadStrong();
              if (v68)
              {
                v69 = v68;
                swift_beginAccess();
                *(v69 + 136) = a5;
              }

              v62 = [objc_opt_self() defaultCenter];
              if (one-time initialization token for managedConfigurationsDidUpdate != -1)
              {
                swift_once();
              }

              [v62 postNotificationName:static NSNotificationName.managedConfigurationsDidUpdate object:0];
            }

            v70 = Logger.logObject.getter();
            v71 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v70, v71))
            {
              v72 = swift_slowAlloc();
              *v72 = 0;
              _os_log_impl(&dword_20AEA4000, v70, v71, "[ManagedConfigurationStore] finished loading", v72, 2u);
              MEMORY[0x20F2E9420](v72, -1, -1);
            }

            swift_beginAccess();
            v31 = swift_weakLoadStrong();
            if (v31)
            {
              v32 = 1;
              goto LABEL_44;
            }

            goto LABEL_45;
          }

LABEL_12:
          v37 = __clz(__rbit64(v35));
          v35 &= v35 - 1;
          v38 = (a3 << 9) | (8 * v37);
          v39 = *(*(a4 + 48) + v38);
          v40 = *(*(a4 + 56) + v38);
          swift_beginAccess();
        }

        while (*(v39 + 24) != 2);
        swift_beginAccess();
        v42 = *(v39 + 16);
        swift_bridgeObjectRetain_n();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v77 = a5;
        v44 = specialized __RawDictionaryStorage.find<A>(_:)(v42);
        v45 = a5[2];
        v46 = (v43 & 1) == 0;
        v47 = v45 + v46;
        if (__OFADD__(v45, v46))
        {
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          type metadata accessor for ExternalProvider(0);
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        if (a5[3] < v47)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v43 & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v74 = v44;
          v52 = v43;
          specialized _NativeDictionary.copy()();
          v53 = v52;
          v44 = v74;
          a5 = v77;
          if ((v53 & 1) == 0)
          {
            goto LABEL_27;
          }
        }

LABEL_25:
        *(a5[7] + 8 * v44) = v40;
      }

      v48 = v43;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v47, isUniquelyReferenced_nonNull_native);
      v49 = specialized __RawDictionaryStorage.find<A>(_:)(v42);
      if ((v48 & 1) != (v50 & 1))
      {
        goto LABEL_50;
      }

      v44 = v49;
      v51 = v48;
      a5 = v77;
      if (v51)
      {
        goto LABEL_25;
      }

LABEL_27:
      a5[(v44 >> 6) + 8] |= 1 << v44;
      *(a5[6] + 8 * v44) = v42;
      *(a5[7] + 8 * v44) = v40;

      v54 = a5[2];
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_49;
      }

      a5[2] = v56;
    }
  }

LABEL_4:
  v18 = a5;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = a3;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v78[0] = v23;
    *v22 = 136315138;
    v24 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v25 = String.init<A>(describing:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v78);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_20AEA4000, v19, v20, "[ManagedConfigurationStore] failed to fetch managed configurations due to: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_17(v23);
    MEMORY[0x20F2E9420](v23, -1, -1);
    v28 = v22;
    a3 = v21;
    MEMORY[0x20F2E9420](v28, -1, -1);
  }

  v29 = v76;
  swift_beginAccess();
  v30 = swift_weakLoadStrong();

  if (v30)
  {
    v31 = v30;
    v32 = 0;
LABEL_44:
    *(v31 + 160) = v32;
  }

LABEL_45:
  $defer #1 () in closure #1 in closure #1 in WorkoutManagedConfigurationsStore.loadIfNeeded(enteringForeground:)(a1, v29, a3);
}

double $defer #1 () in closure #1 in closure #1 in WorkoutManagedConfigurationsStore.loadIfNeeded(enteringForeground:)(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    outlined init with copy of BackgroundAssertionManagerProtocol(Strong + 56, v30);

    v11 = v31;
    v12 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v29 = a2;
    (*(v12 + 16))(&v29, a3, v11, v12);
    __swift_destroy_boxed_opaque_existential_1Tm_17(v30);
  }

  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static WOLog.app);
  (*(v6 + 16))(v9, a3, v5);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v30[0] = v17;
    v18 = 0xE700000000000000;
    v19 = 0x6E6F6973736553;
    *v16 = 136315394;
    if (a2 == 1)
    {
      v19 = 0x797265766F636552;
      v18 = 0xE800000000000000;
    }

    if (!a2)
    {
      v19 = 1702256979;
      v18 = 0xE400000000000000;
    }

    if (a2 <= 2u)
    {
      v20 = v19;
    }

    else
    {
      v20 = 1702256979;
    }

    if (a2 <= 2u)
    {
      v21 = v18;
    }

    else
    {
      v21 = 0xE400000000000000;
    }

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v30);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v6 + 8))(v9, v5);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v30);

    *(v16 + 14) = v26;
    _os_log_impl(&dword_20AEA4000, v14, v15, "[ManagedConfigurationStore] load background assertion (%s, %s) released", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v17, -1, -1);
    MEMORY[0x20F2E9420](v16, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    WorkoutManagedConfigurationsStore.registerForNotificationsIfNeeded()();
  }

  return result;
}

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
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
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for Date() - 8) + 72);
      v16 = v15 * v3;
      v17 = v14 + v15 * v3;
      v18 = v15 * v6;
      v19 = v14 + v15 * v6 + v15;
      if (v16 < v18 || v17 >= v19)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v18)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
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
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

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
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
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
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();
      swift_beginAccess();

      String.hash(into:)();

      v9 = Hasher._finalize()();

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
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
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
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

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
}

Swift::Int specialized _NativeDictionary._delete(at:)(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      MEMORY[0x20F2E7FF0](v9);
      result = Hasher._finalize()();
      v10 = result & v7;
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
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
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

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      MEMORY[0x20F2E7FF0](v9);
      result = Hasher._finalize()();
      v10 = result & v7;
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
        v12 = (v11 + v3);
        v13 = (v11 + v6);
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

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v43 = a5;
  v44 = a6;
  v42 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8, v10);
  v13 = &v38 - v12;
  v14 = a2 + 64;
  v15 = -1 << *(a2 + 32);
  v16 = (a1 + 1) & ~v15;
  if ((*(a2 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = _HashTable.previousHole(before:)();
    v19 = v17;
    v41 = (v18 + 1) & v17;
    v21 = *(v9 + 16);
    v20 = v9 + 16;
    v45 = *(v20 + 56);
    v39 = (v20 - 8);
    v40 = v21;
    do
    {
      v22 = v45 * v16;
      v23 = v19;
      v24 = v20;
      v40(v13, *(a2 + 48) + v45 * v16, v8);
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(v42, v43, v44);
      v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v39)(v13, v8);
      v19 = v23;
      v26 = v25 & v23;
      if (a1 >= v41)
      {
        if (v26 >= v41 && a1 >= v26)
        {
LABEL_15:
          v29 = *(a2 + 48);
          result = v29 + v45 * a1;
          v30 = v29 + v22 + v45;
          v31 = v45 * a1 < v22 || result >= v30;
          v20 = v24;
          if (!v31)
          {
            if (v45 * a1 != v22)
            {
              result = swift_arrayInitWithTakeBackToFront();
LABEL_23:
              v19 = v23;
            }

            v32 = *(a2 + 56);
            v33 = (v32 + 8 * a1);
            v34 = (v32 + 8 * v16);
            if (a1 != v16 || v33 >= v34 + 1)
            {
              *v33 = *v34;
              a1 = v16;
            }

            goto LABEL_4;
          }

          result = swift_arrayInitWithTakeFrontToBack();
          goto LABEL_23;
        }
      }

      else if (v26 >= v41 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v20 = v24;
LABEL_4:
      v16 = (v16 + 1) & v19;
    }

    while (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t a1, uint64_t a2)
{
  return specialized _NativeDictionary._delete(at:)(a1, a2, lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected, &type metadata for DataLinkMirroredHostExpected);
}

{
  return specialized _NativeDictionary._delete(at:)(a1, a2, lazy protocol witness table accessor for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected, &type metadata for DataLinkMirroredClientExpected);
}

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Station.Mood();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4, v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v42 = a2;
    v13 = ~v11;
    v14 = _HashTable.previousHole(before:)();
    v15 = v13;
    a2 = v42;
    v41 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v39 = v10;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v40(v9, *(a2 + 48) + v18 * v12, v4);
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type Station.Mood and conformance Station.Mood, MEMORY[0x277D2B280], MEMORY[0x277D2B290]);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v9, v4);
      v15 = v21;
      v24 = v23 & v21;
      if (a1 >= v41)
      {
        if (v24 >= v41 && a1 >= v24)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v42 + 48) + v19 * a1 >= (*(v42 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v27 = *(v42 + 56);
          v28 = *(*(type metadata accessor for Date() - 8) + 72);
          v29 = v28 * a1;
          result = v27 + v28 * a1;
          v30 = v28 * v12;
          v31 = v27 + v28 * v12 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v39;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v33 = v29 == v30;
            v10 = v39;
            v15 = v21;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v41 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v39;
      a2 = v42;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

{
  v41 = type metadata accessor for Station.Mood();
  v4 = *(v41 - 8);
  result = MEMORY[0x28223BE20](v41, v5);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v42 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v41;
    v7 = v42;
    v15 = v12;
    v39 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v37 = a2 + 64;
    v38 = v17;
    v18 = *(v16 + 56);
    v36 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v40;
      v22 = v15;
      v23 = v16;
      v38(v40, *(v7 + 48) + v18 * v11, v14);
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type Station.Mood and conformance Station.Mood, MEMORY[0x277D2B280], MEMORY[0x277D2B290]);
      v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v36)(v21, v14);
      v15 = v22;
      v25 = v24 & v22;
      if (a1 >= v39)
      {
        if (v25 >= v39 && a1 >= v25)
        {
LABEL_15:
          v7 = v42;
          v28 = *(v42 + 48);
          result = v28 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v28 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v42;
            v18 = v19;
            v15 = v22;
            v9 = v37;
          }

          else
          {
            v9 = v37;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v42;
              v18 = v19;
              v15 = v22;
            }
          }

          v29 = *(v7 + 56);
          v30 = (v29 + 16 * a1);
          v31 = (v29 + 16 * v11);
          if (a1 != v11 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v39 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v37;
      v18 = v19;
      v7 = v42;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v7 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v34;
    ++*(v7 + 36);
  }

  return result;
}

{
  v41 = type metadata accessor for Station.Mood();
  v4 = *(v41 - 8);
  result = MEMORY[0x28223BE20](v41, v5);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v42 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v41;
    v7 = v42;
    v15 = v12;
    v39 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v37 = a2 + 64;
    v38 = v17;
    v18 = *(v16 + 56);
    v36 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v40;
      v22 = v15;
      v23 = v16;
      v38(v40, *(v7 + 48) + v18 * v11, v14);
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type Station.Mood and conformance Station.Mood, MEMORY[0x277D2B280], MEMORY[0x277D2B290]);
      v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v36)(v21, v14);
      v15 = v22;
      v25 = v24 & v22;
      if (a1 >= v39)
      {
        if (v25 >= v39 && a1 >= v25)
        {
LABEL_15:
          v7 = v42;
          v28 = *(v42 + 48);
          result = v28 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v28 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v42;
            v18 = v19;
            v15 = v22;
            v9 = v37;
          }

          else
          {
            v9 = v37;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v42;
              v18 = v19;
              v15 = v22;
            }
          }

          v29 = *(v7 + 56);
          v30 = (v29 + 8 * a1);
          v31 = (v29 + 8 * v11);
          if (a1 != v11 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v39 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v37;
      v18 = v19;
      v7 = v42;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v7 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v34;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = result;
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (result + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v10 = ~v7;
    v11 = (_HashTable.previousHole(before:)() + 1) & ~v7;
    a3();
    do
    {
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v12 = result & v10;
      if (v5 >= v11)
      {
        if (v12 >= v11 && v5 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 16 * v5);
          v17 = (v15 + 16 * v8);
          if (v5 != v8 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v5);
          v20 = (v18 + 8 * v8);
          if (v5 != v8 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v5 = v8;
          }
        }
      }

      else if (v12 >= v11 || v5 >= v12)
      {
        goto LABEL_15;
      }

      v8 = (v8 + 1) & v10;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  *(v6 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
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

uint64_t specialized WorkoutManagedConfigurationsStore.init(queryClient:backgroundAssertionManager:systemConfigurationSyncStateHandler:applicationSignificantTimeChangeNotificationName:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18[3] = a6;
  v18[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a3, a6);
  *(a5 + 136) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore16ExternalProviderC_SayAC0C13ConfigurationCGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(a5 + 144) = -1;
  *(a5 + 152) = 0;
  *(a5 + 160) = 0;
  *(a5 + 168) = 0;
  outlined init with copy of BackgroundAssertionManagerProtocol(a1, a5 + 16);
  outlined init with copy of BackgroundAssertionManagerProtocol(a2, a5 + 56);
  outlined init with copy of BackgroundAssertionManagerProtocol(v18, a5 + 96);
  v14 = objc_opt_self();
  v15 = [v14 defaultCenter];
  [v15 addObserver:a5 selector:sel_handleSignificantTimeChangeNotification name:a4 object:0];

  v16 = [v14 defaultCenter];
  [v16 addObserver:a5 selector:sel_handleCalendarDayChangedNotification name:*MEMORY[0x277CBE580] object:0];

  __swift_destroy_boxed_opaque_existential_1Tm_17(a2);
  __swift_destroy_boxed_opaque_existential_1Tm_17(a1);
  __swift_destroy_boxed_opaque_existential_1Tm_17(v18);
  return a5;
}

uint64_t specialized WorkoutManagedConfigurationsStore.__allocating_init(queryClient:backgroundAssertionManager:systemConfigurationSyncStateHandler:applicationSignificantTimeChangeNotificationName:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WorkoutManagedConfigurationsStore();
  v16 = swift_allocObject();
  (*(v13 + 16))(v15, a3, a6);
  return specialized WorkoutManagedConfigurationsStore.init(queryClient:backgroundAssertionManager:systemConfigurationSyncStateHandler:applicationSignificantTimeChangeNotificationName:)(a1, a2, v15, a4, v16, a6, a7);
}

uint64_t _s10Foundation4UUIDVSgWOhTm_5(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t partial apply for closure #1 in WorkoutManagedConfigurationsStore.loadIfNeeded(enteringForeground:)(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 25) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v2 + 24);

  return closure #1 in WorkoutManagedConfigurationsStore.loadIfNeeded(enteringForeground:)(a1, a2, v7, v9, v2 + v6, v8);
}

void partial apply for closure #1 in closure #1 in WorkoutManagedConfigurationsStore.loadIfNeeded(enteringForeground:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 25) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + 16);
  v7 = *(v0 + v4);
  v8 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v0 + 24);

  closure #1 in closure #1 in WorkoutManagedConfigurationsStore.loadIfNeeded(enteringForeground:)(v6, v9, v0 + v2, v7, v8, v5);
}

uint64_t outlined init with copy of BackgroundAssertionManagerProtocol(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void TargetZone.alertSpokenStringForSingleThreshold(formattingManager:activityType:)(void *a1, void *a2)
{
  v3 = v2;
  v5 = *(v2 + 16);
  if (v5 > 4)
  {
    if (v5 - 5 >= 2)
    {
      TargetZone.PrimaryType.displayString(activityType:)(a2);
      return;
    }

    swift_beginAccess();
    v19 = *(v2 + 24);
    if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v19 > -9.22337204e18)
      {
        if (v19 < 9.22337204e18)
        {
          v20 = dispatch thunk of CustomStringConvertible.description.getter();
          v68 = a2;
          v22 = v21;
          type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v24 = [objc_opt_self() bundleForClass_];
          v25 = MEMORY[0x20F2E6C00](0x4E555F5245574F50, 0xEF474E4F4C5F5449);
          v26 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
          v27 = [v24 localizedStringForKey:v25 value:0 table:v26];

          v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v30 = v29;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v31 = swift_allocObject();
          *(v31 + 16) = xmmword_20B4282E0;
          v32 = MEMORY[0x277D837D0];
          *(v31 + 56) = MEMORY[0x277D837D0];
          v33 = lazy protocol witness table accessor for type String and conformance String();
          *(v31 + 32) = v20;
          *(v31 + 40) = v22;
          v34 = v68;
          *(v31 + 96) = v32;
          *(v31 + 104) = v33;
          *(v31 + 64) = v33;
          *(v31 + 72) = v28;
          *(v31 + 80) = v30;
LABEL_17:
          v46 = String.init(format:_:)();
          v70 = v47;
          v71 = v46;
LABEL_21:
          type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
          v69 = swift_getObjCClassFromMetadata();
          v66 = objc_opt_self();
          v48 = [v66 &selRef:v69 decodeIntegerForKey:? + 3];
          v49 = MEMORY[0x20F2E6C00](0xD000000000000013, 0x800000020B468380);
          v50 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
          v51 = [v48 localizedStringForKey:v49 value:0 table:v50];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v52 = swift_allocObject();
          *(v52 + 16) = xmmword_20B423A90;
          v53 = TargetZone.PrimaryType.displayString(activityType:)(v34);
          v55 = v54;
          v56 = MEMORY[0x277D837D0];
          *(v52 + 56) = MEMORY[0x277D837D0];
          v57 = lazy protocol witness table accessor for type String and conformance String();
          *(v52 + 64) = v57;
          *(v52 + 32) = v53;
          *(v52 + 40) = v55;
          v58 = String.init(format:_:)();
          v60 = v59;

          v61 = [v66 bundleForClass_];
          v62 = MEMORY[0x20F2E6C00](0xD00000000000001BLL, 0x800000020B4683A0);
          v63 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
          v64 = [v61 localizedStringForKey:v62 value:0 table:v63];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v65 = swift_allocObject();
          *(v65 + 16) = xmmword_20B4282E0;
          *(v65 + 56) = v56;
          *(v65 + 64) = v57;
          *(v65 + 32) = v58;
          *(v65 + 40) = v60;
          *(v65 + 96) = v56;
          *(v65 + 104) = v57;
          *(v65 + 72) = v71;
          *(v65 + 80) = v70;
          String.init(format:_:)();

          return;
        }

        goto LABEL_26;
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v5 >= 3)
  {
    swift_beginAccess();
    v35 = *(v2 + 24);
    if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v35 > -9.22337204e18)
      {
        if (v35 < 9.22337204e18)
        {
          v36 = dispatch thunk of CustomStringConvertible.description.getter();
          v38 = v37;
          v39 = a2;
          v40 = specialized static SpokenUtilities.cadenceLongUnitString(activityType:)(a2);
          v42 = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v43 = swift_allocObject();
          *(v43 + 16) = xmmword_20B4282E0;
          v44 = MEMORY[0x277D837D0];
          *(v43 + 56) = MEMORY[0x277D837D0];
          v45 = lazy protocol witness table accessor for type String and conformance String();
          *(v43 + 32) = v36;
          *(v43 + 40) = v38;
          *(v43 + 96) = v44;
          *(v43 + 104) = v45;
          *(v43 + 64) = v45;
          *(v43 + 72) = v40;
          v34 = v39;
          *(v43 + 80) = v42;
          goto LABEL_17;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v7 = FIUIDistanceTypeForActivityType();
  v8 = [objc_opt_self() meterUnit];
  swift_beginAccess();
  v9 = [objc_opt_self() quantityWithUnit:v8 doubleValue:*(v3 + 24)];

  v10 = MEMORY[0x20F2E8410](v7);
  if (v10 == 4)
  {
LABEL_6:
    v15 = [a1 localizedPaceAndUnitWithDistance:v9 overDuration:v10 paceFormat:v7 distanceType:3 unitStyle:2 decimalTrimmingMode:1.0];
    if (v15)
    {
      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v18;
      v71 = v17;

LABEL_20:
      v34 = a2;
      goto LABEL_21;
    }

LABEL_19:

    v70 = 0xE000000000000000;
    v71 = 0;
    goto LABEL_20;
  }

  v11 = [a1 unitManager];
  if (v11)
  {
    v12 = v11;
    [v11 paceWithDistance:v9 overDuration:v10 paceFormat:v7 distanceType:1.0];
    v14 = v13;

    if (v14 <= 0.0)
    {
      goto LABEL_19;
    }

    goto LABEL_6;
  }

LABEL_28:
  __break(1u);
}

void TargetZone.alertSpokenStringForMultiThreshold(formattingManager:activityType:)(void *a1, void *a2)
{
  v3 = v2;
  v5 = *(v2 + 16);
  v6 = MEMORY[0x277D837D0];
  if (v5 > 4)
  {
    if (v5 - 5 >= 2)
    {
      TargetZone.PrimaryType.displayString(activityType:)(a2);
      return;
    }

    swift_beginAccess();
    v12 = *(v2 + 24);
    if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v12 > -9.22337204e18)
      {
        if (v12 < 9.22337204e18)
        {
          v13 = dispatch thunk of CustomStringConvertible.description.getter();
          v96 = v14;
          swift_beginAccess();
          v15 = *(v3 + 32);
          if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v15 > -9.22337204e18)
            {
              if (v15 < 9.22337204e18)
              {
                v94 = v13;
                v98 = a2;
                v16 = dispatch thunk of CustomStringConvertible.description.getter();
                v18 = v17;
                type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
                ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
                v20 = [objc_opt_self() bundleForClass_];
                v21 = MEMORY[0x20F2E6C00](0x4E555F5245574F50, 0xEF474E4F4C5F5449);
                v22 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL);
                v23 = [v20 localizedStringForKey:v21 value:0 table:v22];

                v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v26 = v25;

                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
                v27 = swift_allocObject();
                *(v27 + 16) = xmmword_20B4282E0;
                *(v27 + 56) = v6;
                v28 = lazy protocol witness table accessor for type String and conformance String();
                *(v27 + 32) = v16;
                *(v27 + 40) = v18;
                *(v27 + 96) = v6;
                *(v27 + 104) = v28;
                *(v27 + 64) = v28;
                *(v27 + 72) = v24;
                *(v27 + 80) = v26;
LABEL_20:
                v93 = String.init(format:_:)();
                v43 = v42;
                v44 = v6;
LABEL_38:
                type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
                v92 = swift_getObjCClassFromMetadata();
                v91 = objc_opt_self();
                v68 = [v91 bundleForClass_];
                v69 = MEMORY[0x20F2E6C00](0xD00000000000001ALL, 0x800000020B4683C0);
                v70 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
                v71 = [v68 localizedStringForKey:v69 value:0 table:v70];

                static String._unconditionallyBridgeFromObjectiveC(_:)();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
                v72 = swift_allocObject();
                *(v72 + 16) = xmmword_20B4282E0;
                *(v72 + 56) = v44;
                v73 = lazy protocol witness table accessor for type String and conformance String();
                *(v72 + 32) = v94;
                *(v72 + 40) = v96;
                *(v72 + 96) = v44;
                *(v72 + 104) = v73;
                *(v72 + 64) = v73;
                *(v72 + 72) = v93;
                *(v72 + 80) = v43;
                v74 = String.init(format:_:)();
                v95 = v75;
                v97 = v74;

                v76 = [v91 bundleForClass_];
                v77 = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B4683E0);
                v78 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
                v79 = [v76 localizedStringForKey:v77 value:0 table:v78];

                static String._unconditionallyBridgeFromObjectiveC(_:)();
                v80 = swift_allocObject();
                *(v80 + 16) = xmmword_20B423A90;
                v81 = TargetZone.PrimaryType.displayString(activityType:)(v98);
                *(v80 + 56) = v44;
                *(v80 + 64) = v73;
                *(v80 + 32) = v81;
                *(v80 + 40) = v82;
                v83 = String.init(format:_:)();
                v85 = v84;

                v86 = [v91 bundleForClass_];
                v87 = MEMORY[0x20F2E6C00](0xD00000000000001BLL, 0x800000020B4683A0);
                v88 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
                v89 = [v86 localizedStringForKey:v87 value:0 table:v88];

                static String._unconditionallyBridgeFromObjectiveC(_:)();
                v90 = swift_allocObject();
                *(v90 + 16) = xmmword_20B4282E0;
                *(v90 + 56) = v44;
                *(v90 + 64) = v73;
                *(v90 + 32) = v83;
                *(v90 + 40) = v85;
                *(v90 + 96) = v44;
                *(v90 + 104) = v73;
                *(v90 + 72) = v97;
                *(v90 + 80) = v95;
                String.init(format:_:)();

                return;
              }

              goto LABEL_50;
            }

            goto LABEL_48;
          }

          goto LABEL_46;
        }

        goto LABEL_44;
      }

      goto LABEL_42;
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v98 = a2;
  if (v5 >= 3)
  {
    swift_beginAccess();
    v29 = *(v2 + 24);
    if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v29 > -9.22337204e18)
      {
        if (v29 < 9.22337204e18)
        {
          v30 = dispatch thunk of CustomStringConvertible.description.getter();
          v32 = v31;
          swift_beginAccess();
          v33 = *(v3 + 32);
          if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v33 > -9.22337204e18)
            {
              if (v33 < 9.22337204e18)
              {
                v94 = v30;
                v96 = v32;
                v34 = dispatch thunk of CustomStringConvertible.description.getter();
                v36 = v35;
                v37 = specialized static SpokenUtilities.cadenceLongUnitString(activityType:)(a2);
                v39 = v38;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
                v40 = swift_allocObject();
                *(v40 + 16) = xmmword_20B4282E0;
                *(v40 + 56) = v6;
                v41 = lazy protocol witness table accessor for type String and conformance String();
                *(v40 + 32) = v34;
                *(v40 + 40) = v36;
                *(v40 + 96) = v6;
                *(v40 + 104) = v41;
                *(v40 + 64) = v41;
                *(v40 + 72) = v37;
                *(v40 + 80) = v39;
                goto LABEL_20;
              }

LABEL_51:
              __break(1u);
              goto LABEL_52;
            }

            goto LABEL_49;
          }

          goto LABEL_47;
        }

        goto LABEL_45;
      }

      goto LABEL_43;
    }

    goto LABEL_41;
  }

  v8 = FIUIDistanceTypeForActivityType();
  v9 = objc_opt_self();
  v10 = [v9 meterUnit];
  if (v8 == 2)
  {
    v11 = (v3 + 24);
  }

  else
  {
    v11 = (v3 + 32);
  }

  swift_beginAccess();
  v45 = *v11;
  v46 = objc_opt_self();
  v47 = [v46 quantityWithUnit:v10 doubleValue:v45];

  v48 = MEMORY[0x20F2E8410](v8);
  if (v48 == 4)
  {
LABEL_25:
    v54 = [a1 localizedPaceStringWithDistance:v47 overDuration:v48 paceFormat:3 unitStyle:2 decimalTrimmingMode:v8 distanceType:1.0];
    if (v54)
    {
      v55 = v54;
      v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v96 = v56;

LABEL_28:
      v57 = [v9 meterUnit];
      if (v8 == 2)
      {
        v58 = (v3 + 32);
      }

      else
      {
        v58 = (v3 + 24);
      }

      swift_beginAccess();
      v59 = [v46 quantityWithUnit:v57 doubleValue:*v58];

      v60 = MEMORY[0x20F2E8410](v8);
      if (v60 == 4)
      {
LABEL_34:
        v65 = [a1 localizedPaceAndUnitWithDistance:v59 overDuration:v60 paceFormat:v8 distanceType:3 unitStyle:2 decimalTrimmingMode:1.0];
        if (v65)
        {
          v66 = v65;
          v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = v67;

LABEL_37:
          v44 = MEMORY[0x277D837D0];
          goto LABEL_38;
        }

LABEL_36:

        v93 = 0;
        v43 = 0xE000000000000000;
        goto LABEL_37;
      }

      v61 = [a1 unitManager];
      if (v61)
      {
        v62 = v61;
        [v61 paceWithDistance:v59 overDuration:v60 paceFormat:v8 distanceType:1.0];
        v64 = v63;

        if (v64 <= 0.0)
        {
          goto LABEL_36;
        }

        goto LABEL_34;
      }

      goto LABEL_53;
    }

LABEL_27:

    v94 = 0;
    v96 = 0xE000000000000000;
    goto LABEL_28;
  }

  v49 = v3;
  v50 = [a1 unitManager];
  if (v50)
  {
    v51 = v50;
    [v50 paceWithDistance:v47 overDuration:v48 paceFormat:v8 distanceType:1.0];
    v53 = v52;

    v3 = v49;
    if (v53 <= 0.0)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t WorkoutDeviceAirPodsScanner.activeHRMDevice.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t WorkoutDeviceAirPodsScanner.__deallocating_deinit()
{
  WorkoutDeviceAirPodsScanner.deactivate()();
  v1 = OBJC_IVAR____TtC11WorkoutCore27WorkoutDeviceAirPodsScanner_audioAccessoryToken;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 != -1)
  {
    notify_cancel(v2);
    *(v0 + v1) = -1;
  }

  v3 = OBJC_IVAR____TtC11WorkoutCore27WorkoutDeviceAirPodsScanner__activeHRMDevice;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo20AudioAccessoryDeviceCSgGMd, &_s7Combine9PublishedVySo20AudioAccessoryDeviceCSgGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutDeviceAirPodsScanner(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkoutDeviceAirPodsScanner;
  if (!type metadata singleton initialization cache for WorkoutDeviceAirPodsScanner)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WorkoutDeviceAirPodsScanner(uint64_t a1)
{
  type metadata accessor for Published<AudioAccessoryDevice?>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

Swift::Void __swiftcall WorkoutDeviceAirPodsScanner.deactivate()()
{
  [*(v0 + 16) invalidate];
  if (one-time initialization token for devices != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static WOLog.devices);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_20AEA4000, oslog, v2, "WorkoutDeviceAirPodsScanner invalidated", v3, 2u);
    MEMORY[0x20F2E9420](v3, -1, -1);
  }
}

void WorkoutDeviceAirPodsScanner.setupAndActivateAudioStateMonitor()()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  swift_weakInit();
  v12 = partial apply for closure #1 in WorkoutDeviceAirPodsScanner.setupAndActivateAudioStateMonitor();
  v13 = v2;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = thunk for @escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice?, @unowned AAHRMDeviceHIDAbstraction) -> ();
  v11 = &block_descriptor_18_5;
  v3 = _Block_copy(&v8);
  v4 = v1;

  [v4 setActiveHRMDeviceChangedHandler_];
  _Block_release(v3);

  v5 = *(v0 + 16);
  v12 = closure #2 in WorkoutDeviceAirPodsScanner.setupAndActivateAudioStateMonitor();
  v13 = 0;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v11 = &block_descriptor_21_2;
  v6 = _Block_copy(&v8);
  v7 = v5;
  [v7 activateWithCompletion_];
  _Block_release(v6);
}

uint64_t closure #1 in WorkoutDeviceAirPodsScanner.setupAndActivateAudioStateMonitor()(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v31 = *(v10 - 8);
  v32 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for devices != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static WOLog.devices);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v30 = a3;
    v19 = v6;
    v20 = v18;
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v15;
    *v21 = a1;
    v22 = v15;
    _os_log_impl(&dword_20AEA4000, v16, v17, "Received device: %@ from AASystemStateMonitor - aaActiveHRMDeviceChangedHandler", v20, 0xCu);
    outlined destroy of NSObject?(v21);
    MEMORY[0x20F2E9420](v21, -1, -1);
    v23 = v20;
    v6 = v19;
    a3 = v30;
    MEMORY[0x20F2E9420](v23, -1, -1);
  }

  type metadata accessor for OS_dispatch_queue();
  v24 = static OS_dispatch_queue.main.getter();
  v25 = swift_allocObject();
  *(v25 + 16) = a3;
  *(v25 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in closure #1 in WorkoutDeviceAirPodsScanner.setupAndActivateAudioStateMonitor();
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_27_2;
  v26 = _Block_copy(aBlock);
  v27 = v15;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v13, v9, v26);
  _Block_release(v26);

  (*(v6 + 8))(v9, v5);
  return (*(v31 + 8))(v13, v32);
}

double closure #1 in closure #1 in WorkoutDeviceAirPodsScanner.setupAndActivateAudioStateMonitor()(uint64_t a1, void *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = a2;
    static Published.subscript.setter();
  }

  return result;
}

void closure #2 in WorkoutDeviceAirPodsScanner.setupAndActivateAudioStateMonitor()(NSObject *a1)
{
  if (!a1)
  {
    if (one-time initialization token for devices != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static WOLog.devices);
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_20AEA4000, oslog, v11, "WorkoutDeviceAirPodsScanner activated", v12, 2u);
      MEMORY[0x20F2E9420](v12, -1, -1);
    }

    goto LABEL_10;
  }

  v2 = a1;
  if (one-time initialization token for devices != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.devices);
  v4 = a1;
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20AEA4000, oslog, v5, "Failed to activate WorkoutDeviceAirPodsScanner: %@", v6, 0xCu);
    outlined destroy of NSObject?(v7);
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);

LABEL_10:
    v13 = oslog;

    goto LABEL_12;
  }

  v13 = a1;

LABEL_12:
}

void WorkoutDeviceAirPodsScanner.registerForDaemonRestartNotification()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11WorkoutCore27WorkoutDeviceAirPodsScanner_audioAccessoryToken;
  swift_beginAccess();
  if (*(v0 + v2) == -1)
  {
    type metadata accessor for OS_dispatch_queue();
    v3 = static OS_dispatch_queue.main.getter();
    v4 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = partial apply for closure #1 in WorkoutDeviceAirPodsScanner.registerForDaemonRestartNotification();
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
    aBlock[3] = &block_descriptor_69;
    v5 = _Block_copy(aBlock);

    swift_beginAccess();
    notify_register_dispatch("com.apple.AudioAccessory.daemonStarted", (v1 + v2), v3, v5);
    swift_endAccess();
    _Block_release(v5);
  }
}

double closure #1 in WorkoutDeviceAirPodsScanner.registerForDaemonRestartNotification()(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for devices != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.devices);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20AEA4000, v3, v4, "AudioAccessory daemon restarted, re-subscribing to device changes", v5, 2u);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    WorkoutDeviceAirPodsScanner.handleDaemonRestart()();
  }

  return result;
}

void WorkoutDeviceAirPodsScanner.handleDaemonRestart()()
{
  v1 = v0;
  if (one-time initialization token for devices != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.devices);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20AEA4000, v3, v4, "Creating new AASystemStateMonitor after daemon restart", v5, 2u);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  [*(v1 + 16) invalidate];
  v6 = [objc_allocWithZone(MEMORY[0x277CEF820]) init];
  v7 = *(v1 + 16);
  *(v1 + 16) = v6;

  WorkoutDeviceAirPodsScanner.setupAndActivateAudioStateMonitor()();
}

void type metadata accessor for Published<AudioAccessoryDevice?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<AudioAccessoryDevice?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo20AudioAccessoryDeviceCSgMd, &_sSo20AudioAccessoryDeviceCSgMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<AudioAccessoryDevice?>);
    }
  }
}

void key path getter for WorkoutDeviceAirPodsScanner.activeHRMDevice : WorkoutDeviceAirPodsScanner(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

double key path setter for WorkoutDeviceAirPodsScanner.activeHRMDevice : WorkoutDeviceAirPodsScanner(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  static Published.subscript.setter();
  return result;
}

id MirroredWidgetAttributes.ContentState.activityType.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = objc_allocWithZone(MEMORY[0x277D0A810]);

  return [v3 initWithActivityTypeIdentifier:v1 isIndoor:v2];
}

uint64_t MirroredWidgetAttributes.ContentState.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MirroredWidgetAttributes.ContentState(0) + 24);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MirroredWidgetAttributes.ContentState.startDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MirroredWidgetAttributes.ContentState(0) + 24);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MirroredWidgetAttributes.ContentState.isPaused.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for MirroredWidgetAttributes.ContentState(0);
  _s10Foundation4DateVSgWOcTm_6(v0 + *(v5 + 28), v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = type metadata accessor for Date();
  v7 = 1;
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    v7 = *(v0 + *(v5 + 32));
  }

  _s10Foundation4DateVSgWOhTm_12(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return v7;
}

uint64_t MirroredWidgetAttributes.ContentState.isSuspendedUntilHRAvailable.setter(char a1)
{
  result = type metadata accessor for MirroredWidgetAttributes.ContentState(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t MirroredWidgetAttributes.ContentState.elapsedTime.setter(double a1)
{
  result = type metadata accessor for MirroredWidgetAttributes.ContentState(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t MirroredWidgetAttributes.ContentState.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + *(type metadata accessor for MirroredWidgetAttributes.ContentState(0) + 40)) == 1)
  {
    Date.addingTimeInterval(_:)();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

uint64_t MirroredWidgetAttributes.ContentState.isComplete.setter(char a1)
{
  result = type metadata accessor for MirroredWidgetAttributes.ContentState(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t MirroredWidgetAttributes.ContentState.workoutActive.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = type metadata accessor for MirroredWidgetAttributes.ContentState(0);
  _s10Foundation4DateVSgWOcTm_6(v0 + v5[7], v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = type metadata accessor for Date();
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    v7 = *(v0 + v5[8]);
    _s10Foundation4DateVSgWOhTm_12(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(v0 + v5[10]) ^ 1;
    }
  }

  else
  {
    _s10Foundation4DateVSgWOhTm_12(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t MirroredWidgetAttributes.ContentState.segmentIndex.setter(uint64_t a1)
{
  result = type metadata accessor for MirroredWidgetAttributes.ContentState(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

double MirroredWidgetAttributes.ContentState.metrics.getter()
{
  type metadata accessor for MirroredWidgetAttributes.ContentState(0);

  return result;
}

void MirroredWidgetAttributes.ContentState.metrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MirroredWidgetAttributes.ContentState(0) + 48);

  *(v1 + v3) = a1;
}

void *MirroredWidgetAttributes.ContentState.notification.getter()
{
  v1 = *(v0 + *(type metadata accessor for MirroredWidgetAttributes.ContentState(0) + 52));
  v2 = v1;
  return v1;
}

void MirroredWidgetAttributes.ContentState.notification.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MirroredWidgetAttributes.ContentState(0) + 52);

  *(v1 + v3) = a1;
}

uint64_t _s10Foundation4DateVSgWOcTm_6(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s10Foundation4DateVSgWOdTm_2(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t MirroredWidgetAttributes.ContentState.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v31 - v4;
  v33 = 0;
  v34 = 0xE000000000000000;
  _StringGuts.grow(_:)(194);
  MEMORY[0x20F2E6D80](0xD000000000000031, 0x800000020B4684F0);
  v6 = type metadata accessor for MirroredWidgetAttributes.ContentState(0);
  v7 = type metadata accessor for Date();
  _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v8);

  MEMORY[0x20F2E6D80](0xD00000000000001CLL, 0x800000020B468530);
  v9 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v9);

  MEMORY[0x20F2E6D80](0xD00000000000001FLL, 0x800000020B468550);
  if (*(v0 + v6[8]))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v0 + v6[8]))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x20F2E6D80](v10, v11);

  MEMORY[0x20F2E6D80](0x657370616C65202CLL, 0xEF203A656D695464);
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0x746144646E65202CLL, 0xEB00000000203A65);
  if (*(v0 + v6[10]) == 1)
  {
    Date.addingTimeInterval(_:)();
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  (*(*(v7 - 8) + 56))(v5, v12, 1, v7);
  v13 = Optional.description.getter();
  v15 = v14;
  _s10Foundation4DateVSgWOhTm_12(v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x20F2E6D80](v13, v15);

  MEMORY[0x20F2E6D80](0xD000000000000010, 0x800000020B468570);
  v32 = *(v0 + v6[11]);
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v16);

  MEMORY[0x20F2E6D80](0x63697274656D202CLL, 0xEB00000000203A73);
  v17 = *(v0 + v6[12]);
  if (v17)
  {
    v18 = *(v17 + 16);
    v19 = MEMORY[0x277D84F90];
    if (v18)
    {
      v32 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
      v19 = v32;
      v20 = (v17 + 56);
      do
      {
        v22 = *(v20 - 1);
        v21 = *v20;
        v32 = v19;
        v24 = *(v19 + 16);
        v23 = *(v19 + 24);

        if (v24 >= v23 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
          v19 = v32;
        }

        *(v19 + 16) = v24 + 1;
        v25 = v19 + 16 * v24;
        *(v25 + 32) = v22;
        *(v25 + 40) = v21;
        v20 += 9;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v19 = 0;
  }

  v32 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGSgMd, &_sSaySSGSgMR);
  v26 = Optional.description.getter();
  v28 = v27;

  MEMORY[0x20F2E6D80](v26, v28);

  MEMORY[0x20F2E6D80](0xD000000000000010, 0x800000020B468590);
  v32 = *(v1 + v6[13]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A12NotificationCSgMd, &_s11WorkoutCore0A12NotificationCSgMR);
  v29 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v29);

  MEMORY[0x20F2E6D80](41, 0xE100000000000000);
  return v33;
}

id MirroredWidgetAttributes.ContentState.init(publisher:notification:workoutUUID:)@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v131 = a3;
  v130 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v146 = &v115 - v8;
  v144 = type metadata accessor for DateInterval();
  v126 = *(v144 - 8);
  v10 = MEMORY[0x28223BE20](v144, v9);
  v140 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v143 = &v115 - v14;
  MEMORY[0x28223BE20](v13, v15);
  v145 = &v115 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v19 = MEMORY[0x28223BE20](v17 - 8, v18);
  v129 = (&v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x28223BE20](v19, v21);
  v125 = &v115 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v134 = &v115 - v26;
  MEMORY[0x28223BE20](v25, v27);
  v29 = (&v115 - v28);
  v30 = type metadata accessor for Date();
  v31 = *(v30 - 8);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v120 = &v115 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33, v35);
  v142 = &v115 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v141 = &v115 - v40;
  v42 = MEMORY[0x28223BE20](v39, v41);
  v44 = &v115 - v43;
  MEMORY[0x28223BE20](v42, v45);
  v137 = &v115 - v46;
  v47 = type metadata accessor for MirroredWidgetAttributes.ContentState(0);
  v48 = v47[7];
  v136 = v31;
  v49 = *(v31 + 56);
  v127 = v48;
  v50 = v49;
  v49(a4 + v48, 1, 1, v30);
  *(a4 + v47[10]) = 0;
  v119 = v47[12];
  *(a4 + v119) = 0;
  v122 = v47[13];
  *(a4 + v122) = 0;
  v135 = v47;
  v51 = v47[14];
  v52 = type metadata accessor for UUID();
  v53 = *(*(v52 - 8) + 56);
  v128 = v51;
  v53(a4 + v51, 1, 1, v52);
  v138 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutStatePublisher;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v147);

  v54 = v147;
  if (v147)
  {
    v55 = [v147 effectiveTypeIdentifier];
  }

  else
  {
    v55 = 3000;
  }

  *a4 = v55;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v147);

  v56 = v147;
  v132 = v44;
  if (v147)
  {
    v57 = [v147 isIndoor];
  }

  else
  {
    v57 = 0;
  }

  *(a4 + 8) = v57;
  Date.init()();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter(v29);

  v58 = v136;
  v59 = v136 + 48;
  v60 = *(v136 + 48);
  v61 = v60(v29, 1, v30);
  v124 = v59;
  v123 = v60;
  if (v61 == 1)
  {
    v62 = v132;
    (*(v58 + 16))();
    if (v60(v29, 1, v30) != 1)
    {
      _s10Foundation4DateVSgWOhTm_12(v29, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    v62 = v132;
    (*(v58 + 32))(v132, v29, v30);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v147);

  v63 = v147;
  v64 = v134;
  v50(v134, 1, 1, v30);
  v65 = v135[6];
  v66 = v137;
  v67 = static Date.> infix(_:_:)();
  v133 = v30;
  if (v67)
  {
    v118 = v65;
    v121 = v63;
    v68 = *(v58 + 16);
    v68(v141, v62, v30);
    v69 = v121;
    v68(v142, v66, v30);
    DateInterval.init(start:end:)();
    v70 = v69[2];
    if (v70)
    {
      v116 = a1;
      v117 = a4;
      v71 = *(v126 + 16);
      v72 = v69 + ((*(v126 + 80) + 32) & ~*(v126 + 80));
      v141 = *(v126 + 72);
      v142 = v71;
      v73 = (v126 + 8);
      v74 = (v126 + 48);
      v139 = (v126 + 32);
      v75 = 0.0;
      v76 = v143;
      do
      {
        v77 = v144;
        (v142)(v76, v72, v144);
        DateInterval.intersection(with:)();
        v78 = v146;
        v79 = *v73;
        (*v73)(v76, v77);
        if ((*v74)(v78, 1, v77) == 1)
        {
          _s10Foundation4DateVSgWOhTm_12(v78, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
        }

        else
        {
          v80 = v140;
          (*v139)(v140, v78, v77);
          DateInterval.duration.getter();
          v82 = v81;
          v79(v80, v77);
          v75 = v75 + v82;
        }

        v72 += v141;
        --v70;
      }

      while (v70);

      v83 = v131;
      v62 = v132;
      a4 = v117;
      a1 = v116;
      v64 = v134;
    }

    else
    {

      v83 = v131;
    }

    v84 = v125;
    _s10Foundation4DateVSgWOcTm_6(v64, v125, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v85 = v133;
    v86 = v123(v84, 1, v133);
    v87 = v136;
    v88 = v144;
    if (v86 == 1)
    {
      _s10Foundation4DateVSgWOhTm_12(v84, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }

    else
    {
      v89 = v120;
      (*(v136 + 32))(v120, v84, v85);
      Date.timeIntervalSince(_:)();
      (*(v87 + 8))(v89, v85);
    }

    Date.addingTimeInterval(_:)();
    (*(v126 + 8))(v145, v88);
    _s10Foundation4DateVSgWOhTm_12(v134, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v83 = v131;

    _s10Foundation4DateVSgWOhTm_12(v64, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    (*(v58 + 16))(a4 + v65, v62, v30);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v147);

  v90 = v135;
  *(a4 + v135[9]) = v147;
  swift_getKeyPath();
  swift_getKeyPath();
  v91 = v129;
  static Published.subscript.getter(v129);

  _s10Foundation4DateVSgWOdTm_2(v91, a4 + v127, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v147);

  *(a4 + v90[8]) = (v147 & 4) != 0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v147);

  *(a4 + v90[11]) = v147;
  outlined assign with copy of UUID?(v83, a4 + v128);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v147);

  v92 = a1;
  v93 = v147;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v147);

  v94 = v147;
  if (!v147)
  {

    _s10Foundation4DateVSgWOhTm_12(v83, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v111 = *(v136 + 8);
    v112 = v133;
    v111(v62, v133);
    return (v111)(v137, v112);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v95 = static UserDevicesBehaviors.shared;
  UserDevicesBehaviors.cachedWorkoutHealthDataAllowedWhenLocked.getter();
  v97 = v96;
  v98 = v96;

  v99 = v137;
  if (v98 != 2 && (v97 & 1) != 0)
  {
    v100 = [objc_opt_self() processInfo];
    v101 = [v100 isLowPowerModeEnabled];

    if ((v101 & 1) == 0)
    {
      if (!v93)
      {
        goto LABEL_34;
      }

      result = FIWorkoutMirroringSetting();
      if (!result)
      {
        __break(1u);
        return result;
      }

      v103 = result;
      v104 = [result integerValue];

      if (v104 == 1)
      {
LABEL_34:
        v105 = MirroredWidgetAttributes.ContentState.metrics(from:for:)(v92, v94);
        *(a4 + v119) = v105;
      }
    }
  }

  v106 = v130;
  if (v130)
  {
    MirroredWidgetAttributes.ContentState.stringify(notification:for:)(v130, v94);
    v108 = v107;

    _s10Foundation4DateVSgWOhTm_12(v83, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v109 = *(v136 + 8);
    v110 = v133;
    v109(v62, v133);
    result = (v109)(v99, v110);
    *(a4 + v122) = v108;
  }

  else
  {

    _s10Foundation4DateVSgWOhTm_12(v83, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v113 = *(v136 + 8);
    v114 = v133;
    v113(v62, v133);
    return (v113)(v99, v114);
  }

  return result;
}

uint64_t MirroredWidgetAttributes.ContentState.metrics(from:for:)(uint64_t a1, unint64_t a2)
{
  v52 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = (&v47 - v5);
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    if (one-time initialization token for formattingManager != -1)
    {
      swift_once();
    }

    v51 = static WorkoutCoreInjector.formattingManager;
    v7 = FIActivityMoveModeUserDefault();
    v8 = FIDeviceSupportsElevationGain();
    v9 = [objc_allocWithZone(MEMORY[0x277D0A820]) initWithMetricsVersion:101 activityType:a2 activityMoveMode:v7 deviceSupportsElevationMetrics:v8 deviceSupportsGroundElevationMetrics:FIDeviceSupportsGroundElevation()];
    v49 = v9;
    v50 = a2;
    if (!v9)
    {
      break;
    }

    result = [v9 defaultEnabledMetrics];
    if (!result)
    {
      goto LABEL_61;
    }

    v11 = result;
    type metadata accessor for NSNumber();
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v12 >> 62)
    {
      v13 = __CocoaSet.count.getter();
      v48 = v6;
      if (!v13)
      {
LABEL_26:
        v15 = MEMORY[0x277D84F90];
LABEL_27:

        v55 = v15;

        v6 = v48;
        v22 = *(v15 + 2);
        if (v22)
        {
          goto LABEL_28;
        }

LABEL_31:

        goto LABEL_33;
      }
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v48 = v6;
      if (!v13)
      {
        goto LABEL_26;
      }
    }

    v14 = 0;
    a2 = v12 & 0xC000000000000001;
    v6 = (v12 & 0xFFFFFFFFFFFFFF8);
    v15 = MEMORY[0x277D84F90];
    while (1)
    {
      if (a2)
      {
        v16 = MEMORY[0x20F2E7A20](v14, v12);
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v16 = *(v12 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v19 = [v16 unsignedIntegerValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
      }

      v21 = *(v15 + 2);
      v20 = *(v15 + 3);
      if (v21 >= v20 >> 1)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v15);
      }

      *(v15 + 2) = v21 + 1;
      *&v15[8 * v21 + 32] = v19;
      ++v14;
      if (v18 == v13)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  v15 = MEMORY[0x277D84F90];
  v55 = MEMORY[0x277D84F90];
  v22 = *(MEMORY[0x277D84F90] + 16);
  if (!v22)
  {
    goto LABEL_31;
  }

LABEL_28:
  v23 = 0;
  while (*&v15[8 * v23 + 32] != 3)
  {
    if (v22 == ++v23)
    {
      goto LABEL_31;
    }
  }

  specialized Array.remove(at:)(v23);
LABEL_33:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v53);

  if ((v53[0] & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v6);

    v24 = type metadata accessor for Date();
    v25 = (*(*(v24 - 8) + 48))(v6, 1, v24);
    _s10Foundation4DateVSgWOhTm_12(v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (v25 == 1)
    {
      v26 = v55;
      v27 = *(v55 + 16);
      if (v27)
      {
        v28 = -v27;
        v29 = 4;
        while (*(v55 + 8 * v29) != 5)
        {
          ++v29;
          if (v28 + v29 == 4)
          {
            goto LABEL_44;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v26);
          v26 = result;
        }

        if ((v29 - 4) >= *(v26 + 16))
        {
          __break(1u);
LABEL_61:
          __break(1u);
          return result;
        }

        *(v26 + 8 * v29) = 40;
        v55 = v26;
      }
    }
  }

LABEL_44:
  v30 = *(v55 + 16);
  v48 = v55;
  if (v30)
  {
    v31 = MEMORY[0x277D84F90];
    v32 = (v55 + 32);
    v33 = v50;
    do
    {
      v39 = *v32++;
      v38 = v39;
      v40 = MetricsPublisher.doubleValue(for:)(v39);
      if (v40 > 0.0)
      {
        v41 = v40;
        if (v38 == 5)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter(v53);

          v33 = v50;

          v42 = LOBYTE(v53[0]);
        }

        else
        {
          v42 = 0;
        }

        MetricValue.init(metricType:value:isStale:formattingManager:activityType:)(v38, v42, v51, v33, v53, v41);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
        }

        v44 = *(v31 + 2);
        v43 = *(v31 + 3);
        if (v44 >= v43 >> 1)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v31);
        }

        *(v31 + 2) = v44 + 1;
        v34 = &v31[72 * v44];
        *(v34 + 2) = v53[0];
        v35 = v53[1];
        v36 = v53[2];
        v37 = v53[3];
        v34[96] = v54;
        *(v34 + 4) = v36;
        *(v34 + 5) = v37;
        *(v34 + 3) = v35;
      }

      --v30;
    }

    while (v30);
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

  if (*(v31 + 2) >= 5uLL)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v31, (v31 + 32), 0, 9uLL);
    v46 = v45;

    v31 = v46;
  }

  return v31;
}

void MirroredWidgetAttributes.ContentState.stringify(notification:for:)(uint64_t a1, void *a2)
{
  v189 = a2;
  v183 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v3 = *(v183 - 8);
  MEMORY[0x28223BE20](v183, v4);
  v182 = &v161 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v181 - 8);
  MEMORY[0x28223BE20](v181, v7);
  v180 = &v161 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v179 = &v161 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
  v12 = *(v178 - 8);
  v14 = MEMORY[0x28223BE20](v178, v13);
  v177 = &v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v176 = &v161 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v175 = &v161 - v20;
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_68;
  }

  while (1)
  {
    if (one-time initialization token for formattingManager != -1)
    {
      swift_once();
    }

    v169 = static WorkoutCoreInjector.formattingManager;
    v202[0] = MEMORY[0x277D84F90];
    v21 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_units;
    swift_beginAccess();
    v22 = *(a1 + v21);
    v23 = v22 >> 62 ? __CocoaSet.count.getter() : *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v165 = a1;
    v24 = v169;
    if (!v23)
    {
      break;
    }

    v25 = v22 & 0xC000000000000001;
    v190 = v22 & 0xFFFFFFFFFFFFFF8;
    v164 = "isSuspendedUntilHRAvailable";
    v174 = *MEMORY[0x277D84688];
    v172 = (v6 + 1);
    v173 = (v6 + 13);
    v170 = (v3 + 1);
    v171 = (v12 + 8);
    v187 = v169;

    v12 = 0;
    a1 = MEMORY[0x277D84F90];
    v163 = xmmword_20B4465B0;
    v185 = v23;
    v186 = v22;
    v188 = v22 & 0xC000000000000001;
    while (v25)
    {
      v26 = MEMORY[0x20F2E7A20](v12, v22);
      v27 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_66;
      }

LABEL_16:
      swift_beginAccess();
      switch(*(v26 + 16))
      {
        case 1:
        case 9:
        case 0xA:
        case 0xD:
          swift_beginAccess();
          if (*(v26 + 48))
          {
            goto LABEL_8;
          }

          v29 = *(v26 + 40);
          v30 = v187;
          v31 = FIUIDistanceTypeForActivityType();
          v32 = [v30 unitManager];
          if (!v32)
          {
            goto LABEL_71;
          }

          v33 = v32;
          v191 = v27;
          v34 = [v32 paceDistanceUnitForDistanceType_];

          v35 = MEMORY[0x20F2E8410](v31);
          v36 = [v30 localizedDistinguishingPaceUnitStringWithMetricType:8 distanceType:v31 distanceUnit:v34 paceFormat:v35 abbreviated:1 multiline:0];
          v184 = v26;
          if (v36)
          {
            v37 = v36;
            v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v40 = v39;
          }

          else
          {
            v38 = 0;
            v40 = 0;
          }

          v109 = [objc_opt_self() meterUnit];
          v110 = v29;
          v111 = [objc_opt_self() quantityWithUnit:v109 doubleValue:v29];

          v112 = [v30 localizedPaceStringWithDistance:v111 overDuration:v35 paceFormat:v31 distanceType:1.0];
          if (!v112)
          {
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }

          v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v114 = v113;

          v194 = v38;
          v195 = v40;
          v196 = v6;
          v197 = v114;
          v198 = 0u;
          v199 = 0u;
          v200 = 0;

          outlined destroy of MetricValue(&v194);
          type metadata accessor for WorkoutNotificationUnit();
          v115 = swift_allocObject();
          *(v115 + 32) = 0;
          *(v115 + 40) = 0;
          *(v115 + 24) = 0;
          *(v115 + 48) = 1;
          *(v115 + 64) = 0;
          *(v115 + 72) = 0;
          *(v115 + 56) = 0;
          *(v115 + 16) = 9;
          swift_beginAccess();
          *(v115 + 24) = v6;
          *(v115 + 32) = v114;
          swift_beginAccess();
          *(v115 + 40) = v110;
          *(v115 + 48) = 0;
          swift_beginAccess();
          *(v115 + 64) = 0;
          *(v115 + 56) = 0;
          swift_beginAccess();
          v116 = *(v115 + 72);
          v117 = v189;
          *(v115 + 72) = v189;
          v118 = v117;

          v3 = v202;
          MEMORY[0x20F2E6F30]();
          if (*((v202[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v202[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          goto LABEL_62;
        case 2:
        case 0xB:
          swift_beginAccess();
          if (*(v26 + 48))
          {
            goto LABEL_8;
          }

          v191 = v27;
          v168 = *(v26 + 40);
          v192 = *&v168;
          v167 = v187;
          static Locale.autoupdatingCurrent.getter();
          v166 = lazy protocol witness table accessor for type Double and conformance Double();
          v56 = v177;
          FloatingPointFormatStyle.init(locale:)();
          v58 = v180;
          v57 = v181;
          (*v173)(v180, v174, v181);
          v59 = v176;
          v60 = v178;
          MEMORY[0x20F2E4420](v58, 0, 1, v178);
          (*v172)(v58, v57);
          v61 = *v171;
          (*v171)(v56, v60);
          v62 = v182;
          static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
          v63 = v175;
          MEMORY[0x20F2E4430](v62, v60);
          (*v170)(v62, v183);
          v61(v59, v60);
          lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>();
          BinaryFloatingPoint.formatted<A>(_:)();
          v61(v63, v60);
          v64 = v194;
          v65 = v195;
          v66 = [objc_opt_self() localizedShortPowerUnitString];
          if (v66)
          {
            v67 = v66;
            v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v70 = v69;
          }

          else
          {

            v68 = 0;
            v70 = 0;
          }

          v167 = v68;
          v194 = v68;
          v195 = v70;
          v196 = v64;
          v197 = v65;
          type metadata accessor for WorkoutNotificationUnit();
          v198 = 0u;
          v199 = 0u;
          v200 = 0;
          v122 = swift_allocObject();
          v166 = v65;
          v123 = v122;
          *(v122 + 32) = 0;
          v124 = v70;
          *(v122 + 40) = 0;
          v125 = (v122 + 40);
          *(v122 + 24) = 0;
          v126 = (v122 + 24);
          *(v122 + 48) = 1;
          *(v122 + 64) = 0;
          *(v122 + 72) = 0;
          v6 = (v122 + 72);
          *(v122 + 56) = 0;
          v127 = (v122 + 56);
          *(v122 + 16) = 2;
          swift_beginAccess();
          *v126 = v64;
          *(v123 + 32) = v166;
          swift_beginAccess();
          *v125 = v168;
          *(v123 + 48) = 0;
          swift_beginAccess();
          *v127 = v167;
          *(v123 + 64) = v124;

          outlined destroy of MetricValue(&v194);
          swift_beginAccess();
          v121 = *v6;
          *v6 = 0;
          goto LABEL_60;
        case 4:
          swift_beginAccess();
          if (*(v26 + 48))
          {
            goto LABEL_8;
          }

          v191 = v27;
          v168 = *(v26 + 40);
          v94 = v168;
          v95 = v187;
          v96 = FIUIDistanceTypeForActivityType();
          v97 = [v95 localizedShortUnitStringForDistanceUnit:objc_msgSend(v95 textCase:{sel_naturalScaleUnitForDistanceInMeters_distanceType_, v96, v94), 1}];
          if (v97)
          {
            v98 = v97;
            v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v101 = v100;
          }

          else
          {
            v99 = 0;
            v101 = 0;
          }

          v131 = [v95 localizedCompactNaturalScaleStringWithDistanceInMeters:v96 distanceType:0 unitStyle:0 usedUnit:v94];
          if (!v131)
          {
            goto LABEL_74;
          }

          v132 = v131;
          v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v167 = v133;
          v135 = v134;

          v194 = v99;
          v195 = v101;
          v196 = v133;
          v197 = v135;
          type metadata accessor for WorkoutNotificationUnit();
          v198 = 0u;
          v199 = 0u;
          v200 = 0;
          v136 = swift_allocObject();
          *(v136 + 32) = 0;
          v166 = v99;
          *(v136 + 40) = 0;
          v6 = (v136 + 40);
          *(v136 + 24) = 0;
          *(v136 + 48) = 1;
          *(v136 + 64) = 0;
          *(v136 + 72) = 0;
          *(v136 + 56) = 0;
          *(v136 + 16) = 4;
          swift_beginAccess();
          *(v136 + 24) = v167;
          *(v136 + 32) = v135;
          swift_beginAccess();
          *(v136 + 40) = v168;
          *(v136 + 48) = 0;
          swift_beginAccess();
          *(v136 + 56) = v166;
          *(v136 + 64) = v101;

          outlined destroy of MetricValue(&v194);
          swift_beginAccess();
          v137 = *(v136 + 72);
          *(v136 + 72) = 0;

          v3 = v202;
          MEMORY[0x20F2E6F30]();
          if (*((v202[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v202[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          goto LABEL_62;
        case 5:
          swift_beginAccess();
          if (*(v26 + 48))
          {
            goto LABEL_8;
          }

          v102 = *(v26 + 40);
          v103 = v187;
          v104 = [v103 localizedShortTypeDistinguishingUnitStringForEnergyType:3 workoutSectionType:1 multiline:0];
          if (v104)
          {
            v105 = v104;
            v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v108 = v107;
          }

          else
          {
            v106 = 0;
            v108 = 0;
          }

          v191 = v27;
          v138 = [v103 localizedStringWithEnergyInCalories:3 energyType:0 unitStyle:v102];
          if (!v138)
          {
            goto LABEL_73;
          }

          v139 = v138;
          v168 = v102;
          v140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v142 = v141;

          v194 = v106;
          v195 = v108;
          v196 = v140;
          v197 = v142;
          v198 = 0u;
          v199 = 0u;
          v200 = 0;
          v143 = [v103 unitManager];
          if (!v143)
          {
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
LABEL_74:
            __break(1u);
            return;
          }

          v144 = v143;
          v145 = [v143 userActiveEnergyBurnedUnit];

          v146 = [v145 unitString];
          v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v149 = v148;

          v192 = v147;
          v193 = v149;
          lazy protocol witness table accessor for type String and conformance String();
          v150 = StringProtocol.localizedUppercase.getter();
          v166 = v151;
          v167 = v150;

          v6 = v196;
          v152 = v197;

          outlined destroy of MetricValue(&v194);
          type metadata accessor for WorkoutNotificationUnit();
          v153 = swift_allocObject();
          *(v153 + 32) = 0;
          *(v153 + 40) = 0;
          *(v153 + 24) = 0;
          *(v153 + 48) = 1;
          *(v153 + 64) = 0;
          *(v153 + 72) = 0;
          v129 = (v153 + 72);
          *(v153 + 56) = 0;
          *(v153 + 16) = 5;
          swift_beginAccess();
          *(v153 + 24) = v6;
          *(v153 + 32) = v152;
          swift_beginAccess();
          *(v153 + 40) = v168;
          *(v153 + 48) = 0;
          swift_beginAccess();
          v154 = v166;
          *(v153 + 56) = v167;
          *(v153 + 64) = v154;
LABEL_59:
          swift_beginAccess();
          v121 = *v129;
          *v129 = 0;
LABEL_60:

          v3 = v202;
          MEMORY[0x20F2E6F30]();
          if (*((v202[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v202[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

LABEL_62:
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          a1 = v202[0];
          v23 = v185;
          v22 = v186;
          v25 = v188;
          v27 = v191;
LABEL_9:
          ++v12;
          if (v27 == v23)
          {

            v24 = v169;
            goto LABEL_65;
          }

          break;
        case 6:
        case 8:
        case 0xC:
        case 0xE:
        case 0xF:
        case 0x10:

          v3 = v202;
          MEMORY[0x20F2E6F30](v28);
          if (*((v202[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v202[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v25 = v188;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          a1 = v202[0];
          goto LABEL_9;
        case 7:
          swift_beginAccess();
          if (*(v26 + 48))
          {
            goto LABEL_8;
          }

          v191 = v27;
          v71 = *(v26 + 40);
          type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v73 = objc_opt_self();
          v167 = v187;
          v74 = [v73 bundleForClass_];
          v75 = MEMORY[0x20F2E6C00](0xD000000000000016, v164 | 0x8000000000000000);
          v76 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
          v77 = [v74 localizedStringForKey:v75 value:0 table:v76];

          v166 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v162 = v78;

          v168 = v71;
          v192 = *&v71;
          static Locale.autoupdatingCurrent.getter();
          v161 = lazy protocol witness table accessor for type Double and conformance Double();
          v79 = v177;
          FloatingPointFormatStyle.init(locale:)();
          v81 = v180;
          v80 = v181;
          (*v173)(v180, v174, v181);
          v82 = v176;
          v83 = v178;
          MEMORY[0x20F2E4420](v81, 0, 1, v178);
          (*v172)(v81, v80);
          v84 = *v171;
          (*v171)(v79, v83);
          v85 = v182;
          static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
          v86 = v175;
          MEMORY[0x20F2E4430](v85, v83);
          (*v170)(v85, v183);
          v84(v82, v83);
          lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>();
          BinaryFloatingPoint.formatted<A>(_:)();
          v87 = v167;

          v84(v86, v83);
          v88 = v194;
          v89 = v195;
          v195 = 0;
          v194 = 0;
          v196 = v88;
          v197 = v89;
          v198 = v163;
          *&v199 = v166;
          *(&v199 + 1) = v162;
          v200 = 0;

          v90 = [v87 localizedHeartRateUnitString];
          if (v90)
          {
            v91 = v90;
            v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v166 = v93;
            v167 = v92;

            outlined destroy of MetricValue(&v194);
          }

          else
          {
            outlined destroy of MetricValue(&v194);
            v166 = 0;
            v167 = 0;
          }

          type metadata accessor for WorkoutNotificationUnit();
          v128 = swift_allocObject();
          *(v128 + 32) = 0;
          *(v128 + 40) = 0;
          *(v128 + 24) = 0;
          *(v128 + 48) = 1;
          *(v128 + 64) = 0;
          *(v128 + 72) = 0;
          v129 = (v128 + 72);
          *(v128 + 56) = 0;
          v6 = (v128 + 56);
          *(v128 + 16) = 7;
          swift_beginAccess();
          *(v128 + 24) = v88;
          *(v128 + 32) = v89;
          swift_beginAccess();
          *(v128 + 40) = v168;
          *(v128 + 48) = 0;
          swift_beginAccess();
          v130 = v166;
          *(v128 + 56) = v167;
          *(v128 + 64) = v130;
          goto LABEL_59;
        default:
          swift_beginAccess();
          if (*(v26 + 48))
          {
LABEL_8:

            goto LABEL_9;
          }

          v191 = v27;
          v168 = *(v26 + 40);
          v192 = *&v168;
          v167 = v187;
          static Locale.autoupdatingCurrent.getter();
          v166 = lazy protocol witness table accessor for type Double and conformance Double();
          v41 = v177;
          FloatingPointFormatStyle.init(locale:)();
          v43 = v180;
          v42 = v181;
          (*v173)(v180, v174, v181);
          v44 = v176;
          v45 = v178;
          MEMORY[0x20F2E4420](v43, 0, 1, v178);
          (*v172)(v43, v42);
          v46 = *v171;
          (*v171)(v41, v45);
          v47 = v182;
          static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
          v48 = v175;
          MEMORY[0x20F2E4430](v47, v45);
          (*v170)(v47, v183);
          v46(v44, v45);
          lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>();
          BinaryFloatingPoint.formatted<A>(_:)();
          v46(v48, v45);
          v49 = v194;
          v50 = v195;
          v51 = [objc_opt_self() localizedShortCadenceUnitStringForActivityType_];
          if (v51)
          {
            v52 = v51;
            v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v55 = v54;
          }

          else
          {

            v53 = 0;
            v55 = 0;
          }

          v166 = v53;
          v167 = v55;
          v194 = v53;
          v195 = v55;
          v196 = v49;
          v197 = v50;
          type metadata accessor for WorkoutNotificationUnit();
          v198 = 0u;
          v199 = 0u;
          v200 = 0;
          v119 = swift_allocObject();
          *(v119 + 32) = 0;
          *(v119 + 40) = 0;
          *(v119 + 24) = 0;
          v6 = (v119 + 24);
          *(v119 + 48) = 1;
          *(v119 + 16) = 0;
          *(v119 + 64) = 0;
          *(v119 + 72) = 0;
          *(v119 + 56) = 0;
          swift_beginAccess();
          *(v119 + 24) = v49;
          *(v119 + 32) = v50;
          swift_beginAccess();
          *(v119 + 40) = v168;
          *(v119 + 48) = 0;
          swift_beginAccess();
          v120 = v167;
          *(v119 + 56) = v166;
          *(v119 + 64) = v120;

          outlined destroy of MetricValue(&v194);
          swift_beginAccess();
          v121 = *(v119 + 72);
          *(v119 + 72) = 0;
          goto LABEL_60;
      }
    }

    if (v12 >= *(v190 + 16))
    {
      goto LABEL_67;
    }

    v26 = *(v22 + 8 * v12 + 32);

    v27 = v12 + 1;
    if (!__OFADD__(v12, 1))
    {
      goto LABEL_16;
    }

LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    swift_once();
  }

  v155 = v169;
  a1 = MEMORY[0x277D84F90];
LABEL_65:
  v156 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_notificationType;
  v157 = v165;
  swift_beginAccess();
  v158 = *(v157 + v156);
  v159 = type metadata accessor for WorkoutNotification(0);
  v160 = objc_allocWithZone(v159);
  static Date.now.getter();
  v160[OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_notificationType] = v158;
  *&v160[OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_units] = a1;
  *&v160[OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_displayDuration] = 0;
  v201.receiver = v160;
  v201.super_class = v159;
  objc_msgSendSuper2(&v201, sel_init);
}

BOOL MirroredWidgetAttributes.ContentState.visuallyDistinct(from:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v117 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v113 = &v100[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v114 = &v100[-v8];
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x28223BE20](v115, v9);
  v116 = &v100[-v10];
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v119 = &v100[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v17 = MEMORY[0x28223BE20](v15 - 8, v16);
  v19 = &v100[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v100[-v22];
  v25 = MEMORY[0x28223BE20](v21, v24);
  v118 = &v100[-v26];
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v100[-v28];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  v32 = MEMORY[0x28223BE20](v30, v31);
  MEMORY[0x28223BE20](v32, v33);
  v36 = &v100[-v35];
  if (*v1 != *a1)
  {
    return 1;
  }

  if (*(v1 + 8) != *(a1 + 8))
  {
    return 1;
  }

  v111 = v23;
  v107 = v19;
  v109 = v34;
  v37 = type metadata accessor for MirroredWidgetAttributes.ContentState(0);
  v38 = *(v37 + 24);
  v39 = _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v112 = v1;
  v108 = v38;
  v110 = v39;
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 1;
  }

  v104 = v3;
  v105 = v37;
  v40 = *(v37 + 28);
  v41 = *(v30 + 48);
  _s10Foundation4DateVSgWOcTm_6(v112 + v40, v36, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v106 = a1;
  _s10Foundation4DateVSgWOcTm_6(a1 + v40, &v36[v41], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v42 = v12;
  v43 = *(v12 + 48);
  if (v43(v36, 1, v11) == 1)
  {
    v44 = v43(&v36[v41], 1, v11);
    v45 = v111;
    if (v44 != 1)
    {
      goto LABEL_9;
    }

    v102 = v43;
    v103 = v42;
    _s10Foundation4DateVSgWOhTm_12(v36, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v46 = v112;
  }

  else
  {
    _s10Foundation4DateVSgWOcTm_6(v36, v29, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v47 = v41;
    v48 = v43(&v36[v41], 1, v11);
    v45 = v111;
    if (v48 == 1)
    {
      (*(v42 + 8))(v29, v11);
      goto LABEL_9;
    }

    v102 = v43;
    v52 = v119;
    (*(v42 + 32))(v119, &v36[v47], v11);
    v53 = dispatch thunk of static Equatable.== infix(_:_:)();
    v54 = v42;
    v46 = v112;
    v101 = v53;
    v103 = v54;
    v55 = *(v54 + 8);
    v55(v52, v11);
    v55(v29, v11);
    _s10Foundation4DateVSgWOhTm_12(v36, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if ((v101 & 1) == 0)
    {
      return 1;
    }
  }

  v56 = v105;
  if (*(v46 + v105[8]) != *(v106 + v105[8]))
  {
    return 1;
  }

  if (*(v46 + v105[10]) == 1)
  {
    v58 = v118;
    Date.addingTimeInterval(_:)();
    v59 = 0;
  }

  else
  {
    v59 = 1;
    v58 = v118;
  }

  v60 = v103;
  v61 = *(v103 + 56);
  v62 = 1;
  v61(v58, v59, 1, v11);
  if (*(v106 + v56[10]) == 1)
  {
    Date.addingTimeInterval(_:)();
    v62 = 0;
  }

  v61(v45, v62, 1, v11);
  v63 = *(v30 + 48);
  v36 = v109;
  _s10Foundation4DateVSgWOcTm_6(v58, v109, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _s10Foundation4DateVSgWOcTm_6(v45, &v36[v63], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v64 = v102;
  if (v102(v36, 1, v11) == 1)
  {
    _s10Foundation4DateVSgWOhTm_12(v45, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    _s10Foundation4DateVSgWOhTm_12(v58, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (v64(&v36[v63], 1, v11) == 1)
    {
      _s10Foundation4DateVSgWOhTm_12(v36, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v65 = v112;
LABEL_26:
      v72 = v105;
      v71 = v106;
      if (*(v65 + v105[11]) != *(v106 + v105[11]))
      {
        return 1;
      }

      v73 = v65;
      v74 = v105[12];
      v75 = *(v65 + v74);
      v76 = *(v106 + v74);
      if (v75)
      {
        v77 = v104;
        if (!v76)
        {
          return 1;
        }

        v78 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore11MetricValueV_Tt1g5(v75, v76);
        v71 = v106;
        if ((v78 & 1) == 0)
        {
          return 1;
        }
      }

      else
      {
        v77 = v104;
        if (v76)
        {
          return 1;
        }
      }

      v79 = v72[13];
      v80 = *(v65 + v79);
      v81 = *(v71 + v79);
      if (v80)
      {
        if (!v81)
        {
          return 1;
        }

        type metadata accessor for WorkoutNotification(0);
        v82 = v81;
        v83 = v80;
        v84 = static NSObject.== infix(_:_:)();
        v73 = v112;
        v85 = v84;

        if ((v85 & 1) == 0)
        {
          return 1;
        }
      }

      else if (v81)
      {
        return 1;
      }

      v86 = v105[14];
      v87 = *(v115 + 48);
      v88 = v73 + v86;
      v89 = v116;
      _s10Foundation4DateVSgWOcTm_6(v88, v116, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v90 = v106 + v86;
      v91 = v89;
      _s10Foundation4DateVSgWOcTm_6(v90, &v89[v87], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v92 = *(v117 + 48);
      if (v92(v89, 1, v77) == 1)
      {
        if (v92(&v89[v87], 1, v77) == 1)
        {
          _s10Foundation4DateVSgWOhTm_12(v89, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          return 0;
        }
      }

      else
      {
        v93 = v89;
        v94 = v114;
        _s10Foundation4DateVSgWOcTm_6(v93, v114, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        if (v92((v91 + v87), 1, v77) != 1)
        {
          v95 = v117;
          v96 = v91 + v87;
          v97 = v113;
          (*(v117 + 32))(v113, v96, v77);
          _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
          v98 = dispatch thunk of static Equatable.== infix(_:_:)();
          v99 = *(v95 + 8);
          v99(v97, v77);
          v99(v94, v77);
          _s10Foundation4DateVSgWOhTm_12(v91, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          return (v98 & 1) == 0;
        }

        (*(v117 + 8))(v94, v77);
      }

      v49 = &_s10Foundation4UUIDVSg_ADtMd;
      v50 = &_s10Foundation4UUIDVSg_ADtMR;
      v51 = v91;
      goto LABEL_10;
    }
  }

  else
  {
    v66 = v107;
    _s10Foundation4DateVSgWOcTm_6(v36, v107, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (v64(&v36[v63], 1, v11) != 1)
    {
      v67 = v119;
      (*(v60 + 32))(v119, &v36[v63], v11);
      v68 = dispatch thunk of static Equatable.== infix(_:_:)();
      v65 = v112;
      v69 = v68;
      v70 = *(v60 + 8);
      v70(v67, v11);
      _s10Foundation4DateVSgWOhTm_12(v45, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      _s10Foundation4DateVSgWOhTm_12(v118, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v70(v66, v11);
      _s10Foundation4DateVSgWOhTm_12(v36, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if ((v69 & 1) == 0)
      {
        return 1;
      }

      goto LABEL_26;
    }

    _s10Foundation4DateVSgWOhTm_12(v45, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    _s10Foundation4DateVSgWOhTm_12(v118, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    (*(v60 + 8))(v66, v11);
  }

LABEL_9:
  v49 = &_s10Foundation4DateVSg_ADtMd;
  v50 = &_s10Foundation4DateVSg_ADtMR;
  v51 = v36;
LABEL_10:
  _s10Foundation4DateVSgWOhTm_12(v51, v49, v50);
  return 1;
}

unint64_t MirroredWidgetAttributes.ContentState.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x726F6F646E497369;
    v7 = 0x7461447472617473;
    v8 = 0xD00000000000001BLL;
    if (a1 == 3)
    {
      v8 = 0xD000000000000018;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (!a1)
    {
      v6 = 0xD000000000000015;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x7363697274656DLL;
    v2 = 0x6163696669746F6ELL;
    if (a1 != 9)
    {
      v2 = 0x5574756F6B726F77;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x5464657370616C65;
    v4 = 0x656C706D6F437369;
    if (a1 != 6)
    {
      v4 = 0x49746E656D676573;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MirroredWidgetAttributes.ContentState.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredWidgetAttributes.ContentState.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MirroredWidgetAttributes.ContentState.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized MirroredWidgetAttributes.ContentState.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MirroredWidgetAttributes.ContentState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MirroredWidgetAttributes.ContentState.CodingKeys and conformance MirroredWidgetAttributes.ContentState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MirroredWidgetAttributes.ContentState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MirroredWidgetAttributes.ContentState.CodingKeys and conformance MirroredWidgetAttributes.ContentState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MirroredWidgetAttributes.ContentState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore24MirroredWidgetAttributesV12ContentStateV10CodingKeys33_D6F77751502224CFB4DD4458B6953F02LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore24MirroredWidgetAttributesV12ContentStateV10CodingKeys33_D6F77751502224CFB4DD4458B6953F02LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MirroredWidgetAttributes.ContentState.CodingKeys and conformance MirroredWidgetAttributes.ContentState.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v3;
  v13 = 0;
  type metadata accessor for HKWorkoutActivityType(0);
  _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type HKWorkoutActivityType and conformance HKWorkoutActivityType, type metadata accessor for HKWorkoutActivityType, MEMORY[0x277D0A670]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = type metadata accessor for MirroredWidgetAttributes.ContentState(0);
    LOBYTE(v14) = 2;
    type metadata accessor for Date();
    _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 3;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v14) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = *(v3 + *(v10 + 48));
    v13 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore11MetricValueVGMd, &_sSay11WorkoutCore11MetricValueVGMR);
    lazy protocol witness table accessor for type [MetricValue] and conformance <A> [A](&lazy protocol witness table cache variable for type [MetricValue] and conformance <A> [A], lazy protocol witness table accessor for type MetricValue and conformance MetricValue, MEMORY[0x277D83948]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = *(v3 + *(v10 + 52));
    v13 = 9;
    type metadata accessor for WorkoutNotification(0);
    _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutNotification and conformance WorkoutNotification, type metadata accessor for WorkoutNotification, &protocol conformance descriptor for WorkoutNotification);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v14) = 10;
    type metadata accessor for UUID();
    _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void MirroredWidgetAttributes.ContentState.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v28 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v29 = &v28 - v9;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v28 - v17;
  MEMORY[0x20F2E7FF0](*v1);
  Hasher._combine(_:)(*(v1 + 8));
  v19 = type metadata accessor for MirroredWidgetAttributes.ContentState(0);
  _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  dispatch thunk of Hashable.hash(into:)();
  _s10Foundation4DateVSgWOcTm_6(v1 + v19[7], v18, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((*(v11 + 48))(v18, 1, v10) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v11 + 8))(v14, v10);
  }

  Hasher._combine(_:)(*(v1 + v19[8]));
  v20 = *(v1 + v19[9]);
  if (v20 == 0.0)
  {
    v20 = 0.0;
  }

  MEMORY[0x20F2E8020](*&v20);
  Hasher._combine(_:)(*(v1 + v19[10]));
  MEMORY[0x20F2E7FF0](*(v1 + v19[11]));
  v21 = *(v1 + v19[12]);
  v22 = v30;
  if (v21)
  {
    Hasher._combine(_:)(1u);
    specialized Array<A>.hash(into:)(a1, v21);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v23 = *(v1 + v19[13]);
  if (v23)
  {
    Hasher._combine(_:)(1u);
    v24 = v23;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v25 = v29;
  _s10Foundation4DateVSgWOcTm_6(v2 + v19[14], v29, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v26 = v31;
  if ((*(v22 + 48))(v25, 1, v31) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v27 = v28;
    (*(v22 + 32))(v28, v25, v26);
    Hasher._combine(_:)(1u);
    _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v22 + 8))(v27, v26);
  }
}

Swift::Int MirroredWidgetAttributes.ContentState.hashValue.getter()
{
  Hasher.init(_seed:)();
  MirroredWidgetAttributes.ContentState.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t MirroredWidgetAttributes.ContentState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v45 = v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v46 = v41 - v8;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore24MirroredWidgetAttributesV12ContentStateV10CodingKeys33_D6F77751502224CFB4DD4458B6953F02LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore24MirroredWidgetAttributesV12ContentStateV10CodingKeys33_D6F77751502224CFB4DD4458B6953F02LLOGMR);
  v47 = *(v14 - 8);
  v48 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v17 = v41 - v16;
  v18 = type metadata accessor for MirroredWidgetAttributes.ContentState(0);
  v20 = MEMORY[0x28223BE20](v18, v19);
  v22 = v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v10 + 56);
  v53 = *(v20 + 28);
  v23(&v22[v53], 1, 1, v9);
  v24 = *(v18 + 56);
  v25 = type metadata accessor for UUID();
  v26 = *(*(v25 - 8) + 56);
  v51 = v24;
  v54 = v22;
  v26(&v22[v24], 1, 1, v25);
  v27 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  lazy protocol witness table accessor for type MirroredWidgetAttributes.ContentState.CodingKeys and conformance MirroredWidgetAttributes.ContentState.CodingKeys();
  v49 = v17;
  v28 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v28)
  {
    v31 = v53;
    v30 = v54;
    __swift_destroy_boxed_opaque_existential_1(v52);
    _s10Foundation4DateVSgWOhTm_12(v30 + v31, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

    return _s10Foundation4DateVSgWOhTm_12(v30 + v51, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    v29 = v13;
    v41[1] = v25;
    v42 = v10;
    v43 = v18;
    v50 = v9;
    type metadata accessor for HKWorkoutActivityType(0);
    v55 = 0;
    _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type HKWorkoutActivityType and conformance HKWorkoutActivityType, type metadata accessor for HKWorkoutActivityType, MEMORY[0x277D0A678]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v32 = v54;
    *v54 = v56;
    LOBYTE(v56) = 1;
    v33 = KeyedDecodingContainer.decode(_:forKey:)();
    v34 = v53;
    *(v32 + 8) = v33 & 1;
    LOBYTE(v56) = 2;
    _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v35 = v50;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v42 + 32))(v32 + v43[6], v29, v35);
    LOBYTE(v56) = 3;
    v36 = v46;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v37 = v43;
    _s10Foundation4DateVSgWOdTm_2(v36, v32 + v34, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    LOBYTE(v56) = 4;
    *(v32 + v37[8]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v56) = 5;
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v32 + v37[9]) = v38;
    LOBYTE(v56) = 6;
    *(v32 + v37[10]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v56) = 7;
    *(v32 + v37[11]) = KeyedDecodingContainer.decode(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore11MetricValueVGMd, &_sSay11WorkoutCore11MetricValueVGMR);
    v55 = 8;
    lazy protocol witness table accessor for type [MetricValue] and conformance <A> [A](&lazy protocol witness table cache variable for type [MetricValue] and conformance <A> [A], lazy protocol witness table accessor for type MetricValue and conformance MetricValue, MEMORY[0x277D83978]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v32 + v43[12]) = v56;
    type metadata accessor for WorkoutNotification(0);
    v55 = 9;
    _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutNotification and conformance WorkoutNotification, type metadata accessor for WorkoutNotification, &protocol conformance descriptor for WorkoutNotification);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v54 + v43[13]) = v56;
    LOBYTE(v56) = 10;
    _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v47 + 8))(v49, v48);
    v39 = v54;
    _s10Foundation4DateVSgWOdTm_2(v45, v54 + v51, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined init with copy of MirroredWidgetAttributes.ContentState(v39, v44);
    __swift_destroy_boxed_opaque_existential_1(v52);
    return outlined destroy of MirroredWidgetAttributes.ContentState(v39);
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MirroredWidgetAttributes.ContentState()
{
  Hasher.init(_seed:)();
  MirroredWidgetAttributes.ContentState.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredWidgetAttributes.ContentState(uint64_t a1)
{
  Hasher.init(_seed:)();
  MirroredWidgetAttributes.ContentState.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t MirroredWidgetAttributes.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MirroredWidgetAttributes.uuid.setter(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MirroredWidgetAttributes.init(uuid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MirroredWidgetAttributes.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredWidgetAttributes.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

void protocol witness for CodingKey.init(stringValue:) in conformance MirroredWidgetAttributes.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1684632949 && a2 == 0xE400000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MirroredWidgetAttributes.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MirroredWidgetAttributes.CodingKeys and conformance MirroredWidgetAttributes.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MirroredWidgetAttributes.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MirroredWidgetAttributes.CodingKeys and conformance MirroredWidgetAttributes.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MirroredWidgetAttributes.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore24MirroredWidgetAttributesV10CodingKeys33_D6F77751502224CFB4DD4458B6953F02LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore24MirroredWidgetAttributesV10CodingKeys33_D6F77751502224CFB4DD4458B6953F02LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MirroredWidgetAttributes.CodingKeys and conformance MirroredWidgetAttributes.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for UUID();
  _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t MirroredWidgetAttributes.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for UUID();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v22 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore24MirroredWidgetAttributesV10CodingKeys33_D6F77751502224CFB4DD4458B6953F02LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore24MirroredWidgetAttributesV10CodingKeys33_D6F77751502224CFB4DD4458B6953F02LLOGMR);
  v20 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for MirroredWidgetAttributes(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MirroredWidgetAttributes.CodingKeys and conformance MirroredWidgetAttributes.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v15 = v19;
    v16 = v21;
    _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v20 + 8))(v10, v7);
    (*(v15 + 32))(v14, v22, v4);
    outlined init with take of MirroredWidgetAttributes(v14, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance MirroredWidgetAttributes(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore24MirroredWidgetAttributesV10CodingKeys33_D6F77751502224CFB4DD4458B6953F02LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore24MirroredWidgetAttributesV10CodingKeys33_D6F77751502224CFB4DD4458B6953F02LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MirroredWidgetAttributes.CodingKeys and conformance MirroredWidgetAttributes.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for UUID();
  _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t outlined assign with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s10Foundation4DateVSgWOhTm_12(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

BOOL specialized static MirroredWidgetAttributes.ContentState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v68 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v65 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v66 = &v61 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x28223BE20](v10, v11);
  v67 = &v61 - v12;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v61 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v61 - v24;
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v64 = v10;
  v26 = type metadata accessor for MirroredWidgetAttributes.ContentState(0);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v62 = v4;
  v63 = v26;
  v27 = *(v26 + 28);
  v28 = *(v22 + 48);
  _s10Foundation4DateVSgWOcTm_6(a1 + v27, v25, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _s10Foundation4DateVSgWOcTm_6(a2 + v27, &v25[v28], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v29 = *(v14 + 48);
  if (v29(v25, 1, v13) == 1)
  {
    v30 = v29(&v25[v28], 1, v13);
    v31 = v64;
    if (v30 == 1)
    {
      _s10Foundation4DateVSgWOhTm_12(v25, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_12;
    }

LABEL_9:
    v33 = &_s10Foundation4DateVSg_ADtMd;
    v34 = &_s10Foundation4DateVSg_ADtMR;
    v35 = v25;
LABEL_10:
    _s10Foundation4DateVSgWOhTm_12(v35, v33, v34);
    return 0;
  }

  _s10Foundation4DateVSgWOcTm_6(v25, v21, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v61 = v28;
  v32 = v29(&v25[v28], 1, v13);
  v31 = v64;
  if (v32 == 1)
  {
    (*(v14 + 8))(v21, v13);
    goto LABEL_9;
  }

  (*(v14 + 32))(v17, &v25[v61], v13);
  _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v36 = dispatch thunk of static Equatable.== infix(_:_:)();
  v37 = *(v14 + 8);
  v37(v17, v13);
  v37(v21, v13);
  _s10Foundation4DateVSgWOhTm_12(v25, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((v36 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v38 = v63;
  if (*(a1 + v63[8]) != *(a2 + v63[8]) || *(a1 + v63[9]) != *(a2 + v63[9]) || *(a1 + v63[10]) != *(a2 + v63[10]) || *(a1 + v63[11]) != *(a2 + v63[11]))
  {
    return 0;
  }

  v39 = v63[12];
  v40 = *(a1 + v39);
  v41 = *(a2 + v39);
  if (v40)
  {
    if (!v41 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore11MetricValueV_Tt1g5(v40, v41) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v41)
  {
    return 0;
  }

  v42 = v38[13];
  v43 = *(a1 + v42);
  v44 = *(a2 + v42);
  if (v43)
  {
    if (!v44)
    {
      return 0;
    }

    type metadata accessor for WorkoutNotification(0);
    v45 = v44;
    v46 = v43;
    v47 = static NSObject.== infix(_:_:)();

    if ((v47 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v44)
  {
    return 0;
  }

  v49 = v38[14];
  v50 = *(v31 + 48);
  v51 = a1 + v49;
  v52 = v67;
  _s10Foundation4DateVSgWOcTm_6(v51, v67, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  _s10Foundation4DateVSgWOcTm_6(a2 + v49, v52 + v50, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v53 = v68;
  v54 = *(v68 + 48);
  v55 = v62;
  if (v54(v52, 1, v62) == 1)
  {
    if (v54(v52 + v50, 1, v55) == 1)
    {
      _s10Foundation4DateVSgWOhTm_12(v52, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      return 1;
    }

    goto LABEL_33;
  }

  v56 = v66;
  _s10Foundation4DateVSgWOcTm_6(v52, v66, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v54(v52 + v50, 1, v55) == 1)
  {
    (*(v53 + 8))(v56, v55);
LABEL_33:
    v33 = &_s10Foundation4UUIDVSg_ADtMd;
    v34 = &_s10Foundation4UUIDVSg_ADtMR;
    v35 = v52;
    goto LABEL_10;
  }

  v57 = v52 + v50;
  v58 = v65;
  (*(v53 + 32))(v65, v57, v55);
  _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v59 = dispatch thunk of static Equatable.== infix(_:_:)();
  v60 = *(v53 + 8);
  v60(v58, v55);
  v60(v56, v55);
  _s10Foundation4DateVSgWOhTm_12(v52, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return (v59 & 1) != 0;
}

unint64_t lazy protocol witness table accessor for type MirroredWidgetAttributes.ContentState.CodingKeys and conformance MirroredWidgetAttributes.ContentState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MirroredWidgetAttributes.ContentState.CodingKeys and conformance MirroredWidgetAttributes.ContentState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MirroredWidgetAttributes.ContentState.CodingKeys and conformance MirroredWidgetAttributes.ContentState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredWidgetAttributes.ContentState.CodingKeys and conformance MirroredWidgetAttributes.ContentState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredWidgetAttributes.ContentState.CodingKeys and conformance MirroredWidgetAttributes.ContentState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MirroredWidgetAttributes.ContentState.CodingKeys and conformance MirroredWidgetAttributes.ContentState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredWidgetAttributes.ContentState.CodingKeys and conformance MirroredWidgetAttributes.ContentState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredWidgetAttributes.ContentState.CodingKeys and conformance MirroredWidgetAttributes.ContentState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MirroredWidgetAttributes.ContentState.CodingKeys and conformance MirroredWidgetAttributes.ContentState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredWidgetAttributes.ContentState.CodingKeys and conformance MirroredWidgetAttributes.ContentState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredWidgetAttributes.ContentState.CodingKeys and conformance MirroredWidgetAttributes.ContentState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MirroredWidgetAttributes.ContentState.CodingKeys and conformance MirroredWidgetAttributes.ContentState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredWidgetAttributes.ContentState.CodingKeys and conformance MirroredWidgetAttributes.ContentState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MetricValue and conformance MetricValue()
{
  result = lazy protocol witness table cache variable for type MetricValue and conformance MetricValue;
  if (!lazy protocol witness table cache variable for type MetricValue and conformance MetricValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricValue and conformance MetricValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetricValue and conformance MetricValue;
  if (!lazy protocol witness table cache variable for type MetricValue and conformance MetricValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricValue and conformance MetricValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetricValue and conformance MetricValue;
  if (!lazy protocol witness table cache variable for type MetricValue and conformance MetricValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricValue and conformance MetricValue);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [MetricValue] and conformance <A> [A](unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore11MetricValueVGMd, &_sSay11WorkoutCore11MetricValueVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of MirroredWidgetAttributes.ContentState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MirroredWidgetAttributes.ContentState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of MirroredWidgetAttributes.ContentState(uint64_t a1)
{
  v2 = type metadata accessor for MirroredWidgetAttributes.ContentState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type MirroredWidgetAttributes.CodingKeys and conformance MirroredWidgetAttributes.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MirroredWidgetAttributes.CodingKeys and conformance MirroredWidgetAttributes.CodingKeys;
  if (!lazy protocol witness table cache variable for type MirroredWidgetAttributes.CodingKeys and conformance MirroredWidgetAttributes.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredWidgetAttributes.CodingKeys and conformance MirroredWidgetAttributes.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredWidgetAttributes.CodingKeys and conformance MirroredWidgetAttributes.CodingKeys;
  if (!lazy protocol witness table cache variable for type MirroredWidgetAttributes.CodingKeys and conformance MirroredWidgetAttributes.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredWidgetAttributes.CodingKeys and conformance MirroredWidgetAttributes.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredWidgetAttributes.CodingKeys and conformance MirroredWidgetAttributes.CodingKeys;
  if (!lazy protocol witness table cache variable for type MirroredWidgetAttributes.CodingKeys and conformance MirroredWidgetAttributes.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredWidgetAttributes.CodingKeys and conformance MirroredWidgetAttributes.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredWidgetAttributes.CodingKeys and conformance MirroredWidgetAttributes.CodingKeys;
  if (!lazy protocol witness table cache variable for type MirroredWidgetAttributes.CodingKeys and conformance MirroredWidgetAttributes.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredWidgetAttributes.CodingKeys and conformance MirroredWidgetAttributes.CodingKeys);
  }

  return result;
}

uint64_t type metadata accessor for MirroredWidgetAttributes.ContentState(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of MirroredWidgetAttributes(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MirroredWidgetAttributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for MirroredWidgetAttributes(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for MirroredWidgetAttributes.ContentState(uint64_t a1)
{
  type metadata accessor for HKWorkoutActivityType(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [MetricValue]?(319);
        if (v4 <= 0x3F)
        {
          _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for WorkoutNotification?, type metadata accessor for WorkoutNotification);
          if (v5 <= 0x3F)
          {
            _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x277CC95F0]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for [MetricValue]?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for [MetricValue]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore11MetricValueVGMd, &_sSay11WorkoutCore11MetricValueVGMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [MetricValue]?);
    }
  }
}

uint64_t getEnumTagSinglePayload for MirroredWidgetAttributes.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MirroredWidgetAttributes.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for MirroredWidgetAttributes.ContentState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MirroredWidgetAttributes.ContentState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized MirroredWidgetAttributes.ContentState.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x800000020B4685B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F6F646E497369 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x800000020B454860 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000020B4685D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5464657370616C65 && a2 == 0xEB00000000656D69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C706D6F437369 && a2 == 0xEA00000000006574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x49746E656D676573 && a2 == 0xEC0000007865646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6163696669746F6ELL && a2 == 0xEC0000006E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x5574756F6B726F77 && a2 == 0xEB00000000444955)
  {

    return 10;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

unint64_t lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>()
{
  result = lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>;
  if (!lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>);
  }

  return result;
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned INImage?, @unowned NSError?) -> () with result type INImage?(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MediaPlaybackArtworkStore.ArtworkStoreError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MediaPlaybackArtworkStore.ArtworkStoreError(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t static MediaPlaybackArtworkStore.shared.getter()
{
  type metadata accessor for MediaPlaybackArtworkStore();

  return swift_initStaticObject();
}

uint64_t MediaPlaybackArtworkStore.storeArtwork(for:)(uint64_t a1)
{
  *(v2 + 216) = a1;
  *(v2 + 224) = v1;
  return MEMORY[0x2822009F8](MediaPlaybackArtworkStore.storeArtwork(for:), 0, 0);
}

{
  v2 = *(v1 + 232);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t MediaPlaybackArtworkStore.storeArtwork(for:)()
{
  if (one-time initialization token for mediaPlayback != -1)
  {
LABEL_45:
    swift_once();
  }

  v1 = v0[27];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.mediaPlayback);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[27];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_20AEA4000, v4, v5, "[MediaPlaybackArtworkStore] storing artwork for %@", v7, 0xCu);
    outlined destroy of NSObject?(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v10 = MSSuggestion.legacyIntent.getter();
  if (v10)
  {
    v11 = v10;
    v12 = [v10 mediaContainer];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 artwork];

      if (v14)
      {
LABEL_7:
        v0[29] = v14;
        if ([v14 _requiresRetrieval])
        {
          v0[2] = v0;
          v0[7] = v0 + 26;
          v0[3] = MediaPlaybackArtworkStore.storeArtwork(for:);
          v15 = swift_continuation_init();
          v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7INImageCSgs5Error_pGMd, &_sSccySo7INImageCSgs5Error_pGMR);
          v0[10] = MEMORY[0x277D85DD0];
          v0[11] = 1107296256;
          v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned INImage?, @unowned NSError?) -> () with result type INImage?;
          v0[13] = &block_descriptor_70;
          v0[14] = v15;
          [v14 _retrieveImageDataWithReply_];

          return MEMORY[0x282200938](v0 + 2);
        }

        v36 = [v14 _imageData];
        if (v36)
        {
          v37 = v36;
          v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v40 = v39;

          v0[34] = v38;
          v0[35] = v40;
          v41 = swift_task_alloc();
          v0[36] = v41;
          *v41 = v0;
          v41[1] = MediaPlaybackArtworkStore.storeArtwork(for:);
          v42 = v0[27];

          return MediaPlaybackArtworkStore.saveImage(data:for:)(v38, v40, v42);
        }

        v19 = v0[29];
        lazy protocol witness table accessor for type MediaPlaybackArtworkStore.ArtworkStoreError and conformance MediaPlaybackArtworkStore.ArtworkStoreError();
        swift_allocError();
        v49 = 1;
        goto LABEL_49;
      }
    }

    else
    {
    }
  }

  v16 = v0[27];
  v17 = *MEMORY[0x277D27F90];
  swift_beginAccess();
  v18 = *(v16 + v17);
  if (v18)
  {
    v19 = v18;
    MSPlayMediaAppIntent.intentAction.getter();
    _sSo8LNActionCMaTm_0(0, &lazy cache variable for type metadata for LNAction, 0x277D23720);
    if (swift_dynamicCast())
    {
      v20 = v0[25];
      v21 = [v20 parameters];
      _sSo8LNActionCMaTm_0(0, &lazy cache variable for type metadata for LNProperty, 0x277D238D8);
      v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v54 = v19;
      v55 = v0;
      v53 = v20;
      if (v22 >> 62)
      {
        v23 = __CocoaSet.count.getter();
        if (v23)
        {
LABEL_16:
          v24 = 0;
          v25 = 0xEB00000000797469;
          while (1)
          {
            if ((v22 & 0xC000000000000001) != 0)
            {
              v26 = MEMORY[0x20F2E7A20](v24, v22);
            }

            else
            {
              if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_44;
              }

              v26 = *(v22 + 8 * v24 + 32);
            }

            v27 = v26;
            v28 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              __break(1u);
LABEL_44:
              __break(1u);
              goto LABEL_45;
            }

            v0 = v25;
            v29 = [v26 identifier];
            v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v32 = v31;

            if (v30 == 0x746E456F69647561 && v32 == v0)
            {
              break;
            }

            v25 = v0;
            v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v34)
            {
              goto LABEL_35;
            }

            ++v24;
            if (v28 == v23)
            {
              goto LABEL_47;
            }
          }

LABEL_35:

          v43 = [v27 value];
          v0 = v55;
          if (v43)
          {
            v44 = v43;
            v45 = [v43 displayRepresentation];

            if (v45)
            {
              v46 = [v45 image];
              if (v46)
              {
                v47 = v46;
                v14 = [v46 inImage];

                if (v14)
                {

                  goto LABEL_7;
                }
              }

              else
              {
              }
            }
          }

          lazy protocol witness table accessor for type MediaPlaybackArtworkStore.ArtworkStoreError and conformance MediaPlaybackArtworkStore.ArtworkStoreError();
          swift_allocError();
          *v50 = 1;
          swift_willThrow();

          goto LABEL_50;
        }
      }

      else
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v23)
        {
          goto LABEL_16;
        }
      }

LABEL_47:

      v19 = v54;
      v0 = v55;
    }

    lazy protocol witness table accessor for type MediaPlaybackArtworkStore.ArtworkStoreError and conformance MediaPlaybackArtworkStore.ArtworkStoreError();
    swift_allocError();
    v49 = 4;
LABEL_49:
    *v48 = v49;
    swift_willThrow();

    goto LABEL_50;
  }

  lazy protocol witness table accessor for type MediaPlaybackArtworkStore.ArtworkStoreError and conformance MediaPlaybackArtworkStore.ArtworkStoreError();
  swift_allocError();
  *v35 = 4;
  swift_willThrow();
LABEL_50:
  v51 = v0[1];

  return v51();
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = MediaPlaybackArtworkStore.storeArtwork(for:);
  }

  else
  {
    v2 = MediaPlaybackArtworkStore.storeArtwork(for:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[32];
  v5 = v2[31];
  if (v0)
  {
    v3[40] = v5;
    v3[41] = v4;
    v3[39] = v0;
    v6 = MediaPlaybackArtworkStore.storeArtwork(for:);
  }

  else
  {
    v3[37] = v5;
    v3[38] = v4;
    v6 = MediaPlaybackArtworkStore.storeArtwork(for:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[35];
  v5 = v2[34];
  if (v0)
  {
    v3[40] = v5;
    v3[41] = v4;
    v3[39] = v0;
    v6 = MediaPlaybackArtworkStore.storeArtwork(for:);
  }

  else
  {
    v3[37] = v5;
    v3[38] = v4;
    v6 = MediaPlaybackArtworkStore.storeArtwork(for:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);

  outlined consume of Data._Representation(v1, v2);
  v3 = *(v0 + 8);

  return v3();
}

{
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  outlined consume of Data._Representation(v1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t MediaPlaybackArtworkStore.storeArtwork(for:)(__n128 a1)
{
  v2 = *(v1 + 208);
  if (v2)
  {
    v3 = [*(v1 + 208) _imageData];
    if (v3)
    {
      v4 = v3;
      v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      *(v1 + 248) = v5;
      *(v1 + 256) = v7;
      v8 = swift_task_alloc();
      *(v1 + 264) = v8;
      *v8 = v1;
      v8[1] = MediaPlaybackArtworkStore.storeArtwork(for:);
      v9 = *(v1 + 216);

      return MediaPlaybackArtworkStore.saveImage(data:for:)(v5, v7, v9);
    }
  }

  v11 = *(v1 + 232);
  lazy protocol witness table accessor for type MediaPlaybackArtworkStore.ArtworkStoreError and conformance MediaPlaybackArtworkStore.ArtworkStoreError();
  swift_allocError();
  *v12 = 1;
  swift_willThrow();

  v13 = *(v1 + 8);

  return v13();
}

uint64_t MediaPlaybackArtworkStore.artwork(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](MediaPlaybackArtworkStore.artwork(for:), 0, 0);
}

uint64_t MediaPlaybackArtworkStore.artwork(for:)()
{
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  v0[4] = __swift_project_value_buffer(v2, static WOLog.mediaPlayback);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_20AEA4000, v4, v5, "[MediaPlaybackArtworkStore] loading artwork for %@", v7, 0xCu);
    outlined destroy of NSObject?(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = MediaPlaybackArtworkStore.artwork(for:);
  v11 = v0[2];

  return MediaPlaybackArtworkStore.loadImage(for:)(v11);
}

{
  v1 = v0[6];
  v2 = v0[7];
  outlined copy of Data._Representation(v1, v2);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v4 = [objc_opt_self() imageWithImageData_];

  outlined consume of Data._Representation(v1, v2);
  v5 = v4;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[6];
  v9 = v0[7];
  if (v8)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v5;
    *v12 = v5;
    v13 = v5;
    _os_log_impl(&dword_20AEA4000, v6, v7, "[MediaPlaybackArtworkStore] loaded INImage: %@", v11, 0xCu);
    outlined destroy of NSObject?(v12);
    MEMORY[0x20F2E9420](v12, -1, -1);
    MEMORY[0x20F2E9420](v11, -1, -1);
  }

  outlined consume of Data._Representation(v10, v9);

  v14 = v0[1];

  return v14(v5);
}

{
  v1 = *(v0 + 64);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 64);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20AEA4000, v3, v4, "[MediaPlaybackArtworkStore] error loading image: %@", v7, 0xCu);
    outlined destroy of NSObject?(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11(0);
}

uint64_t MediaPlaybackArtworkStore.artwork(for:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[6] = a1;
  v4[7] = a2;
  v4[8] = v2;

  if (v2)
  {
    v5 = MediaPlaybackArtworkStore.artwork(for:);
  }

  else
  {
    v5 = MediaPlaybackArtworkStore.artwork(for:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void MediaPlaybackArtworkStore.clearUnusedArtwork(configuredIdentifiers:)(uint64_t a1)
{
  v151 = *MEMORY[0x277D85DE8];
  v148 = type metadata accessor for URL();
  v136 = *(v148 - 8);
  v3 = MEMORY[0x28223BE20](v148, v2);
  v137 = &v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v140 = &v131 - v7;
  v9 = MEMORY[0x28223BE20](v6, v8);
  v144 = &v131 - v10;
  MEMORY[0x28223BE20](v9, v11);
  v143 = &v131 - v12;
  v145 = type metadata accessor for Insecure.SHA1();
  v13 = *(v145 - 1);
  MEMORY[0x28223BE20](v145 - 1, v14);
  v141 = (&v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v139 = type metadata accessor for Insecure.SHA1Digest();
  v16 = *(v139 - 1);
  MEMORY[0x28223BE20](v139, v17);
  v142 = (&v131 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v146 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v146, v19);
  v22 = &v131 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1 + 56;
  v24 = 1 << *(a1 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(a1 + 56);
  v27 = (v24 + 63) >> 6;
  v28 = (v20 + 8);
  *&v138 = v13 + 8;
  v135 = (v16 + 8);
  v149 = a1;

  v29 = 0;
  v147 = MEMORY[0x277D84F90];
  while (1)
  {
    v30 = v29;
    if (!v26)
    {
      break;
    }

LABEL_8:
    v26 &= v26 - 1;

    static String.Encoding.utf8.getter();
    v31 = String.data(using:allowLossyConversion:)();
    v33 = v32;
    (*v28)(v22, v146);
    if (v33 >> 60 == 15)
    {
    }

    else
    {
      v134 = lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1(&lazy protocol witness table cache variable for type Insecure.SHA1 and conformance Insecure.SHA1, MEMORY[0x277CC5598], MEMORY[0x277CC5590]);
      dispatch thunk of HashFunction.init()();
      v34 = v33 >> 62;
      if ((v33 >> 62) > 1)
      {
        if (v34 == 2)
        {
          v35 = *(v31 + 24);
          *&v133 = *(v31 + 16);
          v132 = v35;

          v36 = __DataStorage._bytes.getter();
          if (v36)
          {
            v131 = v36;
            v36 = __DataStorage._offset.getter();
            v37 = v133;
            if (__OFSUB__(v133, v36))
            {
              goto LABEL_62;
            }

            v131 += v133 - v36;
          }

          else
          {
            v131 = 0;
            v37 = v133;
          }

          *&v133 = v132 - v37;
          if (__OFSUB__(v132, v37))
          {
            goto LABEL_61;
          }

          MEMORY[0x20F2E42A0](v36);
        }

        else
        {
          *(&v150 + 6) = 0;
          *&v150 = 0;
        }
      }

      else if (v34)
      {
        v132 = v31;
        *&v133 = (v31 >> 32) - v31;
        if (v31 >> 32 < v31)
        {
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
        }

        v38 = __DataStorage._bytes.getter();
        if (v38)
        {
          v131 = v38;
          v39 = __DataStorage._offset.getter();
          if (__OFSUB__(v132, v39))
          {
            goto LABEL_63;
          }

          v132 = v132 - v39 + v131;
        }

        else
        {
          v132 = 0;
        }

        MEMORY[0x20F2E42A0]();
      }

      else
      {
        *&v150 = v31;
        WORD4(v150) = v33;
        BYTE10(v150) = BYTE2(v33);
        BYTE11(v150) = BYTE3(v33);
        BYTE12(v150) = BYTE4(v33);
        BYTE13(v150) = BYTE5(v33);
      }

      v40 = v141;
      dispatch thunk of HashFunction.update(bufferPointer:)();
      outlined consume of Data?(v31, v33);
      dispatch thunk of HashFunction.finalize()();
      (*v138)(v40, v145);
      lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1(&lazy protocol witness table cache variable for type Insecure.SHA1Digest and conformance Insecure.SHA1Digest, MEMORY[0x277CC5578], MEMORY[0x277CC5570]);
      v41 = Digest.hexString.getter();
      v134 = v42;

      outlined consume of Data?(v31, v33);
      (*v135)(v142, v139);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v147 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v147 + 2) + 1, 1, v147);
      }

      v44 = *(v147 + 2);
      v43 = *(v147 + 3);
      if (v44 >= v43 >> 1)
      {
        v147 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v147);
      }

      v45 = v147;
      *(v147 + 2) = v44 + 1;
      v46 = &v45[16 * v44];
      v47 = v134;
      *(v46 + 4) = v41;
      *(v46 + 5) = v47;
    }
  }

  while (1)
  {
    v29 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      goto LABEL_59;
    }

    if (v29 >= v27)
    {
      break;
    }

    v26 = *(v23 + 8 * v29);
    ++v30;
    if (v26)
    {
      goto LABEL_8;
    }
  }

  if (one-time initialization token for mediaPlayback == -1)
  {
    goto LABEL_33;
  }

LABEL_59:
  swift_once();
LABEL_33:
  v48 = type metadata accessor for Logger();
  v49 = __swift_project_value_buffer(v48, static WOLog.mediaPlayback);
  v50 = v147;

  v146 = v49;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();

  v53 = os_log_type_enabled(v51, v52);
  v54 = v144;
  if (v53)
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *&v150 = v56;
    *v55 = 136315138;
    v57 = MEMORY[0x20F2E6F70](v50, MEMORY[0x277D837D0]);
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, &v150);

    *(v55 + 4) = v59;
    _os_log_impl(&dword_20AEA4000, v51, v52, "[MediaPlaybackArtworkStore] Clearing unused artwork, configured hashes: %s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x20F2E9420](v56, -1, -1);
    MEMORY[0x20F2E9420](v55, -1, -1);
  }

  v60 = v148;
  v61 = v143;
  MediaPlaybackArtworkStore.directoryURL()(v143);
  v149 = 0;
  v139 = objc_opt_self();
  v71 = [v139 defaultManager];
  countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
  v73 = MEMORY[0x20F2E6C00](countAndFlagsBits);

  *&v150 = 0;
  v74 = [v71 contentsOfDirectoryAtPath:v73 error:&v150];

  v75 = v150;
  if (v74)
  {
    v76 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v75;

    v132 = v76;
    v81 = *(v76 + 16);
    if (v81)
    {
      v142 = (v136 + 16);
      v145 = (v136 + 8);
      v82 = (v132 + 40);
      *&v80 = 136315138;
      v138 = v80;
      *&v80 = 136315394;
      v133 = v80;
      do
      {
        v89 = *(v82 - 1);
        v88 = *v82;
        *&v150 = v89;
        *(&v150 + 1) = v88;
        MEMORY[0x28223BE20](v78, v79);
        *(&v131 - 2) = &v150;

        v90 = v149;
        v91 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_2, (&v131 - 4), v147);
        v149 = v90;
        if (v91)
        {

          v92 = Logger.logObject.getter();
          v93 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v92, v93))
          {
            v83 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            *&v150 = v84;
            *v83 = v138;
            v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v88, &v150);

            *(v83 + 4) = v85;
            _os_log_impl(&dword_20AEA4000, v92, v93, "[MediaPlaybackArtworkStore] configured, not deleting: %s", v83, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v84);
            v86 = v84;
            v54 = v144;
            MEMORY[0x20F2E9420](v86, -1, -1);
            v87 = v83;
            v60 = v148;
            MEMORY[0x20F2E9420](v87, -1, -1);
          }

          else
          {
          }
        }

        else
        {
          URL.appendingPathComponent(_:)();

          v94 = v140;
          v141 = *v142;
          (v141)(v140, v54, v60);
          v95 = Logger.logObject.getter();
          v96 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v95, v96))
          {
            v97 = swift_slowAlloc();
            v98 = swift_slowAlloc();
            *&v150 = v98;
            *v97 = v138;
            lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
            v99 = dispatch thunk of CustomStringConvertible.description.getter();
            v101 = v100;
            v102 = *v145;
            (*v145)(v94, v148);
            v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v101, &v150);
            v54 = v144;

            *(v97 + 4) = v103;
            _os_log_impl(&dword_20AEA4000, v95, v96, "[MediaPlaybackArtworkStore] not configured, deleting: %s", v97, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v98);
            v104 = v98;
            v60 = v148;
            MEMORY[0x20F2E9420](v104, -1, -1);
            MEMORY[0x20F2E9420](v97, -1, -1);
          }

          else
          {

            v102 = *v145;
            (*v145)(v94, v60);
          }

          v105 = [v139 defaultManager];
          URL._bridgeToObjectiveC()(v106);
          v108 = v107;
          *&v150 = 0;
          v109 = [v105 removeItemAtURL:v107 error:&v150];

          v110 = v150;
          if (v109)
          {
            v78 = (v102)(v54, v60);
          }

          else
          {
            v111 = v110;
            v112 = _convertNSErrorToError(_:)();

            swift_willThrow();
            v149 = 0;
            v113 = v137;
            (v141)(v137, v54, v60);
            v114 = v112;
            v115 = Logger.logObject.getter();
            v116 = v54;
            v117 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v115, v117))
            {
              v118 = swift_slowAlloc();
              v119 = v102;
              v135 = v102;
              v120 = v118;
              v134 = swift_slowAlloc();
              v121 = v113;
              v141 = swift_slowAlloc();
              *&v150 = v141;
              *v120 = v133;
              lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
              v122 = dispatch thunk of CustomStringConvertible.description.getter();
              v124 = v123;
              v119(v121, v148);
              v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v124, &v150);

              *(v120 + 4) = v125;
              *(v120 + 12) = 2112;
              v126 = v112;
              v127 = _swift_stdlib_bridgeErrorToNSError();
              *(v120 + 14) = v127;
              v128 = v134;
              *v134 = v127;
              _os_log_impl(&dword_20AEA4000, v115, v117, "[MediaPlaybackArtworkStore] Error removing item %s: %@", v120, 0x16u);
              outlined destroy of NSObject?(v128);
              v60 = v148;
              MEMORY[0x20F2E9420](v128, -1, -1);
              v129 = v141;
              __swift_destroy_boxed_opaque_existential_0(v141);
              MEMORY[0x20F2E9420](v129, -1, -1);
              MEMORY[0x20F2E9420](v120, -1, -1);

              v54 = v144;
              v78 = v135(v144, v60);
            }

            else
            {

              v102(v113, v60);
              v78 = (v102)(v116, v60);
              v54 = v116;
            }
          }
        }

        v82 += 2;
        --v81;
      }

      while (v81);
    }

    (*(v136 + 8))(v143, v60);
  }

  else
  {
    v130 = v150;

    v149 = _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v136 + 8))(v61, v60);
    v62 = v149;
    v63 = v149;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v66 = 138412290;
      v68 = v149;
      v69 = v149;
      v70 = _swift_stdlib_bridgeErrorToNSError();
      *(v66 + 4) = v70;
      *v67 = v70;
      _os_log_impl(&dword_20AEA4000, v64, v65, "[MediaPlaybackArtworkStore] Error while clearing unused artwork: %@", v66, 0xCu);
      outlined destroy of NSObject?(v67);
      MEMORY[0x20F2E9420](v67, -1, -1);
      MEMORY[0x20F2E9420](v66, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t String.sha1Hash()(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Insecure.SHA1();
  v21 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Insecure.SHA1Digest();
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.Encoding();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v15 = String.data(using:allowLossyConversion:)();
  v17 = v16;
  (*(v11 + 8))(v14, v10);
  result = 0;
  if (v17 >> 60 != 15)
  {
    lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1(&lazy protocol witness table cache variable for type Insecure.SHA1 and conformance Insecure.SHA1, MEMORY[0x277CC5598], MEMORY[0x277CC5590]);
    dispatch thunk of HashFunction.init()();
    outlined copy of Data._Representation(v15, v17);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v15, v17, v5);
    outlined consume of Data?(v15, v17);
    dispatch thunk of HashFunction.finalize()();
    (*(v21 + 8))(v5, v2);
    lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1(&lazy protocol witness table cache variable for type Insecure.SHA1Digest and conformance Insecure.SHA1Digest, MEMORY[0x277CC5578], MEMORY[0x277CC5570]);
    v19 = v23;
    v20 = Digest.hexString.getter();
    outlined consume of Data?(v15, v17);
    (*(v22 + 8))(v9, v19);
    return v20;
  }

  return result;
}

uint64_t MediaPlaybackArtworkStore.saveImage(data:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for URL();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](MediaPlaybackArtworkStore.saveImage(data:for:), 0, 0);
}

void *MediaPlaybackArtworkStore.saveImage(data:for:)()
{
  v65 = v0;
  MediaPlaybackArtworkStore.makeDirectoryIfNecessary()();
  MediaPlaybackArtworkStore.fileURL(for:)(*(v0 + 32), *(v0 + 80));
  v2 = [objc_opt_self() defaultManager];
  countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
  v4 = MEMORY[0x20F2E6C00](countAndFlagsBits);

  v5 = [v2 fileExistsAtPath:v4 isDirectory:0];

  if (v5)
  {
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 80);
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v9 = *(v0 + 48);
    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static WOLog.mediaPlayback);
    (*(v8 + 16))(v7, v6, v9);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 80);
    v16 = *(v0 + 56);
    v15 = *(v0 + 64);
    v17 = *(v0 + 48);
    if (v13)
    {
      v62 = *(v0 + 80);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v64[0] = v19;
      *v18 = 136315138;
      v20 = URL.absoluteString.getter();
      v22 = v21;
      v23 = *(v16 + 8);
      v23(v15, v17);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v64);

      *(v18 + 4) = v24;
      _os_log_impl(&dword_20AEA4000, v11, v12, "[MediaPlaybackArtworkStore] image file already exists at %s, not overwriting", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x20F2E9420](v19, -1, -1);
      MEMORY[0x20F2E9420](v18, -1, -1);

      v23(v62, v17);
    }

    else
    {

      v38 = *(v16 + 8);
      v38(v15, v17);
      v38(v14, v17);
    }

    v39 = *(v0 + 8);

    return v39();
  }

  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v25 = *(v0 + 72);
  v26 = *(v0 + 80);
  v27 = *(v0 + 48);
  v28 = *(v0 + 56);
  v30 = *(v0 + 16);
  v29 = *(v0 + 24);
  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static WOLog.mediaPlayback);
  (*(v28 + 16))(v25, v26, v27);
  outlined copy of Data._Representation(v30, v29);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = *(v0 + 24);
    v35 = swift_slowAlloc();
    result = swift_slowAlloc();
    v63 = result;
    v64[0] = result;
    *v35 = 134218242;
    v36 = v34 >> 62;
    if ((v34 >> 62) > 1)
    {
      if (v36 != 2)
      {
        v37 = 0;
        goto LABEL_26;
      }

      v44 = *(*(v0 + 16) + 16);
      v45 = *(*(v0 + 16) + 24);
      v46 = __OFSUB__(v45, v44);
      v37 = v45 - v44;
      if (!v46)
      {
        goto LABEL_26;
      }

      __break(1u);
    }

    else if (!v36)
    {
      v37 = *(v0 + 30);
LABEL_26:
      v49 = *(v0 + 72);
      v51 = *(v0 + 48);
      v50 = *(v0 + 56);
      v52 = *(v0 + 16);
      v53 = *(v0 + 24);
      *(v35 + 4) = v37;
      outlined consume of Data._Representation(v52, v53);
      *(v35 + 12) = 2080;
      v54 = URL.absoluteString.getter();
      v56 = v55;
      v43 = *(v50 + 8);
      v43(v49, v51);
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, v64);

      *(v35 + 14) = v57;
      _os_log_impl(&dword_20AEA4000, v32, v33, "[MediaPlaybackArtworkStore] attempting to write data of length %ld to %s", v35, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x20F2E9420](v63, -1, -1);
      MEMORY[0x20F2E9420](v35, -1, -1);

      goto LABEL_27;
    }

    v47 = *(v0 + 16);
    v48 = *(v0 + 20);
    v46 = __OFSUB__(v48, v47);
    LODWORD(v37) = v48 - v47;
    if (v46)
    {
      __break(1u);
      return result;
    }

    v37 = v37;
    goto LABEL_26;
  }

  v40 = *(v0 + 72);
  v41 = *(v0 + 48);
  v42 = *(v0 + 56);
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));

  v43 = *(v42 + 8);
  v43(v40, v41);
LABEL_27:
  *(v0 + 88) = v43;
  v58 = swift_task_alloc();
  *(v0 + 96) = v58;
  *v58 = v0;
  v58[1] = MediaPlaybackArtworkStore.saveImage(data:for:);
  v59 = *(v0 + 80);
  v60 = *(v0 + 16);
  v61 = *(v0 + 24);

  return Data.asyncWrite(to:options:)(v59, 1, v60, v61);
}

uint64_t MediaPlaybackArtworkStore.saveImage(data:for:)()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = MediaPlaybackArtworkStore.saveImage(data:for:);
  }

  else
  {
    v2 = MediaPlaybackArtworkStore.saveImage(data:for:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  (*(v0 + 88))(*(v0 + 80), *(v0 + 48));

  v1 = *(v0 + 8);

  return v1();
}

{
  (*(v0 + 88))(*(v0 + 80), *(v0 + 48));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Data.asyncWrite(to:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for URL();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v4[8] = *(v6 + 64);
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](Data.asyncWrite(to:options:), 0, 0);
}

uint64_t Data.asyncWrite(to:options:)()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[4];
  v18 = v0[3];
  v8 = v0[2];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  (*(v3 + 16))(v2, v8, v6);
  v10 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = v7;
  *(v11 + 5) = v5;
  (*(v3 + 32))(&v11[v10], v2, v6);
  *&v11[(v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8] = v18;
  outlined copy of Data._Representation(v7, v5);
  v12 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for closure #1 in Data.asyncWrite(to:options:), v11);
  v0[11] = v12;
  v13 = swift_task_alloc();
  v0[12] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v13 = v0;
  v13[1] = Data.asyncWrite(to:options:);
  v15 = MEMORY[0x277D84950];
  v16 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v14, v12, v16, v14, v15);
}

{
  *(*v1 + 104) = v0;

  if (v0)
  {

    v2 = Data.asyncWrite(to:options:);
  }

  else
  {
    v2 = Data.asyncWrite(to:options:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MediaPlaybackArtworkStore.loadImage(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](MediaPlaybackArtworkStore.loadImage(for:), 0, 0);
}

uint64_t MediaPlaybackArtworkStore.loadImage(for:)()
{
  v25 = v0;
  MediaPlaybackArtworkStore.fileURL(for:)(*(v0 + 16), *(v0 + 72));
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = type metadata accessor for Logger();
  *(v0 + 80) = __swift_project_value_buffer(v5, static WOLog.mediaPlayback);
  v6 = *(v4 + 16);
  *(v0 + 88) = v6;
  *(v0 + 96) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v2, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 64);
  v11 = *(v0 + 32);
  v12 = *(v0 + 40);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v13 = 136315138;
    v21 = URL.absoluteString.getter();
    v23 = v6;
    v15 = v14;
    v16 = *(v12 + 8);
    v16(v10, v11);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v15, &v24);
    v6 = v23;

    *(v13 + 4) = v17;
    _os_log_impl(&dword_20AEA4000, v7, v8, "[MediaPlaybackArtworkStore] attempting to read data from %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x20F2E9420](v22, -1, -1);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }

  else
  {

    v16 = *(v12 + 8);
    v16(v10, v11);
  }

  *(v0 + 104) = v16;
  v6(*(v0 + 56), *(v0 + 72), *(v0 + 32));
  v18 = swift_task_alloc();
  *(v0 + 112) = v18;
  *v18 = v0;
  v18[1] = MediaPlaybackArtworkStore.loadImage(for:);
  v19 = *(v0 + 56);

  return specialized Data.init(contentsOf:options:)(v19, 1);
}

{
  (*(v0 + 104))(*(v0 + 72), *(v0 + 32));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MediaPlaybackArtworkStore.loadImage(for:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[15] = a1;
  v4[16] = a2;
  v4[17] = v2;

  if (v2)
  {
    v5 = MediaPlaybackArtworkStore.loadImage(for:);
  }

  else
  {
    v5 = MediaPlaybackArtworkStore.loadImage(for:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void *MediaPlaybackArtworkStore.loadImage(for:)()
{
  v36 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  (*(v0 + 88))(*(v0 + 48), *(v0 + 72), *(v0 + 32));
  outlined copy of Data._Representation(v1, v2);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 128);
  if (v5)
  {
    v7 = swift_slowAlloc();
    result = swift_slowAlloc();
    v34 = result;
    v35 = result;
    *v7 = 134218242;
    v9 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v9 != 2)
      {
        v10 = 0;
        goto LABEL_13;
      }

      v16 = *(*(v0 + 120) + 16);
      v17 = *(*(v0 + 120) + 24);
      v18 = __OFSUB__(v17, v16);
      v10 = v17 - v16;
      if (!v18)
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!v9)
    {
      v10 = *(v0 + 134);
LABEL_13:
      v21 = *(v0 + 120);
      v22 = *(v0 + 128);
      v23 = *(v0 + 104);
      v33 = *(v0 + 72);
      v24 = *(v0 + 48);
      v25 = *(v0 + 32);
      *(v7 + 4) = v10;
      outlined consume of Data._Representation(v21, v22);
      *(v7 + 12) = 2080;
      v26 = URL.absoluteString.getter();
      v28 = v27;
      v23(v24, v25);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v35);

      *(v7 + 14) = v29;
      _os_log_impl(&dword_20AEA4000, v3, v4, "[MediaPlaybackArtworkStore] read data of length %ld from %s", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x20F2E9420](v34, -1, -1);
      MEMORY[0x20F2E9420](v7, -1, -1);

      v23(v33, v25);
      goto LABEL_14;
    }

    v19 = *(v0 + 120);
    v20 = *(v0 + 124);
    v18 = __OFSUB__(v20, v19);
    LODWORD(v10) = v20 - v19;
    if (v18)
    {
      __break(1u);
      return result;
    }

    v10 = v10;
    goto LABEL_13;
  }

  v11 = *(v0 + 120);
  v12 = *(v0 + 104);
  v13 = *(v0 + 72);
  v14 = *(v0 + 48);
  v15 = *(v0 + 32);

  outlined consume of Data._Representation(v11, v6);
  v12(v14, v15);
  v12(v13, v15);
LABEL_14:

  v30 = *(v0 + 8);
  v31 = *(v0 + 120);
  v32 = *(v0 + 128);

  return v30(v31, v32);
}

uint64_t MediaPlaybackArtworkStore.makeDirectoryIfNecessary()()
{
  v20[1] = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MediaPlaybackArtworkStore.directoryURL()(v5);
  if (!v0)
  {
    v7 = objc_opt_self();
    v8 = [v7 defaultManager];
    countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
    v10 = MEMORY[0x20F2E6C00](countAndFlagsBits);

    v11 = [v8 fileExistsAtPath:v10 isDirectory:0];

    if (v11)
    {
      return (*(v2 + 8))(v5, v1);
    }

    else
    {
      v12 = [v7 defaultManager];
      URL._bridgeToObjectiveC()(v13);
      v15 = v14;
      v20[0] = 0;
      v16 = [v12 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:v20];

      if (v16)
      {
        v17 = *(v2 + 8);
        v18 = v20[0];
        return v17(v5, v1);
      }

      else
      {
        v19 = v20[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        return (*(v2 + 8))(v5, v1);
      }
    }
  }

  return result;
}

uint64_t MediaPlaybackArtworkStore.directoryURL()@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v1 = type metadata accessor for URL.DirectoryHint();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v20 - v13;
  v15 = [objc_opt_self() defaultManager];
  v16 = [v15 URLsForDirectory:9 inDomains:1];

  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v17 + 16))
  {
    (*(v7 + 16))(v11, v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

    (*(v7 + 32))(v14, v11, v6);
    v20[2] = 0xD000000000000019;
    v20[3] = 0x800000020B446CF0;
    (*(v2 + 104))(v5, *MEMORY[0x277CC91D8], v1);
    lazy protocol witness table accessor for type String and conformance String();
    URL.appending<A>(component:directoryHint:)();
    (*(v2 + 8))(v5, v1);
    return (*(v7 + 8))(v14, v6);
  }

  else
  {

    lazy protocol witness table accessor for type MediaPlaybackArtworkStore.ArtworkStoreError and conformance MediaPlaybackArtworkStore.ArtworkStoreError();
    swift_allocError();
    *v19 = 2;
    return swift_willThrow();
  }
}

void MediaPlaybackArtworkStore.fileURL(for:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = type metadata accessor for URL.DirectoryHint();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v23 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 identifier];
  if (v13 && (v14 = v13, v15 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v17 = v16, v14, v18 = String.sha1Hash()(v15, v17), v20 = v19, , v20))
  {
    MediaPlaybackArtworkStore.directoryURL()(v12);
    if (!v2)
    {
      v24 = v18;
      v25 = v20;
      (*(v5 + 104))(v8, *MEMORY[0x277CC91D8], v4);
      lazy protocol witness table accessor for type String and conformance String();
      URL.appending<A>(component:directoryHint:)();
      (*(v5 + 8))(v8, v4);
      (*(v23 + 8))(v12, v9);
    }
  }

  else
  {
    lazy protocol witness table accessor for type MediaPlaybackArtworkStore.ArtworkStoreError and conformance MediaPlaybackArtworkStore.ArtworkStoreError();
    swift_allocError();
    *v21 = 3;
    swift_willThrow();
  }
}

uint64_t closure #1 in Data.init(contentsOf:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](closure #1 in Data.init(contentsOf:options:), 0, 0);
}

uint64_t closure #1 in Data.init(contentsOf:options:)()
{
  v1 = Data.init(contentsOf:options:)();
  v2 = *(v0 + 16);
  *v2 = v1;
  v2[1] = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t closure #1 in Data.asyncWrite(to:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](closure #1 in Data.asyncWrite(to:options:), 0, 0);
}

uint64_t closure #1 in Data.asyncWrite(to:options:)()
{
  Data.write(to:options:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t dispatch thunk of MediaPlaybackArtworkStore.artwork(for:)(uint64_t a1)
{
  v6 = (*(*v1 + 88) + **(*v1 + 88));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of MediaPlaybackArtworkStore.artwork(for:);

  return v6(a1);
}

{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

unint64_t lazy protocol witness table accessor for type MediaPlaybackArtworkStore.ArtworkStoreError and conformance MediaPlaybackArtworkStore.ArtworkStoreError()
{
  result = lazy protocol witness table cache variable for type MediaPlaybackArtworkStore.ArtworkStoreError and conformance MediaPlaybackArtworkStore.ArtworkStoreError;
  if (!lazy protocol witness table cache variable for type MediaPlaybackArtworkStore.ArtworkStoreError and conformance MediaPlaybackArtworkStore.ArtworkStoreError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaPlaybackArtworkStore.ArtworkStoreError and conformance MediaPlaybackArtworkStore.ArtworkStoreError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MediaPlaybackArtworkStore.ArtworkStoreError and conformance MediaPlaybackArtworkStore.ArtworkStoreError;
  if (!lazy protocol witness table cache variable for type MediaPlaybackArtworkStore.ArtworkStoreError and conformance MediaPlaybackArtworkStore.ArtworkStoreError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaPlaybackArtworkStore.ArtworkStoreError and conformance MediaPlaybackArtworkStore.ArtworkStoreError);
  }

  return result;
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for Insecure.SHA1();
      lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1(&lazy protocol witness table cache variable for type Insecure.SHA1 and conformance Insecure.SHA1, MEMORY[0x277CC5598], MEMORY[0x277CC5590]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6);
  }

  type metadata accessor for Insecure.SHA1();
  lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1(&lazy protocol witness table cache variable for type Insecure.SHA1 and conformance Insecure.SHA1, MEMORY[0x277CC5598], MEMORY[0x277CC5590]);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x20F2E42A0]();
      type metadata accessor for Insecure.SHA1();
      lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1(&lazy protocol witness table cache variable for type Insecure.SHA1 and conformance Insecure.SHA1, MEMORY[0x277CC5598], MEMORY[0x277CC5590]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in Data.asyncWrite(to:options:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = partial apply for closure #1 in Data.asyncWrite(to:options:);

  return closure #1 in Data.asyncWrite(to:options:)(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t partial apply for closure #1 in Data.asyncWrite(to:options:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _sSo8LNActionCMaTm_0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t specialized Data.init(contentsOf:options:)(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = type metadata accessor for URL();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v2[8] = *(v4 + 64);
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized Data.init(contentsOf:options:), 0, 0);
}

uint64_t specialized Data.init(contentsOf:options:)()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  (*(v3 + 16))(v1, v7, v5);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  (*(v3 + 32))(v10 + v9, v1, v5);
  *(v10 + ((v4 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
  v11 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC10Foundation4DataV_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in Data.init(contentsOf:options:), v10);
  v0[11] = v11;
  v12 = swift_task_alloc();
  v0[12] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v12 = v0;
  v12[1] = specialized Data.init(contentsOf:options:);
  v14 = MEMORY[0x277CC9318];
  v15 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 2, v11, v14, v13, v15);
}

{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = specialized Data.init(contentsOf:options:);
  }

  else
  {
    v2 = specialized Data.init(contentsOf:options:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  (*(v0[7] + 8))(v0[4], v0[6]);
  v1 = v0[2];
  v2 = v0[3];

  v3 = v0[1];

  return v3(v1, v2);
}

{
  (*(v0[7] + 8))(v0[4], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t partial apply for closure #1 in Data.init(contentsOf:options:)(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in Data.init(contentsOf:options:);

  return closure #1 in Data.init(contentsOf:options:)(a1, v6, v7, v1 + v5, v8);
}

uint64_t getEnumTagSinglePayload for MediaPlaybackArtworkStore.ArtworkStoreError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaPlaybackArtworkStore.ArtworkStoreError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t FIUIWorkoutActivityType.supportsPacer.getter()
{
  v1 = [v0 isIndoor];
  v2 = [v0 effectiveTypeIdentifier];
  if (v1)
  {
    LOBYTE(v4) = v2 == 37 || v2 == 71;
  }

  else if ((v2 - 13) >= 0x3B)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = 0x400000001000001uLL >> (v2 - 13);
  }

  return v4 & 1;
}

uint64_t FIUIWorkoutActivityType.supportsRepeatIndicatorInIntervals.getter()
{
  if ([v0 isPoolSwimming])
  {
    v1 = 1;
  }

  else
  {
    v3[3] = &type metadata for WorkoutFeatures;
    v3[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
    LOBYTE(v3[0]) = 9;
    v1 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  return v1 & 1;
}

id FIUIWorkoutActivityType.usesPedometer.getter()
{
  [v0 effectiveTypeIdentifier];
  result = _HKWorkoutDistanceTypeForActivityType();
  if (result)
  {
    v2 = result;
    v3 = [result identifier];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return (v9 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t @objc FIUIWorkoutActivityType.supportsSegments.getter(void *a1)
{
  v1 = a1;
  if ([v1 isPartOfMultiSport])
  {

    v2 = 0;
  }

  else if ([v1 effectiveTypeIdentifier] == 46)
  {
    v4[3] = &type metadata for WorkoutFeatures;
    v4[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
    LOBYTE(v4[0]) = 8;
    v2 = isFeatureEnabled(_:)();

    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {

    v2 = 1;
  }

  return v2 & 1;
}

uint64_t FIUIWorkoutActivityType.supportsSegments.getter()
{
  if ([v0 isPartOfMultiSport])
  {
    v1 = 0;
  }

  else if ([v0 effectiveTypeIdentifier] == 46)
  {
    v3[3] = &type metadata for WorkoutFeatures;
    v3[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
    LOBYTE(v3[0]) = 8;
    v1 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

uint64_t @objc FIUIWorkoutActivityType.supportsTrackRunning.getter(void *a1)
{
  v1 = a1;
  v2 = [v1 effectiveTypeIdentifier];
  if ((v2 == 37 || v2 == 71) && ![v1 isIndoor])
  {
    v4 = [v1 isPartOfMultiSport];

    return v4 ^ 1;
  }

  else
  {

    return 0;
  }
}

uint64_t FIUIWorkoutActivityType.supportsTrackRunning.getter()
{
  v1 = [v0 effectiveTypeIdentifier];
  if ((v1 == 71 || v1 == 37) && ([v0 isIndoor] & 1) == 0)
  {
    return [v0 isPartOfMultiSport] ^ 1;
  }

  else
  {
    return 0;
  }
}

uint64_t @objc FIUIWorkoutActivityType.supportsRaceRoute.getter(void *a1)
{
  v1 = a1;
  if (FIIsActivePairedDeviceSatellitePaired() || ((v2 = [v1 effectiveTypeIdentifier], (v2 - 13) <= 0x3A) ? (v3 = ((1 << (v2 - 13)) & 0x400000001000001) == 0) : (v3 = 1), v3 || objc_msgSend(v1, sel_isIndoor)))
  {

    return 0;
  }

  else
  {
    v5 = [v1 isPartOfMultiSport];

    return v5 ^ 1;
  }
}

uint64_t FIUIWorkoutActivityType.supportsRaceRoute.getter()
{
  if (FIIsActivePairedDeviceSatellitePaired())
  {
    return 0;
  }

  v1 = [v0 effectiveTypeIdentifier];
  v2 = (v1 - 13) > 0x3A || ((1 << (v1 - 13)) & 0x400000001000001) == 0;
  if (v2 || ([v0 isIndoor] & 1) != 0)
  {
    return 0;
  }

  else
  {
    return [v0 isPartOfMultiSport] ^ 1;
  }
}

uint64_t @objc FIUIWorkoutActivityType.supportsLocationPositionTracking.getter(void *a1)
{
  v6[3] = &type metadata for WorkoutFeatures;
  v6[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
  LOBYTE(v6[0]) = 4;
  v2 = a1;
  v3 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v6);
  if (v3)
  {
    [v2 effectiveTypeIdentifier];
    [v2 isIndoor];
    [v2 swimmingLocationType];
    IsRouteable = _HKWorkoutActivityTypeIsRouteable();
  }

  else
  {
    IsRouteable = 0;
  }

  return IsRouteable;
}

uint64_t FIUIWorkoutActivityType.supportsLocationPositionTracking.getter()
{
  v3[3] = &type metadata for WorkoutFeatures;
  v3[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
  LOBYTE(v3[0]) = 4;
  v1 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v3);
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  [v0 effectiveTypeIdentifier];
  [v0 isIndoor];
  [v0 swimmingLocationType];
  return _HKWorkoutActivityTypeIsRouteable();
}

uint64_t @objc FIUIWorkoutActivityType.supportsCustomRouteAlerts.getter(void *a1)
{
  v1 = a1;
  v2 = FIUIWorkoutActivityType.supportsCustomRouteAlerts.getter();

  return v2 & 1;
}

id FIUIWorkoutActivityType.supportsCustomRouteAlerts.getter()
{
  v1 = type metadata accessor for WorkoutKitFeatures();
  v6[3] = v1;
  v6[4] = lazy protocol witness table accessor for type WorkoutKitFeatures and conformance WorkoutKitFeatures();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CE3FB0], v1);
  LOBYTE(v1) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v6);
  if (v1)
  {
    result = [v0 supportsLocationPositionTracking];
    if (!result)
    {
      return result;
    }

    v4 = [v0 effectiveTypeIdentifier];
    v5 = (v4 - 13) > 0x3A || ((1 << (v4 - 13)) & 0x400008001000001) == 0;
    if (!v5 && ([v0 isIndoor] & 1) == 0)
    {
      return ([v0 isPartOfMultiSport] ^ 1);
    }
  }

  return 0;
}

uint64_t FIUIWorkoutActivityType.supportsPacerAlerts.getter()
{
  v1 = [v0 isIndoor];
  v2 = [v0 effectiveTypeIdentifier];
  if (v1)
  {
    if (v2 != 37 && v2 != 71)
    {
      return 0;
    }
  }

  else if ((v2 - 13) > 0x3A || ((1 << (v2 - 13)) & 0x400000001000001) == 0)
  {
    return 0;
  }

  return [v0 isPartOfMultiSport] ^ 1;
}

uint64_t @objc FIUIWorkoutActivityType.supportsMirroredWorkouts.getter(void *a1)
{
  v1 = a1;
  v2 = FIUIWorkoutActivityType.supportsMirroredWorkouts.getter();

  return v2 & 1;
}

uint64_t FIUIWorkoutActivityType.supportsMirroredWorkouts.getter()
{
  if (FIIsActivePairedDeviceSatellitePaired())
  {
    v1 = 0;
  }

  else
  {
    v5[3] = &type metadata for WorkoutFeatures;
    v5[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
    LOBYTE(v5[0]) = 15;
    v2 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1(v5);
    if ((v2 & 1) != 0 || (os_variant_has_internal_content() & 1) == 0)
    {
      v3 = [v0 effectiveTypeIdentifier];
      if (v3 >= 0x38)
      {
        v1 = 1;
      }

      else
      {
        v1 = 0x1F9FFFFFFFFFFFuLL >> v3;
      }
    }

    else
    {
      v1 = [v0 effectiveTypeIdentifier] == 13;
    }
  }

  return v1 & 1;
}

void _sSo21NLSessionActivityGoalC11WorkoutCoreE24workoutKitRepresentation3for8location16swimmingLocation4kind0dG00dC0OSo09HKWorkoutB4TypeV_So0n7SessionlO0VSo0n8SwimminglO0VxmtKlFAI06SinglecD0V_Tt3g5Tm(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v7 = v5;
  v64 = a2;
  v65 = a3;
  v63 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  v58 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v57 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v59 = *(v13 - 8);
  v60 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v57 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v61 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17, v18);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v57 - v21;
  v23 = type metadata accessor for WorkoutGoal();
  v66 = *(v23 - 8);
  v67 = v23;
  MEMORY[0x28223BE20](v23, v24);
  v62 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  a4(0);
  v26 = [v7 goalTypeIdentifier];
  if (v26 > 1)
  {
    if (v26 == 2)
    {
      v41 = [v7 value];
      if (v41)
      {
        v42 = v41;
        v57 = a5;
        v43 = v68;
        HKQuantity.durationMeasurement.getter();
        if (v43)
        {

          return;
        }

        v48 = [v7 requiredDistance];
        if (v48)
        {
          v49 = v48;
          HKQuantity.lengthMeasurement.getter();

          v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMR) + 48);
          v33 = v62;
          (*(v61 + 32))();
          (*(v59 + 32))(&v33[v54], v16, v60);
          v34 = MEMORY[0x277CE3F58];
        }

        else
        {
          v50 = v60;
          Measurement.value.getter();
          v52 = v51;
          v53 = Measurement.unit.getter();

          (*(v59 + 8))(v16, v50);
          v33 = v62;
          *v62 = v52;
          *(v33 + 1) = v53;
          v34 = MEMORY[0x277CE3F68];
        }

        goto LABEL_23;
      }

      goto LABEL_17;
    }

    if (v26 == 3)
    {
      v35 = [v7 value];
      if (v35)
      {
        v28 = v35;
        v57 = a5;
        v36 = v68;
        HKQuantity.energyMeasurement.getter();
        if (!v36)
        {
          Measurement.value.getter();
          v46 = v45;
          v47 = Measurement.unit.getter();

          (*(v58 + 8))(v12, v9);
          v33 = v62;
          *v62 = v46;
          *(v33 + 1) = v47;
          v34 = MEMORY[0x277CE3F70];
          goto LABEL_23;
        }

LABEL_11:

        return;
      }

      goto LABEL_17;
    }

LABEL_12:
    v37 = type metadata accessor for ImportError();
    lazy protocol witness table accessor for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator(&lazy protocol witness table cache variable for type ImportError and conformance ImportError, MEMORY[0x277CE4010], MEMORY[0x277CE4018]);
    swift_allocError();
    v39 = v38;
    v40 = MEMORY[0x277CE4000];
LABEL_18:
    (*(*(v37 - 8) + 104))(v39, *v40, v37);
    swift_willThrow();
    return;
  }

  if (!v26)
  {
    (*(v66 + 104))(a5, *MEMORY[0x277CE3F60], v67);
    return;
  }

  if (v26 != 1)
  {
    goto LABEL_12;
  }

  v27 = [v7 value];
  if (!v27)
  {
LABEL_17:
    v37 = type metadata accessor for GoalValidationError();
    lazy protocol witness table accessor for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, MEMORY[0x277CE40B0], MEMORY[0x277CE40B8]);
    swift_allocError();
    v39 = v44;
    v40 = MEMORY[0x277CE40A8];
    goto LABEL_18;
  }

  v28 = v27;
  v57 = a5;
  v29 = v68;
  HKQuantity.lengthMeasurement.getter();
  if (v29)
  {
    goto LABEL_11;
  }

  Measurement.value.getter();
  v31 = v30;
  v32 = Measurement.unit.getter();

  (*(v61 + 8))(v22, v17);
  v33 = v62;
  *v62 = v31;
  *(v33 + 1) = v32;
  v34 = MEMORY[0x277CE3F78];
LABEL_23:
  v56 = v66;
  v55 = v67;
  (*(v66 + 104))(v33, *v34, v67);
  WorkoutGoal.validate<A>(for:location:swimmingLocation:kind:)();
  (*(v56 + 32))(v57, v33, v55);
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  outlined init with copy of Measurement<NSUnitPower>?(a3, v26 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    _sSo8NSObjectCSgWOhTm_14(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t one-time initialization function for progressMomentPeriod()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  __swift_allocate_value_buffer(v0, static LiveWorkoutContextManager.Constants.progressMomentPeriod);
  __swift_project_value_buffer(v0, static LiveWorkoutContextManager.Constants.progressMomentPeriod);
  v1 = [objc_opt_self() minutes];
  type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
  return Measurement.init(value:unit:)();
}

double closure #1 in LiveWorkoutContextManager.init(activityType:lastKnownLocation:goal:activityRingProgressMonitor:unitManager:splitProvider:isMachineWorkout:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:workout:momentCoordinator:)(unint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  v8 = *a1;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;
  v10[5] = a2;
  outlined copy of WorkoutVoiceAvailabilityProvider.State(v8);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in closure #1 in LiveWorkoutContextManager.init(activityType:lastKnownLocation:goal:activityRingProgressMonitor:unitManager:splitProvider:isMachineWorkout:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:workout:momentCoordinator:), v10);

  return result;
}

uint64_t closure #1 in closure #1 in LiveWorkoutContextManager.init(activityType:lastKnownLocation:goal:activityRingProgressMonitor:unitManager:splitProvider:isMachineWorkout:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:workout:momentCoordinator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a1;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in LiveWorkoutContextManager.init(activityType:lastKnownLocation:goal:activityRingProgressMonitor:unitManager:splitProvider:isMachineWorkout:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:workout:momentCoordinator:), 0, 0);
}

uint64_t closure #1 in closure #1 in LiveWorkoutContextManager.init(activityType:lastKnownLocation:goal:activityRingProgressMonitor:unitManager:splitProvider:isMachineWorkout:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:workout:momentCoordinator:)()
{
  if (*(v0 + 72) == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator;
      *(v0 + 88) = *(Strong + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
      v3 = *(v2 + 8);
      v4 = Strong;
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      v15 = (*(v3 + 248) + **(v3 + 248));
      v6 = swift_task_alloc();
      *(v0 + 96) = v6;
      *v6 = v0;
      v6[1] = closure #1 in closure #1 in LiveWorkoutContextManager.init(activityType:lastKnownLocation:goal:activityRingProgressMonitor:unitManager:splitProvider:isMachineWorkout:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:workout:momentCoordinator:);
      v7 = 1;
      v8 = 1;
LABEL_6:

      return v15(v7, v8, ObjectType, v3);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator;
      *(v0 + 104) = *(v9 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
      v3 = *(v10 + 8);
      v11 = v9;
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      v15 = (*(v3 + 248) + **(v3 + 248));
      v12 = swift_task_alloc();
      *(v0 + 112) = v12;
      *v12 = v0;
      v12[1] = closure #1 in closure #1 in LiveWorkoutContextManager.init(activityType:lastKnownLocation:goal:activityRingProgressMonitor:unitManager:splitProvider:isMachineWorkout:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:workout:momentCoordinator:);
      v8 = *(v0 + 72);
      v7 = 0;
      goto LABEL_6;
    }
  }

  **(v0 + 64) = 1;
  v14 = *(v0 + 8);

  return v14();
}

{

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in LiveWorkoutContextManager.init(activityType:lastKnownLocation:goal:activityRingProgressMonitor:unitManager:splitProvider:isMachineWorkout:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:workout:momentCoordinator:), 0, 0);
}

{
  **(v0 + 64) = 0;
  return (*(v0 + 8))();
}

{

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in LiveWorkoutContextManager.init(activityType:lastKnownLocation:goal:activityRingProgressMonitor:unitManager:splitProvider:isMachineWorkout:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:workout:momentCoordinator:), 0, 0);
}

char *LiveWorkoutContextManager.__allocating_init(workout:lastKnownLocation:activityRingProgressMonitor:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:momentCoordinator:)(void *a1, void *a2, void *a3, void *a4, char *a5, char *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v110 = a8;
  v112 = a7;
  v114 = a6;
  v116 = a5;
  v106 = a4;
  v103 = a3;
  v119 = a2;
  v115 = type metadata accessor for WorkoutGoal();
  v113 = *(v115 - 8);
  v11 = MEMORY[0x28223BE20](v115, v10);
  v94 = v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v98 = v89 - v15;
  MEMORY[0x28223BE20](v14, v16);
  v111 = v89 - v17;
  v18 = type metadata accessor for InferenceClient();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v93 = v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v25 = v89 - v24;
  v26 = type metadata accessor for FitnessIntelligenceConnection();
  v27 = *(v26 - 8);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v95 = v89 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v31);
  v33 = v89 - v32;
  v34 = [a1 sessionActivity];
  v35 = [v34 activityType];

  v96 = [v35 workoutActivityType];
  v36 = [a1 sessionActivity];
  v37 = [v36 configuration];

  v118 = LiveWorkoutConfiguration.currentGoal.getter();
  v38 = [a1 sessionActivity];
  v39 = [v38 dataProvider];

  v102 = [v39 splitProvider];
  swift_unknownObjectRelease();
  v40 = [a1 sessionActivity];
  v101 = [v40 isMachineWorkout];

  v104 = v27;
  v41 = *(v27 + 16);
  v108 = v33;
  v92 = v27 + 16;
  v91 = v41;
  v41(v33, v116, v26);
  v105 = v19;
  v42 = *(v19 + 16);
  v117 = v18;
  v90 = v42;
  v89[1] = (v19 + 16);
  v42(v25, v114, v18);
  outlined init with copy of WorkoutBuddyAvailabilityProviding(v112, &v122);
  v43 = [a1 sessionActivity];
  v44 = [a1 sessionActivity];
  v45 = [v44 analyticsIdentifier];

  v89[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v97 = v46;

  v99 = type metadata accessor for LiveWorkoutContextManager();
  v47 = objc_allocWithZone(v99);
  *&v47[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v47[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_lastProgressMomentElapsedTime] = 0;
  *&v47[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_lastBreakthroughCheckElapsedTime] = 0;
  v47[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_isPaused] = 0;
  *&v47[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_outroBackgroundTaskIdentifier] = *MEMORY[0x277D767B0];
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v48 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v48 = MEMORY[0x277D84FA0];
  }

  v49 = v117;
  v50 = v119;
  *&v47[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_cancellables] = v48;
  v47[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_gracePeriodPassedAndPotentialFallbackEvaluated] = 0;
  *&v47[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_distanceSampler] = 0;
  v51 = v106;
  *&v47[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_unitManager] = v106;
  *&v47[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_workout] = a1;
  v52 = v96;
  *&v47[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_activityType] = v96;
  v106 = v51;
  v100 = a1;
  v53 = v52;
  v54 = [v53 effectiveTypeIdentifier];
  v55 = [v53 location];
  v56 = v98;
  _sSo21NLSessionActivityGoalC11WorkoutCoreE24workoutKitRepresentation3for8location16swimmingLocation4kind0dG00dC0OSo09HKWorkoutB4TypeV_So0n7SessionlO0VSo0n8SwimminglO0VxmtKlFAI06SinglecD0V_Tt3g5Tm(v54, v55, 0, MEMORY[0x277CE3F38], v98);
  v109 = v25;
  v107 = v26;
  v57 = v113;
  v58 = v111;
  v59 = v115;
  (*(v113 + 32))(v111, v56, v115);
  v60 = [v43 configuration];
  *&v47[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_liveWorkoutConfiguration] = v60;
  v61 = v110;
  v96 = v53;
  if (v110)
  {
    swift_unknownObjectRetain();

    v63 = v61;
    v64 = v101;
  }

  else
  {
    v65 = v94;
    (*(v57 + 16))(v94, v58, v59);
    v91(v95, v108, v107);
    v98 = v43;
    v66 = v93;
    v90(v93, v25, v49);
    outlined init with copy of WorkoutBuddyAvailabilityProviding(&v122, &v121);
    type metadata accessor for WorkoutVoiceMomentCoordinator(0);
    swift_allocObject();
    v67 = v50;
    v68 = v98;
    v69 = v50;
    v70 = v106;
    v71 = v53;
    v72 = v65;
    v64 = v101;
    v73 = v66;
    v43 = v98;
    v63 = specialized WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:)(v71, v69, v72, v101, v70, v95, v73, &v121, v68, v89[0], v97);

    a9 = lazy protocol witness table accessor for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, type metadata accessor for WorkoutVoiceMomentCoordinator, &protocol conformance descriptor for WorkoutVoiceMomentCoordinator);
    v119 = v67;
  }

  v74 = &v47[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator];
  *v74 = v63;
  v74[1] = a9;
  v75 = v103;
  *&v47[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_activityRingProgressMonitor] = v103;
  *&v47[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_splitProvider] = v102;
  v47[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_isMachineWorkout] = v64;
  outlined init with copy of WorkoutBuddyAvailabilityProviding(&v122, &v47[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_workoutVoiceAvailabilityProvider]);
  *&v47[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_sessionActivity] = v43;
  v120.receiver = v47;
  v120.super_class = v99;
  v76 = v43;
  v77 = v75;
  swift_unknownObjectRetain();
  v78 = objc_msgSendSuper2(&v120, sel_init);
  v79 = *&v78[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_activityRingProgressMonitor];
  v80 = v78;
  v81 = v79;
  specialized ActivityRingProgressMonitor.addProgressObserver(_:)(v80, v81);

  v82 = v123;
  v83 = v124;
  __swift_project_boxed_opaque_existential_1(&v122, v123);
  v121 = (*(v83 + 16))(v82, v83);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy11WorkoutCore0D25VoiceAvailabilityProviderC5StateOs5NeverOGMd, &_s7Combine18PassthroughSubjectCy11WorkoutCore0D25VoiceAvailabilityProviderC5StateOs5NeverOGMR);
  lazy protocol witness table accessor for type PassthroughSubject<WorkoutVoiceAvailabilityProvider.State, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<WorkoutVoiceAvailabilityProvider.State, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy11WorkoutCore0D25VoiceAvailabilityProviderC5StateOs5NeverOGMd, &_s7Combine18PassthroughSubjectCy11WorkoutCore0D25VoiceAvailabilityProviderC5StateOs5NeverOGMR, MEMORY[0x277CBCE20]);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm_18(v112);
  v84 = *(v105 + 8);
  v85 = v117;
  v84(v114, v117);
  v86 = *(v104 + 8);
  v87 = v107;
  v86(v116, v107);
  (*(v113 + 8))(v111, v115);
  v84(v109, v85);
  v86(v108, v87);
  __swift_destroy_boxed_opaque_existential_1Tm_18(&v122);
  return v80;
}

uint64_t outlined init with copy of WorkoutBuddyAvailabilityProviding(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

double LiveWorkoutContextManager.setDelegate(_:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v13 - v7;
  *&v2[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_delegate + 8] = a2;
  swift_unknownObjectWeakAssign();
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;
  v11 = v2;
  swift_unknownObjectRetain();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in LiveWorkoutContextManager.setDelegate(_:), v10);

  return result;
}

uint64_t closure #1 in LiveWorkoutContextManager.setDelegate(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.setDelegate(_:), 0, 0);
}

uint64_t closure #1 in LiveWorkoutContextManager.setDelegate(_:)()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator + 8);
  ObjectType = swift_getObjectType();
  v7 = (*(v1 + 152) + **(v1 + 152));
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = closure #1 in LiveWorkoutContextManager.setDelegate(_:);
  v5 = v0[3];
  v4 = v0[4];

  return v7(v5, v4, ObjectType, v1);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double LiveWorkoutContextManager.setAlertDelegate(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = a1;
  v9 = v1;
  swift_unknownObjectRetain();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in LiveWorkoutContextManager.setAlertDelegate(_:), v8);

  return result;
}

uint64_t closure #1 in LiveWorkoutContextManager.setAlertDelegate(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.setAlertDelegate(_:), 0, 0);
}

uint64_t closure #1 in LiveWorkoutContextManager.setAlertDelegate(_:)()
{
  v1 = (v0[2] + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v0[4] = *v1;
  v2 = v1[1];
  v0[5] = v2;
  v0[6] = swift_getObjectType();
  v0[7] = *(v2 + 160);
  v0[8] = (v2 + 160) & 0xFFFFFFFFFFFFLL | 0xDBC6000000000000;
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.setAlertDelegate(_:), v4, v3);
}

{
  (*(v0 + 56))(*(v0 + 24), *(v0 + 48), *(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

double LiveWorkoutContextManager.setMetricsPublisher(_:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = a1;
  v9 = v1;
  v10 = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in LiveWorkoutContextManager.setMetricsPublisher(_:), v8);

  return result;
}

uint64_t closure #1 in LiveWorkoutContextManager.setMetricsPublisher(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.setMetricsPublisher(_:), 0, 0);
}

uint64_t closure #1 in LiveWorkoutContextManager.setMetricsPublisher(_:)()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator + 8);
  ObjectType = swift_getObjectType();
  v6 = (*(v1 + 168) + **(v1 + 168));
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = closure #1 in LiveWorkoutContextManager.setMetricsPublisher(_:);
  v4 = v0[3];

  return v6(v4, ObjectType, v1);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double LiveWorkoutContextManager.updateWorkoutStartDate(date:)(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v4 + 16))(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v12 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = v1;
  (*(v4 + 32))(&v13[v12], &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v14 = v1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in LiveWorkoutContextManager.updateWorkoutStartDate(date:), v13);

  return result;
}

uint64_t closure #1 in LiveWorkoutContextManager.updateWorkoutStartDate(date:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.updateWorkoutStartDate(date:), 0, 0);
}

uint64_t closure #1 in LiveWorkoutContextManager.updateWorkoutStartDate(date:)()
{
  v1 = (v0[2] + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v0[4] = *v1;
  v2 = v1[1];
  v0[5] = v2;
  v0[6] = swift_getObjectType();
  v0[7] = *(v2 + 264);
  v0[8] = (v2 + 264) & 0xFFFFFFFFFFFFLL | 0x7E01000000000000;
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.updateWorkoutStartDate(date:), v4, v3);
}

{
  (*(v0 + 56))(*(v0 + 24), *(v0 + 48), *(v0 + 40));

  return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.updateWorkoutStartDate(date:), 0, 0);
}

{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_distanceSampler);
  *(v0 + 72) = v1;
  if (v1)
  {
    return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.updateWorkoutStartDate(date:), v1, 0);
  }

  else
  {
    return (*(v0 + 8))();
  }
}

{
  DistanceSampler.updateStartDate(_:)(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)(Swift::Bool isGeneratingOutro, Swift::Bool workoutWasEnded)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_cancellables;
  swift_beginAccess();
  *&v2[v9] = MEMORY[0x277D84FA0];

  specialized ActivityRingProgressMonitor.removeProgressObserver(_:)(v2, *&v2[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_activityRingProgressMonitor]);
  if (!workoutWasEnded)
  {
    [*&v2[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_workout] removeStateObserver_];
    v10 = *&v2[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_sessionActivity];
    [v10 removeSessionDataObserver_];
    [v10 removeSplitsUpdateObserver_];
  }

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v2;
  *(v12 + 40) = isGeneratingOutro;
  *(v12 + 41) = workoutWasEnded;
  v13 = v2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:), v12);
}

uint64_t closure #1 in LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v6 + 33) = a6;
  *(v6 + 32) = a5;
  *(v6 + 16) = a4;
  return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:), 0, 0);
}

uint64_t closure #1 in LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator + 8);
  ObjectType = swift_getObjectType();
  v7 = (*(v1 + 272) + **(v1 + 272));
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = closure #1 in LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:);
  v4 = *(v0 + 33);
  v5 = *(v0 + 32);

  return v7(v5, v4, ObjectType, v1);
}

uint64_t LiveWorkoutContextManager.generateIntroMomentWhenReady()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](LiveWorkoutContextManager.generateIntroMomentWhenReady(), 0, 0);
}

{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_workoutVoiceAvailabilityProvider);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = LiveWorkoutContextManager.generateIntroMomentWhenReady();

  return v6(v2, v3);
}

{
  v1 = (v0[2] + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v0[5] = *v1;
  v2 = v1[1];
  v0[6] = v2;
  ObjectType = swift_getObjectType();
  v0[7] = ObjectType;
  v6 = (*(v2 + 192) + **(v2 + 192));
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = LiveWorkoutContextManager.generateIntroMomentWhenReady();

  return v6(ObjectType, v2);
}

{
  if (*(v0 + 120) == 1)
  {
    v21 = *(v0 + 48);
    outlined consume of WorkoutVoiceAvailabilityProvider.State(*(v0 + 32));
    v20 = (*(v21 + 248) + **(v21 + 248));
    v1 = swift_task_alloc();
    *(v0 + 72) = v1;
    *v1 = v0;
    v1[1] = LiveWorkoutContextManager.generateIntroMomentWhenReady();
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    v4 = 1;
    v5 = 2;
LABEL_9:

    return v20(v4, v5, v2, v3);
  }

  if (*(v0 + 32) == 1)
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static WOLog.workoutVoice);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_20AEA4000, v7, v8, "Workout Buddy is not available but recoverable, holding off on generating intro moment", v9, 2u);
      MEMORY[0x20F2E9420](v9, -1, -1);
    }

    v22 = *(v0 + 48);

    v20 = (*(v22 + 248) + **(v22 + 248));
    v10 = swift_task_alloc();
    *(v0 + 96) = v10;
    *v10 = v0;
    v10[1] = LiveWorkoutContextManager.generateIntroMomentWhenReady();
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    v4 = 0;
    v5 = 1;
    goto LABEL_9;
  }

  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static WOLog.workoutVoice);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_20AEA4000, v13, v14, "Starting workout with buddy not available, falling back to Siri", v15, 2u);
    MEMORY[0x20F2E9420](v15, -1, -1);
  }

  v16 = *(v0 + 48);

  v23 = (*(v16 + 256) + **(v16 + 256));
  v17 = swift_task_alloc();
  *(v0 + 104) = v17;
  *v17 = v0;
  v17[1] = LiveWorkoutContextManager.generateIntroMomentWhenReady();
  v19 = *(v0 + 48);
  v18 = *(v0 + 56);

  return v23(1, v18, v19);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);

  *(v1 + 80) = *(v2 + 184);
  *(v1 + 88) = (v2 + 184) & 0xFFFFFFFFFFFFLL | 0x486000000000000;
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](LiveWorkoutContextManager.generateIntroMomentWhenReady(), v4, v3);
}

{
  (*(v0 + 80))(*(v0 + 56), *(v0 + 48));
  v1 = *(v0 + 8);

  return v1();
}

{
  v3 = *v0;

  outlined consume of WorkoutVoiceAvailabilityProvider.State(1uLL);
  v1 = *(v3 + 8);

  return v1();
}

{

  return MEMORY[0x2822009F8](LiveWorkoutContextManager.generateIntroMomentWhenReady(), 0, 0);
}

{
  v8 = v0[6];
  v1 = v0[2];
  LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)(0, 0);
  *(v1 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_gracePeriodPassedAndPotentialFallbackEvaluated) = 1;
  v7 = (*(v8 + 248) + **(v8 + 248));
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = LiveWorkoutContextManager.generateIntroMomentWhenReady();
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];

  return v7(0, v5, v3, v4);
}

{
  v1 = *(*v0 + 32);
  v4 = *v0;

  outlined consume of WorkoutVoiceAvailabilityProvider.State(v1);
  v2 = *(v4 + 8);

  return v2();
}

uint64_t LiveWorkoutContextManager.generateIntroMomentWhenReady()(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](LiveWorkoutContextManager.generateIntroMomentWhenReady(), 0, 0);
}

uint64_t LiveWorkoutContextManager.generateIntroMomentWhenReady()(char a1)
{
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](LiveWorkoutContextManager.generateIntroMomentWhenReady(), 0, 0);
}

Swift::Void __swiftcall LiveWorkoutContextManager.generateOutroMoment(for:)(NLWorkout *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v52 - v6;
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static WOLog.workoutVoice);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_20AEA4000, v9, v10, "Updating Workout State with final HKWorkout Details", v11, 2u);
    MEMORY[0x20F2E9420](v11, -1, -1);
  }

  v12 = [(NLWorkout *)a1 endReason];
  if (v12 <= 0xA && ((1 << v12) & 0x638) != 0)
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_20AEA4000, v13, v14, "User is starting another workout. Skipping Outro", v15, 2u);
      MEMORY[0x20F2E9420](v15, -1, -1);
    }

    v16 = OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_cancellables;
    swift_beginAccess();
    *&v2[v16] = MEMORY[0x277D84FA0];

    specialized ActivityRingProgressMonitor.removeProgressObserver(_:)(v2, *&v2[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_activityRingProgressMonitor]);
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = v2;
    *(v18 + 40) = 256;
    v19 = v2;
    v20 = &closure #1 in LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)partial apply;
LABEL_10:
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, v20, v18);
    goto LABEL_11;
  }

  v21 = [(NLWorkout *)a1 hkWorkout];
  if (!v21)
  {
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_20AEA4000, v46, v47, "Did not get an HKWorkout object. Skipping Outro", v48, 2u);
      MEMORY[0x20F2E9420](v48, -1, -1);
    }

    v49 = OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_cancellables;
    swift_beginAccess();
    *&v2[v49] = MEMORY[0x277D84FA0];

    specialized ActivityRingProgressMonitor.removeProgressObserver(_:)(v2, *&v2[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_activityRingProgressMonitor]);
    v50 = type metadata accessor for TaskPriority();
    (*(*(v50 - 8) + 56))(v7, 1, 1, v50);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = v2;
    *(v18 + 40) = 256;
    v51 = v2;
    v20 = &closure #1 in LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)partial apply;
    goto LABEL_10;
  }

  v22 = v21;
  v23 = OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_cancellables;
  swift_beginAccess();
  *&v2[v23] = MEMORY[0x277D84FA0];

  specialized ActivityRingProgressMonitor.removeProgressObserver(_:)(v2, *&v2[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_activityRingProgressMonitor]);
  v24 = type metadata accessor for TaskPriority();
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v52[1] = v25 + 56;
  v53 = v26;
  v26(v7, 1, 1, v24);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v2;
  *(v27 + 40) = 257;
  v28 = v2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)partial apply, v27);

  v29 = [(HKWorkout *)v22 totalDistance];
  v30 = 0.0;
  if (v29)
  {
    v31 = v29;
    v32 = [objc_opt_self() meterUnit];
    [(HKQuantity *)v31 doubleValueForUnit:v32];
    v34 = v33;

    if (v34 != 0.0)
    {
      [(HKWorkout *)v22 duration];
      v30 = v35 / v34;
    }
  }

  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  v37 = [objc_opt_self() sharedApplication];
  v38 = MEMORY[0x20F2E6C00](0xD000000000000021, 0x800000020B468760);
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  *(v40 + 16) = v36;
  *(v40 + 24) = v39;
  aBlock[4] = partial apply for closure #1 in LiveWorkoutContextManager.generateOutroMoment(for:);
  aBlock[5] = v40;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_71;
  v41 = _Block_copy(aBlock);

  v42 = [v37 beginBackgroundTaskWithName:v38 expirationHandler:v41];
  _Block_release(v41);

  *&v28[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_outroBackgroundTaskIdentifier] = v42;
  v53(v7, 1, 1, v24);
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = v43;
  *(v44 + 40) = v22;
  *(v44 + 48) = v30;
  v45 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #2 in LiveWorkoutContextManager.generateOutroMoment(for:), v44);
  swift_beginAccess();
  *(v36 + 16) = v45;

LABEL_11:
}

void closure #1 in LiveWorkoutContextManager.generateOutroMoment(for:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.workoutVoice);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Outro Moment background task expired", v6, 2u);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  swift_beginAccess();
  v7 = *(a1 + 16);
  if (v7)
  {

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x20F2E7170](v7, MEMORY[0x277D84F78] + 8, v8, MEMORY[0x277D84950]);
  }

  v9 = [objc_opt_self() sharedApplication];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v11 = MEMORY[0x277D767B0];
  if (Strong)
  {
    v12 = *&Strong[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_outroBackgroundTaskIdentifier];
  }

  else
  {
    v12 = *MEMORY[0x277D767B0];
  }

  [v9 endBackgroundTask_];

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    *&v13[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_outroBackgroundTaskIdentifier] = *v11;
  }
}
uint64_t protocol witness for AppShortcutStateProviding.intentsStates(appShortcutTargets:conditionalIntentMetadata:) in conformance AppShortcutStateProvider(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AppShortcutStateProviding.intentsStates(appShortcutTargets:conditionalIntentMetadata:) in conformance AppShortcutStateProvider;

  return specialized AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:)(a1, a2);
}

uint64_t specialized AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;

  return MEMORY[0x1EEE6DFA0](specialized AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:), 0, 0);
}

uint64_t specialized AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:)()
{
  v81 = v0;
  v80[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 152);
  v2 = *(v1 + 16);
  v3 = 0;
  if (v2)
  {
    v4 = *(*(v0 + 160) + 16);
    v5 = (v1 + 56);
    v79 = MEMORY[0x1E69E7CC8];
    v77 = v4;
    while (1)
    {
      if (!*(v4 + 16))
      {
        goto LABEL_5;
      }

      v8 = *(v5 - 3);
      v7 = *(v5 - 2);
      v9 = *(v5 - 1);
      v10 = *v5;

      v11 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
      if (v12)
      {
        if (*(*(*(v4 + 56) + 8 * v11) + 16))
        {

          v78 = v9;
          specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
          v14 = v13;

          if (v14)
          {
            break;
          }
        }
      }

LABEL_4:

LABEL_5:
      v5 += 5;
      if (!--v2)
      {
        goto LABEL_26;
      }
    }

    _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v3, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80[0] = v79;
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
    v18 = *(v79 + 16);
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_53;
    }

    v21 = v16;
    if (*(v79 + 24) >= v20)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
        v79 = v80[0];
      }

      v24 = v17;
      if ((v21 & 1) == 0)
      {
LABEL_14:
        *(v79 + 8 * (v24 >> 6) + 64) |= 1 << v24;
        v25 = (*(v79 + 48) + 16 * v24);
        *v25 = v8;
        v25[1] = v7;
        *(*(v79 + 56) + 8 * v24) = MEMORY[0x1E69E7CC0];
        v26 = *(v79 + 16);
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_54;
        }

        *(v79 + 16) = v28;
        goto LABEL_20;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, isUniquelyReferenced_nonNull_native);
      v79 = v80[0];
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
      if ((v21 & 1) != (v23 & 1))
      {

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

      v24 = v22;
      if ((v21 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

LABEL_20:
    v29 = *(v79 + 56);
    v30 = *(v29 + 8 * v24);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    *(v29 + 8 * v24) = v30;
    if (v31)
    {
      v32 = v24;
    }

    else
    {
      v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
      v32 = v24;
      *(v29 + 8 * v24) = v30;
    }

    v34 = *(v30 + 2);
    v33 = *(v30 + 3);
    if (v34 >= v33 >> 1)
    {
      v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v30);
      *(v29 + 8 * v32) = v30;
    }

    v4 = v77;
    *(v30 + 2) = v34 + 1;
    v6 = &v30[16 * v34];
    *(v6 + 4) = v78;
    *(v6 + 5) = v10;
    v3 = specialized thunk for @callee_guaranteed () -> (@owned [String]);
    goto LABEL_4;
  }

  v79 = MEMORY[0x1E69E7CC8];
LABEL_26:
  v35 = 0;
  v36 = v0 + 80;
  *(v0 + 168) = v3;
  *(v0 + 176) = v79;
  v37 = *(v79 + 32);
  *(v0 + 256) = v37;
  v38 = 1 << v37;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  else
  {
    v39 = -1;
  }

  v40 = v39 & *(v79 + 64);
  *(v0 + 184) = MEMORY[0x1E69E7CC8];
  v41 = off_1E8646000;
  v42 = off_1E8646000;
  while (2)
  {
    if (v40)
    {
      v43 = *(v0 + 176);
      goto LABEL_38;
    }

    do
    {
      v44 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
      }

      v43 = *(v0 + 176);
      if (v44 >= (((1 << *(v0 + 256)) + 63) >> 6))
      {
        v68 = *(v0 + 168);

        _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v68, 0);
        v69 = *(v0 + 8);
        v70 = *(v0 + 184);

        return v69(v70);
      }

      v40 = *(v43 + 8 * v44 + 64);
      ++v35;
    }

    while (!v40);
    v35 = v44;
LABEL_38:
    *(v0 + 192) = v40;
    *(v0 + 200) = v35;
    v45 = (*(v43 + 48) + 16 * (__clz(__rbit64(v40)) | (v35 << 6)));
    v46 = *v45;
    *(v0 + 208) = *v45;
    v47 = v45[1];
    *(v0 + 216) = v47;
    v48 = objc_opt_self();

    v49 = MEMORY[0x1E12A1410](v46, v47);
    v50 = [v48 v41[451]];
    *(v0 + 224) = v50;

    *(v0 + 80) = 0;
    v51 = [v50 v42[452]];
    *(v0 + 232) = v51;
    v52 = *(v0 + 80);
    if (!v51)
    {
      v53 = v52;

      v54 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for Logger();
      __swift_project_value_buffer(v55, static Logger.executor);

      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();

      v58 = os_log_type_enabled(v56, v57);
      v60 = *(v0 + 216);
      v59 = *(v0 + 224);
      if (v58)
      {
        v61 = v42;
        v62 = *(v0 + 208);
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v80[0] = v64;
        *v63 = 136315138;
        v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v60, v80);

        *(v63 + 4) = v65;
        v42 = v61;
        _os_log_impl(&dword_1DC659000, v56, v57, "[AppShortcuts] Cannot fetch intent state for: App - %s", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v64);
        v66 = v64;
        v41 = off_1E8646000;
        MEMORY[0x1E12A2F50](v66, -1, -1);
        v67 = v63;
        v36 = v0 + 80;
        MEMORY[0x1E12A2F50](v67, -1, -1);
      }

      else
      {
      }

      v35 = *(v0 + 200);
      v40 = (*(v0 + 192) - 1) & *(v0 + 192);
      continue;
    }

    break;
  }

  v72 = v51;
  v73 = v52;
  v74 = v36;
  isa = Array._bridgeToObjectiveC()().super.isa;
  *(v0 + 240) = isa;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = specialized AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);
  v76 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySDySSSo8NSNumberCGs5Error_pGMd, &_sSccySDySSSo8NSNumberCGs5Error_pGMR);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSDictionary?, @unowned NSError?) -> () with result type [String : NSNumber];
  *(v0 + 104) = &block_descriptor_0;
  *(v0 + 112) = v76;
  [v72 fetchStateForAppIntentIdentifiers:isa completionHandler:v74];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = specialized AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);
  }

  else
  {
    v2 = specialized AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v64 = v0;
  v63[1] = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 184);
  v4 = *(v0 + 144);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 80) = v3;
  v6 = v0 + 80;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v1);
  v9 = *(v3 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    goto LABEL_35;
  }

  v13 = v8;
  if (*(*(v0 + 184) + 24) >= v12)
  {
    v62 = v0 + 144;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = v7;
      specialized _NativeDictionary.copy()();
      v7 = v18;
    }
  }

  else
  {
    v15 = *(v0 + 208);
    v14 = *(v0 + 216);
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v12, isUniquelyReferenced_nonNull_native);
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v14);
    if ((v13 & 1) != (v16 & 1))
    {

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

    v62 = v0 + 144;
    v6 = v0 + 80;
  }

  v19 = *(v0 + 224);
  v20 = *(v0 + 232);
  v21 = *(v0 + 216);
  if (v13)
  {
    v22 = v7;

    v23 = *v6;
    *(*(*v6 + 56) + 8 * v22) = v4;
  }

  else
  {
    v24 = *(v0 + 208);
    v23 = *(v0 + 80);
    v23[(v7 >> 6) + 8] |= 1 << v7;
    v25 = (v23[6] + 16 * v7);
    *v25 = v24;
    v25[1] = v21;
    *(v23[7] + 8 * v7) = v4;

    v26 = v23[2];
    v11 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v11)
    {
      goto LABEL_36;
    }

    v23[2] = v27;
  }

  v28 = *(v0 + 200);
  v29 = (*(v0 + 192) - 1) & *(v0 + 192);
  *(v0 + 184) = v23;
  v30 = off_1E8646000;
  while (2)
  {
    if (v29)
    {
      v31 = *(v0 + 176);
      goto LABEL_23;
    }

    do
    {
      v32 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
      }

      v31 = *(v0 + 176);
      if (v32 >= (((1 << *(v0 + 256)) + 63) >> 6))
      {
        v55 = *(v0 + 168);

        _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v55, 0);
        v56 = *(v0 + 8);
        v57 = *(v0 + 184);

        return v56(v57);
      }

      v29 = *(v31 + 8 * v32 + 64);
      ++v28;
    }

    while (!v29);
    v28 = v32;
LABEL_23:
    *(v0 + 192) = v29;
    *(v0 + 200) = v28;
    v33 = (*(v31 + 48) + 16 * (__clz(__rbit64(v29)) | (v28 << 6)));
    v34 = *v33;
    *(v0 + 208) = *v33;
    v35 = v33[1];
    *(v0 + 216) = v35;
    v36 = objc_opt_self();

    v37 = MEMORY[0x1E12A1410](v34, v35);
    v38 = [v36 v30[451]];
    *(v0 + 224) = v38;

    *(v0 + 80) = 0;
    v39 = [v38 connectionWithError_];
    *(v0 + 232) = v39;
    v40 = *(v0 + 80);
    if (!v39)
    {
      v41 = v40;

      v42 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static Logger.executor);

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();

      v46 = os_log_type_enabled(v44, v45);
      v48 = *(v0 + 216);
      v47 = *(v0 + 224);
      if (v46)
      {
        v49 = v30;
        v50 = *(v0 + 208);
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v63[0] = v52;
        *v51 = 136315138;
        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v48, v63);

        *(v51 + 4) = v53;
        v30 = v49;
        _os_log_impl(&dword_1DC659000, v44, v45, "[AppShortcuts] Cannot fetch intent state for: App - %s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v52);
        v54 = v52;
        v6 = v0 + 80;
        MEMORY[0x1E12A2F50](v54, -1, -1);
        MEMORY[0x1E12A2F50](v51, -1, -1);
      }

      else
      {
      }

      v28 = *(v0 + 200);
      v29 = (*(v0 + 192) - 1) & *(v0 + 192);
      continue;
    }

    break;
  }

  v58 = v39;
  v59 = v40;
  isa = Array._bridgeToObjectiveC()().super.isa;
  *(v0 + 240) = isa;

  *(v0 + 16) = v0;
  *(v0 + 56) = v62;
  *(v0 + 24) = specialized AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);
  v61 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySDySSSo8NSNumberCGs5Error_pGMd, &_sSccySDySSSo8NSNumberCGs5Error_pGMR);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSDictionary?, @unowned NSError?) -> () with result type [String : NSNumber];
  *(v0 + 104) = &block_descriptor_0;
  *(v0 + 112) = v61;
  [v58 fetchStateForAppIntentIdentifiers:isa completionHandler:v6];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t specialized AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:)(uint64_t a1)
{
  v42 = v1;
  v41[1] = *MEMORY[0x1E69E9840];
  v2 = v1 + 80;
  v3 = *(v1 + 240);
  v4 = *(v1 + 232);
  swift_willThrow();

  v5 = *(v1 + 248);
  v6 = &unk_1EE159000;
  while (1)
  {
    if (v6[389] != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.executor);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    v10 = os_log_type_enabled(v8, v9);
    v12 = *(v1 + 216);
    v11 = *(v1 + 224);
    if (v10)
    {
      v40 = v5;
      v13 = v6;
      v14 = v2;
      v15 = *(v1 + 208);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v41[0] = v17;
      *v16 = 136315138;
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v12, v41);

      *(v16 + 4) = v18;
      v2 = v14;
      v6 = v13;
      _os_log_impl(&dword_1DC659000, v8, v9, "[AppShortcuts] Cannot fetch intent state for: App - %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1E12A2F50](v17, -1, -1);
      MEMORY[0x1E12A2F50](v16, -1, -1);
    }

    else
    {
    }

    v19 = *(v1 + 200);
    v20 = (*(v1 + 192) - 1) & *(v1 + 192);
    if (!v20)
    {
      break;
    }

    v21 = *(v1 + 176);
LABEL_13:
    *(v1 + 192) = v20;
    *(v1 + 200) = v19;
    v23 = (*(v21 + 48) + 16 * (__clz(__rbit64(v20)) | (v19 << 6)));
    v24 = *v23;
    *(v1 + 208) = *v23;
    v25 = v23[1];
    *(v1 + 216) = v25;
    v26 = objc_opt_self();

    v27 = MEMORY[0x1E12A1410](v24, v25);
    v28 = [v26 policyWithBundleIdentifier_];
    *(v1 + 224) = v28;

    *(v1 + 80) = 0;
    v29 = [v28 connectionWithError_];
    *(v1 + 232) = v29;
    v30 = *(v1 + 80);
    if (v29)
    {
      v36 = v29;
      v37 = v30;
      isa = Array._bridgeToObjectiveC()().super.isa;
      *(v1 + 240) = isa;

      *(v1 + 16) = v1;
      *(v1 + 56) = v1 + 144;
      *(v1 + 24) = specialized AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);
      v39 = swift_continuation_init();
      *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySDySSSo8NSNumberCGs5Error_pGMd, &_sSccySDySSSo8NSNumberCGs5Error_pGMR);
      *(v1 + 80) = MEMORY[0x1E69E9820];
      *(v1 + 88) = 1107296256;
      *(v1 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSDictionary?, @unowned NSError?) -> () with result type [String : NSNumber];
      *(v1 + 104) = &block_descriptor_0;
      *(v1 + 112) = v39;
      [v36 fetchStateForAppIntentIdentifiers:isa completionHandler:v2];

      return MEMORY[0x1EEE6DEC8](v1 + 16);
    }

    v31 = v30;

    v5 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  while (1)
  {
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
    }

    v21 = *(v1 + 176);
    if (v22 >= (((1 << *(v1 + 256)) + 63) >> 6))
    {
      break;
    }

    v20 = *(v21 + 8 * v22 + 64);
    ++v19;
    if (v20)
    {
      v19 = v22;
      goto LABEL_13;
    }
  }

  v32 = *(v1 + 168);

  _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v32, 0);
  v33 = *(v1 + 8);
  v34 = *(v1 + 184);

  return v33(v34);
}

uint64_t dispatch thunk of AppShortcutStateProviding.intentsStates(appShortcutTargets:conditionalIntentMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return v11(a1, a2, a3, a4);
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

char *AsyncSerialQueue.__allocating_init(queueName:logger:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 2) = MEMORY[0x1E69E7CC0];
  *(v6 + 3) = 0;
  *(v6 + 4) = 0;
  *(v6 + 5) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v6 + 6) = v7;
  *(v6 + 7) = a1;
  *(v6 + 8) = a2;
  v8 = OBJC_IVAR____TtC14SiriKitRuntime16AsyncSerialQueue_logger;
  v9 = type metadata accessor for Logger();
  (*(*(v9 - 8) + 32))(&v6[v8], a3, v9);
  return v6;
}

char *AsyncSerialQueue.init(queueName:logger:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 2) = MEMORY[0x1E69E7CC0];
  *(v3 + 3) = 0;
  *(v3 + 4) = 0;
  *(v3 + 5) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v3 + 6) = v7;
  *(v3 + 7) = a1;
  *(v3 + 8) = a2;
  v8 = OBJC_IVAR____TtC14SiriKitRuntime16AsyncSerialQueue_logger;
  v9 = type metadata accessor for Logger();
  (*(*(v9 - 8) + 32))(&v3[v8], a3, v9);
  return v3;
}

char *AsyncSerialQueue.deinit()
{

  v1 = OBJC_IVAR____TtC14SiriKitRuntime16AsyncSerialQueue_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t initializeWithCopy for WorkItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v3;

  return a1;
}

void *assignWithCopy for WorkItem(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void *assignWithTake for WorkItem(void *a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 24);
  *(a1 + 1) = *(a2 + 8);
  a1[3] = v4;

  return a1;
}

uint64_t getEnumTagSinglePayload for WorkItem(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for WorkItem(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for AsyncSerialQueue(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of AsyncSerialQueue.wait()()
{
  v4 = (*(*v0 + 216) + **(*v0 + 216));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v4();
}

uint64_t ManagedContinuation.resume(throwing:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = type metadata accessor for Result();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  *(&v8 - v4) = a1;
  swift_storeEnumTagMultiPayload();
  v6 = a1;
  ManagedContinuation.resume(with:)(v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t static AsyncTaskUtils.taskWithCatchingCompletion(completion:do:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a1;
  v12[7] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in static AsyncTaskUtils.taskWithCatchingCompletion(completion:do:), v12);
}

uint64_t static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:), 0, 0);
}

uint64_t closure #1 in withCancellableContinuation<A>(body:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v1 = type metadata accessor for Result();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v7 - v3);
  type metadata accessor for CancellationError();
  lazy protocol witness table accessor for type CancellationError and conformance CancellationError();
  v5 = swift_allocError();
  CancellationError.init()();
  *v4 = v5;
  swift_storeEnumTagMultiPayload();
  ManagedContinuation.resume(with:)(v4);
  return (*(v2 + 8))(v4, v1);
}

uint64_t ManagedContinuation.__allocating_init(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = type metadata accessor for CheckedContinuation();
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  swift_allocObject();
  v7 = ManagedContinuation.().init()();
  v8 = *(v2 - 8);
  (*(v8 + 32))(v6, a1, v2);
  (*(v8 + 56))(v6, 0, 1, v2);
  v9 = *(*v7 + 88);
  swift_beginAccess();
  v10 = *(v4 + 40);

  v10(v7 + v9, v6, v3);
  swift_endAccess();

  return v7;
}

uint64_t ManagedContinuation<A>.resume()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = (&v5 - v1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  specialized ManagedContinuation.updateState(continuation:result:)(v2, 0, 0);
  return outlined destroy of ReferenceResolutionClientProtocol?(v2, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
}

uint64_t type metadata completion function for ManagedContinuation(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for CheckedContinuation();
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    type metadata accessor for Result();
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CancellationError and conformance CancellationError()
{
  result = lazy protocol witness table cache variable for type CancellationError and conformance CancellationError;
  if (!lazy protocol witness table cache variable for type CancellationError and conformance CancellationError)
  {
    type metadata accessor for CancellationError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CancellationError and conformance CancellationError);
  }

  return result;
}

uint64_t static AutoBugCapture.generateSnapshot(type:subType:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = AFIsInternalInstall();
  if (result)
  {
    type metadata accessor for AutoBugCaptureManager();
    swift_allocObject();
    AutoBugCaptureManager.init(domain:sessionDuration:)();
    dispatch thunk of AutoBugCaptureManager.generateSnapshot(errorType:errorSubType:subTypeContext:completion:)();
  }

  return result;
}

void closure #1 in static AutoBugCapture.generateSnapshot(type:subType:context:)(char a1)
{
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.instrumentation);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = a1 & 1;
    _os_log_impl(&dword_1DC659000, oslog, v3, "AutoBugCapture#generateSnapshot ABC result: %{BOOL}d", v4, 8u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }
}

uint64_t lazy protocol witness table accessor for type BargeInMode and conformance BargeInMode(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BargeInMode();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t BargeInContext.debugDescription.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v14 - v1;
  v3 = type metadata accessor for BargeInMode();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(36);
  MEMORY[0x1E12A1580](0xD000000000000015, 0x80000001DCA7D650);
  BargeInContext.mode.getter();
  _print_unlocked<A, B>(_:_:)();
  (*(v4 + 8))(v6, v3);
  MEMORY[0x1E12A1580](0x61767265746E6920, 0xEB00000000203A6CLL);
  BargeInContext.approximatePreviousTTSInterval.getter();
  v7 = type metadata accessor for DateInterval();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    outlined destroy of DateInterval?(v2);
    v9 = 0xE500000000000000;
    v10 = 0x3E6C696E3CLL;
  }

  else
  {
    v11 = DateInterval.debugDescription.getter();
    v9 = v12;
    (*(v8 + 8))(v2, v7);
    v10 = v11;
  }

  MEMORY[0x1E12A1580](v10, v9);

  return v14[0];
}

uint64_t outlined destroy of DateInterval?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
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
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v13;
      v24 = v13;
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
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v13 = v24;
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

uint64_t ConversationRequestProcessorBase.requestId.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t ConversationRequestProcessorBase.rootRequestId.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t ConversationRequestProcessorBase.assistantId.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

char *ConversationRequestProcessorBase.__allocating_init(_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 *a10, uint64_t a11)
{

  v18 = swift_allocObject();
  *(v18 + 12) = a1;
  *(v18 + 13) = a2;
  v19 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v20 = type metadata accessor for UUID();
  (*(*(v20 - 8) + 32))(&v18[v19], a3, v20);
  *(v18 + 8) = a4;
  *(v18 + 9) = a5;
  *(v18 + 10) = a6;
  *(v18 + 11) = a7;
  outlined init with take of ReferenceResolutionClientProtocol(a10, (v18 + 24));
  *(v18 + 2) = a11;
  return v18;
}

char *ConversationRequestProcessorBase.init(_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 *a10, uint64_t a11)
{

  *(v11 + 12) = a1;
  *(v11 + 13) = a2;
  v19 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v20 = type metadata accessor for UUID();
  (*(*(v20 - 8) + 32))(&v11[v19], a3, v20);
  *(v11 + 8) = a4;
  *(v11 + 9) = a5;
  *(v11 + 10) = a6;
  *(v11 + 11) = a7;
  outlined init with take of ReferenceResolutionClientProtocol(a10, (v11 + 24));
  *(v11 + 2) = a11;
  return v11;
}

char *ConversationRequestProcessorBase.deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  v1 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ConversationRequestProcessorBase.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  v1 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t ConversationRequestAwareBridgeBase.candidateRequestProcessors.setter(uint64_t a1)
{
  v3 = direct field offset for ConversationRequestAwareBridgeBase.candidateRequestProcessors;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *ConversationRequestAwareBridgeBase.__allocating_init(withName:messagePublisher:serviceHelper:conversationSessionsManaging:autoRegisterStartRequestMessageBase:logger:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  swift_allocObject();
  v14 = specialized ConversationRequestAwareBridgeBase.init(withName:messagePublisher:serviceHelper:conversationSessionsManaging:autoRegisterStartRequestMessageBase:logger:)(a1, a2, a3, a4, a5, v8, a7);
  swift_unknownObjectRelease();
  return v14;
}

void *ConversationRequestAwareBridgeBase.init(withName:messagePublisher:serviceHelper:conversationSessionsManaging:autoRegisterStartRequestMessageBase:logger:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v7 = specialized ConversationRequestAwareBridgeBase.init(withName:messagePublisher:serviceHelper:conversationSessionsManaging:autoRegisterStartRequestMessageBase:logger:)(a1, a2, a3, a4, a5, a6, a7);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t static ConversationRequestAwareBridgeBase.readPreviousProcessorTimeoutFromDefault()@<X0>(void *a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = MEMORY[0x1E12A1410](0xD000000000000013, 0x80000001DCA7D910);
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = MEMORY[0x1E12A1410](0xD000000000000023, 0x80000001DCA7D930);
    v6 = [v4 stringForKey_];

    if (v6)
    {

      v7 = MEMORY[0x1E12A1410](0xD000000000000023, 0x80000001DCA7D930);
      v8 = [v4 integerForKey_];

      *a1 = v8;
      v9 = *MEMORY[0x1E69E7F38];
      v10 = type metadata accessor for DispatchTimeInterval();
      v17 = *(v10 - 8);
      (*(v17 + 104))(a1, v9, v10);
      v11 = *(v17 + 56);
      v12 = a1;
      v13 = 0;
      v14 = v10;
      goto LABEL_6;
    }
  }

  v15 = type metadata accessor for DispatchTimeInterval();
  v11 = *(*(v15 - 8) + 56);
  v14 = v15;
  v12 = a1;
  v13 = 1;
LABEL_6:

  return v11(v12, v13, 1, v14);
}

char *ConversationMessageDispatchingBridgeBase.init(_:_:_:_:_:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v9 = *(*v6 + 80);
  v10 = type metadata accessor for ConversationMessageDispatchingBridgeBase.MessageHandlerBase(255, v9, a3, a4);
  v11 = MEMORY[0x1E69E6158];
  swift_getTupleTypeMetadata2();
  v12 = static Array._allocateUninitialized(_:)();
  v13 = MEMORY[0x1E69E6168];
  v14 = specialized Dictionary.init(dictionaryLiteral:)(v12, v11, v10, MEMORY[0x1E69E6168]);

  *(v6 + 15) = v14;
  v15 = static Array._allocateUninitialized(_:)();
  v16 = specialized Dictionary.init(dictionaryLiteral:)(v15, v11, v10, v13);

  *(v6 + 16) = v16;
  type metadata accessor for ConversationMessageDispatchingBridgeBase.CommandHandlerBase(255, v9, v17, v18);
  v19 = type metadata accessor for Dictionary();
  swift_getTupleTypeMetadata2();
  v20 = static Array._allocateUninitialized(_:)();
  v21 = specialized Dictionary.init(dictionaryLiteral:)(v20, v11, v19, v13);

  *(v6 + 17) = v21;
  *(v6 + 2) = a1;
  *(v6 + 3) = a2;
  outlined init with take of ReferenceResolutionClientProtocol(a3, (v6 + 32));
  *(v6 + 9) = a4;
  outlined init with take of ReferenceResolutionClientProtocol(a5, (v6 + 80));
  v22 = direct field offset for ConversationMessageDispatchingBridgeBase.logger;
  v23 = type metadata accessor for Logger();
  (*(*(v23 - 8) + 32))(&v6[v22], a6, v23);
  return v6;
}

uint64_t ConversationRequestAwareBridgeBase.registerMessages()()
{
  v1 = *v0;
  if (*(v0 + direct field offset for ConversationRequestAwareBridgeBase.hasAutoRegisteredStartRequestMessageBase) == 1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v1[39];
    *(v2 + 24) = v1[40];
    v3 = v1[58];
    started = type metadata accessor for StartRequestMessageBase();
    v3(partial apply for closure #1 in ConversationRequestAwareBridgeBase.registerMessages(), v2, started);
  }

  v5 = swift_allocObject();
  *(v5 + 16) = v1[39];
  *(v5 + 24) = v1[40];
  v6 = *(*v0 + 464);
  v7 = type metadata accessor for EndRequestMessageBase();
  v6(partial apply for closure #2 in ConversationRequestAwareBridgeBase.registerMessages(), v5, v7);
}

void ConversationRequestAwareBridgeBase.registerMessageHandler<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for RequestMessageBase();
  v7 = swift_dynamicCastMetatype();
  if (v7)
  {
    v8 = v7;
    v9 = *(v3 + direct field offset for ConversationRequestAwareBridgeBase.requestMessagesHandledByBridgeBase);
    os_unfair_lock_lock((v9 + 24));
    v10 = *(v9 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v9 + 16) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = *(v10 + 2);

      *(v9 + 16) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14 + 1, 1, v10);

      v10 = *(v9 + 16);
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
    }

    *(v10 + 2) = v13 + 1;
    *&v10[8 * v13 + 32] = v8;
    *(v9 + 16) = v10;
    os_unfair_lock_unlock((v9 + 24));
  }

  ConversationMessageDispatchingBridgeBase.registerMessageHandler<A>(_:)(a1, a2, a3);
}

{
  v4 = v3;
  v47 = a1;
  v48 = a2;
  v44 = *v3;
  v6 = v44;
  v7 = type metadata accessor for Logger();
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v41 - v11;
  v50[0] = a3;
  swift_getMetatypeMetadata();
  v13 = String.init<A>(describing:)();
  v15 = v14;
  v16 = *(*v3 + 176);

  v18 = v13;
  v19 = v16(v17);
  v50[0] = v13;
  v50[1] = v15;
  v20 = *(v6 + 312);
  v23 = type metadata accessor for ConversationMessageDispatchingBridgeBase.MessageHandlerBase(0, v20, v21, v22);
  MEMORY[0x1E12A1380](v49, v50, v19, MEMORY[0x1E69E6158], v23, MEMORY[0x1E69E6168]);

  if (v49[0])
  {

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v50[0] = v27;
      *v26 = 136315138;
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v50);

      *(v26 + 4) = v28;
      _os_log_impl(&dword_1DC659000, v24, v25, "Message type: %s is already registered. Ignoring this request", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1E12A2F50](v27, -1, -1);
      MEMORY[0x1E12A2F50](v26, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v43 = v9;
    v29 = v44;
    type metadata accessor for StartRequestMessageBase();
    v30 = swift_dynamicCastMetatype();
    v31 = v48;
    if (v30)
    {
      v41 = a3;
      v42 = v18;
      v32 = type metadata accessor for TaskPriority();
      (*(*(v32 - 8) + 56))(v12, 1, 1, v32);
      v33 = one-time initialization token for shared;

      if (v33 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v34 = static MessageBusActor.shared;
      v35 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
      v36 = swift_allocObject();
      v36[2] = v34;
      v36[3] = v35;
      a3 = v41;
      v36[4] = v41;
      v36[5] = v4;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in ConversationRequestAwareBridgeBase.registerMessageHandler<A>(_:), v36);

      v31 = v48;
      v18 = v42;
    }

    type metadata accessor for ConversationMessageDispatchingBridgeBase.MessageHandler(0, v20, *(v29 + 320), a3);
    v37 = v43;
    (*(v45 + 16))(v43, v4 + direct field offset for ConversationMessageDispatchingBridgeBase.logger, v46);
    v38 = ConversationMessageDispatchingBridgeBase.MessageHandler.__allocating_init(_:_:)(v47, v31, v37);
    v50[5] = v15;
    v50[6] = v38;
    v50[4] = v18;
    v39 = *(*v4 + 192);

    v40 = v39(v50);
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    v40(v50, 0);
  }
}

void ConversationMessageDispatchingBridgeBase.registerMessageHandler<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = a1;
  v31 = a2;
  v6 = *v3;
  v7 = type metadata accessor for Logger();
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[0] = a3;
  swift_getMetatypeMetadata();
  v10 = String.init<A>(describing:)();
  v12 = v11;
  v13 = *(*v3 + 176);

  v15 = v10;
  v16 = v13(v14);
  v32[0] = v10;
  v32[1] = v12;
  v17 = *(v6 + 80);
  v20 = type metadata accessor for ConversationMessageDispatchingBridgeBase.MessageHandlerBase(0, v17, v18, v19);
  MEMORY[0x1E12A1380](v33, v32, v16, MEMORY[0x1E69E6158], v20, MEMORY[0x1E69E6168]);

  if (v33[0])
  {

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32[0] = v24;
      *v23 = 136315138;
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v12, v32);

      *(v23 + 4) = v25;
      _os_log_impl(&dword_1DC659000, v21, v22, "Message type: %s is already registered so ignore this request", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x1E12A2F50](v24, -1, -1);
      MEMORY[0x1E12A2F50](v23, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    type metadata accessor for ConversationMessageDispatchingBridgeBase.MessageHandler(0, v17, v17, a3);
    (*(v29 + 16))(v9, v4 + direct field offset for ConversationMessageDispatchingBridgeBase.logger, v7);
    v26 = ConversationMessageDispatchingBridgeBase.MessageHandler.__allocating_init(_:_:)(v30, v31, v9);
    v33[1] = v12;
    v33[2] = v26;
    v33[0] = v10;
    v27 = *(*v4 + 192);

    v28 = v27(v32);
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    v28(v32, 0);
  }
}

uint64_t closure #1 in ConversationRequestAwareBridgeBase.registerMessageHandler<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationRequestAwareBridgeBase.registerMessageHandler<A>(_:), v5, 0);
}

uint64_t closure #1 in ConversationRequestAwareBridgeBase.registerMessageHandler<A>(_:)()
{
  v1 = *(v0 + 40);
  if ((*(v1 + direct field offset for ConversationRequestAwareBridgeBase.hasRegisteredToAnyStartRequest) & 1) == 0)
  {
    *(v1 + direct field offset for ConversationRequestAwareBridgeBase.hasRegisteredToAnyStartRequest) = 1;
  }

  return (*(v0 + 8))();
}

uint64_t ConversationRequestAwareBridgeBase.createRequestProcessor(_:_:_:_:)(uint64_t a1)
{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DC659000, v1, v2, "createRequestProcessor() method from base class called. Please implement this method in your RequestProcessorBase implementation", v3, 2u);
    MEMORY[0x1E12A2F50](v3, -1, -1);
  }

  return 0;
}

uint64_t ConversationRequestAwareBridgeBase.dispatchCommandToProcessor<A>(_:executionContextInfo:reply:handler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  result = (*(*v4 + 480))();
  if ((result & 1) == 0)
  {

    v11 = a1;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = v23;
      *v14 = 136315394;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v5 + 16), *(v5 + 24), &v24);
      *(v14 + 12) = 2080;
      v15 = [v11 debugDescription];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v13;
      v17 = v11;
      v19 = v18;

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v19, &v24);
      v11 = v17;

      *(v14 + 14) = v20;
      _os_log_impl(&dword_1DC659000, v12, v22, "%s bridge was not able to handle: %s.", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v23, -1, -1);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    v21 = *(*v5 + 304);

    return v21(v11, a2, a3, a4);
  }

  return result;
}

void ConversationRequestAwareBridgeBase.handleCandidateRequestMessageInternal(_:)(unint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for UUID();
  v93 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 >> 61;
  v9 = (a1 & 0x1FFFFFFFFFFFFFFFLL);
  if ((a1 >> 61) <= 2)
  {
    if (v8)
    {
      a1 &= 0x1FFFFFFFFFFFFFFFuLL;
      if (v8 != 1)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    a1 &= 0x1FFFFFFFFFFFFFFFuLL;
    if (v8 <= 4)
    {
      if (v8 == 3)
      {
        goto LABEL_8;
      }

LABEL_7:
      a1 = v9;
      goto LABEL_8;
    }

    if (v8 != 5)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  v10 = *(v4 + 376);
  v11 = v9;
  v12 = v10();
  if (v12)
  {
    v13 = v12;
    v14 = v11;
    v16 = *(v12 + 64);
    v15 = *(v12 + 72);

    if (v16 == RequestMessageBase.requestId.getter() && v15 == v17)
    {
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {

        v11 = v14;
        goto LABEL_15;
      }
    }

    (*(*v1 + 496))(a1, v13);

    return;
  }

LABEL_15:
  v20 = RequestMessageBase.requestId.getter();
  v22 = v21;
  v23 = (*(*v1 + 400))();
  *&v95 = v20;
  *(&v95 + 1) = v22;
  v24 = *(v4 + 320);
  MEMORY[0x1E12A1380](v94, &v95, v23, MEMORY[0x1E69E6158], v24, MEMORY[0x1E69E6168]);

  v25 = v94[0];
  if (v94[0])
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.conversationBridge);
    v27 = v11;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v95 = v31;
      *v30 = 136315138;
      swift_getObjectType();
      v32 = _typeName(_:qualified:)();
      v34 = v11;
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v95);

      *(v30 + 4) = v35;
      v11 = v34;
      _os_log_impl(&dword_1DC659000, v28, v29, "Posting %s to existing candidate request processor, as the current request processor is for a different turn.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x1E12A2F50](v31, -1, -1);
      MEMORY[0x1E12A2F50](v30, -1, -1);
    }

    v36 = v25;
    goto LABEL_21;
  }

  type metadata accessor for StartCandidateRequestMessage();
  if (swift_dynamicCastClass())
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    v39 = __swift_project_value_buffer(v38, static Logger.conversationBridge);
    v91 = v11;
    v40 = v11;
    v89 = v39;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *&v95 = v88;
      *v43 = 136315394;
      swift_getObjectType();
      v44 = _typeName(_:qualified:)();
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v95);
      v92 = v40;
      v47 = v46;

      *(v43 + 4) = v47;
      *(v43 + 12) = 2080;
      v48 = RequestMessageBase.requestId.getter();
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v95);

      *(v43 + 14) = v50;
      v40 = v92;
      _os_log_impl(&dword_1DC659000, v41, v42, "Creating candidate request processor to handle %s<requestId=%s>, as we have not received a StartTurn for this request yet.", v43, 0x16u);
      v51 = v88;
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v51, -1, -1);
      MEMORY[0x1E12A2F50](v43, -1, -1);
    }

    v94[0] = a1;
    type metadata accessor for RequestMessageBase();
    v52 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes16RootRequestAware_pMd, &_s16SiriMessageTypes16RootRequestAware_pMR);
    v53 = swift_dynamicCast();
    v90 = v24;
    if (v53)
    {
      __swift_project_boxed_opaque_existential_1(&v95, *(&v96 + 1));
      v92 = dispatch thunk of RootRequestAware.rootRequestId.getter();
      v55 = v54;
      __swift_destroy_boxed_opaque_existential_1Tm(&v95);
    }

    else
    {
      v97 = 0;
      v95 = 0u;
      v96 = 0u;
      outlined destroy of ReferenceResolutionClientProtocol?(&v95, &_s16SiriMessageTypes16RootRequestAware_pSgMd, &_s16SiriMessageTypes16RootRequestAware_pSgMR);
      v92 = RequestMessageBase.requestId.getter();
      v55 = v65;
    }

    v66 = v52;
    v67 = MessageBase.assistantId.getter();
    v69 = v68;

    v70 = v66;
    SessionMessageBase.sessionId.getter();

    v71 = RequestMessageBase.requestId.getter();
    v36 = (*(*v2 + 472))(v67, v69, v7, v71, v72, v92, v55);

    (*(v93 + 8))(v7, v5);
    if (v36)
    {

      v73 = RequestMessageBase.requestId.getter();
      v94[1] = v74;
      v94[2] = v36;
      v94[0] = v73;
      v75 = *(*v2 + 416);

      v76 = v75(&v95);
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
      v76(&v95, 0);
      v11 = v91;
LABEL_21:
      v37 = *(*v2 + 496);

      v37(a1, v36);

      return;
    }

    v77 = v70;
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *&v95 = v82;
      *v80 = 136315394;
      v83 = RequestMessageBase.requestId.getter();
      v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, &v95);

      *(v80 + 4) = v85;
      *(v80 + 12) = 2112;
      *(v80 + 14) = a1;
      *v81 = a1;
      v86 = v77;
      _os_log_impl(&dword_1DC659000, v78, v79, "Error creating candidate request processor for requestId: %s. Dropping %@.", v80, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v81, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v81, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v82);
      MEMORY[0x1E12A2F50](v82, -1, -1);
      MEMORY[0x1E12A2F50](v80, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, static Logger.conversationBridge);
    v57 = v11;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&v95 = v61;
      *v60 = 136315138;
      v62 = RequestMessageBase.requestId.getter();
      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, &v95);

      *(v60 + 4) = v64;
      _os_log_impl(&dword_1DC659000, v58, v59, "Receiving candidate message with unknown requestId %s. We should have received a StartCandidateRequestMessage first. Ignoring.", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      MEMORY[0x1E12A2F50](v61, -1, -1);
      MEMORY[0x1E12A2F50](v60, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t ConversationRequestAwareBridgeBase.__ivar_destroyer()
{

  v1 = direct field offset for ConversationRequestAwareBridgeBase.previousProcessorTimeout;
  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t ConversationRequestAwareBridgeBase.deinit()
{
  ConversationMessageDispatchingBridgeBase.deinit();

  v1 = direct field offset for ConversationRequestAwareBridgeBase.previousProcessorTimeout;
  v2 = type metadata accessor for DispatchTimeInterval();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

char *ConversationMessageDispatchingBridgeBase.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));

  v1 = direct field offset for ConversationMessageDispatchingBridgeBase.logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ConversationMessageDispatchingBridgeBase.methodDispatcher.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 120) = a1;
}

uint64_t ConversationMessageDispatchingBridgeBase.registeredMethod.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 128) = a1;
}

uint64_t ConversationMessageDispatchingBridgeBase.commandsDispatcher.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 136) = a1;
}

uint64_t ConversationMessageDispatchingBridgeBase.messageTypesForSubscription()()
{
  v1 = (*v0 + 176);
  v2 = (*v1)();
  v3 = *(v1 - 12);
  type metadata accessor for ConversationMessageDispatchingBridgeBase.MessageHandlerBase(0, v3, v4, v5);
  v12[5] = v2;
  v12[2] = v3;
  v6 = type metadata accessor for Dictionary.Values();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B4BaseCmMd, &_s16SiriMessageTypes0B4BaseCmMR);
  WitnessTable = swift_getWitnessTable();
  v10 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in ConversationMessageDispatchingBridgeBase.messageTypesForSubscription(), v12, v6, v7, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v9);

  return v10;
}

uint64_t ConversationMessageDispatchingBridgeBase.aceCommandsGroups()()
{
  v1 = (*v0 + 200);
  (*v1)();
  type metadata accessor for ConversationMessageDispatchingBridgeBase.CommandHandlerBase(255, *(v1 - 15), v2, v3);
  type metadata accessor for Dictionary();
  type metadata accessor for Dictionary.Keys();
  swift_getWitnessTable();
  return Array.init<A>(_:)();
}

uint64_t ConversationMessageDispatchingBridgeBase.aceCommands(forGroup:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 200);
  v6 = *v2 + 200;

  v8 = v5(v7);
  v19[0] = a1;
  v19[1] = a2;
  v11 = type metadata accessor for ConversationMessageDispatchingBridgeBase.CommandHandlerBase(255, *(v6 - 120), v9, v10);
  v12 = MEMORY[0x1E69E6158];
  v13 = MEMORY[0x1E69E6168];
  v14 = type metadata accessor for Dictionary();
  MEMORY[0x1E12A1380](&v20, v19, v8, v12, v14, v13);

  v15 = v20;
  if (!v20)
  {
    v16 = MEMORY[0x1E69E6158];
    swift_getTupleTypeMetadata2();
    v17 = static Array._allocateUninitialized(_:)();
    v15 = specialized Dictionary.init(dictionaryLiteral:)(v17, v16, v11, MEMORY[0x1E69E6168]);
  }

  v19[0] = v15;
  type metadata accessor for Dictionary.Keys();
  swift_getWitnessTable();
  return Array.init<A>(_:)();
}

uint64_t ConversationMessageDispatchingBridgeBase.handle(_:executionContextInfo:reply:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = [a1 groupIdentifier];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = (*(*v5 + 200))();
    v100 = v13;
    v101 = v15;
    v19 = type metadata accessor for ConversationMessageDispatchingBridgeBase.CommandHandlerBase(255, *(v10 + 80), v17, v18);
    v20 = MEMORY[0x1E69E6158];
    v21 = MEMORY[0x1E69E6168];
    v22 = type metadata accessor for Dictionary();
    MEMORY[0x1E12A1380](&v102, &v100, v16, v20, v22, v21);

    v23 = v102;
    if (!v102)
    {
      v57 = a1;

      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v100 = v93;
        *v60 = 136315394;
        *(v60 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5[2], v5[3], &v100);
        *(v60 + 12) = 2080;
        v97 = a4;
        v61 = [v57 debugDescription];
        v62 = a3;
        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v64 = a2;
        v66 = v65;

        v67 = v63;
        a3 = v62;
        v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v66, &v100);
        a2 = v64;

        *(v60 + 14) = v68;
        a4 = v97;
        v69 = "%s was not able to handle: %s, group is not register. Falling back to super.handle()";
LABEL_20:
        _os_log_impl(&dword_1DC659000, v58, v59, v69, v60, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v93, -1, -1);
        MEMORY[0x1E12A2F50](v60, -1, -1);
      }

LABEL_21:

      return (*(*v5 + 304))(v57, a2, a3, a4);
    }

    v24 = [a1 encodedClassName];
    if (v24)
    {
      v25 = v24;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v100 = v26;
      v101 = v28;
      MEMORY[0x1E12A1380](&v102, &v100, v23, MEMORY[0x1E69E6158], v19, MEMORY[0x1E69E6168]);

      v29 = v102;
      if (v102)
      {
        v30 = a1;
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v100 = v91;
          *v33 = 136315138;
          v95 = a4;
          v34 = [v30 debugDescription];
          v90 = v32;
          v35 = v30;
          v36 = a3;
          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v38 = a2;
          v40 = v39;

          v41 = v37;
          a3 = v36;
          v30 = v35;
          v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v40, &v100);
          a2 = v38;

          *(v33 + 4) = v42;
          a4 = v95;
          _os_log_impl(&dword_1DC659000, v31, v90, "dispatch commnad %s to the handle method", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v91);
          MEMORY[0x1E12A2F50](v91, -1, -1);
          MEMORY[0x1E12A2F50](v33, -1, -1);
        }

        (*(*v29 + 88))(v5, v30, a2, a3, a4);
      }

      v57 = a1;

      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v100 = v93;
        *v60 = 136315394;
        *(v60 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5[2], v5[3], &v100);
        *(v60 + 12) = 2080;
        v99 = a4;
        v82 = [v57 debugDescription];
        v83 = a3;
        v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v85 = a2;
        v87 = v86;

        v88 = v84;
        a3 = v83;
        v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v87, &v100);
        a2 = v85;

        *(v60 + 14) = v89;
        a4 = v99;
        v69 = "%s was not able to handle: %s, command is not register. Falling back to super.handle()";
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    v70 = a1;
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v100 = v94;
      *v73 = 136315138;
      v98 = a4;
      v74 = [v70 debugDescription];
      v75 = a3;
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = a2;
      v79 = v78;

      v80 = v76;
      a3 = v75;
      v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v79, &v100);
      a2 = v77;

      *(v73 + 4) = v81;
      a4 = v98;
      _os_log_impl(&dword_1DC659000, v71, v72, "Commnad %s don't have encodedClassName, failed command", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v94);
      MEMORY[0x1E12A2F50](v94, -1, -1);
      MEMORY[0x1E12A2F50](v73, -1, -1);
    }

    return (*(*v5 + 304))(v70, a2, a3, a4);
  }

  else
  {
    v44 = a1;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v100 = v92;
      *v47 = 136315138;
      v96 = a4;
      v48 = [v44 debugDescription];
      v49 = a3;
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = a2;
      v53 = v52;

      v54 = v50;
      a3 = v49;
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v53, &v100);
      a2 = v51;

      *(v47 + 4) = v55;
      a4 = v96;
      _os_log_impl(&dword_1DC659000, v45, v46, "Commnad %s don't have group identifier, failed command", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v92);
      MEMORY[0x1E12A2F50](v92, -1, -1);
      MEMORY[0x1E12A2F50](v47, -1, -1);
    }

    v56 = *(*v5 + 304);

    return v56(v44, a2, a3, a4);
  }
}

uint64_t ConversationMessageDispatchingBridgeBase.findRegisterMethod(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorVSgMd, &_ss6MirrorVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27[-1] - v9;
  v11 = type metadata accessor for Mirror();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Mirror?(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v10, &_ss6MirrorVSgMd, &_ss6MirrorVSgMR);
    type metadata accessor for ConversationMessageDispatchingBridgeBase.MessageHandlerBase(0, *(v4 + 80), v15, v16);
    return swift_allocObject();
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v27[0] = Mirror.subjectType.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, &_sypXpMR);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    v21 = (*(*v2 + 176))();
    v27[0] = v18;
    v27[1] = v20;
    v24 = type metadata accessor for ConversationMessageDispatchingBridgeBase.MessageHandlerBase(0, *(v4 + 80), v22, v23);
    MEMORY[0x1E12A1380](&v28, v27, v21, MEMORY[0x1E69E6158], v24, MEMORY[0x1E69E6168]);

    if (v28)
    {
      v25 = v28;
    }

    else
    {
      Mirror.superclassMirror.getter();
      v25 = ConversationMessageDispatchingBridgeBase.findRegisterMethod(_:)(v7);
      outlined destroy of ReferenceResolutionClientProtocol?(v7, &_ss6MirrorVSgMd, &_ss6MirrorVSgMR);
    }

    (*(v12 + 8))(v14, v11);
    return v25;
  }
}

void ConversationMessageDispatchingBridgeBase.registerCommandHandler<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = [v63 groupIdentifier];
  if (v13)
  {
    v60 = v9;
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = [v63 encodedClassName];
    if (v18)
    {
      v57 = v10;
      v58 = a1;
      v59 = a2;
      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = *(*v4 + 200);

      v23 = v21(v22);
      v62 = v15;
      v64 = v15;
      v65 = v17;
      v56 = *(v8 + 80);
      v26 = type metadata accessor for ConversationMessageDispatchingBridgeBase.CommandHandlerBase(255, v56, v24, v25);
      v27 = MEMORY[0x1E69E6158];
      v28 = MEMORY[0x1E69E6168];
      v29 = type metadata accessor for Dictionary();
      MEMORY[0x1E12A1380](v66, &v64, v23, v27, v29, v28);

      v30 = v66[0];
      if (!v66[0])
      {
        v31 = MEMORY[0x1E69E6158];
        swift_getTupleTypeMetadata2();
        v32 = static Array._allocateUninitialized(_:)();
        v30 = specialized Dictionary.init(dictionaryLiteral:)(v32, v31, v26, MEMORY[0x1E69E6168]);
      }

      v67 = v30;
      v33 = v61;
      v64 = v61;
      v65 = v20;

      MEMORY[0x1E12A1380](v66, &v64, v30, MEMORY[0x1E69E6158], v26, MEMORY[0x1E69E6168]);

      v34 = v62;
      if (v66[0])
      {

        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v64 = v38;
          *v37 = 136315394;
          *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v17, &v64);
          *(v37 + 12) = 2080;
          *(v37 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v20, &v64);
          _os_log_impl(&dword_1DC659000, v35, v36, "There is already a method register to handle command: %s:%s, replacing", v37, 0x16u);
          swift_arrayDestroy();
          v39 = v38;
          v33 = v61;
          MEMORY[0x1E12A2F50](v39, -1, -1);
          v40 = v37;
          v34 = v62;
          MEMORY[0x1E12A2F50](v40, -1, -1);
        }
      }

      type metadata accessor for ConversationMessageDispatchingBridgeBase.CommandHandler(0, v56, v56, a3);
      (*(v57 + 16))(v12, v4 + direct field offset for ConversationMessageDispatchingBridgeBase.logger, v60);
      v66[3] = ConversationMessageDispatchingBridgeBase.CommandHandler.__allocating_init(_:_:)(v58, v59, v12);
      v64 = v33;
      v65 = v20;

      Dictionary.updateValue(_:forKey:)();

      v66[1] = v17;
      v66[2] = v67;
      v66[0] = v34;
      v41 = *(*v4 + 216);

      v42 = v41(&v64);
      type metadata accessor for Dictionary();
      Dictionary.updateValue(_:forKey:)();

      v42(&v64, 0);

      goto LABEL_15;
    }

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v64 = v46;
      *v45 = 136315138;
      v66[0] = a3;
      swift_getMetatypeMetadata();
      v51 = String.init<A>(describing:)();
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &v64);

      *(v45 + 4) = v53;
      v50 = "Cannot get command encode name %s";
      goto LABEL_14;
    }
  }

  else
  {

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v64 = v46;
      *v45 = 136315138;
      v66[0] = a3;
      swift_getMetatypeMetadata();
      v47 = String.init<A>(describing:)();
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v64);

      *(v45 + 4) = v49;
      v50 = "Cannot get command group identifier %s";
LABEL_14:
      _os_log_impl(&dword_1DC659000, v43, v44, v50, v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x1E12A2F50](v46, -1, -1);
      MEMORY[0x1E12A2F50](v45, -1, -1);

LABEL_15:
      return;
    }
  }

  v54 = v63;
}

void ConversationMessageDispatchingBridgeBase.defaultHandle(_:executionContextInfo:reply:)(void *a1, uint64_t a2, void (*a3)(id, id), uint64_t a4)
{
  v5 = v4;
  v44 = a3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.conversationBridge);

  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v43 = v9;
    v19 = v8;
    v20 = a4;
    v21 = v18;
    v47 = v18;
    *v16 = 136315394;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v5 + 16), *(v5 + 24), &v47);
    *(v16 + 12) = 2112;
    *(v16 + 14) = v13;
    *v17 = v13;
    v22 = v13;
    _os_log_impl(&dword_1DC659000, v14, v15, "Bridge:%s received %@", v16, 0x16u);
    outlined destroy of ReferenceResolutionClientProtocol?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v23 = v21;
    a4 = v20;
    v8 = v19;
    v9 = v43;
    MEMORY[0x1E12A2F50](v23, -1, -1);
    MEMORY[0x1E12A2F50](v16, -1, -1);
  }

  v24 = v44;
  if (v44)
  {
    v25 = objc_allocWithZone(MEMORY[0x1E69C7780]);

    v26 = [v25 init];
    UUID.init()();
    v27 = UUID.uuidString.getter();
    v29 = v28;
    (*(v9 + 8))(v11, v8);
    v30 = MEMORY[0x1E12A1410](v27, v29);

    [v26 setAceId_];

    v31 = v26;
    v32 = [v13 aceId];
    [v31 setRefId_];

    v47 = 0;
    v48 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v47 = 0x20656764697242;
    v48 = 0xE700000000000000;
    MEMORY[0x1E12A1580](*(v5 + 16), *(v5 + 24));
    MEMORY[0x1E12A1580](0xD00000000000001ALL, 0x80000001DCA7D670);
    v33 = [v13 encodedClassName];
    if (v33)
    {
      v34 = v33;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;
    }

    else
    {
      v35 = 0;
      v37 = 0;
    }

    v38 = objc_opt_self();
    v45 = v35;
    v46 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v39 = String.init<A>(describing:)();
    MEMORY[0x1E12A1580](v39);

    v40 = MEMORY[0x1E12A1410](v47, v48);

    v41 = [v38 errorWithCode:2000 description:v40];

    v42 = v41;
    v24(v31, v41);

    _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v24, a4);
  }
}

uint64_t ConversationMessageDispatchingBridgeBase.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ConversationMessageDispatchingBridgeBase.__allocating_init(_:_:_:_:_:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  ConversationMessageDispatchingBridgeBase.init(_:_:_:_:_:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t ConversationMessageDispatchingBridgeBase.MessageHandler.__allocating_init(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *a4;
  v10 = type metadata accessor for Logger();
  (*(*(v10 - 8) + 32))(v8 + v9, a3, v10);
  return v8;
}

uint64_t ConversationMessageDispatchingBridgeBase.MessageHandler.method.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ConversationRequestAwareBridgeBase.__deallocating_deinit(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t ConversationRequestProcessorBase.sessionId.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t ConversationMessageDispatchingBridgeBase.MessageHandler.init(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v6 = *a4;
  v7 = type metadata accessor for Logger();
  (*(*(v7 - 8) + 32))(v4 + v6, a3, v7);
  return v4;
}

void ConversationMessageDispatchingBridgeBase.CommandHandler.handle(_:_:executionContextInfo:reply:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a1;
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v10 = swift_dynamicCastUnknownClass();
    if (v10)
    {
      v11 = v10;
      v12 = *(v5 + 16);
      v13 = a2;
      v14 = v12();
      v14(v11, a3, a4, a5);
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = a2;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v42 = v29;
        *v28 = 136315650;
        v30 = [v25 aceId];
        if (v30)
        {
          v31 = v30;
          v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v34 = v33;
        }

        else
        {
          v34 = 0xE800000000000000;
          v32 = 0x6449656361206F6ELL;
        }

        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v42);

        *(v28 + 4) = v35;
        *(v28 + 12) = 2080;
        swift_getObjectType();
        v36 = _typeName(_:qualified:)();
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v42);

        *(v28 + 14) = v38;
        *(v28 + 22) = 2080;
        v39 = _typeName(_:qualified:)();
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v42);

        *(v28 + 24) = v41;
        _os_log_impl(&dword_1DC659000, v26, v27, "Input command %s of type %s is not of type %s", v28, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v29, -1, -1);
        MEMORY[0x1E12A2F50](v28, -1, -1);
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_unknownObjectRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v42 = v18;
      *v17 = 136315394;
      swift_getObjectType();
      v19 = _typeName(_:qualified:)();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v42);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      v22 = _typeName(_:qualified:)();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v42);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_1DC659000, v15, v16, "Handler invoking object is of type %s and not of type %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v18, -1, -1);
      MEMORY[0x1E12A2F50](v17, -1, -1);
    }
  }
}

uint64_t ConversationMessageDispatchingBridgeBase.MessageHandler.__ivar_destroyer(uint64_t *a1)
{

  v3 = *a1;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 8);

  return v5(v1 + v3, v4);
}

uint64_t ConversationMessageDispatchingBridgeBase.MessageHandler.deinit(uint64_t *a1)
{

  v3 = *a1;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);
  return v1;
}

unint64_t __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6, a2, a3);
}

unint64_t __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

unint64_t specialized Dictionary.init(dictionaryLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = v24 - v12;
  if (MEMORY[0x1E12A1750](a1, TupleTypeMetadata2, v11))
  {
    type metadata accessor for _DictionaryStorage();
    v14 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC8];
  }

  result = MEMORY[0x1E12A1780](a1, TupleTypeMetadata2);
  if (result)
  {
    if (result >= 1)
    {
      v24[0] = v10;
      v28 = a4;
      v16 = 0;
      v17 = *(TupleTypeMetadata2 + 48);
      v26 = a3;
      v27 = (v9 + 16);
      v24[2] = a2 - 8;
      v25 = v17;
      v24[1] = a3 - 8;
      while (1)
      {
        v18 = result;
        if (Array._hoistableIsNativeTypeChecked()())
        {
          (*(v9 + 16))(v13, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, TupleTypeMetadata2);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v24[0] != 8)
          {
            goto LABEL_19;
          }

          v29 = result;
          (*v27)(v13, &v29, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = __RawDictionaryStorage.find<A>(_:)(v13, a2, v28);
        if (v19)
        {
          break;
        }

        v20 = result;
        *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v14[6] + *(*(a2 - 8) + 72) * result, v13, a2);
        result = (*(*(v26 - 8) + 32))(v14[7] + *(*(v26 - 8) + 72) * v20, &v13[v25]);
        v21 = v14[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_17;
        }

        ++v16;
        v14[2] = v23;
        result = v18;
        if (v18 == v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v14;
  }

  return result;
}

void *specialized ConversationRequestAwareBridgeBase.init(withName:messagePublisher:serviceHelper:conversationSessionsManaging:autoRegisterStartRequestMessageBase:logger:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, char a6, uint64_t a7)
{
  v8 = v7;
  v36 = a7;
  v37 = a5;
  v33 = a2;
  v34 = a4;
  v38 = a3;
  v31 = *v8;
  v32 = a1;
  v35 = type metadata accessor for Logger();
  v10 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = (&v31 - v14);
  v16 = type metadata accessor for DispatchTimeInterval();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v8 + direct field offset for ConversationRequestAwareBridgeBase.currentRequestProcessor) = 0;
  v20 = direct field offset for ConversationRequestAwareBridgeBase.candidateRequestProcessors;
  *(v8 + v20) = Dictionary.init()();
  v21 = direct field offset for ConversationRequestAwareBridgeBase.requestMessagesHandledByBridgeBase;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySay16SiriMessageTypes07RequestD4BaseCmGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySay16SiriMessageTypes07RequestD4BaseCmGSo16os_unfair_lock_sVGMR);
  v22 = swift_allocObject();
  *(v22 + 24) = 0;
  *(v22 + 16) = MEMORY[0x1E69E7CC0];
  *(v8 + v21) = v22;
  v23 = direct field offset for ConversationRequestAwareBridgeBase.hasRegisteredToAnyStartRequest;
  *(v8 + direct field offset for ConversationRequestAwareBridgeBase.hasRegisteredToAnyStartRequest) = 0;
  *(v8 + direct field offset for ConversationRequestAwareBridgeBase.hasAutoRegisteredStartRequestMessageBase) = a6;
  *(v8 + v23) = a6;
  static ConversationRequestAwareBridgeBase.readPreviousProcessorTimeoutFromDefault()(v15);
  v24 = *(v17 + 48);
  if (v24(v15, 1, v16) == 1)
  {
    *v19 = 500;
    (*(v17 + 104))(v19, *MEMORY[0x1E69E7F38], v16);
    if (v24(v15, 1, v16) != 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    }
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
  }

  (*(v17 + 32))(v8 + direct field offset for ConversationRequestAwareBridgeBase.previousProcessorTimeout, v19, v16);
  v25 = v38;
  outlined init with copy of ReferenceResolutionClientProtocol(v38, v40);
  v26 = v37;
  outlined init with copy of ReferenceResolutionClientProtocol(v37, v39);
  v28 = v35;
  v27 = v36;
  (*(v10 + 16))(v12, v36, v35);
  v29 = v34;
  swift_unknownObjectRetain();
  ConversationMessageDispatchingBridgeBase.init(_:_:_:_:_:)(v32, v33, v40, v29, v39, v12);

  ConversationRequestAwareBridgeBase.registerMessages()();

  (*(v10 + 8))(v27, v28);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  return v8;
}

uint64_t partial apply for closure #1 in ConversationRequestAwareBridgeBase.registerMessageHandler<A>(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in ConversationRequestAwareBridgeBase.registerMessageHandler<A>(_:)(a1, v4, v5, v6);
}

void outlined consume of CandidateRequestMessage?(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }
}

uint64_t partial apply for closure #1 in ConversationMessageDispatchingBridgeBase.messageTypesForSubscription()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

unint64_t type metadata accessor for SABaseClientBoundCommand()
{
  result = lazy cache variable for type metadata for SABaseClientBoundCommand;
  if (!lazy cache variable for type metadata for SABaseClientBoundCommand)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SABaseClientBoundCommand);
  }

  return result;
}

uint64_t type metadata accessor for ConversationRequestProcessorBase(uint64_t a1)
{
  result = type metadata singleton initialization cache for ConversationRequestProcessorBase;
  if (!type metadata singleton initialization cache for ConversationRequestProcessorBase)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for ConversationRequestProcessorBase(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for ConversationRequestAwareBridgeBase(uint64_t a1)
{
  result = type metadata accessor for DispatchTimeInterval();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for ConversationMessageDispatchingBridgeBase(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for ConversationMessageDispatchingBridgeBase.MessageHandler(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for ConversationMessageDispatchingBridgeBase.CommandHandler(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t (*partial apply for closure #2 in ConversationRequestAwareBridgeBase.registerMessages()(uint64_t a1))(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = *(v1 + 16);
  *(v3 + 32) = a1;

  return partial apply for closure #1 in closure #2 in ConversationRequestAwareBridgeBase.registerMessages();
}

uint64_t (*partial apply for closure #1 in ConversationRequestAwareBridgeBase.registerMessages()(uint64_t a1))(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = *(v1 + 16);
  *(v3 + 32) = a1;

  return partial apply for closure #1 in closure #1 in ConversationRequestAwareBridgeBase.registerMessages();
}

uint64_t partial apply for closure #1 in closure #1 in ConversationRequestAwareBridgeBase.registerMessages()(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = swift_allocObject();
  *(v4 + 16) = *(v1 + 16);
  *(v4 + 32) = v3;
  v5 = *(*v3 + 136);

  v5(a1);
}

uint64_t partial apply for closure #1 in closure #2 in ConversationRequestAwareBridgeBase.registerMessages()(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = swift_allocObject();
  *(v4 + 16) = *(v1 + 16);
  *(v4 + 32) = v3;
  v5 = *(*v3 + 144);

  v5(a1);
}

uint64_t outlined init with copy of Mirror?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorVSgMd, &_ss6MirrorVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CachedPluginCatalog.findRemoteFlowPlugins(intentTopic:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v2)
  {
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t CachedPluginCatalog.sharedFlowPluginServiceClientKey.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for CodingUserInfoKey();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t one-time initialization function for sharedFlowPluginServiceClientKey()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyVSgMd, &_ss17CodingUserInfoKeyVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for CodingUserInfoKey();
  __swift_allocate_value_buffer(v3, static CachedPluginCatalog.sharedFlowPluginServiceClientKey);
  v4 = __swift_project_value_buffer(v3, static CachedPluginCatalog.sharedFlowPluginServiceClientKey);
  CodingUserInfoKey.init(rawValue:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for ignoreOSVersionKey()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyVSgMd, &_ss17CodingUserInfoKeyVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for CodingUserInfoKey();
  __swift_allocate_value_buffer(v3, static CachedPluginCatalog.ignoreOSVersionKey);
  v4 = __swift_project_value_buffer(v3, static CachedPluginCatalog.ignoreOSVersionKey);
  CodingUserInfoKey.init(rawValue:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t static CachedPluginCatalog.sharedFlowPluginServiceClientKey.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for CodingUserInfoKey();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

SiriKitRuntime::CachedPluginCatalog::CodingKeys_optional __swiftcall CachedPluginCatalog.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CachedPluginCatalog.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t CachedPluginCatalog.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6F6973726556736FLL;
  }

  if (a1 == 1)
  {
    return 0x696C696261706163;
  }

  return 0x736567616B636170;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CachedPluginCatalog.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x696C696261706163;
  v4 = 0xEC00000073656974;
  if (v2 != 1)
  {
    v3 = 0x736567616B636170;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6F6973726556736FLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE90000000000006ELL;
  }

  v7 = 0x696C696261706163;
  v8 = 0xEC00000073656974;
  if (*a2 != 1)
  {
    v7 = 0x736567616B636170;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6F6973726556736FLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE90000000000006ELL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CachedPluginCatalog.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CachedPluginCatalog.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CachedPluginCatalog.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CachedPluginCatalog.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CachedPluginCatalog.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CachedPluginCatalog.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE90000000000006ELL;
  v4 = 0xEC00000073656974;
  v5 = 0x696C696261706163;
  if (v2 != 1)
  {
    v5 = 0x736567616B636170;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F6973726556736FLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CachedPluginCatalog.CodingKeys()
{
  v1 = 0x696C696261706163;
  if (*v0 != 1)
  {
    v1 = 0x736567616B636170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F6973726556736FLL;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance CachedPluginCatalog.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized CachedPluginCatalog.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CachedPluginCatalog.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CachedPluginCatalog.CodingKeys and conformance CachedPluginCatalog.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CachedPluginCatalog.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CachedPluginCatalog.CodingKeys and conformance CachedPluginCatalog.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance CachedPluginCatalog@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized CachedPluginCatalog.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t PluginCapabilityCatalog<>.getConversationHandler(id:)()
{
  result = dispatch thunk of PluginCatalog.getPlugin(id:)();
  if (result)
  {
    type metadata accessor for RemoteFlowPluginBundleConversationHandler();
    result = swift_dynamicCastClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t protocol witness for PluginLookupByIntentTopic.getConversationHandler(id:) in conformance <> PluginCapabilityCatalog<A>()
{
  result = dispatch thunk of PluginCatalog.getPlugin(id:)();
  if (result)
  {
    type metadata accessor for RemoteFlowPluginBundleConversationHandler();
    result = swift_dynamicCastClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

void *specialized static CachedPluginCatalog.load(cacheUrl:sharedFlowPluginServiceClient:ignoreOSVersion:)(uint64_t a1, void *a2, int a3)
{
  v38 = a3;
  v40 = type metadata accessor for URL();
  v5 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v37[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37[-v8];
  v10 = type metadata accessor for CodingUserInfoKey();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = [objc_opt_self() defaultManager];
  v15 = URL.path.getter();
  v16 = MEMORY[0x1E12A1410](v15);

  v17 = [v14 fileExistsAtPath_];

  if (v17)
  {
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    if (one-time initialization token for sharedFlowPluginServiceClientKey != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v10, static CachedPluginCatalog.sharedFlowPluginServiceClientKey);
    v19 = *(v11 + 16);
    v19(v13, v18, v10);
    v43 = type metadata accessor for SharedFlowPluginServiceClient();
    v42 = a2;

    v20 = dispatch thunk of PropertyListDecoder.userInfo.modify();
    specialized Dictionary.subscript.setter(&v42, v13);
    v20(v41, 0);
    if (v38)
    {
      if (one-time initialization token for ignoreOSVersionKey != -1)
      {
        swift_once();
      }

      v21 = __swift_project_value_buffer(v10, static CachedPluginCatalog.ignoreOSVersionKey);
      v19(v13, v21, v10);
      v43 = MEMORY[0x1E69E6370];
      LOBYTE(v42) = 1;
      v22 = dispatch thunk of PropertyListDecoder.userInfo.modify();
      specialized Dictionary.subscript.setter(&v42, v13);
      v22(v41, 0);
    }

    v33 = Data.init(contentsOf:options:)();
    v35 = v34;
    lazy protocol witness table accessor for type CachedPluginCatalog and conformance CachedPluginCatalog();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    outlined consume of Data._Representation(v33, v35);

    return v42;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.executor);
    v24 = v40;
    (*(v5 + 16))(v9, a1, v40);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v42 = v28;
      *v27 = 136315138;
      v29 = URL.path.getter();
      v31 = v30;
      (*(v5 + 8))(v9, v24);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v42);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_1DC659000, v25, v26, "CachedPluginCatalog: No cache file exists at %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1E12A2F50](v28, -1, -1);
      MEMORY[0x1E12A2F50](v27, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v9, v24);
    }

    return 0;
  }
}

uint64_t specialized _NativeDictionary.mapValues<A>(_:)(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v114 = a4;
  v115 = a3;
  v113 = a2;
  v7 = type metadata accessor for IntentTopic();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v103 = &v91 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11SiriKitFlow11IntentTopicVSay0cD7Runtime06RemoteE13PluginPackageCGGMd, &_ss18_DictionaryStorageCy11SiriKitFlow11IntentTopicVSay0cD7Runtime06RemoteE13PluginPackageCGGMR);
  result = static _DictionaryStorage.copy(original:)();
  v15 = 0;
  v105 = a1;
  v16 = *(a1 + 64);
  v95 = a1 + 64;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v94 = (v17 + 63) >> 6;
  v102 = v8 + 16;
  v104 = v8;
  v112 = v8 + 32;
  v93 = "rocessorTimeoutInMS";
  v92 = "Package(bundleId: ";
  v100 = result + 64;
  *&v14 = 136315138;
  v116 = v14;
  v101 = result;
  v99 = a5;
  v97 = v7;
  v98 = v10;
  if (!v19)
  {
LABEL_5:
    v21 = v15;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v94)
      {
        return result;
      }

      v23 = *(v95 + 8 * v22);
      ++v21;
      if (v23)
      {
        v106 = (v23 - 1) & v23;
        v107 = v22;
        v20 = __clz(__rbit64(v23)) | (v22 << 6);
        goto LABEL_10;
      }
    }

LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  while (2)
  {
    v106 = (v19 - 1) & v19;
    v107 = v15;
    v20 = __clz(__rbit64(v19)) | (v15 << 6);
LABEL_10:
    v24 = v105;
    v25 = *(v105 + 48);
    v26 = v104;
    v27 = *(v104 + 16);
    v109 = *(v104 + 72) * v20;
    v28 = v103;
    v29 = v20;
    v27(v103, v25 + v109, v7);
    v30 = *(v24 + 56);
    v110 = v29;
    v31 = v28;
    v32 = *(v30 + 8 * v29);
    v108 = *(v26 + 32);
    v108(v10, v31, v7);
    v33 = MEMORY[0x1E69E7CC0];
    v125 = MEMORY[0x1E69E7CC0];
    v34 = *(v32 + 16);

    if (!v34)
    {
      v111 = v33;
      goto LABEL_55;
    }

    v35 = 0;
    v36 = v32 + 40;
    v111 = v33;
    v117 = v32;
    v118 = v34;
    v96 = v32 + 40;
    while (2)
    {
      v37 = (v36 + 16 * v35);
      v38 = v35;
      v39 = v113;
      while (1)
      {
        if (v38 >= v34)
        {
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        if (__OFADD__(v38, 1))
        {
          goto LABEL_60;
        }

        v119 = v38 + 1;
        v40 = *(v37 - 1);
        v41 = *v37;
        v42 = *v39;
        v43 = *(*v39 + 16);

        if (!v43 || (v44 = specialized __RawDictionaryStorage.find<A>(_:)(v40, v41), (v45 & 1) == 0))
        {
          if (one-time initialization token for executor != -1)
          {
            swift_once();
          }

          v61 = type metadata accessor for Logger();
          __swift_project_value_buffer(v61, static Logger.executor);

          v62 = Logger.logObject.getter();
          v63 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            *&v123[0] = v65;
            *v64 = v116;
            *(v64 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v123);
            _os_log_impl(&dword_1DC659000, v62, v63, "Warning: No bundle ID found for %s when reading plugin catalog from cache", v64, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v65);
            v66 = v65;
            v34 = v118;
            MEMORY[0x1E12A2F50](v66, -1, -1);
            MEMORY[0x1E12A2F50](v64, -1, -1);
          }

          goto LABEL_14;
        }

        v46 = (*(v42 + 56) + 16 * v44);
        v48 = *v46;
        v47 = v46[1];
        v49 = *(*v115 + 16);

        if (v49)
        {
          specialized __RawDictionaryStorage.find<A>(_:)(v48, v47);
          if (v50)
          {

            v10 = v98;
            v34 = v118;
            v36 = v96;
            goto LABEL_49;
          }
        }

        v51 = *v114;
        if (*(*v114 + 16))
        {
          v52 = specialized __RawDictionaryStorage.find<A>(_:)(v40, v41);
          if (v53)
          {
            break;
          }
        }

        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v54 = type metadata accessor for Logger();
        __swift_project_value_buffer(v54, static Logger.executor);

        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          *&v123[0] = v58;
          *v57 = v116;
          v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v47, v123);

          *(v57 + 4) = v59;
          _os_log_impl(&dword_1DC659000, v55, v56, "Warning: No intent topics supported by %s when reading plugin catalog from cache", v57, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v58);
          v60 = v58;
          v39 = v113;
          MEMORY[0x1E12A2F50](v60, -1, -1);
          MEMORY[0x1E12A2F50](v57, -1, -1);
        }

        else
        {
        }

        v34 = v118;
LABEL_14:
        ++v38;
        v37 += 2;
        if (v119 == v34)
        {
          v7 = v97;
          v10 = v98;
          goto LABEL_55;
        }
      }

      v68 = *(*(v51 + 56) + 8 * v52);
      type metadata accessor for RemoteFlowPluginPackage();
      memset(v123, 0, sizeof(v123));
      v124 = 0;
      v69 = swift_allocObject();
      v69[2] = v48;
      v69[3] = v47;
      v69[6] = v40;
      v69[7] = v41;
      v111 = v69;
      v69[4] = v99;
      v69[5] = v68;
      outlined init with copy of AffinityScorer?(v123, &v120);
      if (v121)
      {

        outlined destroy of AffinityScorer?(v123);
        outlined init with take of NSExtensionProtocol(&v120, &v122);
        v10 = v98;
      }

      else
      {
        *&v122 = 0;
        *(&v122 + 1) = 0xE000000000000000;

        _StringGuts.grow(_:)(52);
        MEMORY[0x1E12A1580](0xD000000000000022, v93 | 0x8000000000000000);
        MEMORY[0x1E12A1580](v48, v47);
        MEMORY[0x1E12A1580](0xD000000000000010, v92 | 0x8000000000000000);
        v70 = v122;

        specialized logAction<A>(label:_:)(v70, *(&v70 + 1), v48, v47, &v122);

        outlined destroy of AffinityScorer?(v123);
        v10 = v98;
        if (v121)
        {
          outlined destroy of AffinityScorer?(&v120);
        }
      }

      outlined init with take of NSExtensionProtocol(&v122, (v111 + 8));

      v71 = v115;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v123[0] = *v71;
      v73 = *&v123[0];
      *v71 = 0x8000000000000000;
      v74 = specialized __RawDictionaryStorage.find<A>(_:)(v48, v47);
      v76 = *(v73 + 16);
      v77 = (v75 & 1) == 0;
      v78 = __OFADD__(v76, v77);
      v79 = v76 + v77;
      if (v78)
      {
        goto LABEL_63;
      }

      v80 = v75;
      if (*(v73 + 24) >= v79)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v86 = v74;
          specialized _NativeDictionary.copy()();
          v74 = v86;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v79, isUniquelyReferenced_nonNull_native);
        v74 = specialized __RawDictionaryStorage.find<A>(_:)(v48, v47);
        if ((v80 & 1) != (v81 & 1))
        {
          goto LABEL_65;
        }
      }

      v82 = *&v123[0];
      if (v80)
      {
        *(*(*&v123[0] + 56) + 8 * v74) = v111;
      }

      else
      {
        *(*&v123[0] + 8 * (v74 >> 6) + 64) |= 1 << v74;
        v83 = (v82[6] + 16 * v74);
        *v83 = v48;
        v83[1] = v47;
        *(v82[7] + 8 * v74) = v111;
        v84 = v82[2];
        v78 = __OFADD__(v84, 1);
        v85 = v84 + 1;
        if (v78)
        {
          goto LABEL_64;
        }

        v82[2] = v85;
      }

      v34 = v118;
      v36 = v96;
      *v115 = v82;

LABEL_49:
      MEMORY[0x1E12A1680](v67);
      v7 = v97;
      if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v111 = v125;
      v35 = v119;
      if (v119 != v34)
      {
        continue;
      }

      break;
    }

LABEL_55:

    v87 = v110;
    *(v100 + ((v110 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v110;
    v88 = v101;
    v108((*(v101 + 48) + v109), v10, v7);
    *(*(v88 + 56) + 8 * v87) = v111;
    v89 = *(v88 + 16);
    v78 = __OFADD__(v89, 1);
    v90 = v89 + 1;
    if (!v78)
    {
      result = v88;
      *(v88 + 16) = v90;
      v15 = v107;
      v19 = v106;
      if (!v106)
      {
        goto LABEL_5;
      }

      continue;
    }

    break;
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized CachedPluginCatalog.init(capabilityCache:packageCache:sharedFlowPluginServiceClient:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v103 = a3;
  v5 = type metadata accessor for IntentTopic();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v121 = &v103 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v107 = &v103 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow11IntentTopicV3key_SaySSG5valuetSgMd, &_s11SiriKitFlow11IntentTopicV3key_SaySSG5valuetSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v112 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v110 = &v103 - v16;
  v17 = *(a2 + 16);
  v18 = type metadata accessor for RemoteFlowPluginPackage();
  v19 = MEMORY[0x1E69E6158];
  v20 = MEMORY[0x1E69E6168];
  v126 = MEMORY[0x1E12A1320](v17, MEMORY[0x1E69E6158], v18, MEMORY[0x1E69E6168]);
  v21 = *(a2 + 16);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow11IntentTopicVGMd, &_sSay11SiriKitFlow11IntentTopicVGMR);
  v23 = MEMORY[0x1E12A1320](v21, v19, v22, v20);
  v125 = v23;
  v105 = a2;
  v104 = MEMORY[0x1E12A1320](*(a2 + 16), v19, v19, v20);
  v124 = v104;
  v24 = *(a1 + 64);
  v111 = a1 + 64;
  v25 = 1 << *(a1 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v114 = v26 & v24;
  v106 = (v25 + 63) >> 6;
  v116 = (v6 + 16);
  v117 = v6;
  v120 = (v6 + 32);
  v108 = a1;
  v109 = (v6 + 8);

  for (i = 0; ; i = v113)
  {
    v28 = v114;
    if (v114)
    {
      v113 = i;
      v29 = i;
      v30 = v112;
LABEL_15:
      v114 = (v28 - 1) & v28;
      v33 = __clz(__rbit64(v28)) | (v29 << 6);
      v35 = v107;
      v34 = v108;
      v36 = v117;
      (*(v117 + 16))(v107, *(v108 + 48) + *(v117 + 72) * v33, v5);
      v37 = *(*(v34 + 56) + 8 * v33);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow11IntentTopicV3key_SaySSG5valuetMd, &_s11SiriKitFlow11IntentTopicV3key_SaySSG5valuetMR);
      v39 = *(v38 + 48);
      (*(v36 + 32))(v30, v35, v5);
      *(v30 + v39) = v37;
      (*(*(v38 - 8) + 56))(v30, 0, 1, v38);
    }

    else
    {
      v31 = v106 <= i + 1 ? i + 1 : v106;
      v32 = v31 - 1;
      v30 = v112;
      while (1)
      {
        v29 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_65;
        }

        if (v29 >= v106)
        {
          break;
        }

        v28 = *(v111 + 8 * v29);
        ++i;
        if (v28)
        {
          v113 = v29;
          goto LABEL_15;
        }
      }

      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow11IntentTopicV3key_SaySSG5valuetMd, &_s11SiriKitFlow11IntentTopicV3key_SaySSG5valuetMR);
      (*(*(v69 - 8) + 56))(v30, 1, 1, v69);
      v113 = v32;
      v114 = 0;
    }

    v40 = v110;
    outlined init with take of (key: IntentTopic, value: [String])?(v30, v110);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow11IntentTopicV3key_SaySSG5valuetMd, &_s11SiriKitFlow11IntentTopicV3key_SaySSG5valuetMR);
    if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
    {

      v70 = 0;
      v71 = v105 + 64;
      v72 = 1 << *(v105 + 32);
      v73 = -1;
      if (v72 < 64)
      {
        v73 = ~(-1 << v72);
      }

      v74 = v73 & *(v105 + 64);
      v75 = v124;
      v76 = (v72 + 63) >> 6;
      v121 = v76;
      for (j = v105 + 64; ; v71 = j)
      {
        if (v74)
        {
          v79 = v70;
        }

        else
        {
          do
          {
            v79 = v70 + 1;
            if (__OFADD__(v70, 1))
            {
              goto LABEL_66;
            }

            if (v79 >= v76)
            {
              v124 = v75;

              v100 = v103;

              v101 = specialized _NativeDictionary.mapValues<A>(_:)(v108, &v124, &v126, &v125, v100);

              return v101;
            }

            v74 = *(v71 + 8 * v79);
            ++v70;
          }

          while (!v74);
        }

        v80 = (v79 << 10) | (16 * __clz(__rbit64(v74)));
        v81 = (*(v105 + 48) + v80);
        v83 = *v81;
        v82 = v81[1];
        v84 = (*(v105 + 56) + v80);
        v86 = *v84;
        v85 = v84[1];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v123 = v75;
        v88 = specialized __RawDictionaryStorage.find<A>(_:)(v86, v85);
        v90 = v75[2];
        v91 = (v89 & 1) == 0;
        v67 = __OFADD__(v90, v91);
        v92 = v90 + v91;
        if (v67)
        {
          goto LABEL_67;
        }

        v93 = v89;
        if (v75[3] >= v92)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v99 = v88;
            specialized _NativeDictionary.copy()();
            v88 = v99;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v92, isUniquelyReferenced_nonNull_native);
          v88 = specialized __RawDictionaryStorage.find<A>(_:)(v86, v85);
          if ((v93 & 1) != (v94 & 1))
          {
            goto LABEL_69;
          }
        }

        v74 &= v74 - 1;
        if (v93)
        {
          v77 = v88;

          v75 = v123;
          v78 = (v123[7] + 16 * v77);
          *v78 = v83;
          v78[1] = v82;
        }

        else
        {
          v75 = v123;
          v123[(v88 >> 6) + 8] |= 1 << v88;
          v95 = (v75[6] + 16 * v88);
          *v95 = v86;
          v95[1] = v85;
          v96 = (v75[7] + 16 * v88);
          *v96 = v83;
          v96[1] = v82;
          v97 = v75[2];
          v67 = __OFADD__(v97, 1);
          v98 = v97 + 1;
          if (v67)
          {
            goto LABEL_68;
          }

          v75[2] = v98;
        }

        v70 = v79;
        v76 = v121;
      }
    }

    v42 = *(v40 + *(v41 + 48));
    v119 = *v120;
    v119(v121, v40, v5);
    v118 = *(v42 + 16);
    if (v118)
    {
      break;
    }

LABEL_4:

    (*v109)(v121, v5);
  }

  v43 = 0;
  v44 = (v42 + 40);
  v115 = v42;
  while (v43 < *(v42 + 16))
  {
    v46 = *(v44 - 1);
    v45 = *v44;
    v47 = v23[2];

    if (v47 && (v48 = specialized __RawDictionaryStorage.find<A>(_:)(v46, v45), (v49 & 1) != 0))
    {
      v50 = *(v23[7] + 8 * v48);
    }

    else
    {
      v50 = MEMORY[0x1E69E7CC0];
    }

    (*v116)(v8, v121, v5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 2) + 1, 1, v50);
    }

    v52 = *(v50 + 2);
    v51 = *(v50 + 3);
    j = v46;
    if (v52 >= v51 >> 1)
    {
      v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v50);
    }

    *(v50 + 2) = v52 + 1;
    v53 = v8;
    v54 = v5;
    v119(&v50[((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v52], v8, v5);
    v55 = v125;
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v123 = v55;
    v58 = specialized __RawDictionaryStorage.find<A>(_:)(j, v45);
    v59 = *(v55 + 16);
    v60 = (v57 & 1) == 0;
    v61 = v59 + v60;
    if (__OFADD__(v59, v60))
    {
      goto LABEL_63;
    }

    v62 = v57;
    if (*(v55 + 24) >= v61)
    {
      if (v56)
      {
        if (v57)
        {
          goto LABEL_19;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if (v62)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v61, v56);
      v63 = specialized __RawDictionaryStorage.find<A>(_:)(j, v45);
      if ((v62 & 1) != (v64 & 1))
      {
        goto LABEL_69;
      }

      v58 = v63;
      if (v62)
      {
LABEL_19:

        v23 = v123;
        *(v123[7] + 8 * v58) = v50;

        goto LABEL_20;
      }
    }

    v23 = v123;
    v123[(v58 >> 6) + 8] |= 1 << v58;
    v65 = (v23[6] + 16 * v58);
    *v65 = j;
    v65[1] = v45;
    *(v23[7] + 8 * v58) = v50;
    v66 = v23[2];
    v67 = __OFADD__(v66, 1);
    v68 = v66 + 1;
    if (v67)
    {
      goto LABEL_64;
    }

    v23[2] = v68;
LABEL_20:
    ++v43;
    v125 = v23;
    v44 += 2;
    v5 = v54;
    v8 = v53;
    v42 = v115;
    if (v118 == v43)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized CachedPluginCatalog.getConversationHandler(id:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = RemoteFlowPluginPackage.loadRemoteConversationHandler()();

  return v4;
}

unint64_t specialized CachedPluginCatalog.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CachedPluginCatalog.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized CachedPluginCatalog.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14SiriKitRuntime19CachedPluginCatalogV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy14SiriKitRuntime19CachedPluginCatalogV10CodingKeysOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v48 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CachedPluginCatalog.CodingKeys and conformance CachedPluginCatalog.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_15;
  }

  LOBYTE(v54[0]) = 0;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v53 = v4;
  v10 = v9;
  v11 = [objc_opt_self() processInfo];
  v12 = [v11 operatingSystemVersionString];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (v8 != v13 || v10 != v15)
  {
    v17 = v13;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v26 = v10;
      v50 = v17;
      v51 = v15;
      v52 = v8;
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v27 = dispatch thunk of Decoder.userInfo.getter();
      if (one-time initialization token for ignoreOSVersionKey != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for CodingUserInfoKey();
      v29 = __swift_project_value_buffer(v28, static CachedPluginCatalog.ignoreOSVersionKey);
      v30 = v52;
      if (*(v27 + 16) && (v31 = specialized __RawDictionaryStorage.find<A>(_:)(v29), (v32 & 1) != 0))
      {
        outlined init with copy of Any(*(v27 + 56) + 32 * v31, v54);

        if (swift_dynamicCast() & 1) != 0 && (v55)
        {
          goto LABEL_7;
        }
      }

      else
      {
      }

      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static Logger.executor);

      v34 = v51;

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.info.getter();

      v49 = v35;
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v54[0] = v38;
        *v37 = 136315394;
        *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v26, v54);
        *(v37 + 12) = 2080;
        v39 = v50;
        *(v37 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v34, v54);
        v40 = v36;
        v41 = v49;
        _os_log_impl(&dword_1DC659000, v49, v40, "Not using cached plugin information, as it is from %s and we are running %s.", v37, 0x16u);
        swift_arrayDestroy();
        v42 = v38;
        v43 = v52;
        MEMORY[0x1E12A2F50](v42, -1, -1);
        MEMORY[0x1E12A2F50](v37, -1, -1);
      }

      else
      {

        v43 = v30;
        v39 = v50;
      }

      v44 = v53;
      lazy protocol witness table accessor for type CachedPluginCatalog.FlowPluginCacheError and conformance CachedPluginCatalog.FlowPluginCacheError();
      swift_allocError();
      *v45 = v39;
      v45[1] = v34;
      v45[2] = v43;
      v45[3] = v26;
      swift_willThrow();
      v46 = *(v44 + 8);
      v7 = v44 + 8;
      v46(v6, v3);
      goto LABEL_15;
    }
  }

LABEL_7:

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = dispatch thunk of Decoder.userInfo.getter();
  if (one-time initialization token for sharedFlowPluginServiceClientKey != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for CodingUserInfoKey();
  v19 = __swift_project_value_buffer(v18, static CachedPluginCatalog.sharedFlowPluginServiceClientKey);
  v20 = v53;
  if (!*(v7 + 16) || (v21 = specialized __RawDictionaryStorage.find<A>(_:)(v19), (v22 & 1) == 0))
  {

    goto LABEL_14;
  }

  outlined init with copy of Any(*(v7 + 56) + 32 * v21, v54);

  type metadata accessor for SharedFlowPluginServiceClient();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    lazy protocol witness table accessor for type CachedPluginCatalog.FlowPluginCacheError and conformance CachedPluginCatalog.FlowPluginCacheError();
    swift_allocError();
    *v24 = 0u;
    v24[1] = 0u;
    swift_willThrow();
    (*(v20 + 8))(v6, v3);
LABEL_15:
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v7;
  }

  v23 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy11SiriKitFlow11IntentTopicVSaySSGGMd, &_sSDy11SiriKitFlow11IntentTopicVSaySSGGMR);
  LOBYTE(v55) = 1;
  lazy protocol witness table accessor for type [IntentTopic : [String]] and conformance <> [A : B]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v47 = v54[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  LOBYTE(v55) = 2;
  lazy protocol witness table accessor for type [String : String] and conformance <> [A : B]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = specialized CachedPluginCatalog.init(capabilityCache:packageCache:sharedFlowPluginServiceClient:)(v47, v54[0], v23);
  (*(v20 + 8))(v6, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

unint64_t lazy protocol witness table accessor for type CachedPluginCatalog.CodingKeys and conformance CachedPluginCatalog.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CachedPluginCatalog.CodingKeys and conformance CachedPluginCatalog.CodingKeys;
  if (!lazy protocol witness table cache variable for type CachedPluginCatalog.CodingKeys and conformance CachedPluginCatalog.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CachedPluginCatalog.CodingKeys and conformance CachedPluginCatalog.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CachedPluginCatalog.CodingKeys and conformance CachedPluginCatalog.CodingKeys;
  if (!lazy protocol witness table cache variable for type CachedPluginCatalog.CodingKeys and conformance CachedPluginCatalog.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CachedPluginCatalog.CodingKeys and conformance CachedPluginCatalog.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CachedPluginCatalog.CodingKeys and conformance CachedPluginCatalog.CodingKeys;
  if (!lazy protocol witness table cache variable for type CachedPluginCatalog.CodingKeys and conformance CachedPluginCatalog.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CachedPluginCatalog.CodingKeys and conformance CachedPluginCatalog.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CachedPluginCatalog.CodingKeys and conformance CachedPluginCatalog.CodingKeys;
  if (!lazy protocol witness table cache variable for type CachedPluginCatalog.CodingKeys and conformance CachedPluginCatalog.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CachedPluginCatalog.CodingKeys and conformance CachedPluginCatalog.CodingKeys);
  }

  return result;
}

uint64_t *assignWithCopy for CachedPluginCatalog(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

void *assignWithTake for CachedPluginCatalog(void *a1, _OWORD *a2)
{

  *a1 = *a2;

  return a1;
}

unint64_t destroy for CachedPluginCatalog.FlowPluginCacheError(uint64_t a1)
{
  result = *(a1 + 8);
  if (result >= 0xFFFFFFFF)
  {
  }

  return result;
}

__n128 initializeWithCopy for CachedPluginCatalog.FlowPluginCacheError(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 < 0xFFFFFFFF)
  {
    result = *a2;
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = v2;
    v3 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = v3;
  }

  return result;
}

void *assignWithCopy for CachedPluginCatalog.FlowPluginCacheError(void *a1, void *a2)
{
  v4 = a2[1];
  if (a1[1] < 0xFFFFFFFFuLL)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      a1[2] = a2[2];
      a1[3] = a2[3];

      return a1;
    }

LABEL_7:
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v5;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  return a1;
}

uint64_t assignWithTake for CachedPluginCatalog.FlowPluginCacheError(uint64_t result, uint64_t a2)
{
  if (*(result + 8) < 0xFFFFFFFFuLL)
  {
    v6 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v6;
  }

  else
  {
    v3 = *(a2 + 8);
    if (v3 < 0xFFFFFFFF)
    {
      v4 = result;

      v7 = *(a2 + 16);
      *v4 = *a2;
      *(v4 + 16) = v7;
    }

    else
    {
      *result = *a2;
      *(result + 8) = v3;
      v4 = result;

      v5 = *(a2 + 24);
      *(v4 + 16) = *(a2 + 16);
      *(v4 + 24) = v5;
    }

    return v4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CachedPluginCatalog.FlowPluginCacheError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for CachedPluginCatalog.FlowPluginCacheError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for CachedPluginCatalog.FlowPluginCacheError(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CachedPluginCatalog.FlowPluginCacheError and conformance CachedPluginCatalog.FlowPluginCacheError()
{
  result = lazy protocol witness table cache variable for type CachedPluginCatalog.FlowPluginCacheError and conformance CachedPluginCatalog.FlowPluginCacheError;
  if (!lazy protocol witness table cache variable for type CachedPluginCatalog.FlowPluginCacheError and conformance CachedPluginCatalog.FlowPluginCacheError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CachedPluginCatalog.FlowPluginCacheError and conformance CachedPluginCatalog.FlowPluginCacheError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  }

  return result;
}

uint64_t outlined init with take of (key: IntentTopic, value: [String])?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow11IntentTopicV3key_SaySSG5valuetSgMd, &_s11SiriKitFlow11IntentTopicV3key_SaySSG5valuetSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of AffinityScorer?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime14AffinityScorer_pSgMd, &_s14SiriKitRuntime14AffinityScorer_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AffinityScorer?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime14AffinityScorer_pSgMd, &_s14SiriKitRuntime14AffinityScorer_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t lazy protocol witness table accessor for type IntentTopic and conformance IntentTopic(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type CachedPluginCatalog and conformance CachedPluginCatalog()
{
  result = lazy protocol witness table cache variable for type CachedPluginCatalog and conformance CachedPluginCatalog;
  if (!lazy protocol witness table cache variable for type CachedPluginCatalog and conformance CachedPluginCatalog)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CachedPluginCatalog and conformance CachedPluginCatalog);
  }

  return result;
}

SiriKitRuntime::CalendarAffinityScorer __swiftcall CalendarAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CA40;
  v1 = 0xD000000000000029;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t specialized CalendarAffinityScorer.score(input:environment:)(double a1, uint64_t a2, uint64_t a3)
{
  v67 = a3;
  v69 = type metadata accessor for RREntity();
  v65 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v4 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for RRCandidate();
  v5 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Parse();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for USOParse();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v9 + 88))(v11, v8) != *MEMORY[0x1E69D0168])
  {
    (*(v9 + 8))(v11, v8);
    if (one-time initialization token for executor != -1)
    {
LABEL_48:
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.executor);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1DC659000, v26, v27, "[CalendarAffinityScorer] Not a Uso parse, returning .default", v28, 2u);
      MEMORY[0x1E12A2F50](v28, -1, -1);

      return 2;
    }

    return 2;
  }

  (*(v9 + 96))(v11, v8);
  (*(v13 + 32))(v15, v11, v12);
  v16 = specialized static AffinityScorerUtils.getTask(_:)();
  if (!v16)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.executor);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1DC659000, v30, v31, "[CalendarAffinityScorer] Unable to extract task from uso parse, returning .default", v32, 2u);
      MEMORY[0x1E12A2F50](v32, -1, -1);

      (*(v13 + 8))(v15, v12);
      return 2;
    }

    (*(v13 + 8))(v15, v12);
    return 2;
  }

  v62 = v15;
  v63 = v16;
  if (UsoTask.baseEntityAsString.getter() == 0x6E456F4E5F6F7375 && v17 == 0xEC00000079746974)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
LABEL_8:
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, static Logger.executor);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = 2;
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1DC659000, v21, v22, "[CalendarAffinityScorer] UsoTask is not a shared task, returning .default", v24, 2u);
        MEMORY[0x1E12A2F50](v24, -1, -1);

        (*(v13 + 8))(v62, v12);
        return v23;
      }

      (*(v13 + 8))(v62, v12);
      return 2;
    }
  }

  if (UsoTask.verbString.getter() == 0x657461647075 && v33 == 0xE600000000000000)
  {
    goto LABEL_23;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v34 & 1) == 0)
  {
    if (UsoTask.verbString.getter() == 0x6574656C6564 && v57 == 0xE600000000000000)
    {
LABEL_23:

      goto LABEL_25;
    }

    v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v58 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

LABEL_25:
  v60 = v12;
  v61 = v13;
  SiriEnvironment.salientEntitiesProvider.getter();
  v35 = dispatch thunk of SalientEntitiesDataProvider.salientEntities.getter();

  v36 = 0;
  v37 = *(v35 + 16);
  v66 = v5 + 16;
  v67 = v37;
  v38 = (v65 + 8);
  v64 = v5 + 8;
  v65 = 0x80000001DCA7D9D0;
  v39 = v68;
  while (v67 != v36)
  {
    if (v36 >= *(v35 + 16))
    {
      __break(1u);
      goto LABEL_48;
    }

    (*(v5 + 16))(v7, v35 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v36++, v39);
    RRCandidate.entity.getter();
    RREntity.usoEntity.getter();
    (*v38)(v4, v69);
    v40 = UsoTask.verbString.getter();
    v42 = v41;

    v72 = v40;
    v73 = v42;
    v70 = 0xD000000000000014;
    v71 = v65;
    lazy protocol witness table accessor for type String and conformance String();
    LOBYTE(v40) = StringProtocol.contains<A>(_:)();

    (*(v5 + 8))(v7, v39);
    if (v40)
    {

      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static Logger.executor);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();
      v46 = os_log_type_enabled(v44, v45);
      v48 = v60;
      v47 = v61;
      if (v46)
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_1DC659000, v44, v45, "[CalendarAffinityScorer] calendar event entities found in salient entities, returning .high", v49, 2u);
        MEMORY[0x1E12A2F50](v49, -1, -1);
      }

      (*(v47 + 8))(v62, v48);
      return 3;
    }
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  __swift_project_value_buffer(v50, static Logger.executor);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();
  v53 = os_log_type_enabled(v51, v52);
  v55 = v60;
  v54 = v61;
  if (v53)
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_1DC659000, v51, v52, "[CalendarAffinityScorer] No calendar event entities found in salient entities, returning .unsupported", v56, 2u);
    MEMORY[0x1E12A2F50](v56, -1, -1);
  }

  (*(v54 + 8))(v62, v55);
  return 0;
}

uint64_t CamBridgeImpl.enabledCamFeaturesForDevice.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;
}

uint64_t key path setter for CamBridgeImpl.camState : CamBridgeImpl(uint64_t *a1, uint64_t *a2)
{
  outlined init with copy of CamBridgeImpl.CamState(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  outlined assign with copy of CamBridgeImpl.CamState(v5, v3 + 144);
  swift_endAccess();
  CamBridgeImpl.camState.didset();
  return outlined destroy of CamBridgeImpl.CamState(v5);
}

uint64_t CamBridgeImpl.camState.setter(__int128 *a1)
{
  swift_beginAccess();
  outlined assign with copy of CamBridgeImpl.CamState(a1, v1 + 144);
  swift_endAccess();
  CamBridgeImpl.camState.didset();
  return outlined destroy of CamBridgeImpl.CamState(a1);
}

uint64_t (*CamBridgeImpl.camState.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CamBridgeImpl.camState.modify;
}

uint64_t key path setter for CamBridgeImpl.caarState : CamBridgeImpl(uint64_t *a1, uint64_t *a2)
{
  outlined init with copy of CamBridgeImpl.CaarState(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  outlined assign with copy of CamBridgeImpl.CaarState(v5, v3 + 192);
  swift_endAccess();
  CamBridgeImpl.caarState.didset();
  return outlined destroy of CamBridgeImpl.CaarState(v5);
}

uint64_t CamBridgeImpl.caarState.setter(__int128 *a1)
{
  swift_beginAccess();
  outlined assign with copy of CamBridgeImpl.CaarState(a1, v1 + 192);
  swift_endAccess();
  CamBridgeImpl.caarState.didset();
  return outlined destroy of CamBridgeImpl.CaarState(a1);
}

uint64_t (*CamBridgeImpl.caarState.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CamBridgeImpl.caarState.modify;
}

void key path setter for CamBridgeImpl.camBridgeState : CamBridgeImpl(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 240) = v2;

  CamBridgeImpl.camBridgeState.didset();
}

uint64_t CamBridgeImpl.camBridgeState.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 240) = a1;

  CamBridgeImpl.camBridgeState.didset();
}

uint64_t (*CamBridgeImpl.camBridgeState.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CamBridgeImpl.camBridgeState.modify;
}

uint64_t CamBridgeImpl.camState.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t CamBridgeImpl.__allocating_init(forceSupported:camProvider:caarProvider:trialExperimentManager:)(uint64_t a1, void *a2, __int128 *a3, void *a4)
{
  v25 = a3;
  v6 = a1;
  v7 = swift_allocObject();
  v9 = a2[3];
  v8 = a2[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a2, v9);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  v16 = a4[3];
  v15 = a4[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a4, v16);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = specialized CamBridgeImpl.init(forceSupported:camProvider:caarProvider:trialExperimentManager:)(v6, v13, v25, v20, v7, v9, v16, v8, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v22;
}

uint64_t CamBridgeImpl.init(forceSupported:camProvider:caarProvider:trialExperimentManager:)(uint64_t a1, void *a2, __int128 *a3, void *a4)
{
  v7 = a1;
  v9 = a2[3];
  v8 = a2[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a2, v9);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  v16 = a4[3];
  v15 = a4[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a4, v16);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = specialized CamBridgeImpl.init(forceSupported:camProvider:caarProvider:trialExperimentManager:)(v7, v13, a3, v20, v24[1], v9, v16, v8, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v22;
}

uint64_t one-time initialization function for shared()
{
  v0 = [objc_opt_self() clientWithIdentifier_];
  type metadata accessor for TrialExperimentationAssetManager();
  v1 = swift_allocObject();
  v2 = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
  *(v1 + 16) = v0;
  *(v1 + 24) = v2;
  type metadata accessor for CamBridgeImpl();
  v3 = swift_allocObject();

  v4 = specialized CamBridgeImpl.init(forceSupported:camProvider:caarProvider:trialExperimentManager:)(2u, &v6, v1, v3);

  static CamBridgeImpl.shared = v4;
  return result;
}

{
  type metadata accessor for FlowActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  static FlowActor.shared = v0;
  return result;
}

{
  if (one-time initialization token for kSharedFlowExtensionObserver != -1)
  {
    swift_once();
  }

  v0 = kSharedFlowExtensionObserver;
  type metadata accessor for FlowExtensionDiscoverer();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  static FlowExtensionDiscoverer.shared = v1;
}

uint64_t *CamBridgeImpl.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static CamBridgeImpl.shared;
}

uint64_t static CamBridgeImpl.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static CamBridgeImpl.shared.setter(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static CamBridgeImpl.shared = a1;
}

uint64_t (*static CamBridgeImpl.shared.modify(uint64_t a1))()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static FeatureToggle.forceEnabled.modify in conformance AmbiguityFeatureFlags;
}

uint64_t key path getter for static CamBridgeImpl.shared : CamBridgeImpl.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static CamBridgeImpl.shared;
}

uint64_t key path setter for static CamBridgeImpl.shared : CamBridgeImpl.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = one-time initialization token for shared;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static CamBridgeImpl.shared = v1;
}

uint64_t closure #1 in CamBridgeImpl.asyncWarmUpIfSupported()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t CamBridgeImpl.action(requestId:camId:rcId:speechPackage:rankedActions:inputOrigin:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[33] = a8;
  v9[34] = v8;
  v9[31] = a6;
  v9[32] = a7;
  v9[29] = a4;
  v9[30] = a5;
  v9[27] = a2;
  v9[28] = a3;
  v9[26] = a1;
  v10 = type metadata accessor for CamAction();
  v9[35] = v10;
  v9[36] = *(v10 - 8);
  v9[37] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v9[38] = v11;
  v9[39] = *(v11 - 8);
  v9[40] = swift_task_alloc();
  v9[41] = swift_task_alloc();
  v12 = type metadata accessor for CamRequest();
  v9[42] = v12;
  v9[43] = *(v12 - 8);
  v9[44] = swift_task_alloc();
  v13 = type metadata accessor for InputOrigin();
  v9[45] = v13;
  v9[46] = *(v13 - 8);
  v9[47] = swift_task_alloc();
  v14 = type metadata accessor for CamFeature();
  v9[48] = v14;
  v9[49] = *(v14 - 8);
  v9[50] = swift_task_alloc();
  v9[51] = swift_task_alloc();
  v9[52] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam0B6ActionOSgMd, &_s7SiriCam0B6ActionOSgMR);
  v9[53] = swift_task_alloc();
  v9[54] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9[55] = static MessageBusActor.shared;

  v15 = swift_task_alloc();
  v9[56] = v15;
  *v15 = v9;
  v15[1] = CamBridgeImpl.action(requestId:camId:rcId:speechPackage:rankedActions:inputOrigin:);

  return CamBridgeImpl.waitForCamWarmup()();
}

uint64_t CamBridgeImpl.action(requestId:camId:rcId:speechPackage:rankedActions:inputOrigin:)()
{
  v1 = *(*v0 + 440);

  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.action(requestId:camId:rcId:speechPackage:rankedActions:inputOrigin:), v1, 0);
}

{
  v92 = v0;
  v1 = *(v0 + 272);
  swift_beginAccess();
  outlined init with copy of CamBridgeImpl.CamState((v1 + 144), v0 + 16);
  v2 = *(v0 + 56);
  if (*(v0 + 57) > 1u)
  {
    if (*(v0 + 57) == 2)
    {

      outlined destroy of CamBridgeImpl.CamState(v0 + 16);
      if (one-time initialization token for executor != -1)
      {
        goto LABEL_68;
      }

      goto LABEL_6;
    }

    if (*(v0 + 56) || *(v0 + 32) | *(v0 + 16) | *(v0 + 40) | *(v0 + 48) | *(v0 + 24))
    {

      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (!*(v0 + 57))
  {
    outlined destroy of CamBridgeImpl.CamState(v0 + 16);
LABEL_15:

    return specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD00000000000003CLL, 0x80000001DCA7D9F0, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/DecisionEngine/AmbiguityHandling/CamBridge/CamBridgeImpl.swift", 131, 2, 276);
  }

  outlined init with take of ReferenceResolutionClientProtocol((v0 + 16), v0 + 64);
  if (v2 <= 1)
  {
    v7 = MEMORY[0x1E69CE320];
    if (!v2)
    {
      v7 = MEMORY[0x1E69CE338];
    }
  }

  else if (v2 == 2)
  {
    v7 = MEMORY[0x1E69CE328];
  }

  else
  {
    if (v2 != 3)
    {
      v10 = 1;
      goto LABEL_27;
    }

    v7 = MEMORY[0x1E69CE330];
  }

  (*(*(v0 + 288) + 104))(*(v0 + 432), *v7, *(v0 + 280));
  v10 = 0;
LABEL_27:
  v11 = *(v0 + 272);
  (*(*(v0 + 288) + 56))(*(v0 + 432), v10, 1, *(v0 + 280));
  swift_beginAccess();
  v12 = *(v11 + 96);
  v85 = *(v12 + 16);
  if (!v85)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_59:
    *(v0 + 456) = v17;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    *(v0 + 464) = __swift_project_value_buffer(v52, static Logger.executor);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = *(v0 + 384);
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v91 = v57;
      *v56 = 136315138;

      v59 = MEMORY[0x1E12A16D0](v58, v55);
      v61 = v60;

      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, &v91);

      *(v56 + 4) = v62;
      _os_log_impl(&dword_1DC659000, v53, v54, "CamBridge: Enabled features for this request: %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      MEMORY[0x1E12A2F50](v57, -1, -1);
      MEMORY[0x1E12A2F50](v56, -1, -1);
    }

    v86 = *(v0 + 424);
    v88 = *(v0 + 432);
    v63 = *(v0 + 320);
    v64 = *(v0 + 304);
    v65 = *(v0 + 240);
    v66 = *(v0 + 216);
    v67 = *(*(v0 + 312) + 16);
    v67(*(v0 + 328), *(v0 + 208), v64);
    v67(v63, v66, v64);
    outlined init with copy of ReferenceResolutionClientProtocol?(v88, v86, &_s7SiriCam0B6ActionOSgMd, &_s7SiriCam0B6ActionOSgMR);
    v68 = v65;

    CamRequest.init(requestId:camId:rcId:maybeSpeechPackage:rankedActions:camEnabledFeatures:previousCamAction:)();
    v69 = *(v0 + 88);
    v70 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v69);
    v90 = (*(v70 + 8) + **(v70 + 8));
    v71 = swift_task_alloc();
    *(v0 + 472) = v71;
    *v71 = v0;
    v71[1] = CamBridgeImpl.action(requestId:camId:rcId:speechPackage:rankedActions:inputOrigin:);
    v72 = *(v0 + 352);
    v73 = *(v0 + 296);

    return v90(v73, v72, v69, v70);
  }

  v13 = *(v0 + 392);
  v14 = *(v0 + 368);
  v77 = *(v0 + 240);
  v79 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v82 = v12 + v79;
  v81 = *MEMORY[0x1E69CE340];
  v89 = (v13 + 8);
  v76 = *MEMORY[0x1E69D34E8];
  v74 = (v14 + 8);
  v75 = (v14 + 104);
  v83 = v13;
  v78 = (v13 + 32);

  v16 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  v84 = v15;
  while (v16 < *(v15 + 16))
  {
    v20 = *(v0 + 408);
    v21 = *(v0 + 384);
    v22 = *(v83 + 72);
    v23 = *(v83 + 16);
    v23(*(v0 + 416), v82 + v22 * v16, v21);
    (*(v83 + 104))(v20, v81, v21);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type CamFeature and conformance CamFeature, MEMORY[0x1E69CE350], MEMORY[0x1E69CE358]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (*(v0 + 176) == *(v0 + 192) && *(v0 + 184) == *(v0 + 200))
    {
      v24 = 1;
    }

    else
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v25 = *v89;
    (*v89)(*(v0 + 408), *(v0 + 384));

    if ((v24 & 1) == 0)
    {
LABEL_52:
      v23(*(v0 + 400), *(v0 + 416), *(v0 + 384));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
      }

      v49 = *(v17 + 2);
      v48 = *(v17 + 3);
      if (v49 >= v48 >> 1)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v17);
      }

      v50 = *(v0 + 400);
      v51 = *(v0 + 384);
      v25(*(v0 + 416), v51);
      *(v17 + 2) = v49 + 1;
      (*v78)(&v17[v79 + v49 * v22], v50, v51);
      goto LABEL_31;
    }

    v87 = v25;
    if (v77)
    {
      v80 = v17;
      v26 = *(v0 + 376);
      v27 = *(v0 + 360);
      v28 = *(v0 + 256);
      v29 = *(v0 + 264);
      (*v75)(v26, v76, v27);
      v30 = InputOrigin.rawValue.getter();
      v32 = v31;
      (*v74)(v26, v27);
      if (v30 == v28 && v32 == v29)
      {

        v17 = v80;
      }

      else
      {
        v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v17 = v80;
        v25 = v87;
        if ((v40 & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static Logger.executor);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.debug.getter();
      v44 = os_log_type_enabled(v42, v43);
      v45 = *(v0 + 416);
      v46 = *(v0 + 384);
      if (v44)
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_1DC659000, v42, v43, "CamBridge: Not enabling ASK_REPEAT for flexible follow-up request", v47, 2u);
        MEMORY[0x1E12A2F50](v47, -1, -1);
      }

      v18 = v45;
      v19 = v46;
    }

    else
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static Logger.executor);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      v36 = os_log_type_enabled(v34, v35);
      v37 = *(v0 + 416);
      v38 = *(v0 + 384);
      if (v36)
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1DC659000, v34, v35, "CamBridge: Not enabling ASK_REPEAT for this request as speechPackage isn't present", v39, 2u);
        MEMORY[0x1E12A2F50](v39, -1, -1);
      }

      v18 = v37;
      v19 = v38;
    }

    v87(v18, v19);
LABEL_31:
    v15 = v84;
    if (v85 == ++v16)
    {

      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_68:
  swift_once();
LABEL_6:
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.executor);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DC659000, v4, v5, "CamBridge: Avoiding call to CAM due to previous errors", v6, 2u);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

LABEL_19:

  v9 = *(v0 + 8);

  return v9(0);
}

{
  v1 = *(*v0 + 440);

  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.action(requestId:camId:rcId:speechPackage:rankedActions:inputOrigin:), v1, 0);
}

{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];

  v4 = (*(v2 + 88))(v1, v3);
  if (v4 != *MEMORY[0x1E69CE320])
  {
    if (v4 == *MEMORY[0x1E69CE328])
    {
      v20 = v0[54];
      (*(v0[43] + 8))(v0[44], v0[42]);
      outlined destroy of ReferenceResolutionClientProtocol?(v20, &_s7SiriCam0B6ActionOSgMd, &_s7SiriCam0B6ActionOSgMR);
      v31 = 2;
      goto LABEL_15;
    }

    v26 = v0[54];
    v27 = *MEMORY[0x1E69CE330];
    v28 = v4;
    (*(v0[43] + 8))(v0[44], v0[42]);
    outlined destroy of ReferenceResolutionClientProtocol?(v26, &_s7SiriCam0B6ActionOSgMd, &_s7SiriCam0B6ActionOSgMR);
    if (v28 == v27)
    {
      v31 = 3;
      goto LABEL_15;
    }

    (*(v0[36] + 8))(v0[37], v0[35]);
    goto LABEL_14;
  }

  v5 = v0[34];
  __swift_project_boxed_opaque_existential_1(v5 + 13, v5[16]);
  v6.value._countAndFlagsBits = UUID.uuidString.getter();
  v8 = v7;
  v9._object = 0x80000001DCA7DAC0;
  v9._countAndFlagsBits = 0xD000000000000024;
  v6.value._object = v8;
  TrialExperimentationAssetManaging.emitTriggerLogging(codepathId:requestId:)(v9, v6);

  v10 = v5[16];
  v11 = v5[17];
  __swift_project_boxed_opaque_existential_1(v5 + 13, v10);
  LOBYTE(v10) = (*(v11 + 8))(v10, v11);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  v14 = os_log_type_enabled(v12, v13);
  if ((v10 & 1) == 0)
  {
    if (v14)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1DC659000, v12, v13, "CamBridge: Deprecating CAM AskRepeat based on factor level from Trial.", v21, 2u);
      MEMORY[0x1E12A2F50](v21, -1, -1);
    }

    v22 = v0[54];
    v24 = v0[43];
    v23 = v0[44];
    v25 = v0[42];

    (*(v24 + 8))(v23, v25);
    outlined destroy of ReferenceResolutionClientProtocol?(v22, &_s7SiriCam0B6ActionOSgMd, &_s7SiriCam0B6ActionOSgMR);
LABEL_14:
    v31 = 0;
    goto LABEL_15;
  }

  if (v14)
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1DC659000, v12, v13, "CamBridge: Keeping CAM AskRepeat based on factor level from Trial.", v15, 2u);
    MEMORY[0x1E12A2F50](v15, -1, -1);
  }

  v16 = v0[54];
  v18 = v0[43];
  v17 = v0[44];
  v19 = v0[42];

  (*(v18 + 8))(v17, v19);
  outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s7SiriCam0B6ActionOSgMd, &_s7SiriCam0B6ActionOSgMR);
  v31 = 1;
LABEL_15:

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);

  v29 = v0[1];

  return v29(v31);
}

uint64_t CamBridgeImpl.waitForCamWarmup()()
{
  *(v1 + 112) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static MessageBusActor.shared;
  *(v1 + 120) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.waitForCamWarmup(), v2, 0);
}

{
  v1 = *(v0 + 112);
  swift_beginAccess();
  outlined init with copy of CamBridgeImpl.CamState((v1 + 144), v0 + 16);
  if (!*(v0 + 57))
  {
    v3 = *(v0 + 16);
    *(v0 + 144) = v3;
    v4 = swift_task_alloc();
    *(v0 + 152) = v4;
    *v4 = v0;
    v5 = CamBridgeImpl.waitForCamWarmup();
    goto LABEL_10;
  }

  if (*(v0 + 57) == 3 && !*(v0 + 56))
  {
    v2 = vorrq_s8(*(v0 + 24), *(v0 + 40));
    if (!(*&vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL)) | *(v0 + 16)))
    {
      v3 = CamBridgeImpl.asyncWarmUpIfSupported()();
      *(v0 + 128) = v3;
      v4 = swift_task_alloc();
      *(v0 + 136) = v4;
      *v4 = v0;
      v5 = CamBridgeImpl.waitForCamWarmup();
LABEL_10:
      v4[1] = v5;
      v8 = MEMORY[0x1E69E7CA8] + 8;

      return MEMORY[0x1EEE6DA40](v4, v3, v8);
    }
  }

  outlined destroy of CamBridgeImpl.CamState(v0 + 16);
  v6 = *(v0 + 8);

  return v6();
}

{
  v1 = *(*v0 + 120);

  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.waitForCamWarmup(), v1, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(*v0 + 120);

  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.waitForCamWarmup(), v1, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t CamBridgeImpl.rank(rcId:actions:rankerContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[25] = a4;
  v5[26] = v4;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  v6 = type metadata accessor for RankedAction();
  v5[27] = v6;
  v5[28] = *(v6 - 8);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[33] = v7;
  v5[34] = *(v7 - 8);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[40] = static MessageBusActor.shared;

  v8 = swift_task_alloc();
  v5[41] = v8;
  *v8 = v5;
  v8[1] = CamBridgeImpl.rank(rcId:actions:rankerContext:);

  return CamBridgeImpl.waitForCaarWarmup()();
}

uint64_t CamBridgeImpl.rank(rcId:actions:rankerContext:)()
{
  v1 = *(*v0 + 320);

  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.rank(rcId:actions:rankerContext:), v1, 0);
}

{
  v72 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 208);
  swift_beginAccess();
  v5 = *(v4 + 240);
  outlined init with copy of ReferenceResolutionClientProtocol?(v5 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_requestLoggingId, v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = *(v2 + 48);
  if (v6(v3, 1, v1) == 1)
  {
    v7 = (v0 + 256);
LABEL_5:
    outlined destroy of ReferenceResolutionClientProtocol?(*v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.executor);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DC659000, v12, v13, "CamBridge: No Execution / CAAR logging ID found in camBridgeState, falling back on new UUID", v14, 2u);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    UUID.init()();
    UUID.init()();
    goto LABEL_10;
  }

  v7 = (v0 + 248);
  v8 = *(v0 + 248);
  v9 = *(v0 + 264);
  v10 = *(*(v0 + 272) + 32);
  v10(*(v0 + 296), *(v0 + 256), v9);
  outlined init with copy of ReferenceResolutionClientProtocol?(v5 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_caarLoggingId, v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v6(v8, 1, v9) == 1)
  {
    (*(*(v0 + 272) + 8))(*(v0 + 296), *(v0 + 264));
    goto LABEL_5;
  }

  v26 = *(v0 + 304);
  v27 = *(v0 + 312);
  v29 = *(v0 + 288);
  v28 = *(v0 + 296);
  v30 = *(v0 + 264);
  v31 = *(v0 + 272);
  v10(v29, *(v0 + 248), v30);
  v32 = *(v31 + 16);
  v32(v27, v28, v30);
  v32(v26, v29, v30);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v33 = *(v0 + 304);
  v34 = *(v0 + 280);
  v35 = *(v0 + 264);
  v36 = type metadata accessor for Logger();
  __swift_project_value_buffer(v36, static Logger.executor);
  v32(v34, v33, v35);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  v39 = os_log_type_enabled(v37, v38);
  v41 = *(v0 + 288);
  v40 = *(v0 + 296);
  v43 = *(v0 + 272);
  v42 = *(v0 + 280);
  v44 = *(v0 + 264);
  if (v39)
  {
    v69 = *(v0 + 296);
    v45 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v71 = v68;
    *v45 = 136315138;
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    v49 = *(v43 + 8);
    v49(v42, v44);
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v71);

    *(v45 + 4) = v50;
    _os_log_impl(&dword_1DC659000, v37, v38, "CamBridge: Retrieved CAAR logging ID from CAM state: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    MEMORY[0x1E12A2F50](v68, -1, -1);
    MEMORY[0x1E12A2F50](v45, -1, -1);

    v49(v41, v44);
    v49(v69, v44);
  }

  else
  {

    v67 = *(v43 + 8);
    v67(v42, v44);
    v67(v41, v44);
    v67(v40, v44);
  }

LABEL_10:
  v15 = *(v0 + 208);
  swift_beginAccess();
  outlined init with copy of CamBridgeImpl.CaarState((v15 + 192), v0 + 16);
  if (*(v0 + 56) > 1u)
  {
    if (*(v0 + 56) == 2)
    {

      outlined destroy of CamBridgeImpl.CaarState(v0 + 16);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logger.executor);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      v19 = os_log_type_enabled(v17, v18);
      v21 = *(v0 + 304);
      v20 = *(v0 + 312);
      v22 = *(v0 + 264);
      v23 = *(v0 + 272);
      if (v19)
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1DC659000, v17, v18, "CamBridge: Avoiding call to CAM due to previous errors", v24, 2u);
        MEMORY[0x1E12A2F50](v24, -1, -1);
      }

      v25 = *(v23 + 8);
      v25(v21, v22);
      v25(v20, v22);
    }

    else
    {
      if (!(*(v0 + 32) | *(v0 + 16) | *(v0 + 40) | *(v0 + 48) | *(v0 + 24)))
      {
        goto LABEL_31;
      }

      v61 = *(v0 + 312);
      v62 = *(v0 + 304);
      v63 = *(v0 + 264);
      v64 = *(v0 + 272);

      v65 = *(v64 + 8);
      v65(v62, v63);
      v65(v61, v63);
    }

    v66 = *(v0 + 8);

    return v66(0);
  }

  else
  {
    if (!*(v0 + 56))
    {
      outlined destroy of CamBridgeImpl.CaarState(v0 + 16);
LABEL_31:

      return specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD00000000000003ALL, 0x80000001DCA7DAF0, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/DecisionEngine/AmbiguityHandling/CamBridge/CamBridgeImpl.swift", 131, 2, 323);
    }

    outlined init with take of ReferenceResolutionClientProtocol((v0 + 16), v0 + 64);
    v51 = *(v0 + 88);
    v52 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v51);
    v70 = (*(v52 + 8) + **(v52 + 8));
    v53 = swift_task_alloc();
    *(v0 + 336) = v53;
    *v53 = v0;
    v53[1] = CamBridgeImpl.rank(rcId:actions:rankerContext:);
    v54 = *(v0 + 304);
    v55 = *(v0 + 192);
    v56 = *(v0 + 200);
    v57 = *(v0 + 176);
    v58 = *(v0 + 184);
    v59 = *(v0 + 312);

    return v70(v59, v54, v57, v58, v55, v56, v51, v52);
  }
}

{
  v2 = v0[43];
  v4 = v0[22];
  v3 = v0[23];

  v5 = specialized static CamBridgeImpl.collateParses(rcId:rankedActions:)(v4, v3, v2);

  v6 = *(v5 + 2);
  if (v6)
  {
    v7 = 0;
    v8 = v0[28];
    v39 = (v8 + 32);
    v9 = MEMORY[0x1E69E7CC0];
    v37 = *(v5 + 2);
    v38 = v5;
    while (v7 < *(v5 + 2))
    {
      v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v1 = *(v8 + 72);
      (*(v8 + 16))(v0[30], &v5[v10 + v1 * v7], v0[27]);
      RankedAction.score.getter();
      if (v11 < 0.1)
      {
        (*(v8 + 8))(v0[30], v0[27]);
      }

      else
      {
        v12 = *v39;
        (*v39)(v0[29], v0[30], v0[27]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1);
        }

        v14 = *(v9 + 16);
        v13 = *(v9 + 24);
        if (v14 >= v13 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        }

        v15 = v0[29];
        v16 = v0[27];
        *(v9 + 16) = v14 + 1;
        v12(v9 + v10 + v14 * v1, v15, v16);
        v6 = v37;
        v5 = v38;
      }

      if (v6 == ++v7)
      {
        v17 = *(v5 + 2);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v17 = 0;
  v9 = MEMORY[0x1E69E7CC0];
LABEL_14:

  v18 = *(v9 + 16);
  v1 = &unk_1EE159000;
  v7 = v17 - v18;
  if (v17 > v18)
  {
    if (one-time initialization token for executor == -1)
    {
LABEL_16:
      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.executor);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 134217984;
        *(v22 + 4) = v7;
        _os_log_impl(&dword_1DC659000, v20, v21, "After collating %ld actions were dropped due to low ranker score", v22, 0xCu);
        MEMORY[0x1E12A2F50](v22, -1, -1);
      }

      v18 = *(v9 + 16);
      goto LABEL_19;
    }

LABEL_30:
    swift_once();
    goto LABEL_16;
  }

LABEL_19:
  if (v18)
  {
    v23 = v0[39];
    v24 = v0[33];
    v25 = *(v0[34] + 8);
    v25(v0[38], v24);
    v25(v23, v24);
  }

  else
  {

    if (*(v1 + 389) != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.executor);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1DC659000, v27, v28, "CamBridge: Collated & filtered actions are empty!", v29, 2u);
      MEMORY[0x1E12A2F50](v29, -1, -1);
    }

    v31 = v0[38];
    v30 = v0[39];
    v32 = v0[33];
    v33 = v0[34];

    v34 = *(v33 + 8);
    v34(v31, v32);
    v34(v30, v32);
    v9 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);

  v35 = v0[1];

  return v35(v9);
}

{

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "CamBridge: Ranking threw error", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v6 = v0[38];
  v5 = v0[39];
  v7 = v0[33];
  v8 = v0[34];

  v9 = *(v8 + 8);
  v9(v6, v7);
  v9(v5, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);

  v10 = v0[1];

  return v10(0);
}

uint64_t CamBridgeImpl.rank(rcId:actions:rankerContext:)(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 320);
  if (v1)
  {

    v7 = CamBridgeImpl.rank(rcId:actions:rankerContext:);
  }

  else
  {
    *(v5 + 344) = a1;
    v7 = CamBridgeImpl.rank(rcId:actions:rankerContext:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t CamBridgeImpl.waitForCaarWarmup()()
{
  *(v1 + 112) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static MessageBusActor.shared;
  *(v1 + 120) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.waitForCaarWarmup(), v2, 0);
}

{
  v1 = *(v0 + 112);
  swift_beginAccess();
  outlined init with copy of CamBridgeImpl.CaarState((v1 + 192), v0 + 16);
  if (*(v0 + 56))
  {
    if (*(v0 + 56) != 3 || (v2 = vorrq_s8(*(v0 + 24), *(v0 + 40)), *&vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL)) | *(v0 + 16)))
    {

      outlined destroy of CamBridgeImpl.CaarState(v0 + 16);
      v3 = *(v0 + 8);

      return v3();
    }

    v5 = CamBridgeImpl.asyncWarmUpIfSupported()();
    *(v0 + 128) = v5;
    v6 = swift_task_alloc();
    *(v0 + 136) = v6;
    *v6 = v0;
    v7 = CamBridgeImpl.waitForCamWarmup();
  }

  else
  {
    v5 = *(v0 + 16);
    *(v0 + 144) = v5;
    v6 = swift_task_alloc();
    *(v0 + 152) = v6;
    *v6 = v0;
    v7 = CamBridgeImpl.waitForCamWarmup();
  }

  v6[1] = v7;
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA40](v6, v5, v8);
}

uint64_t CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[235] = v8;
  v9[234] = v20;
  v9[233] = a8;
  v9[232] = a7;
  v9[231] = a6;
  v9[230] = a5;
  v9[229] = a4;
  v9[223] = a3;
  v9[217] = a2;
  v9[211] = a1;
  v10 = type metadata accessor for RankedAction();
  v9[236] = v10;
  v9[237] = *(v10 - 8);
  v9[238] = swift_task_alloc();
  v11 = type metadata accessor for Input();
  v9[239] = v11;
  v9[240] = *(v11 - 8);
  v9[241] = swift_task_alloc();
  v12 = type metadata accessor for PluginAction();
  v9[242] = v12;
  v9[243] = *(v12 - 8);
  v9[244] = swift_task_alloc();
  v9[245] = swift_task_alloc();
  v9[246] = swift_task_alloc();
  v13 = *(type metadata accessor for ConversationHelperInput(0) - 8);
  v9[247] = v13;
  v9[248] = *(v13 + 64);
  v9[249] = swift_task_alloc();
  v9[250] = swift_task_alloc();
  v9[251] = type metadata accessor for ParaphraseProbeResult(0);
  v9[252] = swift_task_alloc();
  v9[253] = swift_task_alloc();
  v9[254] = swift_task_alloc();
  v9[255] = swift_task_alloc();
  v9[256] = swift_task_alloc();
  v9[257] = swift_task_alloc();
  v9[258] = swift_task_alloc();
  v9[259] = swift_task_alloc();
  v9[260] = swift_task_alloc();
  v9[261] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  v9[262] = swift_task_alloc();
  v9[263] = swift_task_alloc();
  v9[264] = swift_task_alloc();
  v9[265] = swift_task_alloc();
  v9[266] = swift_task_alloc();
  v14 = type metadata accessor for Parse();
  v9[267] = v14;
  v9[268] = *(v14 - 8);
  v9[269] = swift_task_alloc();
  v15 = type metadata accessor for Parse.DirectInvocation();
  v9[270] = v15;
  v9[271] = *(v15 - 8);
  v9[272] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v9[273] = swift_task_alloc();
  v9[274] = swift_task_alloc();
  v9[275] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9[276] = swift_task_alloc();
  v9[277] = swift_task_alloc();
  v16 = type metadata accessor for UUID();
  v9[278] = v16;
  v9[279] = *(v16 - 8);
  v9[280] = swift_task_alloc();
  v9[281] = swift_task_alloc();
  v9[282] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = static MessageBusActor.shared;
  v9[283] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:), v17, 0);
}

uint64_t CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:)()
{
  v1 = v0[279];
  v2 = v0[278];
  v3 = v0[277];
  v4 = v0[235];
  swift_beginAccess();
  v5 = *(v4 + 240);
  v0[284] = v5;
  outlined init with copy of ReferenceResolutionClientProtocol?(v5 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_requestLoggingId, v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = *(v1 + 48);
  if (v6(v3, 1, v2) == 1)
  {
    v7 = v0 + 277;
  }

  else
  {
    v8 = v0[278];
    v9 = v0[276];
    v10 = *(v0[279] + 32);
    v10(v0[280], v0[277], v8);
    outlined init with copy of ReferenceResolutionClientProtocol?(v5 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_camLoggingId, v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v6(v9, 1, v8) != 1)
    {
      v18 = v0[282];
      v19 = v0[280];
      v20 = v0[278];
      v10(v0[281], v0[276], v20);
      v10(v18, v19, v20);

      goto LABEL_11;
    }

    v7 = v0 + 276;
    v11 = v0[280];
    v12 = v0[278];
    v13 = *(v0[279] + 8);

    v13(v11, v12);
  }

  outlined destroy of ReferenceResolutionClientProtocol?(*v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.executor);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1DC659000, v15, v16, "No Execution/CAM logging ID found in camBridgeState, falling back on new UUID", v17, 2u);
    MEMORY[0x1E12A2F50](v17, -1, -1);
  }

  UUID.init()();
  UUID.init()();
LABEL_11:
  v21 = swift_task_alloc();
  v0[285] = v21;
  *v21 = v0;
  v21[1] = CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:);
  v22 = v0[282];
  v23 = v0[281];
  v24 = v0[234];
  v25 = v0[233];
  v26 = v0[230];
  v27 = v0[229];
  v28 = v0[223];
  v29 = v0[217];

  return CamBridgeImpl.action(requestId:camId:rcId:speechPackage:rankedActions:inputOrigin:)(v22, v23, v29, v28, v27, v26, v25, v24);
}

{
  v142 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 2360);
  v2 = *(v0 + 2200);
  v3 = *(v0 + 1920);
  v4 = *(v0 + 1912);
  v5 = *(v0 + 1784);
  v6 = *(v0 + 1736);
  v7 = type metadata accessor for Logger();
  v8 = __swift_project_value_buffer(v7, static Logger.executor);
  *(v0 + 2288) = v8;
  specialized Logger.debugF(_:_:_:_:)("SiriKitRuntime/CamBridgeImpl.swift", 34, 2, "selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:)", 102, 2, v8, v1);
  v9._countAndFlagsBits = v6;
  v9._object = v5;
  CamBridgeState.registerCamAction(rcId:camAction:)(v9, v1);
  v10 = *(v3 + 56);
  *(v0 + 2296) = v10;
  v140 = v0;
  *(v0 + 2304) = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v10(v2, 1, 1, v4);
  if (v1 <= 1)
  {
    if (!v1)
    {
      v11 = v0;

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = "CamBridge: Executing top ranked action";
LABEL_14:
        _os_log_impl(&dword_1DC659000, v12, v13, v15, v14, 2u);
        MEMORY[0x1E12A2F50](v14, -1, -1);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    v11 = v0;
    v16 = *(v0 + 2192);
    v17 = *(v0 + 2176);
    v18 = *(v0 + 2168);
    v19 = *(v140 + 2160);
    v20 = *(v140 + 2152);
    v21 = *(v140 + 2144);
    v22 = *(v140 + 2136);
    v134 = *(v140 + 2200);
    v138 = *(v140 + 1912);

    static CamDirectInvocationIdentifiers.askRepeat.getter();
LABEL_10:
    Parse.DirectInvocation.init(identifier:userData:)();
    (*(v18 + 16))(v20, v17, v19);
    (*(v21 + 104))(v20, *MEMORY[0x1E69D0158], v22);
    Input.init(parse:)();
    (*(v18 + 8))(v17, v19);
    outlined destroy of ReferenceResolutionClientProtocol?(v134, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v10(v16, 0, 1, v138);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v16, v134, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    goto LABEL_16;
  }

  if (v1 == 2)
  {
    v11 = v0;
    v16 = *(v0 + 2192);
    v17 = *(v0 + 2176);
    v18 = *(v0 + 2168);
    v19 = *(v140 + 2160);
    v20 = *(v140 + 2152);
    v21 = *(v140 + 2144);
    v22 = *(v140 + 2136);
    v134 = *(v140 + 2200);
    v138 = *(v140 + 1912);

    static CamDirectInvocationIdentifiers.giveUpRepeat.getter();
    goto LABEL_10;
  }

  v11 = v0;
  if (*(*(v0 + 1840) + 16) < 2uLL)
  {

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "CamBridge: We didn't have 2 actions present to disambiguate.";
      goto LABEL_14;
    }

LABEL_15:

    goto LABEL_16;
  }

  v80 = *(v0 + 2128);
  v81 = *(v0 + 2120);
  v82 = type metadata accessor for ActionParaphrase();
  *(v0 + 2312) = v82;
  v83 = *(v82 - 8);
  *(v0 + 2320) = v83;
  v84 = *(v83 + 56);
  *(v140 + 2328) = v84;
  *(v140 + 2336) = (v83 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v84(v80, 1, 1, v82);
  v84(v81, 1, 1, v82);
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v85 = static AmbiguityFeatureFlags.forceEnabled;
  if (*(static AmbiguityFeatureFlags.forceEnabled + 16) && (v86 = specialized __RawDictionaryStorage.find<A>(_:)(), (v87 & 1) != 0))
  {
    if (*(*(v85 + 56) + v86) != 1)
    {
LABEL_38:

      RankedAction.toPluginAction(withSpeechPackage:withParaphrase:)(*(v140 + 1832), *(v140 + 2128), *(v140 + 1968));
      v105 = PluginAction.serialize()();
      v139 = v106;
      v107 = *(v140 + 2120);
      v108 = *(v140 + 1960);
      v109 = *(v140 + 1832);
      v110 = *(*(v140 + 1944) + 8);
      v110(*(v140 + 1968), *(v140 + 1936));
      RankedAction.toPluginAction(withSpeechPackage:withParaphrase:)(v109, v107, v108);
      v111 = PluginAction.serialize()();
      v133 = *(v140 + 2296);
      v130 = *(v140 + 2200);
      v113 = *(v140 + 2168);
      v120 = *(v140 + 2176);
      v121 = *(v140 + 2152);
      v122 = *(v140 + 2160);
      v123 = *(v140 + 2144);
      v124 = *(v140 + 2136);
      v125 = *(v140 + 2192);
      v126 = *(v140 + 2120);
      v127 = *(v140 + 2128);
      v129 = *(v140 + 1912);
      v114 = v111;
      v116 = v115;
      v110(*(v140 + 1960), *(v140 + 1936));
      static CamDirectInvocationIdentifiers.disambiguateTopTwo.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DCA66060;
      *(inited + 32) = 1936750952;
      *(inited + 40) = 0xE400000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
      v118 = swift_allocObject();
      *(v118 + 16) = xmmword_1DCA65720;
      *(v118 + 32) = v105;
      *(v118 + 40) = v139;
      *(v118 + 48) = v114;
      *(v118 + 56) = v116;
      *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
      *(inited + 48) = v118;
      outlined copy of Data._Representation(v105, v139);
      outlined copy of Data._Representation(v114, v116);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of ReferenceResolutionClientProtocol?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
      Parse.DirectInvocation.init(identifier:userData:)();
      (*(v113 + 16))(v121, v120, v122);
      (*(v123 + 104))(v121, *MEMORY[0x1E69D0158], v124);
      Input.init(parse:)();
      outlined consume of Data._Representation(v114, v116);
      outlined consume of Data._Representation(v105, v139);
      (*(v113 + 8))(v120, v122);
      outlined destroy of ReferenceResolutionClientProtocol?(v126, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v127, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v130, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
      v133(v125, 0, 1, v129);
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v125, v130, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
LABEL_16:
      v23 = v11[273];
      v24 = v11[240];
      v25 = v11[239];
      outlined init with copy of ReferenceResolutionClientProtocol?(v11[275], v23, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
      if ((*(v24 + 48))(v23, 1, v25) == 1)
      {
        v26 = v11[230];
        outlined destroy of ReferenceResolutionClientProtocol?(v11[273], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
        v27 = *(v26 + 16);
        if (!v27)
        {
          v72 = v11[282];
          v73 = v11[281];
          v74 = v11[279];
          v75 = v11[278];
          v76 = v11[275];
          v77 = v11[211];

          outlined destroy of ReferenceResolutionClientProtocol?(v76, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
          v78 = *(v74 + 8);
          v78(v73, v75);
          v78(v72, v75);
          v79 = type metadata accessor for CamOutput(0);
          (*(*(v79 - 8) + 56))(v77, 1, 1, v79);
LABEL_46:
          _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(0, 0);
          _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(0, 0);

          v112 = v11[1];

          return v112();
        }

        v28 = v11[243];
        v29 = v11[237];
        v135 = *(v29 + 16);
        v30 = v11[230] + ((*(v29 + 80) + 32) & ~*(v29 + 80));
        v131 = *(v29 + 72);
        v31 = (v29 + 8);
        v32 = MEMORY[0x1E69E7CC0];
        v128 = *(v26 + 16);
        do
        {
          v33 = v11[262];
          v34 = v11[244];
          v35 = v11[238];
          v36 = v11[236];
          v37 = v11[229];
          v135(v35, v30, v36);
          v38 = type metadata accessor for ActionParaphrase();
          (*(*(v38 - 8) + 56))(v33, 1, 1, v38);
          RankedAction.toPluginAction(withSpeechPackage:withParaphrase:)(v37, v33, v34);
          outlined destroy of ReferenceResolutionClientProtocol?(v33, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
          (*v31)(v35, v36);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32[2] + 1, 1, v32);
          }

          v40 = v32[2];
          v39 = v32[3];
          v11 = v140;
          if (v40 >= v39 >> 1)
          {
            v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v32);
          }

          v41 = *(v140 + 1952);
          v42 = *(v140 + 1936);
          v32[2] = v40 + 1;
          (*(v28 + 32))(v32 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v40, v41, v42);
          v30 += v131;
          --v27;
        }

        while (v27);

        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.debug.getter();

        v58 = os_log_type_enabled(v56, v57);
        v59 = *(v140 + 2256);
        v60 = *(v140 + 2248);
        v61 = *(v140 + 2232);
        v62 = *(v140 + 2224);
        v63 = *(v140 + 2200);
        if (v58)
        {
          v64 = *(v140 + 1936);
          v136 = *(v140 + 2248);
          v65 = swift_slowAlloc();
          v132 = v63;
          v66 = swift_slowAlloc();
          v141[0] = v66;
          *v65 = 134218242;
          *(v65 + 4) = v128;

          *(v65 + 12) = 2080;
          v67 = MEMORY[0x1E12A16D0](v32, v64);
          v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, v141);

          *(v65 + 14) = v69;
          _os_log_impl(&dword_1DC659000, v56, v57, "CamBridge: Converted %ld rankedActions to %s", v65, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v66);
          MEMORY[0x1E12A2F50](v66, -1, -1);
          v70 = v65;
          v11 = v140;
          MEMORY[0x1E12A2F50](v70, -1, -1);

          outlined destroy of ReferenceResolutionClientProtocol?(v132, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
          v71 = *(v61 + 8);
          v71(v136, v62);
        }

        else
        {

          outlined destroy of ReferenceResolutionClientProtocol?(v63, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
          v71 = *(v61 + 8);
          v71(v60, v62);
        }

        v71(v59, v62);
        v52 = v11[211];
        if (!v32[2])
        {
          v88 = type metadata accessor for CamOutput(0);
          (*(*(v88 - 8) + 56))(v52, 1, 1, v88);

          goto LABEL_46;
        }

        *v52 = v32;
        v55 = type metadata accessor for CamOutput(0);
      }

      else
      {
        v43 = v11[282];
        v44 = v11[281];
        v45 = v11[279];
        v46 = v11[278];
        v47 = v11[275];
        v48 = v11[273];
        v49 = v11[241];
        v50 = *(v140 + 1920);
        v51 = *(v140 + 1912);
        v52 = *(v140 + 1688);

        outlined destroy of ReferenceResolutionClientProtocol?(v47, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
        v53 = *(v45 + 8);
        v53(v44, v46);
        v53(v43, v46);
        v54 = *(v50 + 32);
        v54(v49, v48, v51);
        v54(v52, v49, v51);
        v11 = v140;
        v55 = type metadata accessor for CamOutput(0);
      }

      swift_storeEnumTagMultiPayload();
      (*(*(v55 - 8) + 56))(v52, 0, 1, v55);
      goto LABEL_46;
    }
  }

  else
  {
    *(v140 + 1440) = &type metadata for AmbiguityFeatureFlags;
    *(v140 + 1448) = lazy protocol witness table accessor for type AmbiguityFeatureFlags and conformance AmbiguityFeatureFlags();
    *(v140 + 1416) = 1;
    v89 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm((v140 + 1416));
    if ((v89 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    *v92 = 0;
    _os_log_impl(&dword_1DC659000, v90, v91, "CamBridge: Probing actions for input paraphrases", v92, 2u);
    MEMORY[0x1E12A2F50](v92, -1, -1);
  }

  v93 = *(v140 + 2000);
  v137 = *(v140 + 1992);
  v94 = *(v140 + 1976);
  v95 = *(v140 + 1880);
  v96 = *(v140 + 1856);
  v97 = *(v140 + 1848);
  v98 = *(v140 + 1840);

  outlined init with copy of ConversationHelperInput(v97, v93, type metadata accessor for ConversationHelperInput);
  v99 = (*(v94 + 80) + 40) & ~*(v94 + 80);
  v100 = swift_allocObject();
  v100[2] = v95;
  v100[3] = v98;
  v100[4] = v96;
  outlined init with take of ConversationHelperInput(v93, v100 + v99, type metadata accessor for ConversationHelperInput);
  v101 = swift_allocObject();
  *(v140 + 2344) = v101;
  *(v101 + 16) = &async function pointer to partial apply for implicit closure #2 in CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:);
  *(v101 + 24) = v100;

  swift_asyncLet_begin();
  outlined init with copy of ConversationHelperInput(v97, v137, type metadata accessor for ConversationHelperInput);
  v102 = swift_allocObject();
  v102[2] = v95;
  v102[3] = v98;
  v102[4] = v96;
  outlined init with take of ConversationHelperInput(v137, v102 + v99, type metadata accessor for ConversationHelperInput);
  v103 = swift_allocObject();
  *(v140 + 2352) = v103;
  *(v103 + 16) = &async function pointer to partial apply for implicit closure #3 in CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:);
  *(v103 + 24) = v102;

  swift_asyncLet_begin();
  v104 = *(v140 + 2088);

  return MEMORY[0x1EEE6DEB8](v140 + 16, v104, CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:), v140 + 1296);
}

{
  outlined init with copy of ConversationHelperInput(v0[261], v0[259], type metadata accessor for ParaphraseProbeResult);
  v1 = v0[260];

  return MEMORY[0x1EEE6DEB8](v0 + 82, v1, CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:), v0 + 182);
}

{
  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:), *(v0 + 2264), 0);
}

{
  v60 = v0;
  v1 = v0[259];
  v2 = v0[257];
  outlined init with copy of ConversationHelperInput(v0[260], v0[258], type metadata accessor for ParaphraseProbeResult);
  outlined init with copy of ConversationHelperInput(v1, v2, type metadata accessor for ParaphraseProbeResult);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[257];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v59 = v8;
    *v7 = 136315138;
    v9 = ParaphraseProbeResult.description.getter();
    v11 = v10;
    outlined destroy of ParaphraseProbeResult(v6, type metadata accessor for ParaphraseProbeResult);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v59);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1DC659000, v3, v4, "CamBridge: ActionParaphrase by action 1 %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  else
  {

    outlined destroy of ParaphraseProbeResult(v6, type metadata accessor for ParaphraseProbeResult);
  }

  outlined init with copy of ConversationHelperInput(v0[258], v0[256], type metadata accessor for ParaphraseProbeResult);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[256];
  if (v15)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v59 = v18;
    *v17 = 136315138;
    v19 = ParaphraseProbeResult.description.getter();
    v21 = v20;
    outlined destroy of ParaphraseProbeResult(v16, type metadata accessor for ParaphraseProbeResult);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v59);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_1DC659000, v13, v14, "CamBridge: ActionParaphrase by action 2 %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1E12A2F50](v18, -1, -1);
    MEMORY[0x1E12A2F50](v17, -1, -1);
  }

  else
  {

    outlined destroy of ParaphraseProbeResult(v16, type metadata accessor for ParaphraseProbeResult);
  }

  v23 = v0[255];
  outlined init with copy of ConversationHelperInput(v0[259], v23, type metadata accessor for ParaphraseProbeResult);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
  v25 = *(*(v24 - 8) + 48);
  v26 = v25(v23, 2, v24);
  outlined destroy of ParaphraseProbeResult(v23, type metadata accessor for ParaphraseProbeResult);
  if (v26 == 2)
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1DC659000, v27, v28, "CamBridge: action 1 is a dead end, avoiding to disambiguate", v29, 2u);
      MEMORY[0x1E12A2F50](v29, -1, -1);
    }

    v30 = v0[259];
    v31 = v0[258];

    outlined destroy of ParaphraseProbeResult(v31, type metadata accessor for ParaphraseProbeResult);
    outlined destroy of ParaphraseProbeResult(v30, type metadata accessor for ParaphraseProbeResult);
    v32 = CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:);
    v33 = v0[260];
    v34 = v0 + 82;
    v35 = v0 + 218;
  }

  else
  {
    v36 = v0[254];
    outlined init with copy of ConversationHelperInput(v0[258], v36, type metadata accessor for ParaphraseProbeResult);
    if (v25(v36, 2, v24) == 2)
    {
      outlined destroy of ParaphraseProbeResult(v0[254], type metadata accessor for ParaphraseProbeResult);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1DC659000, v37, v38, "CamBridge: action 2 is a dead end, avoiding to disambiguate", v39, 2u);
        MEMORY[0x1E12A2F50](v39, -1, -1);
      }

      v40 = v0[259];
      v41 = v0[258];

      outlined destroy of ParaphraseProbeResult(v41, type metadata accessor for ParaphraseProbeResult);
      outlined destroy of ParaphraseProbeResult(v40, type metadata accessor for ParaphraseProbeResult);
      v32 = CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:);
      v33 = v0[260];
      v34 = v0 + 82;
      v35 = v0 + 206;
    }

    else
    {
      v42 = v0[266];
      v43 = v0[259];
      v44 = v0[254];
      v45 = v0[253];
      outlined destroy of ReferenceResolutionClientProtocol?(v0[265], &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v42, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
      outlined destroy of ParaphraseProbeResult(v44, type metadata accessor for ParaphraseProbeResult);
      outlined init with take of ConversationHelperInput(v43, v45, type metadata accessor for ParaphraseProbeResult);
      v46 = v25(v45, 2, v24);
      v47 = v0[291];
      if (v46)
      {
        v48 = v0[253];
        v47(v0[264], 1, 1, v0[289]);
        outlined destroy of ParaphraseProbeResult(v48, type metadata accessor for ParaphraseProbeResult);
      }

      else
      {
        v49 = v0[289];
        v50 = v0[264];
        (*(v0[290] + 32))(v50, v0[253], v49);
        v47(v50, 0, 1, v49);
      }

      v51 = v0[258];
      v52 = v0[252];
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v0[264], v0[266], &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
      outlined init with take of ConversationHelperInput(v51, v52, type metadata accessor for ParaphraseProbeResult);
      v53 = v25(v52, 2, v24);
      v54 = v0[291];
      if (v53)
      {
        v55 = v0[252];
        v54(v0[263], 1, 1, v0[289]);
        outlined destroy of ParaphraseProbeResult(v55, type metadata accessor for ParaphraseProbeResult);
      }

      else
      {
        v56 = v0[289];
        v57 = v0[263];
        (*(v0[290] + 32))(v57, v0[252], v56);
        v54(v57, 0, 1, v56);
      }

      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v0[263], v0[265], &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
      v32 = CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:);
      v33 = v0[260];
      v34 = v0 + 82;
      v35 = v0 + 190;
    }
  }

  return MEMORY[0x1EEE6DEB0](v34, v33, v32, v35);
}

{
  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:), *(v0 + 2264), 0);
}

{
  return MEMORY[0x1EEE6DEB0](v0 + 16, *(v0 + 2088), CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:), v0 + 1792);
}

{
  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:), *(v0 + 2264), 0);
}

{
  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:), *(v0 + 2264), 0);
}

{
  return MEMORY[0x1EEE6DEB0](v0 + 16, *(v0 + 2088), CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:), v0 + 1696);
}

{
  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:), *(v0 + 2264), 0);
}

{
  v72 = v0;
  v1 = v0[266];
  v2 = v0[265];

  outlined destroy of ReferenceResolutionClientProtocol?(v2, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v1, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  v63 = v0[294];
  v62 = v0[293];
  v3 = v0[273];
  v4 = v0[240];
  v5 = v0[239];
  outlined init with copy of ReferenceResolutionClientProtocol?(v0[275], v3, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  if ((*(v4 + 48))(v3, 1, v5) != 1)
  {
    v22 = v0[282];
    v23 = v0[281];
    v24 = v0[279];
    v25 = v0[278];
    v26 = v0[275];
    v70 = v0[273];
    v27 = v0[241];
    v28 = v0[240];
    v29 = v0[239];
    v30 = v0[211];

    outlined destroy of ReferenceResolutionClientProtocol?(v26, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v31 = *(v24 + 8);
    v31(v23, v25);
    v31(v22, v25);
    v32 = *(v28 + 32);
    v32(v27, v70, v29);
    v32(v30, v27, v29);
    v33 = type metadata accessor for CamOutput(0);
LABEL_17:
    swift_storeEnumTagMultiPayload();
    (*(*(v33 - 8) + 56))(v30, 0, 1, v33);
    goto LABEL_18;
  }

  v6 = v0[230];
  outlined destroy of ReferenceResolutionClientProtocol?(v0[273], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v7 = *(v6 + 16);
  if (!v7)
  {
    v50 = v0[282];
    v51 = v0[281];
    v52 = v0[279];
    v53 = v0[278];
    v54 = v0[275];
    v55 = v0[211];

    outlined destroy of ReferenceResolutionClientProtocol?(v54, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v56 = *(v52 + 8);
    v56(v51, v53);
    v56(v50, v53);
    v57 = type metadata accessor for CamOutput(0);
    (*(*(v57 - 8) + 56))(v55, 1, 1, v57);
    goto LABEL_18;
  }

  v8 = v0[243];
  v9 = v0[237];
  v68 = *(v9 + 16);
  v10 = v0[230] + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v64 = (v9 + 8);
  v66 = *(v9 + 72);
  v11 = MEMORY[0x1E69E7CC0];
  v61 = *(v6 + 16);
  do
  {
    v12 = v0[262];
    v13 = v0[244];
    v14 = v0[238];
    v15 = v0[236];
    v16 = v0[229];
    v68(v14, v10, v15);
    v17 = type metadata accessor for ActionParaphrase();
    (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
    RankedAction.toPluginAction(withSpeechPackage:withParaphrase:)(v16, v12, v13);
    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
    (*v64)(v14, v15);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
    }

    v19 = v11[2];
    v18 = v11[3];
    if (v19 >= v18 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v11);
    }

    v20 = v0[244];
    v21 = v0[242];
    v11[2] = v19 + 1;
    (*(v8 + 32))(v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v19, v20, v21);
    v10 += v66;
    --v7;
  }

  while (v7);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  v36 = os_log_type_enabled(v34, v35);
  v37 = v0[282];
  v38 = v0[281];
  v39 = v0[279];
  v40 = v0[278];
  v41 = v0[275];
  if (v36)
  {
    v42 = v0[242];
    v69 = v0[281];
    v65 = v0[275];
    v43 = swift_slowAlloc();
    v67 = v37;
    v44 = swift_slowAlloc();
    v71 = v44;
    *v43 = 134218242;
    *(v43 + 4) = v61;

    *(v43 + 12) = 2080;
    v45 = MEMORY[0x1E12A16D0](v11, v42);
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v71);

    *(v43 + 14) = v47;
    _os_log_impl(&dword_1DC659000, v34, v35, "CamBridge: Converted %ld rankedActions to %s", v43, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    MEMORY[0x1E12A2F50](v44, -1, -1);
    MEMORY[0x1E12A2F50](v43, -1, -1);

    outlined destroy of ReferenceResolutionClientProtocol?(v65, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v48 = *(v39 + 8);
    v48(v69, v40);
    v49 = v67;
  }

  else
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v41, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v48 = *(v39 + 8);
    v48(v38, v40);
    v49 = v37;
  }

  v48(v49, v40);
  v30 = v0[211];
  if (v11[2])
  {
    *v30 = v11;
    v33 = type metadata accessor for CamOutput(0);
    goto LABEL_17;
  }

  v60 = type metadata accessor for CamOutput(0);
  (*(*(v60 - 8) + 56))(v30, 1, 1, v60);

LABEL_18:
  _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(&_s14SiriKitRuntime21ParaphraseProbeResultOIegHr_ACs5Error_pIegHTrzo_TRTATu, v62);
  _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(&_s14SiriKitRuntime21ParaphraseProbeResultOIegHr_ACs5Error_pIegHTrzo_TRTA_26Tu, v63);

  v58 = v0[1];

  return v58();
}

{
  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:), *(v0 + 2264), 0);
}

{
  return MEMORY[0x1EEE6DEB0](v0 + 16, *(v0 + 2088), CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:), v0 + 1584);
}

{
  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:), *(v0 + 2264), 0);
}

{
  v95 = v0;

  v92 = *(v0 + 2344);
  v93 = *(v0 + 2352);
  RankedAction.toPluginAction(withSpeechPackage:withParaphrase:)(*(v0 + 1832), *(v0 + 2128), *(v0 + 1968));
  v1 = PluginAction.serialize()();
  v90 = v2;
  v3 = *(v0 + 2120);
  v4 = *(v0 + 1960);
  v5 = *(v0 + 1832);
  v6 = *(*(v0 + 1944) + 8);
  v6(*(v0 + 1968), *(v0 + 1936));
  RankedAction.toPluginAction(withSpeechPackage:withParaphrase:)(v5, v3, v4);
  v7 = PluginAction.serialize()();
  v85 = *(v0 + 2296);
  v82 = *(v0 + 2200);
  v10 = *(v0 + 2168);
  v75 = *(v0 + 2160);
  v73 = *(v0 + 2176);
  v74 = *(v0 + 2152);
  v11 = *(v0 + 2144);
  v76 = *(v0 + 2136);
  v77 = *(v0 + 2192);
  v78 = *(v0 + 2120);
  v79 = *(v0 + 2128);
  v81 = *(v0 + 1912);
  v12 = v7;
  v14 = v13;
  v6(*(v0 + 1960), *(v0 + 1936));
  static CamDirectInvocationIdentifiers.disambiguateTopTwo.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DCA66060;
  *(inited + 32) = 1936750952;
  *(inited + 40) = 0xE400000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DCA65720;
  *(v16 + 32) = v1;
  *(v16 + 40) = v90;
  *(v16 + 48) = v12;
  *(v16 + 56) = v14;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
  *(inited + 48) = v16;
  outlined copy of Data._Representation(v1, v90);
  outlined copy of Data._Representation(v12, v14);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of ReferenceResolutionClientProtocol?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  Parse.DirectInvocation.init(identifier:userData:)();
  (*(v10 + 16))(v74, v73, v75);
  (*(v11 + 104))(v74, *MEMORY[0x1E69D0158], v76);
  Input.init(parse:)();
  outlined consume of Data._Representation(v12, v14);
  outlined consume of Data._Representation(v1, v90);
  (*(v10 + 8))(v73, v75);
  outlined destroy of ReferenceResolutionClientProtocol?(v78, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v79, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v82, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v85(v77, 0, 1, v81);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v77, v82, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v17 = *(v0 + 2184);
  v18 = *(v0 + 1920);
  v19 = *(v0 + 1912);
  outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 2200), v17, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  if ((*(v18 + 48))(v17, 1, v19) != 1)
  {
    v36 = *(v0 + 2256);
    v37 = *(v0 + 2248);
    v38 = *(v0 + 2232);
    v39 = *(v0 + 2224);
    v40 = *(v0 + 2200);
    v91 = *(v0 + 2184);
    v41 = *(v0 + 1928);
    v42 = *(v0 + 1920);
    v43 = *(v0 + 1912);
    v44 = *(v0 + 1688);

    outlined destroy of ReferenceResolutionClientProtocol?(v40, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v45 = *(v38 + 8);
    v45(v37, v39);
    v45(v36, v39);
    v46 = *(v42 + 32);
    v46(v41, v91, v43);
    v46(v44, v41, v43);
    v47 = type metadata accessor for CamOutput(0);
LABEL_21:
    swift_storeEnumTagMultiPayload();
    (*(*(v47 - 8) + 56))(v44, 0, 1, v47);
    goto LABEL_2;
  }

  v20 = *(v0 + 1840);
  outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 2184), &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v21 = *(v20 + 16);
  if (!v21)
  {
    v64 = *(v0 + 2256);
    v65 = *(v0 + 2248);
    v66 = *(v0 + 2232);
    v67 = *(v0 + 2224);
    v68 = *(v0 + 2200);
    v69 = *(v0 + 1688);

    outlined destroy of ReferenceResolutionClientProtocol?(v68, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v70 = *(v66 + 8);
    v70(v65, v67);
    v70(v64, v67);
    v71 = type metadata accessor for CamOutput(0);
    (*(*(v71 - 8) + 56))(v69, 1, 1, v71);
    goto LABEL_2;
  }

  v22 = *(v0 + 1944);
  v23 = *(v0 + 1896);
  v88 = *(v23 + 16);
  v24 = *(v0 + 1840) + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  v83 = (v23 + 8);
  v86 = *(v23 + 72);
  v25 = MEMORY[0x1E69E7CC0];
  v80 = *(v20 + 16);
  do
  {
    v26 = *(v0 + 2096);
    v27 = *(v0 + 1952);
    v28 = *(v0 + 1904);
    v29 = *(v0 + 1888);
    v30 = *(v0 + 1832);
    v88(v28, v24, v29);
    v31 = type metadata accessor for ActionParaphrase();
    (*(*(v31 - 8) + 56))(v26, 1, 1, v31);
    RankedAction.toPluginAction(withSpeechPackage:withParaphrase:)(v30, v26, v27);
    outlined destroy of ReferenceResolutionClientProtocol?(v26, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
    (*v83)(v28, v29);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25[2] + 1, 1, v25);
    }

    v33 = v25[2];
    v32 = v25[3];
    if (v33 >= v32 >> 1)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v25);
    }

    v34 = *(v0 + 1952);
    v35 = *(v0 + 1936);
    v25[2] = v33 + 1;
    (*(v22 + 32))(v25 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v33, v34, v35);
    v24 += v86;
    --v21;
  }

  while (v21);

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();

  v50 = os_log_type_enabled(v48, v49);
  v51 = *(v0 + 2256);
  v52 = *(v0 + 2248);
  v53 = *(v0 + 2232);
  v54 = *(v0 + 2224);
  v55 = *(v0 + 2200);
  if (v50)
  {
    v56 = *(v0 + 1936);
    v89 = *(v0 + 2248);
    v84 = *(v0 + 2200);
    v57 = swift_slowAlloc();
    v87 = v51;
    v58 = swift_slowAlloc();
    v94[0] = v58;
    *v57 = 134218242;
    *(v57 + 4) = v80;

    *(v57 + 12) = 2080;
    v59 = MEMORY[0x1E12A16D0](v25, v56);
    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, v94);

    *(v57 + 14) = v61;
    _os_log_impl(&dword_1DC659000, v48, v49, "CamBridge: Converted %ld rankedActions to %s", v57, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    MEMORY[0x1E12A2F50](v58, -1, -1);
    MEMORY[0x1E12A2F50](v57, -1, -1);

    outlined destroy of ReferenceResolutionClientProtocol?(v84, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v62 = *(v53 + 8);
    v62(v89, v54);
    v63 = v87;
  }

  else
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v55, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v62 = *(v53 + 8);
    v62(v52, v54);
    v63 = v51;
  }

  v62(v63, v54);
  v44 = *(v0 + 1688);
  if (v25[2])
  {
    *v44 = v25;
    v47 = type metadata accessor for CamOutput(0);
    goto LABEL_21;
  }

  v72 = type metadata accessor for CamOutput(0);
  (*(*(v72 - 8) + 56))(v44, 1, 1, v72);

LABEL_2:
  _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(&_s14SiriKitRuntime21ParaphraseProbeResultOIegHr_ACs5Error_pIegHTrzo_TRTATu, v92);
  _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(&_s14SiriKitRuntime21ParaphraseProbeResultOIegHr_ACs5Error_pIegHTrzo_TRTA_26Tu, v93);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:)(char a1)
{
  v2 = *(*v1 + 2264);
  *(*v1 + 2360) = a1;

  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:), v2, 0);
}

uint64_t implicit closure #2 in CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  v5[7] = swift_task_alloc();
  v6 = type metadata accessor for PluginAction();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](implicit closure #2 in CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:), 0, 0);
}

void implicit closure #2 in CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:)()
{
  if (*(v0[4] + 16))
  {
    v1 = v0[10];
    v2 = v0[7];
    type metadata accessor for RankedAction();
    v3 = type metadata accessor for ActionParaphrase();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    RankedAction.toPluginAction(withSpeechPackage:withParaphrase:)(0, v2, v1);
    outlined destroy of ReferenceResolutionClientProtocol?(v2, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = implicit closure #2 in CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:);
    v5 = v0[10];
    v6 = v0[5];
    v7 = v0[6];
    v8 = v0[2];

    CamBridgeImpl.probePluginActionForActionParaphrase(pluginAction:conversationHelper:conversationHelperInput:)(v8, v5, v6, v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t implicit closure #2 in CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:)()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t CamBridgeImpl.probePluginActionForActionParaphrase(pluginAction:conversationHelper:conversationHelperInput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a1;
  v4[10] = a2;
  v7 = type metadata accessor for PluginAction();
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = type metadata accessor for ConversationParaphraseResult(0);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4[18] = static MessageBusActor.shared;

  v8 = swift_task_alloc();
  v4[19] = v8;
  *v8 = v4;
  v8[1] = CamBridgeImpl.probePluginActionForActionParaphrase(pluginAction:conversationHelper:conversationHelperInput:);

  return ConversationHelper.loadNewConversation(pluginAction:conversationHelperInput:)(a2, a4);
}

uint64_t CamBridgeImpl.probePluginActionForActionParaphrase(pluginAction:conversationHelper:conversationHelperInput:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v5 = CamBridgeImpl.probePluginActionForActionParaphrase(pluginAction:conversationHelper:conversationHelperInput:);
  }

  else
  {
    v5 = CamBridgeImpl.probePluginActionForActionParaphrase(pluginAction:conversationHelper:conversationHelperInput:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t CamBridgeImpl.probePluginActionForActionParaphrase(pluginAction:conversationHelper:conversationHelperInput:)()
{
  v1 = v0[20];
  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](CamBridgeImpl.probePluginActionForActionParaphrase(pluginAction:conversationHelper:conversationHelperInput:), v1, 0);
  }

  else
  {

    v2 = v0[9];
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
    (*(*(v3 - 8) + 56))(v2, 2, 2, v3);

    v4 = v0[1];

    return v4();
  }
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = type metadata accessor for Logger();
  v0[22] = __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationClient.swift", 45, 2, "paraphrase()", 12, 2);
  v3 = v1[19];
  v4 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v3);
  v9 = (*(v4 + 8) + **(v4 + 8));
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = CamBridgeImpl.probePluginActionForActionParaphrase(pluginAction:conversationHelper:conversationHelperInput:);
  v6 = v0[17];
  v7 = v0[15];

  return v9(v6, &async function pointer to closure #1 in RemoteConversationClient.paraphrase(), 0, v7, v3, v4);
}

{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    v4 = CamBridgeImpl.probePluginActionForActionParaphrase(pluginAction:conversationHelper:conversationHelperInput:);
  }

  else
  {
    v4 = CamBridgeImpl.probePluginActionForActionParaphrase(pluginAction:conversationHelper:conversationHelperInput:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v32 = v0;
  v1 = v0[17];
  v2 = v0[16];

  outlined init with copy of ConversationHelperInput(v1, v2, type metadata accessor for ConversationParaphraseResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = v0[16];
    v5 = *v3;
    v4 = v3[1];
    (*(v0[12] + 16))(v0[14], v0[10], v0[11]);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[17];
    v10 = v0[14];
    v11 = v0[11];
    v12 = v0[12];
    if (v8)
    {
      v28 = v5;
      v13 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31 = v29;
      *v13 = 136315394;
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type PluginAction and conformance PluginAction, MEMORY[0x1E69CFE08], MEMORY[0x1E69CFE18]);
      v30 = v9;
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      (*(v12 + 8))(v10, v11);
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v31);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v4, &v31);

      *(v13 + 14) = v18;
      _os_log_impl(&dword_1DC659000, v6, v7, "CamBridge: Received ActionParaphrase for %s with error %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v29, -1, -1);
      MEMORY[0x1E12A2F50](v13, -1, -1);

      v19 = v30;
    }

    else
    {

      (*(v12 + 8))(v10, v11);
      v19 = v9;
    }

    outlined destroy of ParaphraseProbeResult(v19, type metadata accessor for ConversationParaphraseResult);
    v23 = 1;
  }

  else
  {
    v20 = v0[16];
    v21 = v0[9];
    outlined destroy of ParaphraseProbeResult(v0[17], type metadata accessor for ConversationParaphraseResult);

    v22 = type metadata accessor for ActionParaphrase();
    (*(*(v22 - 8) + 32))(v21, v20, v22);
    v23 = 0;
  }

  v24 = v0[9];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
  (*(*(v25 - 8) + 56))(v24, v23, 2, v25);

  v26 = v0[1];

  return v26();
}

{
  v28 = v0;

  v1 = v0[24];

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.executor);
  (*(v3 + 16))(v2, v5, v4);
  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[12];
  v11 = v0[13];
  v13 = v0[11];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v14 = 136315394;
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type PluginAction and conformance PluginAction, MEMORY[0x1E69CFE08], MEMORY[0x1E69CFE18]);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v27);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v19 = Error.localizedDescription.getter();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v27);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_1DC659000, v8, v9, "CamBridge: Did not receive any ActionParaphrase for %s. %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v26, -1, -1);
    MEMORY[0x1E12A2F50](v14, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v22 = v0[9];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
  (*(*(v23 - 8) + 56))(v22, 1, 2, v23);

  v24 = v0[1];

  return v24();
}

{
  v28 = v0;
  v1 = v0[21];

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.executor);
  (*(v3 + 16))(v2, v5, v4);
  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[12];
  v11 = v0[13];
  v13 = v0[11];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v14 = 136315394;
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type PluginAction and conformance PluginAction, MEMORY[0x1E69CFE08], MEMORY[0x1E69CFE18]);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v27);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v19 = Error.localizedDescription.getter();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v27);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_1DC659000, v8, v9, "CamBridge: Did not receive any ActionParaphrase for %s. %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v26, -1, -1);
    MEMORY[0x1E12A2F50](v14, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v22 = v0[9];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
  (*(*(v23 - 8) + 56))(v22, 1, 2, v23);

  v24 = v0[1];

  return v24();
}

uint64_t implicit closure #3 in CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  v5[7] = swift_task_alloc();
  v6 = type metadata accessor for PluginAction();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](implicit closure #3 in CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:), 0, 0);
}

void implicit closure #3 in CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:)()
{
  if (*(v0[4] + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v2 = v0[10];
    v3 = v0[7];
    type metadata accessor for RankedAction();
    v4 = type metadata accessor for ActionParaphrase();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    RankedAction.toPluginAction(withSpeechPackage:withParaphrase:)(0, v3, v2);
    outlined destroy of ReferenceResolutionClientProtocol?(v3, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v5[1] = implicit closure #3 in CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:);
    v6 = v0[10];
    v7 = v0[5];
    v8 = v0[6];
    v9 = v0[2];

    CamBridgeImpl.probePluginActionForActionParaphrase(pluginAction:conversationHelper:conversationHelperInput:)(v9, v6, v7, v8);
  }
}

uint64_t ParaphraseProbeResult.toActionParaphrase()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ParaphraseProbeResult(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ConversationHelperInput(v2, v6, type metadata accessor for ParaphraseProbeResult);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
  v8 = (*(*(v7 - 8) + 48))(v6, 2, v7);
  v9 = type metadata accessor for ActionParaphrase();
  v10 = *(v9 - 8);
  v11 = v10;
  if (v8)
  {
    (*(v10 + 56))(a1, 1, 1, v9);
    return outlined destroy of ParaphraseProbeResult(v6, type metadata accessor for ParaphraseProbeResult);
  }

  else
  {
    (*(v10 + 32))(a1, v6, v9);
    return (*(v11 + 56))(a1, 0, 1, v9);
  }
}

Swift::Void __swiftcall CamBridgeImpl.cancel()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.executor);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1DC659000, v12, v13, "CamBridge: Cancel signal received. Clearing CamBridge State.", v14, 2u);
    MEMORY[0x1E12A2F50](v14, -1, -1);
  }

  v15 = type metadata accessor for UUID();
  v16 = *(*(v15 - 8) + 56);
  v16(v10, 1, 1, v15);
  v16(v7, 1, 1, v15);
  v16(v4, 1, 1, v15);
  type metadata accessor for CamBridgeState(0);
  v17 = swift_allocObject();
  *(v17 + 16) = MEMORY[0x1E69E7CC8];
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v10, v17 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_requestLoggingId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v7, v17 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_camLoggingId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v4, v17 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_caarLoggingId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  swift_beginAccess();
  *(v1 + 240) = v17;

  CamBridgeImpl.camBridgeState.didset();
}

uint64_t CamBridgeImpl.commit(rcId:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static MessageBusActor.shared;
  v3[11] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.commit(rcId:), v4, 0);
}

uint64_t CamBridgeImpl.commit(rcId:)()
{
  v21 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[8];
    v4 = v0[9];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v20);
    _os_log_impl(&dword_1DC659000, v2, v3, "CamBridge: Commit with rcId: %s.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A2F50](v7, -1, -1);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  v8 = v0[9];
  v9 = v0[8];
  swift_beginAccess();

  v10._countAndFlagsBits = v9;
  v10._object = v8;
  v11.value = CamBridgeState.getCamAction(rcId:)(v10).value;

  if (v11.value == SiriKitRuntime_ConversationAction_unknownDefault)
  {

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v15 = v0[8];
      v14 = v0[9];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v20 = v17;
      *v16 = 136315138;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v20);
      _os_log_impl(&dword_1DC659000, v12, v13, "CamBridge: Could not find camAction for rcId: %s. Possibly a followup", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1E12A2F50](v17, -1, -1);
      MEMORY[0x1E12A2F50](v16, -1, -1);
    }

    v11.value = SiriKitRuntime_ConversationAction_executeTopHypothesis;
  }

  v18 = swift_task_alloc();
  v0[12] = v18;
  *v18 = v0;
  v18[1] = CamBridgeImpl.commit(rcId:);

  return CamBridgeImpl.commit(action:)(v11.value);
}

{
  v1 = *(*v0 + 88);

  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.commit(rcId:), v1, 0);
}

{
  v1 = *(v0 + 80);

  $defer #1 () in CamBridgeImpl.commit(rcId:)(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t $defer #1 () in CamBridgeImpl.commit(rcId:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 1, 1, v11);
  v12(v7, 1, 1, v11);
  v12(v4, 1, 1, v11);
  type metadata accessor for CamBridgeState(0);
  v13 = swift_allocObject();
  *(v13 + 16) = MEMORY[0x1E69E7CC8];
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v10, v13 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_requestLoggingId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v7, v13 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_camLoggingId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v4, v13 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_caarLoggingId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  swift_beginAccess();
  *(a1 + 240) = v13;

  CamBridgeImpl.camBridgeState.didset();
}

uint64_t CamBridgeImpl.commit(action:)(char a1)
{
  *(v2 + 224) = v1;
  *(v2 + 59) = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *(v2 + 232) = static MessageBusActor.shared;

  v3 = swift_task_alloc();
  *(v2 + 240) = v3;
  *v3 = v2;
  v3[1] = CamBridgeImpl.commit(action:);

  return CamBridgeImpl.waitForCamWarmup()();
}

uint64_t CamBridgeImpl.commit(action:)()
{
  v1 = *(*v0 + 232);

  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.commit(action:), v1, 0);
}

{
  v21 = v0;
  v1 = *(v0 + 224);

  swift_beginAccess();
  outlined init with copy of CamBridgeImpl.CamState((v1 + 144), v0 + 16);
  v2 = *(v0 + 57);
  if (v2 == 1)
  {
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 16), v0 + 112);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.executor);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 59);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315138;
      *(v0 + 58) = v11;
      v14 = String.init<A>(describing:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v20);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1DC659000, v9, v10, "CamBridge: Setting previous cam action to: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1E12A2F50](v13, -1, -1);
      MEMORY[0x1E12A2F50](v12, -1, -1);
    }

    v17 = *(v0 + 59);
    outlined init with copy of ReferenceResolutionClientProtocol(v0 + 112, v0 + 64);
    *(v0 + 104) = v17;
    *(v0 + 105) = 1;
    swift_beginAccess();
    outlined assign with copy of CamBridgeImpl.CamState((v0 + 64), v1 + 144);
    swift_endAccess();
    CamBridgeImpl.camState.didset();
    outlined destroy of CamBridgeImpl.CamState(v0 + 64);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  }

  else if (v2 != 3 || *(v0 + 56) || (v3 = vorrq_s8(*(v0 + 24), *(v0 + 40)), *&vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)) | *(v0 + 16)))
  {
    outlined destroy of CamBridgeImpl.CamState(v0 + 16);
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.executor);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DC659000, v5, v6, "CamBridge: Commit called while CamBridge in uninitialized state. Ignoring.", v7, 2u);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t *a1))()
{
  v2 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = type metadata accessor for UUID();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = specialized Dictionary._Variant.subscript.modify(v4, v9);
  return Dictionary.subscript.modifyspecialized ;
}

void Dictionary.subscript.modifyspecialized (void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

void *CamBridgeImpl.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 56, &_s14SiriKitRuntime13CaarProviding_pSgMd, &_s14SiriKitRuntime13CaarProviding_pSgMR);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));
  outlined destroy of CamBridgeImpl.CamState(v0 + 144);
  outlined destroy of CamBridgeImpl.CaarState(v0 + 192);

  return v0;
}

uint64_t CamBridgeImpl.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 56, &_s14SiriKitRuntime13CaarProviding_pSgMd, &_s14SiriKitRuntime13CaarProviding_pSgMR);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));
  outlined destroy of CamBridgeImpl.CamState(v0 + 144);
  outlined destroy of CamBridgeImpl.CaarState(v0 + 192);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for CamBridge.action(requestId:camId:rcId:speechPackage:rankedActions:inputOrigin:) in conformance CamBridgeImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return CamBridgeImpl.action(requestId:camId:rcId:speechPackage:rankedActions:inputOrigin:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t protocol witness for CamBridge.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:) in conformance CamBridgeImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t protocol witness for CamBridge.commit(rcId:) in conformance CamBridgeImpl(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return CamBridgeImpl.commit(rcId:)(a1, a2);
}

uint64_t protocol witness for CamBridge.commit(action:) in conformance CamBridgeImpl(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return CamBridgeImpl.commit(action:)(a1);
}

uint64_t protocol witness for CamBridge.rank(rcId:actions:rankerContext:) in conformance CamBridgeImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return CamBridgeImpl.rank(rcId:actions:rankerContext:)(a1, a2, a3, a4);
}

void *RealCamProvider.provideCamInstance(camEnabledFeatures:)@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CamSingletonProvider();
  result = static CamSingletonProvider.cam(camEnabledFeatures:)();
  if (!v2)
  {
    v5 = type metadata accessor for RealCamWrapper();
    v6 = swift_allocObject();
    result = outlined init with take of ReferenceResolutionClientProtocol(&v7, v6 + 16);
    a2[3] = v5;
    a2[4] = &protocol witness table for RealCamWrapper;
    *a2 = v6;
  }

  return result;
}

uint64_t RealCamWrapper.__allocating_init(wrapping:)(__int128 *a1)
{
  v2 = swift_allocObject();
  outlined init with take of ReferenceResolutionClientProtocol(a1, v2 + 16);
  return v2;
}

uint64_t RealCaarProvider.provideCaarInstance()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CaarProvider();
  static CaarProvider.caar()();
  v2 = type metadata accessor for RealCaarWrapper();
  v3 = swift_allocObject();
  result = outlined init with take of ReferenceResolutionClientProtocol(&v5, v3 + 16);
  a1[3] = v2;
  a1[4] = &protocol witness table for RealCaarWrapper;
  *a1 = v3;
  return result;
}

uint64_t RealCamWrapper.getCamAction(request:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for CamResponse();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](RealCamWrapper.getCamAction(request:), 0, 0);
}

uint64_t RealCamWrapper.getCamAction(request:)()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  __swift_project_boxed_opaque_existential_1((v0[4] + 16), *(v0[4] + 40));
  dispatch thunk of Cam.action(request:)();
  CamResponse.camAction.getter();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t protocol witness for CamActionProviding.getCamAction(request:) in conformance RealCamWrapper(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = type metadata accessor for CamResponse();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *v2;
  v3[6] = v5;
  v3[7] = v6;

  return MEMORY[0x1EEE6DFA0](protocol witness for CamActionProviding.getCamAction(request:) in conformance RealCamWrapper, 0, 0);
}

uint64_t protocol witness for CamActionProviding.getCamAction(request:) in conformance RealCamWrapper()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  __swift_project_boxed_opaque_existential_1((v0[7] + 16), *(v0[7] + 40));
  dispatch thunk of Cam.action(request:)();
  CamResponse.camAction.getter();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t RealCaarWrapper.getCaarRanking(requestId:caarId:rcId:actions:rankerContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](RealCaarWrapper.getCaarRanking(requestId:caarId:rcId:actions:rankerContext:), 0, 0);
}

uint64_t RealCaarWrapper.getCaarRanking(requestId:caarId:rcId:actions:rankerContext:)()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 64) + 16), *(*(v0 + 64) + 40));
  v1 = dispatch thunk of Caar.rank(requestId:caarId:rcId:actions:rankerContext:)();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t protocol witness for CaarRankingProviding.getCaarRanking(requestId:caarId:rcId:actions:rankerContext:) in conformance RealCaarWrapper(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a5;
  v7[7] = a6;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  v7[8] = *v6;
  return MEMORY[0x1EEE6DFA0](RealCaarWrapper.getCaarRanking(requestId:caarId:rcId:actions:rankerContext:), 0, 0);
}

uint64_t ParaphraseProbeResult.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ActionParaphrase();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ParaphraseProbeResult(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ConversationHelperInput(v1, v8, type metadata accessor for ParaphraseProbeResult);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
  v10 = (*(*(v9 - 8) + 48))(v8, 2, v9);
  if (v10)
  {
    if (v10 == 1)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0xD00000000000001DLL;
    }
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ActionParaphrase and conformance ActionParaphrase, MEMORY[0x1E69CFE90], MEMORY[0x1E69CFEA8]);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    (*(v3 + 8))(v5, v2);
    return v12;
  }
}

void (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = type metadata accessor for UUID();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = specialized Dictionary._Variant.asNative.modify(v6);
  v6[12] = specialized _NativeDictionary.subscript.modify(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void Dictionary._Variant.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*specialized _NativeDictionary.subscript.modify(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = type metadata accessor for UUID();
  *(v10 + 24) = v11;
  v12 = *(v11 - 8);
  *(v10 + 32) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 40) = v13;
  v14 = *v4;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(v10 + 56) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      specialized _NativeDictionary.copy()();
      v15 = v23;
      goto LABEL_14;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a3 & 1);
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v15;
  if (v21)
  {
    v25 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v25 = 0;
  }

  *v10 = v25;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = *v1[2];
    v4 = v1[6];
    if ((*a1)[7])
    {
      *(v3[7] + 8 * v4) = v2;
    }

    else
    {
      v7 = v1[5];
      (*(v1[4] + 16))(v7, v1[1], v1[3]);
      specialized _NativeDictionary._insert(at:key:value:)(v4, v7, v2, v3);
    }
  }

  else if ((*a1)[7])
  {
    v5 = v1[6];
    v6 = *v1[2];
    (*(v1[4] + 8))(*(v6 + 48) + *(v1[4] + 72) * v5, v1[3]);
    specialized _NativeDictionary._delete(at:)(v5, v6);
  }

  v8 = v1[5];

  free(v8);

  free(v1);
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

uint64_t specialized CamBridgeImpl.init(forceSupported:camProvider:caarProvider:trialExperimentManager:)(unsigned __int8 a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v35 - v16;
  v47 = &type metadata for RealCamProvider;
  v48 = &protocol witness table for RealCamProvider;
  v44 = type metadata accessor for TrialExperimentationAssetManager();
  v45 = &protocol witness table for TrialExperimentationAssetManager;
  *&v43 = a3;
  *(a4 + 96) = MEMORY[0x1E69E7CC0];
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  if (v8 != 2)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v40, &_s14SiriKitRuntime13CaarProviding_pSgMd, &_s14SiriKitRuntime13CaarProviding_pSgMR);
    if (a1)
    {
      v26 = 0;
      v27 = a2[1];
      v40 = *a2;
      v41 = v27;
      v42 = *(a2 + 4);
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(a2, &_s14SiriKitRuntime13CaarProviding_pSgMd, &_s14SiriKitRuntime13CaarProviding_pSgMR);
      v40 = 0u;
      v41 = 0u;
      v42 = 0;
      v26 = 1;
    }

    *(a4 + 192) = v26;
    v29 = 0uLL;
    *(a4 + 200) = 0u;
    *(a4 + 216) = 0u;
    *(a4 + 232) = 3;
    *(a4 + 144) = (a1 & 1) == 0;
    goto LABEL_19;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.executor);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1DC659000, v19, v20, "CamBridge: CAAR is supported on this device", v21, 2u);
    MEMORY[0x1E12A2F50](v21, -1, -1);
  }

  *(a4 + 192) = 0u;
  *(a4 + 224) = 0;
  *(a4 + 208) = 0u;
  *(a4 + 232) = 3;
  outlined destroy of ReferenceResolutionClientProtocol?(&v40, &_s14SiriKitRuntime13CaarProviding_pSgMd, &_s14SiriKitRuntime13CaarProviding_pSgMR);
  *(&v41 + 1) = &type metadata for RealCaarProvider;
  v42 = &protocol witness table for RealCaarProvider;
  swift_beginAccess();
  outlined init with copy of CamBridgeImpl.CaarState((a4 + 192), &v36);
  if (v39 == 3 && v36 == 1)
  {
    v22 = vorrq_s8(v37, v38);
    if (!*&vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL)))
    {
      outlined destroy of CamBridgeImpl.CaarState(&v36);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_1DC659000, v23, v24, "CamBridge: Marking CAM as unsupported as CAM cannot work without CAAR results", v25, 2u);
        MEMORY[0x1E12A2F50](v25, -1, -1);
      }

      outlined destroy of ReferenceResolutionClientProtocol?(a2, &_s14SiriKitRuntime13CaarProviding_pSgMd, &_s14SiriKitRuntime13CaarProviding_pSgMR);
      goto LABEL_16;
    }
  }

  outlined destroy of CamBridgeImpl.CaarState(&v36);
  v28 = specialized static CamBridgeImpl.isCamSupportedOnThisDevice.getter();
  outlined destroy of ReferenceResolutionClientProtocol?(a2, &_s14SiriKitRuntime13CaarProviding_pSgMd, &_s14SiriKitRuntime13CaarProviding_pSgMR);
  if ((v28 & 1) == 0)
  {
LABEL_16:
    *(a4 + 144) = 1;
    v29 = 0uLL;
LABEL_19:
    *(a4 + 152) = v29;
    *(a4 + 168) = v29;
    *(a4 + 184) = 0;
    goto LABEL_20;
  }

  *(a4 + 169) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 160) = 0u;
LABEL_20:
  *(a4 + 185) = 3;
  v30 = type metadata accessor for UUID();
  v31 = *(*(v30 - 8) + 56);
  v31(v17, 1, 1, v30);
  v31(v14, 1, 1, v30);
  v31(v11, 1, 1, v30);
  type metadata accessor for CamBridgeState(0);
  v32 = swift_allocObject();
  *(v32 + 16) = MEMORY[0x1E69E7CC8];
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v17, v32 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_requestLoggingId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v14, v32 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_camLoggingId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v11, v32 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_caarLoggingId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(a4 + 240) = v32;
  outlined init with take of ReferenceResolutionClientProtocol(&v46, a4 + 16);
  v33 = v41;
  *(a4 + 56) = v40;
  *(a4 + 72) = v33;
  *(a4 + 88) = v42;
  outlined init with take of ReferenceResolutionClientProtocol(&v43, a4 + 104);
  return a4;
}

uint64_t specialized CamBridgeImpl.init(forceSupported:camProvider:caarProvider:trialExperimentManager:)(unsigned __int8 a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v45 = a3;
  v16 = a1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v47 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v46 = &v45 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v45 - v22;
  v59 = a6;
  v60 = a8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v58);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a2, a6);
  v56 = a7;
  v57 = a9;
  v25 = __swift_allocate_boxed_opaque_existential_0(&v55);
  (*(*(a7 - 8) + 32))(v25, a4, a7);
  *(a5 + 96) = MEMORY[0x1E69E7CC0];
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  if (v16 != 2)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v52, &_s14SiriKitRuntime13CaarProviding_pSgMd, &_s14SiriKitRuntime13CaarProviding_pSgMR);
    if (a1)
    {
      v34 = 0;
      v35 = v45[1];
      v52 = *v45;
      v53 = v35;
      v54 = *(v45 + 4);
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v45, &_s14SiriKitRuntime13CaarProviding_pSgMd, &_s14SiriKitRuntime13CaarProviding_pSgMR);
      v52 = 0u;
      v53 = 0u;
      v54 = 0;
      v34 = 1;
    }

    *(a5 + 192) = v34;
    v37 = 0uLL;
    *(a5 + 200) = 0u;
    *(a5 + 216) = 0u;
    *(a5 + 232) = 3;
    *(a5 + 144) = (a1 & 1) == 0;
    goto LABEL_19;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.executor);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1DC659000, v27, v28, "CamBridge: CAAR is supported on this device", v29, 2u);
    MEMORY[0x1E12A2F50](v29, -1, -1);
  }

  *(a5 + 192) = 0u;
  *(a5 + 224) = 0;
  *(a5 + 208) = 0u;
  *(a5 + 232) = 3;
  outlined destroy of ReferenceResolutionClientProtocol?(&v52, &_s14SiriKitRuntime13CaarProviding_pSgMd, &_s14SiriKitRuntime13CaarProviding_pSgMR);
  *(&v53 + 1) = &type metadata for RealCaarProvider;
  v54 = &protocol witness table for RealCaarProvider;
  swift_beginAccess();
  outlined init with copy of CamBridgeImpl.CaarState((a5 + 192), &v48);
  if (v51 == 3 && v48 == 1)
  {
    v30 = vorrq_s8(v49, v50);
    if (!*&vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL)))
    {
      outlined destroy of CamBridgeImpl.CaarState(&v48);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1DC659000, v31, v32, "CamBridge: Marking CAM as unsupported as CAM cannot work without CAAR results", v33, 2u);
        MEMORY[0x1E12A2F50](v33, -1, -1);
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v45, &_s14SiriKitRuntime13CaarProviding_pSgMd, &_s14SiriKitRuntime13CaarProviding_pSgMR);
      goto LABEL_16;
    }
  }

  outlined destroy of CamBridgeImpl.CaarState(&v48);
  v36 = specialized static CamBridgeImpl.isCamSupportedOnThisDevice.getter();
  outlined destroy of ReferenceResolutionClientProtocol?(v45, &_s14SiriKitRuntime13CaarProviding_pSgMd, &_s14SiriKitRuntime13CaarProviding_pSgMR);
  if ((v36 & 1) == 0)
  {
LABEL_16:
    *(a5 + 144) = 1;
    v37 = 0uLL;
LABEL_19:
    *(a5 + 152) = v37;
    *(a5 + 168) = v37;
    *(a5 + 184) = 0;
    goto LABEL_20;
  }

  *(a5 + 169) = 0u;
  *(a5 + 144) = 0u;
  *(a5 + 160) = 0u;
LABEL_20:
  *(a5 + 185) = 3;
  v38 = type metadata accessor for UUID();
  v39 = *(*(v38 - 8) + 56);
  v39(v23, 1, 1, v38);
  v40 = v46;
  v39(v46, 1, 1, v38);
  v41 = v47;
  v39(v47, 1, 1, v38);
  type metadata accessor for CamBridgeState(0);
  v42 = swift_allocObject();
  *(v42 + 16) = MEMORY[0x1E69E7CC8];
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v23, v42 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_requestLoggingId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v40, v42 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_camLoggingId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v41, v42 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_caarLoggingId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(a5 + 240) = v42;
  outlined init with take of ReferenceResolutionClientProtocol(&v58, a5 + 16);
  v43 = v53;
  *(a5 + 56) = v52;
  *(a5 + 72) = v43;
  *(a5 + 88) = v54;
  outlined init with take of ReferenceResolutionClientProtocol(&v55, a5 + 104);
  return a5;
}

char *specialized static CamBridgeImpl.collateParses(rcId:rankedActions:)(uint64_t a1, uint64_t a2, void *a3)
{
  v131 = a2;
  v130 = a1;
  v179 = type metadata accessor for UUID();
  v159 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v173 = (&v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v128 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v157 = &v128 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v158 = &v128 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v174 = &v128 - v13;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
  v178 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v172 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v145 = &v128 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v166 = &v128 - v18;
  v154 = type metadata accessor for Siri_Nlu_External_UserParse();
  v181 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v153 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v143 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v141 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow21AppShortcutInvocationOSgMd, &_s11SiriKitFlow21AppShortcutInvocationOSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v156 = &v128 - v22;
  v23 = type metadata accessor for AppShortcutInvocation();
  v170 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v176 = type metadata accessor for CamParse();
  v147 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v171 = &v128 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v162 = &v128 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v165 = &v128 - v30;
  v31 = type metadata accessor for CamUSOParse();
  v168 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v128 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = type metadata accessor for RankedAction();
  v175 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v129 = &v128 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v128 - v36;
  if (one-time initialization token for executor != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v38 = type metadata accessor for Logger();
    v39 = __swift_project_value_buffer(v38, static Logger.executor);

    v134 = v39;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    v42 = os_log_type_enabled(v40, v41);
    v155 = v23;
    v135 = v25;
    v161 = v31;
    v160 = v33;
    if (v42)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v184 = v44;
      *v43 = 134218242;
      *(v43 + 4) = a3[2];

      *(v43 + 12) = 2080;
      v45 = MEMORY[0x1E12A16D0](a3, v183);
      v25 = a3;
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v184);

      *(v43 + 14) = v33;
      _os_log_impl(&dword_1DC659000, v40, v41, "CamBridge: Collating %ld actions %s", v43, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x1E12A2F50](v44, -1, -1);
      MEMORY[0x1E12A2F50](v43, -1, -1);
    }

    else
    {
    }

    v188 = MEMORY[0x1E69E7CC8];
    v189 = MEMORY[0x1E69E7CC0];
    v187 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SayAEGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v47 = a3[2];
    if (v47)
    {
      v177 = 0x80000001DCA7CC80;
      v180 = *(v175 + 16);
      a3 = (a3 + ((*(v175 + 80) + 32) & ~*(v175 + 80)));
      v169 = *(v175 + 72);
      v164 = (v147 + 88);
      v163 = *MEMORY[0x1E69CE300];
      v151 = (v147 + 8);
      v150 = (v147 + 96);
      v149 = (v168 + 4);
      v148 = (v181 + 8);
      v140 = v143 + 16;
      v139 = v143 + 8;
      v138 = (v170 + 6);
      v133 = (v170 + 4);
      v132 = (v170 + 1);
      v152 = (v168 + 1);
      v136 = (v170 + 7);
      v144 = v147 + 32;
      v170 = (v178 + 56);
      v137 = v159 + 32;
      v168 = (v159 + 8);
      v181 = v175 + 16;
      v167 = (v175 + 8);
      v146 = v159 + 16;
      (v180)(v37, a3, v183);
      while (1)
      {
        if (RankedAction.flowHandlerId.getter() == 0xD000000000000021 && v177 == v48)
        {
        }

        else
        {
          v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v49 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        v50 = v165;
        RankedAction.parse.getter();
        v51 = v176;
        v52 = (*v164)(v50, v176);
        if (v52 != v163)
        {
          break;
        }

        (*v150)(v50, v51);
        v53 = v160;
        v54 = v161;
        (*v149)(v160, v50, v161);
        v55 = v153;
        v56 = CamUSOParse.userParse.getter();
        v57 = MEMORY[0x1E129C0F0](v56);
        (*v148)(v55, v154);
        if (!*(v57 + 16))
        {
          (*v152)(v53, v54);

          v61 = v156;
          (*v136)(v156, 1, 1, v155);
LABEL_21:
          outlined destroy of ReferenceResolutionClientProtocol?(v61, &_s11SiriKitFlow21AppShortcutInvocationOSgMd, &_s11SiriKitFlow21AppShortcutInvocationOSgMR);
LABEL_22:
          v23 = RankedAction.flowHandlerId.getter();
          v64 = v63;
          goto LABEL_23;
        }

        v58 = v143;
        v59 = v141;
        v60 = v142;
        (*(v143 + 16))(v141, v57 + ((*(v58 + 80) + 32) & ~*(v58 + 80)), v142);

        LOBYTE(v184) = 1;
        v61 = v156;
        Siri_Nlu_External_UserDialogAct.extractAppShortcutInvocation(groupIndex:)();
        (*(v58 + 8))(v59, v60);
        v62 = v155;
        if ((*v138)(v61, 1, v155) == 1)
        {
          (*v152)(v160, v161);
          goto LABEL_21;
        }

        v101 = v135;
        (*v133)(v135, v61, v62);
        v102 = AppShortcutInvocation.actionIdentifier.getter();
        if (!v103)
        {
          (*v132)(v101, v62);
          (*v152)(v160, v161);
          goto LABEL_22;
        }

        v104 = v102;
        v105 = v103;
        v184 = RankedAction.flowHandlerId.getter();
        v185 = v106;
        MEMORY[0x1E12A1580](46, 0xE100000000000000);
        v107 = AppShortcutInvocation.bundleId.getter();
        MEMORY[0x1E12A1580](v107);

        MEMORY[0x1E12A1580](46, 0xE100000000000000);
        MEMORY[0x1E12A1580](v104, v105);

        v23 = v184;
        v64 = v185;
        (*v132)(v101, v62);
        (*v152)(v160, v161);
LABEL_23:
        v25 = v7;

        v65 = v188;
        if (!*(v188 + 2))
        {

LABEL_36:
          v31 = v182;
          v87 = *(v182 + 48);
          v33 = v174;
          (v180)(v174, v37, v183);
          *&v33[v87] = MEMORY[0x1E69E7CC0];
          (*v170)(v33, 0, 1, v31);
          specialized SimpleOrderedDictionary.subscript.setter(v33, v23, v64);
          v7 = v25;
          RankedAction.loggingId.getter();
          v88 = v187;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v184 = v88;
          v90 = specialized __RawDictionaryStorage.find<A>(_:)(v25);
          v92 = *(v88 + 16);
          v93 = (v91 & 1) == 0;
          v94 = __OFADD__(v92, v93);
          v95 = v92 + v93;
          if (v94)
          {
            goto LABEL_65;
          }

          v96 = v91;
          if (*(v88 + 24) >= v95)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_41;
            }

            v31 = v90;
            specialized _NativeDictionary.copy()();
            v90 = v31;
            v98 = v184;
            if (v96)
            {
              goto LABEL_7;
            }

LABEL_42:
            v98[(v90 >> 6) + 8] |= 1 << v90;
            v23 = v90;
            (*(v159 + 2))(v98[6] + *(v159 + 9) * v90, v25, v179);
            *(v98[7] + 8 * v23) = MEMORY[0x1E69E7CC0];
            v99 = v98[2];
            v94 = __OFADD__(v99, 1);
            v100 = v99 + 1;
            if (v94)
            {
              goto LABEL_66;
            }

            v98[2] = v100;
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v95, isUniquelyReferenced_nonNull_native);
            v90 = specialized __RawDictionaryStorage.find<A>(_:)(v25);
            if ((v96 & 1) != (v97 & 1))
            {
              result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return result;
            }

LABEL_41:
            v98 = v184;
            if ((v96 & 1) == 0)
            {
              goto LABEL_42;
            }

LABEL_7:
            *(v98[7] + 8 * v90) = MEMORY[0x1E69E7CC0];
          }

          (*v168)(v25, v179);
          v187 = v98;
          (*v167)(v37, v183);
          goto LABEL_9;
        }

        v66 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v64);
        v68 = v67;

        if ((v68 & 1) == 0)
        {
          goto LABEL_36;
        }

        v69 = *(v65 + 56) + *(v178 + 72) * v66;
        v70 = v145;
        outlined init with copy of ReferenceResolutionClientProtocol?(v69, v145, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
        v71 = v166;
        outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v70, v166, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
        RankedAction.parse.getter();
        v72 = *(v182 + 48);
        v73 = *(v71 + v72);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v73[2] + 1, 1, v73);
        }

        v75 = v73[2];
        v74 = v73[3];
        if (v75 >= v74 >> 1)
        {
          v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75 + 1, 1, v73);
        }

        v73[2] = v75 + 1;
        (*(v147 + 32))(v73 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v75, v162, v176);
        v33 = v166;
        *&v166[v72] = v73;
        v76 = v174;
        outlined init with copy of ReferenceResolutionClientProtocol?(v33, v174, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
        (*v170)(v76, 0, 1, v182);
        specialized SimpleOrderedDictionary.subscript.setter(v76, v23, v64);
        v77 = v158;
        RankedAction.loggingId.getter();
        v79 = specialized Dictionary.subscript.modify(&v184);
        if (*v78)
        {
          v80 = v78;
          RankedAction.loggingId.getter();
          v81 = *v80;
          v82 = swift_isUniquelyReferenced_nonNull_native();
          *v80 = v81;
          v7 = v25;
          if ((v82 & 1) == 0)
          {
            v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v81[2] + 1, 1, v81);
            *v80 = v81;
          }

          v84 = v81[2];
          v83 = v81[3];
          if (v84 >= v83 >> 1)
          {
            v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v84 + 1, 1, v81);
            *v80 = v81;
          }

          v81[2] = v84 + 1;
          v33 = v159;
          v85 = v81 + ((v33[80] + 32) & ~v33[80]) + *(v33 + 9) * v84;
          v86 = v179;
          (*(v159 + 4))(v85, v157, v179);
          (v79)(&v184, 0);
          (*(v33 + 1))(v158, v86);
          (*v167)(v37, v183);
          outlined destroy of ReferenceResolutionClientProtocol?(v166, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
        }

        else
        {
          (v79)(&v184, 0);
          (*v168)(v77, v179);
          (*v167)(v37, v183);
          outlined destroy of ReferenceResolutionClientProtocol?(v33, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
          v7 = v25;
        }

LABEL_9:
        a3 = (a3 + v169);
        if (!--v47)
        {
          goto LABEL_50;
        }

        (v180)(v37, a3, v183);
      }

      (*v151)(v50, v51);
      goto LABEL_22;
    }

LABEL_50:
    v108 = Logger.logObject.getter();
    v109 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v184 = v25;
      *v110 = 136315138;
      swift_beginAccess();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4UUIDVGMd, &_sSay10Foundation4UUIDVGMR);
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v111 = Dictionary.description.getter();
      v113 = v112;

      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v113, &v184);

      *(v110 + 4) = v33;
      _os_log_impl(&dword_1DC659000, v108, v109, "CamBridge: Collated action candidates for logging: %s", v110, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1E12A2F50](v25, -1, -1);
      MEMORY[0x1E12A2F50](v110, -1, -1);
    }

    type metadata accessor for ConversationSELFHelper();
    static ConversationSELFHelper.shared.getter();
    swift_beginAccess();
    v114 = v187;

    dispatch thunk of ConversationSELFHelper.emitActionCandidatesCollated(rcId:collatedActions:)();

    v176 = v114;

    v174 = v188;
    v170 = v189;
    v115 = specialized SimpleOrderedDictionary.values()(v188, v189);
    v23 = v115[2];
    v116 = v129;
    if (!v23)
    {
      break;
    }

    v186 = MEMORY[0x1E69E7CC0];
    v37 = v115;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
    v117 = v37;
    v31 = 0;
    v7 = v186;
    v180 = (v37 + ((*(v178 + 80) + 32) & ~*(v178 + 80)));
    v179 = v175 + 32;
    v181 = v37;
    v177 = v23;
    a3 = v173;
    while (v31 < *(v117 + 16))
    {
      v118 = v172;
      v25 = v7;
      outlined init with copy of ReferenceResolutionClientProtocol?(&v180[*(v178 + 72) * v31], v172, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
      RankedAction.flowHandlerId.getter();
      RankedAction.parse.getter();
      RankedAction.score.getter();
      RankedAction.loggingId.getter();

      RankedAction.userData.getter();
      RankedAction.init(flowHandlerId:parse:score:loggingId:alternatives:userData:)();
      outlined destroy of ReferenceResolutionClientProtocol?(v118, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
      v186 = v7;
      v37 = *(v7 + 2);
      v119 = *(v7 + 3);
      v33 = (v37 + 1);
      if (v37 >= v119 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v119 > 1), v37 + 1, 1);
        v7 = v186;
      }

      ++v31;
      *(v7 + 2) = v33;
      (*(v175 + 32))(&v7[((*(v175 + 80) + 32) & ~*(v175 + 80)) + *(v175 + 72) * v37], v116, v183);
      v23 = v177;
      v117 = v181;
      if (v177 == v31)
      {

        goto LABEL_60;
      }
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_60:

  v120 = Logger.logObject.getter();
  v121 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    v186 = v123;
    *v122 = 134218242;
    *(v122 + 4) = *(v7 + 2);

    *(v122 + 12) = 2080;
    v124 = MEMORY[0x1E12A16D0](v7, v183);
    v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v125, &v186);

    *(v122 + 14) = v126;
    _os_log_impl(&dword_1DC659000, v120, v121, "CamBridge: Collated down to %ld actions %s", v122, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v123);
    MEMORY[0x1E12A2F50](v123, -1, -1);
    MEMORY[0x1E12A2F50](v122, -1, -1);
  }

  else
  {
  }

  return v7;
}

uint64_t specialized static CamBridgeImpl.isCamSupportedOnThisDevice.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  v0 = static CamFeatureFlag.forceEnabled;
  os_unfair_lock_lock((static CamFeatureFlag.forceEnabled + 20));
  v1 = *(v0 + 16);
  if (v1 == 2)
  {
    v21 = &type metadata for CamFeatureFlag;
    v22 = lazy protocol witness table accessor for type CamFeatureFlag and conformance CamFeatureFlag();
    LOBYTE(v1) = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  os_unfair_lock_unlock((v0 + 20));
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    os_unfair_lock_lock((v0 + 20));
    v7 = *(v0 + 16);
    if (v7 == 2)
    {
      v21 = &type metadata for CamFeatureFlag;
      v22 = lazy protocol witness table accessor for type CamFeatureFlag and conformance CamFeatureFlag();
      LOBYTE(v7) = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
    }

    os_unfair_lock_unlock((v0 + 20));
    if (v7)
    {
      v8 = 3042927;
    }

    else
    {
      v8 = 778462831;
    }

    if (v7)
    {
      v9 = 0xE300000000000000;
    }

    else
    {
      v9 = 0xE400000000000000;
    }

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v19);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1DC659000, v3, v4, "CamBridge: CAM feature flag is %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  v11 = static os_log_type_t.default.getter();
  v12 = Logger.logObject.getter();
  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20[0] = v14;
    *v13 = 136315138;
    if (v1)
    {
      v15 = 0x6574726F70707573;
    }

    else
    {
      v15 = 0x7070757320746F6ELL;
    }

    if (v1)
    {
      v16 = 0xEA00000000002E64;
    }

    else
    {
      v16 = 0xEE002E646574726FLL;
    }

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v20);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1DC659000, v12, v11, "CamBridge: CAM is %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1E12A2F50](v14, -1, -1);
    MEMORY[0x1E12A2F50](v13, -1, -1);
  }

  return v1 & 1;
}

uint64_t partial apply for closure #1 in CamBridgeImpl.asyncWarmUpIfSupported()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in CamBridgeImpl.asyncWarmUpIfSupported()();
}

uint64_t type metadata accessor for ParaphraseProbeResult(uint64_t a1)
{
  result = type metadata singleton initialization cache for ParaphraseProbeResult;
  if (!type metadata singleton initialization cache for ParaphraseProbeResult)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for implicit closure #2 in CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:)(uint64_t a1)
{
  v4 = *(type metadata accessor for ConversationHelperInput(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return implicit closure #2 in CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t _s14SiriKitRuntime21ParaphraseProbeResultOIegHr_ACs5Error_pIegHTrzo_TRTA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return _s14SiriKitRuntime21ParaphraseProbeResultOIegHr_ACs5Error_pIegHTrzo_TR(a1, v4);
}

uint64_t objectdestroy_12Tm()
{
  v1 = type metadata accessor for ConversationHelperInput(0);
  v17 = *(*(v1 - 8) + 80);
  v15 = *(*(v1 - 8) + 64);

  v16 = (v17 + 40) & ~v17;

  v2 = v0 + v16 + *(v1 + 20);

  v3 = type metadata accessor for RemoteConversationTurnData(0);
  v4 = v3[6];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  v8 = v3[7];
  v9 = type metadata accessor for SessionConfiguration();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v2 + v8, 1, v9))
  {
    (*(v10 + 8))(v2 + v8, v9);
  }

  v11 = v3[9];
  if (!v7(v2 + v11, 1, v5))
  {
    (*(v6 + 8))(v2 + v11, v5);
  }

  v12 = (v2 + v3[13]);
  v13 = v12[1];
  if (v13 >> 60 != 15)
  {
    outlined consume of Data._Representation(*v12, v13);
  }

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v16 + v15, v17 | 7);
}
uint64_t $defer #1 () in closure #2 in FlowExtensionObserver.begin()(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v2 = type metadata accessor for OSSignpostError();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v10, static Signposter.executor);
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_1DC659000, v11, v12, v15, "LoadAllFlowExtensions", v13, v14, 2u);
    MEMORY[0x1E12A2F50](v14, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  *(v18 + 48) = 0;
}

Swift::Void __swiftcall FlowExtensionObserver.stop()()
{
  swift_beginAccess();
  outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 16, &v2, &_sypSgMd, &_sypSgMR);
  if (*(&v3 + 1))
  {
    outlined init with take of Any(&v2, &v4);
    v1 = objc_opt_self();
    __swift_project_boxed_opaque_existential_1(&v4, v5);
    [v1 endMatchingExtensions_];
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(&v4);
    v2 = 0u;
    v3 = 0u;
    swift_beginAccess();
    outlined assign with take of Any?(&v2, v0 + 16);
    swift_endAccess();
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v2, &_sypSgMd, &_sypSgMR);
  }
}

uint64_t FlowExtensionObserver.deinit()
{
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_sypSgMd, &_sypSgMR);

  return v0;
}

uint64_t FlowExtensionObserver.__deallocating_deinit()
{
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_sypSgMd, &_sypSgMR);

  return swift_deallocClassInstance();
}

uint64_t NSExtension.identifierString.getter()
{
  v1 = [v0 identifier];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  else
  {
    result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000033, 0x80000001DCA83A10, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/RemoteConversation/FlowExtension/FlowExtensionDiscovery.swift", 130, 2, 289);
    __break(1u);
  }

  return result;
}

id static NSExtension.findExtension(identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v11[1] = *MEMORY[0x1E69E9840];

  v6 = MEMORY[0x1E12A1410](a1, a2);

  v11[0] = 0;
  v7 = [swift_getObjCClassFromMetadata() extensionWithIdentifier:v6 error:v11];

  v8 = v11[0];
  if (v7)
  {
    a3[3] = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSExtension, 0x1E696ABD0);
    a3[4] = &protocol witness table for NSExtension;
    *a3 = v7;
    return v8;
  }

  else
  {
    v10 = v11[0];
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t NSExtension.extensionContextAsProtocol(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v15 - v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v8, v9);
  }

  v12 = [v3 _extensionContextForUUID_];

  if (v12)
  {
    result = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSExtensionContext, 0x1E696ABD8);
    v14 = &protocol witness table for NSExtensionContext;
  }

  else
  {
    result = 0;
    v14 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *a2 = v12;
  a2[3] = result;
  a2[4] = v14;
  return result;
}

unint64_t NSExtension.stringIndexedAttributes.getter()
{
  v1 = [v0 attributes];
  if (v1)
  {
    v2 = v1;
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v3);
    v5 = v4;

    if (v5)
    {
      return v5;
    }
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.executor);
  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315394;
    v13 = v8;
    v14 = [v13 description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v22);

    *(v11 + 4) = v18;
    *(v11 + 12) = 2080;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgMd, &_sSDys11AnyHashableVypGSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgmMd, &_sSDys11AnyHashableVypGSgmMR);
    v19 = String.init<A>(describing:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v22);

    *(v11 + 14) = v21;
    _os_log_impl(&dword_1DC659000, v9, v10, "Extension %s has wrong type for attributes: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v12, -1, -1);
    MEMORY[0x1E12A2F50](v11, -1, -1);
  }

  return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
}

void specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v11 = __clz(__rbit64(v5)) | (v10 << 6);
    outlined init with copy of AnyHashable(*(a1 + 48) + 40 * v11, v27);
    outlined init with copy of Any(*(a1 + 56) + 32 * v11, v28 + 8);
    v25[0] = v28[0];
    v25[1] = v28[1];
    v26 = v29;
    v24[0] = v27[0];
    v24[1] = v27[1];
    outlined init with copy of AnyHashable(v24, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    outlined init with copy of Any(v25 + 8, v20);
    outlined destroy of ReferenceResolutionClientProtocol?(v24, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);
    v21 = v18;
    outlined init with take of Any(v20, v22);
    v12 = v21;
    outlined init with take of Any(v22, v23);
    outlined init with take of Any(v23, &v21);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v12, *(&v12 + 1));
    if (v14)
    {
      *(v2[6] + 16 * v13) = v12;
      v8 = v13;

      v9 = (v2[7] + 32 * v8);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      outlined init with take of Any(&v21, v9);
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
      *(v2[6] + 16 * v13) = v12;
      outlined init with take of Any(&v21, (v2[7] + 32 * v13));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v10 = v7;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v24, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);
}

uint64_t protocol witness for NSExtensionProtocol.identifierString.getter in conformance NSExtension()
{
  v1 = [*v0 identifier];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  else
  {
    result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000033, 0x80000001DCA83A10, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/RemoteConversation/FlowExtension/FlowExtensionDiscovery.swift", 130, 2, 289);
    __break(1u);
  }

  return result;
}

id @nonobjc NSExtension.beginRequest(options:inputItems:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v10[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  v10[0] = 0;
  v6 = [v3 beginExtensionRequestWithOptions:a1 inputItems:v5.super.isa error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

id protocol witness for NSExtensionContextProtocol._auxiliaryConnection.getter in conformance NSExtensionContext()
{
  v1 = [*v0 _auxiliaryConnection];

  return v1;
}

uint64_t specialized static FlowExtensionObserver.reduceSeenExtensions(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19NSExtensionProtocol_pMd, &_s14SiriKitRuntime19NSExtensionProtocol_pMR);
  v4 = MEMORY[0x1E12A1320](v2, MEMORY[0x1E69E6158], v3, MEMORY[0x1E69E6168]);
  if (!v2)
  {
    return v4;
  }

  for (i = a1 + 32; ; i += 40)
  {
    outlined init with copy of ReferenceResolutionClientProtocol(i, v29);
    v8 = v30;
    v9 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    v10 = (*(v9 + 8))(v8, v9);
    v12 = v11;
    outlined init with copy of ReferenceResolutionClientProtocol(v29, v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v4;
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v12);
    v16 = *(v4 + 16);
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      break;
    }

    v20 = v15;
    if (*(v4 + 24) < v19)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, isUniquelyReferenced_nonNull_native);
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v12);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      if (v20)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v25 = v14;
    specialized _NativeDictionary.copy()();
    v14 = v25;
    if (v20)
    {
LABEL_3:
      v6 = v14;

      v4 = v27;
      v7 = (v27[7] + 40 * v6);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      outlined init with take of ReferenceResolutionClientProtocol(v28, v7);
      goto LABEL_4;
    }

LABEL_11:
    v4 = v27;
    v27[(v14 >> 6) + 8] |= 1 << v14;
    v22 = (v27[6] + 16 * v14);
    *v22 = v10;
    v22[1] = v12;
    outlined init with take of ReferenceResolutionClientProtocol(v28, v27[7] + 40 * v14);
    v23 = v27[2];
    v18 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v18)
    {
      goto LABEL_17;
    }

    v27[2] = v24;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    if (!--v2)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized static FlowExtensionObserver.reduceSeenTopics(_:)(uint64_t a1)
{
  v2 = type metadata accessor for IntentTopic();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19NSExtensionProtocol_pMd, &_s14SiriKitRuntime19NSExtensionProtocol_pMR);
  v8 = MEMORY[0x1E12A1320](v6, MEMORY[0x1E69E6158], v7, MEMORY[0x1E69E6168]);
  v58 = v6;
  if (!v6)
  {
    return v8;
  }

  v10 = 0;
  v57 = a1 + 32;
  v65 = v3 + 16;
  v64 = (v3 + 8);
  *&v9 = 136315650;
  v60 = v9;
  v62 = v2;
  while (1)
  {
    v59 = v10;
    outlined init with copy of ReferenceResolutionClientProtocol(v57 + 40 * v10, v75);
    v11 = v76;
    v12 = v77;
    __swift_project_boxed_opaque_existential_1(v75, v76);
    (*(v12 + 16))(v11, v12);
    v13 = static IntentTopic.makeFromBundleInfoPlist(dictionary:)();

    v66 = *(v13 + 16);
    if (v66)
    {
      break;
    }

LABEL_3:
    v10 = v59 + 1;

    __swift_destroy_boxed_opaque_existential_1Tm(v75);
    if (v10 == v58)
    {
      return v8;
    }
  }

  v14 = 0;
  v63 = v13;
  while (v14 < *(v13 + 16))
  {
    (*(v3 + 16))(v5, v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v14, v2);
    v16 = IntentTopic.cacheKey.getter();
    v18 = v16;
    v19 = v17;
    if (v8[2] && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17), (v21 & 1) != 0))
    {
      outlined init with copy of ReferenceResolutionClientProtocol(v8[7] + 40 * v20, v74);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static Logger.executor);
      outlined init with copy of ReferenceResolutionClientProtocol(v74, v71);
      outlined init with copy of ReferenceResolutionClientProtocol(v75, v68);

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v67 = v61;
        *v25 = v60;
        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v67);

        *(v25 + 4) = v26;
        *(v25 + 12) = 2080;
        v27 = v72;
        v28 = v73;
        __swift_project_boxed_opaque_existential_1(v71, v72);
        v29 = (*(v28 + 8))(v27, v28);
        v31 = v30;
        __swift_destroy_boxed_opaque_existential_1Tm(v71);
        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v67);

        *(v25 + 14) = v32;
        *(v25 + 22) = 2080;
        v33 = v69;
        v34 = v70;
        __swift_project_boxed_opaque_existential_1(v68, v69);
        v35 = (*(v34 + 8))(v33, v34);
        v37 = v36;
        __swift_destroy_boxed_opaque_existential_1Tm(v68);
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v67);

        *(v25 + 24) = v38;
        _os_log_impl(&dword_1DC659000, v23, v24, "Multiple extensions support topic %s, using %s and ignoring %s", v25, 0x20u);
        v39 = v61;
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v39, -1, -1);
        v40 = v25;
        v13 = v63;
        MEMORY[0x1E12A2F50](v40, -1, -1);

        v41 = v74;
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v74);
        __swift_destroy_boxed_opaque_existential_1Tm(v71);
        v41 = v68;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      v2 = v62;
    }

    else
    {
      outlined init with copy of ReferenceResolutionClientProtocol(v75, v74);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71[0] = v8;
      v43 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
      v45 = v8[2];
      v46 = (v44 & 1) == 0;
      v47 = __OFADD__(v45, v46);
      v48 = v45 + v46;
      if (v47)
      {
        goto LABEL_28;
      }

      v49 = v44;
      if (v8[3] >= v48)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v54 = v43;
          specialized _NativeDictionary.copy()();
          v43 = v54;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v48, isUniquelyReferenced_nonNull_native);
        v43 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
        if ((v49 & 1) != (v50 & 1))
        {
          goto LABEL_30;
        }
      }

      v13 = v63;
      v8 = v71[0];
      if (v49)
      {
        v15 = (*(v71[0] + 56) + 40 * v43);
        __swift_destroy_boxed_opaque_existential_1Tm(v15);
        outlined init with take of ReferenceResolutionClientProtocol(v74, v15);
      }

      else
      {
        *(v71[0] + 8 * (v43 >> 6) + 64) |= 1 << v43;
        v51 = (v8[6] + 16 * v43);
        *v51 = v18;
        v51[1] = v19;
        outlined init with take of ReferenceResolutionClientProtocol(v74, v8[7] + 40 * v43);
        v52 = v8[2];
        v47 = __OFADD__(v52, 1);
        v53 = v52 + 1;
        if (v47)
        {
          goto LABEL_29;
        }

        v8[2] = v53;
      }
    }

    ++v14;
    (*v64)(v5, v2);
    if (v66 == v14)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t outlined assign with take of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor()
{
  result = lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor;
  if (!lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor)
  {
    type metadata accessor for ConversationActor();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in variable initialization expression of kSharedFlowExtensionObserver(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in variable initialization expression of kSharedFlowExtensionObserver(a1, v4, v5, v6);
}

uint64_t partial apply for closure #2 in FlowExtensionObserver.begin()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #2 in FlowExtensionObserver.begin()(a1, v4, v5, v6, v7);
}

uint64_t partial apply for closure #1 in closure #1 in FlowExtensionObserver.begin()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in closure #1 in FlowExtensionObserver.begin()(a1, v4, v5, v6, v7, v8);
}

id static FlowExtensionSubsystem.initForPlugInKit()()
{
  [objc_opt_self() _startListening];
  v0 = objc_allocWithZone(type metadata accessor for FlowExtensionSubsystem());

  return [v0 init];
}

id FlowExtensionSubsystem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FlowExtensionSubsystem.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FlowExtensionSubsystem();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FlowExtensionSubsystem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FlowExtensionSubsystem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id FlowPluginInfo.init(supportsOnDeviceNL:isPersonalRequest:sensitivityPolicy:isEmergencyRequest:)(char a1, char a2, uint64_t a3, char a4, char a5)
{
  v5[OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_supportsOnDeviceNL] = a1;
  v5[OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_isPersonalRequest] = (a2 == 2) | a2 & 1;
  if (a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3;
  }

  *&v5[OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_sensitivityPolicy] = v6;
  v5[OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_isEmergencyRequest] = a5 & 1;
  v8.receiver = v5;
  v8.super_class = type metadata accessor for FlowPluginInfo();
  return objc_msgSendSuper2(&v8, sel_init);
}

id FlowPluginInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FlowPluginInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FlowPluginInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t *GenericContextTransformer.sharedInstance.unsafeMutableAddressor()
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  return &static GenericContextTransformer.sharedInstance;
}

id one-time initialization function for sharedInstance()
{
  result = [objc_allocWithZone(type metadata accessor for GenericContextTransformer()) init];
  static GenericContextTransformer.sharedInstance = result;
  return result;
}

id static GenericContextTransformer.sharedInstance.getter()
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v1 = static GenericContextTransformer.sharedInstance;

  return v1;
}

id GenericContextTransformer.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for GenericContextTransformer();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

Swift::Int HALFeatureFlags.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](0);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for phoneCallStateQueryTimeoutInMillis()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  __swift_allocate_value_buffer(v0, static HALUtils.phoneCallStateQueryTimeoutInMillis);
  *__swift_project_value_buffer(v0, static HALUtils.phoneCallStateQueryTimeoutInMillis) = 50;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

uint64_t HALUtils.phoneCallStateQueryTimeoutInMillis.unsafeMutableAddressor()
{
  if (one-time initialization token for phoneCallStateQueryTimeoutInMillis != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for DispatchTimeInterval();

  return __swift_project_value_buffer(v0, static HALUtils.phoneCallStateQueryTimeoutInMillis);
}

uint64_t static HALUtils.phoneCallStateQueryTimeoutInMillis.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for phoneCallStateQueryTimeoutInMillis != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = __swift_project_value_buffer(v2, static HALUtils.phoneCallStateQueryTimeoutInMillis);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t closure #1 in static HALUtils.isUserOnPhoneCall(_:_:completion:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (!result)
  {
    goto LABEL_14;
  }

  v9 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    v10 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  v10 = __CocoaSet.count.getter();
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1E12A1FE0](0, result);
  }

  else
  {
    if (!*(v9 + 16))
    {
      __break(1u);
      return v10;
    }

    v11 = *(result + 32);
  }

  v12 = v11;
  v13 = [v11 serializedContextByKey];

  if (v13)
  {
    v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v14 + 16))
    {
      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
      v19 = v18;

      if (v19)
      {
        outlined init with copy of Any(*(v14 + 56) + 32 * v17, v28);

        v20 = objc_allocWithZone(MEMORY[0x1E698D0F0]);
        __swift_project_boxed_opaque_existential_1(v28, v28[3]);
        v21 = [v20 initWithSerializedBackingStore_];
        swift_unknownObjectRelease();
        if ([v21 callState])
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v28);

          v13 = 1;
        }

        else
        {
          v22 = [v21 callState];

          __swift_destroy_boxed_opaque_existential_1Tm(v28);
          v13 = (v22 >> 1) & 1;
        }

        goto LABEL_15;
      }
    }

    else
    {
    }

    goto LABEL_14;
  }

LABEL_15:
  static os_signpost_type_t.end.getter();
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  os_signpost(_:dso:log:name:signpostID:)();
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.conversationBridge);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28[0] = v27;
    *v26 = 67109378;
    *(v26 + 4) = v13;
    *(v26 + 8) = 2080;
    *(v26 + 10) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v28);
    _os_log_impl(&dword_1DC659000, v24, v25, "Retrieved isUserOnPhoneCall status: %{BOOL}d for requestId: %s", v26, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x1E12A2F50](v27, -1, -1);
    MEMORY[0x1E12A2F50](v26, -1, -1);
  }

  return a5(v13);
}

uint64_t specialized static HALUtils.isUserOnPhoneCall(_:_:completion:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a4;
  v38 = a5;
  v39 = a2;
  v40 = type metadata accessor for OSSignpostID();
  v7 = *(v40 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v13 = static Log.executor;
  OSSignpostID.init(log:)();
  v14 = static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)(v14, &dword_1DC659000, v13, "PhoneCallStateQueryTime", 23, 2, v12, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.conversationBridge);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, a3, aBlock);
    _os_log_impl(&dword_1DC659000, v16, v17, "Fetching isUserOnPhoneCall status for requestId: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1E12A2F50](v19, -1, -1);
    MEMORY[0x1E12A2F50](v18, -1, -1);
  }

  if ([a1 respondsToSelector_])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA66060;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v21;
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of String(inited + 32);
    v22 = *(v7 + 16);
    v36 = a1;
    v23 = v40;
    v22(v9, v12, v40);
    v24 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v25 = (v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    (*(v7 + 32))(v26 + v24, v9, v23);
    v27 = (v26 + v25);
    v29 = v38;
    v28 = v39;
    *v27 = v39;
    v27[1] = a3;
    v30 = (v26 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v30 = v37;
    v30[1] = v29;

    isa = Set._bridgeToObjectiveC()().super.isa;
    v32 = MEMORY[0x1E12A1410](v28, a3);
    aBlock[4] = partial apply for closure #1 in static HALUtils.isUserOnPhoneCall(_:_:completion:);
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AFServiceDeviceContext]?) -> ();
    aBlock[3] = &block_descriptor_13;
    v33 = _Block_copy(aBlock);

    [v36 fetchContextsForKeys:isa forRequestID:v32 includesNearbyDevices:0 completion:v33];
    _Block_release(v33);
  }

  return (*(v7 + 8))(v12, v40);
}

uint64_t specialized static HALUtils.isUserOnPhoneCall(_:_:)(void *a1, uint64_t a2, unint64_t a3)
{
  v32 = a3;
  v5 = type metadata accessor for OSSignpostID();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = 2;
  v15 = dispatch_semaphore_create(0);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;

  v17 = v15;
  specialized static HALUtils.isUserOnPhoneCall(_:_:completion:)(a1, a2, v32, partial apply for closure #1 in static HALUtils.isUserOnPhoneCall(_:_:), v16);

  static DispatchTime.now()();
  if (one-time initialization token for phoneCallStateQueryTimeoutInMillis != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for DispatchTimeInterval();
  v19 = __swift_project_value_buffer(v18, static HALUtils.phoneCallStateQueryTimeoutInMillis);
  MEMORY[0x1E12A1280](v10, v19);
  v20 = *(v8 + 8);
  v20(v10, v7);
  MEMORY[0x1E12A1BE0](v13);
  v20(v13, v7);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.conversationBridge);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DC659000, v22, v23, "Timed out fetching phoneCallState.", v24, 2u);
      MEMORY[0x1E12A2F50](v24, -1, -1);
    }

    static os_signpost_type_t.event.getter();
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v25 = v29;
    static OSSignpostID.exclusive.getter();
    v26 = 2;
    os_signpost(_:dso:log:name:signpostID:)();

    (*(v30 + 8))(v25, v31);
  }

  else
  {

    swift_beginAccess();
    v26 = *(v14 + 16);
  }

  return v26;
}

uint64_t partial apply for closure #1 in static HALUtils.isUserOnPhoneCall(_:_:completion:)(unint64_t a1)
{
  v3 = *(type metadata accessor for OSSignpostID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v6);

  return closure #1 in static HALUtils.isUserOnPhoneCall(_:_:completion:)(a1, v1 + v4, v8, v9, v10);
}

Swift::Int partial apply for closure #1 in static HALUtils.isUserOnPhoneCall(_:_:)(char a1)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  *(v3 + 16) = a1;
  return OS_dispatch_semaphore.signal()();
}

uint64_t HangUpOverride.__allocating_init(topRankedParse:bridge:isSpeechRequest:isNlEmpty:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v10 = swift_allocObject();
  HangUpOverride.init(topRankedParse:bridge:isSpeechRequest:isNlEmpty:)(a1, a2, a3, v6, v5);
  return v10;
}

uint64_t HangUpOverride.overrideType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t HangUpOverride.overrideType.setter(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t HangUpOverride.isBlushingPhantomEnabled.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_isBlushingPhantomEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t HangUpOverride.isBlushingPhantomEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_isBlushingPhantomEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t HangUpOverride.isQuickStopCallBellEnabled.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_isQuickStopCallBellEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t HangUpOverride.isQuickStopCallBellEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_isQuickStopCallBellEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t HangUpOverride.isCancelCallBellEnabled.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_isCancelCallBellEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t HangUpOverride.isCancelCallBellEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_isCancelCallBellEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t HangUpOverride.isActiveDropInCall.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_isActiveDropInCall;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t HangUpOverride.isActiveDropInCall.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_isActiveDropInCall;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t HangUpOverride.init(topRankedParse:bridge:isSpeechRequest:isNlEmpty:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v6 = v5;
  *(v6 + 16) = 0;
  *(v6 + OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_isBlushingPhantomEnabled) = AFSupportsSiriInCall();
  v12 = (v6 + OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_bridge);
  *v12 = a2;
  v12[1] = a3;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v6 + OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_topRankedParse, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  *(v6 + OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_isSpeechRequest) = a4;
  *(v6 + OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_isNlEmpty) = a5;
  v13 = one-time initialization token for forceEnabled;
  swift_unknownObjectRetain();
  if (v13 != -1)
  {
    swift_once();
  }

  v14 = swift_beginAccess();
  v15 = static SiriPlaybackControlFeature.forceEnabled;
  if (*(static SiriPlaybackControlFeature.forceEnabled + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + v16);
  }

  else
  {
    v26 = &type metadata for SiriPlaybackControlFeature;
    v27 = lazy protocol witness table accessor for type SiriPlaybackControlFeature and conformance SiriPlaybackControlFeature();
    v18 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  *(v6 + OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_isQuickStopCallBellEnabled) = v18 & 1;
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  v19 = swift_beginAccess();
  v20 = static SiriPhoneFeature.forceEnabled;
  if (*(static SiriPhoneFeature.forceEnabled + 16) && (v21 = specialized __RawDictionaryStorage.find<A>(_:)(v19), (v22 & 1) != 0))
  {
    v23 = *(*(v20 + 56) + v21);

    swift_unknownObjectRelease();
    outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  }

  else
  {
    v26 = &type metadata for SiriPhoneFeature;
    v27 = lazy protocol witness table accessor for type SiriPhoneFeature and conformance SiriPhoneFeature();
    v23 = isFeatureEnabled(_:)();
    swift_unknownObjectRelease();
    outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  *(v6 + OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_isCancelCallBellEnabled) = v23 & 1;
  *(v6 + OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_isActiveDropInCall) = 0;
  return v6;
}

uint64_t HangUpOverride.evaluate()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](HangUpOverride.evaluate(), 0, 0);
}

uint64_t HangUpOverride.evaluate()()
{
  if ((*(**(v0 + 24) + 176))())
  {
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
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1DC659000, v2, v3, "[ExecutionOverride] [HangUpOverride]: ff enabled. Return .accept", v4, 2u);
      MEMORY[0x1E12A2F50](v4, -1, -1);
    }

    **(v0 + 16) = 11;
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    *(v0 + 32) = v7;
    *v7 = v0;
    v7[1] = HangUpOverride.evaluate();

    return HangUpOverride.isUserOnPhoneCall()();
  }
}

{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 24);
    if (*(v1 + OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_isSpeechRequest) == 1 && *(v1 + OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_isNlEmpty) == 1)
    {
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
        *v5 = 0;
        _os_log_impl(&dword_1DC659000, v3, v4, "[ExecutionOverride] [HangUpOverride]: User on phone call and NL is empty. Return .mitigateEmptyASR", v5, 2u);
        MEMORY[0x1E12A2F50](v5, -1, -1);
      }

      v6 = 7;
    }

    else
    {
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
        _os_log_impl(&dword_1DC659000, v12, v13, "[ExecutionOverride] [HangUpOverride]: User on phone call. Checking if valid active phone call request...", v14, 2u);
        MEMORY[0x1E12A2F50](v14, -1, -1);
      }

      if (HangUpOverride.isValidActivePhoneCallRequest()())
      {
        v6 = 11;
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.executor);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DC659000, v8, v9, "[ExecutionOverride] [HangUpOverride]: User not on phone call. Return .accept", v10, 2u);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }

    v6 = 11;
  }

  **(v0 + 16) = v6;
  v15 = *(v0 + 8);

  return v15();
}

uint64_t HangUpOverride.evaluate()(char a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](HangUpOverride.evaluate(), 0, 0);
}

uint64_t HangUpOverride.isValidActivePhoneCallRequest()()
{
  v119 = type metadata accessor for IdentifierNamespace();
  v114 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v115 = v103 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology19IdentifierNamespaceOSg_ADtMd, &_s12SiriOntology19IdentifierNamespaceOSg_ADtMR);
  MEMORY[0x1EEE9AC00](v118);
  v117 = v103 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology19IdentifierNamespaceOSgMd, &_s12SiriOntology19IdentifierNamespaceOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v116 = v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v121 = v103 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v120 = v103 - v7;
  v124 = type metadata accessor for IdentifierAppBundle();
  v113 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v123 = v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v122 = v103 - v10;
  v11 = type metadata accessor for UsoIdentifier();
  v125 = *(v11 - 8);
  v126 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v127 = v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v129 = v103 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v130 = v103 - v16;
  v17 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v18 = *(v17 - 8);
  v131 = v17;
  v132 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v128 = v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v103 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities11DeviceClassOSgGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities11DeviceClassOSgGMR);
  v24 = *(v21 + 72);
  v25 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1DCA65720;
  v27 = v26 + v25;
  v28 = *MEMORY[0x1E69D3448];
  v29 = type metadata accessor for DeviceClass();
  v30 = *(v29 - 8);
  v31 = *(v30 + 104);
  v31(v27, v28, v29);
  v32 = *(v30 + 56);
  v32(v27, 0, 1, v29);
  v31(v27 + v24, *MEMORY[0x1E69D3438], v29);
  v32(v27 + v24, 0, 1, v29);
  v33 = v133;
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  dispatch thunk of CurrentDevice.deviceClass.getter();

  LOBYTE(v32) = specialized Sequence<>.contains(_:)(v23, v26);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
  if ((v32 & 1) != 0 && (*(v33 + OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_isSpeechRequest) & 1) == 0)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logger.executor);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1DC659000, v43, v44, "[ExecutionOverride] [HangUpOverride] [TypeToSiri]: Returning true for non-speech request.", v45, 2u);
      MEMORY[0x1E12A2F50](v45, -1, -1);
    }

    return 1;
  }

  v34 = v129;
  outlined init with copy of ReferenceResolutionClientProtocol?(v33 + OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_topRankedParse, v129, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v35 = type metadata accessor for Siri_Nlu_External_UserParse();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v34, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
    v37 = v130;
    (*(v132 + 56))(v130, 1, 1, v131);
LABEL_14:
    outlined destroy of ReferenceResolutionClientProtocol?(v37, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    __swift_project_value_buffer(v48, static Logger.executor);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1DC659000, v49, v50, "[ExecutionOverride] Unable to retrieve UserDialogAct from parse. Cannot determine request type; presuming request is not valid active phone call request.", v51, 2u);
      MEMORY[0x1E12A2F50](v51, -1, -1);
    }

    return 0;
  }

  v38 = MEMORY[0x1E129C0F0]();
  (*(v36 + 8))(v34, v35);
  v37 = v130;
  v39 = v131;
  if (*(v38 + 16))
  {
    v40 = v132;
    (*(v132 + 16))(v130, v38 + ((*(v132 + 80) + 32) & ~*(v132 + 80)), v131);
    v41 = 0;
  }

  else
  {
    v41 = 1;
    v40 = v132;
  }

  v47 = v128;

  (*(v40 + 56))(v37, v41, 1, v39);
  if ((*(v40 + 48))(v37, 1, v39) == 1)
  {
    goto LABEL_14;
  }

  v52 = (*(v40 + 32))(v47, v37, v39);
  if ((*(*v33 + 224))(v52) & 1) != 0 && ((*(*v33 + 248))() & 1) != 0 && (Siri_Nlu_External_UserDialogAct.hasCancelled.getter())
  {
    if (one-time initialization token for executor == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_94;
  }

  v57 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
  if (!(v57 >> 62))
  {
    if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_37;
    }

LABEL_91:

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    __swift_project_value_buffer(v58, static Logger.executor);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_1DC659000, v59, v60, "[ExecutionOverride] UserDialog was not of type UsoTask. Cannot determine request type; presuming request is not valid active phone call request.", v61, 2u);
      MEMORY[0x1E12A2F50](v61, -1, -1);
    }

    goto LABEL_32;
  }

LABEL_90:
  v101 = v57;
  v102 = __CocoaSet.count.getter();
  v57 = v101;
  if (!v102)
  {
    goto LABEL_91;
  }

LABEL_37:
  if ((v57 & 0xC000000000000001) != 0)
  {
    v62 = MEMORY[0x1E12A1FE0](0);
  }

  else
  {
    if (!*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_94:
      swift_once();
LABEL_23:
      v53 = type metadata accessor for Logger();
      __swift_project_value_buffer(v53, static Logger.executor);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_1DC659000, v54, v55, "[ExecutionOverride] [HangUpOverride]: userDialogAct:UserCancelled: Conditions met to end the call. Return .accept.", v56, 2u);
        MEMORY[0x1E12A2F50](v56, -1, -1);
      }

      goto LABEL_25;
    }

    v62 = *(v57 + 32);
  }

  if ((*(*v33 + 200))(v63) & 1) != 0 && ((*(*v33 + 248))() & 1) != 0 && (specialized HangUpOverride.isQuickStopTask(task:)(v62))
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    __swift_project_value_buffer(v64, static Logger.executor);
    v54 = Logger.logObject.getter();
    v65 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v54, v65))
    {

      goto LABEL_26;
    }

    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_1DC659000, v54, v65, "[ExecutionOverride] [HangUpOverride]: Conditions met to quick stop dropIn call. Return .accept.", v66, 2u);
    MEMORY[0x1E12A2F50](v66, -1, -1);

LABEL_25:

LABEL_26:
    (*(v40 + 8))(v47, v39);
    return 1;
  }

  static UsoTask_CodegenConverter.convert(task:)();

  if (!v136)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v135, &_sypSgMd, &_sypSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    __swift_project_value_buffer(v67, static Logger.executor);
    v59 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v59, v68))
    {

      goto LABEL_33;
    }

    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_1DC659000, v59, v68, "[ExecutionOverride] Unable to initialize UsoTask. Cannot determine request type; presuming request is not valid active phone call request.", v69, 2u);
    MEMORY[0x1E12A2F50](v69, -1, -1);

LABEL_32:

LABEL_33:
    (*(v40 + 8))(v47, v39);
    return 0;
  }

  outlined init with take of Any(&v135, &v137);
  outlined init with copy of Any(&v137, &v135);
  type metadata accessor for UsoTask_hangup_common_PhoneCall();
  if (swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v137);
    (*(v40 + 8))(v47, v39);

    return 1;
  }

  outlined init with copy of Any(&v137, &v135);
  type metadata accessor for UsoTask_action_common_SocialConversation();
  if (!swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v137);
    goto LABEL_33;
  }

  v70 = v134;

  dispatch thunk of Uso_VerbTemplate_Target.target.getter();

  if (v135 && (v71 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)(), , v71))
  {
    v57 = v71;
  }

  else
  {

    v57 = MEMORY[0x1E69E7CC0];
  }

  v133 = *(v57 + 16);
  if (v133)
  {
    v103[1] = v70;
    v103[2] = v62;
    v40 = 0;
    v130 = (v57 + ((*(v125 + 80) + 32) & ~*(v125 + 80)));
    v129 = v125 + 16;
    v112 = *MEMORY[0x1E69D1AF0];
    v111 = (v113 + 13);
    ++v113;
    v109 = *MEMORY[0x1E69D1B08];
    v108 = (v114 + 13);
    v107 = (v114 + 7);
    v106 = (v114 + 6);
    v104 = (v114 + 4);
    v105 = (v114 + 1);
    v114 = (v125 + 8);
    v72 = &_s12SiriOntology19IdentifierNamespaceOSgMd;
    v33 = &_s12SiriOntology19IdentifierNamespaceOSgMR;
    v39 = v120;
    v47 = v127;
    v110 = v57;
    while (1)
    {
      if (v40 >= *(v57 + 16))
      {
        __break(1u);
        goto LABEL_90;
      }

      (*(v125 + 16))(v47, &v130[*(v125 + 72) * v40], v126);
      v73 = v122;
      UsoIdentifier.appBundleSemantic.getter();
      v75 = v123;
      v74 = v124;
      (*v111)(v123, v112, v124);
      v76 = MEMORY[0x1E129CA00](v73, v75);
      v77 = *v113;
      (*v113)(v75, v74);
      v78 = v73;
      v47 = v127;
      v77(v78, v74);
      if ((v76 & 1) == 0)
      {
        goto LABEL_65;
      }

      UsoIdentifier.namespaceSemantic.getter();
      v79 = v121;
      v80 = v119;
      (*v108)(v121, v109, v119);
      (*v107)(v79, 0, 1, v80);
      v81 = *(v118 + 48);
      v82 = v39;
      v83 = v39;
      v84 = v117;
      outlined init with copy of ReferenceResolutionClientProtocol?(v82, v117, v72, v33);
      outlined init with copy of ReferenceResolutionClientProtocol?(v79, v84 + v81, v72, v33);
      v85 = v33;
      v86 = v72;
      v87 = *v106;
      if ((*v106)(v84, 1, v80) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v79, v72, v85);
        outlined destroy of ReferenceResolutionClientProtocol?(v83, v72, v85);
        if (v87(v84 + v81, 1, v80) != 1)
        {
          goto LABEL_64;
        }

        v33 = &_s12SiriOntology19IdentifierNamespaceOSgMR;
        outlined destroy of ReferenceResolutionClientProtocol?(v84, v72, &_s12SiriOntology19IdentifierNamespaceOSgMR);
        v39 = v120;
        v47 = v127;
      }

      else
      {
        v88 = v116;
        outlined init with copy of ReferenceResolutionClientProtocol?(v84, v116, v72, v85);
        if (v87(v84 + v81, 1, v80) == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v121, v72, v85);
          outlined destroy of ReferenceResolutionClientProtocol?(v120, v72, v85);
          (*v105)(v88, v80);
LABEL_64:
          outlined destroy of ReferenceResolutionClientProtocol?(v84, &_s12SiriOntology19IdentifierNamespaceOSg_ADtMd, &_s12SiriOntology19IdentifierNamespaceOSg_ADtMR);
          v39 = v120;
          v33 = &_s12SiriOntology19IdentifierNamespaceOSgMR;
          v47 = v127;
LABEL_65:
          (*v114)(v47, v126);
          goto LABEL_66;
        }

        v89 = v115;
        (*v104)(v115, v84 + v81, v80);
        lazy protocol witness table accessor for type IdentifierNamespace and conformance IdentifierNamespace(&lazy protocol witness table cache variable for type IdentifierNamespace and conformance IdentifierNamespace, MEMORY[0x1E69D1B40], MEMORY[0x1E69D1B48]);
        v90 = dispatch thunk of static Equatable.== infix(_:_:)();
        v91 = *v105;
        (*v105)(v89, v80);
        outlined destroy of ReferenceResolutionClientProtocol?(v121, v86, v85);
        v92 = v120;
        outlined destroy of ReferenceResolutionClientProtocol?(v120, v86, v85);
        v91(v116, v80);
        v93 = v84;
        v39 = v92;
        outlined destroy of ReferenceResolutionClientProtocol?(v93, v86, v85);
        v72 = v86;
        v33 = v85;
        v47 = v127;
        if ((v90 & 1) == 0)
        {
          goto LABEL_65;
        }
      }

      if (UsoIdentifier.value.getter() == 0x6563696F566C6164 && v94 == 0xEF72656767697254)
      {

        (*v114)(v47, v126);
LABEL_82:

        v96 = 1;
LABEL_83:
        v39 = v131;
        v40 = v132;
        v47 = v128;
        goto LABEL_84;
      }

      v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v114)(v47, v126);
      if (v95)
      {
        goto LABEL_82;
      }

LABEL_66:
      ++v40;
      v57 = v110;
      if (v133 == v40)
      {

        v96 = 0;
        goto LABEL_83;
      }
    }
  }

  v96 = 0;
LABEL_84:
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v97 = type metadata accessor for Logger();
  __swift_project_value_buffer(v97, static Logger.executor);
  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    *v100 = 67109120;
    *(v100 + 4) = v96;
    _os_log_impl(&dword_1DC659000, v98, v99, "[ExecutionOverride] [HangUpOverride] Received canned UsoTask, isVoiceTrigger = %{BOOL}d", v100, 8u);
    MEMORY[0x1E12A2F50](v100, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v137);
  (*(v40 + 8))(v47, v39);
  return v96;
}

uint64_t HangUpOverride.isUserOnPhoneCall()()
{
  *(v1 + 88) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static MessageBusActor.shared;
  *(v1 + 96) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](HangUpOverride.isUserOnPhoneCall(), v2, 0);
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[13] = __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "[ExecutionOverride] [HangUpOverride]: Checking if User on Phone call", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = static MessageBusActor.shared;
  v0[14] = static MessageBusActor.shared;
  v6 = lazy protocol witness table accessor for type IdentifierNamespace and conformance IdentifierNamespace(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);

  v7 = swift_task_alloc();
  v0[15] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo22AFServiceDeviceContextCGSgMd, &_sSaySo22AFServiceDeviceContextCGSgMR);
  v0[16] = v8;
  *v7 = v0;
  v7[1] = HangUpOverride.isUserOnPhoneCall();
  v9 = v0[11];

  return MEMORY[0x1EEE6DDE0](v0 + 9, v5, v6, 0xD000000000000013, 0x80000001DCA83F10, partial apply for closure #1 in HangUpOverride.isUserOnPhoneCall(), v9, v8);
}

{
  v1 = *(*v0 + 96);

  return MEMORY[0x1EEE6DFA0](HangUpOverride.isUserOnPhoneCall(), v1, 0);
}

{
  v35 = v0;

  v1 = *(v0 + 72);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v34 = v5;
    *v4 = 136315138;
    *(v0 + 80) = v1;

    v6 = String.init<A>(describing:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v34);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1DC659000, v2, v3, "[ExecutionOverride] [HangUpOverride]: fetched context: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1E12A2F50](v5, -1, -1);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  if (!v1)
  {
    goto LABEL_16;
  }

  if (v1 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      goto LABEL_15;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_15;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1E12A1FE0](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v10 = *(v1 + 32);
  }

  v11 = v10;

  v12 = [v11 serializedContextByKey];

  if (!v12)
  {
    goto LABEL_16;
  }

  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v13 + 16))
  {

    goto LABEL_15;
  }

  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_15:

LABEL_16:
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DC659000, v22, v23, "[ExecutionOverride] [HangUpOverride]: Failed to retrieve phone call state before running Hangup Rule.", v24, 2u);
      MEMORY[0x1E12A2F50](v24, -1, -1);
    }

    v21 = 0;
    goto LABEL_19;
  }

  outlined init with copy of Any(*(v13 + 56) + 32 * v16, v0 + 16);

  v19 = objc_allocWithZone(MEMORY[0x1E698D0F0]);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v20 = [v19 initWithSerializedBackingStore_];
  swift_unknownObjectRelease();
  if ([v20 callState])
  {
    v21 = 1;
  }

  else
  {
    v21 = ([v20 callState] >> 1) & 1;
  }

  (*(**(v0 + 88) + 256))([v20 isDropInCall]);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  v28 = os_log_type_enabled(v26, v27);
  v29 = *(v0 + 88);
  if (v28)
  {
    v30 = swift_slowAlloc();
    *v30 = 67109120;
    *(v30 + 4) = (*(*v29 + 248))() & 1;

    _os_log_impl(&dword_1DC659000, v26, v27, "[ExecutionOverride] [HangUpOverride]: phoneCall state retrieved and is user on drop in call? Ans: %{BOOL}d", v30, 8u);
    MEMORY[0x1E12A2F50](v30, -1, -1);
  }

  else
  {
  }

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 67109120;
    *(v33 + 4) = v21;
    _os_log_impl(&dword_1DC659000, v31, v32, "[ExecutionOverride] [HangUpOverride]: phoneCall state retrieved and is user on call? Ans: %{BOOL}d", v33, 8u);
    MEMORY[0x1E12A2F50](v33, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
LABEL_19:
  v25 = *(v0 + 8);

  return v25(v21);
}

uint64_t closure #1 in HangUpOverride.isUserOnPhoneCall()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo22AFServiceDeviceContextCGSgs5NeverOGMd, &_sScCySaySo22AFServiceDeviceContextCGSgs5NeverOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = *(a2 + OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_bridge + 8);
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DCA66060;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v10;
  v11 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of String(inited + 32);
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v7, v4);
  (*(v8 + 120))(v11, 0, partial apply for closure #1 in closure #1 in HangUpOverride.isUserOnPhoneCall(), v13, ObjectType, v8);
}

uint64_t closure #1 in closure #1 in HangUpOverride.isUserOnPhoneCall()(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo22AFServiceDeviceContextCGSgs5NeverOGMd, &_sScCySaySo22AFServiceDeviceContextCGSgs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t HangUpOverride.deinit()
{
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_topRankedParse, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t HangUpOverride.__deallocating_deinit()
{
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_topRankedParse, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ExecutionOverride.evaluate() in conformance HangUpOverride(uint64_t a1)
{
  v6 = (*(**v1 + 280) + **(**v1 + 280));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v6(a1);
}

uint64_t type metadata accessor for HangUpOverride(uint64_t a1)
{
  result = type metadata singleton initialization cache for HangUpOverride;
  if (!type metadata singleton initialization cache for HangUpOverride)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for HangUpOverride(uint64_t a1)
{
  type metadata accessor for Siri_Nlu_External_UserParse?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of HangUpOverride.evaluate()(uint64_t a1)
{
  v6 = (*(*v1 + 280) + **(*v1 + 280));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v6(a1);
}

uint64_t specialized HangUpOverride.isQuickStopTask(task:)(uint64_t a1)
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (v8)
  {
    outlined init with take of Any(&v7, v9);
    outlined init with take of Any(v9, &v7);
    type metadata accessor for UsoTask_stop_uso_NoEntity();
    result = swift_dynamicCast();
    if (result)
    {
      v2 = result;

      return v2;
    }
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v7, &_sypSgMd, &_sypSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.executor);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DC659000, v4, v5, "[ExecutionOverride] Unable to initialize UsoTask. Rejecting.", v6, 2u);
      MEMORY[0x1E12A2F50](v6, -1, -1);
    }

    return 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type IdentifierNamespace and conformance IdentifierNamespace(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for closure #1 in closure #1 in HangUpOverride.isUserOnPhoneCall()(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo22AFServiceDeviceContextCGSgs5NeverOGMd, &_sScCySaySo22AFServiceDeviceContextCGSgs5NeverOGMR);

  return closure #1 in closure #1 in HangUpOverride.isUserOnPhoneCall()(a1);
}

uint64_t HangUpRule.ruleType.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

_BYTE *HangUpRule.__allocating_init(isUserOnActivePhoneCall:isActiveCallFallbackAllowed:)(char a1, char a2)
{
  result = swift_allocObject();
  result[16] = 0;
  result[17] = a1;
  result[18] = a2;
  return result;
}

_BYTE *HangUpRule.init(isUserOnActivePhoneCall:isActiveCallFallbackAllowed:)(char a1, char a2)
{
  v2[16] = 0;
  v2[17] = a1;
  v2[18] = a2;
  return v2;
}

SiriKitRuntime::PreExecutionDecision __swiftcall HangUpRule.evaluate()()
{
  if (*(v0 + 18))
  {
    return 11;
  }

  v2 = *(v0 + 17);
  if (v2 == 2)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.conversationBridge);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DC659000, v4, v5, "PhoneCallState is nil for HangUpRule. This should never happen! Failing request for privacy reasons.", v6, 2u);
      MEMORY[0x1E12A2F50](v6, -1, -1);
    }

    return 9;
  }

  else if (v2)
  {
    return 0;
  }

  else
  {
    return 11;
  }
}

uint64_t static HealthNLUtils.hasMeasurementUnits(from:)(uint64_t a1, double a2)
{
  v3 = type metadata accessor for UsoIdentifier();
  v34 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v33 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v26 - v6;
  if (!a1)
  {
    return 0;
  }

  result = dispatch thunk of UsoEntity_common_MeasurementComponent.unit.getter();
  if (!result)
  {
    return result;
  }

  v9 = result;
  result = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
  if (!result)
  {
    swift_arrayDestroy();

    return 0;
  }

  v10 = result;
  v26[1] = v9;
  v32 = *(result + 16);
  if (v32)
  {
    v11 = 0;
    v27 = (v34 + 8);
    v29 = (v34 + 32);
    v30 = v34 + 16;
    v12 = MEMORY[0x1E69E7CC0];
    v28 = v3;
    v31 = result;
    while (v11 < *(v10 + 16))
    {
      v13 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v14 = *(v34 + 72);
      (*(v34 + 16))(v7, v10 + v13 + v14 * v11, v3);
      v15 = UsoIdentifier.namespace.getter();
      if (v16)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0;
      }

      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0xE000000000000000;
      }

      v35[0] = v17;
      v35[1] = v18;
      MEMORY[0x1EEE9AC00](v15);
      v26[-2] = v35;
      v19 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, &v26[-4], &outlined read-only object #0 of static HealthNLUtils.hasMeasurementUnits(from:));

      if (v19)
      {
        v20 = *v29;
        (*v29)(v33, v7, v3);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1);
          v12 = v36;
        }

        v23 = *(v12 + 16);
        v22 = *(v12 + 24);
        if (v23 >= v22 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
          v12 = v36;
        }

        *(v12 + 16) = v23 + 1;
        v24 = v12 + v13 + v23 * v14;
        v3 = v28;
        result = (v20)(v24, v33, v28);
      }

      else
      {
        result = (*v27)(v7, v3);
      }

      ++v11;
      v10 = v31;
      if (v32 == v11)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_24:
    swift_arrayDestroy();

    v25 = *(v12 + 16);

    return v25 != 0;
  }

  return result;
}

uint64_t HealthAffinityScorer.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t HealthAffinityScorer.score(input:environment:)()
{
  v0 = specialized HealthAffinityScorer.getUsoTask(input:)();
  if (!v0)
  {
    return 1;
  }

  v2 = specialized HealthAffinityScorer.isExplicitlySupported(usoTask:)(v0, v1);

  if (v2)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t protocol witness for AffinityScoring.score(input:environment:) in conformance HealthAffinityScorer()
{
  v0 = specialized HealthAffinityScorer.getUsoTask(input:)();
  if (!v0)
  {
    return 1;
  }

  v2 = specialized HealthAffinityScorer.isExplicitlySupported(usoTask:)(v0, v1);

  if (v2)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

unint64_t specialized HealthAffinityScorer.getUsoTask(input:)()
{
  v0 = type metadata accessor for Parse();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for USOParse();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v1 + 88))(v3, v0) == *MEMORY[0x1E69D0168])
  {
    (*(v1 + 96))(v3, v0);
    (*(v5 + 32))(v7, v3, v4);
    v8 = specialized static AffinityScorerUtils.getTask(_:)();
    (*(v5 + 8))(v7, v4);
    result = v8;
    if (v8)
    {
      return result;
    }
  }

  else
  {
    (*(v1 + 8))(v3, v0);
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.executor);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1DC659000, v11, v12, "#HealthAffinityScorer did not find any relevant usoParses, returning low affinity score.", v13, 2u);
    MEMORY[0x1E12A2F50](v13, -1, -1);
  }

  return 0;
}

uint64_t specialized static HealthNLUtils.extractHealthLog(from:)(uint64_t a1)
{
  static UsoTask_CodegenConverter.convert(task:)();
  outlined init with copy of Any?(v7, v5);
  if (v6)
  {
    outlined init with copy of Any?(v5, v4);
    type metadata accessor for UsoTask_create_common_HealthLog();
    if (swift_dynamicCast())
    {

      dispatch thunk of Uso_VerbTemplate_Target.target.getter();
LABEL_12:

      outlined destroy of Any?(v7);
      v1 = v3;
      __swift_destroy_boxed_opaque_existential_1Tm(v4);
      goto LABEL_13;
    }

    type metadata accessor for UsoTask_requestLog_common_HealthLog();
    if (swift_dynamicCast())
    {

      dispatch thunk of Uso_VerbTemplate_ReferenceMeasurementUnit.reference.getter();
      goto LABEL_12;
    }

    type metadata accessor for UsoTask_open_common_HealthLog();
    if (swift_dynamicCast() || (type metadata accessor for UsoTask_checkExistence_common_HealthLog(), swift_dynamicCast()) || (type metadata accessor for UsoTask_delete_common_HealthLog(), swift_dynamicCast()))
    {

      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
      goto LABEL_12;
    }

    outlined destroy of Any?(v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    outlined destroy of Any?(v7);
  }

  v1 = 0;
LABEL_13:
  outlined destroy of Any?(v5);
  return v1;
}

uint64_t specialized static HealthNLUtils.hasHealthDataType(from:)(uint64_t a1, double a2)
{
  v3 = type metadata accessor for UsoIdentifier();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  if (!a1)
  {
    return 0;
  }

  result = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
  if (!result)
  {
    swift_arrayDestroy();

    return 0;
  }

  v14 = result;
  v34 = *(result + 16);
  if (!v34)
  {
LABEL_16:

    return 0;
  }

  v29 = v9;
  v30 = v12;
  v15 = 0;
  v33 = result + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v31 = a1;
  v32 = v4 + 16;
  while (1)
  {
    if (v15 >= *(v14 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v4 + 16))(v6, v33 + *(v4 + 72) * v15, v3);
    v16 = UsoIdentifier.namespace.getter();
    v18 = v17 ? v16 : 0;
    v19 = v17 ? v17 : 0xE000000000000000;
    v35[0] = v18;
    v35[1] = v19;
    MEMORY[0x1EEE9AC00](v16);
    *(&v28 - 2) = v35;
    v20 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v28 - 4), &outlined read-only object #0 of static HealthNLUtils.hasHealthDataType(from:));

    if (v20)
    {
      break;
    }

    ++v15;
    result = (*(v4 + 8))(v6, v3);
    if (v34 == v15)
    {
      goto LABEL_16;
    }
  }

  v21 = *(v4 + 32);
  v22 = v29;
  v21(v29, v6, v3);
  v23 = v30;
  v21(v30, v22, v3);
  v24 = UsoIdentifier.value.getter();
  v26 = v25;

  (*(v4 + 8))(v23, v3);

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  return v27 != 0;
}

uint64_t specialized HealthAffinityScorer.isExplicitlySupported(usoTask:)(uint64_t a1, double a2)
{
  v3 = type metadata accessor for UsoIdentifier();
  v60 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v59 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v52 = v41 - v6;
  static UsoTask_CodegenConverter.convert(task:)();
  if (v63[3])
  {
    outlined init with copy of Any?(v63, v62);
    type metadata accessor for UsoTask_open_common_HealthLog();
    if (swift_dynamicCast() || (type metadata accessor for UsoTask_create_common_HealthLog(), swift_dynamicCast()) || (type metadata accessor for UsoTask_delete_common_HealthLog(), swift_dynamicCast()) || (type metadata accessor for UsoTask_update_common_HealthLog(), swift_dynamicCast()) || (type metadata accessor for UsoTask_noVerb_common_HealthLog(), swift_dynamicCast()) || (type metadata accessor for UsoTask_requestLog_common_HealthLog(), swift_dynamicCast()))
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      outlined destroy of Any?(v63);
      result = specialized static HealthNLUtils.extractHealthLog(from:)(a1);
      if (!result)
      {
        return result;
      }

      v9 = result;
      if (specialized static HealthNLUtils.hasHealthDataType(from:)(result, v8))
      {
LABEL_10:

        return 1;
      }

      if (dispatch thunk of UsoEntity_common_HealthLog.value.getter())
      {
        v10 = dispatch thunk of UsoEntity_common_Measurement.components.getter();

        if (v10)
        {
          v11 = v10 & 0xFFFFFFFFFFFFFF8;
          if (v10 >> 62)
          {
            goto LABEL_75;
          }

          v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_15:
          v42 = v10;
          v41[1] = v9;
          if (v12)
          {
            v13 = 0;
            v10 = 0;
            v50 = v42 + 32;
            v51 = v42 & 0xC000000000000001;
            v56 = v60 + 16;
            v53 = (v60 + 8);
            v14 = MEMORY[0x1E69E7CC0];
            v54 = v3;
            v55 = (v60 + 32);
            v44 = v11;
            v43 = v12;
            while (1)
            {
              if (v51)
              {
                v9 = MEMORY[0x1E12A1FE0](v13, v42);
                v15 = __OFADD__(v13++, 1);
                if (v15)
                {
                  goto LABEL_73;
                }
              }

              else
              {
                if (v13 >= *(v11 + 16))
                {
                  goto LABEL_74;
                }

                v9 = *(v50 + 8 * v13);

                v15 = __OFADD__(v13++, 1);
                if (v15)
                {
                  goto LABEL_73;
                }
              }

              dispatch thunk of CodeGenListEntry.entry.getter();
              v16 = v62[0];
              if (!v62[0])
              {
                goto LABEL_42;
              }

              v17 = dispatch thunk of UsoEntity_common_MeasurementComponent.unit.getter();
              if (!v17)
              {
                break;
              }

              v18 = v17;
              v49 = v16;
              v19 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
              if (!v19)
              {

                swift_arrayDestroy();
                goto LABEL_43;
              }

              v45 = v18;
              v46 = v9;
              v47 = v14;
              v48 = v13;
              v20 = v52;
              v58 = *(v19 + 16);
              if (v58)
              {
                v9 = 0;
                v21 = MEMORY[0x1E69E7CC0];
                v57 = v19;
                while (v9 < *(v19 + 16))
                {
                  v22 = (*(v60 + 80) + 32) & ~*(v60 + 80);
                  v23 = *(v60 + 72);
                  (*(v60 + 16))(v20, v19 + v22 + v23 * v9, v3);
                  v24 = v20;
                  v25 = UsoIdentifier.namespace.getter();
                  if (v26)
                  {
                    v27 = v25;
                  }

                  else
                  {
                    v27 = 0;
                  }

                  if (v26)
                  {
                    v28 = v26;
                  }

                  else
                  {
                    v28 = 0xE000000000000000;
                  }

                  v63[0] = v27;
                  v63[1] = v28;
                  MEMORY[0x1EEE9AC00](v25);
                  v41[-2] = v63;
                  v11 = v3;
                  v29 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v41[-4], &outlined read-only object #0 of HealthAffinityScorer.isExplicitlySupported(usoTask:));

                  if (v29)
                  {
                    v30 = *v55;
                    (*v55)(v59, v24, v11);
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v61 = v21;
                    if (isUniquelyReferenced_nonNull_native)
                    {
                      v20 = v24;
                    }

                    else
                    {
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 16) + 1, 1);
                      v20 = v52;
                      v21 = v61;
                    }

                    v33 = *(v21 + 16);
                    v32 = *(v21 + 24);
                    if (v33 >= v32 >> 1)
                    {
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
                      v20 = v52;
                      v21 = v61;
                    }

                    *(v21 + 16) = v33 + 1;
                    v3 = v54;
                    v30((v21 + v22 + v33 * v23), v59, v54);
                  }

                  else
                  {
                    (*v53)(v24, v11);
                    v20 = v24;
                    v3 = v11;
                  }

                  ++v9;
                  v19 = v57;
                  if (v58 == v9)
                  {
                    goto LABEL_50;
                  }
                }

                __break(1u);
LABEL_73:
                __break(1u);
LABEL_74:
                __break(1u);
LABEL_75:
                v12 = __CocoaSet.count.getter();
                goto LABEL_15;
              }

              v21 = MEMORY[0x1E69E7CC0];
LABEL_50:

              swift_arrayDestroy();

              v36 = *(v21 + 16);

              v9 = v36 != 0;
              v14 = v47;
              v37 = swift_isUniquelyReferenced_nonNull_native();
              v11 = v44;
              v12 = v43;
              v13 = v48;
              if ((v37 & 1) == 0)
              {
LABEL_51:
                v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
              }

LABEL_44:
              v35 = *(v14 + 2);
              v34 = *(v14 + 3);
              if (v35 >= v34 >> 1)
              {
                v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v14);
              }

              *(v14 + 2) = v35 + 1;
              v14[v35 + 32] = v9;
              if (v13 == v12)
              {
                goto LABEL_56;
              }
            }

LABEL_42:

LABEL_43:
            v9 = 0;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              goto LABEL_51;
            }

            goto LABEL_44;
          }

          v14 = MEMORY[0x1E69E7CC0];
LABEL_56:

          v38 = *(v14 + 2);
          v39 = (v14 + 32);
          while (v38)
          {
            v40 = *v39++;
            --v38;
            if (v40 == 1)
            {

              goto LABEL_10;
            }
          }
        }
      }

      return 0;
    }

    type metadata accessor for UsoTask_checkExistence_common_MedicationEvent();
    if (swift_dynamicCast() || (type metadata accessor for UsoTask_create_common_MedicationEvent(), swift_dynamicCast()) || (type metadata accessor for UsoTask_snooze_common_MedicationEvent(), swift_dynamicCast()) || (type metadata accessor for UsoTask_checkExistence_common_MedicationSchedule(), swift_dynamicCast()) || (type metadata accessor for UsoTask_delete_common_MedicationSchedule(), swift_dynamicCast()) || (type metadata accessor for UsoTask_update_common_MedicationSchedule(), swift_dynamicCast()) || (type metadata accessor for UsoTask_create_common_MedicationSchedule(), swift_dynamicCast()) || (type metadata accessor for UsoTask_summarise_common_MedicationSchedule(), swift_dynamicCast()) || (type metadata accessor for UsoTask_request_common_MedicationSchedule(), swift_dynamicCast()))
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      outlined destroy of Any?(v63);
      return 1;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v62);
  }

  outlined destroy of Any?(v63);
  return 0;
}

SiriKitRuntime::HomeAutomationAffinityScorer __swiftcall HomeAutomationAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CB00;
  v1 = 0xD00000000000002FLL;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

Swift::Bool __swiftcall UsoEntitySpan.anyPropertiesMatch(key:value:)(Swift::String key, Swift::String value)
{
  object = value._object;
  countAndFlagsBits = value._countAndFlagsBits;
  v23 = key._object;
  v2 = key._countAndFlagsBits;
  v3 = type metadata accessor for SpanProperty();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = UsoEntitySpan.properties.getter();
  v8 = v7;
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = 0;
    v22 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v21 = v4 + 16;
    v11 = (v4 + 8);
    do
    {
      if (v10 >= *(v8 + 16))
      {
        __break(1u);
        return v7;
      }

      (*(v4 + 16))(v6, v22 + *(v4 + 72) * v10, v3);
      if (SpanProperty.key.getter() == v2 && v12 == v23)
      {
      }

      else
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v13 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      v14 = SpanProperty.valueString.getter();
      if (!v15)
      {
LABEL_3:
        LOBYTE(v7) = (*v11)(v6, v3);
        goto LABEL_4;
      }

      if (v14 == countAndFlagsBits && v15 == object)
      {

        (*v11)(v6, v3);
LABEL_17:

        LOBYTE(v7) = 1;
        return v7;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      LOBYTE(v7) = (*v11)(v6, v3);
      if (v16)
      {
        goto LABEL_17;
      }

LABEL_4:
      ++v10;
    }

    while (v9 != v10);
  }

  LOBYTE(v7) = 0;
  return v7;
}

unint64_t HomeAutomationAffinityScorer.HomeAutomationNamespace.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000015;
    if (a1 == 8)
    {
      v6 = 0xD000000000000017;
    }

    else
    {
      v6 = 0xD000000000000013;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD00000000000001BLL;
    if (a1 == 5)
    {
      v7 = 0xD000000000000017;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000011;
    v2 = 0xD000000000000012;
    if (a1 == 3)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 != 2)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000015;
    if (!a1)
    {
      v3 = 0xD000000000000018;
    }

    if (a1 <= 1u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance HomeAutomationAffinityScorer.HomeAutomationNamespace(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = HomeAutomationAffinityScorer.HomeAutomationNamespace.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == HomeAutomationAffinityScorer.HomeAutomationNamespace.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HomeAutomationAffinityScorer.HomeAutomationNamespace()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  HomeAutomationAffinityScorer.HomeAutomationNamespace.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance HomeAutomationAffinityScorer.HomeAutomationNamespace(uint64_t a1)
{
  HomeAutomationAffinityScorer.HomeAutomationNamespace.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HomeAutomationAffinityScorer.HomeAutomationNamespace(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  HomeAutomationAffinityScorer.HomeAutomationNamespace.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance HomeAutomationAffinityScorer.HomeAutomationNamespace@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized HomeAutomationAffinityScorer.HomeAutomationNamespace.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance HomeAutomationAffinityScorer.HomeAutomationNamespace@<X0>(unint64_t *a1@<X8>)
{
  result = HomeAutomationAffinityScorer.HomeAutomationNamespace.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t one-time initialization function for kHAGeneralNamespaceMatches()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kHAGeneralNamespaceMatches);
  result = swift_arrayDestroy();
  static HomeAutomationAffinityScorer.kHAGeneralNamespaceMatches = v0;
  return result;
}

uint64_t *HomeAutomationAffinityScorer.kHAGeneralNamespaceMatches.unsafeMutableAddressor()
{
  if (one-time initialization token for kHAGeneralNamespaceMatches != -1)
  {
    swift_once();
  }

  return &static HomeAutomationAffinityScorer.kHAGeneralNamespaceMatches;
}

uint64_t one-time initialization function for kHAExactNamespaceMatches()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kHAExactNamespaceMatches);
  result = swift_arrayDestroy();
  static HomeAutomationAffinityScorer.kHAExactNamespaceMatches = v0;
  return result;
}

{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kHAExactNamespaceMatches);
  result = swift_arrayDestroy();
  static SystemCommandsAffinityScorer.kHAExactNamespaceMatches = v0;
  return result;
}

uint64_t *HomeAutomationAffinityScorer.kHAExactNamespaceMatches.unsafeMutableAddressor()
{
  if (one-time initialization token for kHAExactNamespaceMatches != -1)
  {
    swift_once();
  }

  return &static HomeAutomationAffinityScorer.kHAExactNamespaceMatches;
}

uint64_t *HomeAutomationAffinityScorer.kAppBundleIdMatches.unsafeMutableAddressor()
{
  if (one-time initialization token for kAppBundleIdMatches != -1)
  {
    swift_once();
  }

  return &static HomeAutomationAffinityScorer.kAppBundleIdMatches;
}

uint64_t one-time initialization function for kSummariseSettingStrictValues()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kSummariseSettingStrictValues);
  result = swift_arrayDestroy();
  static HomeAutomationAffinityScorer.kSummariseSettingStrictValues = v0;
  return result;
}

uint64_t *HomeAutomationAffinityScorer.kSummariseSettingStrictValues.unsafeMutableAddressor()
{
  if (one-time initialization token for kSummariseSettingStrictValues != -1)
  {
    swift_once();
  }

  return &static HomeAutomationAffinityScorer.kSummariseSettingStrictValues;
}

uint64_t one-time initialization function for kPauseOrResumeSettingStrictValues()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kPauseOrResumeSettingStrictValues);
  result = swift_arrayDestroy();
  static HomeAutomationAffinityScorer.kPauseOrResumeSettingStrictValues = v0;
  return result;
}

uint64_t *HomeAutomationAffinityScorer.kPauseOrResumeSettingStrictValues.unsafeMutableAddressor()
{
  if (one-time initialization token for kPauseOrResumeSettingStrictValues != -1)
  {
    swift_once();
  }

  return &static HomeAutomationAffinityScorer.kPauseOrResumeSettingStrictValues;
}

uint64_t one-time initialization function for kVacuumingOrMoppingEntityTagStrictValues()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kVacuumingOrMoppingEntityTagStrictValues);
  result = swift_arrayDestroy();
  static HomeAutomationAffinityScorer.kVacuumingOrMoppingEntityTagStrictValues = v0;
  return result;
}

uint64_t *HomeAutomationAffinityScorer.kVacuumingOrMoppingEntityTagStrictValues.unsafeMutableAddressor()
{
  if (one-time initialization token for kVacuumingOrMoppingEntityTagStrictValues != -1)
  {
    swift_once();
  }

  return &static HomeAutomationAffinityScorer.kVacuumingOrMoppingEntityTagStrictValues;
}

uint64_t one-time initialization function for kHKEntityTypes()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kHKEntityTypes);
  result = swift_arrayDestroy();
  static HomeAutomationAffinityScorer.kHKEntityTypes = v0;
  return result;
}

{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kHKEntityTypes);
  result = swift_arrayDestroy();
  static SystemCommandsAffinityScorer.kHKEntityTypes = v0;
  return result;
}

uint64_t *HomeAutomationAffinityScorer.kHKEntityTypes.unsafeMutableAddressor()
{
  if (one-time initialization token for kHKEntityTypes != -1)
  {
    swift_once();
  }

  return &static HomeAutomationAffinityScorer.kHKEntityTypes;
}

uint64_t one-time initialization function for kLockRelatedValues()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kLockRelatedValues);
  result = swift_arrayDestroy();
  static HomeAutomationAffinityScorer.kLockRelatedValues = v0;
  return result;
}

uint64_t *HomeAutomationAffinityScorer.kLockRelatedValues.unsafeMutableAddressor()
{
  if (one-time initialization token for kLockRelatedValues != -1)
  {
    swift_once();
  }

  return &static HomeAutomationAffinityScorer.kLockRelatedValues;
}

uint64_t HomeAutomationAffinityScorer.HAMatchConditions.description.getter(uint64_t a1, __int16 a2)
{
  _StringGuts.grow(_:)(315);
  MEMORY[0x1E12A1580](0xD000000000000036, 0x80000001DCA83FA0);
  if (a1)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (a1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v4, v5);

  MEMORY[0x1E12A1580](0xD000000000000015, 0x80000001DCA83FE0);
  if ((a1 & 0x100) != 0)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if ((a1 & 0x100) != 0)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v6, v7);

  MEMORY[0x1E12A1580](0xD000000000000010, 0x80000001DCA84000);
  if ((a1 & 0x10000) != 0)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if ((a1 & 0x10000) != 0)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v8, v9);

  MEMORY[0x1E12A1580](0xD00000000000001DLL, 0x80000001DCA84020);
  if ((a1 & 0x1000000) != 0)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if ((a1 & 0x1000000) != 0)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v10, v11);

  MEMORY[0x1E12A1580](0xD000000000000022, 0x80000001DCA84040);
  if ((a1 & 0x100000000) != 0)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if ((a1 & 0x100000000) != 0)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v12, v13);

  MEMORY[0x1E12A1580](0xD000000000000022, 0x80000001DCA84070);
  if ((a1 & 0x10000000000) != 0)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if ((a1 & 0x10000000000) != 0)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v14, v15);

  MEMORY[0x1E12A1580](0xD000000000000017, 0x80000001DCA840A0);
  if ((a1 & 0x1000000000000) != 0)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if ((a1 & 0x1000000000000) != 0)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v16, v17);

  MEMORY[0x1E12A1580](0xD00000000000001CLL, 0x80000001DCA840C0);
  if ((a1 & 0x100000000000000) != 0)
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if ((a1 & 0x100000000000000) != 0)
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v18, v19);

  MEMORY[0x1E12A1580](0xD000000000000021, 0x80000001DCA840E0);
  if (a2)
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (a2)
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v20, v21);

  MEMORY[0x1E12A1580](0xD000000000000015, 0x80000001DCA84110);
  if ((a2 & 0x100) != 0)
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if ((a2 & 0x100) != 0)
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v22, v23);

  MEMORY[0x1E12A1580](32010, 0xE200000000000000);
  return 0;
}

SiriKitRuntime::HomeAutomationAffinityScorer::HAMatchConditions __swiftcall HomeAutomationAffinityScorer.HAMatchConditions.init(haSpanGeneralMatch:haSpanExactMatch:haSpanMatch:haSpanLemmatizationMatch:homeKitEntityTypeExactMatch:homeKitEntityTypeFuzzyMatch:appBundleIdMatch:placeHintGeneralMatch:visionOSExceptionWordMatch:iOSLockRequest:)(Swift::Bool haSpanGeneralMatch, Swift::Bool haSpanExactMatch, Swift::Bool haSpanMatch, Swift::Bool haSpanLemmatizationMatch, Swift::Bool homeKitEntityTypeExactMatch, Swift::Bool homeKitEntityTypeFuzzyMatch, Swift::Bool appBundleIdMatch, Swift::Bool placeHintGeneralMatch, Swift::Bool visionOSExceptionWordMatch, Swift::Bool iOSLockRequest)
{
  if (haSpanExactMatch)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 & 0xFFFFFFFFFFFFFFFELL | haSpanGeneralMatch;
  v12 = 0x10000;
  if (!haSpanMatch)
  {
    v12 = 0;
  }

  v13 = 0x1000000;
  if (!haSpanLemmatizationMatch)
  {
    v13 = 0;
  }

  v14 = v11 | v12 | v13;
  v15 = 0x100000000;
  if (!homeKitEntityTypeExactMatch)
  {
    v15 = 0;
  }

  v16 = 0x10000000000;
  if (!homeKitEntityTypeFuzzyMatch)
  {
    v16 = 0;
  }

  v17 = 0x1000000000000;
  if (!appBundleIdMatch)
  {
    v17 = 0;
  }

  v18 = v15 | v16;
  v19 = 0x100000000000000;
  if (!placeHintGeneralMatch)
  {
    v19 = 0;
  }

  v20 = v14 | v18 | v17;
  if (iOSLockRequest)
  {
    v21 = 256;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21 & 0xFFFE | visionOSExceptionWordMatch;
  v23 = v20 | v19;
  result.haSpanGeneralMatch = v23;
  result.haSpanExactMatch = BYTE1(v23);
  result.haSpanMatch = BYTE2(v23);
  result.haSpanLemmatizationMatch = BYTE3(v23);
  result.homeKitEntityTypeExactMatch = BYTE4(v23);
  result.homeKitEntityTypeFuzzyMatch = BYTE5(v23);
  result.appBundleIdMatch = BYTE6(v23);
  result.placeHintGeneralMatch = HIBYTE(v23);
  result.visionOSExceptionWordMatch = v22;
  result.iOSLockRequest = HIBYTE(v22);
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HomeAutomationAffinityScorer.HAMatchConditions()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 & 0xFFFFFFFFFFFFFFFELL | *v0 & 1;
  v3 = 0x10000;
  if ((v0[2] & 1) == 0)
  {
    v3 = 0;
  }

  v4 = 0x1000000;
  if ((v0[3] & 1) == 0)
  {
    v4 = 0;
  }

  v5 = v2 | v3 | v4;
  v6 = 0x100000000;
  if ((v0[4] & 1) == 0)
  {
    v6 = 0;
  }

  v7 = 0x10000000000;
  if ((v0[5] & 1) == 0)
  {
    v7 = 0;
  }

  v8 = 0x1000000000000;
  if ((v0[6] & 1) == 0)
  {
    v8 = 0;
  }

  v9 = v6 | v7;
  v10 = 0x100000000000000;
  if ((v0[7] & 1) == 0)
  {
    v10 = 0;
  }

  v11 = v5 | v9 | v8;
  if (v0[9])
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  return HomeAutomationAffinityScorer.HAMatchConditions.description.getter(v11 | v10, v12 & 0xFFFE | v0[8] & 1u);
}

uint64_t HomeAutomationAffinityScorer.HomeAppEntityType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6E45656369766544;
  v2 = 0x746E45656E656353;
  v3 = 0x79726F6765746143;
  if (a1 != 3)
  {
    v3 = 0x69746E456D6F6F52;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x69746E45656D6F48;
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance HomeAutomationAffinityScorer.HomeAppEntityType(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEC00000079746974;
  v3 = 0x6E45656369766544;
  v4 = *a1;
  v5 = *a2;
  v6 = 0x746E45656E656353;
  v7 = 0xEB00000000797469;
  v8 = 0x79726F6765746143;
  v9 = 0xEE00797469746E45;
  if (v4 != 3)
  {
    v8 = 0x69746E456D6F6F52;
    v9 = 0xEA00000000007974;
  }

  if (v4 != 2)
  {
    v6 = v8;
    v7 = v9;
  }

  v10 = 0x69746E45656D6F48;
  v11 = 0xEA00000000007974;
  if (!*a1)
  {
    v10 = 0x6E45656369766544;
    v11 = 0xEC00000079746974;
  }

  if (*a1 <= 1u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (v4 <= 1)
  {
    v13 = v11;
  }

  else
  {
    v13 = v7;
  }

  v14 = 0x746E45656E656353;
  v15 = 0xEB00000000797469;
  v16 = 0x79726F6765746143;
  v17 = 0xEE00797469746E45;
  if (v5 != 3)
  {
    v16 = 0x69746E456D6F6F52;
    v17 = 0xEA00000000007974;
  }

  if (v5 != 2)
  {
    v14 = v16;
    v15 = v17;
  }

  if (*a2)
  {
    v3 = 0x69746E45656D6F48;
    v2 = 0xEA00000000007974;
  }

  if (*a2 <= 1u)
  {
    v18 = v3;
  }

  else
  {
    v18 = v14;
  }

  if (*a2 <= 1u)
  {
    v19 = v2;
  }

  else
  {
    v19 = v15;
  }

  if (v12 == v18 && v13 == v19)
  {
    v20 = 1;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v20 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HomeAutomationAffinityScorer.HomeAppEntityType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance HomeAutomationAffinityScorer.HomeAppEntityType(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HomeAutomationAffinityScorer.HomeAppEntityType(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance HomeAutomationAffinityScorer.HomeAppEntityType@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized HomeAutomationAffinityScorer.HomeAppEntityType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance HomeAutomationAffinityScorer.HomeAppEntityType(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000079746974;
  v4 = 0x6E45656369766544;
  v5 = 0xEB00000000797469;
  v6 = 0x746E45656E656353;
  v7 = 0xEE00797469746E45;
  v8 = 0x79726F6765746143;
  if (v2 != 3)
  {
    v8 = 0x69746E456D6F6F52;
    v7 = 0xEA00000000007974;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x69746E45656D6F48;
    v3 = 0xEA00000000007974;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t HomeAutomationAffinityScorer.score(input:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for USOParse();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Parse();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v12 + 88))(v14, v11) != *MEMORY[0x1E69D0168])
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.executor);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1DC659000, v19, v20, "HomeAutomationAffinityScorer - [Default] Got unexpected parse", v21, 2u);
      MEMORY[0x1E12A2F50](v21, -1, -1);
    }

    (*(v12 + 8))(v14, v11);
    return 2;
  }

  v116 = a3;
  (*(v12 + 96))(v14, v11);
  (*(v8 + 32))(v10, v14, v7);
  v15 = specialized static AffinityScorerUtils.getTask(_:)();
  if (!v15)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.executor);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1DC659000, v24, v25, "HomeAutomationAffinityScorer - [Unsupported] Could not extract uso task", v26, 2u);
      MEMORY[0x1E12A2F50](v26, -1, -1);
    }

    goto LABEL_16;
  }

  v16 = v15;
  v111 = a2;
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.homeKitProvider.getter();

  v17 = dispatch thunk of HomeKitProvider.areHomesConfigured(refresh:)();

  if (v17)
  {
    v114 = 1;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.executor);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1DC659000, v28, v29, "HomeAutomationAffinityScorer - Refreshing home configuration", v30, 2u);
      MEMORY[0x1E12A2F50](v30, -1, -1);
    }

    static SiriEnvironment.default.getter();
    SiriEnvironment.homeKitProvider.getter();

    v114 = dispatch thunk of HomeKitProvider.areHomesConfigured(refresh:)();
  }

  v110 = a4;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  v115 = __swift_project_value_buffer(v31, static Logger.executor);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v113 = v7;
    v36 = v8;
    v37 = v35;
    v117 = v35;
    *v34 = 136315138;
    static SiriEnvironment.default.getter();
    SiriEnvironment.homeKitProvider.getter();

    v38 = dispatch thunk of HomeKitProvider.debugInfo.getter();
    v40 = v39;

    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v117);

    *(v34 + 4) = v41;
    _os_log_impl(&dword_1DC659000, v32, v33, "HomeAutomationAffinityScorer - Home configuration is %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    v42 = v37;
    v8 = v36;
    v7 = v113;
    MEMORY[0x1E12A2F50](v42, -1, -1);
    MEMORY[0x1E12A2F50](v34, -1, -1);
  }

  v43 = specialized static AffinityScorerUtils.getEntitySpans(_:)();
  v44 = specialized HomeAutomationAffinityScorer.scorePauseOrResumeSetting(usoTask:usoEntitySpans:for:)(v16, v43, v10);
  if (v44 != 5)
  {
    v76 = v44;
    (*(v8 + 8))(v10, v7);

    return v76;
  }

  v108 = v16;
  v109 = v8;
  v45 = specialized HomeAutomationAffinityScorer.hasGeneralNamespaceMatch(_:)(v43);
  LODWORD(v46) = specialized HomeAutomationAffinityScorer.hasExactNamespaceMatch(_:)();
  v47 = specialized HomeAutomationAffinityScorer.hasNamespaceMatch(_:)(v43);
  v48 = specialized HomeAutomationAffinityScorer.hasSpanLemmatizationMatch(_:)(v43);
  LODWORD(v113) = specialized HomeAutomationAffinityScorer.hasHKExactMatch(_:)(v43);
  v112 = specialized HomeAutomationAffinityScorer.hasHKFuzzyMatch(_:)(v43);
  v107 = specialized HomeAutomationAffinityScorer.hasAppBundleIdMatch(_:)(v43);
  LODWORD(v49) = specialized HomeAutomationAffinityScorer.hasPlaceHintMatch(_:)(v43);
  v50 = specialized HomeAutomationAffinityScorer.isiOSLockRequest(_:)(v43);

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();
  v53 = os_log_type_enabled(v51, v52);
  v104 = v50;
  if (v53)
  {
    v54 = swift_slowAlloc();
    v106 = v46;
    v46 = v54;
    v55 = swift_slowAlloc();
    v105 = v49;
    v49 = v55;
    v117 = v55;
    *v46 = 136315138;
    if (v106)
    {
      v56 = 256;
    }

    else
    {
      v56 = 0;
    }

    v57 = v56 & 0xFFFFFFFFFFFFFFFELL | v45 & 1;
    v58 = 0x10000;
    if (!v47)
    {
      v58 = 0;
    }

    v59 = 0x1000000;
    if (!v48)
    {
      v59 = 0;
    }

    v60 = v57 | v58 | v59;
    v61 = 0x100000000;
    if ((v113 & 1) == 0)
    {
      v61 = 0;
    }

    v62 = 0x10000000000;
    if (!v112)
    {
      v62 = 0;
    }

    v63 = 0x1000000000000;
    if ((v107 & 1) == 0)
    {
      v63 = 0;
    }

    v64 = v61 | v62;
    v65 = 0x100000000000000;
    if ((v105 & 1) == 0)
    {
      v65 = 0;
    }

    v66 = v60 | v64 | v63;
    v67 = (v66 | v65);
    if (v50)
    {
      v68 = 256;
    }

    else
    {
      v68 = 0;
    }

    v69 = HomeAutomationAffinityScorer.HAMatchConditions.description.getter(v66 | v65, v68);
    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, &v117);

    *(v46 + 4) = v71;
    _os_log_impl(&dword_1DC659000, v51, v52, "HomeAutomationAffinityScorer - MatchConditions computed:\n%s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    v72 = v49;
    LOBYTE(v49) = v105;
    MEMORY[0x1E12A2F50](v72, -1, -1);
    v73 = v46;
    LOBYTE(v46) = v106;
    MEMORY[0x1E12A2F50](v73, -1, -1);

    v75 = v112;
    v74 = v113;
  }

  else
  {

    if (v46)
    {
      v77 = 256;
    }

    else
    {
      v77 = 0;
    }

    v78 = v77 & 0xFFFFFFFFFFFFFFFELL | v45 & 1;
    v79 = 0x10000;
    if (!v47)
    {
      v79 = 0;
    }

    v80 = 0x1000000;
    if (!v48)
    {
      v80 = 0;
    }

    v81 = v78 | v79 | v80;
    v75 = v112;
    v74 = v113;
    v82 = 0x100000000;
    if ((v113 & 1) == 0)
    {
      v82 = 0;
    }

    v83 = 0x10000000000;
    if (!v112)
    {
      v83 = 0;
    }

    v84 = 0x1000000000000;
    if ((v107 & 1) == 0)
    {
      v84 = 0;
    }

    v85 = v82 | v83;
    v86 = 0x100000000000000;
    if ((v49 & 1) == 0)
    {
      v86 = 0;
    }

    v67 = (v81 | v85 | v84 | v86);
    if (v50)
    {
      v68 = 256;
    }

    else
    {
      v68 = 0;
    }
  }

  v87 = v108;
  v88 = specialized HomeAutomationAffinityScorer.scoreSummariseSetting(usoTask:_:)(v108, v67);
  v8 = v109;
  if (v88 != 5)
  {
    v89 = v88;
    (*(v109 + 8))(v10, v7);

    return v89;
  }

  if (v114)
  {
    if (HomeAutomationAffinityScorer.isOverrideScore(_:_:_:)(v87, v67, v68, v111, v116, v110))
    {
      (*(v8 + 8))(v10, v7);

      return 4;
    }

    if (!(v74 & 1 | ((v104 & 1) == 0) | (v75 | v46) & 1 | v49 & 1))
    {
      (*(v8 + 8))(v10, v7);

      return 1;
    }

    if (HomeAutomationAffinityScorer.isHighScore(_:_:_:)(v87, v67, v68, v111, v116, v110))
    {
      (*(v8 + 8))(v10, v7);

      return 3;
    }

    if (specialized HomeAutomationAffinityScorer.isDefaultScore(_:_:_:)(v87, v67))
    {
      (*(v8 + 8))(v10, v7);

      return 2;
    }

    v91 = Logger.logObject.getter();
    v103 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v91, v103))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      v96 = "HomeAutomationAffinityScorer - [Low] Found no HomeAutomation spans";
      v97 = v103;
      v98 = v91;
      v99 = v95;
      v100 = 2;
      goto LABEL_74;
    }

    goto LABEL_75;
  }

  v90 = v49;
  v91 = Logger.logObject.getter();
  if (((v49 | v46) & 1) == 0)
  {
    v101 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v91, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&dword_1DC659000, v91, v101, "HomeAutomationAffinityScorer - [Unsupported] No home configured.", v102, 2u);
      MEMORY[0x1E12A2F50](v102, -1, -1);
    }

LABEL_16:
    (*(v8 + 8))(v10, v7);
    return 0;
  }

  v92 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = v46;
    v95 = v93;
    *v93 = 67109632;
    *(v93 + 8) = 1024;
    *(v93 + 10) = v90 & 1;
    *(v93 + 14) = 1024;
    *(v93 + 16) = v94 & 1;
    v96 = "HomeAutomationAffinityScorer - [Low]\nHome configured: %{BOOL}d &\n(placeHintGeneralMatch: %{BOOL}d || HASpanExactMatch: %{BOOL}d)";
    v97 = v92;
    v98 = v91;
    v99 = v93;
    v100 = 20;
LABEL_74:
    _os_log_impl(&dword_1DC659000, v98, v97, v96, v99, v100);
    MEMORY[0x1E12A2F50](v95, -1, -1);
  }

LABEL_75:

  (*(v8 + 8))(v10, v7);
  return 1;
}

uint64_t HomeAutomationAffinityScorer.isOverrideScore(_:_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v45 - v9;
  v11 = type metadata accessor for RRCandidate();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v45 - v17;
  if (a3)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.executor);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 67109120;
      *(v22 + 4) = 1;
      _os_log_impl(&dword_1DC659000, v20, v21, "HomeAutomationAffinityScorer - usoEntitySpansConditions.visionOSExceptionWordMatch is %{BOOL}d", v22, 8u);
      MEMORY[0x1E12A2F50](v22, -1, -1);
    }

    return 0;
  }

  if ((a2 & 0x10000) != 0)
  {
    if ((a2 & 0x100000000) != 0)
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, static Logger.executor);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1DC659000, v30, v31, "HomeAutomationAffinityScorer - [Override] USO entity spans satisfy condition:\n(GeneralNamespaceMatches || ExactNameSpaceMatch) && HomeKitEntityType.ExactMatch", v32, 2u);
        MEMORY[0x1E12A2F50](v32, -1, -1);
      }

      return 1;
    }

    v23 = v16;
    v24 = UsoTask.arguments.getter();
    if (*(v24 + 16))
    {
      v25 = specialized __RawDictionaryStorage.find<A>(_:)(0x636E657265666572, 0xE900000000000065);
      if (v26)
      {
        v27 = *(*(v24 + 56) + 8 * v25);

        if (v27 >> 62)
        {
          if (__CocoaSet.count.getter())
          {
LABEL_13:
            if ((v27 & 0xC000000000000001) != 0)
            {
              MEMORY[0x1E12A1FE0](0, v27);
              swift_unknownObjectRelease();
            }

            else
            {
              v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);

              if (!v28)
              {
                __break(1u);
LABEL_33:
                swift_once();
LABEL_26:
                v34 = type metadata accessor for Logger();
                __swift_project_value_buffer(v34, static Logger.executor);
                (*(v12 + 16))(v14, v18, v23);
                v35 = Logger.logObject.getter();
                v36 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v35, v36))
                {
                  v37 = swift_slowAlloc();
                  v45 = swift_slowAlloc();
                  v46 = v45;
                  *v37 = 136315138;
                  lazy protocol witness table accessor for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType(&lazy protocol witness table cache variable for type RRCandidate and conformance RRCandidate, MEMORY[0x1E69D2828], MEMORY[0x1E69D2830]);
                  v38 = dispatch thunk of CustomStringConvertible.description.getter();
                  v40 = v39;
                  v41 = *(v12 + 8);
                  v41(v14, v23);
                  v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v46);

                  *(v37 + 4) = v42;
                  _os_log_impl(&dword_1DC659000, v35, v36, "HomeAutomationAffinityScorer - [Override] USO entity spans satisfy condition:\n(GeneralNamespaceMatches || ExactNameSpaceMatch) && HasSRRMatch %s", v37, 0xCu);
                  v43 = v45;
                  __swift_destroy_boxed_opaque_existential_1Tm(v45);
                  MEMORY[0x1E12A2F50](v43, -1, -1);
                  MEMORY[0x1E12A2F50](v37, -1, -1);

                  v41(v18, v23);
                }

                else
                {

                  v44 = *(v12 + 8);
                  v44(v14, v23);
                  v44(v18, v23);
                }

                return 1;
              }
            }

            HomeAutomationAffinityScorer.smartHomeSalientEntity(environment:)(v10);
            if ((*(v12 + 48))(v10, 1, v23) == 1)
            {
              outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
              return 0;
            }

            (*(v12 + 32))(v18, v10, v23);
            if (one-time initialization token for executor == -1)
            {
              goto LABEL_26;
            }

            goto LABEL_33;
          }
        }

        else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }
      }
    }
  }

  return 0;
}

uint64_t HomeAutomationAffinityScorer.isHighScore(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v48 - v8;
  v10 = type metadata accessor for RRCandidate();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v48 - v16;
  if ((a2 & 0x100) == 0 || (a2 & 1) == 0)
  {
    if ((~a2 & 0x100000000010000) == 0)
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static Logger.executor);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v19, v20))
      {
        goto LABEL_36;
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = "HomeAutomationAffinityScorer - [High] USO entity spans satisfy condition:\n(GeneralNamespaceMatches || ExactNameSpaceMatch) && PlaceHintGeneralMatches";
      goto LABEL_35;
    }

    if ((a2 & 0x100000000) != 0)
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, static Logger.executor);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v19, v20))
      {
        goto LABEL_36;
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = "HomeAutomationAffinityScorer - [High] USO entity spans satisfy condition:\nHomeKitEntityType.ExactMatch";
      goto LABEL_35;
    }

    v50 = v15;
    v24 = UsoTask.arguments.getter();
    if (*(v24 + 16))
    {
      v25 = specialized __RawDictionaryStorage.find<A>(_:)(0x636E657265666572, 0xE900000000000065);
      if (v26)
      {
        v27 = *(*(v24 + 56) + 8 * v25);

        if (v27 >> 62)
        {
          if (__CocoaSet.count.getter())
          {
LABEL_17:
            if ((v27 & 0xC000000000000001) != 0)
            {
              MEMORY[0x1E12A1FE0](0, v27);
            }

            else
            {
              if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_46;
              }
            }

            v28 = *(dispatch thunk of UsoValue.getEntitySpans()() + 16);

            if (v28)
            {

              if ((a2 & 0x1000000) == 0)
              {
                return 0;
              }

LABEL_31:
              if (one-time initialization token for executor != -1)
              {
                swift_once();
              }

              v31 = type metadata accessor for Logger();
              __swift_project_value_buffer(v31, static Logger.executor);
              v19 = Logger.logObject.getter();
              v20 = static os_log_type_t.debug.getter();
              if (!os_log_type_enabled(v19, v20))
              {
                goto LABEL_36;
              }

              v21 = swift_slowAlloc();
              *v21 = 0;
              v22 = "HomeAutomationAffinityScorer - [High] USO entity spans satisfy condition: Lemmatization alias matches a HA entity";
              goto LABEL_35;
            }

            HomeAutomationAffinityScorer.smartHomeSalientEntity(environment:)(v9);
            if ((*(v11 + 48))(v9, 1, v50) == 1)
            {

              outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
              if ((a2 & 0x1000000) != 0)
              {
                goto LABEL_31;
              }

              return 0;
            }

            (*(v11 + 32))(v17, v9, v50);
            if (one-time initialization token for executor == -1)
            {
LABEL_39:
              v32 = type metadata accessor for Logger();
              __swift_project_value_buffer(v32, static Logger.executor);
              (*(v11 + 16))(v13, v17, v50);
              v33 = Logger.logObject.getter();
              v34 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v33, v34))
              {
                v35 = swift_slowAlloc();
                v48 = v35;
                v49 = swift_slowAlloc();
                v51 = v49;
                *v35 = 136315138;
                lazy protocol witness table accessor for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType(&lazy protocol witness table cache variable for type RRCandidate and conformance RRCandidate, MEMORY[0x1E69D2828], MEMORY[0x1E69D2830]);
                v36 = v50;
                v37 = dispatch thunk of CustomStringConvertible.description.getter();
                v39 = v38;
                v40 = *(v11 + 8);
                v40(v13, v36);
                v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v51);

                v42 = v48;
                *(v48 + 1) = v41;
                v43 = v34;
                v44 = v42;
                _os_log_impl(&dword_1DC659000, v33, v43, "HomeAutomationAffinityScorer - [High] Found salient HA entity %s", v42, 0xCu);
                v45 = v49;
                __swift_destroy_boxed_opaque_existential_1Tm(v49);
                MEMORY[0x1E12A2F50](v45, -1, -1);
                MEMORY[0x1E12A2F50](v44, -1, -1);

                v40(v17, v36);
              }

              else
              {

                v46 = *(v11 + 8);
                v47 = v50;
                v46(v13, v50);
                v46(v17, v47);
              }

              return 1;
            }

LABEL_46:
            swift_once();
            goto LABEL_39;
          }
        }

        else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }
      }
    }

    if ((a2 & 0x1000000) != 0)
    {
      goto LABEL_31;
    }

    return 0;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.executor);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v19, v20))
  {
    goto LABEL_36;
  }

  v21 = swift_slowAlloc();
  *v21 = 0;
  v22 = "HomeAutomationAffinityScorer - [High] USO entity spans satisfy condition:\nGeneralNamespaceMatches && ExactNameSpaceMatch";
LABEL_35:
  _os_log_impl(&dword_1DC659000, v19, v20, v22, v21, 2u);
  MEMORY[0x1E12A2F50](v21, -1, -1);
LABEL_36:

  return 1;
}

BOOL UsoEntitySpan.anyPropertiesKeyMatchAny(value:)(uint64_t a1)
{
  v29 = type metadata accessor for SpanProperty();
  v2 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = UsoEntitySpan.properties.getter();
  v6 = *(v5 + 16);
  if (v6)
  {
    v25 = a1;
    v30 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = v30;
    v9 = *(v2 + 16);
    v8 = v2 + 16;
    v10 = *(v8 + 64);
    v24[1] = v5;
    v11 = v5 + ((v10 + 32) & ~v10);
    v27 = *(v8 + 56);
    v28 = v9;
    v26 = (v8 - 8);
    do
    {
      v12 = v29;
      v13 = v8;
      v28(v4, v11, v29);
      v14 = SpanProperty.key.getter();
      v16 = v15;
      (*v26)(v4, v12);
      v30 = v7;
      v18 = *(v7 + 16);
      v17 = *(v7 + 24);
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        v7 = v30;
      }

      *(v7 + 16) = v18 + 1;
      v19 = v7 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v11 += v27;
      --v6;
      v8 = v13;
    }

    while (v6);

    a1 = v25;
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v20 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v7);

  specialized Set.isDisjoint(with:)(v20, a1);
  v22 = v21;

  return (v22 & 1) == 0;
}

BOOL UsoEntitySpan.anyPropertiesValueMatchAny(value:)(uint64_t a1)
{
  v2 = type metadata accessor for SpanProperty();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = UsoEntitySpan.properties.getter();
  v7 = *(v6 + 16);
  if (v7)
  {
    v22[1] = v6;
    v23 = a1;
    v9 = *(v3 + 16);
    v8 = v3 + 16;
    v10 = v6 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v25 = *(v8 + 56);
    v26 = v9;
    v11 = MEMORY[0x1E69E7CC0];
    v24 = v8;
    v9(v5, v10, v2);
    while (1)
    {
      v13 = SpanProperty.valueString.getter();
      v15 = v14;
      (*(v8 - 8))(v5, v2);
      if (v15)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
        }

        v17 = *(v11 + 2);
        v16 = *(v11 + 3);
        if (v17 >= v16 >> 1)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v11);
        }

        *(v11 + 2) = v17 + 1;
        v12 = &v11[16 * v17];
        *(v12 + 4) = v13;
        *(v12 + 5) = v15;
      }

      v10 += v25;
      if (!--v7)
      {
        break;
      }

      v26(v5, v10, v2);
    }

    a1 = v23;
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  v18 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v11);

  specialized Set.isDisjoint(with:)(v18, a1);
  v20 = v19;

  return (v20 & 1) == 0;
}

uint64_t static SpanMatchAccuracy.from(matchInfo:)@<X0>(char *a1@<X8>)
{
  matched = type metadata accessor for MatchInfo.MatchSignals();
  v3 = *(matched - 8);
  MEMORY[0x1EEE9AC00](matched);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static MatchInfo.MatchSignals.partialMatch.getter();
  v6 = MatchInfo.hasMatchSignals(_:)();
  v7 = *(v3 + 8);
  result = v7(v5, matched);
  if (v6 & 1) != 0 || (static MatchInfo.MatchSignals.approximateMatch.getter(), v9 = MatchInfo.hasMatchSignals(_:)(), result = v7(v5, matched), (v9))
  {
    v10 = 1;
  }

  else
  {
    static MatchInfo.MatchSignals.aliasMatch.getter();
    v11 = MatchInfo.hasMatchSignals(_:)();
    result = v7(v5, matched);
    if (v11)
    {
      v10 = 3;
    }

    else
    {
      v10 = 0;
    }
  }

  *a1 = v10;
  return result;
}

uint64_t UsoEntitySpan.anyPropertiesKeyAndValueMatchAny(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SpanProperty();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = UsoEntitySpan.properties.getter();
  v27 = *(result + 16);
  if (!v27)
  {
LABEL_28:

    return 0;
  }

  v11 = 0;
  v29 = result + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v28 = v7 + 16;
  v30 = (v7 + 8);
  v31 = result;
  v12 = a3 + 56;
  v25 = a2;
  v26 = a1;
  while (1)
  {
    if (v11 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    (*(v7 + 16))(v9, v29 + *(v7 + 72) * v11, v6);
    if (SpanProperty.key.getter() == a1 && v13 == a2)
    {
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        (*v30)(v9, v6);
        goto LABEL_4;
      }
    }

    v15 = SpanProperty.valueString.getter();
    v17 = v16 ? v15 : 0;
    v18 = v16 ? v16 : 0xE000000000000000;
    if (*(a3 + 16))
    {
      break;
    }

    (*v30)(v9, v6);

    a1 = v26;
LABEL_4:
    result = v31;
    if (++v11 == v27)
    {
      goto LABEL_28;
    }
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v19 = Hasher._finalize()();
  v20 = -1 << *(a3 + 32);
  v21 = v19 & ~v20;
  if (((*(v12 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
  {
LABEL_25:
    (*v30)(v9, v6);

    a2 = v25;
    a1 = v26;
    goto LABEL_4;
  }

  v22 = ~v20;
  while (1)
  {
    v23 = (*(a3 + 48) + 16 * v21);
    v24 = *v23 == v17 && v23[1] == v18;
    if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v21 = (v21 + 1) & v22;
    if (((*(v12 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  (*v30)(v9, v6);

  return 1;
}

uint64_t HomeAutomationAffinityScorer.smartHomeSalientEntity(environment:)@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RRCandidate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  SiriEnvironment.salientEntitiesProvider.getter();
  v7 = dispatch thunk of SalientEntitiesDataProvider.salientEntities.getter();

  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (v4 + 8);
    while (v9 < *(v7 + 16))
    {
      (*(v4 + 16))(v6, v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v9, v3);
      if (closure #1 in HomeAutomationAffinityScorer.smartHomeSalientEntity(environment:)(v6))
      {

        (*(v4 + 32))(a1, v6, v3);
        v11 = 0;
        return (*(v4 + 56))(a1, v11, 1, v3);
      }

      ++v9;
      (*v10)(v6, v3);
      if (v8 == v9)
      {
        goto LABEL_6;
      }
    }

    __break(1u);

    result = (*v10)(v6, v3);
    __break(1u);
  }

  else
  {
LABEL_6:

    v11 = 1;
    return (*(v4 + 56))(a1, v11, 1, v3);
  }

  return result;
}

BOOL closure #2 in HomeAutomationAffinityScorer.hasExactNamespaceMatch(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v25 - v8;
  v10 = type metadata accessor for UsoEntitySpan();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v25[0] = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v25 - v14;
  outlined init with copy of ReferenceResolutionClientProtocol?(a2, v9, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  v16 = *(v11 + 48);
  v17 = v16(v9, 1, v10);
  v25[1] = a1;
  if (v17 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  }

  else
  {
    (*(v11 + 32))(v15, v9, v10);
    v18 = MEMORY[0x1E129C880](v15, a1);
    (*(v11 + 8))(v15, v10);
    if (v18)
    {
      return 0;
    }
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(a2, v6, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  if (v16(v6, 1, v10) != 1)
  {
    v19 = v25[0];
    (*(v11 + 32))(v25[0], v6, v10);
    v20 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of closure #2 in HomeAutomationAffinityScorer.hasExactNamespaceMatch(_:));
    outlined destroy of String(&unk_1F5827A10);
    v21 = UsoEntitySpan.anyPropertiesKeyMatchAny(value:)(v20);

    if (!v21)
    {
      (*(v11 + 8))(v19, v10);
      goto LABEL_10;
    }

    v22 = UsoEntitySpan.indexesMatch(_:)();
    (*(v11 + 8))(v19, v10);
    if ((v22 & 1) == 0)
    {
      goto LABEL_10;
    }

    return 0;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
LABEL_10:
  if (UsoEntitySpan.hasNLFuzzyMatch()() || UsoEntitySpan.hasVocabFuzzyMatch()())
  {
    return 0;
  }

  if (one-time initialization token for kHAExactNamespaceMatches != -1)
  {
    swift_once();
  }

  return UsoEntitySpan.anyPropertiesKeyMatchAny(value:)(static HomeAutomationAffinityScorer.kHAExactNamespaceMatches);
}

Swift::Bool __swiftcall UsoEntitySpan.hasNLFuzzyMatch()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v17 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4;
  v6 = type metadata accessor for PayloadAttachmentInfo.AttachmentType();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v17 - v11;
  UsoEntitySpan.payloadAttachmentInfo.getter();
  v13 = type metadata accessor for PayloadAttachmentInfo();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v2, 1, v13) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v2, &_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
    (*(v7 + 56))(v5, 1, 1, v6);
LABEL_4:
    outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    return 0;
  }

  PayloadAttachmentInfo.attachmentType.getter();
  (*(v14 + 8))(v2, v13);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    goto LABEL_4;
  }

  (*(v7 + 32))(v12, v5, v6);
  (*(v7 + 104))(v9, *MEMORY[0x1E69D1B60], v6);
  lazy protocol witness table accessor for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType(&lazy protocol witness table cache variable for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType, MEMORY[0x1E69D1B68], MEMORY[0x1E69D1B78]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v16 = *(v7 + 8);
  v16(v9, v6);
  v16(v12, v6);
  return v17[1] == v17[0];
}

Swift::Bool __swiftcall UsoEntitySpan.hasVocabFuzzyMatch()()
{
  matched = type metadata accessor for MatchInfo.MatchSignals();
  v1 = *(matched - 8);
  MEMORY[0x1EEE9AC00](matched);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for MatchInfo();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  UsoEntitySpan.matchInfo.getter();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
    v11 = 0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    static MatchInfo.MatchSignals.approximateMatch.getter();
    v12 = MatchInfo.hasMatchSignals(_:)();
    v13 = *(v1 + 8);
    v13(v3, matched);
    if (v12 & 1) != 0 || (static MatchInfo.MatchSignals.partialMatch.getter(), v14 = MatchInfo.hasMatchSignals(_:)(), v13(v3, matched), (v14))
    {
      (*(v8 + 8))(v10, v7);
      v11 = 1;
    }

    else
    {
      static MatchInfo.MatchSignals.aliasMatch.getter();
      v11 = MatchInfo.hasMatchSignals(_:)();
      v13(v3, matched);
      (*(v8 + 8))(v10, v7);
    }
  }

  return v11 & 1;
}

Swift::Bool __swiftcall UsoEntitySpan.hasExactMatch()()
{
  v0 = type metadata accessor for PayloadAttachmentInfo.AttachmentType();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMR);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v48 - v4;
  matched = type metadata accessor for MatchInfo.MatchSignals();
  v54 = *(matched - 8);
  v55 = matched;
  MEMORY[0x1EEE9AC00](matched);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v50 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v48 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v57 = &v48 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v48 - v18;
  v20 = type metadata accessor for MatchInfo();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  UsoEntitySpan.matchInfo.getter();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    v24 = &_s12SiriOntology9MatchInfoVSgMd;
    v25 = &_s12SiriOntology9MatchInfoVSgMR;
    v26 = v19;
LABEL_3:
    outlined destroy of ReferenceResolutionClientProtocol?(v26, v24, v25);
LABEL_12:
    v41 = 0;
    return v41 & 1;
  }

  v49 = v3;
  v27 = v0;
  v28 = *(v21 + 32);
  v52 = v23;
  v28(v23, v19, v20);
  UsoEntitySpan.payloadAttachmentInfo.getter();
  v29 = type metadata accessor for PayloadAttachmentInfo();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v10, 1, v29) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
    v31 = v57;
    v32 = v27;
    (*(v1 + 56))(v57, 1, 1, v27);
  }

  else
  {
    v31 = v57;
    PayloadAttachmentInfo.attachmentType.getter();
    (*(v30 + 8))(v10, v29);
    v32 = v27;
  }

  static MatchInfo.MatchSignals.exactMatch.getter();
  v33 = v52;
  v34 = MatchInfo.hasMatchSignals(_:)();
  (*(v54 + 8))(v7, v55);
  v35 = v56;
  if ((v34 & 1) == 0)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v31, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    (*(v21 + 8))(v33, v20);
    goto LABEL_12;
  }

  (*(v1 + 104))(v56, *MEMORY[0x1E69D1B58], v32);
  (*(v1 + 56))(v35, 0, 1, v32);
  v36 = *(v51 + 48);
  v37 = v53;
  outlined init with copy of ReferenceResolutionClientProtocol?(v31, v53, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  v55 = v36;
  outlined init with copy of ReferenceResolutionClientProtocol?(v35, v37 + v36, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  v38 = v31;
  v39 = v1;
  v40 = *(v1 + 48);
  if (v40(v37, 1, v32) != 1)
  {
    v43 = v50;
    outlined init with copy of ReferenceResolutionClientProtocol?(v37, v50, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    v44 = v55;
    if (v40(v37 + v55, 1, v32) != 1)
    {
      v45 = *(v1 + 32);
      v55 = v1 + 8;
      v46 = v49;
      v45(v49, v37 + v44, v32);
      lazy protocol witness table accessor for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType(&lazy protocol witness table cache variable for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType, MEMORY[0x1E69D1B68], MEMORY[0x1E69D1B70]);
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      v47 = *(v39 + 8);
      v47(v46, v32);
      outlined destroy of ReferenceResolutionClientProtocol?(v35, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v57, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
      (*(v21 + 8))(v52, v20);
      v47(v50, v32);
      outlined destroy of ReferenceResolutionClientProtocol?(v37, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
      return v41 & 1;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v35, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v57, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    (*(v21 + 8))(v52, v20);
    (*(v1 + 8))(v43, v32);
    goto LABEL_16;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v35, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v38, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  (*(v21 + 8))(v52, v20);
  if (v40(v37 + v55, 1, v32) != 1)
  {
LABEL_16:
    v24 = &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMd;
    v25 = &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMR;
    v26 = v37;
    goto LABEL_3;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v37, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  v41 = 1;
  return v41 & 1;
}

Swift::Bool __swiftcall UsoEntitySpan.hasApproximateHighScoreMatch()()
{
  v51 = type metadata accessor for PayloadAttachmentInfo.AttachmentType();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v46 = &v46 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMR);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v46 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v46 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v46 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v46 - v10;
  matched = type metadata accessor for MatchInfo.MatchSignals();
  v12 = *(matched - 8);
  MEMORY[0x1EEE9AC00](matched);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v46 - v16;
  v18 = type metadata accessor for MatchInfo();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  UsoEntitySpan.matchInfo.getter();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
LABEL_14:
    v38 = 0;
    return v38 & 1;
  }

  (*(v19 + 32))(v21, v17, v18);
  static MatchInfo.MatchSignals.approximateMatch.getter();
  v22 = MatchInfo.hasMatchSignals(_:)();
  (*(v12 + 8))(v14, matched);
  if ((v22 & 1) == 0 || (v23 = MatchInfo.matchScore.getter(), (v23 & 0x100000000) != 0))
  {
LABEL_13:
    (*(v19 + 8))(v21, v18);
    goto LABEL_14;
  }

  v24 = *&v23;
  UsoEntitySpan.payloadAttachmentInfo.getter();
  v25 = type metadata accessor for PayloadAttachmentInfo();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v4, 1, v25) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
    v27 = v49;
    v28 = v53;
    v29 = v51;
    (*(v49 + 56))(v53, 1, 1, v51);
    v30 = v50;
  }

  else
  {
    v31 = v53;
    PayloadAttachmentInfo.attachmentType.getter();
    (*(v26 + 8))(v4, v25);
    v28 = v31;
    v30 = v50;
    v29 = v51;
    v27 = v49;
  }

  v32 = v52;
  if (v24 <= 0.7)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v28, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    goto LABEL_13;
  }

  (*(v27 + 104))(v52, *MEMORY[0x1E69D1B58], v29);
  (*(v27 + 56))(v32, 0, 1, v29);
  v33 = *(v48 + 48);
  outlined init with copy of ReferenceResolutionClientProtocol?(v28, v30, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  v51 = v33;
  v34 = v30 + v33;
  v35 = v29;
  outlined init with copy of ReferenceResolutionClientProtocol?(v32, v34, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  v36 = v27;
  v37 = *(v27 + 48);
  if (v37(v30, 1, v35) != 1)
  {
    v40 = v47;
    outlined init with copy of ReferenceResolutionClientProtocol?(v30, v47, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    v41 = v51;
    if (v37(v30 + v51, 1, v35) != 1)
    {
      v42 = v36 + 32;
      v43 = v30 + v41;
      v44 = v46;
      (*(v36 + 32))(v46, v43, v35);
      lazy protocol witness table accessor for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType(&lazy protocol witness table cache variable for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType, MEMORY[0x1E69D1B68], MEMORY[0x1E69D1B70]);
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      v45 = *(v42 - 24);
      v45(v44, v35);
      outlined destroy of ReferenceResolutionClientProtocol?(v52, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v53, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
      (*(v19 + 8))(v21, v18);
      v45(v47, v35);
      outlined destroy of ReferenceResolutionClientProtocol?(v30, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
      return v38 & 1;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v52, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v53, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    (*(v19 + 8))(v21, v18);
    (*(v36 + 8))(v40, v35);
    goto LABEL_18;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v32, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v28, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  (*(v19 + 8))(v21, v18);
  if (v37(v30 + v51, 1, v35) != 1)
  {
LABEL_18:
    outlined destroy of ReferenceResolutionClientProtocol?(v30, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMR);
    goto LABEL_14;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v30, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  v38 = 1;
  return v38 & 1;
}

Swift::Bool __swiftcall UsoEntitySpan.anyPropertiesKeyMatchAny(value:)(Swift::String value)
{
  object = value._object;
  countAndFlagsBits = value._countAndFlagsBits;
  v30 = type metadata accessor for SpanProperty();
  v3 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = UsoEntitySpan.properties.getter();
  v7 = *(v6 + 16);
  if (v7)
  {
    v25 = countAndFlagsBits;
    v26 = object;
    v31 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = v31;
    v10 = *(v3 + 16);
    v9 = v3 + 16;
    v11 = *(v9 + 64);
    v24 = v6;
    v12 = v6 + ((v11 + 32) & ~v11);
    v28 = *(v9 + 56);
    v29 = v10;
    v27 = (v9 - 8);
    do
    {
      v13 = v30;
      v14 = v9;
      v29(v5, v12, v30);
      v15 = SpanProperty.key.getter();
      v17 = v16;
      (*v27)(v5, v13);
      v31 = v8;
      v19 = *(v8 + 16);
      v18 = *(v8 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v8 = v31;
      }

      *(v8 + 16) = v19 + 1;
      v20 = v8 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      v12 += v28;
      --v7;
      v9 = v14;
    }

    while (v7);

    countAndFlagsBits = v25;
    object = v26;
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v21 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v8);

  v22 = specialized Set.contains(_:)(countAndFlagsBits, object, v21);

  return v22 & 1;
}

uint64_t closure #1 in HomeAutomationAffinityScorer.smartHomeSalientEntity(environment:)(uint64_t a1)
{
  v77 = type metadata accessor for SpanProperty();
  v59 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for IdentifierNamespace();
  v3 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UsoEntitySpan();
  v70 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RREntity();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - v12;
  v55 = a1;
  RRCandidate.entity.getter();
  RREntity.usoEntity.getter();
  v14 = *(v9 + 8);
  v54 = v8;
  v53 = v9 + 8;
  v51 = v14;
  v14(v13, v8);
  v15 = UsoEntity.attributes.getter();

  if (!*(v15 + 16) || (v16 = specialized __RawDictionaryStorage.find<A>(_:)(0x73656D616ELL, 0xE500000000000000), (v17 & 1) == 0))
  {

    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  v13 = *(*(v15 + 56) + 8 * v16);

  if ((v13 & 0xC000000000000001) != 0)
  {
    goto LABEL_28;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    while (1)
    {

      v19 = dispatch thunk of UsoValue.getEntitySpans()();

LABEL_8:
      v67 = *(v19 + 16);
      if (!v67)
      {
        break;
      }

      v20 = 0;
      v66 = v19 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
      v65 = v70 + 16;
      v64 = *MEMORY[0x1E69D1B18];
      v63 = (v3 + 104);
      v62 = (v3 + 8);
      v74 = (v59 + 8);
      v75 = v59 + 16;
      v61 = (v70 + 8);
      v60 = xmmword_1DCA66060;
      v58 = v5;
      v57 = v7;
      v56 = v19;
      while (v20 < *(v19 + 16))
      {
        v21 = *(v70 + 72);
        v73 = v20;
        (*(v70 + 16))(v7, v66 + v21 * v20, v5);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
        inited = swift_initStackObject();
        *(inited + 16) = v60;
        v24 = v68;
        v23 = v69;
        (*v63)(v68, v64, v69);
        v25 = IdentifierNamespace.rawValue.getter();
        v27 = v26;
        (*v62)(v24, v23);
        *(inited + 32) = v25;
        *(inited + 40) = v27;
        v28 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
        swift_setDeallocating();
        outlined destroy of String(inited + 32);
        v29 = UsoEntitySpan.properties.getter();
        v30 = *(v29 + 16);
        if (v30)
        {
          v72 = v28;
          v79 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30, 0);
          v3 = v79;
          v31 = *(v59 + 80);
          v71 = v29;
          v32 = v29 + ((v31 + 32) & ~v31);
          v78 = *(v59 + 72);
          v33 = *(v59 + 16);
          do
          {
            v34 = v76;
            v35 = v77;
            v33(v76, v32, v77);
            v36 = SpanProperty.key.getter();
            v38 = v37;
            (*v74)(v34, v35);
            v79 = v3;
            v40 = *(v3 + 16);
            v39 = *(v3 + 24);
            if (v40 >= v39 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
              v3 = v79;
            }

            *(v3 + 16) = v40 + 1;
            v41 = v3 + 16 * v40;
            *(v41 + 32) = v36;
            *(v41 + 40) = v38;
            v32 += v78;
            --v30;
          }

          while (v30);

          v5 = v58;
          v7 = v57;
          v19 = v56;
          v28 = v72;
        }

        else
        {

          v3 = MEMORY[0x1E69E7CC0];
        }

        v13 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v3);

        specialized Set.isDisjoint(with:)(v13, v28);
        v43 = v42;

        (*v61)(v7, v5);
        if ((v43 & 1) == 0)
        {

          v44 = 1;
          goto LABEL_22;
        }

        v20 = v73 + 1;
        if (v73 + 1 == v67)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_28:
      MEMORY[0x1E12A1FE0](0, v13);
    }

LABEL_20:

    v44 = 0;
LABEL_22:
    v45 = v52;
    RRCandidate.entity.getter();
    v46 = RREntity.appBundleId.getter();
    v48 = v47;
    v51(v45, v54);
    if (v46 == 0xD00000000000001CLL && 0x80000001DCA84150 == v48)
    {

      v49 = 1;
    }

    else
    {
      v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v49 = v44 | v50;
    }

    return v49 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized Set.isDisjoint(with:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if (v2 >= v3)
      {
        v4 = a1;
      }

      else
      {
        v4 = a2;
      }

      v5 = v4 + 56;
      if (v2 >= v3)
      {
        v6 = a2;
      }

      else
      {
        v6 = a1;
      }

      v7 = 1 << *(v4 + 32);
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      else
      {
        v8 = -1;
      }

      v9 = v8 & *(v4 + 56);
      v10 = (v7 + 63) >> 6;
      v11 = v6 + 56;

      v12 = 0;
      v24 = v4;
      while (v9)
      {
        v13 = v9;
LABEL_19:
        v9 = (v13 - 1) & v13;
        if (*(v6 + 16))
        {
          v15 = (*(v4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v13)))));
          v17 = *v15;
          v16 = v15[1];
          Hasher.init(_seed:)();

          String.hash(into:)();
          v18 = Hasher._finalize()();
          v19 = -1 << *(v6 + 32);
          v20 = v18 & ~v19;
          if ((*(v11 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
          {
            v21 = ~v19;
            while (1)
            {
              v22 = (*(v6 + 48) + 16 * v20);
              v23 = *v22 == v17 && v22[1] == v16;
              if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v20 = (v20 + 1) & v21;
              if (((*(v11 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
              {
                goto LABEL_28;
              }
            }

            return;
          }

LABEL_28:

          v4 = v24;
        }
      }

      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v10)
        {

          return;
        }

        v13 = *(v5 + 8 * v14);
        ++v12;
        if (v13)
        {
          v12 = v14;
          goto LABEL_19;
        }
      }

      __break(1u);
    }
  }
}

void UsoEntitySpan.containsSubstring(in:substring:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v19 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
    v12 = v11;
LABEL_10:
    v13 = (*(a1 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
    v14 = v13[1];
    v9 &= v9 - 1;
    v22 = *v13;
    v23 = v14;
    v20 = v18;
    v21 = v19;
    v15 = type metadata accessor for Locale();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    lazy protocol witness table accessor for type String and conformance String();

    StringProtocol.range<A>(of:options:range:locale:)();
    v17 = v16;
    outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

    if ((v17 & 1) == 0)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      goto LABEL_11;
    }

    v9 = *(a1 + 56 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
}

Swift::Bool __swiftcall UsoEntitySpan.anyPropertiesValueContainAny(value:)(Swift::String value)
{
  object = value._object;
  countAndFlagsBits = value._countAndFlagsBits;
  v3 = type metadata accessor for SpanProperty();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = UsoEntitySpan.properties.getter();
  v8 = *(v7 + 16);
  if (v8)
  {
    v25 = countAndFlagsBits;
    v26 = object;
    v10 = *(v4 + 16);
    v9 = v4 + 16;
    v11 = *(v9 + 64);
    v24 = v7;
    v12 = v7 + ((v11 + 32) & ~v11);
    v28 = *(v9 + 56);
    v29 = v10;
    v13 = MEMORY[0x1E69E7CC0];
    v27 = v9;
    v10(v6, v12, v3);
    while (1)
    {
      v15 = SpanProperty.valueString.getter();
      v17 = v16;
      (*(v9 - 8))(v6, v3);
      if (v17)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
        }

        v19 = *(v13 + 2);
        v18 = *(v13 + 3);
        if (v19 >= v18 >> 1)
        {
          v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v13);
        }

        *(v13 + 2) = v19 + 1;
        v14 = &v13[16 * v19];
        *(v14 + 4) = v15;
        *(v14 + 5) = v17;
      }

      v12 += v28;
      if (!--v8)
      {
        break;
      }

      v29(v6, v12, v3);
    }

    countAndFlagsBits = v25;
    object = v26;
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  v20 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v13);

  UsoEntitySpan.containsSubstring(in:substring:)(v20, countAndFlagsBits, object);
  v22 = v21;

  return v22 & 1;
}

Swift::Bool __swiftcall UsoEntitySpan.isAttachmentFull()()
{
  v0 = type metadata accessor for PayloadAttachmentInfo.AttachmentType();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v26 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMR);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v27 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  UsoEntitySpan.payloadAttachmentInfo.getter();
  v17 = type metadata accessor for PayloadAttachmentInfo();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v8, 1, v17) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
    (*(v1 + 56))(v16, 1, 1, v0);
  }

  else
  {
    PayloadAttachmentInfo.attachmentType.getter();
    (*(v18 + 8))(v8, v17);
  }

  (*(v1 + 104))(v13, *MEMORY[0x1E69D1B58], v0);
  (*(v1 + 56))(v13, 0, 1, v0);
  v19 = *(v3 + 48);
  outlined init with copy of ReferenceResolutionClientProtocol?(v16, v5, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v13, &v5[v19], &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  v20 = *(v1 + 48);
  if (v20(v5, 1, v0) != 1)
  {
    v22 = v27;
    outlined init with copy of ReferenceResolutionClientProtocol?(v5, v27, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    if (v20(&v5[v19], 1, v0) != 1)
    {
      v23 = v26;
      (*(v1 + 32))(v26, &v5[v19], v0);
      lazy protocol witness table accessor for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType(&lazy protocol witness table cache variable for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType, MEMORY[0x1E69D1B68], MEMORY[0x1E69D1B70]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *(v1 + 8);
      v24(v23, v0);
      outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
      v24(v22, v0);
      outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
      return v21 & 1;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    (*(v1 + 8))(v22, v0);
    goto LABEL_9;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  if (v20(&v5[v19], 1, v0) != 1)
  {
LABEL_9:
    outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMR);
    v21 = 0;
    return v21 & 1;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  v21 = 1;
  return v21 & 1;
}

unint64_t SpanMatchAccuracy.description.getter()
{
  v1 = 0x746365667265702ELL;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x614D7361696C612ELL;
  }

  if (*v0)
  {
    v1 = 0x6C6169747261702ELL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

SiriKitRuntime::SpanMatchAccuracy_optional __swiftcall SpanMatchAccuracy.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 5)
  {
    v2 = 4;
  }

  else
  {
    v2 = 4 - rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SpanMatchAccuracy()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](4 - v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SpanMatchAccuracy(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](4 - v2);
  return Hasher._finalize()();
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance SpanMatchAccuracy()
{
  v1 = 0x746365667265702ELL;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x614D7361696C612ELL;
  }

  if (*v0)
  {
    v1 = 0x6C6169747261702ELL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t specialized HomeAutomationAffinityScorer.extractHasDefiniteReferenceFromPauseOrResumeParse(_:)()
{
  v0 = type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues();
  v1 = *(v0 - 8);
  v62 = v0;
  v63 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v60 = v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMR);
  MEMORY[0x1EEE9AC00](v3);
  v61 = v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v59 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v59 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v59 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v59 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v59 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v59 - v24;
  if (specialized static AffinityScorerUtils.getTask(_:)())
  {
    static UsoTask_CodegenConverter.convert(task:)();
    if (v68)
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v67, v66, &_sypSgMd, &_sypSgMR);
      type metadata accessor for UsoTask_pause_uso_NoEntity();
      if (swift_dynamicCast())
      {
        v26 = v65;

        dispatch thunk of Uso_VerbTemplate_ReferenceControl.reference.getter();
        v61 = v26;

        if (v64 && (v27 = dispatch thunk of CodeGenGlobalArgs.usoReferenceType.getter(), , v27))
        {
          dispatch thunk of UsoEntity_common_ReferenceType.definedValue.getter();

          v28 = v62;
          v29 = v63;
        }

        else
        {
          v28 = v62;
          v29 = v63;
          (*(v63 + 56))(v25, 1, 1, v62);
        }

        (*(v29 + 104))(v22, *MEMORY[0x1E69D2070], v28);
        (*(v29 + 56))(v22, 0, 1, v28);
        v38 = *(v3 + 48);
        outlined init with copy of ReferenceResolutionClientProtocol?(v25, v7, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
        outlined init with copy of ReferenceResolutionClientProtocol?(v22, &v7[v38], &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
        v39 = *(v29 + 48);
        if (v39(v7, 1, v28) == 1)
        {

          outlined destroy of ReferenceResolutionClientProtocol?(v22, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v25, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
          if (v39(&v7[v38], 1, v28) == 1)
          {
            v40 = v7;
LABEL_31:
            outlined destroy of ReferenceResolutionClientProtocol?(v40, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
            v41 = 1;
LABEL_39:
            __swift_destroy_boxed_opaque_existential_1Tm(v66);
            outlined destroy of ReferenceResolutionClientProtocol?(v67, &_sypSgMd, &_sypSgMR);
            return v41 & 1;
          }

          goto LABEL_26;
        }

        outlined init with copy of ReferenceResolutionClientProtocol?(v7, v19, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
        if (v39(&v7[v38], 1, v28) == 1)
        {

          outlined destroy of ReferenceResolutionClientProtocol?(v22, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v25, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
          (*(v63 + 8))(v19, v28);
LABEL_26:
          v42 = v7;
LABEL_36:
          outlined destroy of ReferenceResolutionClientProtocol?(v42, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMR);
          v41 = 0;
          goto LABEL_39;
        }

        v47 = v63;
        v48 = &v7[v38];
        v49 = v60;
        (*(v63 + 32))(v60, v48, v28);
        lazy protocol witness table accessor for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType(&lazy protocol witness table cache variable for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues, MEMORY[0x1E69D2078], MEMORY[0x1E69D2080]);
        v41 = dispatch thunk of static Equatable.== infix(_:_:)();

        v50 = *(v47 + 8);
        v50(v49, v28);
        outlined destroy of ReferenceResolutionClientProtocol?(v22, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v25, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
        v50(v19, v28);
        v51 = v7;
LABEL_38:
        outlined destroy of ReferenceResolutionClientProtocol?(v51, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
        goto LABEL_39;
      }

      type metadata accessor for UsoTask_resume_uso_NoEntity();
      if (swift_dynamicCast())
      {
        v34 = v65;

        dispatch thunk of Uso_VerbTemplate_ReferenceControl.reference.getter();
        v59[1] = v34;

        if (v64 && (v35 = dispatch thunk of CodeGenGlobalArgs.usoReferenceType.getter(), , v35))
        {
          dispatch thunk of UsoEntity_common_ReferenceType.definedValue.getter();

          v36 = v62;
          v37 = v63;
        }

        else
        {
          v36 = v62;
          v37 = v63;
          (*(v63 + 56))(v16, 1, 1, v62);
        }

        (*(v37 + 104))(v13, *MEMORY[0x1E69D2070], v36);
        (*(v37 + 56))(v13, 0, 1, v36);
        v43 = *(v3 + 48);
        v44 = v61;
        outlined init with copy of ReferenceResolutionClientProtocol?(v16, v61, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
        outlined init with copy of ReferenceResolutionClientProtocol?(v13, v44 + v43, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
        v45 = *(v37 + 48);
        v46 = v36;
        if (v45(v44, 1, v36) == 1)
        {

          outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
          if (v45(v44 + v43, 1, v36) == 1)
          {
            v40 = v44;
            goto LABEL_31;
          }
        }

        else
        {
          outlined init with copy of ReferenceResolutionClientProtocol?(v44, v10, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
          if (v45(v44 + v43, 1, v36) != 1)
          {
            v52 = v63;
            v53 = v44 + v43;
            v54 = v44;
            v55 = v60;
            (*(v63 + 32))(v60, v53, v46);
            lazy protocol witness table accessor for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType(&lazy protocol witness table cache variable for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues, MEMORY[0x1E69D2078], MEMORY[0x1E69D2080]);
            v56 = v46;
            v41 = dispatch thunk of static Equatable.== infix(_:_:)();

            v57 = *(v52 + 8);
            v57(v55, v56);
            outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
            outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
            v57(v10, v56);
            v51 = v54;
            goto LABEL_38;
          }

          outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
          v44 = v61;
          outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
          (*(v63 + 8))(v10, v36);
        }

        v42 = v44;
        goto LABEL_36;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v66);
    }

    else
    {
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v67, &_sypSgMd, &_sypSgMR);
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.executor);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1DC659000, v31, v32, "MessagesAffinityScorer Could not extract usoTask from parse", v33, 2u);
      MEMORY[0x1E12A2F50](v33, -1, -1);
    }
  }

  v41 = 0;
  return v41 & 1;
}

uint64_t specialized HomeAutomationAffinityScorer.scorePauseOrResumeSetting(usoTask:usoEntitySpans:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v185 = a3;
  v191 = type metadata accessor for SpanProperty();
  v194 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v5 = &v180 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v184 = &v180 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v186 = &v180 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v192 = &v180 - v11;
  matched = type metadata accessor for MatchInfo.MatchSignals();
  v189 = *(matched - 8);
  MEMORY[0x1EEE9AC00](matched);
  v14 = &v180 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v196 = &v180 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v204 = &v180 - v18;
  v19 = type metadata accessor for MatchInfo();
  v188 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v195 = &v180 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v202 = &v180 - v22;
  v23 = type metadata accessor for UsoEntitySpan();
  v193 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v197 = &v180 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v180 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v198 = &v180 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v205 = &v180 - v31;
  static UsoTask_CodegenConverter.convert(task:)();
  if (v218)
  {
    type metadata accessor for UsoTask_pause_uso_NoEntity();
    if (swift_dynamicCast())
    {
      v32 = v215;
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v216, &_sypSgMd, &_sypSgMR);
    v32 = 0;
  }

  static UsoTask_CodegenConverter.convert(task:)();
  if (!v218)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v216, &_sypSgMd, &_sypSgMR);
    v36 = v205;
    if (v32)
    {
      v187 = 0;
      goto LABEL_16;
    }

    return 5;
  }

  type metadata accessor for UsoTask_resume_uso_NoEntity();
  v33 = swift_dynamicCast();
  v34 = v215;
  if (v33)
  {
    v35 = v215;
  }

  else
  {
    v35 = 0;
  }

  if (v32)
  {
    v187 = v35;
    v36 = v205;
    goto LABEL_16;
  }

  v36 = v205;
  if (!v35)
  {
    return 5;
  }

  v187 = v34;
LABEL_16:
  v206 = matched;
  v183 = v27;
  v181 = v5;
  v190 = v32;

  v37 = *(a2 + 16);
  v38 = v23;
  v203 = v23;
  v214 = v19;
  v182 = a2;
  v213 = v37;
  if (v37)
  {
    v39 = *(v193 + 16);
    v40 = a2 + ((*(v193 + 80) + 32) & ~*(v193 + 80));
    v210 = *(v193 + 72);
    v211 = v39;
    v209 = (v188 + 48);
    v200 = (v188 + 32);
    v41 = (v189 + 8);
    v199 = (v188 + 8);
    v212 = v193 + 16;
    v208 = v193 + 8;
    v42 = MEMORY[0x1E69E7CC0];
    v201 = v14;
    v43 = v204;
    while (1)
    {
      v44 = v41;
      v211(v36, v40, v38);
      UsoEntitySpan.matchInfo.getter();
      if ((*v209)(v43, 1, v19) != 1)
      {
        break;
      }

      (*v208)(v36, v38);
      outlined destroy of ReferenceResolutionClientProtocol?(v43, &_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
      v41 = v44;
LABEL_19:
      v40 += v210;
      v37 = (v37 - 1);
      if (!v37)
      {
        goto LABEL_35;
      }
    }

    v207 = v42;
    v45 = v43;
    v46 = v38;
    v47 = v202;
    (*v200)(v202, v45, v19);
    static MatchInfo.MatchSignals.partialMatch.getter();
    v48 = MatchInfo.hasMatchSignals(_:)();
    v49 = *v44;
    v50 = v206;
    (*v44)(v14, v206);
    if (v48 & 1) != 0 || (static MatchInfo.MatchSignals.approximateMatch.getter(), v51 = MatchInfo.hasMatchSignals(_:)(), v49(v14, v50), (v51))
    {
      v19 = v214;
      (*v199)(v47, v214);
      v36 = v205;
      (*v208)(v205, v46);
      v42 = v207;
      v52 = 3;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v52 = 3;
LABEL_29:
        v43 = v204;
        v56 = *(v42 + 2);
        v55 = *(v42 + 3);
        if (v56 >= v55 >> 1)
        {
          v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v42);
          v41 = v44;
          v42 = v57;
        }

        else
        {
          v41 = v44;
        }

        *(v42 + 2) = v56 + 1;
        *&v42[8 * v56 + 32] = v52;
        v38 = v203;
        v14 = v201;
        goto LABEL_19;
      }
    }

    else
    {
      static MatchInfo.MatchSignals.aliasMatch.getter();
      v53 = MatchInfo.hasMatchSignals(_:)();
      v49(v14, v50);
      v19 = v214;
      (*v199)(v47, v214);
      v36 = v205;
      (*v208)(v205, v46);
      v42 = v207;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (v53)
      {
        v52 = 1;
      }

      else
      {
        v52 = 4;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_29;
      }
    }

    v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 2) + 1, 1, v42);
    goto LABEL_29;
  }

  v42 = MEMORY[0x1E69E7CC0];
LABEL_35:
  v207 = specialized Sequence<>.max()(v42);
  v59 = v58;

  if (v59)
  {
    if ((specialized HomeAutomationAffinityScorer.extractHasDefiniteReferenceFromPauseOrResumeParse(_:)() & 1) == 0)
    {
      v86 = 5;
      goto LABEL_199;
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    __swift_project_value_buffer(v60, static Logger.executor);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      v64 = "HomeAutomationAffinityScorer - [Low] Pause/resume task has definite reference";
LABEL_186:
      _os_log_impl(&dword_1DC659000, v61, v62, v64, v63, 2u);
      v86 = 1;
      goto LABEL_196;
    }

    goto LABEL_187;
  }

  v65 = v213;
  if (v213)
  {
    v210 = *(v193 + 16);
    v199 = ((*(v193 + 80) + 32) & ~*(v193 + 80));
    v66 = v199 + v182;
    v212 = *(v193 + 72);
    v67 = (v188 + 48);
    v205 = (v188 + 32);
    v202 = (v188 + 8);
    v209 = (v193 + 8);
    v211 = (v193 + 16);
    v201 = (v193 + 32);
    v208 = MEMORY[0x1E69E7CC0];
    v68 = v206;
    v69 = v196;
    v70 = v195;
    v71 = v198;
    v204 = (v189 + 8);
    v200 = (v188 + 48);
    do
    {
      v213 = v65;
      v210(v71, v66, v38);
      UsoEntitySpan.matchInfo.getter();
      v72 = v214;
      if ((*v67)(v69, 1, v214) == 1)
      {
        (*v209)(v71, v38);
        outlined destroy of ReferenceResolutionClientProtocol?(v69, &_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
      }

      else
      {
        v73 = v38;
        (*v205)(v70, v69, v72);
        static MatchInfo.MatchSignals.partialMatch.getter();
        v74 = MatchInfo.hasMatchSignals(_:)();
        v75 = *v204;
        (*v204)(v14, v68);
        if (v74 & 1) != 0 || (static MatchInfo.MatchSignals.approximateMatch.getter(), v76 = MatchInfo.hasMatchSignals(_:)(), v75(v14, v68), (v76))
        {
          v77 = v68;
          (*v202)(v70, v214);
          v78 = v207 == 3;
        }

        else
        {
          static MatchInfo.MatchSignals.aliasMatch.getter();
          v85 = MatchInfo.hasMatchSignals(_:)();
          v77 = v68;
          v75(v14, v68);
          (*v202)(v70, v214);
          if (v85)
          {
            v78 = v207 == 1;
          }

          else
          {
            v78 = v207 == 4;
          }
        }

        v38 = v73;
        v67 = v200;
        if (v78)
        {
          v79 = *v201;
          v71 = v198;
          (*v201)(v197, v198, v38);
          v80 = v208;
          v81 = swift_isUniquelyReferenced_nonNull_native();
          v82 = v80;
          v216 = v80;
          if ((v81 & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v80 + 16) + 1, 1);
            v82 = v216;
          }

          v84 = *(v82 + 16);
          v83 = *(v82 + 24);
          if (v84 >= v83 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v84 + 1, 1);
            v82 = v216;
          }

          *(v82 + 16) = v84 + 1;
          v208 = v82;
          v79(v199 + v82 + v84 * v212, v197, v38);
          v68 = v206;
          v69 = v196;
          v70 = v195;
        }

        else
        {
          v71 = v198;
          (*v209)(v198, v38);
          v68 = v77;
        }
      }

      v66 += v212;
      v65 = v213 - 1;
    }

    while (v213 != 1);
  }

  else
  {
    v208 = MEMORY[0x1E69E7CC0];
  }

  v87 = v208;
  v88 = *(v208 + 16);
  if (!v88)
  {
LABEL_182:

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v174 = type metadata accessor for Logger();
    __swift_project_value_buffer(v174, static Logger.executor);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      v64 = "HomeAutomationAffinityScorer - [Low] No matches specific to Pause/Resume, falling back to default logic.";
      goto LABEL_186;
    }

LABEL_187:
    v86 = 1;
    goto LABEL_198;
  }

  v89 = v38;
  v90 = 0;
  v91 = (v208 + ((*(v193 + 80) + 32) & ~*(v193 + 80)));
  v212 = 0x80000001DCA794E0;
  v214 = v194 + 16;
  v213 = (v194 + 8);
  v209 = 0x80000001DCA794A0;
  v207 = 0x80000001DCA79540;
  v210 = (v193 + 8);
  v211 = 0x80000001DCA79520;
  v92 = 0x1ECC91000uLL;
  v93 = &static AnnounceExecutionOverride.announceTypes;
  v94 = v191;
  v95 = v192;
  v96 = v183;
  v204 = v91;
  v205 = v88;
  v202 = (v193 + 16);
  while (1)
  {
    if (v90 >= *(v87 + 16))
    {
      goto LABEL_204;
    }

    v97 = *(v193 + 72);
    v206 = v90;
    (*(v193 + 16))(v96, &v91[v97 * v90], v89);
    if (*(v92 + 3824) != -1)
    {
      swift_once();
    }

    v98 = v93[28];
    v99 = UsoEntitySpan.properties.getter();
    v100 = v99;
    v101 = *(v99 + 16);
    if (!v101)
    {

      goto LABEL_94;
    }

    v102 = 0;
    v103 = v99 + ((*(v194 + 80) + 32) & ~*(v194 + 80));
    v104 = v98 + 56;
    do
    {
      if (v102 >= *(v100 + 16))
      {
        __break(1u);
        goto LABEL_182;
      }

      (*(v194 + 16))(v95, v103 + *(v194 + 72) * v102, v94);
      if (SpanProperty.key.getter() == 0xD000000000000015 && v212 == v105)
      {
      }

      else
      {
        v106 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v106 & 1) == 0)
        {
          (*v213)(v95, v94);
          goto LABEL_70;
        }
      }

      v107 = v95;
      v108 = SpanProperty.valueString.getter();
      if (v109)
      {
        v110 = v108;
      }

      else
      {
        v110 = 0;
      }

      if (v109)
      {
        v111 = v109;
      }

      else
      {
        v111 = 0xE000000000000000;
      }

      if (*(v98 + 16))
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v112 = Hasher._finalize()();
        v113 = -1 << *(v98 + 32);
        v114 = v112 & ~v113;
        if ((*(v104 + ((v114 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v114))
        {
          v115 = ~v113;
          do
          {
            v116 = (*(v98 + 48) + 16 * v114);
            v117 = *v116 == v110 && v116[1] == v111;
            if (v117 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v175 = &v219;
LABEL_189:
              v176 = *(v175 - 32);
              goto LABEL_193;
            }

            v114 = (v114 + 1) & v115;
          }

          while (((*(v104 + ((v114 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v114) & 1) != 0);
        }

        v95 = v192;
        v94 = v191;
        (*v213)(v192, v191);
      }

      else
      {
        (*v213)(v107, v94);

        v95 = v107;
      }

LABEL_70:
      ++v102;
    }

    while (v102 != v101);

    v96 = v183;
LABEL_94:
    v118 = UsoEntitySpan.properties.getter();
    v119 = v118;
    v120 = *(v118 + 16);
    if (v120)
    {
      v121 = 0;
      v122 = v118 + ((*(v194 + 80) + 32) & ~*(v194 + 80));
      v123 = v98 + 56;
      v124 = v186;
      while (1)
      {
        if (v121 >= *(v119 + 16))
        {
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          swift_once();
          goto LABEL_194;
        }

        (*(v194 + 16))(v124, v122 + *(v194 + 72) * v121, v94);
        if (SpanProperty.key.getter() == 0xD00000000000001BLL && v211 == v125)
        {
          break;
        }

        v126 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v126)
        {
          goto LABEL_101;
        }

        v124 = v186;
        (*v213)(v186, v94);
LABEL_120:
        if (++v121 == v120)
        {

          v96 = v183;
          goto LABEL_123;
        }
      }

LABEL_101:
      v124 = v186;
      v127 = SpanProperty.valueString.getter();
      if (v128)
      {
        v129 = v127;
      }

      else
      {
        v129 = 0;
      }

      if (v128)
      {
        v130 = v128;
      }

      else
      {
        v130 = 0xE000000000000000;
      }

      if (*(v98 + 16))
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v131 = Hasher._finalize()();
        v132 = -1 << *(v98 + 32);
        v133 = v131 & ~v132;
        if ((*(v123 + ((v133 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v133))
        {
          v134 = ~v132;
          do
          {
            v135 = (*(v98 + 48) + 16 * v133);
            v136 = *v135 == v129 && v135[1] == v130;
            if (v136 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v177 = &v217;
              goto LABEL_192;
            }

            v133 = (v133 + 1) & v134;
          }

          while (((*(v123 + ((v133 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v133) & 1) != 0);
        }

        v124 = v186;
        v94 = v191;
        (*v213)(v186, v191);
      }

      else
      {
        (*v213)(v124, v94);
      }

      v95 = v192;
      goto LABEL_120;
    }

LABEL_123:
    v137 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of HomeAutomationAffinityScorer.scorePauseOrResumeSetting(usoTask:usoEntitySpans:for:));
    outlined destroy of String(&unk_1F5824FA8);
    result = UsoEntitySpan.properties.getter();
    v139 = result;
    v140 = *(result + 16);
    if (v140)
    {
      break;
    }

LABEL_149:
    v93 = &static AnnounceExecutionOverride.announceTypes;
    if (one-time initialization token for kVacuumingOrMoppingEntityTagStrictValues != -1)
    {
      swift_once();
    }

    v156 = static HomeAutomationAffinityScorer.kVacuumingOrMoppingEntityTagStrictValues;
    result = UsoEntitySpan.properties.getter();
    v157 = result;
    v201 = *(result + 16);
    if (v201)
    {
      v158 = 0;
      v159 = result + ((*(v194 + 80) + 32) & ~*(v194 + 80));
      v160 = v156 + 56;
      while (1)
      {
        if (v158 >= *(v157 + 16))
        {
          goto LABEL_207;
        }

        (*(v194 + 16))(v181, v159 + *(v194 + 72) * v158, v94);
        if (SpanProperty.key.getter() == 0xD000000000000017 && v207 == v161)
        {
        }

        else
        {
          v162 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v162 & 1) == 0)
          {
            result = (*v213)(v181, v94);
            goto LABEL_177;
          }
        }

        v163 = v181;
        v164 = SpanProperty.valueString.getter();
        if (v165)
        {
          v166 = v164;
        }

        else
        {
          v166 = 0;
        }

        if (v165)
        {
          v167 = v165;
        }

        else
        {
          v167 = 0xE000000000000000;
        }

        if (*(v156 + 16))
        {
          Hasher.init(_seed:)();
          String.hash(into:)();
          v168 = Hasher._finalize()();
          v169 = -1 << *(v156 + 32);
          v170 = v168 & ~v169;
          if ((*(v160 + ((v170 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v170))
          {
            v171 = ~v169;
            while (1)
            {
              v172 = (*(v156 + 48) + 16 * v170);
              v173 = *v172 == v166 && v172[1] == v167;
              if (v173 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v170 = (v170 + 1) & v171;
              if (((*(v160 + ((v170 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v170) & 1) == 0)
              {
                goto LABEL_173;
              }
            }

            v175 = &v213;
            goto LABEL_189;
          }

LABEL_173:
          v94 = v191;
          (*v213)(v181, v191);
        }

        else
        {
          (*v213)(v163, v94);
        }

        v95 = v192;
LABEL_177:
        if (++v158 == v201)
        {

          v96 = v183;
          v93 = &static AnnounceExecutionOverride.announceTypes;
          goto LABEL_181;
        }
      }
    }

LABEL_181:
    v90 = v206 + 1;
    v89 = v203;
    (*v210)(v96);
    v91 = v204;
    v87 = v208;
    v92 = 0x1ECC91000;
    if (v90 == v205)
    {
      goto LABEL_182;
    }
  }

  v141 = 0;
  v142 = result + ((*(v194 + 80) + 32) & ~*(v194 + 80));
  v143 = v137 + 56;
  while (1)
  {
    if (v141 >= *(v139 + 16))
    {
      __break(1u);
LABEL_207:
      __break(1u);
      return result;
    }

    (*(v194 + 16))(v184, v142 + *(v194 + 72) * v141, v94);
    if (SpanProperty.key.getter() == 0xD000000000000013 && v209 == v144)
    {
      break;
    }

    v145 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v145)
    {
      goto LABEL_130;
    }

LABEL_146:
    ++v141;
    result = (*v213)(v184, v94);
    v95 = v192;
    if (v141 == v140)
    {

      v96 = v183;
      goto LABEL_149;
    }
  }

LABEL_130:
  v146 = SpanProperty.valueString.getter();
  if (v147)
  {
    v148 = v146;
  }

  else
  {
    v148 = 0;
  }

  if (v147)
  {
    v149 = v147;
  }

  else
  {
    v149 = 0xE000000000000000;
  }

  if (!*(v137 + 16) || (Hasher.init(_seed:)(), String.hash(into:)(), v150 = Hasher._finalize()(), v151 = -1 << *(v137 + 32), v152 = v150 & ~v151, ((*(v143 + ((v152 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v152) & 1) == 0))
  {
LABEL_145:

    v94 = v191;
    goto LABEL_146;
  }

  v153 = ~v151;
  while (1)
  {
    v154 = (*(v137 + 48) + 16 * v152);
    v155 = *v154 == v148 && v154[1] == v149;
    if (v155 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v152 = (v152 + 1) & v153;
    if (((*(v143 + ((v152 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v152) & 1) == 0)
    {
      goto LABEL_145;
    }
  }

  v177 = &v216;
LABEL_192:
  v176 = *(v177 - 32);
LABEL_193:

  (*v213)(v176, v191);
  (*v210)(v183, v203);
  if (one-time initialization token for executor != -1)
  {
    goto LABEL_205;
  }

LABEL_194:
  v178 = type metadata accessor for Logger();
  __swift_project_value_buffer(v178, static Logger.executor);
  v61 = Logger.logObject.getter();
  v179 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v61, v179))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_1DC659000, v61, v179, "HomeAutomationAffinityScorer - [High] Pause/Resume spans have HA entity.", v63, 2u);
    v86 = 3;
LABEL_196:
    MEMORY[0x1E12A2F50](v63, -1, -1);
  }

  else
  {
    v86 = 3;
  }

LABEL_198:

LABEL_199:

  return v86;
}

uint64_t specialized HomeAutomationAffinityScorer.hasGeneralNamespaceMatch(_:)(uint64_t a1)
{
  v76 = type metadata accessor for SpanProperty();
  v2 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UsoEntitySpan();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v55 - v10;
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v58 = v5;
  v59 = &v55 - v14;
  v69 = *(a1 + 16);
  if (v69)
  {
    v15 = 0;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v66 = a1 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v67 = v17;
    v73 = (v2 + 8);
    v74 = v2 + 16;
    v68 = v16;
    v18 = *(v16 + 56);
    v64 = (v16 - 8);
    v65 = v18;
    v62 = v11;
    v63 = v4;
    v60 = v7;
    v61 = v2;
    while (1)
    {
      v67(v7, v66 + v65 * v15, v4, v13);
      if (one-time initialization token for kHAGeneralNamespaceMatches != -1)
      {
        swift_once();
      }

      v19 = static HomeAutomationAffinityScorer.kHAGeneralNamespaceMatches;
      v20 = UsoEntitySpan.properties.getter();
      v21 = *(v20 + 16);
      if (v21)
      {
        v71 = v19;
        v72 = v15;
        v77 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
        v22 = v77;
        v23 = *(v2 + 80);
        v70 = v20;
        v24 = v20 + ((v23 + 32) & ~v23);
        v25 = *(v2 + 72);
        v26 = *(v2 + 16);
        do
        {
          v27 = v75;
          v28 = v76;
          v26(v75, v24, v76);
          v29 = SpanProperty.key.getter();
          v31 = v30;
          (*v73)(v27, v28);
          v77 = v22;
          v33 = *(v22 + 16);
          v32 = *(v22 + 24);
          if (v33 >= v32 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
            v22 = v77;
          }

          *(v22 + 16) = v33 + 1;
          v34 = v22 + 16 * v33;
          *(v34 + 32) = v29;
          *(v34 + 40) = v31;
          v24 += v25;
          --v21;
        }

        while (v21);

        v11 = v62;
        v4 = v63;
        v7 = v60;
        v2 = v61;
        v19 = v71;
        v15 = v72;
      }

      else
      {

        v22 = MEMORY[0x1E69E7CC0];
      }

      v35 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v22);

      specialized Set.isDisjoint(with:)(v35, v19);
      v37 = v36;

      if ((v37 & 1) == 0)
      {
        break;
      }

      ++v15;
      (*v64)(v7, v4);
      if (v15 == v69)
      {
        v38 = 1;
        v5 = v58;
        goto LABEL_17;
      }
    }

    v5 = v58;
    (*(v58 + 32))(v59, v7, v4);
    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

LABEL_17:
  v39 = *(v5 + 56);
  v40 = v59;
  v39(v59, v38, 1, v4, v13);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  __swift_project_value_buffer(v41, static Logger.executor);
  outlined init with copy of ReferenceResolutionClientProtocol?(v40, v11, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v77 = v45;
    *v44 = 136315138;
    outlined init with copy of ReferenceResolutionClientProtocol?(v11, v56, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    v46 = String.init<A>(describing:)();
    v48 = v47;
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v77);

    *(v44 + 4) = v49;
    _os_log_impl(&dword_1DC659000, v42, v43, "HomeAutomationAffinityScorer - Found HomeAutomation GeneralSpan match: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    v50 = v45;
    v40 = v59;
    MEMORY[0x1E12A2F50](v50, -1, -1);
    MEMORY[0x1E12A2F50](v44, -1, -1);
  }

  else
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  }

  v51 = (*(v58 + 48))(v40, 1, v4) == 1;
  v52 = v40;
  v53 = !v51;
  outlined destroy of ReferenceResolutionClientProtocol?(v52, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  return v53;
}

BOOL specialized HomeAutomationAffinityScorer.hasExactNamespaceMatch(_:)()
{
  v100 = type metadata accessor for SpanProperty();
  v0 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v95 = &v76 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v97 = &v76 - v3;
  v4 = type metadata accessor for UsoEntitySpan();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v76 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v76 - v13;
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v82 = &v76 - v18;
  v19 = *(v16 + 16);
  v81 = v5;
  v92 = v19;
  v80 = v16;
  if (v19)
  {
    v77 = v14;
    v20 = 0;
    v22 = *(v5 + 16);
    v21 = v5 + 16;
    v89 = v16 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v90 = v22;
    v98 = (v0 + 8);
    v99 = v0 + 16;
    v91 = v21;
    v23 = *(v21 + 56);
    v87 = (v21 - 8);
    v88 = v23;
    v84 = v7;
    v85 = v0;
    v83 = v4;
    v86 = v11;
    v22(v7, v89, v4, v17);
    while (1)
    {
      v28 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of HomeAutomationAffinityScorer.hasExactNamespaceMatch(_:));
      outlined destroy of String(&unk_1F5825048);
      v29 = UsoEntitySpan.properties.getter();
      v30 = *(v29 + 16);
      v94 = v20;
      if (v30)
      {
        v96 = v28;
        v101 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30, 0);
        v31 = v101;
        v32 = *(v0 + 80);
        v93 = v29;
        v33 = v29 + ((v32 + 32) & ~v32);
        v34 = *(v0 + 72);
        v35 = *(v0 + 16);
        do
        {
          v36 = v97;
          v37 = v100;
          v35(v97, v33, v100);
          v38 = SpanProperty.key.getter();
          v40 = v39;
          (*v98)(v36, v37);
          v101 = v31;
          v42 = *(v31 + 16);
          v41 = *(v31 + 24);
          if (v42 >= v41 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1);
            v31 = v101;
          }

          *(v31 + 16) = v42 + 1;
          v43 = v31 + 16 * v42;
          *(v43 + 32) = v38;
          *(v43 + 40) = v40;
          v33 += v34;
          --v30;
        }

        while (v30);

        v4 = v83;
        v7 = v84;
        v0 = v85;
        v11 = v86;
        v20 = v94;
        v28 = v96;
      }

      else
      {

        v31 = MEMORY[0x1E69E7CC0];
      }

      v44 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v31);

      specialized Set.isDisjoint(with:)(v44, v28);
      v46 = v45;

      if ((v46 & 1) == 0)
      {
        v24 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #1 of HomeAutomationAffinityScorer.hasExactNamespaceMatch(_:));
        outlined destroy of String(&unk_1F5825078);
        v47 = UsoEntitySpan.properties.getter();
        v48 = *(v47 + 16);
        if (v48)
        {
          v93 = v24;
          v49 = v47 + ((*(v0 + 80) + 32) & ~*(v0 + 80));
          v96 = *(v0 + 72);
          v50 = *(v0 + 16);
          v51 = MEMORY[0x1E69E7CC0];
          do
          {
            v53 = v95;
            v54 = v100;
            v50(v95, v49, v100);
            v55 = SpanProperty.valueString.getter();
            v57 = v56;
            (*v98)(v53, v54);
            if (v57)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v51 + 2) + 1, 1, v51);
              }

              v59 = *(v51 + 2);
              v58 = *(v51 + 3);
              if (v59 >= v58 >> 1)
              {
                v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v51);
              }

              *(v51 + 2) = v59 + 1;
              v52 = &v51[16 * v59];
              *(v52 + 4) = v55;
              *(v52 + 5) = v57;
            }

            v49 += v96;
            --v48;
          }

          while (v48);

          v7 = v84;
          v0 = v85;
          v24 = v93;
          v20 = v94;
          v11 = v86;
        }

        else
        {

          v51 = MEMORY[0x1E69E7CC0];
        }

        v25 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v51);

        specialized Set.isDisjoint(with:)(v25, v24);
        v27 = v26;

        if ((v27 & 1) == 0)
        {
          break;
        }
      }

      ++v20;
      (*v87)(v7, v4);
      if (v20 == v92)
      {
        v60 = 1;
        v5 = v81;
        goto LABEL_28;
      }

      v90(v7, v89 + v88 * v20, v4, v17);
    }

    v5 = v81;
    (*(v81 + 32))(v82, v7, v4);
    v60 = 0;
LABEL_28:
    v14 = v77;
  }

  else
  {
    v60 = 1;
  }

  v61 = v82;
  v62 = (*(v5 + 56))(v82, v60, 1, v4, v17);
  MEMORY[0x1EEE9AC00](v62);
  *(&v76 - 2) = v61;
  specialized Sequence.first(where:)(partial apply for closure #2 in HomeAutomationAffinityScorer.hasExactNamespaceMatch(_:), v80, v14);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  __swift_project_value_buffer(v63, static Logger.executor);
  v64 = v14;
  outlined init with copy of ReferenceResolutionClientProtocol?(v14, v11, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v101 = v68;
    *v67 = 136315138;
    outlined init with copy of ReferenceResolutionClientProtocol?(v11, v78, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    v69 = String.init<A>(describing:)();
    v70 = v11;
    v72 = v71;
    outlined destroy of ReferenceResolutionClientProtocol?(v70, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v72, &v101);

    *(v67 + 4) = v73;
    _os_log_impl(&dword_1DC659000, v65, v66, "HomeAutomationAffinityScorer - Found HomeAutomation ExactSpan %s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    MEMORY[0x1E12A2F50](v68, -1, -1);
    MEMORY[0x1E12A2F50](v67, -1, -1);
  }

  else
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  }

  v74 = (*(v81 + 48))(v64, 1, v4) != 1;
  outlined destroy of ReferenceResolutionClientProtocol?(v64, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v82, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  return v74;
}

BOOL specialized HomeAutomationAffinityScorer.hasNamespaceMatch(_:)(uint64_t a1)
{
  v89 = type metadata accessor for SpanProperty();
  v2 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v4 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UsoEntitySpan();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v68 - v11;
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v72 = v6;
  v73 = &v68 - v14;
  v75 = *(a1 + 16);
  if (v75)
  {
    v16 = *(v6 + 16);
    v15 = v6 + 16;
    v77 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v78 = v16;
    v17 = 0;
    v87 = (v2 + 8);
    v88 = v2 + 16;
    v74 = (v15 - 8);
    v79 = v15;
    v80 = v5;
    v76 = *(v15 + 56);
    v83 = v8;
    v84 = v2;
    while (1)
    {
      v78(v8, v77 + v76 * v17, v5, v13);
      if (one-time initialization token for kHAGeneralNamespaceMatches != -1)
      {
        swift_once();
      }

      v85 = v17;
      v18 = static HomeAutomationAffinityScorer.kHAGeneralNamespaceMatches;
      v19 = UsoEntitySpan.properties.getter();
      v20 = *(v19 + 16);
      if (v20)
      {
        v82 = v18;
        v90 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
        v21 = v90;
        v22 = *(v2 + 80);
        v81 = v19;
        v23 = v19 + ((v22 + 32) & ~v22);
        v86 = *(v2 + 72);
        v24 = *(v2 + 16);
        do
        {
          v25 = v89;
          v24(v4, v23, v89);
          v26 = SpanProperty.key.getter();
          v28 = v27;
          (*v87)(v4, v25);
          v90 = v21;
          v30 = *(v21 + 16);
          v29 = *(v21 + 24);
          if (v30 >= v29 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
            v21 = v90;
          }

          *(v21 + 16) = v30 + 1;
          v31 = v21 + 16 * v30;
          *(v31 + 32) = v26;
          *(v31 + 40) = v28;
          v23 += v86;
          --v20;
        }

        while (v20);

        v8 = v83;
        v2 = v84;
        v18 = v82;
      }

      else
      {

        v21 = MEMORY[0x1E69E7CC0];
      }

      v32 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v21);

      specialized Set.isDisjoint(with:)(v32, v18);
      v34 = v33;

      if ((v34 & 1) == 0)
      {
        break;
      }

      if (one-time initialization token for kHAExactNamespaceMatches != -1)
      {
        swift_once();
      }

      v35 = static HomeAutomationAffinityScorer.kHAExactNamespaceMatches;
      v36 = UsoEntitySpan.properties.getter();
      v37 = *(v36 + 16);
      if (v37)
      {
        v82 = v35;
        v90 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37, 0);
        v38 = v90;
        v39 = *(v2 + 80);
        v81 = v36;
        v40 = v36 + ((v39 + 32) & ~v39);
        v86 = *(v2 + 72);
        v41 = *(v2 + 16);
        do
        {
          v42 = v89;
          v41(v4, v40, v89);
          v43 = SpanProperty.key.getter();
          v45 = v44;
          (*v87)(v4, v42);
          v90 = v38;
          v47 = *(v38 + 16);
          v46 = *(v38 + 24);
          if (v47 >= v46 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1);
            v38 = v90;
          }

          *(v38 + 16) = v47 + 1;
          v48 = v38 + 16 * v47;
          *(v48 + 32) = v43;
          *(v48 + 40) = v45;
          v40 += v86;
          --v37;
        }

        while (v37);

        v8 = v83;
        v2 = v84;
        v35 = v82;
      }

      else
      {

        v38 = MEMORY[0x1E69E7CC0];
      }

      v49 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v38);

      specialized Set.isDisjoint(with:)(v49, v35);
      v51 = v50;

      if ((v51 & 1) == 0)
      {
        break;
      }

      v17 = v85 + 1;
      v5 = v80;
      (*v74)(v8, v80);
      if (v17 == v75)
      {
        v53 = 1;
        v6 = v72;
        goto LABEL_27;
      }
    }

    v6 = v72;
    v52 = v73;
    v5 = v80;
    (*(v72 + 32))(v73, v8, v80);
    v53 = 0;
  }

  else
  {
    v53 = 1;
LABEL_27:
    v52 = v73;
  }

  (*(v6 + 56))(v52, v53, 1, v5);
  v54 = v71;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  __swift_project_value_buffer(v55, static Logger.executor);
  outlined init with copy of ReferenceResolutionClientProtocol?(v52, v54, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = v5;
    v60 = swift_slowAlloc();
    v90 = v60;
    *v58 = 136315138;
    outlined init with copy of ReferenceResolutionClientProtocol?(v54, v69, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    v61 = String.init<A>(describing:)();
    v63 = v62;
    outlined destroy of ReferenceResolutionClientProtocol?(v54, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, &v90);

    *(v58 + 4) = v64;
    _os_log_impl(&dword_1DC659000, v56, v57, "HomeAutomationAffinityScorer - Found HomeAutomation Span match: %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
    v65 = v60;
    v5 = v59;
    v6 = v72;
    v52 = v73;
    MEMORY[0x1E12A2F50](v65, -1, -1);
    MEMORY[0x1E12A2F50](v58, -1, -1);
  }

  else
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v54, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  }

  v66 = (*(v6 + 48))(v52, 1, v5) != 1;
  outlined destroy of ReferenceResolutionClientProtocol?(v52, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  return v66;
}

BOOL specialized HomeAutomationAffinityScorer.hasSpanLemmatizationMatch(_:)(uint64_t a1)
{
  matched = type metadata accessor for MatchInfo.AliasType();
  v71 = *(matched - 8);
  MEMORY[0x1EEE9AC00](matched);
  v61 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for MatchInfo.MatchSignals();
  v69 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v50 - v6;
  v72 = type metadata accessor for MatchInfo();
  v8 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UsoEntitySpan();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v55 = &v50 - v17;
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v21 = &v50 - v19;
  v22 = *(a1 + 16);
  v73 = v11;
  if (v22)
  {
    v51 = &v50 - v19;
    v52 = v12;
    v23 = v12 + 16;
    v70 = *(v12 + 16);
    v24 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v25 = (v8 + 48);
    v65 = (v69 + 8);
    v66 = (v8 + 32);
    v64 = (v8 + 8);
    v58 = *MEMORY[0x1E69D2338];
    v56 = (v71 + 8);
    v57 = (v71 + 104);
    v26 = (v12 + 8);
    v71 = v23;
    v68 = *(v23 + 56);
    v69 = v10;
    v59 = v7;
    v60 = v4;
    v70(v14, v24, v11, v20);
    while (1)
    {
      UsoEntitySpan.matchInfo.getter();
      v28 = v72;
      if ((*v25)(v7, 1, v72) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
      }

      else
      {
        (*v66)(v10, v7, v28);
        static MatchInfo.MatchSignals.aliasMatch.getter();
        v29 = MatchInfo.hasMatchSignals(_:)();
        (*v65)(v4, v67);
        if (v29)
        {
          v30 = MatchInfo.matchedAliasTypes.getter();
          v32 = v61;
          v31 = matched;
          (*v57)(v61, v58, matched);
          v63 = specialized Sequence<>.contains(_:)(v32, v30);

          v33 = v32;
          v34 = v31;
          v7 = v59;
          v4 = v60;
          (*v56)(v33, v34);
          (*v64)(v10, v28);
          if (v63)
          {
            v12 = v52;
            v21 = v51;
            v11 = v73;
            (*(v52 + 32))(v51, v14, v73);
            v35 = 0;
            goto LABEL_13;
          }
        }

        else
        {
          (*v64)(v10, v28);
        }
      }

      v11 = v73;
      (*v26)(v14, v73);
      v10 = v69;
      v24 += v68;
      if (!--v22)
      {
        break;
      }

      v70(v14, v24, v11, v27);
    }

    v35 = 1;
    v12 = v52;
    v21 = v51;
  }

  else
  {
    v35 = 1;
  }

LABEL_13:
  (*(v12 + 56))(v21, v35, 1, v11);
  v36 = v55;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, static Logger.executor);
  outlined init with copy of ReferenceResolutionClientProtocol?(v21, v36, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v74 = v41;
    *v40 = 136315138;
    outlined init with copy of ReferenceResolutionClientProtocol?(v36, v53, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    v42 = String.init<A>(describing:)();
    v43 = v36;
    v44 = v42;
    v46 = v45;
    outlined destroy of ReferenceResolutionClientProtocol?(v43, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v74);
    v11 = v73;

    *(v40 + 4) = v47;
    _os_log_impl(&dword_1DC659000, v38, v39, "HomeAutomationAffinityScorer - Found HomeAutomation Span Lemmatization match: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x1E12A2F50](v41, -1, -1);
    MEMORY[0x1E12A2F50](v40, -1, -1);
  }

  else
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v36, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  }

  v48 = (*(v12 + 48))(v21, 1, v11) != 1;
  outlined destroy of ReferenceResolutionClientProtocol?(v21, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  return v48;
}

BOOL specialized HomeAutomationAffinityScorer.hasHKExactMatch(_:)(uint64_t a1)
{
  v107 = type metadata accessor for SpanProperty();
  v2 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v102 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v104 = &v79 - v5;
  v99 = type metadata accessor for IdentifierNamespace();
  v6 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v98 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UsoEntitySpan();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  MEMORY[0x1EEE9AC00](v81);
  v80 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v79 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v82 = &v79 - v17;
  v18 = *(a1 + 16);
  v83 = v9;
  v97 = v18;
  if (v18)
  {
    v20 = *(v9 + 16);
    v19 = v9 + 16;
    v94 = a1 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v95 = v20;
    v93 = *MEMORY[0x1E69D1B18];
    v92 = (v6 + 104);
    v91 = (v6 + 8);
    v21 = 0;
    v105 = (v2 + 8);
    v106 = v2 + 16;
    v88 = (v19 - 8);
    v96 = v19;
    v90 = *(v19 + 56);
    v89 = xmmword_1DCA66060;
    v86 = v2;
    v85 = v11;
    v84 = v8;
    v87 = v15;
    while (1)
    {
      v101 = v21;
      v95(v11, v94 + v90 * v21, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      inited = swift_initStackObject();
      *(inited + 16) = v89;
      v24 = v98;
      v23 = v99;
      (*v92)(v98, v93, v99);
      v25 = IdentifierNamespace.rawValue.getter();
      v27 = v26;
      (*v91)(v24, v23);
      *(inited + 32) = v25;
      *(inited + 40) = v27;
      v28 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of String(inited + 32);
      v29 = UsoEntitySpan.properties.getter();
      v30 = *(v29 + 16);
      if (v30)
      {
        v103 = v28;
        v108 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30, 0);
        v31 = v108;
        v32 = *(v2 + 80);
        v100 = v29;
        v33 = v29 + ((v32 + 32) & ~v32);
        v34 = *(v2 + 72);
        v35 = *(v2 + 16);
        do
        {
          v36 = v104;
          v37 = v107;
          v35(v104, v33, v107);
          v38 = SpanProperty.key.getter();
          v40 = v39;
          (*v105)(v36, v37);
          v108 = v31;
          v42 = *(v31 + 16);
          v41 = *(v31 + 24);
          if (v42 >= v41 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1);
            v31 = v108;
          }

          *(v31 + 16) = v42 + 1;
          v43 = v31 + 16 * v42;
          *(v43 + 32) = v38;
          *(v43 + 40) = v40;
          v33 += v34;
          --v30;
        }

        while (v30);

        v8 = v84;
        v15 = v87;
        v2 = v86;
        v11 = v85;
        v28 = v103;
      }

      else
      {

        v31 = MEMORY[0x1E69E7CC0];
      }

      v44 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v31);

      specialized Set.isDisjoint(with:)(v44, v28);
      v46 = v45;

      if ((v46 & 1) == 0)
      {
        if (one-time initialization token for kHKEntityTypes != -1)
        {
          swift_once();
        }

        v47 = static HomeAutomationAffinityScorer.kHKEntityTypes;
        v48 = UsoEntitySpan.properties.getter();
        v49 = *(v48 + 16);
        if (v49)
        {
          v100 = v47;
          v50 = v48 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
          v103 = *(v2 + 72);
          v51 = *(v2 + 16);
          v52 = MEMORY[0x1E69E7CC0];
          do
          {
            v54 = v102;
            v55 = v107;
            v51(v102, v50, v107);
            v56 = SpanProperty.valueString.getter();
            v58 = v57;
            (*v105)(v54, v55);
            if (v58)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v52 + 2) + 1, 1, v52);
              }

              v60 = *(v52 + 2);
              v59 = *(v52 + 3);
              if (v60 >= v59 >> 1)
              {
                v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v52);
              }

              *(v52 + 2) = v60 + 1;
              v53 = &v52[16 * v60];
              *(v53 + 4) = v56;
              *(v53 + 5) = v58;
            }

            v50 += v103;
            --v49;
          }

          while (v49);

          v2 = v86;
          v11 = v85;
          v47 = v100;
          v15 = v87;
        }

        else
        {

          v52 = MEMORY[0x1E69E7CC0];
        }

        v61 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v52);

        specialized Set.isDisjoint(with:)(v61, v47);
        v63 = v62;

        if ((v63 & 1) == 0 && (UsoEntitySpan.hasExactMatch()() || UsoEntitySpan.hasApproximateHighScoreMatch()()))
        {
          break;
        }
      }

      v21 = v101 + 1;
      (*v88)(v11, v8);
      if (v21 == v97)
      {
        v64 = 1;
        v65 = v83;
        goto LABEL_31;
      }
    }

    v65 = v83;
    v66 = v82;
    (*(v83 + 32))(v82, v11, v8);
    v64 = 0;
  }

  else
  {
    v64 = 1;
    v65 = v9;
LABEL_31:
    v66 = v82;
  }

  (*(v65 + 56))(v66, v64, 1, v8);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v67 = type metadata accessor for Logger();
  __swift_project_value_buffer(v67, static Logger.executor);
  outlined init with copy of ReferenceResolutionClientProtocol?(v66, v15, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v108 = v71;
    *v70 = 136315138;
    outlined init with copy of ReferenceResolutionClientProtocol?(v15, v80, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    v72 = String.init<A>(describing:)();
    v74 = v73;
    outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, &v108);

    *(v70 + 4) = v75;
    _os_log_impl(&dword_1DC659000, v68, v69, "HomeAutomationAffinityScorer - Found HomeKitSpan with ExactMatch %s", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    MEMORY[0x1E12A2F50](v71, -1, -1);
    v76 = v70;
    v66 = v82;
    MEMORY[0x1E12A2F50](v76, -1, -1);
  }

  else
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  }

  v77 = (*(v83 + 48))(v66, 1, v8) != 1;
  outlined destroy of ReferenceResolutionClientProtocol?(v66, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  return v77;
}

BOOL specialized HomeAutomationAffinityScorer.hasHKFuzzyMatch(_:)(uint64_t a1)
{
  matched = type metadata accessor for MatchInfo.MatchSignals();
  v2 = *(matched - 8);
  MEMORY[0x1EEE9AC00](matched);
  v130 = &v115 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v133 = &v115 - v5;
  v137 = type metadata accessor for MatchInfo();
  v6 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v8 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v135 = &v115 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v134 = &v115 - v12;
  v136 = type metadata accessor for PayloadAttachmentInfo.AttachmentType();
  v13 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v122 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v121 = &v115 - v16;
  v162 = type metadata accessor for SpanProperty();
  v17 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v158 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v159 = &v115 - v20;
  v153 = type metadata accessor for IdentifierNamespace();
  v21 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v152 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for UsoEntitySpan();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  MEMORY[0x1EEE9AC00](v116);
  v115 = &v115 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v123 = &v115 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v128 = &v115 - v31;
  v32 = *(a1 + 16);
  v129 = v24;
  v151 = v32;
  if (!v32)
  {
    v99 = 1;
    v100 = v24;
LABEL_39:
    v101 = v128;
    goto LABEL_40;
  }

  v34 = *(v24 + 16);
  v33 = v24 + 16;
  v149 = v34;
  v148 = a1 + ((*(v33 + 64) + 32) & ~*(v33 + 64));
  v147 = (v21 + 104);
  v146 = *MEMORY[0x1E69D1B18];
  v145 = (v21 + 8);
  v35 = 0;
  v160 = (v17 + 8);
  v161 = v17 + 16;
  v127 = (v13 + 48);
  v120 = (v13 + 32);
  v119 = *MEMORY[0x1E69D1B60];
  v118 = (v13 + 104);
  v117 = (v13 + 8);
  v126 = (v13 + 56);
  v131 = (v6 + 48);
  v124 = (v6 + 32);
  v125 = (v6 + 8);
  v142 = (v33 - 8);
  v150 = v33;
  v144 = *(v33 + 56);
  v143 = xmmword_1DCA66060;
  v140 = v8;
  v139 = v17;
  v138 = v26;
  v141 = v23;
  v156 = (v2 + 8);
  while (1)
  {
    v157 = v35;
    v149(v26, v148 + v144 * v35, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = v143;
    v38 = v152;
    v37 = v153;
    (*v147)(v152, v146, v153);
    v39 = IdentifierNamespace.rawValue.getter();
    v41 = v40;
    (*v145)(v38, v37);
    *(inited + 32) = v39;
    *(inited + 40) = v41;
    v42 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of String(inited + 32);
    v43 = UsoEntitySpan.properties.getter();
    v44 = *(v43 + 16);
    if (v44)
    {
      v155 = v42;
      v164 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44, 0);
      v45 = v164;
      v46 = *(v17 + 80);
      v154 = v43;
      v47 = v43 + ((v46 + 32) & ~v46);
      v48 = *(v17 + 72);
      v49 = *(v17 + 16);
      do
      {
        v50 = v159;
        v51 = v162;
        v49(v159, v47, v162);
        v52 = SpanProperty.key.getter();
        v54 = v53;
        (*v160)(v50, v51);
        v164 = v45;
        v56 = *(v45 + 16);
        v55 = *(v45 + 24);
        if (v56 >= v55 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1);
          v45 = v164;
        }

        *(v45 + 16) = v56 + 1;
        v57 = v45 + 16 * v56;
        *(v57 + 32) = v52;
        *(v57 + 40) = v54;
        v47 += v48;
        --v44;
      }

      while (v44);

      v23 = v141;
      v8 = v140;
      v17 = v139;
      v26 = v138;
      v42 = v155;
    }

    else
    {

      v45 = MEMORY[0x1E69E7CC0];
    }

    v58 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v45);

    specialized Set.isDisjoint(with:)(v58, v42);
    v60 = v59;

    v61 = v156;
    if (v60)
    {
      goto LABEL_4;
    }

    if (one-time initialization token for kHKEntityTypes != -1)
    {
      swift_once();
    }

    v62 = static HomeAutomationAffinityScorer.kHKEntityTypes;
    v63 = UsoEntitySpan.properties.getter();
    v64 = *(v63 + 16);
    if (v64)
    {
      v155 = v62;
      v65 = v63 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
      v66 = *(v17 + 72);
      v67 = *(v17 + 16);
      v68 = MEMORY[0x1E69E7CC0];
      do
      {
        v70 = v158;
        v71 = v162;
        v67(v158, v65, v162);
        v72 = SpanProperty.valueString.getter();
        v74 = v73;
        (*v160)(v70, v71);
        if (v74)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v68 + 2) + 1, 1, v68);
          }

          v76 = *(v68 + 2);
          v75 = *(v68 + 3);
          if (v76 >= v75 >> 1)
          {
            v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v76 + 1, 1, v68);
          }

          *(v68 + 2) = v76 + 1;
          v69 = &v68[16 * v76];
          *(v69 + 4) = v72;
          *(v69 + 5) = v74;
        }

        v65 += v66;
        --v64;
      }

      while (v64);

      v8 = v140;
      v17 = v139;
      v26 = v138;
      v62 = v155;
      v61 = v156;
      v23 = v141;
    }

    else
    {

      v68 = MEMORY[0x1E69E7CC0];
    }

    v77 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v68);

    specialized Set.isDisjoint(with:)(v77, v62);
    v79 = v78;

    if (v79)
    {
      goto LABEL_4;
    }

    v80 = v135;
    UsoEntitySpan.payloadAttachmentInfo.getter();
    v81 = type metadata accessor for PayloadAttachmentInfo();
    v82 = *(v81 - 8);
    if ((*(v82 + 48))(v80, 1, v81) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v80, &_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
      v83 = v134;
      (*v126)(v134, 1, 1, v136);
LABEL_30:
      outlined destroy of ReferenceResolutionClientProtocol?(v83, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
      goto LABEL_32;
    }

    v84 = v134;
    PayloadAttachmentInfo.attachmentType.getter();
    v85 = v81;
    v83 = v84;
    (*(v82 + 8))(v80, v85);
    if ((*v127)(v84, 1, v136) == 1)
    {
      goto LABEL_30;
    }

    v86 = v121;
    v87 = v136;
    (*v120)(v121, v83, v136);
    v88 = v122;
    (*v118)(v122, v119, v87);
    lazy protocol witness table accessor for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType(&lazy protocol witness table cache variable for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType, MEMORY[0x1E69D1B68], MEMORY[0x1E69D1B78]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v89 = *v117;
    (*v117)(v88, v87);
    v89(v86, v87);
    if (v164 == v163)
    {
      goto LABEL_47;
    }

LABEL_32:
    v90 = v133;
    UsoEntitySpan.matchInfo.getter();
    v91 = v137;
    if ((*v131)(v90, 1, v137) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v90, &_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
      goto LABEL_4;
    }

    (*v124)(v8, v90, v91);
    v92 = v130;
    static MatchInfo.MatchSignals.approximateMatch.getter();
    v93 = MatchInfo.hasMatchSignals(_:)();
    v94 = *v61;
    (*v61)(v92, matched);
    if (v93)
    {
      break;
    }

    static MatchInfo.MatchSignals.partialMatch.getter();
    v95 = MatchInfo.hasMatchSignals(_:)();
    v96 = matched;
    v97 = v95;
    v94(v92, matched);
    if (v97)
    {
      break;
    }

    static MatchInfo.MatchSignals.aliasMatch.getter();
    v98 = MatchInfo.hasMatchSignals(_:)();
    v94(v92, v96);
    (*v125)(v8, v137);
    if (v98)
    {
      goto LABEL_47;
    }

LABEL_4:
    v35 = v157 + 1;
    (*v142)(v26, v23);
    if (v35 == v151)
    {
      v99 = 1;
      v100 = v129;
      goto LABEL_39;
    }
  }

  (*v125)(v8, v137);
LABEL_47:
  v100 = v129;
  v101 = v128;
  (*(v129 + 32))(v128, v26, v23);
  v99 = 0;
LABEL_40:
  (*(v100 + 56))(v101, v99, 1, v23);
  v102 = v123;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v103 = type metadata accessor for Logger();
  __swift_project_value_buffer(v103, static Logger.executor);
  outlined init with copy of ReferenceResolutionClientProtocol?(v101, v102, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v164 = v107;
    *v106 = 136315138;
    outlined init with copy of ReferenceResolutionClientProtocol?(v102, v115, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    v108 = String.init<A>(describing:)();
    v110 = v109;
    outlined destroy of ReferenceResolutionClientProtocol?(v102, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v110, &v164);

    *(v106 + 4) = v111;
    _os_log_impl(&dword_1DC659000, v104, v105, "HomeAutomationAffinityScorer - Found HomeKitSpan with FuzzyMatch %s", v106, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v107);
    v112 = v107;
    v101 = v128;
    MEMORY[0x1E12A2F50](v112, -1, -1);
    MEMORY[0x1E12A2F50](v106, -1, -1);
  }

  else
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v102, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  }

  v113 = (*(v129 + 48))(v101, 1, v23) != 1;
  outlined destroy of ReferenceResolutionClientProtocol?(v101, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  return v113;
}

uint64_t specialized HomeAutomationAffinityScorer.hasAppBundleIdMatch(_:)(uint64_t a1)
{
  v35 = type metadata accessor for IdentifierAppBundle();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UsoEntitySpan();
  v6 = *(v5 - 8);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a1 + 16);
  if (!v28)
  {
    return 0;
  }

  v10 = 0;
  v12 = *(v6 + 16);
  v11 = v6 + 16;
  v32 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
  v33 = v12;
  v13 = *(v11 + 56);
  v29 = (v2 + 8);
  v30 = v13;
  v31 = (v11 - 8);
  v34 = v5;
  v12(v9, v32, v5, v7);
  while (1)
  {
    if (one-time initialization token for kAppBundleIdMatches != -1)
    {
      swift_once();
    }

    v16 = static HomeAutomationAffinityScorer.kAppBundleIdMatches;
    UsoEntitySpan.appBundleSemantic.getter();
    v17 = IdentifierAppBundle.rawValue.getter();
    v19 = v18;
    (*v29)(v4, v35);
    if (*(v16 + 16))
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = -1 << *(v16 + 32);
      v22 = v20 & ~v21;
      if ((*(v16 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        break;
      }
    }

LABEL_3:
    ++v10;
    v14 = v34;
    (*v31)(v9, v34);

    if (v10 == v28)
    {
      return 0;
    }

    v33(v9, v32 + v30 * v10, v14, v15);
  }

  v23 = ~v21;
  while (1)
  {
    v24 = (*(v16 + 48) + 16 * v22);
    v25 = *v24 == v17 && v24[1] == v19;
    if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v22 = (v22 + 1) & v23;
    if (((*(v16 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  (*v31)(v9, v34);

  return 1;
}

BOOL specialized HomeAutomationAffinityScorer.hasPlaceHintMatch(_:)(uint64_t a1)
{
  v80 = type metadata accessor for SpanProperty();
  v2 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UsoEntitySpan();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v59 - v10;
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v15 = &v59 - v13;
  v69 = *(a1 + 16);
  v67 = v5;
  if (v69)
  {
    v60 = &v59 - v13;
    v16 = 0;
    v18 = *(v5 + 16);
    v17 = v5 + 16;
    v73 = a1 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v74 = v18;
    v78 = v2 + 16;
    v76 = 0x80000001DCA7B220;
    v77 = (v2 + 8);
    v68 = (v17 - 8);
    v75 = v17;
    v72 = *(v17 + 56);
    v66 = v4;
    v65 = v11;
    v64 = v2;
    v63 = v7;
    v18(v7, v73, v4, v14);
    while (1)
    {
      v20 = UsoEntitySpan.properties.getter();
      v21 = *(v20 + 16);
      if (v21)
      {
        v71 = v16;
        v81[0] = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
        v22 = v81[0];
        v23 = *(v2 + 80);
        v70 = v20;
        v24 = v20 + ((v23 + 32) & ~v23);
        v25 = *(v2 + 72);
        v26 = *(v2 + 16);
        do
        {
          v27 = v79;
          v28 = v80;
          v26(v79, v24, v80);
          v29 = SpanProperty.key.getter();
          v31 = v30;
          (*v77)(v27, v28);
          v81[0] = v22;
          v33 = *(v22 + 16);
          v32 = *(v22 + 24);
          if (v33 >= v32 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
            v22 = v81[0];
          }

          *(v22 + 16) = v33 + 1;
          v34 = v22 + 16 * v33;
          *(v34 + 32) = v29;
          *(v34 + 40) = v31;
          v24 += v25;
          --v21;
        }

        while (v21);

        v4 = v66;
        v11 = v65;
        v2 = v64;
        v7 = v63;
        v16 = v71;
      }

      else
      {

        v22 = MEMORY[0x1E69E7CC0];
      }

      v35 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v22);

      if (*(v35 + 16))
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v36 = Hasher._finalize()();
        v37 = v76;
        v38 = -1 << *(v35 + 32);
        v39 = v36 & ~v38;
        if ((*(v35 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
        {
          break;
        }
      }

LABEL_3:
      ++v16;

      (*v68)(v7, v4);
      if (v16 == v69)
      {
        v44 = 1;
        v5 = v67;
        v15 = v60;
        goto LABEL_24;
      }

      v74(v7, v73 + v72 * v16, v4, v19);
    }

    v40 = ~v38;
    while (1)
    {
      v41 = (*(v35 + 48) + 16 * v39);
      if (*v41 == 0xD000000000000017 && v37 == v41[1])
      {
        break;
      }

      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v37 = v76;
      if (v43)
      {
        break;
      }

      v39 = (v39 + 1) & v40;
      if (((*(v35 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v5 = v67;
    v15 = v60;
    (*(v67 + 32))(v60, v7, v4);
    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

LABEL_24:
  (*(v5 + 56))(v15, v44, 1, v4);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  __swift_project_value_buffer(v45, static Logger.executor);
  outlined init with copy of ReferenceResolutionClientProtocol?(v15, v11, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v81[0] = v49;
    *v48 = 136315138;
    outlined init with copy of ReferenceResolutionClientProtocol?(v11, v61, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    v50 = String.init<A>(describing:)();
    v51 = v11;
    v52 = v50;
    v54 = v53;
    outlined destroy of ReferenceResolutionClientProtocol?(v51, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, v81);

    *(v48 + 4) = v55;
    _os_log_impl(&dword_1DC659000, v46, v47, "HomeAutomationAffinityScorer - Found HomeAutomation PlaceHint: %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    v56 = v49;
    v5 = v67;
    MEMORY[0x1E12A2F50](v56, -1, -1);
    MEMORY[0x1E12A2F50](v48, -1, -1);
  }

  else
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  }

  v57 = (*(v5 + 48))(v15, 1, v4) != 1;
  outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  return v57;
}

uint64_t specialized HomeAutomationAffinityScorer.isiOSLockRequest(_:)(uint64_t a1)
{
  v51 = type metadata accessor for SpanProperty();
  v2 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UsoEntitySpan();
  v6 = *(v5 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *(a1 + 16);
  if (v46)
  {
    v10 = 0;
    v12 = *(v6 + 16);
    v11 = v6 + 16;
    v44 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v45 = v12;
    v13 = *(v11 + 56);
    v50 = v2 + 16;
    v14 = (v2 + 8);
    v42 = (v11 - 8);
    v43 = v13;
    v40 = v5;
    v41 = v2;
    v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = v11;
    do
    {
      v49 = v10;
      v45(v9, v44 + v43 * v10, v5, v8);
      if (one-time initialization token for kLockRelatedValues != -1)
      {
        swift_once();
      }

      v48 = static HomeAutomationAffinityScorer.kLockRelatedValues;
      v15 = UsoEntitySpan.properties.getter();
      v16 = *(v15 + 16);
      if (v16)
      {
        v17 = *(v2 + 80);
        v47 = v15;
        v18 = v15 + ((v17 + 32) & ~v17);
        v52 = *(v2 + 72);
        v19 = *(v2 + 16);
        v20 = MEMORY[0x1E69E7CC0];
        do
        {
          v22 = v51;
          v19(v4, v18, v51);
          v23 = SpanProperty.valueString.getter();
          v25 = v24;
          (*v14)(v4, v22);
          if (v25)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
            }

            v27 = *(v20 + 2);
            v26 = *(v20 + 3);
            if (v27 >= v26 >> 1)
            {
              v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v20);
            }

            *(v20 + 2) = v27 + 1;
            v21 = &v20[16 * v27];
            *(v21 + 4) = v23;
            *(v21 + 5) = v25;
          }

          v18 += v52;
          --v16;
        }

        while (v16);

        v5 = v40;
        v2 = v41;
        v9 = v38;
      }

      else
      {

        v20 = MEMORY[0x1E69E7CC0];
      }

      v28 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v20);

      specialized Set.isDisjoint(with:)(v28, v48);
      v30 = v29;

      (*v42)(v9, v5);
      if ((v30 & 1) == 0)
      {
        break;
      }

      v10 = v49 + 1;
    }

    while (v49 + 1 != v46);
    v31 = v30 ^ 1;
  }

  else
  {
    v31 = 0;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static Logger.executor);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 67109120;
    *(v35 + 4) = v31 & 1;
    _os_log_impl(&dword_1DC659000, v33, v34, "HomeAutomationAffinityScorer - haMatchConditions.isiOSLockRequest %{BOOL}d ", v35, 8u);
    MEMORY[0x1E12A2F50](v35, -1, -1);
  }

  return v31 & 1;
}

uint64_t specialized HomeAutomationAffinityScorer.scoreSummariseSetting(usoTask:_:)(uint64_t a1, void (**a2)(void, void))
{
  v3 = type metadata accessor for IdentifierNamespace();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IdentifierAppBundle();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for SpanProperty();
  v156 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v158 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v159 = &v124 - v13;
  v14 = type metadata accessor for UsoEntitySpan();
  v157 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v155 = &v124 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v146 = &v124 - v20;
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v163[3])
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v163, &_sypSgMd, &_sypSgMR);
    return 5;
  }

  type metadata accessor for UsoTask_summarise_common_Setting();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 5;
  }

  v139 = a2;
  v21 = v164;

  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
  if (!v163[0])
  {
    goto LABEL_20;
  }

  v140 = v21;
  v22 = dispatch thunk of CodeGenGlobalArgs.getEntitySpansFor(attributeName:)();

  if (!v22)
  {
    goto LABEL_20;
  }

  *&v134 = v8;
  v135 = v4;
  v141 = v10;
  v142 = v7;
  v137 = v6;
  v138 = v3;
  v23 = v155;
  v24 = v22;
  v148 = *(v22 + 16);
  if (!v148)
  {
LABEL_17:

LABEL_20:

    return 5;
  }

  v25 = 0;
  v133 = (*(v157 + 80) + 32) & ~*(v157 + 80);
  v147 = v22 + v133;
  v154 = v157 + 16;
  v160 = (v156 + 8);
  v161 = v156 + 16;
  v26 = (v157 + 8);
  v144 = v14;
  v145 = (v157 + 8);
  v136 = v16;
  v143 = v22;
  while (1)
  {
    if (v25 >= *(v24 + 16))
    {
      __break(1u);
      goto LABEL_120;
    }

    v153 = *(v157 + 72);
    v152 = *(v157 + 16);
    v152(v23, v147 + v153 * v25, v14);
    v27 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of HomeAutomationAffinityScorer.scoreSummariseSetting(usoTask:_:));
    outlined destroy of String(&unk_1F58252C8);
    v28 = UsoEntitySpan.properties.getter();
    v29 = *(v28 + 16);
    if (v29)
    {
      v150 = v27;
      v151 = v25;
      v163[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29, 0);
      v30 = v163[0];
      v31 = (*(v156 + 80) + 32) & ~*(v156 + 80);
      v149 = v28;
      v32 = v28 + v31;
      v33 = *(v156 + 72);
      v34 = *(v156 + 16);
      do
      {
        v35 = v159;
        v36 = v162;
        v34(v159, v32, v162);
        v37 = SpanProperty.key.getter();
        v39 = v38;
        (*v160)(v35, v36);
        v163[0] = v30;
        v41 = *(v30 + 16);
        v40 = *(v30 + 24);
        if (v41 >= v40 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1);
          v30 = v163[0];
        }

        *(v30 + 16) = v41 + 1;
        v42 = v30 + 16 * v41;
        *(v42 + 32) = v37;
        *(v42 + 40) = v39;
        v32 += v33;
        --v29;
      }

      while (v29);

      v14 = v144;
      v26 = v145;
      v23 = v155;
      v24 = v143;
      v25 = v151;
      v27 = v150;
    }

    else
    {

      v30 = MEMORY[0x1E69E7CC0];
    }

    v22 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v30);

    specialized Set.isDisjoint(with:)(v22, v27);
    v44 = v43;

    if ((v44 & 1) == 0)
    {
      break;
    }

    ++v25;
    (*v26)(v23, v14);
    if (v25 == v148)
    {
      goto LABEL_17;
    }
  }

  v22 = v146;
  (*(v157 + 32))(v146, v23, v14);
  if (one-time initialization token for kSummariseSettingStrictValues != -1)
  {
    goto LABEL_123;
  }

  while (1)
  {
    if (!UsoEntitySpan.anyPropertiesValueMatchAny(value:)(static HomeAutomationAffinityScorer.kSummariseSettingStrictValues))
    {

      (*v26)(v22, v14);
      return 5;
    }

    if ((~v139 & 0x100000000010000) == 0)
    {
      break;
    }

    v50 = dispatch thunk of Uso_VerbTemplate_Reference.userEntities.getter();

    if (!v50)
    {
      goto LABEL_107;
    }

    swift_getKeyPath();
    v163[0] = MEMORY[0x1E69E7CC0];
    if (v50 >> 62)
    {
      v51 = __CocoaSet.count.getter();
    }

    else
    {
      v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v51)
    {
      v26 = 0;
      v125 = MEMORY[0x1E69E7CC0];
      do
      {
        v22 = v26;
        while (1)
        {
          if ((v50 & 0xC000000000000001) != 0)
          {
            v52 = MEMORY[0x1E12A1FE0](v22, v50);
            v26 = (v22 + 1);
            if (__OFADD__(v22, 1))
            {
              goto LABEL_121;
            }
          }

          else
          {
            if (v22 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_122;
            }

            v52 = *(v50 + 8 * v22 + 32);

            v26 = (v22 + 1);
            if (__OFADD__(v22, 1))
            {
              goto LABEL_121;
            }
          }

          v163[9] = v52;

          swift_getAtKeyPath();

          if (v164)
          {
            break;
          }

          ++v22;
          if (v26 == v51)
          {
            goto LABEL_51;
          }
        }

        MEMORY[0x1E12A1680](v53);
        if (*((v163[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v163[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v125 = v163[0];
      }

      while (v26 != v51);
    }

    else
    {
      v125 = MEMORY[0x1E69E7CC0];
    }

LABEL_51:

    v26 = v145;
    if (v125 >> 62)
    {
      v22 = __CocoaSet.count.getter();
    }

    else
    {
      v22 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v54 = v136;
    if (!v22)
    {
LABEL_106:

LABEL_107:
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v111 = type metadata accessor for Logger();
      __swift_project_value_buffer(v111, static Logger.executor);
      v112 = Logger.logObject.getter();
      v113 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        *v114 = 0;
        _os_log_impl(&dword_1DC659000, v112, v113, "HomeAutomationAffinityScorer - [Low] Summarise setting with no mentioned HA specific user entities", v114, 2u);
        MEMORY[0x1E12A2F50](v114, -1, -1);
      }

      else
      {
      }

      (*v26)(v146, v14);
      return 1;
    }

    v55 = 0;
    v129 = v125 & 0xC000000000000001;
    v128 = v125 & 0xFFFFFFFFFFFFFF8;
    v127 = v125 + 32;
    v149 = (v134 + 8);
    LODWORD(v143) = *MEMORY[0x1E69D1B18];
    v139 = (v135 + 13);
    ++v135;
    v134 = xmmword_1DCA66060;
    v126 = v22;
    while (1)
    {
      if (v129)
      {
        v131 = MEMORY[0x1E12A1FE0](v55, v125);
      }

      else
      {
        if (v55 >= *(v128 + 16))
        {
          goto LABEL_125;
        }

        v131 = *(v127 + 8 * v55);
      }

      v130 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        __break(1u);
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

      v56 = dispatch thunk of CodeGenGlobalArgs.getEntitySpansFor(attributeName:)();
      v57 = v56 ? v56 : MEMORY[0x1E69E7CC0];
      v151 = *(v57 + 16);
      if (v151)
      {
        break;
      }

LABEL_55:

      v22 = v126;
      v55 = v130;
      if (v130 == v126)
      {
        goto LABEL_106;
      }
    }

    v58 = 0;
    v150 = v57 + v133;
    v148 = v57;
    while (v58 < *(v57 + 16))
    {
      v155 = v58;
      v152(v54, v150 + v58 * v153, v14);
      if (one-time initialization token for kAppBundleIdMatches != -1)
      {
        swift_once();
      }

      v59 = static HomeAutomationAffinityScorer.kAppBundleIdMatches;
      v60 = v141;
      UsoEntitySpan.appBundleSemantic.getter();
      v22 = IdentifierAppBundle.rawValue.getter();
      v62 = v61;
      (*v149)(v60, v142);
      if (*(v59 + 16))
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v63 = Hasher._finalize()();
        v64 = -1 << *(v59 + 32);
        v65 = v63 & ~v64;
        if ((*(v59 + 56 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65))
        {
          v66 = ~v64;
          while (1)
          {
            v67 = (*(v59 + 48) + 16 * v65);
            v68 = *v67 == v22 && v67[1] == v62;
            if (v68 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v65 = (v65 + 1) & v66;
            if (((*(v59 + 56 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) == 0)
            {
              goto LABEL_79;
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
          inited = swift_initStackObject();
          *(inited + 16) = v134;
          v70 = v137;
          v71 = v138;
          (*v139)(v137, v143, v138);
          v72 = IdentifierNamespace.rawValue.getter();
          v74 = v73;
          (*v135)(v70, v71);
          *(inited + 32) = v72;
          *(inited + 40) = v74;
          v75 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
          swift_setDeallocating();
          outlined destroy of String(inited + 32);
          v76 = UsoEntitySpan.properties.getter();
          v77 = *(v76 + 16);
          if (v77)
          {
            v157 = v75;
            v163[0] = MEMORY[0x1E69E7CC0];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v77, 0);
            v78 = v163[0];
            v79 = (*(v156 + 80) + 32) & ~*(v156 + 80);
            v147 = v76;
            v80 = v76 + v79;
            v81 = *(v156 + 72);
            v82 = *(v156 + 16);
            do
            {
              v83 = v159;
              v84 = v162;
              v82(v159, v80, v162);
              v85 = SpanProperty.key.getter();
              v87 = v86;
              (*v160)(v83, v84);
              v163[0] = v78;
              v89 = *(v78 + 16);
              v88 = *(v78 + 24);
              if (v89 >= v88 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v88 > 1), v89 + 1, 1);
                v78 = v163[0];
              }

              *(v78 + 16) = v89 + 1;
              v90 = v78 + 16 * v89;
              *(v90 + 32) = v85;
              *(v90 + 40) = v87;
              v80 += v81;
              --v77;
            }

            while (v77);

            v14 = v144;
            v26 = v145;
            v54 = v136;
            v75 = v157;
          }

          else
          {

            v78 = MEMORY[0x1E69E7CC0];
          }

          v22 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v78);

          specialized Set.isDisjoint(with:)(v22, v75);
          v92 = v91;

          v57 = v148;
          if (v92)
          {
            (*v26)(v54, v14);
          }

          else
          {
            if (one-time initialization token for kHKEntityTypes != -1)
            {
              swift_once();
            }

            v93 = static HomeAutomationAffinityScorer.kHKEntityTypes;
            v94 = UsoEntitySpan.properties.getter();
            v95 = *(v94 + 16);
            if (v95)
            {
              v147 = v93;
              v96 = (*(v156 + 80) + 32) & ~*(v156 + 80);
              v132 = v94;
              v97 = v94 + v96;
              v157 = *(v156 + 72);
              v98 = *(v156 + 16);
              v99 = MEMORY[0x1E69E7CC0];
              do
              {
                v101 = v158;
                v102 = v162;
                v98(v158, v97, v162);
                v103 = SpanProperty.valueString.getter();
                v105 = v104;
                (*v160)(v101, v102);
                if (v105)
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v99 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v99 + 2) + 1, 1, v99);
                  }

                  v107 = *(v99 + 2);
                  v106 = *(v99 + 3);
                  if (v107 >= v106 >> 1)
                  {
                    v99 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v106 > 1), v107 + 1, 1, v99);
                  }

                  *(v99 + 2) = v107 + 1;
                  v100 = &v99[16 * v107];
                  *(v100 + 4) = v103;
                  *(v100 + 5) = v105;
                }

                v97 += v157;
                --v95;
              }

              while (v95);

              v26 = v145;
              v93 = v147;
            }

            else
            {

              v99 = MEMORY[0x1E69E7CC0];
            }

            v22 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v99);

            specialized Set.isDisjoint(with:)(v22, v93);
            v109 = v108;

            v110 = *v26;
            v54 = v136;
            (*v26)(v136, v14);
            if ((v109 & 1) == 0)
            {

              if (one-time initialization token for executor != -1)
              {
                swift_once();
              }

              v115 = type metadata accessor for Logger();
              __swift_project_value_buffer(v115, static Logger.executor);
              v116 = v131;

              v117 = Logger.logObject.getter();
              v118 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v117, v118))
              {
                v119 = swift_slowAlloc();
                v120 = swift_slowAlloc();
                v163[0] = v120;
                *v119 = 136315138;
                v164 = v116;
                type metadata accessor for UsoEntity_common_UserEntity();

                v121 = String.init<A>(describing:)();
                v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v122, v163);

                *(v119 + 4) = v123;
                _os_log_impl(&dword_1DC659000, v117, v118, "HomeAutomationAffinityScorer - [High] Summarise setting with salient HA entity %s", v119, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v120);
                MEMORY[0x1E12A2F50](v120, -1, -1);
                MEMORY[0x1E12A2F50](v119, -1, -1);
              }

              else
              {
              }

              v110(v146, v14);
              return 3;
            }
          }
        }

        else
        {
LABEL_79:
          (*v26)(v54, v14);

          v57 = v148;
        }
      }

      else
      {
        (*v26)(v54, v14);
      }

      v58 = (v155 + 1);
      if (v155 + 1 == v151)
      {
        goto LABEL_55;
      }
    }

LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    swift_once();
  }

  if (one-time initialization token for executor != -1)
  {
LABEL_126:
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, static Logger.executor);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_1DC659000, v47, v48, "HomeAutomationAffinityScorer - [High] USO entity spans satisfy condition:\n(GeneralNamespaceMatches || ExactNameSpaceMatch) && PlaceHintGeneralMatches", v49, 2u);
    MEMORY[0x1E12A2F50](v49, -1, -1);
  }

  else
  {
  }

  (*v26)(v146, v14);
  return 3;
}
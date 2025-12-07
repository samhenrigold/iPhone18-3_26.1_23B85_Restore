uint64_t OmniSearchService.localSearch(query:typeIdentifiers:sources:options:requestedProperties:)(uint64_t a1)
{
  OUTLINED_FUNCTION_217_6();
  OUTLINED_FUNCTION_75();
  v4 = v3;
  v5 = *v2;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  *v6 = *v2;
  v5[795] = v1;

  if (v1)
  {
    memcpy(v5 + 635, v5 + 593, 0x69uLL);
    outlined destroy of OmniSearchOptions((v5 + 635));
  }

  else
  {
    v5[796] = v4;
    memcpy(v5 + 663, v5 + 593, 0x69uLL);
    outlined destroy of OmniSearchOptions((v5 + 663));
  }

  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_218_6();

  return MEMORY[0x2822009F8](v7);
}

uint64_t OmniSearchService.localSearch(query:typeIdentifiers:sources:options:requestedProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  v15 = *(v14 + 4178);
  v16 = OUTLINED_FUNCTION_57_19();
  (*(v17 + 8))(v16);
  OUTLINED_FUNCTION_209_4();
  *(v14 + 5290) = v15;
  OUTLINED_FUNCTION_111_9(5291);
  OUTLINED_FUNCTION_3_68();
  outlined destroy of UserQuery();
  $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

  OUTLINED_FUNCTION_56_17();

  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_83_0();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  v15 = *(v14 + 4178);
  v16 = OUTLINED_FUNCTION_57_19();
  (*(v17 + 8))(v16);
  OUTLINED_FUNCTION_209_4();
  *(v14 + 4506) = v15;
  OUTLINED_FUNCTION_111_9(4507);
  OUTLINED_FUNCTION_3_68();
  outlined destroy of UserQuery();
  $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

  OUTLINED_FUNCTION_56_17();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_83_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  v15 = *(v14 + 4178);
  v16 = OUTLINED_FUNCTION_57_19();
  (*(v17 + 8))(v16);
  OUTLINED_FUNCTION_209_4();
  *(v14 + 5066) = v15;
  OUTLINED_FUNCTION_111_9(5067);
  OUTLINED_FUNCTION_3_68();
  outlined destroy of UserQuery();
  $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

  OUTLINED_FUNCTION_56_17();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_83_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

uint64_t OmniSearchService.localSearch(query:typeIdentifiers:sources:options:requestedProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_190();
  v27 = (v24 + 4096);
  v28 = 6376;
  v29 = *(v24 + 6296);
  __swift_destroy_boxed_opaque_existential_1Tm((v24 + 6048));
  v30 = v29;
  v31 = Logger.logObject.getter();
  static os_log_type_t.error.getter();

  v32 = OUTLINED_FUNCTION_259();
  v33 = *(v24 + 6296);
  if (v32)
  {
    OUTLINED_FUNCTION_51_0();
    v34 = OUTLINED_FUNCTION_152_0();
    OUTLINED_FUNCTION_271_2(5.7779e-34);
    v35 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_57_16(v35);
    OUTLINED_FUNCTION_56_4();
    _os_log_impl(v36, v37, v38, v39, v40, 0xCu);
    outlined destroy of EagerResolutionService?(v34, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {
  }

  LODWORD(a11) = *(v24 + 4177);
  *(v24 + 4178) = a11;
  v41 = *(*(v24 + 6120) + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_searchServices);
  v42 = *(v41 + 16);
  if (v42)
  {
    a10 = v24 + 4096;
    v26 = 6008;
    v43 = v41 + 32;
    v44 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of ChatMessageRecord(v43, v24 + 6008);
      OUTLINED_FUNCTION_229_5();
      OUTLINED_FUNCTION_70_15((v24 + 6008));
      v45 = OUTLINED_FUNCTION_63_21();
      v46(v45);
      v28 = a13;
      OUTLINED_FUNCTION_229_5();
      OUTLINED_FUNCTION_70_15((v24 + 6008));
      v47 = OUTLINED_FUNCTION_63_21();
      v48(v47);
      if (a13)
      {
        outlined init with copy of ChatMessageRecord(v24 + 6008, v24 + 5968);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v44 = v52;
        }

        OUTLINED_FUNCTION_182_9();
        if (v50)
        {
          OUTLINED_FUNCTION_22_5(v49);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v44 = v53;
        }

        OUTLINED_FUNCTION_181_8();
        outlined init with take of ResponseOverrideMatcherProtocol((v24 + 5968), v51 + 32);
      }

      __swift_destroy_boxed_opaque_existential_1Tm((v24 + 6008));
      v43 += 40;
      --v42;
    }

    while (v42);
    v27 = (v24 + 4096);
  }

  else
  {
    v44 = MEMORY[0x277D84F90];
  }

  *(v24 + 6304) = v44;
  v54 = MEMORY[0x277D85000];
  OUTLINED_FUNCTION_154_4();
  if ((*(v55 + 368))())
  {

    v56 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_211_3();

    if (OUTLINED_FUNCTION_259())
    {
      OUTLINED_FUNCTION_51_0();
      a13 = OUTLINED_FUNCTION_11_26();
      *v25 = 136315138;
      type metadata accessor for SearchResult(0);
      v57 = OUTLINED_FUNCTION_227_3();
      MEMORY[0x25F89F8A0](v57);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_169_9();

      *(v25 + 4) = 0;
      OUTLINED_FUNCTION_56_4();
      _os_log_impl(v58, v59, v60, v61, v62, 0xCu);
      OUTLINED_FUNCTION_54_26();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v63 = *(v24 + 5784);

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_77_5(v65))
    {
      OUTLINED_FUNCTION_51_5();
      v66 = swift_slowAlloc();
      OUTLINED_FUNCTION_157_0(v66);
      OUTLINED_FUNCTION_56_4();
      _os_log_impl(v67, v68, v69, v70, v71, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    OUTLINED_FUNCTION_264_4();
    if (v64)
    {

LABEL_22:
      v72 = v27[82];
      OUTLINED_FUNCTION_122_10();
      v27[634] = v72;
      OUTLINED_FUNCTION_24_31(v24 + 4731);
      memcpy((v24 + 4744), (v24 + 4632), 0x69uLL);
      outlined init with copy of OmniSearchOptions(v24 + 4632, v24 + 4856);
      v73 = swift_task_alloc();
      *(v24 + 6352) = v73;
      *v73 = v24;
      OUTLINED_FUNCTION_15_44(v73);
      OUTLINED_FUNCTION_233_5();
      OUTLINED_FUNCTION_49_4(v74);
      OUTLINED_FUNCTION_115();

      return OmniSearchService.handleLocalResults(query:typeIdentifiers:localResults:options:requestedProperties:ecrResults:locale:)();
    }

    if (v63)
    {
      v88 = *(v63 + 16);

      if (v88)
      {
        goto LABEL_22;
      }

      v89 = OUTLINED_FUNCTION_57_19();
      (*(v90 + 8))(v89);
    }

    else
    {
      v91 = OUTLINED_FUNCTION_57_19();
      (*(v92 + 8))(v91);
    }

    OUTLINED_FUNCTION_208_4();

    OUTLINED_FUNCTION_122_10();
    v27[1418] = v63;
    OUTLINED_FUNCTION_24_31(v24 + 5515);
    outlined destroy of OmniSearchOptions(v24 + v25);
    OUTLINED_FUNCTION_3_68();
    outlined destroy of UserQuery();
    $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

    OUTLINED_FUNCTION_101_10();
    v103 = *(v24 + 6128);

    OUTLINED_FUNCTION_3_13();
    OUTLINED_FUNCTION_115();

    return v95(v93, v94, v95, v96, v97, v98, v99, v100, a9, a10, a11, v103, a13, a14, a15, a16);
  }

  else
  {
    OUTLINED_FUNCTION_130_12();
    v27[1530] = a11;
    OUTLINED_FUNCTION_24_31(v24 + 5627);
    memcpy((v24 + v25), (v24 + v28), 0x69uLL);
    v102 = (*v54 & *v26) + 296;
    v77 = *((*v54 & *v26) + 0x128);
    outlined init with copy of OmniSearchOptions(v24 + v28, v24);
    v101 = v77 + *v77;
    v78 = swift_task_alloc();
    *(v24 + 6312) = v78;
    *v78 = v24;
    OUTLINED_FUNCTION_45_21(v78);
    OUTLINED_FUNCTION_233_5();
    OUTLINED_FUNCTION_49_4(v79);
    OUTLINED_FUNCTION_115();

    return v85(v80, v81, v82, v83, v84, v85, v86, v87, a9, a10, v101, v102, a13, a14, a15, a16);
  }
}

uint64_t OmniSearchService.globalSearch(query:sources:options:)()
{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  v5 = v4;
  *(v1 + 320) = v6;
  *(v1 + 328) = v0;
  v7 = type metadata accessor for OSSignpostID();
  *(v1 + 336) = v7;
  OUTLINED_FUNCTION_21(v7);
  *(v1 + 344) = v8;
  *(v1 + 352) = OUTLINED_FUNCTION_160();
  v9 = swift_task_alloc();
  v10 = *v5;
  *(v1 + 360) = v9;
  *(v1 + 368) = v10;
  memcpy((v1 + 128), v3, 0x65uLL);
  v11 = *(v3 + 101);
  *(v1 + 121) = v11;
  *(v1 + 416) = v11;
  *(v1 + 122) = *(v3 + 102);
  *(v1 + 124) = *(v3 + 104);
  v12 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v12);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 400) = v5;
  *(v3 + 408) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v6);
}

{
  OUTLINED_FUNCTION_78();
  $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

  OUTLINED_FUNCTION_127();

  return v0();
}

uint64_t OmniSearchService.globalSearch(query:sources:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  if (*(v22 + 121) & 1) != 0 || (v23 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0), (static NSUserDefaults.skipGlobalSearch.getter(v23)))
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v24, static Logging.search);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_11(v26))
    {
      OUTLINED_FUNCTION_51_5();
      v27 = swift_slowAlloc();
      OUTLINED_FUNCTION_81_4(v27);
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v28, v29, v30, v31, v32, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

LABEL_8:

    OUTLINED_FUNCTION_3_13();
    OUTLINED_FUNCTION_83_0();

    return v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
  }

  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v42 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v42, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v43 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_190_6())
  {
    OUTLINED_FUNCTION_51_5();
    v44 = swift_slowAlloc();
    OUTLINED_FUNCTION_157_0(v44);
    v45 = OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_193(&dword_25D85C000, v46, v47, v45, "OmniSearchService.globalSearch", "");
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v48 = OUTLINED_FUNCTION_9_27();
  v49(v48);
  v50 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v50);
  OUTLINED_FUNCTION_45_4();
  *(v22 + 376) = OSSignpostIntervalState.init(id:isOpen:)();
  v51 = OUTLINED_FUNCTION_67_19();
  v52(v51);
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v53, static Logging.search);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v54, v55))
  {
    OUTLINED_FUNCTION_51_5();
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_25D85C000, v54, v55, "Starting global search...", v56, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v57 = *(v22 + 368);

  if ((v57 & 2) == 0)
  {
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_77_5(v59))
    {
      OUTLINED_FUNCTION_51_5();
      v60 = swift_slowAlloc();
      OUTLINED_FUNCTION_157_0(v60);
      OUTLINED_FUNCTION_56_4();
      _os_log_impl(v61, v62, v63, v64, v65, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

    goto LABEL_8;
  }

  v66 = v57 & 2;
  v67 = *(v22 + 328);
  v68 = *(v67 + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_searchServices);
  v69 = *(v68 + 16);
  if (v69)
  {
    v91 = v57 & 2;
    v70 = (v22 + 416);
    v71 = v68 + 32;
    v72 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of ChatMessageRecord(v71, v22 + 232);
      OUTLINED_FUNCTION_70_15((v22 + 232));
      v73 = OUTLINED_FUNCTION_63_21();
      v74(v73);
      if ((a11 & 2) != 0)
      {
        outlined init with copy of ChatMessageRecord(v22 + 232, v22 + 272);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v72 = v77;
        }

        v76 = *(v72 + 16);
        v75 = *(v72 + 24);
        if (v76 >= v75 >> 1)
        {
          OUTLINED_FUNCTION_22_5(v75);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v72 = v78;
        }

        *(v72 + 16) = v76 + 1;
        outlined init with take of ResponseOverrideMatcherProtocol((v22 + 272), v72 + 40 * v76 + 32);
      }

      __swift_destroy_boxed_opaque_existential_1Tm((v22 + 232));
      v71 += 40;
      --v69;
    }

    while (v69);
    v67 = *(v22 + 328);
    v66 = v91;
  }

  else
  {
    v72 = MEMORY[0x277D84F90];
    v70 = (v22 + 121);
  }

  v79 = *v70;
  *(v22 + 384) = v72;
  *(v22 + 312) = v66;
  memcpy((v22 + 16), (v22 + 128), 0x65uLL);
  *(v22 + 117) = v79;
  *(v22 + 120) = *(v22 + 124);
  *(v22 + 118) = *(v22 + 122);
  v90 = (*MEMORY[0x277D85000] & *v67) + 296;
  v80 = *((*MEMORY[0x277D85000] & *v67) + 0x128);
  v92 = v80 + *v80;
  v81 = swift_task_alloc();
  *(v22 + 392) = v81;
  *v81 = v22;
  v81[1] = OmniSearchService.globalSearch(query:sources:options:);
  OUTLINED_FUNCTION_49_4(*(v22 + 320));
  OUTLINED_FUNCTION_83_0();

  return v87(v82, v83, v84, v85, v86, v87, v88, v89, v90, v92, a11, a12, a13, a14);
}

uint64_t OmniSearchService.globalSearch(query:sources:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_121_8();
  OUTLINED_FUNCTION_159();
  v42 = v12;
  v13 = *(v12 + 400);
  OUTLINED_FUNCTION_163_8();
  v16 = v15 & v14;
  v18 = (63 - v17) >> 6;

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  do
  {
    while (1)
    {
      if (!v16)
      {
        while (1)
        {
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v22 >= v18)
          {
            goto LABEL_21;
          }

          v16 = *(v13 + 64 + 8 * v22);
          ++v20;
          if (v16)
          {
            v20 = v22;
            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }

LABEL_7:
      v23 = *(*(v13 + 56) + ((v20 << 10) | (16 * __clz(__rbit64(v16)))));
      v24 = *(v23 + 16);
      v25 = *(v21 + 16);
      v26 = v25 + v24;
      if (__OFADD__(v25, v24))
      {
        goto LABEL_25;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v26 > *(v21 + 24) >> 1)
      {
        if (v25 <= v26)
        {
          v28 = v25 + v24;
        }

        else
        {
          v28 = v25;
        }

        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v28, 1, v21);
        v21 = v29;
      }

      v16 &= v16 - 1;
      if (!*(v23 + 16))
      {
        break;
      }

      v30 = (*(v21 + 24) >> 1) - *(v21 + 16);
      result = type metadata accessor for SearchResult(0);
      if (v30 < v24)
      {
        goto LABEL_26;
      }

      swift_arrayInitWithCopy();

      if (v24)
      {
        v31 = *(v21 + 16);
        v32 = __OFADD__(v31, v24);
        v33 = v31 + v24;
        if (v32)
        {
          goto LABEL_27;
        }

        *(v21 + 16) = v33;
      }
    }
  }

  while (!v24);
  __break(1u);
LABEL_21:

  OmniSearchService.handleGlobalResults(globalResults:)();
  OUTLINED_FUNCTION_112_2();

  $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

  OUTLINED_FUNCTION_31_27();
  OUTLINED_FUNCTION_63_14();

  return v36(v34, v35, v36, v37, v38, v39, v40, v41, v42, a10, a11, a12);
}

uint64_t OmniSearchService.entitySearch(_:rewrittenQuery:allowedTypes:)()
{
  OUTLINED_FUNCTION_48();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[4] = v5;
  v1[5] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  OUTLINED_FUNCTION_114(v7);
  v1[10] = OUTLINED_FUNCTION_199();
  v8 = type metadata accessor for TypeIdentifier();
  v1[11] = v8;
  OUTLINED_FUNCTION_21(v8);
  v1[12] = v9;
  v1[13] = OUTLINED_FUNCTION_199();
  Entity = type metadata accessor for StructuredQueryEntity(0);
  v1[14] = Entity;
  OUTLINED_FUNCTION_114(Entity);
  v1[15] = OUTLINED_FUNCTION_199();
  v11 = type metadata accessor for OSSignpostID();
  v1[16] = v11;
  OUTLINED_FUNCTION_21(v11);
  v1[17] = v12;
  v1[18] = OUTLINED_FUNCTION_160();
  v1[19] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v13);
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_51_19();
  v4 = v3;
  OUTLINED_FUNCTION_19_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  v4[23] = v0;

  if (v0)
  {
    outlined destroy of EagerResolutionService?(v4[10], &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  }

  else
  {
    v8 = v4[10];
    v4[24] = v1;
    outlined destroy of EagerResolutionService?(v8, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9);
}

{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_133();
  v1 = (*(v0 + 128))();

  OUTLINED_FUNCTION_5_55();
  outlined destroy of UserQuery();
  $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

  OUTLINED_FUNCTION_62();

  return v2(v1);
}

{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_5_55();
  outlined destroy of UserQuery();
  $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_204();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t OmniSearchService.entitySearch(_:rewrittenQuery:allowedTypes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_190();
  if (one-time initialization token for searchSignposter != -1)
  {
LABEL_38:
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v17 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v17, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v18 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_190_6())
  {
    OUTLINED_FUNCTION_51_5();
    v19 = swift_slowAlloc();
    OUTLINED_FUNCTION_157_0(v19);
    v20 = OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_193(&dword_25D85C000, v21, v22, v20, "OmniSearchService.entitySearch", "");
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v23 = OUTLINED_FUNCTION_9_27();
  v24(v23);
  v25 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v25);
  OUTLINED_FUNCTION_45_4();
  v16[20] = OSSignpostIntervalState.init(id:isOpen:)();
  v26 = OUTLINED_FUNCTION_67_19();
  v27(v26);
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v28 = v16[7];
  v29 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v29, static Logging.search);

  v30 = Logger.logObject.getter();
  static os_log_type_t.info.getter();

  if (OUTLINED_FUNCTION_259())
  {
    v31 = v16[6];
    v32 = OUTLINED_FUNCTION_49_0();
    a13 = swift_slowAlloc();
    *v32 = 136315650;
    *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v32 + 12) = 2080;

    OUTLINED_FUNCTION_241_0();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v32 + 14) = v33;
    *(v32 + 22) = 2080;
    lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(&lazy protocol witness table cache variable for type TypeIdentifier and conformance TypeIdentifier, MEMORY[0x277D72D58], MEMORY[0x277D72D68]);
    Set.description.getter();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_169_9();

    *(v32 + 24) = v31;
    OUTLINED_FUNCTION_56_4();
    _os_log_impl(v34, v35, v36, v37, v38, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  if (v16[7])
  {
    v39 = v16 + 6;
    v40 = v28;
  }

  else
  {
    v40 = v16[5];
    v39 = v16 + 4;
  }

  v41 = *v39;
  v42 = v16[12];
  v43 = v16[8];

  StructuredQueryEntity.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_25DBC8180;
  *(v44 + 32) = v41;
  *(v44 + 40) = v40;
  v16[2] = v44;
  EntityProperty.wrappedValue.setter();
  v45 = v43 + 56;
  OUTLINED_FUNCTION_163_8();
  v48 = v47 & v46;
  v50 = (63 - v49) >> 6;
  v87 = v43;
  v89 = v42;
  v85 = v42 + 8;
  v86 = v42 + 16;

  v51 = 0;
  v52 = MEMORY[0x277D84F90];
  do
  {
    while (1)
    {
      v16[21] = v52;
      if (!v48)
      {
        while (1)
        {
          v53 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
            break;
          }

          if (v53 >= v50)
          {
            goto LABEL_31;
          }

          v48 = *(v45 + 8 * v53);
          ++v51;
          if (v48)
          {
            v51 = v53;
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

LABEL_17:
      v54 = v16[13];
      v55 = v16[11];
      (*(v89 + 16))(v54, *(v87 + 48) + *(v89 + 72) * (__clz(__rbit64(v48)) | (v51 << 6)), v55);
      v56 = static SearchEntityTypeIdentifier.make(identifier:)(v54);
      (*(v89 + 8))(v54, v55);
      v57 = *(v56 + 16);
      v58 = *(v52 + 16);
      v59 = v58 + v57;
      if (__OFADD__(v58, v57))
      {
        goto LABEL_35;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v59 > *(v52 + 24) >> 1)
      {
        if (v58 <= v59)
        {
          v61 = v58 + v57;
        }

        else
        {
          v61 = v58;
        }

        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v61, 1, v52);
        v52 = v62;
      }

      v48 &= v48 - 1;
      if (!*(v56 + 16))
      {
        break;
      }

      if ((*(v52 + 24) >> 1) - *(v52 + 16) < v57)
      {
        goto LABEL_36;
      }

      swift_arrayInitWithCopy();

      if (v57)
      {
        v63 = *(v52 + 16);
        v64 = __OFADD__(v63, v57);
        v65 = v63 + v57;
        if (v64)
        {
          goto LABEL_37;
        }

        *(v52 + 16) = v65;
      }
    }
  }

  while (!v57);
  __break(1u);
LABEL_31:
  v67 = v16[14];
  v66 = v16[15];
  v68 = v16[10];

  outlined init with copy of UserQuery(v66, v68);
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v67);
  v16[3] = 3;
  OUTLINED_FUNCTION_154_4();
  v88 = v72 + 216;
  v90 = *(v72 + 216) + **(v72 + 216);
  v73 = swift_task_alloc();
  v16[22] = v73;
  *v73 = v16;
  v73[1] = OmniSearchService.entitySearch(_:rewrittenQuery:allowedTypes:);
  OUTLINED_FUNCTION_49_4(v16[4]);
  OUTLINED_FUNCTION_115();

  return v82(v74, v75, v76, v77, v78, v79, v80, v81, v85, v86, v88, v90, a13, a14, a15, a16);
}

uint64_t OmniSearchService.composeAnswer(query:requestedProperties:results:options:runAnswerSynthesis:ecrResults:locale:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  *(v1 + 416) = v4;
  *(v1 + 424) = v0;
  *(v1 + 400) = v2;
  *(v1 + 408) = v5;
  *(v1 + 233) = v6;
  *(v1 + 384) = v7;
  *(v1 + 392) = v8;
  *(v1 + 376) = v9;
  v10 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError();
  *(v1 + 432) = v10;
  OUTLINED_FUNCTION_21(v10);
  *(v1 + 440) = v11;
  *(v1 + 448) = OUTLINED_FUNCTION_199();
  v12 = type metadata accessor for ResultsDialog(0);
  OUTLINED_FUNCTION_114(v12);
  *(v1 + 456) = OUTLINED_FUNCTION_160();
  *(v1 + 464) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  OUTLINED_FUNCTION_114(v13);
  *(v1 + 472) = OUTLINED_FUNCTION_199();
  v14 = type metadata accessor for AnswerSynthesisRequestContext(0);
  OUTLINED_FUNCTION_114(v14);
  *(v1 + 480) = OUTLINED_FUNCTION_199();
  v15 = type metadata accessor for Locale();
  *(v1 + 488) = v15;
  OUTLINED_FUNCTION_21(v15);
  *(v1 + 496) = v16;
  *(v1 + 504) = OUTLINED_FUNCTION_160();
  *(v1 + 512) = swift_task_alloc();
  v17 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult();
  *(v1 + 520) = v17;
  OUTLINED_FUNCTION_21(v17);
  *(v1 + 528) = v18;
  *(v1 + 536) = OUTLINED_FUNCTION_199();
  v19 = type metadata accessor for OSSignpostID();
  *(v1 + 544) = v19;
  OUTLINED_FUNCTION_21(v19);
  *(v1 + 552) = v20;
  *(v1 + 560) = OUTLINED_FUNCTION_160();
  *(v1 + 568) = swift_task_alloc();
  *(v1 + 272) = *(v3 + 32);
  *(v1 + 769) = *(v3 + 40);
  *(v1 + 121) = *(v3 + 41);
  *(v1 + 124) = *(v3 + 44);
  v21 = *(v3 + 72);
  *(v1 + 592) = *(v3 + 64);
  v22 = *(v3 + 16);
  *(v1 + 240) = *v3;
  *(v1 + 256) = v22;
  *(v1 + 576) = *(v3 + 48);
  *(v1 + 600) = v21;
  *(v1 + 608) = *(v3 + 80);
  *(v1 + 770) = *(v3 + 96);
  v23 = *(v3 + 97);
  *(v1 + 771) = v23;
  *(v1 + 768) = v23;
  *(v1 + 234) = *(v3 + 98);
  v24 = *(v3 + 100);
  *(v1 + 773) = v24;
  *(v1 + 772) = v24;
  *(v1 + 236) = *(v3 + 101);
  v25 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v25);
}

{
  v1 = *(v0 + 773);
  v2 = *(v0 + 771);
  v3 = *(*(v0 + 392) + 16);
  *(v0 + 624) = v3;
  if (!v3)
  {
    v47 = *(v0 + 400);
    v98 = *v47;
    v100 = v47[1];
    v101 = *(v47 + 4);
    LOBYTE(v102) = *(v0 + 769);
    *(&v102 + 1) = *(v47 + 41);
    HIDWORD(v102) = *(v47 + 11);
    v103 = *(v0 + 576);
    v48 = OmniSearchOptions.onScreenText.getter();
    if (!v48)
    {
      goto LABEL_44;
    }

    v49 = *(v48 + 16);

    if (!v49)
    {
      goto LABEL_44;
    }
  }

  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v4 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v4, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v5 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_190_6())
  {
    OUTLINED_FUNCTION_51_5();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_157_0(v6);
    v7 = OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_193(&dword_25D85C000, v8, v9, v7, "OmniSearchService.composeAnswer", "");
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  OUTLINED_FUNCTION_179_1();
  v10();
  v11 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v11);
  OUTLINED_FUNCTION_45_4();
  *(v0 + 632) = OSSignpostIntervalState.init(id:isOpen:)();
  v12 = OUTLINED_FUNCTION_54_0();
  v13(v12);
  OmniSearchService.createAnswerSynthesisResultForMetrics()();
  if ((v2 & 1) == 0)
  {
    if (*(v0 + 233) & 1) != 0 || (v1 & 1) != 0 || (v40 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0), (static NSUserDefaults.forceContentHydration.getter(v40)))
    {
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_2_0(&one-time initialization token for shared);
      }

      v41 = *(v0 + 424);
      OUTLINED_FUNCTION_133();
      (*(v42 + 192))();
      outlined init with copy of ChatMessageRecord(v41 + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_answerSynthesisController, v0 + 280);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch33AnswerSynthesisControllerProtocol_pMd, &_s10OmniSearch33AnswerSynthesisControllerProtocol_pMR);
      OUTLINED_FUNCTION_47_1();
      type metadata accessor for AnswerSynthesisController();
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_133();
        (*(v43 + 536))();
      }

      __swift_project_boxed_opaque_existential_1((*(v0 + 424) + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_resultHydrator), *(*(v0 + 424) + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_resultHydrator + 24));
      OUTLINED_FUNCTION_28_0();
      v44 = swift_task_alloc();
      *(v0 + 640) = v44;
      *v44 = v0;
      v44[1] = OmniSearchService.composeAnswer(query:requestedProperties:results:options:runAnswerSynthesis:ecrResults:locale:);
      OUTLINED_FUNCTION_49_4(*(v0 + 392));
      OUTLINED_FUNCTION_156_7();

      __asm { BRAA            X6, X16 }
    }

    goto LABEL_27;
  }

  *(v0 + 664) = MEMORY[0x277D84F90];
  if (*(v0 + 233) != 1)
  {
LABEL_27:
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
    }

    v50 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v50, static Logging.answerSynthesis);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_16_11(v52))
    {
      OUTLINED_FUNCTION_51_5();
      v53 = swift_slowAlloc();
      OUTLINED_FUNCTION_81_4(v53);
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v54, v55, v56, v57, v58, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v59 = OUTLINED_FUNCTION_67_19();
    v60(v59);
    $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();
    goto LABEL_43;
  }

  v14 = *(v0 + 416);
  OUTLINED_FUNCTION_133();
  v16 = (*(v15 + 80))(1);
  OmniSearchService.allowASRG(for:)(v14, v17, v18, v19, v20, v21, v22, v23, v92, v94, v95, v96, v98, *(&v98 + 1), v100, *(&v100 + 1), v101, v102, v103, *(&v103 + 1));
  if ((v24 & 1) == 0 && (v16 & 1) == 0)
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logging.answerSynthesis);
    v26 = OUTLINED_FUNCTION_88();
    v27(v26);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 536);
    v32 = *(v0 + 528);
    v33 = *(v0 + 520);
    v34 = *(v0 + 504);
    if (v30)
    {
      v97 = *(v0 + 520);
      v35 = swift_slowAlloc();
      v99 = OUTLINED_FUNCTION_49_0();
      *v35 = 136315394;
      OUTLINED_FUNCTION_17_41();
      lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(v36, v37, MEMORY[0x277CC97B0]);
      dispatch thunk of CustomStringConvertible.description.getter();
      v38 = OUTLINED_FUNCTION_141_0();
      v39(v38);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_112_2();

      *(v35 + 4) = v34;
      *(v35 + 12) = 1024;
      *(v35 + 14) = 0;
      _os_log_impl(&dword_25D85C000, v28, v29, "Skip running Answer Synthesis for locale: %s, allowASRGOverride is: %{BOOL}d", v35, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v99);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();

      (*(v32 + 8))(v31, v97);
    }

    else
    {

      v82 = OUTLINED_FUNCTION_141_0();
      v83(v82);
      (*(v32 + 8))(v31, v33);
    }

    $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();
LABEL_43:

LABEL_44:

    OUTLINED_FUNCTION_201_7();
    OUTLINED_FUNCTION_156_7();

    __asm { BRAA            X4, X16 }
  }

  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
  }

  v61 = type metadata accessor for Logger();
  *(v0 + 672) = v61;
  v62 = __swift_project_value_buffer(v61, static Logging.answerSynthesis);
  v63 = OUTLINED_FUNCTION_88();
  v64(v63);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.info.getter();
  v67 = OUTLINED_FUNCTION_32_9();
  v69 = os_log_type_enabled(v67, v68);
  v70 = *(v0 + 512);
  v71 = *(v0 + 488);
  v72 = *(v0 + 496);
  if (v69)
  {
    OUTLINED_FUNCTION_51_0();
    OUTLINED_FUNCTION_11_26();
    *v62 = 136315138;
    OUTLINED_FUNCTION_17_41();
    lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(v73, v74, MEMORY[0x277CC97B0]);
    dispatch thunk of CustomStringConvertible.description.getter();
    (*(v72 + 8))(v70, v71);
    OUTLINED_FUNCTION_158();
    v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v62 + 4) = v75;
    OUTLINED_FUNCTION_165_6(&dword_25D85C000, v65, v66, "Begin running Answer Synthesis for locale: %s", v93);
    OUTLINED_FUNCTION_54_26();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {

    (*(v72 + 8))(v70, v71);
  }

  if (!*(v0 + 608))
  {
    switch(*(v0 + 769))
    {
      case 4:
        break;
      default:
        OUTLINED_FUNCTION_216_5();
        OUTLINED_FUNCTION_17();
        (*(v86 + 104))(1, v65);
        break;
    }

    v87 = OUTLINED_FUNCTION_214_4();
    OUTLINED_FUNCTION_135_9(v87);
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    *(v0 + 688) = v88;
    *v88 = v89;
    OUTLINED_FUNCTION_34_32(v88);
    OUTLINED_FUNCTION_156_7();

    __asm { BRAA            X5, X16 }
  }

  swift_getObjectType();
  v76 = swift_task_alloc();
  *(v0 + 680) = v76;
  *v76 = v0;
  OUTLINED_FUNCTION_117_13(v76);
  OUTLINED_FUNCTION_49_4(MEMORY[0x277D84F90]);
  OUTLINED_FUNCTION_156_7();

  return SearchToolProgressReporter.answerSynthesisStarted(with:)(v77, v78, v79);
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_51_19();
  v4 = v3;
  OUTLINED_FUNCTION_19_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v4 + 648) = v0;

  if (!v0)
  {
    *(v4 + 656) = v1;
  }

  OUTLINED_FUNCTION_20_4();

  return MEMORY[0x2822009F8](v8);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v3);
}

{
  OUTLINED_FUNCTION_72();
  switch(*(v1 + 769))
  {
    case 4:
      break;
    default:
      OUTLINED_FUNCTION_216_5();
      OUTLINED_FUNCTION_17();
      (*(v2 + 104))(1, v0);
      break;
  }

  v3 = OUTLINED_FUNCTION_214_4();
  OUTLINED_FUNCTION_135_9(v3);
  v9 = (*((*MEMORY[0x277D85000] & v4) + 0x140) + **((*MEMORY[0x277D85000] & v4) + 0x140));
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v1 + 688) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_34_32(v5);

  return v9(v7);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 472);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  outlined destroy of EagerResolutionService?(v2, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  v5 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v5);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  *(v3 + 712) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 728) = v4;
  *(v2 + 736) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v5);
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 744);
  OUTLINED_FUNCTION_147_2(*(v0 + 752) + 272, v0 + 344);
  MessageAccumulationContext.record(_:from:)(v1, 2);
  swift_endAccess();
  v2 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v2);
}

{
  OUTLINED_FUNCTION_217_6();
  OUTLINED_FUNCTION_75();
  (*(v0[66] + 8))(v0[67], v0[65]);
  v1 = v0[81];
  v0[93] = v1;
  v2 = v1;
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v3, static Logging.search);
  v4 = v1;
  v5 = Logger.logObject.getter();
  static os_log_type_t.error.getter();

  if (OUTLINED_FUNCTION_259())
  {
    OUTLINED_FUNCTION_51_0();
    v6 = OUTLINED_FUNCTION_152_0();
    OUTLINED_FUNCTION_271_2(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_57_16(v7);
    OUTLINED_FUNCTION_56_4();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    outlined destroy of EagerResolutionService?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_2_0(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_176_7();
  OUTLINED_FUNCTION_133();
  (*(v13 + 320))(v1);
  OUTLINED_FUNCTION_133();
  v14 = OUTLINED_FUNCTION_116_1();
  v15(v14);
  v16 = OUTLINED_FUNCTION_63_0();
  v18 = v17(v16);
  if (one-time initialization token for shared != -1)
  {
    v18 = OUTLINED_FUNCTION_5_0(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_39_26(v18, static ContextManager.shared);
  OUTLINED_FUNCTION_218_6();

  return MEMORY[0x2822009F8](v19);
}

{
  OUTLINED_FUNCTION_48();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_5_0(&one-time initialization token for shared);
  }

  *(v0 + 760) = static ContextManager.shared;

  return MEMORY[0x2822009F8](OmniSearchService.composeAnswer(query:requestedProperties:results:options:runAnswerSynthesis:ecrResults:locale:));
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 712);
  OUTLINED_FUNCTION_147_2(*(v0 + 760) + 272, v0 + 320);
  MessageAccumulationContext.record(_:from:)(v1, 2);
  swift_endAccess();
  v2 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v2);
}

{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_2_0(&one-time initialization token for shared);
  }

  v1 = v0[89];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[66];
  v31 = v0[65];
  v32 = v0[67];
  v5 = v0[56];
  OUTLINED_FUNCTION_133();
  (*(v6 + 320))(v1);
  OUTLINED_FUNCTION_133();
  (*(v7 + 208))(v3, v2, v5);
  v8 = OUTLINED_FUNCTION_241_0();
  v9(v8);
  swift_willThrow();
  OUTLINED_FUNCTION_48_17();
  outlined destroy of UserQuery();
  (*(v4 + 8))(v32, v31);
  v10 = v0[89];
  v0[93] = v10;
  v11 = v10;
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v12, static Logging.search);
  v13 = v10;
  v14 = Logger.logObject.getter();
  static os_log_type_t.error.getter();

  if (OUTLINED_FUNCTION_259())
  {
    OUTLINED_FUNCTION_51_0();
    v15 = OUTLINED_FUNCTION_152_0();
    OUTLINED_FUNCTION_271_2(5.7779e-34);
    v16 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_57_16(v16);
    OUTLINED_FUNCTION_56_4();
    _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
    outlined destroy of EagerResolutionService?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_2_0(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_176_7();
  OUTLINED_FUNCTION_133();
  (*(v22 + 320))(v10);
  OUTLINED_FUNCTION_133();
  v23 = OUTLINED_FUNCTION_116_1();
  v24(v23);
  v25 = OUTLINED_FUNCTION_63_0();
  v27 = v26(v25);
  if (one-time initialization token for shared != -1)
  {
    v27 = OUTLINED_FUNCTION_5_0(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_39_26(v27, static ContextManager.shared);
  OUTLINED_FUNCTION_83_0();

  return MEMORY[0x2822009F8](v28);
}

{
  OUTLINED_FUNCTION_217_6();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_48_17();
  outlined destroy of UserQuery();
  v1 = OUTLINED_FUNCTION_107();
  v2(v1);
  OUTLINED_FUNCTION_119_10();
  outlined destroy of UserQuery();
  v3 = *(v0 + 736);
  *(v0 + 744) = v3;
  v4 = v3;
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v5, static Logging.search);
  v6 = v3;
  v7 = Logger.logObject.getter();
  static os_log_type_t.error.getter();

  if (OUTLINED_FUNCTION_259())
  {
    OUTLINED_FUNCTION_51_0();
    v8 = OUTLINED_FUNCTION_152_0();
    OUTLINED_FUNCTION_271_2(5.7779e-34);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_57_16(v9);
    OUTLINED_FUNCTION_56_4();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    outlined destroy of EagerResolutionService?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_2_0(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_176_7();
  OUTLINED_FUNCTION_133();
  (*(v15 + 320))(v3);
  OUTLINED_FUNCTION_133();
  v16 = OUTLINED_FUNCTION_116_1();
  v17(v16);
  v18 = OUTLINED_FUNCTION_63_0();
  v20 = v19(v18);
  if (one-time initialization token for shared != -1)
  {
    v20 = OUTLINED_FUNCTION_5_0(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_39_26(v20, static ContextManager.shared);
  OUTLINED_FUNCTION_218_6();

  return MEMORY[0x2822009F8](v21);
}

void OmniSearchService.composeAnswer(query:requestedProperties:results:options:runAnswerSynthesis:ecrResults:locale:)()
{
  v1 = *(v0 + 236);
  v2 = *(v0 + 234);
  v3 = *(v0 + 770);
  v4 = *(v0 + 616);
  v5 = *(v0 + 608);
  v12 = *(v0 + 576);
  v13 = *(v0 + 592);
  v6 = *(v0 + 769);
  __swift_project_boxed_opaque_existential_1((*(v0 + 424) + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_answerSynthesisController), *(*(v0 + 424) + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_answerSynthesisController + 24));
  v7 = *(v0 + 256);
  *(v0 + 16) = *(v0 + 240);
  *(v0 + 32) = v7;
  *(v0 + 48) = *(v0 + 272);
  *(v0 + 56) = v6;
  *(v0 + 57) = *(v0 + 121);
  *(v0 + 60) = *(v0 + 124);
  *(v0 + 64) = v12;
  *(v0 + 80) = v13;
  *(v0 + 96) = v5;
  *(v0 + 104) = v4;
  *(v0 + 112) = v3;
  *(v0 + 113) = *(v0 + 768);
  *(v0 + 114) = v2;
  *(v0 + 116) = *(v0 + 772);
  *(v0 + 117) = v1;
  *(v0 + 696) = OmniSearchOptions.onScreenText.getter();
  OUTLINED_FUNCTION_28_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v0 + 704) = v8;
  *v8 = v9;
  v8[1] = OmniSearchService.composeAnswer(query:requestedProperties:results:options:runAnswerSynthesis:ecrResults:locale:);
  OUTLINED_FUNCTION_15_6();

  __asm { BRAA            X8, X16 }
}

{
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_190();
  v1 = *(v0 + 236);
  v2 = *(v0 + 234);
  v3 = *(v0 + 770);
  v4 = *(v0 + 616);
  v5 = *(v0 + 608);
  v11 = *(v0 + 576);
  v12 = *(v0 + 592);
  v6 = *(v0 + 769);
  v7 = *(v0 + 424);
  outlined init with take of UserQuery(*(v0 + 456), *(v0 + 464));
  __swift_project_boxed_opaque_existential_1((v7 + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_answerResolver), *(v7 + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_answerResolver + 24));
  v8 = *(v0 + 256);
  *(v0 + 128) = *(v0 + 240);
  *(v0 + 144) = v8;
  *(v0 + 160) = *(v0 + 272);
  *(v0 + 168) = v6;
  *(v0 + 169) = *(v0 + 121);
  *(v0 + 172) = *(v0 + 124);
  *(v0 + 176) = v11;
  *(v0 + 192) = v12;
  *(v0 + 208) = v5;
  *(v0 + 216) = v4;
  *(v0 + 224) = v3;
  *(v0 + 225) = *(v0 + 768);
  *(v0 + 226) = v2;
  *(v0 + 228) = *(v0 + 772);
  *(v0 + 229) = v1;
  v9 = swift_task_alloc();
  *(v0 + 720) = v9;
  *v9 = v0;
  v9[1] = OmniSearchService.composeAnswer(query:requestedProperties:results:options:runAnswerSynthesis:ecrResults:locale:);
  OUTLINED_FUNCTION_49_4(*(v0 + 376));
  OUTLINED_FUNCTION_115();

  AnswerResolvable.resolve(query:options:results:assistantLocale:)();
}

uint64_t OmniSearchService.composeAnswer(query:requestedProperties:results:options:runAnswerSynthesis:ecrResults:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  v15 = one-time initialization token for fedSearch;

  if (v15 != -1)
  {
    OUTLINED_FUNCTION_131_9(&one-time initialization token for fedSearch);
  }

  __swift_project_value_buffer(v14[84], static Logging.fedSearch);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  v18 = OUTLINED_FUNCTION_16_11(v17);
  v19 = v14[91];
  if (v18)
  {
    v20 = v14[78];
    v21 = OUTLINED_FUNCTION_90_1();
    *v21 = 134218240;
    v22 = *(v19 + 16);

    *(v21 + 4) = v22;

    *(v21 + 12) = 2048;
    *(v21 + 14) = v20;

    OUTLINED_FUNCTION_200_5();
    _os_log_impl(v23, v24, v25, v26, v27, 0x16u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v42 = v14[91];
  v28 = v14[58];
  OUTLINED_FUNCTION_48_17();
  outlined destroy of UserQuery();
  v29 = OUTLINED_FUNCTION_32_0();
  v30(v29);
  v40 = *(v28 + 16);
  v41 = *(v28 + 8);
  outlined copy of ResultsDialog.RenderOption(v41, v40);
  OUTLINED_FUNCTION_119_10();
  outlined destroy of UserQuery();
  $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

  OUTLINED_FUNCTION_201_7();
  OUTLINED_FUNCTION_83_0();

  return v35(v31, v32, v33, v34, v35, v36, v37, v38, v40, v41, v42, a12, a13, a14);
}

uint64_t OmniSearchService.composeAnswer(query:requestedProperties:results:options:runAnswerSynthesis:ecrResults:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_121_8();
  OUTLINED_FUNCTION_159();
  v13 = *(v12 + 744);

  $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

  OUTLINED_FUNCTION_201_7();
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_63_14();

  return v18(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t OmniSearchService.createAnswerSynthesisResultForMetrics()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF26AnswerSynthesisPerfMetricsVSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF26AnswerSynthesisPerfMetricsVSgMR);
  OUTLINED_FUNCTION_114(v0);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF26AnswerSynthesisDataMetricsVSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF26AnswerSynthesisDataMetricsVSgMR);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.init()();
  IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics.init()();
  v4 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics();
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.dataMetrics.setter();
  v8 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.dataMetrics.modify();
  if (!__swift_getEnumTagSinglePayload(v9, 1, v4))
  {
    MEMORY[0x25F89E590](1);
  }

  v8(v15, 0);
  IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics.init()();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics();
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  return IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.perfMetrics.setter();
}

uint64_t static OmniSearchService.parseWithMemoryCreationQU(_:originatorPID:modelType:jsonParse:personNames:petNames:locations:currentTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_48();
  *(v11 + 104) = a10;
  *(v11 + 112) = a11;
  *(v11 + 88) = a9;
  *(v11 + 72) = v12;
  *(v11 + 80) = v13;
  *(v11 + 56) = v14;
  *(v11 + 64) = v15;
  *(v11 + 160) = v16;
  *(v11 + 40) = v17;
  *(v11 + 48) = v18;
  *(v11 + 32) = v19;
  v20 = type metadata accessor for MemoryCreationQUParseSortOrder();
  *(v11 + 120) = v20;
  OUTLINED_FUNCTION_21(v20);
  *(v11 + 128) = v21;
  *(v11 + 136) = OUTLINED_FUNCTION_199();
  v22 = OUTLINED_FUNCTION_29();
  return OUTLINED_FUNCTION_266_3(v22);
}

void static OmniSearchService.parseWithMemoryCreationQU(_:originatorPID:modelType:jsonParse:personNames:petNames:locations:currentTime:)()
{
  OUTLINED_FUNCTION_159();
  type metadata accessor for FeatureFlagService();
  swift_initStackObject();
  if (FeatureFlagService.isEnabled(_:)(OmniSearch_FeatureFlagService_FeatureFlag_photosMemoryCreation))
  {
    if (v0[9])
    {
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_129_13(&one-time initialization token for shared);
      }

      OUTLINED_FUNCTION_133();
      v1 = swift_task_alloc();
      v0[18] = v1;
      *v1 = v0;
      v1[1] = static OmniSearchService.parseWithMemoryCreationQU(_:originatorPID:modelType:jsonParse:personNames:petNames:locations:currentTime:);
      OUTLINED_FUNCTION_49_4(v0[4]);
      OUTLINED_FUNCTION_258_4();

      __asm { BRAA            X4, X16 }
    }

    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_129_13(&one-time initialization token for shared);
    }

    v23 = swift_task_alloc();
    v0[19] = v23;
    *v23 = v0;
    v23[1] = static OmniSearchService.parseWithMemoryCreationQU(_:originatorPID:modelType:jsonParse:personNames:petNames:locations:currentTime:);
    OUTLINED_FUNCTION_49_4(v0[4]);
    OUTLINED_FUNCTION_136_7();

    __asm { BRAA            X8, X16 }
  }

  if (one-time initialization token for memoryCreationQU != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v4, static Logging.memoryCreationQU);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_16_11(v6))
  {
    OUTLINED_FUNCTION_51_5();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_81_4(v7);
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v14 = v0[16];
  v13 = v0[17];
  v15 = v0[15];

  (*(v14 + 104))(v13, *MEMORY[0x277D374B8], v15);
  v16 = type metadata accessor for MemoryCreationQUParse();
  OUTLINED_FUNCTION_170(v16);
  OUTLINED_FUNCTION_37_3();

  MemoryCreationQUParse.init(query:attributes:isTrip:isOpenEndedTimeRange:sortOrder:)();
  OUTLINED_FUNCTION_42_2();
  v17 = type metadata accessor for MemoryCreationQUPerformanceMetrics();
  OUTLINED_FUNCTION_170(v17);
  MemoryCreationQUPerformanceMetrics.init()();
  OUTLINED_FUNCTION_47_1();
  v18 = objc_allocWithZone(type metadata accessor for LLMQUParse());
  v19 = OUTLINED_FUNCTION_94();
  LLMQUParse.init(parse:performanceMetrics:)(v19, v20);

  OUTLINED_FUNCTION_31_27();
  OUTLINED_FUNCTION_258_4();

  __asm { BRAA            X2, X16 }
}

uint64_t static OmniSearchService.parseWithMemoryCreationQU(_:originatorPID:modelType:jsonParse:personNames:petNames:locations:currentTime:)()
{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t static OmniSearchService.parseWithMemoryCreationQU(_:originatorPID:modelType:jsonParse:personNames:petNames:locations:currentTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_217_6();
  OUTLINED_FUNCTION_75();
  v11 = *v10;
  OUTLINED_FUNCTION_11();
  *v12 = v11;

  OUTLINED_FUNCTION_218_6();

  return v15(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t OmniSearchService.searchItems(query:searchServices:searchSources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  v5 = v4;
  v1[19] = v6;
  v1[20] = v0;
  v1[17] = v7;
  v1[18] = v8;
  v9 = type metadata accessor for OSSignpostID();
  v1[21] = v9;
  OUTLINED_FUNCTION_21(v9);
  v1[22] = v10;
  v1[23] = OUTLINED_FUNCTION_160();
  v11 = swift_task_alloc();
  v12 = *v5;
  v1[24] = v11;
  v1[25] = v12;
  memcpy(v1 + 2, v3, 0x69uLL);
  v13 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v13);
}

{
  OUTLINED_FUNCTION_159();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v1 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v1, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v2 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_190_6())
  {
    OUTLINED_FUNCTION_51_5();
    v3 = swift_slowAlloc();
    OUTLINED_FUNCTION_157_0(v3);
    v4 = OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_193(&dword_25D85C000, v5, v6, v4, "OmniSearchService.searchItems", "");
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v7 = *(v0 + 168);

  v8 = OUTLINED_FUNCTION_9_27();
  v9(v8);
  v10 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v10);
  OUTLINED_FUNCTION_45_4();
  *(v0 + 208) = OSSignpostIntervalState.init(id:isOpen:)();
  v11 = OUTLINED_FUNCTION_67_19();
  v12(v11);
  if (*(v0 + 113))
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v13, static Logging.search);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_77_5(v15))
    {
      OUTLINED_FUNCTION_51_5();
      v16 = swift_slowAlloc();
      OUTLINED_FUNCTION_157_0(v16);
      OUTLINED_FUNCTION_56_4();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    lazy protocol witness table accessor for type SearchType and conformance SearchType();
    Dictionary.init(dictionaryLiteral:)();
    $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

    OUTLINED_FUNCTION_31_27();
    OUTLINED_FUNCTION_258_4();

    __asm { BRAA            X2, X16 }
  }

  if (*(v0 + 200) != 11)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v24, static Logging.search);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    v27 = OUTLINED_FUNCTION_32_9();
    if (os_log_type_enabled(v27, v28))
    {
      OUTLINED_FUNCTION_51_0();
      v48 = OUTLINED_FUNCTION_11_26();
      *v7 = 136315138;
      SearchSources.debugDescription.getter();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v7 + 4) = v29;
      OUTLINED_FUNCTION_165_6(&dword_25D85C000, v25, v26, "Searching with limited sources: %s", v48);
      OUTLINED_FUNCTION_54_26();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }
  }

  v30 = *(v0 + 200);
  v32 = *(v0 + 152);
  v31 = *(v0 + 160);
  v34 = *(v0 + 136);
  v33 = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4TypeO_AA0B13ServiceResultVtMd, &_s10OmniSearch0B4TypeO_AA0B13ServiceResultVtMR);
  v35 = swift_task_alloc();
  *(v0 + 216) = v35;
  v35[2] = v33;
  v35[3] = v30;
  v35[4] = v31;
  v35[5] = v34;
  v35[6] = v32;
  v35[7] = v0 + 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10OmniSearch0B4TypeOAA0B13ServiceResultVGMd, &_sSDy10OmniSearch0B4TypeOAA0B13ServiceResultVGMR);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v0 + 224) = v36;
  *v36 = v37;
  v36[1] = OmniSearchService.searchItems(query:searchServices:searchSources:allowedTypes:searchOptions:);
  OUTLINED_FUNCTION_47_11();
  OUTLINED_FUNCTION_136_7();

  return MEMORY[0x282200740](v38, v39, v40, v41, v42, v43, v44, v45);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  *(v3 + 232) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 128);
  $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

  OUTLINED_FUNCTION_62();

  return v2(v1);
}

{
  OUTLINED_FUNCTION_78();

  $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

  OUTLINED_FUNCTION_127();

  return v0();
}

uint64_t closure #1 in OmniSearchService.searchItems(query:searchServices:searchSources:allowedTypes:searchOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[63] = a7;
  v8[64] = a8;
  v8[61] = a5;
  v8[62] = a6;
  v8[59] = a3;
  v8[60] = a4;
  v8[57] = a1;
  v8[58] = a2;
  v9 = *(type metadata accessor for UserQuery(0) - 8);
  v8[65] = v9;
  v8[66] = *(v9 + 64);
  v8[67] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8[68] = swift_task_alloc();
  v8[69] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScg8IteratorVy10OmniSearch0C4TypeO_AC0C13ServiceResultVts5Error_p_GMd, &_sScg8IteratorVy10OmniSearch0C4TypeO_AC0C13ServiceResultVts5Error_p_GMR);
  v8[70] = v10;
  v8[71] = *(v10 - 8);
  v8[72] = swift_task_alloc();
  v11 = type metadata accessor for OSSignpostID();
  v8[73] = v11;
  v8[74] = *(v11 - 8);
  v8[75] = swift_task_alloc();
  v8[76] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in OmniSearchService.searchItems(query:searchServices:searchSources:allowedTypes:searchOptions:));
}

uint64_t closure #1 in OmniSearchService.searchItems(query:searchServices:searchSources:allowedTypes:searchOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v21 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v21, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v22 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_190_6())
  {
    OUTLINED_FUNCTION_51_5();
    v23 = swift_slowAlloc();
    OUTLINED_FUNCTION_157_0(v23);
    v24 = OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_193(&dword_25D85C000, v25, v26, v24, "OmniSearchService.searchItems", "");
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v27 = *(v20 + 472);

  v28 = OUTLINED_FUNCTION_9_27();
  v29(v28);
  v30 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v30);
  OUTLINED_FUNCTION_45_4();
  *(v20 + 616) = OSSignpostIntervalState.init(id:isOpen:)();
  v31 = OUTLINED_FUNCTION_67_19();
  v32(v31);
  v33 = *(v27 + 16);
  if (v33)
  {
    v34 = *(v20 + 472) + 32;
    v83 = *(v20 + 520);
    v82 = *(v20 + 528) + 7;
    do
    {
      outlined init with copy of ChatMessageRecord(v34, v20 + 240);
      v35 = *(v20 + 264);
      __swift_project_boxed_opaque_existential_1((v20 + 240), v35);
      OUTLINED_FUNCTION_179_1();
      if (v36())
      {
        v89 = v33;
        v37 = *(v20 + 536);
        v87 = *(v20 + 512);
        v88 = *(v20 + 544);
        v85 = *(v20 + 552);
        v86 = *(v20 + 504);
        v38 = *(v20 + 488);
        v39 = *(v20 + 496);
        v84 = *(v20 + 480);
        v40 = type metadata accessor for TaskPriority();
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v41, v42, v43, v40);
        OUTLINED_FUNCTION_16_44();
        outlined init with copy of UserQuery(v39, v37);
        outlined init with copy of ChatMessageRecord(v20 + 240, v20 + 320);
        v44 = (*(v83 + 80) + 40) & ~*(v83 + 80);
        v45 = (v82 + v44) & 0xFFFFFFFFFFFFFFF8;
        v46 = (v45 + 47) & 0xFFFFFFFFFFFFFFF8;
        v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
        v48 = swift_allocObject();
        v48[2] = 0;
        v48[3] = 0;
        v48[4] = v38;
        OUTLINED_FUNCTION_7_53();
        outlined init with take of UserQuery(v37, v49 + v44);
        outlined init with take of ResponseOverrideMatcherProtocol((v20 + 320), v48 + v45);
        *(v48 + v46) = v84;
        *(v48 + v47) = v86;
        memcpy(v48 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8), v87, 0x69uLL);
        outlined init with copy of SpotlightRankingItem?(v85, v88, &_sScPSgMd, &_sScPSgMR);
        LODWORD(v37) = __swift_getEnumTagSinglePayload(v88, 1, v40);
        v50 = v38;

        v51 = *(v20 + 512);
        if (v37 == 1)
        {
          outlined init with copy of OmniSearchOptions(v51, v20 + 16);
          v52 = OUTLINED_FUNCTION_107();
          outlined destroy of EagerResolutionService?(v52, v53, &_sScPSgMR);
        }

        else
        {
          outlined init with copy of OmniSearchOptions(v51, v20 + 128);
          TaskPriority.rawValue.getter();
          v62 = OUTLINED_FUNCTION_141_0();
          v63(v62);
        }

        v33 = v89;
        if (v48[2])
        {
          swift_getObjectType();
          OUTLINED_FUNCTION_169_9();
          swift_unknownObjectRetain();
          v64 = dispatch thunk of Actor.unownedExecutor.getter();
          v66 = v65;
          swift_unknownObjectRelease();
        }

        else
        {
          v64 = 0;
          v66 = 0;
        }

        v67 = **(v20 + 464);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4TypeO_AA0B13ServiceResultVtMd, &_s10OmniSearch0B4TypeO_AA0B13ServiceResultVtMR);
        v68 = v66 | v64;
        if (v66 | v64)
        {
          v68 = v20 + 360;
          *(v20 + 360) = 0;
          *(v20 + 368) = 0;
          *(v20 + 376) = v64;
          *(v20 + 384) = v66;
        }

        v69 = *(v20 + 552);
        *(v20 + 416) = 1;
        *(v20 + 424) = v68;
        *(v20 + 432) = v67;
        swift_task_create();

        outlined destroy of EagerResolutionService?(v69, &_sScPSgMd, &_sScPSgMR);
      }

      else
      {
        if (one-time initialization token for search != -1)
        {
          OUTLINED_FUNCTION_1_31();
          swift_once();
        }

        v54 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_200(v54, static Logging.search);
        outlined init with copy of ChatMessageRecord(v20 + 240, v20 + 280);
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = v34;
          OUTLINED_FUNCTION_51_0();
          v58 = OUTLINED_FUNCTION_10_23();
          *v35 = 136315138;
          v59 = *(v20 + 312);
          __swift_project_boxed_opaque_existential_1((v20 + 280), *(v20 + 304));
          v60 = OUTLINED_FUNCTION_37_3();
          switch(v61(v60, v59))
          {
            case 1u:
              OUTLINED_FUNCTION_251_5();
              break;
            default:
              break;
          }

          __swift_destroy_boxed_opaque_existential_1Tm((v20 + 280));
          v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          *(v35 + 4) = v70;
          _os_log_impl(&dword_25D85C000, v55, v56, "Skipping %s search - no supported sources", v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v58);
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();

          v34 = v57;
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1Tm((v20 + 280));
        }
      }

      __swift_destroy_boxed_opaque_existential_1Tm((v20 + 240));
      v34 += 40;
      --v33;
    }

    while (v33);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4TypeO_AA0B13ServiceResultVtMd, &_s10OmniSearch0B4TypeO_AA0B13ServiceResultVtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  OUTLINED_FUNCTION_32_0();
  ThrowingTaskGroup.makeAsyncIterator()();
  *(v20 + 624) = MEMORY[0x277D84F98];
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v20 + 632) = v71;
  *v71 = v72;
  v71[1] = closure #1 in OmniSearchService.searchItems(query:searchServices:searchSources:allowedTypes:searchOptions:);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822004E8](v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t closure #1 in OmniSearchService.searchItems(query:searchServices:searchSources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11();
  *v6 = v5;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_75();
  (*(v0[71] + 8))(v0[72], v0[70]);
  $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

  OUTLINED_FUNCTION_127();

  return v1();
}

uint64_t closure #1 in OmniSearchService.searchItems(query:searchServices:searchSources:allowedTypes:searchOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_34_4();
  v21 = v20[50];
  if (v21)
  {
    v22 = v20[49];
    v23 = v20[51];
    if (!*(v21 + 16))
    {
      outlined consume of (SearchType, SearchServiceResult)?(v20[49], v20[50]);
      goto LABEL_53;
    }

    v24 = v20[78];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20[56] = v24;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v22);
    v28 = *(v24 + 16);
    v29 = (v27 & 1) == 0;
    v30 = v28 + v29;
    if (!__OFADD__(v28, v29))
    {
      v31 = v26;
      v32 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10OmniSearch0D4TypeOAC0D13ServiceResultVGMd, &_ss17_NativeDictionaryVy10OmniSearch0D4TypeOAC0D13ServiceResultVGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v30))
      {
        v33 = specialized __RawDictionaryStorage.find<A>(_:)(v22);
        if ((v32 & 1) != (v34 & 1))
        {
LABEL_6:
          OUTLINED_FUNCTION_17_4();

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v31 = v33;
      }

      v96 = v20;
      v97 = v20[56];
      if (v32)
      {
        v98 = (v97[7] + 16 * v31);
        *v98 = v21;
        v98[1] = v23;
      }

      else
      {
        OUTLINED_FUNCTION_192_9(&v97[v31 >> 6]);
        *(v97[6] + v31) = v22;
        v99 = (v97[7] + 16 * v31);
        *v99 = v21;
        v99[1] = v23;
        v100 = v97[2];
        v85 = __OFADD__(v100, 1);
        v101 = v100 + 1;
        if (v85)
        {
LABEL_64:
          __break(1u);
          return MEMORY[0x2822004E8](v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
        }

        v97[2] = v101;
      }

      v96[78] = v97;
      v20 = v96;
LABEL_53:
      swift_task_alloc();
      OUTLINED_FUNCTION_53();
      v20[79] = v102;
      *v102 = v103;
      v102[1] = closure #1 in OmniSearchService.searchItems(query:searchServices:searchSources:allowedTypes:searchOptions:);
      OUTLINED_FUNCTION_69();
      OUTLINED_FUNCTION_17_4();

      return MEMORY[0x2822004E8](v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
    }

LABEL_61:
    __break(1u);
  }

  else
  {
    (*(v20[71] + 8))(v20[72], v20[70]);
    v23 = v20;
    v37 = one-time initialization token for fedSearch;
    swift_bridgeObjectRetain_n();
    if (v37 == -1)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_131_9(&one-time initialization token for fedSearch);
LABEL_10:
  v38 = *(v23 + 624);
  a14 = *(v23 + 488);
  v39 = type metadata accessor for Logger();
  v40 = __swift_project_value_buffer(v39, static Logging.fedSearch);
  _s10OmniSearch11EvalLoggingV03logC4Info__6loggerySS_AA0cF9Providing_p2os6LoggerVtFZTf4nenn_nSDyAA0B4TypeOAA0B13ServiceResultVG_Tt2g5(0x6574617265646546, 0xEE00686372616553, v38, v40);

  v41 = 0;
  v42 = v38 + 64;
  v43 = -1;
  v44 = -1 << *(v38 + 32);
  if (-v44 < 64)
  {
    v43 = ~(-1 << -v44);
  }

  v45 = v43 & *(v38 + 64);
  a12 = v38;
  a13 = OBJC_IVAR____TtC10OmniSearch17OmniSearchService_maxPerSourceLimit;
  v46 = (63 - v44) >> 6;
  v47 = *(v23 + 624);
  a10 = v23;
  while (v45)
  {
    v23 = v41;
LABEL_18:
    v48 = *(a14 + a13);
    if ((v48 & 0x8000000000000000) != 0)
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v49 = __clz(__rbit64(v45)) | (v23 << 6);
    v50 = *(*(a12 + 48) + v49);
    v51 = (*(a12 + 56) + 16 * v49);
    v53 = *v51;
    v52 = v51[1];
    v54 = *(*v51 + 16);
    if (v54 >= v48)
    {
      v55 = *(a14 + a13);
    }

    else
    {
      v55 = v54;
    }

    if (v48)
    {
      v56 = v55;
    }

    else
    {
      v56 = 0;
    }

    a15 = v52;
    if (v54 == v56)
    {

      a16 = v53;
    }

    else if (v56)
    {
      a16 = v53;
      HIDWORD(a11) = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVGMR);
      type metadata accessor for SearchResult(0);
      OUTLINED_FUNCTION_84_13();
      v58 = *(v57 + 72);
      v60 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v61 = swift_allocObject();
      v62 = _swift_stdlib_malloc_size(v61);
      if (!v58)
      {
        goto LABEL_60;
      }

      if (v62 - v60 == 0x8000000000000000 && v58 == -1)
      {
        __break(1u);
        goto LABEL_64;
      }

      v61[2] = v56;
      v61[3] = 2 * ((v62 - v60) / v58);
      swift_arrayInitWithCopy();

      a16 = v61;
      v50 = HIDWORD(a11);
    }

    else
    {

      a16 = MEMORY[0x277D84F90];
    }

    v71 = swift_isUniquelyReferenced_nonNull_native();
    a17 = v47;
    v72 = v50;
    v73 = specialized __RawDictionaryStorage.find<A>(_:)(v50);
    v75 = v47[2];
    v76 = (v74 & 1) == 0;
    v77 = v75 + v76;
    if (__OFADD__(v75, v76))
    {
      goto LABEL_58;
    }

    v78 = v73;
    v79 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10OmniSearch0D4TypeOAC0D13ServiceResultVGMd, &_ss17_NativeDictionaryVy10OmniSearch0D4TypeOAC0D13ServiceResultVGMR);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v71, v77))
    {
      v80 = specialized __RawDictionaryStorage.find<A>(_:)(v72);
      if ((v79 & 1) != (v81 & 1))
      {
        goto LABEL_6;
      }

      v78 = v80;
    }

    v45 &= v45 - 1;
    if (v79)
    {
      v82 = (v47[7] + 16 * v78);
      *v82 = a16;
      v82[1] = a15;

      v41 = v23;
    }

    else
    {
      OUTLINED_FUNCTION_192_9(&v47[v78 >> 6]);
      *(v47[6] + v78) = v72;
      v83 = (v47[7] + 16 * v78);
      *v83 = a16;
      v83[1] = a15;
      v84 = v47[2];
      v85 = __OFADD__(v84, 1);
      v86 = v84 + 1;
      if (v85)
      {
        goto LABEL_59;
      }

      v47[2] = v86;
      v41 = v23;
    }
  }

  while (1)
  {
    v23 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
      goto LABEL_57;
    }

    if (v23 >= v46)
    {
      break;
    }

    v45 = *(v42 + 8 * v23);
    ++v41;
    if (v45)
    {
      goto LABEL_18;
    }
  }

  v87 = *(a10 + 456);

  *v87 = v47;
  $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_17_4();

  return v89(v88, v89, v90, v91, v92, v93, v94, v95, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)()
{
  OUTLINED_FUNCTION_155();
  v19 = v0;
  type metadata accessor for OSSignpostError();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_61_8();
  v2 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  v8 = v7 - v6;
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v9 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v9, static Logging.searchSignposter);
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v11 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    v12 = OUTLINED_FUNCTION_194_7();
    if (v13(v12) == *MEMORY[0x277D85B00])
    {
      v14 = "[Error] Interval already ended";
    }

    else
    {
      v15 = OUTLINED_FUNCTION_194_7();
      v16(v15);
      v14 = "";
    }

    OUTLINED_FUNCTION_51_5();
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v10, v11, v18, v19, v14, v17, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  (*(v4 + 8))(v8, v2);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #1 in closure #1 in OmniSearchService.searchItems(query:searchServices:searchSources:allowedTypes:searchOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[26] = a4;
  v8[27] = a6;
  v8[25] = a1;
  v8[28] = *(type metadata accessor for SearchResult(0) - 8);
  v8[29] = swift_task_alloc();
  v8[23] = a7;
  memcpy(v8 + 2, v16, 0x69uLL);
  v13 = swift_task_alloc();
  v8[30] = v13;
  *v13 = v8;
  v13[1] = closure #1 in closure #1 in OmniSearchService.searchItems(query:searchServices:searchSources:allowedTypes:searchOptions:);

  return OmniSearchService.searchItems(query:searchService:searchSources:allowedTypes:searchOptions:)((v8 + 21), a5, a6, v8 + 23, a8, (v8 + 2));
}

uint64_t closure #1 in closure #1 in OmniSearchService.searchItems(query:searchServices:searchSources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *(v6 + 248) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  v54 = v0;
  v1 = v0[21];
  v2 = v0[22];
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  OUTLINED_FUNCTION_231_2();
  v3 = v0[27];
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logging.search);
  outlined init with copy of ChatMessageRecord(v3, (v0 + 16));

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v48 = v6;
    v7 = OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_260();
    *v7 = 134218498;
    *(v7 + 4) = *(v1 + 16);

    *(v7 + 12) = 2080;
    __swift_project_boxed_opaque_existential_1(v0 + 16, v0[19]);
    v8 = OUTLINED_FUNCTION_54_0();
    v49 = v2;
    switch(v9(v8))
    {
      case 1u:
        OUTLINED_FUNCTION_251_5();
        break;
      default:
        break;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
    OUTLINED_FUNCTION_62_3();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v7 + 14) = v10;
    *(v7 + 22) = 2080;
    v11 = *(v1 + 16);
    v12 = MEMORY[0x277D84F90];
    if (v11)
    {
      v45 = v7;
      v46 = v5;
      v13 = v0[28];
      v50 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
      v12 = v50;
      v47 = v1;
      v14 = v1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v15 = *(v13 + 72);
      do
      {
        OUTLINED_FUNCTION_19_40();
        v16 = OUTLINED_FUNCTION_40_5();
        outlined init with copy of UserQuery(v16, v17);
        SearchResultItem.type.getter(&v53);
        SearchResultKey.rawValue.getter();
        v19 = v18;
        v21 = v20;
        OUTLINED_FUNCTION_4_63();
        outlined destroy of UserQuery();
        v23 = *(v50 + 16);
        v22 = *(v50 + 24);
        if (v23 >= v22 >> 1)
        {
          v25 = OUTLINED_FUNCTION_26_3(v22);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v25, v23 + 1, 1);
        }

        *(v50 + 16) = v23 + 1;
        v24 = v50 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v21;
        v14 += v15;
        --v11;
      }

      while (v11);
      v5 = v46;
      v1 = v47;
      OUTLINED_FUNCTION_231_2();
      v7 = v45;
    }

    MEMORY[0x25F89F8A0](v12, MEMORY[0x277D837D0]);

    OUTLINED_FUNCTION_88();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v7 + 24) = v26;
    swift_arrayDestroy();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();

    v2 = v49;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  OUTLINED_FUNCTION_154_4();
  v28 = (*(v27 + 152))();
  if (v28)
  {
    v29 = v28;
    v30 = v0[27];
    v0[24] = *(v1 + 16);
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = v31;
    MEMORY[0x25F89F6C0](32, 0xE100000000000000);
    v32 = *(v30 + 32);
    v33 = OUTLINED_FUNCTION_54_0();
    __swift_project_boxed_opaque_existential_1(v33, v34);
    v35 = OUTLINED_FUNCTION_37_3();
    v36(v35, v32);
    v37 = OUTLINED_FUNCTION_32_0();
    MEMORY[0x25F89F6C0](v37);

    MEMORY[0x25F89F6C0](0x73746C7573657220, 0xE800000000000000);
    v29(v51, v52);
    v38 = OUTLINED_FUNCTION_63_0();
    outlined consume of (@escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error))?(v38, v39);
  }

  v40 = v0[25];
  __swift_project_boxed_opaque_existential_1(v0[27], *(v0[27] + 24));
  v41 = OUTLINED_FUNCTION_63_21();
  *v40 = v42(v41);
  *(v40 + 8) = v1;
  *(v40 + 16) = v2;

  OUTLINED_FUNCTION_127();

  return v43();
}

{
  OUTLINED_FUNCTION_48();

  OUTLINED_FUNCTION_127();

  return v0();
}

uint64_t OmniSearchService.searchItems(query:searchService:searchSources:allowedTypes:searchOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a3;
  v6[30] = a5;
  v6[27] = a1;
  v6[28] = a2;
  v7 = *a4;
  v6[31] = a6;
  v6[32] = v7;
  v8 = OUTLINED_FUNCTION_29();
  return MEMORY[0x2822009F8](v8);
}

uint64_t OmniSearchService.searchItems(query:searchService:searchSources:allowedTypes:searchOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_259_5();
  OUTLINED_FUNCTION_159();
  v13 = v12[32];
  v14 = v12[29];
  v15 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  v16 = OUTLINED_FUNCTION_112_2();
  v17(v16, v15);
  if ((a11 & v13) != 0)
  {
    v18 = v12[31];
    v19 = v14[3];
    v20 = v14[4];
    __swift_project_boxed_opaque_existential_1(v12[29], v19);
    v12[26] = a11 & v13;
    memcpy(v12 + 2, v18, 0x69uLL);
    OUTLINED_FUNCTION_28_0();
    v56 = v21 + *v21;
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    v12[33] = v22;
    *v22 = v23;
    v22[1] = OmniSearchService.searchItems(query:searchService:searchSources:allowedTypes:searchOptions:);
    OUTLINED_FUNCTION_198();

    return v31(v24, v25, v26, v27, v28, v29, v30, v31, v20 + 32, v56, a11, a12);
  }

  else
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v34 = v12[29];
    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logging.search);
    outlined init with copy of ChatMessageRecord(v34, (v12 + 21));
    v36 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v37 = OUTLINED_FUNCTION_32_9();
    if (os_log_type_enabled(v37, v38))
    {
      OUTLINED_FUNCTION_51_0();
      a11 = OUTLINED_FUNCTION_10_23();
      *v14 = 136315138;
      __swift_project_boxed_opaque_existential_1(v12 + 21, v12[24]);
      v39 = OUTLINED_FUNCTION_179_0();
      switch(v40(v39))
      {
        case 1u:
          OUTLINED_FUNCTION_251_5();
          break;
        default:
          break;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v12 + 21);
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v14 + 4) = v41;
      OUTLINED_FUNCTION_250_5();
      _os_log_impl(v42, v43, v44, v45, v46, 0xCu);
      OUTLINED_FUNCTION_54_26();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v12 + 21);
    }

    v47 = v12[27];
    *v47 = MEMORY[0x277D84F90];
    v47[1] = 0;
    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_198();

    return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12);
  }
}

{
  OUTLINED_FUNCTION_183_4();
  OUTLINED_FUNCTION_159();
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v13 = *(v12 + 272);
  v14 = *(v12 + 232);
  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logging.search);
  outlined init with copy of ChatMessageRecord(v14, v12 + 128);
  v16 = v13;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_90_1();
    v20 = OUTLINED_FUNCTION_173_0();
    a10 = OUTLINED_FUNCTION_49_0();
    *v19 = 136315394;
    __swift_project_boxed_opaque_existential_1((v12 + 128), *(v12 + 152));
    v21 = OUTLINED_FUNCTION_158();
    switch(v22(v21))
    {
      case 1u:
        OUTLINED_FUNCTION_251_5();
        break;
      default:
        break;
    }

    v23 = *(v12 + 272);
    __swift_destroy_boxed_opaque_existential_1Tm((v12 + 128));
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v19 + 4) = v24;
    *(v19 + 12) = 2112;
    v25 = v23;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v26;
    *v20 = v26;
    OUTLINED_FUNCTION_250_5();
    _os_log_impl(v27, v28, v29, v30, v31, 0x16u);
    outlined destroy of EagerResolutionService?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_54_26();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v12 + 128));
  }

  v32 = *(v12 + 216);

  *v32 = MEMORY[0x277D84F90];
  v32[1] = 0;
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_136_7();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
}

uint64_t OmniSearchService.searchItems(query:searchService:searchSources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *(v6 + 272) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_69();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    OUTLINED_FUNCTION_127();

    return v8();
  }
}

uint64_t OmniSearchService.handleLocalResults(query:typeIdentifiers:localResults:options:requestedProperties:ecrResults:locale:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  *(v1 + 400) = v4;
  *(v1 + 408) = v0;
  *(v1 + 384) = v5;
  *(v1 + 392) = v6;
  *(v1 + 368) = v7;
  *(v1 + 376) = v2;
  *(v1 + 352) = v8;
  *(v1 + 360) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  OUTLINED_FUNCTION_114(v10);
  *(v1 + 416) = OUTLINED_FUNCTION_199();
  v11 = type metadata accessor for LocalizedStringResource();
  *(v1 + 424) = v11;
  OUTLINED_FUNCTION_21(v11);
  *(v1 + 432) = v12;
  v13 = OUTLINED_FUNCTION_199();
  v14 = *(v3 + 16);
  *(v1 + 240) = *v3;
  *(v1 + 256) = v14;
  v15 = *(v3 + 32);
  *(v1 + 448) = *(v3 + 48);
  v16 = *(v3 + 64);
  v17 = *(v3 + 80);
  *(v1 + 272) = v15;
  *(v1 + 288) = v16;
  *(v1 + 440) = v13;
  *(v1 + 304) = v17;
  *(v1 + 320) = *(v3 + 96);
  v18 = *(v3 + 98);
  *(v1 + 123) = v18;
  *(v1 + 122) = v18;
  *(v1 + 584) = *(v3 + 99);
  *(v1 + 588) = *(v3 + 103);
  v19 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v19);
}

{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_51_19();
  v4 = v3;
  OUTLINED_FUNCTION_19_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v4 + 488) = v1;
  *(v4 + 496) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_20_4();

    return MEMORY[0x2822009F8](v8);
  }

  else
  {
    v9 = *(v4 + 408);
    v10 = *(v4 + 256);
    *(v4 + 128) = *(v4 + 240);
    *(v4 + 144) = v10;
    v11 = *(v4 + 448);
    v12 = *(v4 + 288);
    *(v4 + 160) = *(v4 + 272);
    *(v4 + 176) = v11;
    v13 = *(v4 + 304);
    *(v4 + 192) = v12;
    *(v4 + 208) = v13;
    *(v4 + 224) = *(v4 + 320);
    *(v4 + 226) = *(v4 + 123);
    *(v4 + 231) = *(v4 + 588);
    *(v4 + 227) = *(v4 + 584);
    v14 = *((*MEMORY[0x277D85000] & *v9) + 0x110);
    v18 = (v14 + *v14);
    v15 = swift_task_alloc();
    *(v4 + 504) = v15;
    *v15 = v6;
    v15[1] = OmniSearchService.handleLocalResults(query:typeIdentifiers:localResults:options:requestedProperties:ecrResults:locale:);
    v16 = OUTLINED_FUNCTION_49_4(*(v4 + 352));

    return v18(v16);
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v2 = v1;
  *v2 = *v0;
  v1[64] = v3;
  v1[65] = v4;
  v1[66] = v5;

  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6);
}

{
  v1 = *(v0 + 512);
  OmniSearchService.determineRenderOption(answer:options:appsChecker:)();
  *(v0 + 536) = v26;
  *(v0 + 544) = v27;
  if (v1)
  {
    v2 = *(v0 + 512);
    outlined consume of ResultsDialog.RenderOption(*(v0 + 520), *(v0 + 528));
    if (*(v2 + 16))
    {

LABEL_18:
      *(v0 + 560) = v2;
      v24 = swift_task_alloc();
      *(v0 + 568) = v24;
      *v24 = v0;
      v24[1] = OmniSearchService.handleLocalResults(query:typeIdentifiers:localResults:options:requestedProperties:ecrResults:locale:);
      OUTLINED_FUNCTION_49_4(*(v0 + 352));

      return OmniSearchService.handlePhotosResultsForEval(query:typeIdentifiers:isExpectingAnswer:results:ecrResults:)();
    }
  }

  if (v27 == 3)
  {
    OUTLINED_FUNCTION_246_3(v26, 3);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_16_11(v4))
    {
      OUTLINED_FUNCTION_51_5();
      v5 = swift_slowAlloc();
      OUTLINED_FUNCTION_81_4(v5);
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v2 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v11 = *(v0 + 123);
  v12 = OUTLINED_FUNCTION_32_0();
  outlined copy of OmniSearchResponseRenderOption(v12, v13);
  v14 = OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_246_3(v14, v15);
  if ((v11 & 1) == 0)
  {
    v2 = *(v0 + 488);
    goto LABEL_18;
  }

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_16_11(v17))
  {
    OUTLINED_FUNCTION_51_5();
    v18 = swift_slowAlloc();
    OUTLINED_FUNCTION_81_4(v18);
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v19, v20, v21, v22, v23, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_5_0(&one-time initialization token for shared);
  }

  *(v0 + 552) = static ContextManager.shared;
  LocalizedStringResource.init(stringLiteral:)();

  return MEMORY[0x2822009F8](OmniSearchService.handleLocalResults(query:typeIdentifiers:localResults:options:requestedProperties:ecrResults:locale:));
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_147_2(v0[69] + 272, (v0 + 41));
  v1 = OUTLINED_FUNCTION_11_1();
  MessageAccumulationContext.record(_:severity:from:)(v1, v2, 2);
  swift_endAccess();
  v3 = OUTLINED_FUNCTION_32_0();
  v4(v3);
  v0[70] = v0[61];
  v5 = swift_task_alloc();
  v0[71] = v5;
  *v5 = v0;
  v5[1] = OmniSearchService.handleLocalResults(query:typeIdentifiers:localResults:options:requestedProperties:ecrResults:locale:);
  OUTLINED_FUNCTION_49_4(v0[44]);

  return OmniSearchService.handlePhotosResultsForEval(query:typeIdentifiers:isExpectingAnswer:results:ecrResults:)();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *(v6 + 576) = v5;

  v7 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_48();

  OUTLINED_FUNCTION_127();

  return v0();
}

void OmniSearchService.handleLocalResults(query:typeIdentifiers:localResults:options:requestedProperties:ecrResults:locale:)()
{
  OUTLINED_FUNCTION_230_4();
  if (*(*(v0 + 368) + 16) || (v28 = *(v0 + 376), v33 = *v28, v34 = v28[1], v35 = v28[2], (v29 = OmniSearchOptions.onScreenText.getter()) != 0) && (v30 = *(v29 + 16), , v30))
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    *(v0 + 464) = __swift_project_value_buffer(v1, static Logging.search);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_16_11(v3))
    {
      v4 = *(v0 + 123);
      v5 = OUTLINED_FUNCTION_173_0();
      *v5 = 67109120;
      v5[1] = v4 & 1;
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v6, v7, v8, v9, v10, 8u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050](v11, v12, v13, v14, v15, v16, v17, v18, v33, *(&v33 + 1), v34, *(&v34 + 1), v35, *(&v35 + 1));
    }

    v19 = *(v0 + 123);
    v21 = *(v0 + 448);
    v20 = *(v0 + 456);
    v22 = *(v0 + 408);

    type metadata accessor for AnswerSynthesisAllowedAppsChecker();
    swift_allocObject();
    OUTLINED_FUNCTION_37_3();

    *(v0 + 472) = AnswerSynthesisAllowedAppsChecker.init(locale:)(v21, v20);
    __swift_project_boxed_opaque_existential_1((v22 + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_answerResolver), *(v22 + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_answerResolver + 24));
    v23 = *(v0 + 256);
    *(v0 + 16) = *(v0 + 240);
    *(v0 + 32) = v23;
    v24 = *(v0 + 288);
    *(v0 + 48) = *(v0 + 272);
    *(v0 + 64) = v21;
    *(v0 + 72) = v20;
    v25 = *(v0 + 304);
    *(v0 + 80) = v24;
    *(v0 + 96) = v25;
    *(v0 + 112) = *(v0 + 320);
    *(v0 + 114) = v19;
    v26 = *(v0 + 584);
    *(v0 + 119) = *(v0 + 588);
    *(v0 + 115) = v26;
    v27 = swift_task_alloc();
    *(v0 + 480) = v27;
    *v27 = v0;
    v27[1] = OmniSearchService.handleLocalResults(query:typeIdentifiers:localResults:options:requestedProperties:ecrResults:locale:);
    OUTLINED_FUNCTION_49_4(*(v0 + 352));

    AnswerResolvable.resolve(query:options:results:assistantLocale:)();
  }

  else
  {

    v31 = OUTLINED_FUNCTION_3_13();

    v32(v31);
  }
}

uint64_t OmniSearchService.handleLocalResults(query:typeIdentifiers:localResults:options:requestedProperties:ecrResults:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_84_0();
  a20 = v22;
  a21 = v23;
  OUTLINED_FUNCTION_61_0();
  a19 = v21;
  v24 = *(v21 + 576);
  v25 = *(v21 + 544);
  v26 = *(v21 + 536);
  v27 = *(v21 + 123);
  v28 = *(v21 + 392);
  v29 = *(v21 + 352);
  v30 = Dictionary.init(dictionaryLiteral:)();
  v31 = swift_task_alloc();
  *(v31 + 16) = v29;
  *(v31 + 24) = v28;
  v32 = specialized Sequence.reduce<A>(into:_:)(v30, partial apply for closure #1 in OmniSearchService.handleLocalResults(query:typeIdentifiers:localResults:options:requestedProperties:ecrResults:locale:), v31, v24);

  *&a9 = v26;
  *(&a9 + 1) = v25;
  if (v27)
  {
    v33 = 1;
  }

  else
  {
    v34 = *(v21 + 416);
    v35 = *(v21 + 352);
    v36 = type metadata accessor for UserQuery(0);
    outlined init with copy of SpotlightRankingItem?(v35 + *(v36 + 28), v34, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
    Entity = type metadata accessor for StructuredQueryEntity(0);
    v38 = OUTLINED_FUNCTION_93_6();
    if (__swift_getEnumTagSinglePayload(v38, v39, Entity) == 1)
    {
      outlined destroy of EagerResolutionService?(*(v21 + 416), &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
      v33 = 0;
    }

    else
    {
      EntityProperty.wrappedValue.getter();
      v33 = *(v21 + 121);
      OUTLINED_FUNCTION_5_55();
      outlined destroy of UserQuery();
    }
  }

  OUTLINED_FUNCTION_242_4();
  v41 = UserQuery.inAppSearchString(ecrResults:bundleId:)(v56, v40);
  if (v41.value._object)
  {
    countAndFlagsBits = v41.value._countAndFlagsBits;
    object = v41.value._object;
  }

  else
  {
    v44 = *(v21 + 352);
    countAndFlagsBits = *(v44 + 16);
    object = *(v44 + 24);
  }

  v45 = *(v21 + 576);
  v46 = type metadata accessor for OmniSearchResponse();
  OUTLINED_FUNCTION_188_8(v46);
  OmniSearchResponse.init(results:renderOption:isQuestionQuery:isOpenQuery:searchString:perAppSearchStrings:foundProperties:)(v45, &a9, v33, 0, countAndFlagsBits, object, v32);

  OUTLINED_FUNCTION_31_27();
  OUTLINED_FUNCTION_83_0();

  return v49(v47, v48, v49, v50, v51, v52, v53, v54, a9, *(&a9 + 1), a10, a11, a12, a13);
}

uint64_t closure #1 in OmniSearchService.handleLocalResults(query:typeIdentifiers:localResults:options:requestedProperties:ecrResults:locale:)(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for SearchResult(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
  v6 = CodableNSSecureCoding.wrappedValue.getter();
  result = outlined bridged method (ob) of @objc CSSearchableItem.bundleID.getter(v6);
  if (v8)
  {
    v9 = result;
    v10 = v8;
    specialized Dictionary.subscript.getter(result, v8, *a1);
    if (v12)
    {
LABEL_3:
    }

    v15.value._rawValue = a4;
    v15.is_nil = v9;
    v13 = v10;
    if (!UserQuery.inAppSearchString(ecrResults:bundleId:)(v15, *(&v11 + -8)).value._object)
    {
      specialized Dictionary._Variant.removeValue(forKey:)(v9, v10);
      goto LABEL_3;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v14 = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)();

    *a1 = v14;
  }

  return result;
}

uint64_t OmniSearchService.createASContext(mode:assistantLocale:ecrResults:)()
{
  OUTLINED_FUNCTION_48();
  v0[5] = v1;
  v0[6] = v2;
  v0[3] = v3;
  v0[4] = v4;
  v0[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  OUTLINED_FUNCTION_114(v6);
  v0[7] = OUTLINED_FUNCTION_199();
  v7 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v7);
}

uint64_t OmniSearchService.createASContext(mode:assistantLocale:ecrResults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_121_8();
  OUTLINED_FUNCTION_159();
  v14 = v12[6];
  v13 = v12[7];
  v16 = v12[4];
  v15 = v12[5];
  v17 = v12[2];
  outlined init with copy of SpotlightRankingItem?(v12[3], v13, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  type metadata accessor for FeatureFlagService();
  v18 = swift_allocObject();
  v19 = type metadata accessor for AnswerSynthesisRequestContext(0);
  v20 = v19[5];
  type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  v25 = (v17 + v19[6]);
  v26 = (v17 + v19[7]);
  *v26 = 25965;
  v26[1] = 0xE200000000000000;
  outlined assign with take of SearchResultItem?(v13, v17 + v20, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  *v25 = v16;
  v25[1] = v15;
  *v17 = v14;
  *(v17 + v19[8]) = v18;

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_63_14();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t OmniSearchService.handlePhotosResultsForEval(query:typeIdentifiers:isExpectingAnswer:results:ecrResults:)()
{
  OUTLINED_FUNCTION_48();
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 200) = v3;
  *(v0 + 24) = v4;
  *(v0 + 32) = v5;
  v6 = type metadata accessor for URL();
  *(v0 + 56) = v6;
  OUTLINED_FUNCTION_21(v6);
  *(v0 + 64) = v7;
  *(v0 + 72) = OUTLINED_FUNCTION_160();
  *(v0 + 80) = swift_task_alloc();
  v8 = type metadata accessor for SearchResult(0);
  *(v0 + 88) = v8;
  OUTLINED_FUNCTION_21(v8);
  *(v0 + 96) = v9;
  *(v0 + 104) = OUTLINED_FUNCTION_199();
  v10 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v10);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v3);
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_51_19();
  v4 = v3;
  OUTLINED_FUNCTION_19_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v4 + 184) = v0;

  if (!v0)
  {

    *(v4 + 192) = v1;
  }

  OUTLINED_FUNCTION_20_4();

  return MEMORY[0x2822009F8](v8);
}

{
  OUTLINED_FUNCTION_78();
  v1 = *(v0 + 128);

  v2 = OUTLINED_FUNCTION_107();
  v3(v2);

  v4 = OUTLINED_FUNCTION_28();

  return v5(v4);
}

{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_72();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  v3 = OUTLINED_FUNCTION_77_5(v2);
  v4 = v0[23];
  v5 = v0[16];
  v6 = v0[17];
  if (v3)
  {
    OUTLINED_FUNCTION_51_5();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_157_0(v7);
    OUTLINED_FUNCTION_56_4();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {
  }

  v13 = OUTLINED_FUNCTION_32_0();
  v14(v13);

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_204();

  return v17(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t OmniSearchService.handlePhotosResultsForEval(query:typeIdentifiers:isExpectingAnswer:results:ecrResults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_84_0();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_61_0();
  a20 = v22;
  v25 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
  if ((static NSUserDefaults.photosSearchEval.getter(v25) & 1) == 0 || (v26 = *(*(v22 + 40) + 16)) == 0)
  {

    goto LABEL_13;
  }

  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  *(v22 + 112) = __swift_project_value_buffer(v27, static Logging.search);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_77_5(v29))
  {
    OUTLINED_FUNCTION_51_5();
    v30 = swift_slowAlloc();
    OUTLINED_FUNCTION_157_0(v30);
    OUTLINED_FUNCTION_56_4();
    _os_log_impl(v31, v32, v33, v34, v35, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v36 = *(v22 + 200);

  if ((v36 & 1) == 0 && !*(*(v22 + 32) + 16))
  {
    v54 = *(v22 + 96);
    a9 = *(v22 + 88);
    v55 = *(v22 + 40) + ((*(v54 + 80) + 32) & ~*(v54 + 80));
    v56 = *(v54 + 72);
    while (1)
    {
      v57 = *(v22 + 104);
      OUTLINED_FUNCTION_19_40();
      outlined init with copy of UserQuery(v55, v57);
      SearchResultItem.type.getter(&a10 + 7);
      SearchResultKey.rawValue.getter();
      if (v59 == 0x6F746F6870 && v58 == 0xE500000000000000)
      {
      }

      else
      {
        v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v61 & 1) == 0)
        {
          break;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
      v62 = CodableNSSecureCoding.wrappedValue.getter();
      v63 = outlined bridged method (ob) of @objc CSSearchableItem.bundleID.getter(v62);
      if (!v64)
      {
        break;
      }

      if (v63 == 0xD000000000000019 && v64 == 0x800000025DBF1E10)
      {

        OUTLINED_FUNCTION_4_63();
        outlined destroy of UserQuery();
      }

      else
      {
        v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

        OUTLINED_FUNCTION_4_63();
        outlined destroy of UserQuery();
        if ((v66 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      v55 += v56;
      if (!--v26)
      {
        OUTLINED_FUNCTION_242_4();
        v67._countAndFlagsBits = 0x800000025DBF1E10;
        v68 = UserQuery.inAppSearchString(ecrResults:bundleId:)(v97, v67);
        if (v68.value._object)
        {
          countAndFlagsBits = v68.value._countAndFlagsBits;
          object = v68.value._object;
        }

        else
        {
          v72 = *(v22 + 24);
          countAndFlagsBits = *(v72 + 16);
          object = *(v72 + 24);
        }

        *(v22 + 120) = object;

        v73 = Logger.logObject.getter();
        static os_log_type_t.info.getter();

        if (OUTLINED_FUNCTION_143_8())
        {
          v74 = OUTLINED_FUNCTION_51_0();
          a11 = OUTLINED_FUNCTION_49_0();
          *v74 = 136315138;
          OUTLINED_FUNCTION_54_0();
          *(v74 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
          OUTLINED_FUNCTION_200_5();
          _os_log_impl(v75, v76, v77, v78, v79, 0xCu);
          OUTLINED_FUNCTION_195_6();
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
        }

        v80 = *(v22 + 72);
        v81 = [objc_opt_self() systemPhotoLibraryURL];
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for PHPhotoLibrary, 0x277CD9948);
        v82 = OUTLINED_FUNCTION_94();
        v83(v82);
        v84 = PHPhotoLibrary.init(photoLibraryURL:)(v80);
        *(v22 + 128) = v84;
        v85 = [objc_allocWithZone(MEMORY[0x277CD99B8]) initWithPhotoLibrary_];
        *(v22 + 136) = v85;
        v86 = swift_task_alloc();
        *(v22 + 144) = v86;
        v86[2] = v85;
        v86[3] = countAndFlagsBits;
        v86[4] = object;
        v87 = swift_task_alloc();
        *(v22 + 152) = v87;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        *v87 = v22;
        v87[1] = OmniSearchService.handlePhotosResultsForEval(query:typeIdentifiers:isExpectingAnswer:results:ecrResults:);
        OUTLINED_FUNCTION_69();
        OUTLINED_FUNCTION_83_0();

        return MEMORY[0x2822007B8](v88, v89, v90, v91, v92, v93, v94, v95, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
      }
    }

    OUTLINED_FUNCTION_4_63();
    outlined destroy of UserQuery();
LABEL_36:
    v37 = Logger.logObject.getter();
    v71 = static os_log_type_t.info.getter();
    if (!OUTLINED_FUNCTION_16_11(v71))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_16_11(v38))
  {
LABEL_10:
    OUTLINED_FUNCTION_51_5();
    v39 = swift_slowAlloc();
    OUTLINED_FUNCTION_81_4(v39);
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v40, v41, v42, v43, v44, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

LABEL_11:

LABEL_13:

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_83_0();

  return v47(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
}

uint64_t OmniSearchService.handlePhotosResultsForEval(query:typeIdentifiers:isExpectingAnswer:results:ecrResults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  v17 = v14[2];

  v18 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  OUTLINED_FUNCTION_211_3();

  if (OUTLINED_FUNCTION_259())
  {
    OUTLINED_FUNCTION_51_0();
    OUTLINED_FUNCTION_11_26();
    *v15 = 136315138;
    MEMORY[0x25F89F8A0](v17, MEMORY[0x277D837D0]);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_169_9();

    *(v15 + 4) = v16;
    OUTLINED_FUNCTION_56_4();
    _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
    OUTLINED_FUNCTION_54_26();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v24 = *(v17 + 16);
  if (v24)
  {
    v37 = v14;
    v38 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
    v25 = v38;
    v26 = *(v38 + 16);
    v27 = 32 * v26 + 56;
    v28 = (v17 + 40);
    do
    {
      v29 = *(v28 - 1);
      v30 = *v28;
      v31 = *(v38 + 24);

      if (v26 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v26 + 1, 1);
      }

      *(v38 + 16) = v26 + 1;
      v32 = (v38 + v27);
      *(v32 - 3) = 0xD000000000000019;
      *(v32 - 2) = 0x800000025DBF1E10;
      v27 += 32;
      v28 += 2;
      ++v26;
      *(v32 - 1) = v29;
      *v32 = v30;
      --v24;
    }

    while (v24);

    v14 = v37;
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  type metadata accessor for SourceDocumentRetriever();
  OUTLINED_FUNCTION_128_2();
  v33 = swift_allocObject();
  v14[20] = v33;
  *(v33 + 16) = [objc_opt_self() defaultSearchableIndex];
  v14[21] = specialized _arrayForceCast<A, B>(_:)(v25);

  v34 = swift_task_alloc();
  v14[22] = v34;
  *v34 = v14;
  OUTLINED_FUNCTION_84(v34);
  OUTLINED_FUNCTION_83_0();

  return SourceDocumentRetriever.fetchDocs(_:)();
}

id PHPhotoLibrary.init(photoLibraryURL:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v6 = [v2 initWithPhotoLibraryURL_];

  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

void closure #2 in OmniSearchService.handlePhotosResultsForEval(query:typeIdentifiers:isExpectingAnswer:results:ecrResults:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySSGs5NeverOGMd, &_sScCySaySSGs5NeverOGMR);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = aBlock - v11;
  v13 = MEMORY[0x25F89F4C0](a3, a4, v10);
  (*(v9 + 16))(v12, a1, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v12, v8);
  aBlock[4] = partial apply for closure #1 in closure #2 in OmniSearchService.handlePhotosResultsForEval(query:typeIdentifiers:isExpectingAnswer:results:ecrResults:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [String], @guaranteed [String], @guaranteed [String], @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_12;
  v16 = _Block_copy(aBlock);

  [a2 performSearch:v13 resultsHandler:v16];
  _Block_release(v16);
}

uint64_t closure #1 in closure #2 in OmniSearchService.handlePhotosResultsForEval(query:typeIdentifiers:isExpectingAnswer:results:ecrResults:)(int a1, uint64_t a2, int a3, id a4)
{
  if (a4)
  {
    v5 = a4;
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logging.search);
    v7 = a4;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = a4;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_25D85C000, v8, v9, "Error performing in-app photos search: %@", v10, 0xCu);
      outlined destroy of EagerResolutionService?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x25F8A1050](v11, -1, -1);
      MEMORY[0x25F8A1050](v10, -1, -1);
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySSGs5NeverOGMd, &_sScCySaySSGs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

void thunk for @escaping @callee_guaranteed (@guaranteed [String], @guaranteed [String], @guaranteed [String], @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *(a1 + 32);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = a5;
  v6(v7, v8, v9, a5);
}

void OmniSearchService.determineRenderOption(answer:options:appsChecker:)()
{
  OUTLINED_FUNCTION_155();
  v50 = v2;
  v51 = v0;
  v49 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  type metadata accessor for SearchResultItem(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_36();
  v13 = OUTLINED_FUNCTION_61_8();
  v14 = type metadata accessor for Answer(v13);
  v15 = OUTLINED_FUNCTION_114(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_36();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v19);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v20);
  v22 = &v48 - v21;
  v23 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_36();
  v27 = v26 - v25;
  if (!v9)
  {
    goto LABEL_20;
  }

  switch(v5)
  {
    case 3:
      v28 = xmmword_25DBE8BE0;
LABEL_21:
      *v11 = v28;
      OUTLINED_FUNCTION_148();
      return;
    case 2:
LABEL_20:
      v28 = xmmword_25DBC9A70;
      goto LABEL_21;
    case 1:
      specialized Collection.first.getter(v9, v22);
      if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
      {
        outlined destroy of EagerResolutionService?(v22, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
      }

      else
      {
        OUTLINED_FUNCTION_13_39();
        v30 = OUTLINED_FUNCTION_116_0();
        outlined init with take of UserQuery(v30, v31);
        OUTLINED_FUNCTION_47_19();
        outlined init with copy of UserQuery(v27, v1);
        OUTLINED_FUNCTION_179_0();
        if (swift_getEnumCaseMultiPayload() == 28)
        {
          outlined init with take of UserQuery(v1, v18);
          if (OmniSearchService.useModelDialogForAnswer(results:options:appsChecker:)(*(v18 + 40), v49, v50))
          {
            OUTLINED_FUNCTION_4_63();
            outlined destroy of UserQuery();
            OUTLINED_FUNCTION_125_11();
            v28 = xmmword_25DBE8C00;
          }

          else
          {
            if (one-time initialization token for search != -1)
            {
              OUTLINED_FUNCTION_1_31();
              swift_once();
            }

            v42 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_200(v42, static Logging.search);
            v43 = Logger.logObject.getter();
            v44 = static os_log_type_t.info.getter();
            v45 = OUTLINED_FUNCTION_32_9();
            if (os_log_type_enabled(v45, v46))
            {
              OUTLINED_FUNCTION_51_5();
              v47 = swift_slowAlloc();
              OUTLINED_FUNCTION_157_0(v47);
              _os_log_impl(&dword_25D85C000, v43, v44, "Some source results come from apps not allowed, falling back to templated answer dialog.", v22, 2u);
              OUTLINED_FUNCTION_90();
              MEMORY[0x25F8A1050]();
            }

            OUTLINED_FUNCTION_4_63();
            outlined destroy of UserQuery();
            OUTLINED_FUNCTION_125_11();
            v28 = xmmword_25DBE8BF0;
          }

          goto LABEL_21;
        }

        OUTLINED_FUNCTION_4_63();
        outlined destroy of UserQuery();
        OUTLINED_FUNCTION_12_47();
        outlined destroy of UserQuery();
      }

      if (one-time initialization token for search != -1)
      {
        OUTLINED_FUNCTION_1_31();
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v32, static Logging.search);
      v33 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      v34 = OUTLINED_FUNCTION_32_9();
      if (os_log_type_enabled(v34, v35))
      {
        OUTLINED_FUNCTION_51_5();
        v36 = swift_slowAlloc();
        OUTLINED_FUNCTION_81_4(v36);
        OUTLINED_FUNCTION_250_5();
        _os_log_impl(v37, v38, v39, v40, v41, 2u);
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      goto LABEL_20;
  }

  *v11 = v7;
  *(v11 + 8) = v5;
  OUTLINED_FUNCTION_148();
}

uint64_t OmniSearchService.useModelDialogForAnswer(results:options:appsChecker:)(uint64_t a1, const void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_133();
  v7 = *(v6 + 80);
  if ((v7(21) & 1) == 0)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v9, static Logging.search);
    v10 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v11 = OUTLINED_FUNCTION_32_9();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_12;
    }

LABEL_11:
    OUTLINED_FUNCTION_51_5();
    v16 = swift_slowAlloc();
    OUTLINED_FUNCTION_81_4(v16);
    OUTLINED_FUNCTION_250_5();
    _os_log_impl(v17, v18, v19, v20, v21, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
LABEL_12:

    v8 = 1;
    return v8 & 1;
  }

  if ((v7(22) & 1) == 0)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v13, static Logging.search);
    v10 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v14 = OUTLINED_FUNCTION_32_9();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  memcpy(v23, a2, 0x69uLL);
  v8 = (*(*a3 + 128))(a1, v23);
  return v8 & 1;
}

void OmniSearchService.handleGlobalResults(globalResults:)()
{
  OUTLINED_FUNCTION_155();
  v2 = OUTLINED_FUNCTION_42_2();
  v3 = type metadata accessor for SearchResult(v2);
  v4 = OUTLINED_FUNCTION_21(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_109();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_183_7();
  v9 = 0;
  v10 = *(v0 + 16);
  v11 = MEMORY[0x277D84F90];
  while (v10 != v9)
  {
    OUTLINED_FUNCTION_19_40();
    outlined init with copy of UserQuery(v12, v1);
    if (closure #1 in OmniSearchService.handleGlobalResults(globalResults:)(v1))
    {
      OUTLINED_FUNCTION_13_39();
      outlined init with take of UserQuery(v1, v7);
      v28 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1);
      }

      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        v17 = OUTLINED_FUNCTION_26_3(v13);
        v27 = v18;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v17, v18, 1);
        v15 = v27;
      }

      ++v9;
      *(v11 + 16) = v15;
      OUTLINED_FUNCTION_13_39();
      v7 = v28;
      outlined init with take of UserQuery(v28, v16);
    }

    else
    {
      OUTLINED_FUNCTION_4_63();
      outlined destroy of UserQuery();
      ++v9;
    }
  }

  if (*(v11 + 16))
  {
    v19 = Dictionary.init(dictionaryLiteral:)();
    v20 = type metadata accessor for OmniSearchResponse();
    OUTLINED_FUNCTION_188_8(v20);
    OUTLINED_FUNCTION_180_7();
    OmniSearchResponse.init(results:renderOption:isQuestionQuery:isOpenQuery:searchString:perAppSearchStrings:foundProperties:)(v21, v22, v23, v24, v25, v26, v19);
  }

  else
  {
  }

  OUTLINED_FUNCTION_148();
}

uint64_t closure #1 in OmniSearchService.handleGlobalResults(globalResults:)(uint64_t a1)
{
  v2 = type metadata accessor for GlobalItem(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchResultItem(0);
  MEMORY[0x28223BE20](v5);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of UserQuery(a1, v7);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v8 = type metadata accessor for MobileSMSDocument();
      goto LABEL_33;
    case 2u:
      v8 = type metadata accessor for CalendarEvent();
      goto LABEL_33;
    case 3u:
      v8 = type metadata accessor for Photo();
      goto LABEL_33;
    case 4u:
      v8 = type metadata accessor for NoteDocument();
      goto LABEL_33;
    case 5u:
      v8 = type metadata accessor for Reminder();
      goto LABEL_33;
    case 6u:
      v8 = type metadata accessor for PhoneHistory();
      goto LABEL_33;
    case 7u:
      v8 = type metadata accessor for VoicemailTranscript();
      goto LABEL_33;
    case 8u:
      v8 = type metadata accessor for JournalEntry();
      goto LABEL_33;
    case 9u:
      v8 = type metadata accessor for VoiceMemo();
      goto LABEL_33;
    case 0xAu:
      v8 = type metadata accessor for Safari();
      goto LABEL_33;
    case 0xBu:
      v8 = type metadata accessor for FileDocument();
      goto LABEL_33;
    case 0xCu:
      v8 = type metadata accessor for WalletTransaction();
      goto LABEL_33;
    case 0xDu:
      v8 = type metadata accessor for WalletPass();
      goto LABEL_33;
    case 0xEu:
      v8 = type metadata accessor for Contact();
      goto LABEL_33;
    case 0xFu:
      v8 = type metadata accessor for Appointment();
      goto LABEL_33;
    case 0x10u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR);

      v8 = type metadata accessor for FlightReservation();
      goto LABEL_33;
    case 0x11u:
      v8 = type metadata accessor for HotelReservation();
      goto LABEL_33;
    case 0x12u:
      v8 = type metadata accessor for Party();
      goto LABEL_33;
    case 0x13u:
      v8 = type metadata accessor for RestaurantReservation();
      goto LABEL_33;
    case 0x14u:
      v8 = type metadata accessor for RentalCarReservation();
      goto LABEL_33;
    case 0x15u:
      v8 = type metadata accessor for ShippingOrder();
      goto LABEL_33;
    case 0x16u:
      v8 = type metadata accessor for TicketedTransportation();
      goto LABEL_33;
    case 0x17u:
      v8 = type metadata accessor for TicketedShow();
      goto LABEL_33;
    case 0x18u:
      v8 = type metadata accessor for Trip();
      goto LABEL_33;
    case 0x19u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMd, &_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMR);

      outlined init with take of UserQuery(v7, v4);
      if (one-time initialization token for webDomains != -1)
      {
        swift_once();
      }

      v9 = specialized Set.contains(_:)(*(v4 + 4), *(v4 + 5), static GlobalSearchClient.webDomains);
      outlined destroy of UserQuery();
      v10 = !v9;
      return v10 & 1;
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
      outlined destroy of UserQuery();
      goto LABEL_34;
    case 0x1Du:
      v8 = type metadata accessor for OnScreen();
      goto LABEL_33;
    case 0x1Eu:
      v8 = type metadata accessor for GenericSpotlightItem();
      goto LABEL_33;
    default:
      v8 = type metadata accessor for EmailDocument();
LABEL_33:
      (*(*(v8 - 8) + 8))(v7, v8);
LABEL_34:
      v10 = 1;
      return v10 & 1;
  }
}

uint64_t OmniSearchService.handlePropertyResolutionForHydrationEntity(requestedProperties:)()
{
  OUTLINED_FUNCTION_48();
  v1[13] = v2;
  v1[14] = v0;
  v3 = type metadata accessor for SpotlightRankingItem();
  v1[15] = v3;
  OUTLINED_FUNCTION_21(v3);
  v1[16] = v4;
  v1[17] = OUTLINED_FUNCTION_199();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  OUTLINED_FUNCTION_114(v5);
  v1[18] = OUTLINED_FUNCTION_160();
  v1[19] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v1[20] = v6;
  OUTLINED_FUNCTION_21(v6);
  v1[21] = v7;
  v1[22] = OUTLINED_FUNCTION_199();
  v8 = type metadata accessor for SearchResultItem(0);
  v1[23] = v8;
  OUTLINED_FUNCTION_114(v8);
  v1[24] = OUTLINED_FUNCTION_199();
  v9 = type metadata accessor for SearchResult(0);
  v1[25] = v9;
  OUTLINED_FUNCTION_21(v9);
  v1[26] = v10;
  v1[27] = OUTLINED_FUNCTION_160();
  v1[28] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
  OUTLINED_FUNCTION_114(v11);
  v1[29] = OUTLINED_FUNCTION_199();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B16PropertyResponseVSgMd, &_s10OmniSearch0B16PropertyResponseVSgMR);
  OUTLINED_FUNCTION_114(v12);
  v1[30] = OUTLINED_FUNCTION_199();
  v13 = type metadata accessor for SearchPropertyResponse(0);
  v1[31] = v13;
  OUTLINED_FUNCTION_21(v13);
  v1[32] = v14;
  v1[33] = OUTLINED_FUNCTION_199();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch15HydrationEntityVSgMd, &_s10OmniSearch15HydrationEntityVSgMR);
  OUTLINED_FUNCTION_114(v15);
  v1[34] = OUTLINED_FUNCTION_199();
  v16 = type metadata accessor for HydrationEntity(0);
  v1[35] = v16;
  OUTLINED_FUNCTION_114(v16);
  v1[36] = OUTLINED_FUNCTION_199();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch16HydrationContextVSgMd, &_s10OmniSearch16HydrationContextVSgMR);
  OUTLINED_FUNCTION_114(v17);
  v1[37] = OUTLINED_FUNCTION_199();
  v18 = type metadata accessor for HydrationContext(0);
  v1[38] = v18;
  OUTLINED_FUNCTION_114(v18);
  v1[39] = OUTLINED_FUNCTION_199();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B15PropertyRequestVSgMd, &_s10OmniSearch0B15PropertyRequestVSgMR);
  OUTLINED_FUNCTION_114(v19);
  v1[40] = OUTLINED_FUNCTION_199();
  v20 = type metadata accessor for SearchPropertyRequest(0);
  v1[41] = v20;
  OUTLINED_FUNCTION_114(v20);
  v1[42] = OUTLINED_FUNCTION_160();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v21);
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v6 = *(v5 + 232);
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;
  *(v3 + 400) = v0;

  outlined destroy of EagerResolutionService?(v6, &_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);

  if (v0)
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 56));
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9);
}

uint64_t OmniSearchService.handlePropertyResolutionForHydrationEntity(requestedProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_34_4();
  v21 = *(v20 + 104);
  if (*(v21 + 16) != 1)
  {
LABEL_10:
    v74 = *(v20 + 232);
    v75 = *(v20 + 224);
    v76 = *(v20 + 216);
    v77 = *(v20 + 192);
    v79 = *(v20 + 176);
    v80 = *(v20 + 152);
    v82 = *(v20 + 144);
    v84 = *(v20 + 136);

    OUTLINED_FUNCTION_3_13();
    OUTLINED_FUNCTION_17_4();

    return v38(v36, v37, v38, v39, v40, v41, v42, v43, v74, v75, v76, v77, v79, v80, v82, v84, a17, a18, a19, a20);
  }

  v22 = *(v20 + 328);
  specialized Collection.first.getter(v21, *(v20 + 320));
  v23 = OUTLINED_FUNCTION_11_1();
  if (__swift_getEnumTagSinglePayload(v23, v24, v22) == 1)
  {
    v25 = *(v20 + 320);
    v26 = &_s10OmniSearch0B15PropertyRequestVSgMd;
    v27 = &_s10OmniSearch0B15PropertyRequestVSgMR;
LABEL_9:
    outlined destroy of EagerResolutionService?(v25, v26, v27);
    goto LABEL_10;
  }

  v28 = *(v20 + 304);
  outlined init with take of UserQuery(*(v20 + 320), *(v20 + 352));
  EntityProperty.wrappedValue.getter();
  v29 = OUTLINED_FUNCTION_93_6();
  if (__swift_getEnumTagSinglePayload(v29, v30, v28) == 1)
  {
    v31 = *(v20 + 296);
    OUTLINED_FUNCTION_2_75();
    outlined destroy of UserQuery();
    v26 = &_s10OmniSearch16HydrationContextVSgMd;
    v27 = &_s10OmniSearch16HydrationContextVSgMR;
LABEL_8:
    v25 = v31;
    goto LABEL_9;
  }

  v32 = *(v20 + 280);
  outlined init with take of UserQuery(*(v20 + 296), *(v20 + 312));
  EntityProperty.wrappedValue.getter();
  v33 = OUTLINED_FUNCTION_93_6();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, v34, v32);
  v31 = *(v20 + 272);
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_11_53();
    outlined destroy of UserQuery();
    OUTLINED_FUNCTION_2_75();
    outlined destroy of UserQuery();
    v26 = &_s10OmniSearch15HydrationEntityVSgMd;
    v27 = &_s10OmniSearch15HydrationEntityVSgMR;
    goto LABEL_8;
  }

  v45 = OUTLINED_FUNCTION_107();
  outlined init with take of UserQuery(v45, v46);
  v47 = HydrationEntity.value.getter();
  *(v20 + 360) = v47;
  *(v20 + 368) = v48;
  if (!v48)
  {
    OUTLINED_FUNCTION_18_29();
    outlined destroy of UserQuery();
    OUTLINED_FUNCTION_11_53();
    outlined destroy of UserQuery();
    OUTLINED_FUNCTION_2_75();
    outlined destroy of UserQuery();
    goto LABEL_10;
  }

  v49 = v47;
  v50 = v48;
  if (one-time initialization token for answerResolution != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  *(v20 + 376) = __swift_project_value_buffer(v51, static Logging.answerResolution);
  OUTLINED_FUNCTION_49_24();
  v52 = OUTLINED_FUNCTION_88();
  outlined init with copy of UserQuery(v52, v53);

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = OUTLINED_FUNCTION_90_1();
    a17 = OUTLINED_FUNCTION_260();
    *v56 = 136315394;
    *(v56 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v56 + 12) = 2080;
    SearchPropertyRequest.description.getter();
    OUTLINED_FUNCTION_2_75();
    outlined destroy of UserQuery();
    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v56 + 14) = v57;
    _os_log_impl(&dword_25D85C000, v54, v55, "Attempting to resolve entityValue: %s to requestedProperty: %s", v56, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {

    OUTLINED_FUNCTION_2_75();
    outlined destroy of UserQuery();
  }

  v78 = *(v20 + 312);
  __swift_project_boxed_opaque_existential_1((*(v20 + 112) + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_answerSynthesisController), *(*(v20 + 112) + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_answerSynthesisController + 24));
  v58 = OUTLINED_FUNCTION_54_0();
  v59(v58);
  v60 = *(v20 + 48);
  v83 = __swift_project_boxed_opaque_existential_1((v20 + 16), *(v20 + 40));
  EntityProperty.wrappedValue.getter();
  v81 = *(v20 + 88);
  *(v20 + 384) = *(v20 + 96);
  EntityProperty.wrappedValue.getter();
  *(v20 + 409) = *(v20 + 408);
  *(v20 + 80) = MEMORY[0x277D837D0];
  *(v20 + 56) = v49;
  *(v20 + 64) = v50;

  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_28_0();
  v85 = v61 + *v61;
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v20 + 392) = v62;
  *v62 = v63;
  v62[1] = OmniSearchService.handlePropertyResolutionForHydrationEntity(requestedProperties:);
  OUTLINED_FUNCTION_17_4();

  return v72(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, v78, v60 + 24, v81, v83, v85, a17, a18, a19, a20);
}

{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_34_4();
  v30 = v20[30];
  v31 = v20[29];
  v32 = v20[28];
  v33 = v20[27];
  v34 = v20[24];
  v35 = v20[22];
  v36 = v20[19];
  v37 = v20[18];
  v38 = v20[17];
  OUTLINED_FUNCTION_18_29();
  outlined destroy of UserQuery();
  OUTLINED_FUNCTION_11_53();
  outlined destroy of UserQuery();
  OUTLINED_FUNCTION_2_75();
  outlined destroy of UserQuery();
  __swift_destroy_boxed_opaque_existential_1Tm(v20 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v20 + 2);

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_17_4();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, v30, v31, v32, v33, v34, v35, v36, v37, v38, a18, a19, a20);
}

void OmniSearchService.handlePropertyResolutionForHydrationEntity(requestedProperties:)()
{
  v1 = v0[30];
  v2 = OUTLINED_FUNCTION_11_1();
  if (__swift_getEnumTagSinglePayload(v2, v3, v4) == 1)
  {
    v5 = v0[44];
    v6 = v0[42];
    outlined destroy of EagerResolutionService?(v1, &_s10OmniSearch0B16PropertyResponseVSgMd, &_s10OmniSearch0B16PropertyResponseVSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    OUTLINED_FUNCTION_49_24();
    outlined init with copy of UserQuery(v5, v6);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = OUTLINED_FUNCTION_90_1();
      OUTLINED_FUNCTION_260();
      *v9 = 136643075;
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v9 + 4) = v10;
      *(v9 + 12) = 2080;
      SearchPropertyRequest.description.getter();
      OUTLINED_FUNCTION_2_75();
      outlined destroy of UserQuery();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v9 + 14) = v11;
      _os_log_impl(&dword_25D85C000, v7, v8, "Unable to resolve the hydration entity value: %{sensitive}s to the desired requested property: %s, returning empty search results", v9, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    else
    {

      OUTLINED_FUNCTION_2_75();
      outlined destroy of UserQuery();
    }

    v44 = Dictionary.init(dictionaryLiteral:)();
    v45 = type metadata accessor for OmniSearchResponse();
    OUTLINED_FUNCTION_188_8(v45);
    OUTLINED_FUNCTION_180_7();
    OmniSearchResponse.init(results:renderOption:isQuestionQuery:isOpenQuery:searchString:perAppSearchStrings:foundProperties:)(v46, v47, v48, v49, v50, v51, v44);
    OUTLINED_FUNCTION_18_29();
    outlined destroy of UserQuery();
    OUTLINED_FUNCTION_11_53();
    outlined destroy of UserQuery();
  }

  else
  {
    v12 = v0[45];
    v78 = v0[46];
    v13 = v0[27];
    v15 = v0[24];
    v14 = v0[25];
    v16 = v0[22];
    v81 = v0[18];
    v79 = v0[19];
    v80 = v0[15];
    outlined init with take of UserQuery(v1, v0[33]);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    UUID.init()();
    v17 = v16;
    UUID.uuidString.getter();
    OUTLINED_FUNCTION_33_27();
    v18 = OUTLINED_FUNCTION_241_0();
    v19(v18);
    v20 = type metadata accessor for Answer(0);
    type metadata accessor for URL();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
    v25 = MEMORY[0x277D84F90];
    v26 = Dictionary.init(dictionaryLiteral:)();
    *v15 = v17;
    v15[1] = v1;
    v15[2] = v12;
    v15[3] = v78;
    v15[4] = v26;
    v15[5] = v25;
    v15[6] = v25;
    *(v15 + v20[10]) = 0;
    v27 = (v15 + v20[11]);
    *v27 = 0;
    v27[1] = 0;
    *(v15 + v20[12]) = xmmword_25DBC9410;
    swift_storeEnumTagMultiPayload();
    v28 = [objc_allocWithZone(MEMORY[0x277CC34B0]) init];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v80);
    *(v13 + *(v14 + 28)) = v25;
    OUTLINED_FUNCTION_39_20(*(v14 + 40));
    OUTLINED_FUNCTION_47_19();
    outlined init with copy of UserQuery(v15, v13);
    v82 = v14;
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
    lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
    v32 = v28;
    CodableNSSecureCoding.init(wrappedValue:)();
    outlined init with copy of SpotlightRankingItem?(v79, v81, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    v33 = OUTLINED_FUNCTION_11_1();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, v34, v80);
    v36 = v0[27];
    v37 = v0[25];
    v39 = v0[18];
    v38 = v0[19];
    if (EnumTagSinglePayload == 1)
    {
      v40 = OUTLINED_FUNCTION_194_7();
      outlined destroy of EagerResolutionService?(v40, v41, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      OUTLINED_FUNCTION_27_16();
      OUTLINED_FUNCTION_27_16();
      OUTLINED_FUNCTION_27_16();
      OUTLINED_FUNCTION_27_16();
      OUTLINED_FUNCTION_27_16();
      OUTLINED_FUNCTION_19_18();

      v42 = OUTLINED_FUNCTION_54_0();
      outlined destroy of EagerResolutionService?(v42, v43, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      OUTLINED_FUNCTION_12_47();
      outlined destroy of UserQuery();
    }

    else
    {
      v53 = v0[16];
      v52 = v0[17];
      v54 = v0[15];

      outlined destroy of EagerResolutionService?(v38, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      OUTLINED_FUNCTION_12_47();
      outlined destroy of UserQuery();
      v55 = *(v53 + 32);
      v55(v52, v39, v54);
      v55(v36 + *(v37 + 20), v52, v54);
    }

    v56 = v0[32];
    v57 = v0[33];
    v58 = v0[27];
    v59 = v0[28];
    v60 = v0[25];
    v61 = v0[26];
    *(v58 + *(v60 + 32)) = 0;
    *(v58 + *(v60 + 36)) = 1;
    OUTLINED_FUNCTION_13_39();
    outlined init with take of UserQuery(v62, v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E16PropertyResponseVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E16PropertyResponseVGMR);
    v63 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_25DBC8180;
    outlined init with copy of UserQuery(v57, v64 + v63);
    v65 = *(v82 + 28);

    *(v59 + v65) = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVGMR);
    v66 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    *(swift_allocObject() + 16) = xmmword_25DBC8180;
    OUTLINED_FUNCTION_19_40();
    outlined init with copy of UserQuery(v59, v67 + v66);
    v68 = Dictionary.init(dictionaryLiteral:)();
    v69 = type metadata accessor for OmniSearchResponse();
    OUTLINED_FUNCTION_188_8(v69);
    OUTLINED_FUNCTION_180_7();
    OmniSearchResponse.init(results:renderOption:isQuestionQuery:isOpenQuery:searchString:perAppSearchStrings:foundProperties:)(v70, v71, v72, v73, v74, v75, v68);
    outlined destroy of UserQuery();
    OUTLINED_FUNCTION_18_29();
    outlined destroy of UserQuery();
    OUTLINED_FUNCTION_11_53();
    outlined destroy of UserQuery();
    OUTLINED_FUNCTION_2_75();
    outlined destroy of UserQuery();
  }

  outlined destroy of UserQuery();

  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_156_7();

  __asm { BRAA            X2, X16 }
}

void OmniSearchService.checkForOverride(query:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v2 = type metadata accessor for UserQuery(0);
  v3 = OUTLINED_FUNCTION_114(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  v4 = type metadata accessor for SearchResult(0);
  v5 = OUTLINED_FUNCTION_21(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  v8 = v7 - v6;
  v25 = static SearchOverrides.read()(v9);
  v39 = v8;
  v26 = (v25 + 40);
  v27 = *(v25 + 16) + 1;
  do
  {
    if (!--v27)
    {
      goto LABEL_21;
    }

    v28 = v26[1];
    v29 = v26[3];
    if (*(v26 - 1) == *(v1 + 16) && *v26 == *(v1 + 24))
    {
      break;
    }

    v26 += 7;
  }

  while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0);

  if (!v28)
  {

LABEL_21:

    goto LABEL_22;
  }

  v31 = *(v28 + 16);
  if (v31)
  {
    v41 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 0);
    v32 = 0;
    v33 = v39;
    while (v32 < *(v28 + 16))
    {
      v1 = v31;
      v34 = *(v28 + 8 * v32 + 32);
      SearchResult.init(overridePayload:)(v34, v33);

      v36 = *(v41 + 16);
      v35 = *(v41 + 24);
      if (v36 >= v35 >> 1)
      {
        v38 = OUTLINED_FUNCTION_26_3(v35);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v38, v36 + 1, 1);
      }

      ++v32;
      *(v41 + 16) = v36 + 1;
      OUTLINED_FUNCTION_13_39();
      v33 = v39;
      outlined init with take of UserQuery(v39, v37);
      v31 = v1;
      if (v1 == v32)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    OUTLINED_FUNCTION_142_0(&one-time initialization token for stextension);
    v10 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v10, static Logging.stextension);
    OUTLINED_FUNCTION_16_44();
    outlined init with copy of UserQuery(v1, v29);
    v11 = 0;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = OUTLINED_FUNCTION_90_1();
      v15 = OUTLINED_FUNCTION_173_0();
      v40 = OUTLINED_FUNCTION_49_0();
      *v14 = 136315394;

      OUTLINED_FUNCTION_3_68();
      outlined destroy of UserQuery();
      OUTLINED_FUNCTION_179_0();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v14 + 4) = v16;
      *(v14 + 12) = 2112;
      v17 = 0;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v18;
      *v15 = v18;
      _os_log_impl(&dword_25D85C000, v12, v13, "Failed to handle overrides for rewrittenQuery: %s - %@. Defaulting to regular search.", v14, 0x16u);
      outlined destroy of EagerResolutionService?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050](v19, v20);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050](v21, v22);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050](v23, v24);
    }

    else
    {

      OUTLINED_FUNCTION_3_68();
      outlined destroy of UserQuery();
    }
  }

  else
  {
LABEL_17:
  }

LABEL_22:
  OUTLINED_FUNCTION_148();
}

uint64_t OmniSearchService.handleShortCircuitPhotoSearch(for:options:typeIdentifiers:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  *(v1 + 160) = v4;
  *(v1 + 168) = v0;
  *(v1 + 152) = v5;
  v6 = type metadata accessor for Locale();
  *(v1 + 176) = v6;
  OUTLINED_FUNCTION_21(v6);
  *(v1 + 184) = v7;
  *(v1 + 192) = OUTLINED_FUNCTION_199();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  OUTLINED_FUNCTION_114(v8);
  *(v1 + 200) = OUTLINED_FUNCTION_160();
  *(v1 + 208) = swift_task_alloc();
  *(v1 + 296) = *(v3 + 98);
  v9 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v9);
}

{
  OUTLINED_FUNCTION_230_4();
  type metadata accessor for FeatureFlagService();
  swift_initStackObject();
  if (!FeatureFlagService.isEnabled(_:)(OmniSearch_FeatureFlagService_FeatureFlag_shortCircuitPhotoSearch) || (v1 = objc_opt_self(), v2 = [v1 processInfo], v3 = NSProcessInfo.isSearchToolExtensin.getter(), v2, (v3 & 1) == 0))
  {
    if (one-time initialization token for stextension != -1)
    {
      OUTLINED_FUNCTION_142_0(&one-time initialization token for stextension);
    }

    v9 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v9, static Logging.stextension);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = OUTLINED_FUNCTION_90_1();
      OUTLINED_FUNCTION_260();
      *v12 = 136315394;
      v13 = [objc_opt_self() processInfo];
      v14 = [v13 processName];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_141_0();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      swift_initStackObject();
      FeatureFlagService.isEnabled(_:)(OmniSearch_FeatureFlagService_FeatureFlag_shortCircuitPhotoSearch);
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v12 + 14) = v16;
      _os_log_impl(&dword_25D85C000, v10, v11, "Short-circuiting is disabled for process: %s, shortCircuitPhotoSearch FeatureFlag: %s", v12, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    goto LABEL_11;
  }

  v4 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
  if ((static NSUserDefaults.enablePhotosInAppSearch.getter(v4) & 1) == 0)
  {
    if (one-time initialization token for stextension != -1)
    {
      OUTLINED_FUNCTION_142_0(&one-time initialization token for stextension);
    }

    v19 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v19, static Logging.stextension);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_16_11(v21))
    {
      OUTLINED_FUNCTION_51_0();
      OUTLINED_FUNCTION_11_26();
      *v3 = 136315138;
      v22 = [v1 processInfo];
      v23 = [v22 processName];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v3 + 4) = v24;
      OUTLINED_FUNCTION_165_6(&dword_25D85C000, v20, v4, "Short-circuiting is disabled for process: %s, UserDefaults's enablePhotosInAppSearch isn't set to true", v109);
      OUTLINED_FUNCTION_54_26();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    goto LABEL_11;
  }

  v5 = *(v0 + 208);
  v6 = *(v0 + 152);
  v7 = type metadata accessor for UserQuery(0);
  v117 = *(v7 + 28);
  outlined init with copy of SpotlightRankingItem?(v6 + v117, v5, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  Entity = type metadata accessor for StructuredQueryEntity(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, Entity) == 1)
  {
    outlined destroy of EagerResolutionService?(*(v0 + 208), &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
    goto LABEL_11;
  }

  EntityProperty.wrappedValue.getter();
  v25 = *(v0 + 128);
  OUTLINED_FUNCTION_5_55();
  outlined destroy of UserQuery();
  if (!v25)
  {
LABEL_11:

    OUTLINED_FUNCTION_3_13();
    OUTLINED_FUNCTION_252();

    __asm { BRAA            X2, X16 }
  }

  v26 = *(v25 + 16);
  if (!v26)
  {
LABEL_131:

    goto LABEL_11;
  }

  v27 = 0;
  v115 = v25;
  v116 = v25 + 32;
  v114 = v7;
  v112 = Entity;
  v113 = v6;
  v110 = *(v25 + 16);
  while (1)
  {
    if (v27 == v26)
    {
      if ((*(v0 + 296) & 1) == 0 && !*(*(v0 + 160) + 16))
      {
        if (one-time initialization token for stextension != -1)
        {
          goto LABEL_201;
        }

        goto LABEL_133;
      }

      goto LABEL_131;
    }

    if (v27 >= *(v25 + 16))
    {
      break;
    }

    v28 = *(v116 + v27);
    if (one-time initialization token for ShortCircuitPhotoFilterTypes != -1)
    {
      v60 = v27;
      swift_once();
      v27 = v60;
    }

    v29 = static OmniSearchService.ShortCircuitPhotoFilterTypes;
    if (!*(static OmniSearchService.ShortCircuitPhotoFilterTypes + 2))
    {
      goto LABEL_131;
    }

    v118 = v27;
    v30 = specialized RawRepresentable<>._rawHashValue(seed:)(*(static OmniSearchService.ShortCircuitPhotoFilterTypes + 5), v28);
    v31 = -1 << v29[32];
    v32 = v30 & ~v31;
    if (((*&v29[((v32 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v32) & 1) == 0)
    {
      goto LABEL_131;
    }

    v119 = v118 + 1;
    v33 = ~v31;
    while (1)
    {
      v34 = 0xE500000000000000;
      v35 = 0x6D72616C61;
      switch(*(*(v29 + 6) + v32))
      {
        case 1:
          v34 = 0xE400000000000000;
          v35 = 1802465122;
          break;
        case 2:
          v34 = 0xE800000000000000;
          v35 = OUTLINED_FUNCTION_38_4();
          break;
        case 3:
          v34 = 0xE700000000000000;
          v35 = 0x746361746E6F63;
          break;
        case 4:
          v35 = 0x61737265766E6F63;
          v39 = 1852795252;
          goto LABEL_56;
        case 5:
          v35 = OUTLINED_FUNCTION_193_7();
          v37 = 0xE50000656C690000;
          goto LABEL_54;
        case 6:
          v35 = OUTLINED_FUNCTION_193_7();
          v34 = 0xEF7265646C6F0000;
          break;
        case 7:
          v34 = 0xE800000000000000;
          v35 = 0x6D726F6665657266;
          break;
        case 8:
          v34 = 0xE700000000000000;
          v35 = 0x6C616E72756F6ALL;
          break;
        case 9:
          v34 = 0xE700000000000000;
          v40 = 0x746F6E79656BLL;
          goto LABEL_69;
        case 0xA:
          v34 = 0xE400000000000000;
          v35 = 1818845549;
          break;
        case 0xB:
          v34 = 0xE600000000000000;
          v35 = 0x79726F6D656DLL;
          break;
        case 0xC:
          v34 = 0xE700000000000000;
          v40 = 0x67617373656DLL;
          goto LABEL_69;
        case 0xD:
          v34 = 0xE400000000000000;
          v35 = 1702129518;
          break;
        case 0xE:
          OUTLINED_FUNCTION_69_2();
          v34 = v38 + 1264;
          v35 = 0x646C6F4665746F6ELL;
          break;
        case 0xF:
          v35 = 0x46737265626D756ELL;
          v34 = 0xEB00000000656C69;
          break;
        case 0x10:
          v35 = 0x6C69467365676170;
          v34 = 0xE900000000000065;
          break;
        case 0x11:
          v36 = 1852794992;
          goto LABEL_51;
        case 0x12:
          v42 = 1953458288;
          goto LABEL_64;
        case 0x13:
          v35 = 0x626C416F746F6870;
          v34 = 0xEA00000000006D75;
          break;
        case 0x14:
          v34 = 0xE800000000000000;
          v35 = OUTLINED_FUNCTION_123_1();
          break;
        case 0x15:
          v35 = OUTLINED_FUNCTION_123_1();
          v39 = 1953720652;
          goto LABEL_56;
        case 0x16:
          v34 = 0xE300000000000000;
          v35 = 6447476;
          break;
        case 0x17:
          v35 = 0x72656D6974;
          break;
        case 0x18:
          v42 = 1701079414;
          goto LABEL_64;
        case 0x19:
          OUTLINED_FUNCTION_124_1();
          v34 = v41 + 7;
          v35 = 0x69616D6563696F76;
          break;
        case 0x1A:
          OUTLINED_FUNCTION_124_1();
          v34 = v45 + 10;
          goto LABEL_73;
        case 0x1B:
          v34 = 0xE600000000000000;
          v35 = 0x74656C6C6177;
          break;
        case 0x1C:
          v34 = 0xE700000000000000;
          v40 = 0x746973626577;
LABEL_69:
          v35 = v40 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
          break;
        case 0x1D:
          v34 = 0xE800000000000000;
          v35 = 0x616D61726F6E6170;
          break;
        case 0x1E:
          OUTLINED_FUNCTION_69_2();
          v34 = v43 + 1786;
          v35 = 0x68736E6565726373;
          break;
        case 0x1F:
          v34 = 0xE600000000000000;
          v35 = 0x6569666C6573;
          break;
        case 0x20:
          v42 = 1836018803;
LABEL_64:
          v35 = v42 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
          break;
        case 0x21:
          v35 = 0x566C616974617073;
          v39 = 1868915817;
LABEL_56:
          v34 = v39 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 0x22:
          v35 = OUTLINED_FUNCTION_38_4();
          v37 = 0x746E657645;
LABEL_54:
          v34 = v37 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 0x23:
          v34 = 0xE400000000000000;
          v35 = 1802398060;
          break;
        case 0x24:
          v36 = 1769369453;
LABEL_51:
          v35 = v36 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
          break;
        case 0x25:
          v34 = 0xE600000000000000;
          v35 = 0x697261666173;
          break;
        case 0x26:
          OUTLINED_FUNCTION_69_2();
          v34 = v44 + 1530;
LABEL_73:
          v35 = 0x6D654D6563696F76;
          break;
        default:
          break;
      }

      v46 = 0xE500000000000000;
      v47 = 0x6D72616C61;
      switch(v28)
      {
        case 1:
          v46 = 0xE400000000000000;
          v47 = 1802465122;
          break;
        case 2:
          v46 = 0xE800000000000000;
          OUTLINED_FUNCTION_34_6();
          break;
        case 3:
          v46 = 0xE700000000000000;
          v47 = 0x746361746E6F63;
          break;
        case 4:
          v47 = 0x61737265766E6F63;
          v51 = 1852795252;
          goto LABEL_101;
        case 5:
          OUTLINED_FUNCTION_189_6();
          v49 = 0xE50000656C690000;
          goto LABEL_99;
        case 6:
          OUTLINED_FUNCTION_189_6();
          v46 = 0xEF7265646C6F0000;
          break;
        case 7:
          v46 = 0xE800000000000000;
          v47 = 0x6D726F6665657266;
          break;
        case 8:
          v46 = 0xE700000000000000;
          v47 = 0x6C616E72756F6ALL;
          break;
        case 9:
          v46 = 0xE700000000000000;
          v52 = 0x746F6E79656BLL;
          goto LABEL_114;
        case 10:
          v46 = 0xE400000000000000;
          v47 = 1818845549;
          break;
        case 11:
          v46 = 0xE600000000000000;
          v47 = 0x79726F6D656DLL;
          break;
        case 12:
          v46 = 0xE700000000000000;
          v52 = 0x67617373656DLL;
          goto LABEL_114;
        case 13:
          v46 = 0xE400000000000000;
          v47 = 1702129518;
          break;
        case 14:
          OUTLINED_FUNCTION_69_2();
          v46 = v50 + 1264;
          v47 = 0x646C6F4665746F6ELL;
          break;
        case 15:
          v47 = 0x46737265626D756ELL;
          v46 = 0xEB00000000656C69;
          break;
        case 16:
          v47 = 0x6C69467365676170;
          v46 = 0xE900000000000065;
          break;
        case 17:
          v48 = 1852794992;
          goto LABEL_96;
        case 18:
          v54 = 1953458288;
          goto LABEL_109;
        case 19:
          v47 = 0x626C416F746F6870;
          v46 = 0xEA00000000006D75;
          break;
        case 20:
          v46 = 0xE800000000000000;
          OUTLINED_FUNCTION_104_1();
          break;
        case 21:
          OUTLINED_FUNCTION_104_1();
          v51 = 1953720652;
          goto LABEL_101;
        case 22:
          v46 = 0xE300000000000000;
          v47 = 6447476;
          break;
        case 23:
          v47 = 0x72656D6974;
          break;
        case 24:
          v54 = 1701079414;
          goto LABEL_109;
        case 25:
          OUTLINED_FUNCTION_124_1();
          v46 = v53 + 7;
          v47 = 0x69616D6563696F76;
          break;
        case 26:
          OUTLINED_FUNCTION_124_1();
          v46 = v57 + 10;
          goto LABEL_118;
        case 27:
          v46 = 0xE600000000000000;
          v47 = 0x74656C6C6177;
          break;
        case 28:
          v46 = 0xE700000000000000;
          v52 = 0x746973626577;
LABEL_114:
          v47 = v52 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
          break;
        case 29:
          v46 = 0xE800000000000000;
          v47 = 0x616D61726F6E6170;
          break;
        case 30:
          OUTLINED_FUNCTION_69_2();
          v46 = v55 + 1786;
          v47 = 0x68736E6565726373;
          break;
        case 31:
          v46 = 0xE600000000000000;
          v47 = 0x6569666C6573;
          break;
        case 32:
          v54 = 1836018803;
LABEL_109:
          v47 = v54 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
          break;
        case 33:
          v47 = 0x566C616974617073;
          v51 = 1868915817;
LABEL_101:
          v46 = v51 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 34:
          OUTLINED_FUNCTION_34_6();
          v49 = 0x746E657645;
LABEL_99:
          v46 = v49 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 35:
          v46 = 0xE400000000000000;
          v47 = 1802398060;
          break;
        case 36:
          v48 = 1769369453;
LABEL_96:
          v47 = v48 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
          break;
        case 37:
          v46 = 0xE600000000000000;
          v47 = 0x697261666173;
          break;
        case 38:
          OUTLINED_FUNCTION_69_2();
          v46 = v56 + 1530;
LABEL_118:
          v47 = 0x6D654D6563696F76;
          break;
        default:
          break;
      }

      if (v35 == v47 && v34 == v46)
      {
        break;
      }

      v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v59)
      {
        goto LABEL_127;
      }

      v32 = (v32 + 1) & v33;
      if (((*&v29[((v32 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v32) & 1) == 0)
      {
        goto LABEL_131;
      }
    }

LABEL_127:
    v7 = v114;
    Entity = v112;
    v6 = v113;
    v25 = v115;
    v26 = v110;
    v27 = v119;
  }

  __break(1u);
LABEL_201:
  OUTLINED_FUNCTION_142_0(&one-time initialization token for stextension);
LABEL_133:
  v61 = type metadata accessor for Logger();
  *(v0 + 216) = OUTLINED_FUNCTION_200(v61, static Logging.stextension);

  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = OUTLINED_FUNCTION_51_0();
    OUTLINED_FUNCTION_49_0();
    v111 = v64;
    *v64 = 136315138;
    v65 = *(v115 + 16);
    v120 = v62;
    if (v65)
    {
      v121 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v65, 0);
      v66 = v115;
      v67 = 32;
      v68 = v121;
      do
      {
        v69 = 0xE500000000000000;
        v70 = 0x6D72616C61;
        switch(*(v66 + v67))
        {
          case 1:
            v69 = 0xE400000000000000;
            v70 = 1802465122;
            break;
          case 2:
            v69 = 0xE800000000000000;
            OUTLINED_FUNCTION_249_4();
            break;
          case 3:
            v69 = 0xE700000000000000;
            v70 = 0x746361746E6F63;
            break;
          case 4:
            v70 = 0x61737265766E6F63;
            v74 = 1852795252;
            goto LABEL_163;
          case 5:
            OUTLINED_FUNCTION_197_8();
            v72 = 0xE50000656C690000;
            goto LABEL_161;
          case 6:
            OUTLINED_FUNCTION_197_8();
            v69 = 0xEF7265646C6F0000;
            break;
          case 7:
            v69 = 0xE800000000000000;
            v70 = 0x6D726F6665657266;
            break;
          case 8:
            v69 = 0xE700000000000000;
            v70 = 0x6C616E72756F6ALL;
            break;
          case 9:
            v69 = 0xE700000000000000;
            v75 = 0x746F6E79656BLL;
            goto LABEL_176;
          case 0xA:
            v69 = 0xE400000000000000;
            v70 = 1818845549;
            break;
          case 0xB:
            v69 = 0xE600000000000000;
            v70 = 0x79726F6D656DLL;
            break;
          case 0xC:
            v69 = 0xE700000000000000;
            v75 = 0x67617373656DLL;
            goto LABEL_176;
          case 0xD:
            v69 = 0xE400000000000000;
            v70 = 1702129518;
            break;
          case 0xE:
            OUTLINED_FUNCTION_69_2();
            v69 = v73 + 1264;
            v70 = 0x646C6F4665746F6ELL;
            break;
          case 0xF:
            v70 = 0x46737265626D756ELL;
            v69 = 0xEB00000000656C69;
            break;
          case 0x10:
            v70 = 0x6C69467365676170;
            v69 = 0xE900000000000065;
            break;
          case 0x11:
            v71 = 1852794992;
            goto LABEL_158;
          case 0x12:
            v77 = 1953458288;
            goto LABEL_171;
          case 0x13:
            v70 = 0x626C416F746F6870;
            v69 = 0xEA00000000006D75;
            break;
          case 0x14:
            v69 = 0xE800000000000000;
            OUTLINED_FUNCTION_243_4();
            break;
          case 0x15:
            OUTLINED_FUNCTION_243_4();
            v74 = 1953720652;
            goto LABEL_163;
          case 0x16:
            v69 = 0xE300000000000000;
            v70 = 6447476;
            break;
          case 0x17:
            v70 = 0x72656D6974;
            break;
          case 0x18:
            v77 = 1701079414;
            goto LABEL_171;
          case 0x19:
            OUTLINED_FUNCTION_124_1();
            v69 = v76 + 7;
            v70 = 0x69616D6563696F76;
            break;
          case 0x1A:
            OUTLINED_FUNCTION_124_1();
            v69 = v80 + 10;
            goto LABEL_180;
          case 0x1B:
            v69 = 0xE600000000000000;
            v70 = 0x74656C6C6177;
            break;
          case 0x1C:
            v69 = 0xE700000000000000;
            v75 = 0x746973626577;
LABEL_176:
            v70 = v75 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
            break;
          case 0x1D:
            v69 = 0xE800000000000000;
            v70 = 0x616D61726F6E6170;
            break;
          case 0x1E:
            OUTLINED_FUNCTION_69_2();
            v69 = v78 + 1786;
            v70 = 0x68736E6565726373;
            break;
          case 0x1F:
            v69 = 0xE600000000000000;
            v70 = 0x6569666C6573;
            break;
          case 0x20:
            v77 = 1836018803;
LABEL_171:
            v70 = v77 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
            break;
          case 0x21:
            v70 = 0x566C616974617073;
            v74 = 1868915817;
LABEL_163:
            v69 = v74 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 0x22:
            OUTLINED_FUNCTION_249_4();
            v72 = 0x746E657645;
LABEL_161:
            v69 = v72 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 0x23:
            v69 = 0xE400000000000000;
            v70 = 1802398060;
            break;
          case 0x24:
            v71 = 1769369453;
LABEL_158:
            v70 = v71 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
            break;
          case 0x25:
            v69 = 0xE600000000000000;
            v70 = 0x697261666173;
            break;
          case 0x26:
            OUTLINED_FUNCTION_69_2();
            v69 = v79 + 1530;
LABEL_180:
            v70 = 0x6D654D6563696F76;
            break;
          default:
            break;
        }

        v82 = *(v121 + 16);
        v81 = *(v121 + 24);
        if (v82 >= v81 >> 1)
        {
          v84 = OUTLINED_FUNCTION_26_3(v81);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v84, v82 + 1, 1);
          v66 = v115;
        }

        *(v121 + 16) = v82 + 1;
        v83 = v121 + 16 * v82;
        *(v83 + 32) = v70;
        *(v83 + 40) = v69;
        ++v67;
        --v65;
      }

      while (v65);

      v7 = v114;
      Entity = v112;
      v6 = v113;
    }

    else
    {

      v68 = MEMORY[0x277D84F90];
      v7 = v114;
    }

    *(v0 + 144) = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    BidirectionalCollection<>.joined(separator:)();

    v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v111 + 1) = v85;
    OUTLINED_FUNCTION_200_5();
    _os_log_impl(v86, v87, v88, v89, v90, 0xCu);
    OUTLINED_FUNCTION_195_6();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {
  }

  v91 = *(v0 + 200);
  outlined init with copy of SpotlightRankingItem?(v6 + v117, v91, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  if (__swift_getEnumTagSinglePayload(v91, 1, Entity) == 1)
  {
    outlined destroy of EagerResolutionService?(*(v0 + 200), &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
    v92 = 0;
  }

  else
  {
    EntityProperty.wrappedValue.getter();
    v92 = *(v0 + 136);
    OUTLINED_FUNCTION_5_55();
    outlined destroy of UserQuery();
  }

  v93 = *(v0 + 152);
  *(v0 + 224) = static InAppSearchStringGeneratorUtils.parse(people:)(v92);

  if (!*(v93 + *(v7 + 32) + 8))
  {
    static NSUserDefaults.fallbackLocale.getter(0, v94, v95, v96, v97);
    OUTLINED_FUNCTION_33_27();
  }

  OUTLINED_FUNCTION_107();
  Locale.init(identifier:)();
  type metadata accessor for ECRClient();
  OUTLINED_FUNCTION_128_2();
  swift_allocObject();
  v98 = ECRClient.init()();
  *(v0 + 232) = v98;
  if (v98)
  {
    v99 = swift_task_alloc();
    *(v0 + 240) = v99;
    *v99 = v0;
    v99[1] = OmniSearchService.handleShortCircuitPhotoSearch(for:options:typeIdentifiers:);
    OUTLINED_FUNCTION_252();

    __asm { BRAA            X2, X16 }
  }

  *(v0 + 264) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVGMR);
  v102 = OUTLINED_FUNCTION_47_1();
  v103 = type metadata accessor for SearchResult(v102);
  OUTLINED_FUNCTION_21(v103);
  v104 = OUTLINED_FUNCTION_186_5();
  *(v0 + 272) = v104;
  *(v104 + 16) = xmmword_25DBC9D00;
  OmniSearchService.makeShortCircuitMockPhotoResult()();
  OmniSearchService.makeShortCircuitMockPhotoResult()();
  v105 = swift_task_alloc();
  *(v0 + 280) = v105;
  *v105 = v0;
  OUTLINED_FUNCTION_40_26(v105);
  OUTLINED_FUNCTION_49_4(v106);
  OUTLINED_FUNCTION_252();

  return OmniSearchService.handlePhotosResultsForEval(query:typeIdentifiers:isExpectingAnswer:results:ecrResults:)();
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_51_19();
  v4 = v3;
  OUTLINED_FUNCTION_19_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v4 + 248) = v0;

  if (!v0)
  {

    *(v4 + 256) = v1;
  }

  OUTLINED_FUNCTION_20_4();

  return MEMORY[0x2822009F8](v8);
}

{
  OUTLINED_FUNCTION_78();
  v0[33] = v0[32];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVGMR);
  v1 = OUTLINED_FUNCTION_42_2();
  v2 = type metadata accessor for SearchResult(v1);
  OUTLINED_FUNCTION_21(v2);
  v3 = swift_allocObject();
  v0[34] = v3;
  *(v3 + 16) = xmmword_25DBC9D00;
  OmniSearchService.makeShortCircuitMockPhotoResult()();
  OmniSearchService.makeShortCircuitMockPhotoResult()();
  v4 = swift_task_alloc();
  v0[35] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_40_26(v4);
  OUTLINED_FUNCTION_49_4(v5);

  return OmniSearchService.handlePhotosResultsForEval(query:typeIdentifiers:isExpectingAnswer:results:ecrResults:)();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *(v6 + 288) = v5;

  v7 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_183_4();
  OUTLINED_FUNCTION_159();
  v1 = v0[28];

  OUTLINED_FUNCTION_128_2();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  OUTLINED_FUNCTION_131();
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for implicit closure #7 in OmniSearchService.handleShortCircuitPhotoSearch(for:options:typeIdentifiers:);
  *(v3 + 24) = v2;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v6 = swift_allocObject();
  *(v6 + 16) = 32;
  v7 = swift_allocObject();
  *(v7 + 16) = 8;
  OUTLINED_FUNCTION_131();
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for specialized implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:);
  *(v8 + 24) = v3;
  OUTLINED_FUNCTION_131();
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v9 + 24) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC8400;
  *(inited + 32) = partial apply for closure #1 in OSLogArguments.append(_:);
  *(inited + 40) = v6;
  *(inited + 48) = closure #1 in OSLogArguments.append(_:)partial apply;
  *(inited + 56) = v7;
  *(inited + 64) = partial apply for closure #1 in OSLogArguments.append(_:);
  *(inited + 72) = v9;
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v11 = os_log_type_enabled(v4, v5);
  v12 = v0[31];
  if (v11)
  {
    v13 = MEMORY[0x277D84F90];
    v14 = v0[28];
    v15 = OUTLINED_FUNCTION_51_0();
    OUTLINED_FUNCTION_49_0();
    *v15 = 136315138;
    if (!v14)
    {
      v1 = v13;
    }

    MEMORY[0x25F89F8A0](v1, MEMORY[0x277D837D0]);

    OUTLINED_FUNCTION_158();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v15 + 4) = v16;
    _os_log_impl(&dword_25D85C000, v4, v5, "Could not get ecr grounding for %s", v15, 0xCu);
    OUTLINED_FUNCTION_195_6();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {
  }

  v0[33] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVGMR);
  v17 = OUTLINED_FUNCTION_47_1();
  v18 = type metadata accessor for SearchResult(v17);
  OUTLINED_FUNCTION_21(v18);
  v19 = OUTLINED_FUNCTION_186_5();
  v0[34] = v19;
  *(v19 + 16) = xmmword_25DBC9D00;
  OmniSearchService.makeShortCircuitMockPhotoResult()();
  OmniSearchService.makeShortCircuitMockPhotoResult()();
  v20 = swift_task_alloc();
  v0[35] = v20;
  *v20 = v0;
  OUTLINED_FUNCTION_40_26(v20);
  OUTLINED_FUNCTION_49_4(v21);
  OUTLINED_FUNCTION_136_7();

  return OmniSearchService.handlePhotosResultsForEval(query:typeIdentifiers:isExpectingAnswer:results:ecrResults:)();
}

uint64_t OmniSearchService.handleShortCircuitPhotoSearch(for:options:typeIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_183_4();
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_242_4();
  UserQuery.inAppSearchString(ecrResults:bundleId:)(v42, v21);
  OUTLINED_FUNCTION_33_27();

  if (!v19)
  {
  }

  v23 = v20[23];
  v22 = v20[24];
  v24 = v20[22];
  v25 = Dictionary.init(dictionaryLiteral:)();
  v26 = type metadata accessor for OmniSearchResponse();
  OUTLINED_FUNCTION_188_8(v26);
  OUTLINED_FUNCTION_134_11();
  OmniSearchResponse.init(results:renderOption:isQuestionQuery:isOpenQuery:searchString:perAppSearchStrings:foundProperties:)(v27, v28, v29, v30, v31, v32, v25);
  (*(v23 + 8))(v22, v24);

  OUTLINED_FUNCTION_31_27();
  OUTLINED_FUNCTION_136_7();

  return v35(v33, v34, v35, v36, v37, v38, v39, v40, 0, 1, a10, a11);
}

uint64_t implicit closure #7 in OmniSearchService.handleShortCircuitPhotoSearch(for:options:typeIdentifiers:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  if (a1)
  {
    v2 = a1;
  }

  *a2 = v2;
}

uint64_t OmniSearchService.handleShortCircuitMusicSearch(for:typeIdentifiers:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  v3 = OUTLINED_FUNCTION_29();
  return MEMORY[0x2822009F8](v3);
}

uint64_t OmniSearchService.handleShortCircuitMusicSearch(for:typeIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_183_4();
  OUTLINED_FUNCTION_159();
  type metadata accessor for FeatureFlagService();
  swift_initStackObject();
  if (FeatureFlagService.isEnabled(_:)(OmniSearch_FeatureFlagService_FeatureFlag_shortCircuitMusicSearch))
  {
    v20 = v19[7];
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = v20 + 40;
      do
      {

        EntityProperty.wrappedValue.getter();
        if (v19[4] == 0x6C7070612E6D6F63 && v19[5] == 0xEF636973754D2E65)
        {
        }

        else
        {
          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v24 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        v22 += 16;
        --v21;
      }

      while (v21);
      a9 = xmmword_25DBC9A70;

      v25 = Dictionary.init(dictionaryLiteral:)();
      v26 = type metadata accessor for OmniSearchResponse();
      OUTLINED_FUNCTION_188_8(v26);
      OUTLINED_FUNCTION_134_11();
      OmniSearchResponse.init(results:renderOption:isQuestionQuery:isOpenQuery:searchString:perAppSearchStrings:foundProperties:)(v27, v28, v29, v30, v31, v32, v25);
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_136_7();

  return v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, *(&a9 + 1), a10, a11);
}

void OmniSearchService.makeShortCircuitMockPhotoResult()()
{
  OUTLINED_FUNCTION_155();
  v106 = v2;
  v107 = type metadata accessor for SpotlightRankingItem();
  OUTLINED_FUNCTION_14();
  v93 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v92 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v8 = OUTLINED_FUNCTION_114(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_109();
  v100 = v9 - v10;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v11);
  v105 = &v91 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  OUTLINED_FUNCTION_114(v13);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_49_3();
  v104 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  OUTLINED_FUNCTION_114(v16);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_49_3();
  v103 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  OUTLINED_FUNCTION_114(v19);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_49_3();
  v102 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  OUTLINED_FUNCTION_114(v22);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_49_3();
  v99 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  v26 = OUTLINED_FUNCTION_114(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_109();
  v98 = v27 - v28;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v29);
  v97 = &v91 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v32 = OUTLINED_FUNCTION_114(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_109();
  v96 = v33 - v34;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v35);
  v36 = OUTLINED_FUNCTION_244_3();
  v101 = type metadata accessor for SearchResultItem(v36);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_61_8();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_36();
  UUID.init()();
  v39 = UUID.uuidString.getter();
  v94 = v40;
  v95 = v39;
  v41 = v40;
  v42 = OUTLINED_FUNCTION_38_0();
  v43(v42);
  v44 = [objc_allocWithZone(MEMORY[0x277CC34B0]) init];
  v45 = MEMORY[0x25F89F4C0](0xD000000000000019, 0x800000025DBF1E10);
  [v44 setBundleID_];

  v46 = [v44 attributeSet];
  v47 = MEMORY[0x25F89F4C0](0x746E457465737341, 0xEB00000000797469);
  v48 = MEMORY[0x25F89F4C0](0xD00000000000001FLL, 0x800000025DBF8190);
  [v46 setAttribute:v47 forKey:v48];

  v49 = [v44 attributeSet];
  v50 = MEMORY[0x25F89F4C0](v39, v41);
  v51 = MEMORY[0x25F89F4C0](0xD000000000000023, 0x800000025DBF8160);
  [v49 setAttribute:v50 forKey:v51];

  Date.init()();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
  type metadata accessor for PartialExtractedAttributes();
  v56 = v97;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
  outlined init with copy of SpotlightRankingItem?(v0, v96, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of SpotlightRankingItem?(v56, v98, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  type metadata accessor for PreExtractedCard();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
  type metadata accessor for PreExtractedContact();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
  type metadata accessor for PreExtractedSharedLink();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
  type metadata accessor for PreExtractedBreadcrumb();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
  v77 = MEMORY[0x277D84F90];
  Photo.init(id:photoDescription:locationKeywords:season:sceneClassificationLabels:snippet:ocrString:date:businessNames:peopleNames:peopleContactIdentifiers:peoplePersonIdentifiers:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)();
  outlined destroy of EagerResolutionService?(v56, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  v78 = v0;
  v79 = v106;
  outlined destroy of EagerResolutionService?(v78, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_storeEnumTagMultiPayload();
  v80 = v105;
  OUTLINED_FUNCTION_92();
  v81 = v107;
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v107);
  v85 = type metadata accessor for SearchResult(0);
  *(v79 + v85[7]) = v77;
  OUTLINED_FUNCTION_39_20(v85[10]);
  OUTLINED_FUNCTION_47_19();
  outlined init with copy of UserQuery(v1, v79);
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
  lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
  v86 = v44;
  CodableNSSecureCoding.init(wrappedValue:)();
  v87 = v100;
  outlined init with copy of SpotlightRankingItem?(v80, v100, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v88 = v87;
  if (__swift_getEnumTagSinglePayload(v87, 1, v81) == 1)
  {
    outlined destroy of EagerResolutionService?(v87, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    v115 = 1;
    v114 = 1;
    v113 = 1;
    v112 = 1;
    v111 = 1;
    v110 = 1;
    v109 = 1;
    v108 = 1;
    OUTLINED_FUNCTION_19_18();

    outlined destroy of EagerResolutionService?(v80, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_12_47();
    outlined destroy of UserQuery();
  }

  else
  {

    outlined destroy of EagerResolutionService?(v80, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_12_47();
    outlined destroy of UserQuery();
    v89 = v92;
    v90 = *(v93 + 32);
    v90(v92, v88, v81);
    v90(v79 + v85[5], v89, v81);
  }

  *(v79 + v85[8]) = 1;
  *(v79 + v85[9]) = 1;
  OUTLINED_FUNCTION_148();
}

void OmniSearchService.allowASRG(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_47_1();
  type metadata accessor for Locale.LanguageCode();
  OUTLINED_FUNCTION_14();
  v419 = v23;
  v420 = v24;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_36();
  v418 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_7_4();
  v402 = v37;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_7_4();
  v405 = v39;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_7_4();
  v408 = v41;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_7_4();
  v412 = v43;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_7_4();
  v417 = v45;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_7_4();
  v416 = v47;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v48);
  v50 = &v386[-v49];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  v52 = OUTLINED_FUNCTION_114(v51);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_7_4();
  v404 = v68;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_7_4();
  v407 = v71;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_7_4();
  v410 = v74;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_7_4();
  v403 = v76;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_7_4();
  v414 = v78;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_7_4();
  v406 = v80;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_7_4();
  v411 = v82;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_7_4();
  v409 = v84;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_7_4();
  v415 = v86;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_7_4();
  v413 = v88;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v89);
  v91 = &v386[-v90];
  MEMORY[0x28223BE20](v92);
  v94 = &v386[-v93];
  MEMORY[0x28223BE20](v95);
  v97 = &v386[-v96];
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_244_3();
  v99 = type metadata accessor for Locale.Language();
  OUTLINED_FUNCTION_14();
  v101 = v100;
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_36();
  v105 = v104 - v103;
  Locale.language.getter();
  Locale.Language.languageCode.getter();
  (*(v101 + 8))(v105, v99);
  MEMORY[0x25F899720](28261, 0xE200000000000000);
  OUTLINED_FUNCTION_44_0();
  v106 = v419;
  __swift_storeEnumTagSinglePayload(v107, v108, v109, v419);
  v421 = v27;
  v110 = *(v27 + 48);
  v111 = &_s10Foundation6LocaleV12LanguageCodeVSgMd;
  outlined init with copy of SpotlightRankingItem?(v97, v50, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  v422 = v20;
  outlined init with copy of SpotlightRankingItem?(v20, &v50[v110], &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  v112 = v106;
  if (__swift_getEnumTagSinglePayload(v50, 1, v106) == 1)
  {
    outlined destroy of EagerResolutionService?(v97, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    OUTLINED_FUNCTION_105_3(&v50[v110]);
    if (v122)
    {
      v113 = v50;
LABEL_45:
      outlined destroy of EagerResolutionService?(v113, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
      goto LABEL_46;
    }

    goto LABEL_8;
  }

  outlined init with copy of SpotlightRankingItem?(v50, v94, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  OUTLINED_FUNCTION_105_3(&v50[v110]);
  if (v122)
  {
    outlined destroy of EagerResolutionService?(v97, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    (*(v420 + 8))(v94, v106);
LABEL_8:
    outlined destroy of EagerResolutionService?(v50, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
    goto LABEL_9;
  }

  v127 = v420;
  v128 = v418;
  (*(v420 + 32))(v418, &v50[v110], v112);
  OUTLINED_FUNCTION_1_85();
  lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(v129, v130, MEMORY[0x277CC9658]);
  v387 = dispatch thunk of static Equatable.== infix(_:_:)();
  v111 = *(v127 + 8);
  (v111)(v128, v112);
  outlined destroy of EagerResolutionService?(v97, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  (v111)(v94, v112);
  outlined destroy of EagerResolutionService?(v50, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  if (v387)
  {
    goto LABEL_46;
  }

LABEL_9:
  MEMORY[0x25F899720](29808, 0xE200000000000000);
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v114, v115, v116, v112);
  v117 = *(v421 + 48);
  v118 = v416;
  v119 = OUTLINED_FUNCTION_115_12(v91);
  OUTLINED_FUNCTION_98_9(v119, v117 + v118);
  OUTLINED_FUNCTION_105_3(v118);
  if (v122)
  {
    outlined destroy of EagerResolutionService?(v91, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    OUTLINED_FUNCTION_105_3(v117 + v118);
    v120 = v417;
    if (v122)
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  v121 = v413;
  outlined init with copy of SpotlightRankingItem?(v118, v413, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  OUTLINED_FUNCTION_105_3(v117 + v118);
  if (v122)
  {
    outlined destroy of EagerResolutionService?(v91, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    v123 = OUTLINED_FUNCTION_81_19();
    v124(v123);
    v120 = v417;
LABEL_17:
    outlined destroy of EagerResolutionService?(v118, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
    goto LABEL_18;
  }

  v111 = v420;
  v138 = v117 + v118;
  v139 = v418;
  (*(v420 + 32))(v418, v138, v112);
  OUTLINED_FUNCTION_1_85();
  lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(v140, v141, MEMORY[0x277CC9658]);
  OUTLINED_FUNCTION_241_5();
  v142 = dispatch thunk of static Equatable.== infix(_:_:)();
  v143 = v111[1];
  v143(v139, v112);
  v117 = &_s10Foundation6LocaleV12LanguageCodeVSgMR;
  v144 = OUTLINED_FUNCTION_62_3();
  outlined destroy of EagerResolutionService?(v144, v145, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  v143(v121, v112);
  outlined destroy of EagerResolutionService?(v118, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  v120 = v417;
  if (v142)
  {
    goto LABEL_46;
  }

LABEL_18:
  v125 = v415;
  MEMORY[0x25F899720](29286, 0xE200000000000000);
  OUTLINED_FUNCTION_9_51(v125);
  v126 = OUTLINED_FUNCTION_146_8(v125, v120);
  OUTLINED_FUNCTION_98_9(v126, v91 + v120);
  OUTLINED_FUNCTION_105_3(v120);
  if (v122)
  {
    outlined destroy of EagerResolutionService?(v125, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    OUTLINED_FUNCTION_105_3(v91 + v120);
    if (v122)
    {
      goto LABEL_44;
    }

    goto LABEL_28;
  }

  outlined init with copy of SpotlightRankingItem?(v120, v409, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  OUTLINED_FUNCTION_105_3(v91 + v120);
  if (v131)
  {
    outlined destroy of EagerResolutionService?(v125, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    v132 = OUTLINED_FUNCTION_37_24();
    v133(v132);
LABEL_28:
    outlined destroy of EagerResolutionService?(v120, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_44_27();
  v153 = OUTLINED_FUNCTION_43_18();
  v154(v153);
  OUTLINED_FUNCTION_1_85();
  v157 = lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(v155, v156, MEMORY[0x277CC9658]);
  OUTLINED_FUNCTION_53_20(v157);
  v158 = OUTLINED_FUNCTION_20_30();
  (v111)(v158);
  v91 = &_s10Foundation6LocaleV12LanguageCodeVSgMR;
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v159, v160, v161);
  v162 = OUTLINED_FUNCTION_51_4();
  (v111)(v162);
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v163, v164, v165);
  if (&_s10Foundation6LocaleV12LanguageCodeVSgMd)
  {
    goto LABEL_46;
  }

LABEL_29:
  v134 = v411;
  MEMORY[0x25F899720](29801, 0xE200000000000000);
  OUTLINED_FUNCTION_9_51(v134);
  v135 = v412;
  OUTLINED_FUNCTION_146_8(v134, v412);
  v136 = v135;
  outlined init with copy of SpotlightRankingItem?(v422, v91 + v135, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  OUTLINED_FUNCTION_105_3(v135);
  if (v122)
  {
    outlined destroy of EagerResolutionService?(v134, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    OUTLINED_FUNCTION_105_3(v91 + v135);
    v137 = v414;
    if (v122)
    {
LABEL_33:
      v113 = v136;
      goto LABEL_45;
    }

    goto LABEL_39;
  }

  v146 = v406;
  outlined init with copy of SpotlightRankingItem?(v135, v406, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  OUTLINED_FUNCTION_105_3(v91 + v135);
  if (v147)
  {
    outlined destroy of EagerResolutionService?(v134, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    v148 = OUTLINED_FUNCTION_223_5();
    v149(v148);
    v137 = v414;
LABEL_39:
    outlined destroy of EagerResolutionService?(v136, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_44_27();
  v171 = OUTLINED_FUNCTION_43_18();
  v172(v171);
  OUTLINED_FUNCTION_1_85();
  v175 = lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(v173, v174, MEMORY[0x277CC9658]);
  v178 = OUTLINED_FUNCTION_88_11(v146, v176, v177, v175);
  v179 = v117[1];
  v179(v91, v112);
  v91 = &_s10Foundation6LocaleV12LanguageCodeVSgMR;
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v180, v181, v182);
  v179(v146, v112);
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v183, v184, v185);
  v137 = v414;
  if (v178)
  {
    goto LABEL_46;
  }

LABEL_40:
  MEMORY[0x25F899720](25956, 0xE200000000000000);
  OUTLINED_FUNCTION_9_51(v137);
  v120 = v408;
  v150 = OUTLINED_FUNCTION_146_8(v137, v408);
  OUTLINED_FUNCTION_98_9(v150, v91 + v120);
  OUTLINED_FUNCTION_105_3(v120);
  if (v122)
  {
    outlined destroy of EagerResolutionService?(v137, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    OUTLINED_FUNCTION_105_3(v91 + v120);
    v151 = v410;
    if (!v122)
    {
      goto LABEL_54;
    }

LABEL_44:
    v113 = v120;
    goto LABEL_45;
  }

  v166 = v403;
  outlined init with copy of SpotlightRankingItem?(v120, v403, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  OUTLINED_FUNCTION_105_3(v91 + v120);
  if (v167)
  {
    outlined destroy of EagerResolutionService?(v414, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    v168 = OUTLINED_FUNCTION_223_5();
    v169(v168);
    v151 = v410;
LABEL_54:
    outlined destroy of EagerResolutionService?(v120, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_44_27();
  v190 = OUTLINED_FUNCTION_43_18();
  v191(v190);
  OUTLINED_FUNCTION_1_85();
  v194 = lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(v192, v193, MEMORY[0x277CC9658]);
  OUTLINED_FUNCTION_88_11(v166, v195, v196, v194);
  v197 = OUTLINED_FUNCTION_20_30();
  v137(v197);
  v91 = &_s10Foundation6LocaleV12LanguageCodeVSgMR;
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v198, v199, v200);
  (v137)(v166, v112);
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v201, v202, v203);
  v151 = v410;
  if (&_s10Foundation6LocaleV12LanguageCodeVSgMd)
  {
    goto LABEL_46;
  }

LABEL_55:
  MEMORY[0x25F899720](29541, 0xE200000000000000);
  OUTLINED_FUNCTION_9_51(v151);
  v118 = v405;
  OUTLINED_FUNCTION_115_12(v151);
  OUTLINED_FUNCTION_77_16();
  OUTLINED_FUNCTION_105_3(v118);
  if (v122)
  {
    outlined destroy of EagerResolutionService?(v151, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    OUTLINED_FUNCTION_105_3(v91 + v118);
    v170 = v407;
    if (v122)
    {
      goto LABEL_13;
    }

    goto LABEL_64;
  }

  outlined init with copy of SpotlightRankingItem?(v118, v400, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  OUTLINED_FUNCTION_105_3(v91 + v118);
  if (v186)
  {
    outlined destroy of EagerResolutionService?(v410, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    v187 = OUTLINED_FUNCTION_81_19();
    v188(v187);
    v170 = v407;
LABEL_64:
    outlined destroy of EagerResolutionService?(v118, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
    goto LABEL_65;
  }

  v208 = OUTLINED_FUNCTION_10_50();
  v209(v208);
  OUTLINED_FUNCTION_1_85();
  lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(v210, v211, MEMORY[0x277CC9658]);
  v212 = OUTLINED_FUNCTION_241_5();
  OUTLINED_FUNCTION_88_11(v212, v213, v214, v215);
  v216 = OUTLINED_FUNCTION_20_30();
  v151(v216);
  v91 = &_s10Foundation6LocaleV12LanguageCodeVSgMR;
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v217, v218, v219);
  v220 = OUTLINED_FUNCTION_40_5();
  v151(v220);
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v221, v222, v223);
  v170 = v407;
  if (&_s10Foundation6LocaleV12LanguageCodeVSgMd)
  {
    goto LABEL_46;
  }

LABEL_65:
  MEMORY[0x25F899720](26746, 0xE200000000000000);
  OUTLINED_FUNCTION_9_51(v170);
  v118 = v402;
  OUTLINED_FUNCTION_115_12(v170);
  OUTLINED_FUNCTION_77_16();
  OUTLINED_FUNCTION_105_3(v118);
  if (v122)
  {
    outlined destroy of EagerResolutionService?(v170, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    OUTLINED_FUNCTION_105_3(v91 + v118);
    v189 = v404;
    if (v122)
    {
      goto LABEL_13;
    }

    goto LABEL_74;
  }

  outlined init with copy of SpotlightRankingItem?(v118, v398, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  OUTLINED_FUNCTION_105_3(v91 + v118);
  if (v204)
  {
    outlined destroy of EagerResolutionService?(v407, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    v205 = OUTLINED_FUNCTION_81_19();
    v206(v205);
    v189 = v404;
LABEL_74:
    outlined destroy of EagerResolutionService?(v118, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
    goto LABEL_75;
  }

  v228 = OUTLINED_FUNCTION_10_50();
  v229(v228);
  OUTLINED_FUNCTION_1_85();
  lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(v230, v231, MEMORY[0x277CC9658]);
  v232 = OUTLINED_FUNCTION_241_5();
  OUTLINED_FUNCTION_88_11(v232, v233, v234, v235);
  v236 = OUTLINED_FUNCTION_20_30();
  v170(v236);
  v91 = &_s10Foundation6LocaleV12LanguageCodeVSgMR;
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v237, v238, v239);
  v240 = OUTLINED_FUNCTION_40_5();
  v170(v240);
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v241, v242, v243);
  v189 = v404;
  if (&_s10Foundation6LocaleV12LanguageCodeVSgMd)
  {
    goto LABEL_46;
  }

LABEL_75:
  MEMORY[0x25F899720](24938, 0xE200000000000000);
  OUTLINED_FUNCTION_9_51(v189);
  OUTLINED_FUNCTION_102_11(v189, &a16);
  OUTLINED_FUNCTION_77_16();
  OUTLINED_FUNCTION_105_3(v118);
  if (v122)
  {
    outlined destroy of EagerResolutionService?(v189, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    OUTLINED_FUNCTION_105_3(v91 + v118);
    v207 = v401;
    if (v122)
    {
      goto LABEL_13;
    }

    goto LABEL_84;
  }

  outlined init with copy of SpotlightRankingItem?(v118, v396, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  OUTLINED_FUNCTION_105_3(v91 + v118);
  if (v224)
  {
    outlined destroy of EagerResolutionService?(v404, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    v225 = OUTLINED_FUNCTION_81_19();
    v226(v225);
    v207 = v401;
LABEL_84:
    outlined destroy of EagerResolutionService?(v118, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
    goto LABEL_85;
  }

  v248 = OUTLINED_FUNCTION_10_50();
  v249(v248);
  OUTLINED_FUNCTION_1_85();
  lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(v250, v251, MEMORY[0x277CC9658]);
  v252 = OUTLINED_FUNCTION_241_5();
  OUTLINED_FUNCTION_88_11(v252, v253, v254, v255);
  v256 = OUTLINED_FUNCTION_20_30();
  v189(v256);
  v91 = &_s10Foundation6LocaleV12LanguageCodeVSgMR;
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v257, v258, v259);
  v260 = OUTLINED_FUNCTION_40_5();
  v189(v260);
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v261, v262, v263);
  v207 = v401;
  if (&_s10Foundation6LocaleV12LanguageCodeVSgMd)
  {
    goto LABEL_46;
  }

LABEL_85:
  MEMORY[0x25F899720](28523, 0xE200000000000000);
  OUTLINED_FUNCTION_9_51(v207);
  OUTLINED_FUNCTION_102_11(v207, &a13);
  OUTLINED_FUNCTION_77_16();
  OUTLINED_FUNCTION_105_3(v118);
  if (v122)
  {
    outlined destroy of EagerResolutionService?(v207, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    OUTLINED_FUNCTION_105_3(v91 + v118);
    v227 = v399;
    if (v122)
    {
      goto LABEL_13;
    }

    goto LABEL_94;
  }

  OUTLINED_FUNCTION_215_2(v118, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR, &v423);
  OUTLINED_FUNCTION_105_3(v91 + v118);
  if (v244)
  {
    outlined destroy of EagerResolutionService?(v401, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    v245 = OUTLINED_FUNCTION_37_24();
    v246(v245);
    v227 = v399;
LABEL_94:
    outlined destroy of EagerResolutionService?(v118, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
    goto LABEL_95;
  }

  v268 = OUTLINED_FUNCTION_10_50();
  v269(v268);
  OUTLINED_FUNCTION_1_85();
  v272 = lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(v270, v271, MEMORY[0x277CC9658]);
  OUTLINED_FUNCTION_53_20(v272);
  v273 = OUTLINED_FUNCTION_20_30();
  v207(v273);
  v91 = &_s10Foundation6LocaleV12LanguageCodeVSgMR;
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v274, v275, v276);
  v277 = OUTLINED_FUNCTION_51_4();
  v207(v277);
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v278, v279, v280);
  v227 = v399;
  if (&_s10Foundation6LocaleV12LanguageCodeVSgMd)
  {
    goto LABEL_46;
  }

LABEL_95:
  MEMORY[0x25F899720](27758, 0xE200000000000000);
  OUTLINED_FUNCTION_9_51(v227);
  OUTLINED_FUNCTION_102_11(v227, &a10);
  OUTLINED_FUNCTION_77_16();
  OUTLINED_FUNCTION_105_3(v118);
  if (v122)
  {
    outlined destroy of EagerResolutionService?(v227, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    OUTLINED_FUNCTION_105_3(v91 + v118);
    v247 = v397;
    if (v122)
    {
      goto LABEL_13;
    }

    goto LABEL_104;
  }

  OUTLINED_FUNCTION_215_2(v118, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR, &v420);
  OUTLINED_FUNCTION_105_3(v91 + v118);
  if (v264)
  {
    outlined destroy of EagerResolutionService?(v399, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    v265 = OUTLINED_FUNCTION_37_24();
    v266(v265);
    v247 = v397;
LABEL_104:
    outlined destroy of EagerResolutionService?(v118, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
    goto LABEL_105;
  }

  v285 = OUTLINED_FUNCTION_10_50();
  v286(v285);
  OUTLINED_FUNCTION_1_85();
  v289 = lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(v287, v288, MEMORY[0x277CC9658]);
  OUTLINED_FUNCTION_53_20(v289);
  v290 = OUTLINED_FUNCTION_20_30();
  v227(v290);
  v91 = &_s10Foundation6LocaleV12LanguageCodeVSgMR;
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v291, v292, v293);
  v294 = OUTLINED_FUNCTION_51_4();
  v227(v294);
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v295, v296, v297);
  v247 = v397;
  if (&_s10Foundation6LocaleV12LanguageCodeVSgMd)
  {
    goto LABEL_46;
  }

LABEL_105:
  MEMORY[0x25F899720](24932, 0xE200000000000000);
  OUTLINED_FUNCTION_9_51(v247);
  OUTLINED_FUNCTION_102_11(v247, &v422);
  OUTLINED_FUNCTION_77_16();
  OUTLINED_FUNCTION_105_3(v118);
  if (v122)
  {
    outlined destroy of EagerResolutionService?(v247, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    OUTLINED_FUNCTION_105_3(v91 + v118);
    v267 = v395;
    if (!v122)
    {
      goto LABEL_114;
    }

LABEL_13:
    v113 = v118;
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_215_2(v118, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR, &v417);
  OUTLINED_FUNCTION_105_3(v91 + v118);
  if (v281)
  {
    outlined destroy of EagerResolutionService?(v397, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    v282 = OUTLINED_FUNCTION_37_24();
    v283(v282);
    v267 = v395;
LABEL_114:
    outlined destroy of EagerResolutionService?(v118, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
    goto LABEL_115;
  }

  v304 = OUTLINED_FUNCTION_10_50();
  v305(v304);
  OUTLINED_FUNCTION_1_85();
  v308 = lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(v306, v307, MEMORY[0x277CC9658]);
  OUTLINED_FUNCTION_53_20(v308);
  v309 = OUTLINED_FUNCTION_20_30();
  v247(v309);
  v91 = &_s10Foundation6LocaleV12LanguageCodeVSgMR;
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v310, v311, v312);
  v313 = OUTLINED_FUNCTION_51_4();
  v247(v313);
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v314, v315, v316);
  v267 = v395;
  if (&_s10Foundation6LocaleV12LanguageCodeVSgMd)
  {
    goto LABEL_46;
  }

LABEL_115:
  MEMORY[0x25F899720](30323, 0xE200000000000000);
  OUTLINED_FUNCTION_9_51(v267);
  OUTLINED_FUNCTION_102_11(v267, &v419);
  OUTLINED_FUNCTION_77_16();
  OUTLINED_FUNCTION_105_3(v118);
  if (v122)
  {
    outlined destroy of EagerResolutionService?(v267, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    OUTLINED_FUNCTION_105_3(v91 + v118);
    v284 = v394;
    if (!v122)
    {
      goto LABEL_124;
    }

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_215_2(v118, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR, &v415);
  OUTLINED_FUNCTION_105_3(v91 + v118);
  if (v298)
  {
    outlined destroy of EagerResolutionService?(v395, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    v299 = OUTLINED_FUNCTION_37_24();
    v300(v299);
    v284 = v394;
LABEL_124:
    outlined destroy of EagerResolutionService?(v118, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
    goto LABEL_125;
  }

  v322 = OUTLINED_FUNCTION_10_50();
  v323(v322);
  OUTLINED_FUNCTION_1_85();
  v326 = lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(v324, v325, MEMORY[0x277CC9658]);
  OUTLINED_FUNCTION_53_20(v326);
  v327 = OUTLINED_FUNCTION_20_30();
  v267(v327);
  v91 = &_s10Foundation6LocaleV12LanguageCodeVSgMR;
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v328, v329, v330);
  v331 = OUTLINED_FUNCTION_51_4();
  v267(v331);
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v332, v333, v334);
  v284 = v394;
  if (&_s10Foundation6LocaleV12LanguageCodeVSgMd)
  {
    goto LABEL_46;
  }

LABEL_125:
  MEMORY[0x25F899720](25198, 0xE200000000000000);
  OUTLINED_FUNCTION_9_51(v284);
  v301 = v392;
  v302 = OUTLINED_FUNCTION_146_8(v284, v392);
  OUTLINED_FUNCTION_98_9(v302, v91 + v301);
  OUTLINED_FUNCTION_105_3(v301);
  if (v122)
  {
    outlined destroy of EagerResolutionService?(v284, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    OUTLINED_FUNCTION_105_3(v91 + v301);
    v303 = v393;
    if (v122)
    {
      v113 = v301;
      goto LABEL_45;
    }

    goto LABEL_135;
  }

  OUTLINED_FUNCTION_215_2(v301, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR, &v411);
  OUTLINED_FUNCTION_105_3(v91 + v301);
  if (v317)
  {
    outlined destroy of EagerResolutionService?(v394, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    v318 = OUTLINED_FUNCTION_37_24();
    v319(v318);
    v303 = v393;
LABEL_135:
    outlined destroy of EagerResolutionService?(v301, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
    goto LABEL_136;
  }

  OUTLINED_FUNCTION_44_27();
  v345 = OUTLINED_FUNCTION_43_18();
  v346(v345);
  OUTLINED_FUNCTION_1_85();
  v349 = lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(v347, v348, MEMORY[0x277CC9658]);
  OUTLINED_FUNCTION_53_20(v349);
  v350 = OUTLINED_FUNCTION_20_30();
  v301(v350);
  v91 = &_s10Foundation6LocaleV12LanguageCodeVSgMR;
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v351, v352, v353);
  v354 = OUTLINED_FUNCTION_51_4();
  v301(v354);
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v355, v356, v357);
  v303 = v393;
  if (&_s10Foundation6LocaleV12LanguageCodeVSgMd)
  {
    goto LABEL_46;
  }

LABEL_136:
  MEMORY[0x25F899720](29300, 0xE200000000000000);
  OUTLINED_FUNCTION_9_51(v303);
  v320 = v389;
  OUTLINED_FUNCTION_146_8(v303, v389);
  v136 = v320;
  outlined init with copy of SpotlightRankingItem?(v422, v91 + v320, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  OUTLINED_FUNCTION_105_3(v320);
  if (v122)
  {
    outlined destroy of EagerResolutionService?(v303, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    OUTLINED_FUNCTION_105_3(v91 + v320);
    v321 = v390;
    if (!v122)
    {
      goto LABEL_145;
    }

    goto LABEL_33;
  }

  OUTLINED_FUNCTION_215_2(v320, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR, &v409);
  OUTLINED_FUNCTION_105_3(v91 + v320);
  if (v335)
  {
    outlined destroy of EagerResolutionService?(v393, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    v336 = OUTLINED_FUNCTION_37_24();
    v337(v336);
    v321 = v390;
LABEL_145:
    outlined destroy of EagerResolutionService?(v320, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
    goto LABEL_146;
  }

  OUTLINED_FUNCTION_44_27();
  v361 = OUTLINED_FUNCTION_43_18();
  v362(v361);
  OUTLINED_FUNCTION_1_85();
  v365 = lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(v363, v364, MEMORY[0x277CC9658]);
  OUTLINED_FUNCTION_53_20(v365);
  v366 = OUTLINED_FUNCTION_20_30();
  v301(v366);
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v367, v368, v369);
  v370 = OUTLINED_FUNCTION_51_4();
  v301(v370);
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v371, v372, v373);
  v321 = v390;
  if ((v320 & 1) == 0)
  {
LABEL_146:
    v338 = v391;
    MEMORY[0x25F899720](26998, 0xE200000000000000);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v339, v340, v341, v112);
    v342 = *(v421 + 48);
    v343 = v338;
    v344 = v388;
    outlined init with copy of SpotlightRankingItem?(v343, v388, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    outlined init with take of Locale.LanguageCode?(v422, v344 + v342);
    OUTLINED_FUNCTION_105_3(v344);
    if (v122)
    {
      outlined destroy of EagerResolutionService?(v391, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
      OUTLINED_FUNCTION_105_3(v344 + v342);
      if (v122)
      {
        v152 = v344;
        goto LABEL_47;
      }
    }

    else
    {
      outlined init with copy of SpotlightRankingItem?(v344, v321, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
      OUTLINED_FUNCTION_105_3(v344 + v342);
      if (!v358)
      {
        v374 = v420;
        v375 = v418;
        (*(v420 + 32))(v418, v344 + v342, v112);
        OUTLINED_FUNCTION_1_85();
        lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(v376, v377, MEMORY[0x277CC9658]);
        dispatch thunk of static Equatable.== infix(_:_:)();
        v378 = *(v374 + 8);
        v378(v375, v112);
        OUTLINED_FUNCTION_47_11();
        outlined destroy of EagerResolutionService?(v379, v380, v381);
        v382 = OUTLINED_FUNCTION_51_4();
        (v378)(v382);
        OUTLINED_FUNCTION_47_11();
        outlined destroy of EagerResolutionService?(v383, v384, v385);
        goto LABEL_48;
      }

      outlined destroy of EagerResolutionService?(v391, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
      v359 = OUTLINED_FUNCTION_51_4();
      v360(v359);
    }

    outlined destroy of EagerResolutionService?(v344, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
    goto LABEL_48;
  }

LABEL_46:
  v152 = v422;
LABEL_47:
  outlined destroy of EagerResolutionService?(v152, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
LABEL_48:
  OUTLINED_FUNCTION_148();
}

id OmniSearchService.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for OmniSearchService();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t protocol witness for OmniSearchServiceProtocol.search(_:rewrittenQuery:simplifiedQuery:structuredQuery:typeIdentifiers:matchedEntities:sources:options:requestedProperties:) in conformance OmniSearchService(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *((*MEMORY[0x277D85000] & **v8) + 0xE0);
  v17 = (v14 + *v14);
  v15 = swift_task_alloc();
  *(v9 + 16) = v15;
  *v15 = v9;
  v15[1] = protocol witness for AnswerResolvable.extractInfo(query:results:assistantLocale:) in conformance AnswerResolver;

  return v17(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t partial apply for specialized closure #1 in OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:)()
{
  OUTLINED_FUNCTION_159();
  v0 = type metadata accessor for UserQuery(0);
  OUTLINED_FUNCTION_21(v0);
  OUTLINED_FUNCTION_238_4();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_143(v1);
  *v2 = v3;
  v2[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
  OUTLINED_FUNCTION_179_1();
  OUTLINED_FUNCTION_63_14();

  return specialized closure #1 in OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:)(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t partial apply for specialized closure #2 in OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:)()
{
  OUTLINED_FUNCTION_121_8();
  OUTLINED_FUNCTION_159();
  v0 = type metadata accessor for UserQuery(0);
  OUTLINED_FUNCTION_21(v0);
  OUTLINED_FUNCTION_238_4();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_143(v1);
  *v2 = v3;
  v2[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
  OUTLINED_FUNCTION_179_1();
  OUTLINED_FUNCTION_63_14();

  return specialized closure #2 in OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:)(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t outlined assign with take of UserQuery(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserQuery(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for closure #1 in OmniSearchService.searchItems(query:searchServices:searchSources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_75();
  v3 = v2;
  v5 = v4;
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[5];
  v11 = v0[6];
  v10 = v0[7];
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v1 + 16) = v12;
  *v12 = v13;
  v12[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return closure #1 in OmniSearchService.searchItems(query:searchServices:searchSources:allowedTypes:searchOptions:)(v5, v3, v6, v7, v8, v9, v11, v10);
}

unint64_t lazy protocol witness table accessor for type SearchType and conformance SearchType()
{
  result = lazy protocol witness table cache variable for type SearchType and conformance SearchType;
  if (!lazy protocol witness table cache variable for type SearchType and conformance SearchType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchType and conformance SearchType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchType and conformance SearchType;
  if (!lazy protocol witness table cache variable for type SearchType and conformance SearchType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchType and conformance SearchType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchType and conformance SearchType;
  if (!lazy protocol witness table cache variable for type SearchType and conformance SearchType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchType and conformance SearchType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchType and conformance SearchType;
  if (!lazy protocol witness table cache variable for type SearchType and conformance SearchType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchType and conformance SearchType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchType and conformance SearchType;
  if (!lazy protocol witness table cache variable for type SearchType and conformance SearchType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchType and conformance SearchType);
  }

  return result;
}

uint64_t dispatch thunk of OmniSearchServiceProtocol.search(_:rewrittenQuery:simplifiedQuery:structuredQuery:typeIdentifiers:matchedEntities:sources:options:requestedProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_34_4();
  v61 = v36;
  v59 = v37;
  v60 = v38;
  v57 = v39;
  v58 = v40;
  OUTLINED_FUNCTION_133_12();
  OUTLINED_FUNCTION_28_0();
  v56 = v41 + *v41;
  v42 = swift_task_alloc();
  v43 = OUTLINED_FUNCTION_63(v42);
  *v43 = v44;
  v43[1] = dispatch thunk of AnswerResolver.extractInfo(query:results:assistantLocale:);
  OUTLINED_FUNCTION_85_14();
  OUTLINED_FUNCTION_17_4();

  return v53(v45, v46, v47, v48, v49, v50, v51, v52, a9, a34 + 8, v56, v57, v58, v59, v60, v61, v34, a18, a19, a20, a21, a22, a23, a24, a25, v35);
}

uint64_t dispatch thunk of OmniSearchService.search(_:rewrittenQuery:matchedEntities:sources:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_259_5();
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_148_10();
  OUTLINED_FUNCTION_154_4();
  v26 = v12 + 208;
  v27 = *(v12 + 208) + **(v12 + 208);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_63(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_84(v14);
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_198();

  return v22(v16, v17, v18, v19, v20, v21, v22, v23, a9, v26, v27, a12);
}

uint64_t dispatch thunk of OmniSearchService.search(_:rewrittenQuery:structuredQuery:typeIdentifiers:matchedEntities:sources:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_133_12();
  OUTLINED_FUNCTION_154_4();
  v29 = v14 + 216;
  v30 = *(v14 + 216) + **(v14 + 216);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_63(v15);
  *v16 = v17;
  v16[1] = dispatch thunk of AnswerResolvable.extractInfo(query:results:assistantLocale:);
  OUTLINED_FUNCTION_85_14();
  OUTLINED_FUNCTION_83_0();

  return v26(v18, v19, v20, v21, v22, v23, v24, v25, a9, v29, v30, a12, a13, a14);
}

void dispatch thunk of OmniSearchService.search(_:rewrittenQuery:simplifiedQuery:structuredQuery:typeIdentifiers:matchedEntities:sources:options:requestedProperties:)()
{
  OUTLINED_FUNCTION_133_12();
  OUTLINED_FUNCTION_154_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v1[1] = dispatch thunk of AnswerResolvable.extractInfo(query:results:assistantLocale:);
  OUTLINED_FUNCTION_85_14();
  OUTLINED_FUNCTION_15_6();

  __asm { BRAA            X8, X16 }
}

uint64_t dispatch thunk of OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_259_5();
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_148_10();
  OUTLINED_FUNCTION_154_4();
  v26 = v12 + 232;
  v27 = *(v12 + 232) + **(v12 + 232);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_63(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_84(v14);
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_198();

  return v22(v16, v17, v18, v19, v20, v21, v22, v23, a9, v26, v27, a12);
}

uint64_t dispatch thunk of OmniSearchService.localSearch(query:typeIdentifiers:sources:options:requestedProperties:)()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_52_23();
  OUTLINED_FUNCTION_154_4();
  v13 = v0 + 248;
  v14 = *(v0 + 248) + **(v0 + 248);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_63(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_84(v2);
  OUTLINED_FUNCTION_60_14();
  OUTLINED_FUNCTION_61_18();

  return v9(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
}

uint64_t dispatch thunk of OmniSearchService.globalSearch(query:sources:options:)()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_154_4();
  v6 = (*(v0 + 256) + **(v0 + 256));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_63(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_84(v2);
  v4 = OUTLINED_FUNCTION_116_1();

  return v6(v4);
}

uint64_t dispatch thunk of OmniSearchService.entitySearch(_:rewrittenQuery:allowedTypes:)()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_52_23();
  OUTLINED_FUNCTION_154_4();
  v13 = (v0 + 264);
  v14 = *v13 + **v13;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_63(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_84(v2);
  OUTLINED_FUNCTION_60_14();
  OUTLINED_FUNCTION_61_18();

  return v9(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
}

uint64_t dispatch thunk of OmniSearchService.composeAnswer(query:requestedProperties:results:options:runAnswerSynthesis:ecrResults:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_183_4();
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_226_4();
  OUTLINED_FUNCTION_154_4();
  v26 = (v12 + 272);
  v27 = *v26 + **v26;
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_63(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_84(v14);
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_136_7();

  return v23(v16, v17, v18, v19, v20, v21, v22, v23, v26, v27, a11, a12);
}

uint64_t dispatch thunk of OmniSearchService.composeAnswer(query:requestedProperties:results:options:runAnswerSynthesis:ecrResults:locale:)()
{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_51_19();
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;

  OUTLINED_FUNCTION_201_7();

  return v8(v0, v5, v3);
}

void dispatch thunk of static OmniSearchService.parseWithMemoryCreationQU(_:originatorPID:modelType:jsonParse:personNames:petNames:locations:currentTime:)()
{
  OUTLINED_FUNCTION_133_12();
  OUTLINED_FUNCTION_28_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v1[1] = dispatch thunk of AnswerResolvable.extractInfo(query:results:assistantLocale:);
  OUTLINED_FUNCTION_85_14();
  OUTLINED_FUNCTION_15_6();

  __asm { BRAA            X8, X16 }
}

uint64_t dispatch thunk of OmniSearchService.searchItems(query:searchServices:searchSources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_52_23();
  OUTLINED_FUNCTION_154_4();
  v13 = (v0 + 296);
  v14 = *v13 + **v13;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_63(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_84(v2);
  OUTLINED_FUNCTION_60_14();
  OUTLINED_FUNCTION_61_18();

  return v9(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
}

uint64_t dispatch thunk of OmniSearchService.createASContext(mode:assistantLocale:ecrResults:)()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_52_23();
  OUTLINED_FUNCTION_154_4();
  v13 = (v1 + 320);
  v14 = *v13 + **v13;
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v0 + 16) = v2;
  *v2 = v3;
  v2[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);
  OUTLINED_FUNCTION_60_14();
  OUTLINED_FUNCTION_61_18();

  return v9(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
}

uint64_t partial apply for closure #1 in closure #2 in OmniSearchService.handlePhotosResultsForEval(query:typeIdentifiers:isExpectingAnswer:results:ecrResults:)(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySSGs5NeverOGMd, &_sScCySaySSGs5NeverOGMR);
  OUTLINED_FUNCTION_114(v6);
  v7 = OUTLINED_FUNCTION_116_0();

  return closure #1 in closure #2 in OmniSearchService.handlePhotosResultsForEval(query:typeIdentifiers:isExpectingAnswer:results:ecrResults:)(v7, v8, a3, a4);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed String) -> (@out ())(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

uint64_t outlined consume of (SearchType, SearchServiceResult)?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in OmniSearchService.searchItems(query:searchServices:searchSources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_159();
  v0 = type metadata accessor for UserQuery(0);
  OUTLINED_FUNCTION_21(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_143(v1);
  *v2 = v3;
  v2[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);
  OUTLINED_FUNCTION_179_1();
  OUTLINED_FUNCTION_63_14();

  return closure #1 in closure #1 in OmniSearchService.searchItems(query:searchServices:searchSources:allowedTypes:searchOptions:)(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t outlined consume of ResultsDialog.RenderOption(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 3)
  {
  }

  return result;
}

uint64_t outlined init with take of UserQuery(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_47_1();
  v4(v3);
  OUTLINED_FUNCTION_17();
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return a2;
}

uint64_t outlined init with copy of UserQuery(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_47_1();
  v4(v3);
  OUTLINED_FUNCTION_17();
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return a2;
}

uint64_t outlined destroy of UserQuery()
{
  v1 = OUTLINED_FUNCTION_42_2();
  v2(v1);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t OUTLINED_FUNCTION_46_25()
{
}

uint64_t OUTLINED_FUNCTION_53_20(uint64_t a1)
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

void OUTLINED_FUNCTION_54_26()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x25F8A1050);
}

uint64_t OUTLINED_FUNCTION_56_17()
{
}

uint64_t OUTLINED_FUNCTION_77_16()
{
  v6 = *(v4 - 96);

  return outlined init with copy of SpotlightRankingItem?(v6, v3 + v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_88_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_98_9(uint64_t a1, uint64_t a2)
{
  v6 = *(v4 - 96);

  return outlined init with copy of SpotlightRankingItem?(v6, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_102_11@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a2 - 256);

  return outlined init with copy of SpotlightRankingItem?(a1, v5, v2, v3);
}

uint64_t OUTLINED_FUNCTION_111_9@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + a1;
  *v4 = *(v1 + 6376);
  *(v4 + 4) = *(v1 + 6380);

  return outlined destroy of OmniSearchOptions(v1 + v2);
}

uint64_t OUTLINED_FUNCTION_115_12(uint64_t a1)
{

  return outlined init with copy of SpotlightRankingItem?(a1, v3, v1, v2);
}

void *OUTLINED_FUNCTION_122_10()
{

  return memcpy((v0 + v1), (v0 + 5864), 0x62uLL);
}

uint64_t OUTLINED_FUNCTION_125_11()
{

  return outlined destroy of UserQuery();
}

uint64_t OUTLINED_FUNCTION_129_13(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_130_12()
{
  v0[761] = 1;

  return memcpy(v0 + 691, v0 + 733, 0x62uLL);
}

uint64_t OUTLINED_FUNCTION_131_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_144_11()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_146_8(uint64_t a1, uint64_t a2)
{

  return outlined init with copy of SpotlightRankingItem?(a1, a2, v2, v3);
}

void OUTLINED_FUNCTION_155_9()
{
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 96) = 0;
  *(v0 + 120) = 0;
}

void OUTLINED_FUNCTION_165_6(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_185_6()
{
}

uint64_t OUTLINED_FUNCTION_186_5()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_188_8(uint64_t a1)
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_204_8(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x69uLL);
}

uint64_t OUTLINED_FUNCTION_208_4()
{
}

void *OUTLINED_FUNCTION_209_4()
{

  return memcpy((v0 + v1), (v0 + v2), 0x62uLL);
}

uint64_t OUTLINED_FUNCTION_211_4()
{
}

uint64_t OUTLINED_FUNCTION_212_5()
{

  return type metadata accessor for StructuredQueryEntity(0);
}

void *OUTLINED_FUNCTION_213_5(void *a1)
{

  return memcpy(a1, (v1 + 5864), 0x62uLL);
}

uint64_t OUTLINED_FUNCTION_214_4()
{

  return type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode();
}

uint64_t OUTLINED_FUNCTION_215_2@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *(a4 - 256);

  return outlined init with copy of SpotlightRankingItem?(a1, v5, a2, a3);
}

uint64_t OUTLINED_FUNCTION_216_5()
{

  return type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode();
}

void *OUTLINED_FUNCTION_222_5(void *a1)
{

  return memcpy(a1, (v1 + 1264), 0x138uLL);
}

uint64_t OUTLINED_FUNCTION_246_3(uint64_t a1, uint64_t a2)
{
  outlined consume of OmniSearchResponseRenderOption(a1, a2);

  return outlined consume of OmniSearchResponseRenderOption(0, 3);
}

void OUTLINED_FUNCTION_254_3(char a1@<W8>)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = v1;
  *(v2 + 48) = 0;
}

uint64_t OUTLINED_FUNCTION_261_3()
{
}

uint64_t OUTLINED_FUNCTION_262_3()
{
}

uint64_t OUTLINED_FUNCTION_264_4()
{
  *(v1 + 6344) = 0;
  *(v1 + 6336) = v0;
}

void OUTLINED_FUNCTION_265_4(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v6, v7, a4, a5, a6, v8, 2u);
}

uint64_t OUTLINED_FUNCTION_266_3(uint64_t a1)
{

  return MEMORY[0x2822009F8](a1);
}

uint64_t OUTLINED_FUNCTION_267_1@<X0>(uint64_t a1@<X8>)
{

  return outlined init with copy of SpotlightRankingItem?(v4, v3 + a1, v1, v2);
}

id OUTLINED_FUNCTION_271_2(float a1)
{
  *v2 = a1;

  return v1;
}

uint64_t OmniSearchServiceImp.__allocating_init(omniSearchService:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_1();
  v2 = swift_allocObject();
  OmniSearchServiceImp.init(omniSearchService:)(a1);
  return v2;
}

uint64_t OmniSearchServiceImp.init(omniSearchService:)(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  if (one-time initialization token for server != -1)
  {
    OUTLINED_FUNCTION_0_7(&one-time initialization token for server);
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logging.server);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_172();
    *v7 = 0;
    _os_log_impl(&dword_25D85C000, v5, v6, "init()", v7, 2u);
    MEMORY[0x25F8A1050](v7, -1, -1);
  }

  *(v2 + 24) = a1;
  return v2;
}

uint64_t OmniSearchServiceImp.__allocating_init()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = static OmniSearchService.shared;
  OUTLINED_FUNCTION_1_1();
  v1 = swift_allocObject();
  OmniSearchServiceImp.init(omniSearchService:)(v0);
  return v1;
}

uint64_t OmniSearchServiceImp.activate()()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    result = (*((*MEMORY[0x277D85000] & **(v0 + 24)) + 0xB8))();
    *(v0 + 16) = 1;
  }

  return result;
}

uint64_t OmniSearchServiceImp.deactivate()()
{
  if (*(v0 + 16) == 1)
  {
    result = (*((*MEMORY[0x277D85000] & **(v0 + 24)) + 0xC0))();
    *(v0 + 16) = 0;
  }

  return result;
}

uint64_t OmniSearchServiceImp.search(_:progressReporter:)(uint64_t a1, uint64_t a2)
{
  v3[145] = v2;
  v3[144] = a2;
  v3[143] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  v3[146] = swift_task_alloc();
  v3[147] = type metadata accessor for UserQuery(0);
  v3[148] = swift_task_alloc();
  v3[149] = swift_task_alloc();

  return MEMORY[0x2822009F8](OmniSearchServiceImp.search(_:progressReporter:));
}

uint64_t OmniSearchServiceImp.search(_:progressReporter:)()
{
  v1 = *(v0 + 1184);
  v2 = *(v0 + 1168);
  v3 = *(v0 + 1160);
  v4 = *(v0 + 1152);
  v5 = *(v0 + 1144);
  v6 = type metadata accessor for LLMSearchQuery(0);
  v7 = v6[8];
  memcpy((v0 + 16), v5 + v7, 0x69uLL);
  memcpy((v0 + 128), v5 + v7, 0x69uLL);
  outlined init with copy of OmniSearchOptions(v0 + 16, v0 + 240);
  OmniSearchServiceImp.enrichOptions(options:progressReporter:)(v0 + 128, v4);
  *(v0 + 232) = 1;
  v8 = *(v3 + 24);
  v10 = *v5;
  v9 = v5[1];
  v12 = v5[2];
  v11 = v5[3];
  outlined init with copy of StructuredQueryEntity?(v5 + v6[6], v2);
  *v1 = v10;
  v1[1] = v9;
  if (!v11)
  {
    goto LABEL_6;
  }

  v13 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v13 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v14 = *(v0 + 1184);
    *(v14 + 16) = v12;
    *(v14 + 24) = v11;
  }

  else
  {
LABEL_6:
    v15 = *(v0 + 1184);
    *(v15 + 16) = v10;
    *(v15 + 24) = v9;
  }

  v16 = *(v0 + 1192);
  v17 = *(v0 + 1184);
  v18 = *(v0 + 1176);
  v19 = *(v0 + 1168);
  v20 = *(v0 + 1144);
  *(v17 + 32) = 0;
  *(v17 + 40) = 0;
  outlined init with copy of StructuredQueryEntity?(v19, v17 + *(v18 + 28));
  v21 = (v17 + *(v18 + 32));
  *v21 = 0;
  v21[1] = 0;

  UtteranceNormalizer.init(locale:)();
  outlined destroy of StructuredQueryEntity?(v19);
  outlined init with take of LLMSearchQuery(v17, v16, type metadata accessor for UserQuery);
  v22 = *(v20 + v6[7]);
  OUTLINED_FUNCTION_11_54((v0 + 352));
  OUTLINED_FUNCTION_11_54((v0 + 464));
  *(v0 + 1136) = 3;
  v23 = *((*MEMORY[0x277D85000] & *v8) + 0xE8);
  outlined init with copy of OmniSearchOptions(v0 + 352, v0 + 576);
  v29 = (v23 + *v23);
  v24 = swift_task_alloc();
  *(v0 + 1200) = v24;
  *v24 = v0;
  v24[1] = OmniSearchServiceImp.search(_:progressReporter:);
  v25 = *(v0 + 1192);
  v26 = MEMORY[0x277D84F90];
  v27 = MEMORY[0x277D84F90];

  return v29(v25, v22, v26, v0 + 1136, v0 + 464, v27);
}

{
  OUTLINED_FUNCTION_11_54(v0 + 114);
  outlined destroy of OmniSearchOptions((v0 + 114));

  v1 = v0[1];
  v2 = v0[152];

  return v1(v2);
}

{
  OUTLINED_FUNCTION_11_54((v0 + 688));
  outlined destroy of OmniSearchOptions(v0 + 688);

  OUTLINED_FUNCTION_127();

  return v1();
}

uint64_t OmniSearchServiceImp.search(_:progressReporter:)(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *v5 = *v2;
  v4[151] = v1;

  if (v1)
  {
    memcpy(v4 + 100, v4 + 58, 0x69uLL);
    outlined destroy of OmniSearchOptions((v4 + 100));
    OUTLINED_FUNCTION_2_76();
    v6 = OmniSearchServiceImp.search(_:progressReporter:);
  }

  else
  {
    v4[152] = a1;
    memcpy(v4 + 128, v4 + 58, 0x69uLL);
    outlined destroy of OmniSearchOptions((v4 + 128));
    OUTLINED_FUNCTION_2_76();
    v6 = OmniSearchServiceImp.search(_:progressReporter:);
  }

  return MEMORY[0x2822009F8](v6);
}

void OmniSearchServiceImp.enrichOptions(options:progressReporter:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = lazy protocol witness table accessor for type SearchToolProgressReporterXPC and conformance SearchToolProgressReporterXPC(&lazy protocol witness table cache variable for type SearchToolProgressReporterXPC and conformance SearchToolProgressReporterXPC, type metadata accessor for SearchToolProgressReporterXPC, &protocol conformance descriptor for SearchToolProgressReporterXPC);

    swift_unknownObjectRelease();
    *(a1 + 80) = a2;
    *(a1 + 88) = v4;
  }

  else
  {
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logging.search);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_25D85C000, oslog, v6, "No progress reporter provided.", v7, 2u);
      MEMORY[0x25F8A1050](v7, -1, -1);
    }
  }
}

uint64_t OmniSearchServiceImp.deinit()
{
  OmniSearchServiceImp.deactivate()();

  return v0;
}

uint64_t OmniSearchServiceImp.__deallocating_deinit()
{
  OmniSearchServiceImp.deactivate()();

  OUTLINED_FUNCTION_1_1();

  return swift_deallocClassInstance();
}

uint64_t OmniSearchServiceImp.handle(_:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = type metadata accessor for LLMSearchQuery(0);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  type metadata accessor for OmniSearchXPCRequest(0);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](OmniSearchServiceImp.handle(_:progressReporter:));
}

uint64_t OmniSearchServiceImp.handle(_:progressReporter:)()
{
  v1 = v0[12];
  v2 = v0[9];
  outlined init with copy of OmniSearchXPCRequest(v0[6], v1, type metadata accessor for OmniSearchXPCRequest);
  switch(__swift_getEnumTagSinglePayload(v1, 3, v2))
  {
    case 1u:
      if (one-time initialization token for server != -1)
      {
        OUTLINED_FUNCTION_0_7(&one-time initialization token for server);
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static Logging.server);
      v25 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      OUTLINED_FUNCTION_5_9();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = OUTLINED_FUNCTION_172();
        *v27 = 0;
        _os_log_impl(&dword_25D85C000, v25, v2, "preheat()", v27, 2u);
        OUTLINED_FUNCTION_2_8();
      }

      v28 = v0[8];
      v18 = v0[5];

      (*((*MEMORY[0x277D85000] & **(v28 + 24)) + 0xC8))();
      goto LABEL_21;
    case 2u:
      if (one-time initialization token for server != -1)
      {
        OUTLINED_FUNCTION_0_7(&one-time initialization token for server);
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Logging.server);
      v14 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      OUTLINED_FUNCTION_5_9();
      if (os_log_type_enabled(v14, v15))
      {
        *OUTLINED_FUNCTION_172() = 0;
        OUTLINED_FUNCTION_9_8(&dword_25D85C000, v16, v17, "activate()");
        OUTLINED_FUNCTION_2_8();
      }

      v18 = v0[5];

      OmniSearchServiceImp.activate()();
      goto LABEL_21;
    case 3u:
      if (one-time initialization token for server != -1)
      {
        OUTLINED_FUNCTION_0_7(&one-time initialization token for server);
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logging.server);
      v20 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      OUTLINED_FUNCTION_5_9();
      if (os_log_type_enabled(v20, v21))
      {
        *OUTLINED_FUNCTION_172() = 0;
        OUTLINED_FUNCTION_9_8(&dword_25D85C000, v22, v23, "deactivate()");
        OUTLINED_FUNCTION_2_8();
      }

      v18 = v0[5];

      OmniSearchServiceImp.deactivate()();
LABEL_21:
      *v18 = 0;
      v18[1] = 0;
      v18[2] = 0;
      OUTLINED_FUNCTION_4_64();
      *(v29 + 24) = 1;

      OUTLINED_FUNCTION_127();

      result = v30();
      break;
    default:
      outlined init with take of LLMSearchQuery(v0[12], v0[11], type metadata accessor for LLMSearchQuery);
      if (one-time initialization token for server != -1)
      {
        OUTLINED_FUNCTION_0_7(&one-time initialization token for server);
      }

      v3 = v0[10];
      v4 = v0[11];
      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static Logging.server);
      outlined init with copy of OmniSearchXPCRequest(v4, v3, type metadata accessor for LLMSearchQuery);
      v6 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      OUTLINED_FUNCTION_5_9();
      v8 = os_log_type_enabled(v6, v7);
      v9 = v0[10];
      if (v8)
      {
        v10 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v10 = 136315138;

        OUTLINED_FUNCTION_0_99();
        outlined destroy of LLMSearchQuery(v9, v11);
        v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v10 + 4) = v12;
        _os_log_impl(&dword_25D85C000, v6, v3, "search(%s)", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
        MEMORY[0x25F8A1050](v36, -1, -1);
        OUTLINED_FUNCTION_2_8();
      }

      else
      {

        OUTLINED_FUNCTION_0_99();
        outlined destroy of LLMSearchQuery(v9, v32);
      }

      OmniSearchServiceImp.activate()();
      v33 = swift_task_alloc();
      v0[13] = v33;
      *v33 = v0;
      v33[1] = OmniSearchServiceImp.handle(_:progressReporter:);
      v34 = v0[11];
      v35 = v0[7];

      result = OmniSearchServiceImp.search(_:progressReporter:)(v34, v35);
      break;
  }

  return result;
}

{
  v1 = *(v0 + 120);
  v2 = *(v0 + 40);
  OUTLINED_FUNCTION_0_99();
  outlined destroy of LLMSearchQuery(v3, v4);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = v1;
  OUTLINED_FUNCTION_4_64();
  *(v5 + 24) = 1;

  OUTLINED_FUNCTION_127();

  return v6();
}

{
  v1 = v0[14];
  v2 = v0[11];
  v0[2] = 0;
  v3 = v0[5];
  v0[3] = 0xE000000000000000;
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _print_unlocked<A, B>(_:_:)();

  v4 = v0[2];
  v5 = v0[3];
  OUTLINED_FUNCTION_0_99();
  outlined destroy of LLMSearchQuery(v2, v6);
  *v3 = 1;
  v3[1] = v4;
  v3[2] = v5;
  OUTLINED_FUNCTION_4_64();
  *(v7 + 24) = 0;

  OUTLINED_FUNCTION_127();

  return v8();
}

uint64_t OmniSearchServiceImp.handle(_:progressReporter:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  *(v4 + 112) = v1;

  if (v1)
  {
    v7 = OmniSearchServiceImp.handle(_:progressReporter:);
  }

  else
  {
    *(v4 + 120) = a1;
    v7 = OmniSearchServiceImp.handle(_:progressReporter:);
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t protocol witness for ServiceProtocol.init() in conformance OmniSearchServiceImp@<X0>(uint64_t *a1@<X8>)
{
  result = OmniSearchServiceImp.__allocating_init()();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ServiceProtocol.handle(_:progressReporter:) in conformance OmniSearchServiceImp(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for ServiceProtocol.handle(_:progressReporter:) in conformance AnswerSynthesisServiceImp;

  return OmniSearchServiceImp.handle(_:progressReporter:)(a1, a2, v6);
}

uint64_t outlined init with copy of OmniSearchXPCRequest(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_17();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t lazy protocol witness table accessor for type OmniSearchXPCResponse and conformance OmniSearchXPCResponse()
{
  result = lazy protocol witness table cache variable for type OmniSearchXPCResponse and conformance OmniSearchXPCResponse;
  if (!lazy protocol witness table cache variable for type OmniSearchXPCResponse and conformance OmniSearchXPCResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchXPCResponse and conformance OmniSearchXPCResponse);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchXPCResponse and conformance OmniSearchXPCResponse;
  if (!lazy protocol witness table cache variable for type OmniSearchXPCResponse and conformance OmniSearchXPCResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchXPCResponse and conformance OmniSearchXPCResponse);
  }

  return result;
}

uint64_t outlined init with take of LLMSearchQuery(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_17();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t outlined destroy of LLMSearchQuery(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_17();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t lazy protocol witness table accessor for type SearchToolProgressReporterXPC and conformance SearchToolProgressReporterXPC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_2_76()
{

  return outlined destroy of LLMSearchQuery(v0, type metadata accessor for UserQuery);
}

void *OUTLINED_FUNCTION_11_54(void *a1)
{

  return memcpy(a1, (v1 + 128), 0x69uLL);
}

OmniSearch::XPCServiceError __swiftcall XPCServiceError.init(type:description:)(OmniSearch::XPCServiceError::ErrorType type, Swift::String_optional description)
{
  *v2 = *type;
  *(v2 + 8) = description;
  result.description = description;
  result.type = type;
  return result;
}

void *OmniSearchProgressUpdate.__allocating_init(totalUnitCount:completedUnitCount:localizedDescription:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_13_40();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t XPCServiceError.ErrorType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5264696C61766E69 && a2 == 0xEE00747365757165;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616E7265746E69 && a2 == 0xED0000726F727245)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t XPCServiceError.ErrorType.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6C616E7265746E69;
  }

  else
  {
    return 0x5264696C61766E69;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance XPCServiceError.ErrorType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = XPCServiceError.ErrorType.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCServiceError.ErrorType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCServiceError.ErrorType.CodingKeys and conformance XPCServiceError.ErrorType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCServiceError.ErrorType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCServiceError.ErrorType.CodingKeys and conformance XPCServiceError.ErrorType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCServiceError.ErrorType.InternalErrorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCServiceError.ErrorType.InternalErrorCodingKeys and conformance XPCServiceError.ErrorType.InternalErrorCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCServiceError.ErrorType.InternalErrorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCServiceError.ErrorType.InternalErrorCodingKeys and conformance XPCServiceError.ErrorType.InternalErrorCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCServiceError.ErrorType.InvalidRequestCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCServiceError.ErrorType.InvalidRequestCodingKeys and conformance XPCServiceError.ErrorType.InvalidRequestCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCServiceError.ErrorType.InvalidRequestCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCServiceError.ErrorType.InvalidRequestCodingKeys and conformance XPCServiceError.ErrorType.InvalidRequestCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void XPCServiceError.ErrorType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_60_1();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch15XPCServiceErrorV0G4TypeO08InternalG10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch15XPCServiceErrorV0G4TypeO08InternalG10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14();
  v47 = v27;
  v48 = v26;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_49_3();
  v46 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch15XPCServiceErrorV0G4TypeO24InvalidRequestCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch15XPCServiceErrorV0G4TypeO24InvalidRequestCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14();
  v45[0] = v31;
  v45[1] = v30;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_64_5();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch15XPCServiceErrorV0G4TypeO10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch15XPCServiceErrorV0G4TypeO10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14();
  v35 = v34;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v36);
  v38 = v45 - v37;
  v39 = *v23;
  OUTLINED_FUNCTION_218(v25, v25[3]);
  lazy protocol witness table accessor for type XPCServiceError.ErrorType.CodingKeys and conformance XPCServiceError.ErrorType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v40 = (v35 + 8);
  if (v39)
  {
    lazy protocol witness table accessor for type XPCServiceError.ErrorType.InternalErrorCodingKeys and conformance XPCServiceError.ErrorType.InternalErrorCodingKeys();
    v41 = v46;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v47 + 8))(v41, v48);
  }

  else
  {
    lazy protocol witness table accessor for type XPCServiceError.ErrorType.InvalidRequestCodingKeys and conformance XPCServiceError.ErrorType.InvalidRequestCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v42 = OUTLINED_FUNCTION_34_33();
    v44(v42, v43);
  }

  (*v40)(v38, v33);
  OUTLINED_FUNCTION_61_2();
}

Swift::Int XPCServiceError.ErrorType.hashValue.getter(uint64_t a1)
{
  v2 = *v1;
  OUTLINED_FUNCTION_155_3(a1);
  MEMORY[0x25F8A0680](v2);
  return Hasher._finalize()();
}

void XPCServiceError.ErrorType.init(from:)()
{
  OUTLINED_FUNCTION_60_1();
  v5 = v4;
  v37 = v6;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch15XPCServiceErrorV0G4TypeO08InternalG10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch15XPCServiceErrorV0G4TypeO08InternalG10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14();
  v36 = v7;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_23_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch15XPCServiceErrorV0G4TypeO24InvalidRequestCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch15XPCServiceErrorV0G4TypeO24InvalidRequestCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14();
  v35 = v10;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18_9();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch15XPCServiceErrorV0G4TypeO10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch15XPCServiceErrorV0G4TypeO10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14();
  v38 = v13;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19_7();
  OUTLINED_FUNCTION_218(v5, v5[3]);
  lazy protocol witness table accessor for type XPCServiceError.ErrorType.CodingKeys and conformance XPCServiceError.ErrorType.CodingKeys();
  OUTLINED_FUNCTION_86_6();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_8;
  }

  v40 = v5;
  OUTLINED_FUNCTION_30_30();
  KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC10OmniSearch25AnswerSynthesisXPCRequestO10CodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLO_Tt1g5();
  if (v16 == v15 >> 1)
  {
LABEL_7:
    v29 = type metadata accessor for DecodingError();
    swift_allocError();
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v31 = &type metadata for XPCServiceError.ErrorType;
    OUTLINED_FUNCTION_30_30();
    v32 = KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_33_6(v32);
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84160], v29);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v38 + 8))(v2, v12);
    v5 = v40;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
LABEL_9:
    OUTLINED_FUNCTION_61_2();
    return;
  }

  OUTLINED_FUNCTION_24_32();
  if (v20 < (v19 >> 1))
  {
    v21 = *(v18 + v17);
    specialized ArraySlice.subscript.getter();
    v23 = v22;
    v25 = v24;
    swift_unknownObjectRelease();
    if (v23 == v25 >> 1)
    {
      if (v21)
      {
        lazy protocol witness table accessor for type XPCServiceError.ErrorType.InternalErrorCodingKeys and conformance XPCServiceError.ErrorType.InternalErrorCodingKeys();
        v26 = v0;
        v27 = v12;
        OUTLINED_FUNCTION_12_7();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v28 = v37;
        swift_unknownObjectRelease();
        (*(v36 + 8))(v26, v39);
      }

      else
      {
        lazy protocol witness table accessor for type XPCServiceError.ErrorType.InvalidRequestCodingKeys and conformance XPCServiceError.ErrorType.InvalidRequestCodingKeys();
        v27 = v12;
        OUTLINED_FUNCTION_12_7();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v28 = v37;
        swift_unknownObjectRelease();
        (*(v35 + 8))(v3, v9);
      }

      v33 = OUTLINED_FUNCTION_33_33();
      v34(v33, v27);
      *v28 = v21;
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t XPCServiceError.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t XPCServiceError.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x7470697263736564;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance XPCServiceError.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = XPCServiceError.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCServiceError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCServiceError.CodingKeys and conformance XPCServiceError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCServiceError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCServiceError.CodingKeys and conformance XPCServiceError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void XPCServiceError.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_60_1();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch15XPCServiceErrorV10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch15XPCServiceErrorV10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14();
  v29 = v28;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v30);
  v32 = v34 - v31;
  v33 = *(v23 + 8);
  v34[0] = *(v23 + 16);
  v34[1] = v33;
  OUTLINED_FUNCTION_218(v26, v26[3]);
  lazy protocol witness table accessor for type XPCServiceError.CodingKeys and conformance XPCServiceError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type XPCServiceError.ErrorType and conformance XPCServiceError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v24)
  {
    OUTLINED_FUNCTION_29_6();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  (*(v29 + 8))(v32, v27);
  OUTLINED_FUNCTION_61_2();
}

void XPCServiceError.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_60_1();
  v22 = v21;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch15XPCServiceErrorV10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch15XPCServiceErrorV10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14();
  v27 = v26;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_19_7();
  OUTLINED_FUNCTION_218(v22, v22[3]);
  lazy protocol witness table accessor for type XPCServiceError.CodingKeys and conformance XPCServiceError.CodingKeys();
  OUTLINED_FUNCTION_86_6();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v19)
  {
    lazy protocol witness table accessor for type XPCServiceError.ErrorType and conformance XPCServiceError.ErrorType();
    OUTLINED_FUNCTION_12_7();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    OUTLINED_FUNCTION_29_6();
    v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v31 = v30;
    (*(v27 + 8))(v20, v25);
    *v24 = BYTE7(a10);
    *(v24 + 8) = v29;
    *(v24 + 16) = v31;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  OUTLINED_FUNCTION_61_2();
}

void *LLMSearchQuery.init(utterance:searchQuery:structuredSearchQuery:typeIdentifiers:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, const void *a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  v12 = type metadata accessor for LLMSearchQuery(0);
  outlined init with take of StructuredQueryEntity?(a5, a8 + v12[6]);
  *(a8 + v12[7]) = a6;
  v13 = a8 + v12[8];

  return memcpy(v13, a7, 0x69uLL);
}

uint64_t LLMSearchQuery.structuredSearchQuery.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LLMSearchQuery(0) + 24);

  return outlined init with copy of StructuredQueryEntity?(v3, a1);
}

uint64_t LLMSearchQuery.typeIdentifiers.getter()
{
  type metadata accessor for LLMSearchQuery(0);
}

uint64_t LLMSearchQuery.options.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for LLMSearchQuery(0) + 32);
  memcpy(__dst, (v1 + v3), 0x69uLL);
  memcpy(a1, (v1 + v3), 0x69uLL);
  return outlined init with copy of OmniSearchOptions(__dst, &v5);
}

uint64_t LLMSearchQuery.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E617265747475 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7551686372616573 && a2 == 0xEB00000000797265;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x800000025DBF9E30 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E65644965707974 && a2 == 0xEF73726569666974;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t LLMSearchQuery.CodingKeys.stringValue.getter(char a1)
{
  result = 0x636E617265747475;
  switch(a1)
  {
    case 1:
      result = 0x7551686372616573;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x6E65644965707974;
      break;
    case 4:
      result = 0x736E6F6974706FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LLMSearchQuery.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = LLMSearchQuery.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LLMSearchQuery.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LLMSearchQuery.CodingKeys and conformance LLMSearchQuery.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LLMSearchQuery.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LLMSearchQuery.CodingKeys and conformance LLMSearchQuery.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void LLMSearchQuery.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60_1();
  v22 = v20;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch14LLMSearchQueryV10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch14LLMSearchQueryV10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14();
  v27 = v26;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v28);
  v30 = &v36[-v29 - 8];
  OUTLINED_FUNCTION_218(v24, v24[3]);
  lazy protocol witness table accessor for type LLMSearchQuery.CodingKeys and conformance LLMSearchQuery.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v38[0] = 0;
  OUTLINED_FUNCTION_27_26();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v21)
  {
    (*(v27 + 8))(v30, v25);
  }

  else
  {
    v38[0] = 1;
    OUTLINED_FUNCTION_27_26();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v31 = type metadata accessor for LLMSearchQuery(0);
    v38[0] = 2;
    type metadata accessor for StructuredQueryEntity(0);
    OUTLINED_FUNCTION_7_54();
    _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_1(v32, 255, v33, &protocol conformance descriptor for StructuredQueryEntity);
    OUTLINED_FUNCTION_27_26();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v38[111] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B20EntityTypeIdentifierVGMd, &_sSay10OmniSearch0B20EntityTypeIdentifierVGMR);
    lazy protocol witness table accessor for type [SearchEntityTypeIdentifier] and conformance <A> [A](&lazy protocol witness table cache variable for type [SearchEntityTypeIdentifier] and conformance <A> [A], lazy protocol witness table accessor for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier, MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_27_26();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v34 = *(v31 + 32);
    memcpy(v38, (v22 + v34), 0x69uLL);
    memcpy(v37, (v22 + v34), sizeof(v37));
    v36[111] = 4;
    outlined init with copy of OmniSearchOptions(v38, v36);
    lazy protocol witness table accessor for type OmniSearchOptions and conformance OmniSearchOptions();
    OUTLINED_FUNCTION_27_26();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    memcpy(v36, v37, 0x69uLL);
    outlined destroy of OmniSearchOptions(v36);
    (*(v27 + 8))(v30, v25);
  }

  OUTLINED_FUNCTION_61_2();
}

void LLMSearchQuery.init(from:)()
{
  OUTLINED_FUNCTION_60_1();
  v3 = v2;
  v18 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_64_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch14LLMSearchQueryV10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch14LLMSearchQueryV10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14();
  v19 = v7;
  v20 = v6;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_23_1();
  v9 = type metadata accessor for LLMSearchQuery(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_36();
  v13 = (v12 - v11);
  OUTLINED_FUNCTION_218(v3, v3[3]);
  lazy protocol witness table accessor for type LLMSearchQuery.CodingKeys and conformance LLMSearchQuery.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    *v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v13[1] = v14;
    v13[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13[3] = v15;
    type metadata accessor for StructuredQueryEntity(0);
    LOBYTE(v21[0]) = 2;
    OUTLINED_FUNCTION_7_54();
    _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_1(v16, 255, v17, &protocol conformance descriptor for StructuredQueryEntity);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of StructuredQueryEntity?(v1, v13 + v9[6]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B20EntityTypeIdentifierVGMd, &_sSay10OmniSearch0B20EntityTypeIdentifierVGMR);
    lazy protocol witness table accessor for type [SearchEntityTypeIdentifier] and conformance <A> [A](&lazy protocol witness table cache variable for type [SearchEntityTypeIdentifier] and conformance <A> [A], lazy protocol witness table accessor for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier, MEMORY[0x277D83978]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v13 + v9[7]) = v21[0];
    lazy protocol witness table accessor for type OmniSearchOptions and conformance OmniSearchOptions();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v19 + 8))(0, v20);
    memcpy(v13 + v9[8], v21, 0x69uLL);
    outlined init with copy of LLMSearchQuery(v13, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    outlined destroy of LLMSearchQuery(v13);
  }

  OUTLINED_FUNCTION_61_2();
}

uint64_t OmniSearchXPCRequest.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616568657270 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574617669746361 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6176697463616564 && a2 == 0xEA00000000006574;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x686372616573 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t OmniSearchXPCRequest.CodingKeys.stringValue.getter(char a1)
{
  result = 0x74616568657270;
  switch(a1)
  {
    case 1:
      result = 0x6574617669746361;
      break;
    case 2:
      result = 0x6176697463616564;
      break;
    case 3:
      result = 0x686372616573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OmniSearchXPCRequest.ActivateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchXPCRequest.ActivateCodingKeys and conformance OmniSearchXPCRequest.ActivateCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OmniSearchXPCRequest.ActivateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchXPCRequest.ActivateCodingKeys and conformance OmniSearchXPCRequest.ActivateCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance OmniSearchXPCRequest.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = OmniSearchXPCRequest.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OmniSearchXPCRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchXPCRequest.CodingKeys and conformance OmniSearchXPCRequest.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OmniSearchXPCRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchXPCRequest.CodingKeys and conformance OmniSearchXPCRequest.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OmniSearchXPCRequest.DeactivateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchXPCRequest.DeactivateCodingKeys and conformance OmniSearchXPCRequest.DeactivateCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OmniSearchXPCRequest.DeactivateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchXPCRequest.DeactivateCodingKeys and conformance OmniSearchXPCRequest.DeactivateCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OmniSearchXPCRequest.PreheatCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchXPCRequest.PreheatCodingKeys and conformance OmniSearchXPCRequest.PreheatCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OmniSearchXPCRequest.PreheatCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchXPCRequest.PreheatCodingKeys and conformance OmniSearchXPCRequest.PreheatCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OmniSearchXPCRequest.SearchCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchXPCRequest.SearchCodingKeys and conformance OmniSearchXPCRequest.SearchCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OmniSearchXPCRequest.SearchCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchXPCRequest.SearchCodingKeys and conformance OmniSearchXPCRequest.SearchCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void OmniSearchXPCRequest.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_60_1();
  a23 = v27;
  a24 = v28;
  v89 = v25;
  v90 = v26;
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0dE10XPCRequestO0E10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0dE10XPCRequestO0E10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14();
  v87 = v32;
  v88 = v31;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_49_3();
  v86 = v34;
  v35 = type metadata accessor for LLMSearchQuery(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_36();
  v85 = v38 - v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0dE10XPCRequestO20DeactivateCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0dE10XPCRequestO20DeactivateCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14();
  v83 = v40;
  v84 = v39;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_49_3();
  v82 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0dE10XPCRequestO18ActivateCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0dE10XPCRequestO18ActivateCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14();
  v80 = v44;
  v81 = v43;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_49_3();
  v79 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0dE10XPCRequestO17PreheatCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0dE10XPCRequestO17PreheatCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14();
  v77 = v48;
  v78 = v47;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_23_1();
  v50 = type metadata accessor for OmniSearchXPCRequest(0);
  MEMORY[0x28223BE20](v50 - 8);
  OUTLINED_FUNCTION_36();
  v53 = v52 - v51;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0dE10XPCRequestO10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0dE10XPCRequestO10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14();
  v56 = v55;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v57);
  v59 = &v77 - v58;
  OUTLINED_FUNCTION_218(v30, v30[3]);
  lazy protocol witness table accessor for type OmniSearchXPCRequest.CodingKeys and conformance OmniSearchXPCRequest.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_1_86();
  outlined init with copy of LLMSearchQuery(v89, v53);
  switch(__swift_getEnumTagSinglePayload(v53, 3, v35))
  {
    case 1u:
      a11 = 0;
      v74 = lazy protocol witness table accessor for type OmniSearchXPCRequest.PreheatCodingKeys and conformance OmniSearchXPCRequest.PreheatCodingKeys();
      OUTLINED_FUNCTION_15_8(&unk_286F86FB0, &a11, v75, v76, v74);
      v70 = v77;
      v69 = v78;
      goto LABEL_6;
    case 2u:
      OUTLINED_FUNCTION_29_6();
      v66 = lazy protocol witness table accessor for type OmniSearchXPCRequest.ActivateCodingKeys and conformance OmniSearchXPCRequest.ActivateCodingKeys();
      v24 = v79;
      OUTLINED_FUNCTION_15_8(&unk_286F86FD0, &a12, v67, v68, v66);
      v70 = v80;
      v69 = v81;
      goto LABEL_6;
    case 3u:
      a13 = 2;
      v71 = lazy protocol witness table accessor for type OmniSearchXPCRequest.DeactivateCodingKeys and conformance OmniSearchXPCRequest.DeactivateCodingKeys();
      v24 = v82;
      OUTLINED_FUNCTION_15_8(&unk_286F86FF0, &a13, v72, v73, v71);
      v70 = v83;
      v69 = v84;
LABEL_6:
      (*(v70 + 8))(v24, v69);
      (*(v56 + 8))(v59, v54);
      break;
    default:
      v60 = v53;
      v61 = v85;
      _s10OmniSearch14LLMSearchQueryVWObTm_0(v60, v85);
      a14 = 3;
      lazy protocol witness table accessor for type OmniSearchXPCRequest.SearchCodingKeys and conformance OmniSearchXPCRequest.SearchCodingKeys();
      v62 = v86;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_5_56();
      _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_1(v63, 255, v64, &protocol conformance descriptor for LLMSearchQuery);
      v65 = v88;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v87 + 8))(v62, v65);
      outlined destroy of LLMSearchQuery(v61);
      (*(v56 + 8))(v59, v54);
      break;
  }

  OUTLINED_FUNCTION_61_2();
}

void OmniSearchXPCRequest.init(from:)()
{
  OUTLINED_FUNCTION_60_1();
  v94 = v0;
  v2 = v1;
  v88 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0dE10XPCRequestO0E10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0dE10XPCRequestO0E10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14();
  v90 = v5;
  v91 = v4;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_49_3();
  v89 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0dE10XPCRequestO20DeactivateCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0dE10XPCRequestO20DeactivateCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14();
  v84 = v9;
  v85 = v8;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_49_3();
  v93 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0dE10XPCRequestO18ActivateCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0dE10XPCRequestO18ActivateCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14();
  v82 = v13;
  v83 = v12;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_49_3();
  v87 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0dE10XPCRequestO17PreheatCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0dE10XPCRequestO17PreheatCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14();
  v80 = v17;
  v81 = v16;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_49_3();
  v86 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0dE10XPCRequestO10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0dE10XPCRequestO10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14();
  v92 = v21;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v22);
  v24 = v76 - v23;
  v25 = type metadata accessor for OmniSearchXPCRequest(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v26);
  v28 = v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = v76 - v30;
  OUTLINED_FUNCTION_218(v2, v2[3]);
  lazy protocol witness table accessor for type OmniSearchXPCRequest.CodingKeys and conformance OmniSearchXPCRequest.CodingKeys();
  v32 = v94;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v32)
  {
    goto LABEL_10;
  }

  v33 = v25;
  v78 = v28;
  v79 = v31;
  v34 = v93;
  v94 = v2;
  v35 = v24;
  KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC10OmniSearch25AnswerSynthesisXPCRequestO10CodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLO_Tt1g5();
  v37 = v20;
  if (v38 == v36 >> 1)
  {
    v39 = v25;
LABEL_9:
    v60 = type metadata accessor for DecodingError();
    swift_allocError();
    v62 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v62 = v39;
    v63 = KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_33_6(v63);
    (*(*(v60 - 8) + 104))(v62, *MEMORY[0x277D84160], v60);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v92 + 8))(v35, v37);
    v2 = v94;
LABEL_10:
    v64 = v2;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    OUTLINED_FUNCTION_61_2();
    return;
  }

  OUTLINED_FUNCTION_24_32();
  if (v43 < (v42 >> 1))
  {
    v44 = 0;
    v45 = v24;
    v39 = v33;
    v77 = *(v41 + v40);
    v46 = specialized ArraySlice.subscript.getter();
    v48 = v47;
    v50 = v49;
    swift_unknownObjectRelease();
    if (v48 == v50 >> 1)
    {
      v76[1] = v46;
      v52 = v90;
      v51 = v91;
      v53 = v89;
      switch(v77)
      {
        case 1:
          OUTLINED_FUNCTION_29_6();
          lazy protocol witness table accessor for type OmniSearchXPCRequest.ActivateCodingKeys and conformance OmniSearchXPCRequest.ActivateCodingKeys();
          v71 = v87;
          OUTLINED_FUNCTION_12_7();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          swift_unknownObjectRelease();
          (*(v82 + 8))(v71, v83);
          v72 = OUTLINED_FUNCTION_3_9();
          v73(v72);
          type metadata accessor for LLMSearchQuery(0);
          v57 = OUTLINED_FUNCTION_21_8();
          v59 = 2;
          goto LABEL_15;
        case 2:
          lazy protocol witness table accessor for type OmniSearchXPCRequest.DeactivateCodingKeys and conformance OmniSearchXPCRequest.DeactivateCodingKeys();
          OUTLINED_FUNCTION_12_7();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          swift_unknownObjectRelease();
          (*(v84 + 8))(v34, v85);
          v65 = OUTLINED_FUNCTION_3_9();
          v66(v65);
          type metadata accessor for LLMSearchQuery(0);
          v57 = OUTLINED_FUNCTION_21_8();
          v59 = 3;
          goto LABEL_15;
        case 3:
          lazy protocol witness table accessor for type OmniSearchXPCRequest.SearchCodingKeys and conformance OmniSearchXPCRequest.SearchCodingKeys();
          OUTLINED_FUNCTION_12_7();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v67 = type metadata accessor for LLMSearchQuery(0);
          OUTLINED_FUNCTION_5_56();
          _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_1(v68, 255, v69, &protocol conformance descriptor for LLMSearchQuery);
          v70 = v78;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          swift_unknownObjectRelease();
          (*(v52 + 8))(v53, v51);
          v74 = OUTLINED_FUNCTION_33_33();
          v75(v74, v37);
          __swift_storeEnumTagSinglePayload(v70, 0, 3, v67);
          OUTLINED_FUNCTION_1_86();
          v44 = v79;
          _s10OmniSearch14LLMSearchQueryVWObTm_0(v70, v79);
          goto LABEL_16;
        default:
          lazy protocol witness table accessor for type OmniSearchXPCRequest.PreheatCodingKeys and conformance OmniSearchXPCRequest.PreheatCodingKeys();
          v54 = v86;
          OUTLINED_FUNCTION_12_7();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          swift_unknownObjectRelease();
          (*(v80 + 8))(v54, v81);
          v55 = OUTLINED_FUNCTION_3_9();
          v56(v55);
          type metadata accessor for LLMSearchQuery(0);
          v57 = OUTLINED_FUNCTION_21_8();
          v59 = 1;
LABEL_15:
          __swift_storeEnumTagSinglePayload(v57, v59, 3, v58);
LABEL_16:
          OUTLINED_FUNCTION_1_86();
          _s10OmniSearch14LLMSearchQueryVWObTm_0(v44, v88);
          v64 = v94;
          break;
      }

      goto LABEL_11;
    }

    v35 = v45;
    goto LABEL_9;
  }

  __break(1u);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance XPCServiceError.ErrorType.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OmniSearchXPCResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchXPCResponse.CodingKeys and conformance OmniSearchXPCResponse.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OmniSearchXPCResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchXPCResponse.CodingKeys and conformance OmniSearchXPCResponse.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OmniSearchXPCResponse.FailureCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchXPCResponse.FailureCodingKeys and conformance OmniSearchXPCResponse.FailureCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OmniSearchXPCResponse.FailureCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchXPCResponse.FailureCodingKeys and conformance OmniSearchXPCResponse.FailureCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OmniSearchXPCResponse.SuccessCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchXPCResponse.SuccessCodingKeys and conformance OmniSearchXPCResponse.SuccessCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OmniSearchXPCResponse.SuccessCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchXPCResponse.SuccessCodingKeys and conformance OmniSearchXPCResponse.SuccessCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void OmniSearchXPCResponse.encode(to:)()
{
  OUTLINED_FUNCTION_60_1();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0dE11XPCResponseO17SuccessCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0dE11XPCResponseO17SuccessCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14();
  v20 = v6;
  v21 = v5;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0dE11XPCResponseO17FailureCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0dE11XPCResponseO17FailureCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14();
  v19 = v8;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_64_5();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0dE11XPCResponseO10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0dE11XPCResponseO10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14();
  v11 = v10;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_19_7();
  v13 = *(v0 + 24);
  OUTLINED_FUNCTION_218(v4, v4[3]);
  lazy protocol witness table accessor for type OmniSearchXPCResponse.CodingKeys and conformance OmniSearchXPCResponse.CodingKeys();
  OUTLINED_FUNCTION_86_6();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v13)
  {
    lazy protocol witness table accessor for type OmniSearchXPCResponse.SuccessCodingKeys and conformance OmniSearchXPCResponse.SuccessCodingKeys();
    v14 = v22;
    OUTLINED_FUNCTION_12_7();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    type metadata accessor for OmniSearchResponse();
    OUTLINED_FUNCTION_6_51();
    _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_1(v15, 255, v16, &protocol conformance descriptor for OmniSearchResponse);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    (*(v20 + 8))(v2, v21);
  }

  else
  {
    lazy protocol witness table accessor for type OmniSearchXPCResponse.FailureCodingKeys and conformance OmniSearchXPCResponse.FailureCodingKeys();
    v14 = v22;
    OUTLINED_FUNCTION_12_7();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = OUTLINED_FUNCTION_34_33();
    v18(v17, v19);
  }

  (*(v11 + 8))(v1, v14);
  OUTLINED_FUNCTION_61_2();
}

void OmniSearchXPCResponse.init(from:)()
{
  OUTLINED_FUNCTION_60_1();
  v4 = v3;
  v43 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0dE11XPCResponseO17SuccessCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0dE11XPCResponseO17SuccessCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14();
  v41 = v6;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0dE11XPCResponseO17FailureCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0dE11XPCResponseO17FailureCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14();
  v40 = v9;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18_9();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0dE11XPCResponseO10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0dE11XPCResponseO10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14();
  v42 = v12;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19_7();
  OUTLINED_FUNCTION_218(v4, v4[3]);
  lazy protocol witness table accessor for type OmniSearchXPCResponse.CodingKeys and conformance OmniSearchXPCResponse.CodingKeys();
  OUTLINED_FUNCTION_86_6();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    goto LABEL_9;
  }

  v46 = v4;
  OUTLINED_FUNCTION_30_30();
  KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC10OmniSearch25AnswerSynthesisXPCRequestO10CodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLO_Tt1g5();
  if (v15 == v14 >> 1)
  {
LABEL_7:
    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v30 = &type metadata for OmniSearchXPCResponse;
    OUTLINED_FUNCTION_30_30();
    v31 = KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_33_6(v31);
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v42 + 8))(v1, v11);
    v4 = v46;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
LABEL_10:
    OUTLINED_FUNCTION_61_2();
    return;
  }

  OUTLINED_FUNCTION_24_32();
  if (v19 < (v18 >> 1))
  {
    v20 = *(v17 + v16);
    specialized ArraySlice.subscript.getter();
    v22 = v21;
    v24 = v23;
    swift_unknownObjectRelease();
    if (v22 == v24 >> 1)
    {
      v25 = v20;
      if (v20)
      {
        LOBYTE(v44) = 1;
        lazy protocol witness table accessor for type OmniSearchXPCResponse.SuccessCodingKeys and conformance OmniSearchXPCResponse.SuccessCodingKeys();
        OUTLINED_FUNCTION_12_7();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        type metadata accessor for OmniSearchResponse();
        OUTLINED_FUNCTION_6_51();
        _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_1(v26, 255, v27, &protocol conformance descriptor for OmniSearchResponse);
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        swift_unknownObjectRelease();
        v32 = OUTLINED_FUNCTION_34_33();
        v33(v32, v41);
        v34 = OUTLINED_FUNCTION_11_8();
        v35(v34);
        v36 = v44;
        v37 = 0uLL;
        v25 = v20;
      }

      else
      {
        lazy protocol witness table accessor for type OmniSearchXPCResponse.FailureCodingKeys and conformance OmniSearchXPCResponse.FailureCodingKeys();
        OUTLINED_FUNCTION_12_7();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        swift_unknownObjectRelease();
        (*(v40 + 8))(v2, v8);
        v38 = OUTLINED_FUNCTION_11_8();
        v39(v38);
        v36 = 0;
        v37 = v45;
      }

      *v43 = v36;
      *(v43 + 8) = v37;
      *(v43 + 24) = v25;
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  __break(1u);
}
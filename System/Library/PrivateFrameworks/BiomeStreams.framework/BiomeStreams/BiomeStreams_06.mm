void closure #1 in IncrementalViewManager.init()(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v112 = a4;
  v122 = a3;
  v132 = a5;
  v134 = *MEMORY[0x1E69E9840];
  v116 = type metadata accessor for FromClause();
  Description = v116[-1].Description;
  MEMORY[0x1EEE9AC00](v116, v8);
  v10 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser6SchemaVSgMd, &_s14BiomeSQLParser6SchemaVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v117 = &v108 - v13;
  v120 = type metadata accessor for SelectCore();
  v119 = v120[-1].Description;
  MEMORY[0x1EEE9AC00](v120, v14);
  v118 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for SelectCorePhysicalPlan(0);
  v17 = MEMORY[0x1EEE9AC00](v114, v16);
  v113 = (&v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17, v19);
  v111 = &v108 - v20;
  v131 = type metadata accessor for MaterializedViewPhysicalPlan(0);
  MEMORY[0x1EEE9AC00](v131, v21);
  v121 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for LogicalPlanType();
  v24 = v23[-1].Description;
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for MaterializedView();
  v126 = v127[-1].Description;
  v29 = MEMORY[0x1EEE9AC00](v127, v28);
  v124 = &v108 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v31);
  v125 = &v108 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser11LogicalPlanVSgMd, &_s14BiomeSQLParser11LogicalPlanVSgMR);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v36 = &v108 - v35;
  v37 = type metadata accessor for LogicalPlan();
  v129 = v37[-1].Description;
  v130 = v37;
  MEMORY[0x1EEE9AC00](v37, v38);
  v128 = &v108 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1[6];
  v41 = a1[7];
  v42 = a1[13];
  v110 = a1[12];
  v123 = v42;
  v44 = a1[14];
  v43 = a1[15];
  v45 = v40 == 0xD000000000000010 && 0x8000000184DDBE90 == v41;
  if (!v45 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    __swift_storeEnumTagSinglePayload(v132, 1, 1, v131);
    return;
  }

  parse(sql:catalog:)(v44, v43, a2);
  if (!v5)
  {
    if (*(v46 + 16) != 1)
    {

      goto LABEL_12;
    }

    specialized Collection.first.getter(v46, v36);

    v47 = v130;
    if (__swift_getEnumTagSinglePayload(v36, 1, v130) == 1)
    {
      outlined destroy of UUID?(v36, &_s14BiomeSQLParser11LogicalPlanVSgMd, &_s14BiomeSQLParser11LogicalPlanVSgMR);
LABEL_12:
      lazy protocol witness table accessor for type IncrementalViewManager.UpdateError and conformance IncrementalViewManager.UpdateError();
      swift_allocError();
      *v48 = v44;
      *(v48 + 8) = v43;
      *(v48 + 16) = 1;
      swift_willThrow();

      return;
    }

    v49 = v129[4];
    v109 = v24;
    v50 = v128;
    v49(v128, v36, v47);
    v51 = v50;
    v52 = v109;
    LogicalPlan.plan.getter(v27);
    if ((v52[11])(v27, v23) != 1)
    {
      (v129[1])(v51, v130);
      v52[1](v27, v23);
      goto LABEL_12;
    }

    v52[12](v27, v23);
    v53 = v126;
    v54 = v125;
    v55 = v127;
    v126[4](v125, v27, v127);
    v56 = v53[2];
    v57 = v124;
    v56(v124, v54, v55);
    v58 = v121;
    v56(v121, v57, v55);
    v59 = v122;
    swift_unknownObjectRetain();

    v60 = v118;
    MaterializedView.select.getter(v118);
    SelectCore.from.getter(v10);
    v61 = FromClause.schemas.getter();
    Description[1](v10, v116);
    v62 = v117;
    specialized Collection.first.getter(v61, v117);

    v63 = type metadata accessor for Schema();
    if (__swift_getEnumTagSinglePayload(v62, 1, v63) == 1)
    {
      outlined destroy of UUID?(v62, &_s14BiomeSQLParser6SchemaVSgMd, &_s14BiomeSQLParser6SchemaVSgMR);

      v64 = 0;
      v65 = 0;
LABEL_29:
      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      swift_allocError();
      *v87 = v64;
      *(v87 + 8) = v65;
      *(v87 + 64) = 5;
      swift_willThrow();
      swift_unknownObjectRelease();
      v119[1](v60, v120);
      v88 = v126[1];
      v89 = v127;
      (v88)(v124, v127);
      (v88)(v125, v89);
      (v129[1])(v128, v130);
      (v88)(v58, v89);
      return;
    }

    v64 = Schema.tableName.getter();
    v65 = v66;
    (*(v63[-1].Description + 1))(v62, v63);

    v67 = MEMORY[0x1865F6160](v64, v65);
    v133[0] = 0;
    v68 = [v59 streamWithIdentifier:v67 error:v133];

    if (!v68)
    {
      v85 = v133[0];

      v86 = _convertNSErrorToError(_:)();

      swift_willThrow();
      goto LABEL_29;
    }

    v69 = v133[0];

    v70 = v114;
    v71 = v113;
    (v119[2])(v113 + *(v114 + 20), v60, v120);
    *(v71 + *(v70 + 24)) = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_184D29AA0;
    *(inited + 32) = v64;
    *(inited + 40) = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
    v73 = static _SetStorage.allocate(capacity:)();
    v74 = v73 + 56;
    v76 = *(inited + 32);
    v75 = *(inited + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v77 = Hasher._finalize()();
    v78 = ~(-1 << *(v73 + 32));
    while (1)
    {
      v79 = v77 & v78;
      v80 = (v77 & v78) >> 6;
      v81 = *(v74 + 8 * v80);
      v82 = 1 << (v77 & v78);
      if ((v82 & v81) == 0)
      {
        break;
      }

      v83 = (*(v73 + 48) + 16 * v79);
      v84 = *v83 == v76 && v83[1] == v75;
      if (v84 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        goto LABEL_32;
      }

      v77 = v79 + 1;
    }

    *(v74 + 8 * v80) = v82 | v81;
    v90 = (*(v73 + 48) + 16 * v79);
    *v90 = v76;
    v90[1] = v75;
    v91 = *(v73 + 16);
    v92 = __OFADD__(v91, 1);
    v93 = v91 + 1;
    if (v92)
    {
      __break(1u);
    }

    *(v73 + 16) = v93;
LABEL_32:
    v94 = v121;
    v95 = v118;
    v97 = v128;
    v96 = v129;
    swift_unknownObjectRelease();
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v119[1](v95, v120);
    v98 = v126[1];
    v99 = v127;
    (v98)(v124, v127);
    (v98)(v125, v99);
    (v96[1])(v97, v130);
    v100 = v113;
    *v113 = v73;
    v101 = v114;
    *(v100 + *(v114 + 28)) = 1024;
    v102 = v112;
    *(v100 + *(v101 + 32)) = v112;
    v103 = v111;
    outlined init with take of MaterializedViewPhysicalPlan(v100, v111);
    v104 = v131;
    outlined init with take of MaterializedViewPhysicalPlan(v103, v94 + *(v131 + 20));
    *(v94 + *(v104 + 24)) = v102;
    v105 = (v94 + *(v104 + 28));
    v106 = v123;
    *v105 = v110;
    v105[1] = v106;
    v107 = v132;
    outlined init with take of MaterializedViewPhysicalPlan(v94, v132);
    __swift_storeEnumTagSinglePayload(v107, 0, 1, v104);
    swift_retain_n();
  }
}

uint64_t specialized Sequence.compactMap<A>(_:)(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for MaterializedViewPhysicalPlan(0);
  v26 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v28 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v25 = &v24 - v15;
  v16 = *(a3 + 16);
  v17 = (a3 + 32);
  v18 = MEMORY[0x1E69E7CC0];
  v27 = a1;
  if (v16)
  {
    while (1)
    {
      memcpy(__dst, v17, 0x80uLL);
      memcpy(v30, v17, sizeof(v30));
      outlined init with copy of Dataflow(__dst, v29);
      a1(v30);
      if (v3)
      {
        break;
      }

      memcpy(v29, v30, sizeof(v29));
      outlined destroy of Dataflow(v29);
      if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
      {
        outlined destroy of UUID?(v9, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
      }

      else
      {
        v19 = v25;
        outlined init with take of MaterializedViewPhysicalPlan(v9, v25);
        outlined init with take of MaterializedViewPhysicalPlan(v19, v28);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v18 = v21;
        }

        v20 = *(v18 + 16);
        if (v20 >= *(v18 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v18 = v22;
        }

        *(v18 + 16) = v20 + 1;
        outlined init with take of MaterializedViewPhysicalPlan(v28, v18 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v20);
        a1 = v27;
      }

      v17 += 128;
      if (!--v16)
      {
        return v18;
      }
    }

    memcpy(v29, v30, sizeof(v29));
    outlined destroy of Dataflow(v29);
  }

  return v18;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> IncrementalViewManager.clearAndRegenerate(viewName:databaseName:streamIdentifier:)(Swift::String viewName, Swift::String databaseName, Swift::String streamIdentifier)
{
  countAndFlagsBits = streamIdentifier._countAndFlagsBits;
  object = streamIdentifier._object;
  v5 = databaseName._object;
  v45 = viewName._countAndFlagsBits;
  v46 = databaseName._countAndFlagsBits;
  v6 = viewName._object;
  v7 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_2_1();
  v44 = v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_14();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v38[-v16];
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();

  v43 = v3;
  v18 = OSSignposter.logHandle.getter();
  v19 = static os_signpost_type_t.begin.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v20 = swift_slowAlloc();
    v39 = v19;
    v21 = v20;
    v22 = swift_slowAlloc();
    v40 = v7;
    v47 = v22;
    *v21 = 136446722;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v47);
    *(v21 + 12) = 2082;
    *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v5, &v47);
    *(v21 + 22) = 2082;
    *(v21 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v6, &v47);
    v23 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_1848EE000, v18, v39, v23, "IncrementalViewClearAndRegenerate", "stream:%{public}s database:%{public}s view:%{public}s", v21, 0x20u);
    swift_arrayDestroy();
    v7 = v40;
    OUTLINED_FUNCTION_11_1();
    MEMORY[0x1865F7B70]();
    OUTLINED_FUNCTION_11_1();
    MEMORY[0x1865F7B70]();
  }

  v24 = v44;
  (*(v44 + 16))(v13, v17, v7);
  v25 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_35_0(v25);
  v26 = OSSignpostIntervalState.init(id:isOpen:)();
  if (one-time initialization token for initializedLibrary != -1)
  {
    OUTLINED_FUNCTION_3_9();
    swift_once();
  }

  v27 = v46;
  v28 = static UnifiedLibrary.Library.lookupDatabaseResource(identifier:)(v46, v5);
  v30 = v43;
  if (v28)
  {
    MEMORY[0x1EEE9AC00](v28, v29);
    v31 = v45;
    *&v38[-64] = v30;
    *&v38[-56] = v31;
    *&v38[-48] = v6;
    *&v38[-40] = v32;
    *&v38[-32] = v33;
    *&v38[-24] = v27;
    *&v38[-16] = v5;
    v34 = v42;
    (*(v33 + 24))();
    if (!v34)
    {
      v37 = v30;
      goto LABEL_11;
    }
  }

  else
  {
    updated = lazy protocol witness table accessor for type IncrementalViewManager.UpdateError and conformance IncrementalViewManager.UpdateError();
    OUTLINED_FUNCTION_63(&type metadata for IncrementalViewManager.UpdateError, updated);
    *v36 = v27;
    *(v36 + 8) = v5;
    *(v36 + 16) = 0;
    swift_willThrow();
  }

  v37 = v30;
LABEL_11:
  $defer #1 () in IncrementalViewManager.update(viewName:databaseName:streamIdentifier:)(v37, v26, "IncrementalViewClearAndRegenerate");

  (*(v24 + 8))(v17, v7);
}

uint64_t closure #1 in IncrementalViewManager.clear(viewName:databaseName:streamIdentifier:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v98 = a7;
  v97 = a6;
  v105 = a5;
  v100 = a3;
  v106 = a1;
  v102 = type metadata accessor for MaterializedViewPhysicalPlan(0);
  v9 = *(v102 - 8);
  v11 = MEMORY[0x1EEE9AC00](v102, v10);
  v104 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = (&v95 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v101 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v95 - v21;
  if (one-time initialization token for compute != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  v24 = __swift_project_value_buffer(v23, static Logging.compute);

  v95 = v24;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();

  v27 = os_log_type_enabled(v25, v26);
  v103 = v22;
  v96 = a4;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v110 = v29;
    *v28 = 136315394;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, a2, &v110);
    *(v28 + 12) = 2080;
    *(v28 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, a4, &v110);
    _os_log_impl(&dword_1848EE000, v25, v26, "IncrementalViewManager: clearing materialized view for %s in %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865F7B70](v29, -1, -1);
    MEMORY[0x1865F7B70](v28, -1, -1);
  }

  v30 = 0;
  v31 = *(v105 + 16);
  v32 = *(v31 + 16);
  while (1)
  {
    if (v32 == v30)
    {
      v37 = 1;
      v32 = v103;
      goto LABEL_17;
    }

    if (v30 >= *(v31 + 16))
    {
      __break(1u);
      goto LABEL_38;
    }

    outlined init with copy of MaterializedViewPhysicalPlan(v31 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v30, v15);
    MaterializedView.name.getter();
    v33 = String.lowercased()();

    v34 = String.lowercased()();
    if (v33._countAndFlagsBits == v34._countAndFlagsBits && v33._object == v34._object)
    {
      break;
    }

    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v36)
    {
      goto LABEL_16;
    }

    outlined destroy of MaterializedViewPhysicalPlan(v15);
    ++v30;
  }

LABEL_16:
  v32 = v103;
  outlined init with take of MaterializedViewPhysicalPlan(v15, v103);
  v37 = 0;
LABEL_17:
  v38 = v102;
  __swift_storeEnumTagSinglePayload(v32, v37, 1, v102);
  v39 = v101;
  outlined init with copy of Date?(v32, v101, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, 1, v38);
  v41 = v104;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of UUID?(v39, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
    lazy protocol witness table accessor for type IncrementalViewManager.UpdateError and conformance IncrementalViewManager.UpdateError();
    swift_allocError();
    *v42 = v106;
    *(v42 + 8) = a2;
    *(v42 + 16) = 3;
    swift_willThrow();

LABEL_26:
    v57 = v32;
    return outlined destroy of UUID?(v57, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
  }

  outlined init with take of MaterializedViewPhysicalPlan(v39, v104);
  v43 = v99;
  v44 = IncrementalViewManager.cachedDatabaseWithAccess(for:)(v97, v98);
  if (v43)
  {
    v45 = v41;
LABEL_25:
    outlined destroy of MaterializedViewPhysicalPlan(v45);
    goto LABEL_26;
  }

  v46 = v44;
  v47 = *(v44 + 2);
  v48 = sqlite3_exec(v47, "begin", 0, 0, 0);
  if (v48)
  {
    v49 = BMSQLDatabaseError(v48, v47, 0);
    swift_getErrorValue();
    v50 = Error.localizedDescription.getter();
    v52 = v51;

    v110 = v50;
    v111 = v52;
    strcpy(v109, "BMSQLDatabase");
    v109[7] = -4864;
    v107 = 0x62617461444C5153;
    v108 = 0xEB00000000657361;
    lazy protocol witness table accessor for type String and conformance String();
    v53 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v55 = v54;

    lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
    swift_allocError();
    *v56 = xmmword_184D29AB0;
    *(v56 + 16) = v53;
    *(v56 + 24) = v55;
    *(v56 + 32) = 1;
    goto LABEL_23;
  }

  v59._rawValue = *(v46 + 2);
  v60 = MaterializedView.name.getter();
  v62 = v61;
  v63._countAndFlagsBits = v60;
  v63._object = v62;
  IncrementalViewManager.clear(database:materializedViewName:)(v59, v63);
  v65 = v64;
  if (v64)
  {

    goto LABEL_32;
  }

  v66 = *(v46 + 2);
  v67 = sqlite3_exec(v66, "commit", 0, 0, 0);
  if (v67)
  {
    v68 = BMSQLDatabaseError(v67, v66, 0);
    swift_getErrorValue();
    v69 = Error.localizedDescription.getter();
    v71 = v70;

    v110 = v69;
    v111 = v71;
    strcpy(v109, "BMSQLDatabase");
    v109[7] = -4864;
    v107 = 0x62617461444C5153;
    v108 = 0xEB00000000657361;
    lazy protocol witness table accessor for type String and conformance String();
    v72 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v74 = v73;

    lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
    v65 = swift_allocError();
    *v75 = xmmword_184D29AC0;
    *(v75 + 16) = v72;
    *(v75 + 24) = v74;
    *(v75 + 32) = 1;
    swift_willThrow();
LABEL_32:
    v76 = *(v46 + 2);
    v77 = sqlite3_exec(v76, "rollback", 0, 0, 0);
    if (v77)
    {
      v78 = BMSQLDatabaseError(v77, v76, 0);
      swift_getErrorValue();
      v79 = Error.localizedDescription.getter();
      v81 = v80;

      v110 = v79;
      v111 = v81;
      strcpy(v109, "BMSQLDatabase");
      v109[7] = -4864;
      v107 = 0x62617461444C5153;
      v108 = 0xEB00000000657361;
      lazy protocol witness table accessor for type String and conformance String();
      v82 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v84 = v83;

      lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
      swift_allocError();
      *v85 = xmmword_184D29AD0;
      *(v85 + 16) = v82;
      *(v85 + 24) = v84;
      *(v85 + 32) = 1;
      swift_willThrow();

      outlined destroy of MaterializedViewPhysicalPlan(v104);
      goto LABEL_26;
    }

LABEL_23:
    swift_willThrow();

LABEL_24:
    v45 = v104;
    goto LABEL_25;
  }

  v86 = v96;

  v15 = Logger.logObject.getter();
  v87 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v15, v87))
  {
LABEL_38:

    goto LABEL_24;
  }

  v88 = swift_slowAlloc();
  v89 = swift_slowAlloc();
  v110 = v89;
  *v88 = 136315650;
  *(v88 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, a2, &v110);
  *(v88 + 12) = 2080;
  *(v88 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v86, &v110);
  *(v88 + 22) = 2080;
  v90 = [*(v46 + 3) description];
  v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v93 = v92;

  v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v93, &v110);

  *(v88 + 24) = v94;
  _os_log_impl(&dword_1848EE000, v15, v87, "IncrementalViewManager: cleared materialized views for %s in %s.Access assertion: %s", v88, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1865F7B70](v89, -1, -1);
  MEMORY[0x1865F7B70](v88, -1, -1);

  outlined destroy of MaterializedViewPhysicalPlan(v104);
  v57 = v103;
  return outlined destroy of UUID?(v57, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> IncrementalViewManager.clear(database:materializedViewName:)(Swift::OpaquePointer database, Swift::String materializedViewName)
{
  object = materializedViewName._object;
  countAndFlagsBits = materializedViewName._countAndFlagsBits;
  _StringGuts.grow(_:)(23);

  MEMORY[0x1865F6280](countAndFlagsBits, object);
  String.utf8CString.getter();
  OUTLINED_FUNCTION_13_1();
  v10 = sqlite3_exec(v5, v6, v7, v8, v9);

  if (v10)
  {
    v11 = BMSQLDatabaseError(v10, database._rawValue, 0);
    swift_getErrorValue();
    Error.localizedDescription.getter();

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2_7();
    lazy protocol witness table accessor for type String and conformance String();
    OUTLINED_FUNCTION_13_1();
    v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v14 = v13;

    v15 = lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
    OUTLINED_FUNCTION_63(&type metadata for SQLDatabaseError, v15);
    *v16 = 0xD000000000000015;
    *(v16 + 8) = 0x8000000184DDBE10;
    *(v16 + 16) = v12;
    *(v16 + 24) = v14;
    *(v16 + 32) = 1;
    swift_willThrow();
  }

  else
  {

    type metadata accessor for QueryPlannerMetadata(0);
    static QueryPlannerMetadata.clearMetadata(materializedViewName:database:)();
  }
}

uint64_t closure #1 in IncrementalViewManager.clearAndRegenerate(viewName:databaseName:streamIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v74 = a7;
  v73 = a6;
  v76 = a5;
  v75 = a4;
  v83 = a2;
  v80 = type metadata accessor for MaterializedViewPhysicalPlan(0);
  v9 = *(v80 - 8);
  v11 = MEMORY[0x1EEE9AC00](v80, v10);
  v78 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v72 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v79 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v18, v20);
  v81 = a1;
  v82 = &v72 - v22;
  v23 = 0;
  v24 = *(a1 + 16);
  v25 = *(v24 + 16);
  while (1)
  {
    if (v25 == v23)
    {
      v30 = 1;
      v31 = v82;
      goto LABEL_13;
    }

    if (v23 >= *(v24 + 16))
    {
      break;
    }

    outlined init with copy of MaterializedViewPhysicalPlan(v24 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v23, v15);
    MaterializedView.name.getter();
    v26 = String.lowercased()();

    v27 = String.lowercased()();
    if (v26._countAndFlagsBits == v27._countAndFlagsBits && v26._object == v27._object)
    {

LABEL_12:
      v31 = v82;
      outlined init with take of MaterializedViewPhysicalPlan(v15, v82);
      v30 = 0;
LABEL_13:
      v32 = v80;
      __swift_storeEnumTagSinglePayload(v31, v30, 1, v80);
      v33 = v79;
      outlined init with copy of Date?(v31, v79, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
      if (__swift_getEnumTagSinglePayload(v33, 1, v32) == 1)
      {
        outlined destroy of UUID?(v33, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
        lazy protocol witness table accessor for type IncrementalViewManager.UpdateError and conformance IncrementalViewManager.UpdateError();
        swift_allocError();
        *v34 = v83;
        *(v34 + 8) = a3;
        *(v34 + 16) = 3;
        swift_willThrow();

        return outlined destroy of UUID?(v31, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
      }

      v35 = v78;
      outlined init with take of MaterializedViewPhysicalPlan(v33, v78);
      v36 = v77;
      v37 = IncrementalViewManager.cachedDatabaseWithAccess(for:)(v75, v76);
      if (!v36)
      {
        v38 = *(v37 + 2);

        v39 = sqlite3_exec(v38, "begin", 0, 0, 0);
        if (v39)
        {
          v40 = BMSQLDatabaseError(v39, v38, 0);
          swift_getErrorValue();
          v41 = Error.localizedDescription.getter();
          v43 = v42;

          v87 = v41;
          v88 = v43;
          strcpy(v86, "BMSQLDatabase");
          v86[7] = -4864;
          v84 = 0x62617461444C5153;
          v85 = 0xEB00000000657361;
          lazy protocol witness table accessor for type String and conformance String();
          v44 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v46 = v45;

          lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
          swift_allocError();
          *v47 = xmmword_184D29AB0;
          *(v47 + 16) = v44;
          *(v47 + 24) = v46;
          *(v47 + 32) = 1;
          goto LABEL_18;
        }

        v48 = MaterializedView.name.getter();
        v50 = v49;
        v51._countAndFlagsBits = v48;
        v51._object = v50;
        IncrementalViewManager.clear(database:materializedViewName:)(v38, v51);
        v53 = v52;
        if (v52)
        {

          goto LABEL_25;
        }

        IncrementalViewManager.update(database:materializedViewPlan:databaseName:)(v38, v35, v73, v74);
        v54 = sqlite3_exec(v38, "commit", 0, 0, 0);
        if (v54)
        {
          v55 = BMSQLDatabaseError(v54, v38, 0);
          swift_getErrorValue();
          v56 = Error.localizedDescription.getter();
          v58 = v57;

          v87 = v56;
          v88 = v58;
          strcpy(v86, "BMSQLDatabase");
          v86[7] = -4864;
          v84 = 0x62617461444C5153;
          v85 = 0xEB00000000657361;
          lazy protocol witness table accessor for type String and conformance String();
          v59 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v61 = v60;

          lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
          v53 = swift_allocError();
          *v62 = xmmword_184D29AC0;
          *(v62 + 16) = v59;
          *(v62 + 24) = v61;
          *(v62 + 32) = 1;
          swift_willThrow();
LABEL_25:
          v63 = sqlite3_exec(v38, "rollback", 0, 0, 0);
          if (v63)
          {
            v64 = BMSQLDatabaseError(v63, v38, 0);
            swift_getErrorValue();
            v65 = Error.localizedDescription.getter();
            v67 = v66;

            v87 = v65;
            v88 = v67;
            strcpy(v86, "BMSQLDatabase");
            v86[7] = -4864;
            v84 = 0x62617461444C5153;
            v85 = 0xEB00000000657361;
            lazy protocol witness table accessor for type String and conformance String();
            v68 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
            v70 = v69;

            lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
            swift_allocError();
            *v71 = xmmword_184D29AD0;
            *(v71 + 16) = v68;
            *(v71 + 24) = v70;
            *(v71 + 32) = 1;
            swift_willThrow();

            outlined destroy of MaterializedViewPhysicalPlan(v35);
            return outlined destroy of UUID?(v31, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
          }

LABEL_18:
          swift_willThrow();
        }
      }

      outlined destroy of MaterializedViewPhysicalPlan(v35);
      return outlined destroy of UUID?(v31, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
    }

    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v29)
    {
      goto LABEL_12;
    }

    result = outlined destroy of MaterializedViewPhysicalPlan(v15);
    ++v23;
  }

  __break(1u);
  return result;
}

uint64_t IncrementalViewManager.deinit()
{

  v1 = OBJC_IVAR____TtC12BiomeStreams22IncrementalViewManager_signposter;
  type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t IncrementalViewManager.__deallocating_deinit()
{
  IncrementalViewManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t IncrementalViewManager.UpdateError.description.getter(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
      OUTLINED_FUNCTION_3_8();
      _StringGuts.grow(_:)(48);

      OUTLINED_FUNCTION_14_0();
      v6 = v8 + 23;
      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_3_8();
      _StringGuts.grow(_:)(52);
      MEMORY[0x1865F6280](0xD000000000000031, 0x8000000184DDBD60);
      goto LABEL_8;
    case 3:
      OUTLINED_FUNCTION_3_8();
      _StringGuts.grow(_:)(25);

      OUTLINED_FUNCTION_14_0();
      goto LABEL_7;
    case 4:
      return 0xD000000000000021;
    default:
      OUTLINED_FUNCTION_3_8();
      _StringGuts.grow(_:)(31);

      OUTLINED_FUNCTION_14_0();
      v6 = v5 + 6;
LABEL_7:
      v9 = v6;
LABEL_8:
      MEMORY[0x1865F6280](a1, a2);
      MEMORY[0x1865F6280](34, 0xE100000000000000);
      return v9;
  }
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type IPCSFeatureFlag and conformance IPCSFeatureFlag()
{
  result = lazy protocol witness table cache variable for type IPCSFeatureFlag and conformance IPCSFeatureFlag;
  if (!lazy protocol witness table cache variable for type IPCSFeatureFlag and conformance IPCSFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IPCSFeatureFlag and conformance IPCSFeatureFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IPCSFeatureFlag and conformance IPCSFeatureFlag;
  if (!lazy protocol witness table cache variable for type IPCSFeatureFlag and conformance IPCSFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IPCSFeatureFlag and conformance IPCSFeatureFlag);
  }

  return result;
}

uint64_t closure #1 in OSLogArguments.append(_:)(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v50 = a3;
  v6 = type metadata accessor for SQLDataType();
  Description = v6[-1].Description;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v48 = (v40 - v15);
  v47 = *(a1 + 16);
  if (!v47)
  {
LABEL_13:

    return;
  }

  v40[1] = v3;
  v41 = a1;
  v16 = 0;
  v46 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v17 = *(v13 + 48);
  v44 = Description;
  v45 = v17;
  v49 = (Description + 32);
  v42 = v10;
  v43 = v6;
  while (1)
  {
    if (v16 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v18 = v14;
    v19 = v48;
    outlined init with copy of Date?(v46 + *(v14 + 72) * v16, v48, &_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
    v21 = v19[1];
    v53 = *v19;
    v20 = v53;
    v54 = v21;
    v22 = *v49;
    (*v49)(v10, v19 + v45, v6);
    v23 = *v50;
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v21);
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_19;
    }

    v29 = v24;
    if (v23[3] < v28)
    {
      break;
    }

    if (a2)
    {
      if (v24)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss17_NativeDictionaryVySS14BiomeSQLParser11SQLDataTypeOGMR);
      _NativeDictionary.copy()();
      if (v29)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v32 = *v50;
    *(*v50 + 8 * (v25 >> 6) + 64) |= 1 << v25;
    v33 = (v32[6] + 16 * v25);
    *v33 = v20;
    v33[1] = v21;
    v6 = v43;
    v34 = v32[7] + *(v44 + 9) * v25;
    v10 = v42;
    v22(v34, v42, v43);
    v35 = v32[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_20;
    }

    ++v16;
    v32[2] = v37;
    a2 = 1;
    a1 = v41;
    v14 = v18;
    if (v47 == v16)
    {
      goto LABEL_13;
    }
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, a2 & 1);
  v30 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v21);
  if ((v29 & 1) != (v31 & 1))
  {
    goto LABEL_21;
  }

  v25 = v30;
  if ((v29 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v38 = swift_allocError();
  swift_willThrow();

  v55 = v38;
  v39 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v44 + 1))(v42, v43);

    return;
  }

LABEL_22:
  v51 = 0;
  v52 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x1865F6280](0xD00000000000001BLL, 0x8000000184DDBED0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865F6280](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type IncrementalViewManager.UpdateError and conformance IncrementalViewManager.UpdateError()
{
  result = lazy protocol witness table cache variable for type IncrementalViewManager.UpdateError and conformance IncrementalViewManager.UpdateError;
  if (!lazy protocol witness table cache variable for type IncrementalViewManager.UpdateError and conformance IncrementalViewManager.UpdateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalViewManager.UpdateError and conformance IncrementalViewManager.UpdateError);
  }

  return result;
}

uint64_t type metadata accessor for IncrementalViewManager(uint64_t a1)
{
  result = type metadata singleton initialization cache for IncrementalViewManager;
  if (!type metadata singleton initialization cache for IncrementalViewManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for IncrementalViewManager(uint64_t a1)
{
  result = type metadata accessor for OSSignposter();
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

uint64_t get_enum_tag_for_layout_string_12BiomeStreams22IncrementalViewManagerC11UpdateErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t getEnumTagSinglePayload for IncrementalViewManager.UpdateError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for IncrementalViewManager.UpdateError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t destructiveInjectEnumTag for IncrementalViewManager.UpdateError(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for IPCSFeatureFlag(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t SQLExpressionEvaluatorError.description.getter()
{
  v0 = type metadata accessor for SQLExpression();
  OUTLINED_FUNCTION_2_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_13();
  v7 = v6 - v5;
  type metadata accessor for SQLExpressionEvaluatorError(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_13();
  v12 = v11 - v10;
  outlined init with copy of SQLExpressionEvaluatorError();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13SQLExpressionV10expression_SS7messagetMd, &_s14BiomeSQLParser13SQLExpressionV10expression_SS7messagetMR) + 48));
    v15 = *v13;
    v14 = v13[1];
    v16 = OUTLINED_FUNCTION_17_0();
    v17(v16);
    _StringGuts.grow(_:)(48);
    MEMORY[0x1865F6280](0xD00000000000002ALL, 0x8000000184DDBF40);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865F6280](8238, 0xE200000000000000);
    MEMORY[0x1865F6280](v15, v14);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_17_0();
    v19(v18);
    _StringGuts.grow(_:)(27);
    MEMORY[0x1865F6280](0xD000000000000019, 0x8000000184DDBF70);
    _print_unlocked<A, B>(_:_:)();
  }

  (*(v2 + 8))(v7, v0);
  return 0;
}

uint64_t SQLExpressionEvaluator.init(isReadOnly:)(char a1)
{
  v3 = v1;
  ppDb[1] = *MEMORY[0x1E69E9840];
  ppDb[0] = 0;
  if (a1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = sqlite3_open_v2(":memory:", ppDb, v4, 0);
  if (v5 || !ppDb[0])
  {
    v19 = BMSQLDatabaseError(v5, ppDb[0], 0);
    swift_getErrorValue();
    Error.localizedDescription.getter();

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2_7();
    lazy protocol witness table accessor for type String and conformance String();
    OUTLINED_FUNCTION_3_10();
    v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v22 = v21;

    v23 = lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
    OUTLINED_FUNCTION_63(&type metadata for SQLDatabaseError, v23);
    *v24 = v20;
    *(v24 + 8) = v22;
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0;
    swift_willThrow();
  }

  else
  {
    *(v1 + 24) = ppDb[0];
    *(v1 + 16) = 1;
    *(v1 + 32) = Dictionary.init(dictionaryLiteral:)();
    v6 = OUTLINED_FUNCTION_16_1();
    v11 = OUTLINED_FUNCTION_18_0(v6, v7, v8, v9, v10);
    v12 = OUTLINED_FUNCTION_25_1(v11);
    swift_getErrorValue();
    Error.localizedDescription.getter();

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2_7();
    lazy protocol witness table accessor for type String and conformance String();
    OUTLINED_FUNCTION_3_10();
    v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v15 = v14;

    v16 = lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
    v17 = OUTLINED_FUNCTION_63(&type metadata for SQLDatabaseError, v16);
    *v18 = 0xD000000000000054;
    v18[1] = v2;
    v18[2] = v13;
    v18[3] = v15;
    OUTLINED_FUNCTION_20_2(v17, v18);
  }

  OUTLINED_FUNCTION_26_1();
  return v3;
}

uint64_t type metadata accessor for SQLExpressionEvaluatorError(uint64_t a1)
{
  result = type metadata singleton initialization cache for SQLExpressionEvaluatorError;
  if (!type metadata singleton initialization cache for SQLExpressionEvaluatorError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v2;
  v8 = *(*v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSs13OpaquePointerVGMd, &_ss17_NativeDictionaryVySSs13OpaquePointerVGMR);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v8);

  v9 = *(*(v11 + 56) + 8 * v6);
  _NativeDictionary._delete(at:)();
  *v3 = v11;
  return v9;
}

uint64_t outlined init with take of (offset: Int, element: StorableValue)()
{
  OUTLINED_FUNCTION_1_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_81();
  v4(v3);
  return v0;
}

unint64_t lazy protocol witness table accessor for type StorableValue and conformance StorableValue()
{
  result = lazy protocol witness table cache variable for type StorableValue and conformance StorableValue;
  if (!lazy protocol witness table cache variable for type StorableValue and conformance StorableValue)
  {
    type metadata accessor for StorableValue(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue and conformance StorableValue);
  }

  return result;
}

uint64_t outlined init with copy of UUID?()
{
  OUTLINED_FUNCTION_1_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_81();
  v4(v3);
  return v0;
}

void type metadata completion function for SQLExpressionEvaluatorError(uint64_t a1)
{
  type metadata accessor for (expression: SQLExpression)();
  if (v1 <= 0x3F)
  {
    type metadata accessor for (expression: SQLExpression, message: String)(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (expression: SQLExpression)()
{
  if (!lazy cache variable for type metadata for (expression: SQLExpression))
  {
    v0 = type metadata accessor for SQLExpression();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (expression: SQLExpression));
    }
  }
}

void type metadata accessor for (expression: SQLExpression, message: String)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (expression: SQLExpression, message: String))
  {
    type metadata accessor for SQLExpression();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (expression: SQLExpression, message: String));
    }
  }
}

uint64_t one-time initialization function for numeratorKey()
{
  v1 = String.lowercased()();
  result = v1._countAndFlagsBits;
  static AVG.numeratorKey = v1;
  return result;
}

uint64_t one-time initialization function for denominatorKey()
{
  v1 = String.lowercased()();
  result = v1._countAndFlagsBits;
  static AVG.denominatorKey = v1;
  return result;
}

void AVG.getCurrentAggregationEvent()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_212();
  v18 = OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_2_1();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_14();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v28 = OUTLINED_FUNCTION_33_1();
  v29 = type metadata accessor for StorableValue(v28);
  v30 = OUTLINED_FUNCTION_47(v29);
  MEMORY[0x1EEE9AC00](v30, v31);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_45_0();
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = (&v45 - v34);
  v36 = type metadata accessor for AVG(0);
  v37 = *(v14 + v36[8]);
  if (v37)
  {
    v38 = *(v14 + v36[7]) / v37;
    *(&v46 + 1) = MEMORY[0x1E69E63B0];
    *&v45 = v38;
    v39 = v36[6];
    v40 = *(v20 + 16);
    v40(v25, v14 + v39, v18);
    StorableValue.init(_:dataType:)(&v45, v25, v16);
    if (!v15)
    {
      v41 = OUTLINED_FUNCTION_27_0();
      v40(v41, v14 + v39, v18);
LABEL_6:
      OUTLINED_FUNCTION_3_11();
      _s12BiomeStreams13StorableValueOWObTm_0();
    }
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
    v42 = v36[6];
    v43 = *(v20 + 16);
    v43(v17, v14 + v42, v18);
    StorableValue.init(_:dataType:)(&v45, v17, v35);
    if (!v15)
    {
      v44 = OUTLINED_FUNCTION_27_0();
      v43(v44, v14 + v42, v18);
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_211();
}

void AVG.processEvent(changeRecord:expressionEvaluator:)()
{
  OUTLINED_FUNCTION_121();
  v11 = OUTLINED_FUNCTION_200(v6, v7, v8, v9, v10);
  v12 = OUTLINED_FUNCTION_47(v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_43();
  v144 = type metadata accessor for Date();
  OUTLINED_FUNCTION_2_1();
  v140 = v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_12_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v18 = OUTLINED_FUNCTION_47(v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_45_0();
  MEMORY[0x1EEE9AC00](v20, v21);
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v24, v25);
  v26 = OUTLINED_FUNCTION_33_1();
  v27 = type metadata accessor for AggregationEvent(v26);
  v28 = OUTLINED_FUNCTION_47(v27);
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_13();
  AVG.getCurrentAggregationEvent()(v30, v31, v32, v33, v34, v35, v36, v37, v136, v137, v139, v140, v142, v144);
  if (!v147)
  {
    v138 = v3;
    v38 = type metadata accessor for AVG(0);
    SQLExpressionEvaluator.execute(expression:payload:)(v4);
    v146 = v38;
    v39 = v0;
    OUTLINED_FUNCTION_1_17();
    outlined init with copy of StorableValue();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v48 = v143;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_179();
        if ((v66 & 1) == 0)
        {
          OUTLINED_FUNCTION_97_0();
          OUTLINED_FUNCTION_31_1(v67, v68, v69);
          if (!v56)
          {
            goto LABEL_64;
          }

          __break(1u);
          goto LABEL_19;
        }

        goto LABEL_65;
      case 2:
LABEL_19:
        outlined init with take of UUID?(v1, v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        OUTLINED_FUNCTION_86_0();
        outlined init with copy of Date?(v70, v71, v72, &_s10Foundation4DateVSgMR);
        v73 = OUTLINED_FUNCTION_151();
        OUTLINED_FUNCTION_92(v73, v74, v145);
        if (v64)
        {
          v75 = OUTLINED_FUNCTION_113();
          outlined destroy of UUID?(v75, v76, &_s10Foundation4DateVSgMR);
          EnumCaseMultiPayload = outlined destroy of UUID?(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        }

        else
        {
          v0 = v2;
          v95 = OUTLINED_FUNCTION_108();
          v96(v95);
          Date.timeIntervalSince1970.getter();
          v98 = v97;
          v99 = OUTLINED_FUNCTION_50();
          v100(v99);
          EnumCaseMultiPayload = outlined destroy of UUID?(v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          *(v39 + *(v146 + 28)) = v98 + *(v39 + *(v146 + 28));
          v101 = *(v146 + 32);
          v102 = *(v39 + v101);
          v56 = __OFADD__(v102, 1);
          v103 = v102 + 1;
          if (v56)
          {
            __break(1u);
            goto LABEL_83;
          }

          *(v39 + v101) = v103;
        }

        goto LABEL_65;
      case 3:
        goto LABEL_7;
      case 4:
        OUTLINED_FUNCTION_177();
        if (!v0)
        {
          goto LABEL_65;
        }

        OUTLINED_FUNCTION_96_0();
        MEMORY[0x1EEE9AC00](v83, v84);
        OUTLINED_FUNCTION_8_2();
        if ((v0 & 0x1000000000000000) != 0)
        {
          goto LABEL_81;
        }

        if ((v0 & 0x2000000000000000) == 0)
        {
          if ((v87 & 0x1000000000000000) == 0)
          {
LABEL_81:
            OUTLINED_FUNCTION_162();
            _StringGuts._slowWithCString<A>(_:)();

            goto LABEL_54;
          }

          OUTLINED_FUNCTION_95_0();
          if (!v64 & v63 || (OUTLINED_FUNCTION_94_0(), (v88 & 1) == 0))
          {
            if (_swift_stdlib_strtod_clocale())
            {
              OUTLINED_FUNCTION_93_0();
            }
          }

          goto LABEL_53;
        }

        OUTLINED_FUNCTION_23_1(v85, v86, v87);
        if (!(!v64 & v63))
        {
          switch(v106)
          {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
              goto LABEL_71;
            default:
              goto LABEL_53;
          }
        }

        if (v107 == 32)
        {
          goto LABEL_53;
        }

LABEL_71:
        if (!OUTLINED_FUNCTION_163())
        {
          goto LABEL_53;
        }

        OUTLINED_FUNCTION_209();
        OUTLINED_FUNCTION_137();
        goto LABEL_54;
      case 5:
        if (*(v1 + 8) >> 60 == 15)
        {
          goto LABEL_65;
        }

        static String.Encoding.utf8.getter();
        OUTLINED_FUNCTION_112();
        String.init(data:encoding:)();
        if (!v89)
        {
          v108 = OUTLINED_FUNCTION_112();
          outlined consume of Data?(v108, v109);
          v112 = OUTLINED_FUNCTION_178();
          goto LABEL_63;
        }

        v48 = v89;
        OUTLINED_FUNCTION_96_0();
        MEMORY[0x1EEE9AC00](v90, v91);
        OUTLINED_FUNCTION_8_2();
        if ((v48 & 0x1000000000000000) != 0)
        {
          goto LABEL_84;
        }

        if ((v48 & 0x2000000000000000) != 0)
        {
          goto LABEL_57;
        }

        if ((v42 & 0x1000000000000000) == 0)
        {
          goto LABEL_84;
        }

        switch(*((v48 & 0xFFFFFFFFFFFFFFFLL) + 0x20))
        {
          case 0:
          case 9:
          case 0xA:
          case 0xB:
          case 0xC:
          case 0xD:
            goto LABEL_38;
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
            goto LABEL_77;
          default:
            if (*((v48 & 0xFFFFFFFFFFFFFFFLL) + 0x20) == 32)
            {
              goto LABEL_38;
            }

LABEL_77:
            v130 = _swift_stdlib_strtod_clocale();
            if (v130)
            {
              v131 = *v130;
              v132 = OUTLINED_FUNCTION_112();
              outlined consume of Data?(v132, v133);
              v94 = v131 == 0;
            }

            else
            {
LABEL_38:
              v92 = OUTLINED_FUNCTION_112();
              outlined consume of Data?(v92, v93);
              v94 = 0;
            }

            break;
        }

        goto LABEL_60;
      case 6:
        v77 = OUTLINED_FUNCTION_178();
        OUTLINED_FUNCTION_31_1(v78, v77, v79);
        if (!v56)
        {
          *(v0 + v80) = v81;
          OUTLINED_FUNCTION_0_20();
          EnumCaseMultiPayload = _s12BiomeStreams13StorableValueOWOhTm_0(v1, v82);
          goto LABEL_65;
        }

        __break(1u);
        goto LABEL_80;
      case 7:
        goto LABEL_65;
      default:
        OUTLINED_FUNCTION_179();
        if (v49)
        {
          goto LABEL_65;
        }

        OUTLINED_FUNCTION_97_0();
        *(v0 + v52) = v51 + v50;
        v54 = *(v53 + 32);
        v55 = *(v0 + v54);
        v56 = __OFADD__(v55, 1);
        v57 = v55 + 1;
        if (!v56)
        {
          goto LABEL_64;
        }

        __break(1u);
LABEL_7:
        OUTLINED_FUNCTION_177();
        if (!v0)
        {
          goto LABEL_65;
        }

        OUTLINED_FUNCTION_96_0();
        MEMORY[0x1EEE9AC00](v58, v59);
        OUTLINED_FUNCTION_8_2();
        if ((v0 & 0x1000000000000000) != 0)
        {
          goto LABEL_80;
        }

        if ((v0 & 0x2000000000000000) != 0)
        {
          OUTLINED_FUNCTION_23_1(v60, v61, v62);
          if (!(!v64 & v63))
          {
            switch(v104)
            {
              case 1:
              case 2:
              case 3:
              case 4:
              case 5:
              case 6:
              case 7:
              case 8:
                goto LABEL_68;
              default:
                goto LABEL_49;
            }
          }

          if (v105 == 32)
          {
            goto LABEL_49;
          }

LABEL_68:
          if (!OUTLINED_FUNCTION_163())
          {
LABEL_49:

            goto LABEL_50;
          }

          OUTLINED_FUNCTION_209();
          OUTLINED_FUNCTION_137();
        }

        else
        {
          if ((v62 & 0x1000000000000000) != 0)
          {
            OUTLINED_FUNCTION_95_0();
            if (!v64 & v63 || (OUTLINED_FUNCTION_94_0(), (v65 & 1) == 0))
            {
              if (_swift_stdlib_strtod_clocale())
              {
                OUTLINED_FUNCTION_93_0();
              }
            }

            goto LABEL_49;
          }

LABEL_80:
          OUTLINED_FUNCTION_162();
          _StringGuts._slowWithCString<A>(_:)();
        }

LABEL_50:
        OUTLINED_FUNCTION_66_0();
        OUTLINED_FUNCTION_97_0();
        OUTLINED_FUNCTION_31_1(v114, v115, v116);
        if (!v56)
        {
          goto LABEL_64;
        }

        __break(1u);
LABEL_53:

LABEL_54:
        OUTLINED_FUNCTION_66_0();
        OUTLINED_FUNCTION_97_0();
        OUTLINED_FUNCTION_31_1(v117, v118, v119);
        if (!v56)
        {
          goto LABEL_64;
        }

        __break(1u);
LABEL_57:
        OUTLINED_FUNCTION_28_1(v42, v48 & 0xFFFFFFFFFFFFFFLL);
        if (!(!v64 & v63))
        {
          switch(v120)
          {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
              goto LABEL_74;
            default:
              goto LABEL_59;
          }
        }

        if (v121 == 32)
        {
          goto LABEL_59;
        }

LABEL_74:
        v126 = OUTLINED_FUNCTION_163();
        if (v126)
        {
          v127 = *v126;
          v128 = OUTLINED_FUNCTION_112();
          outlined consume of Data?(v128, v129);

          v94 = v127 == 0;
        }

        else
        {
LABEL_59:
          v122 = OUTLINED_FUNCTION_112();
          outlined consume of Data?(v122, v123);

          v94 = 0;
        }

        while (1)
        {
LABEL_60:
          v111 = v146;
          v112 = v149;
          if (!v94)
          {
            v112 = 0.0;
          }

          v110 = *(v146 + 28);
          v113 = *(v0 + v110);
LABEL_63:
          *(v0 + v110) = v112 + v113;
          v54 = *(v111 + 32);
          v124 = *(v0 + v54);
          v56 = __OFADD__(v124, 1);
          v57 = v124 + 1;
          if (!v56)
          {
            break;
          }

LABEL_83:
          __break(1u);
LABEL_84:
          OUTLINED_FUNCTION_162();
          _StringGuts._slowWithCString<A>(_:)();
          v134 = OUTLINED_FUNCTION_112();
          outlined consume of Data?(v134, v135);

          v94 = v148;
        }

LABEL_64:
        *(v0 + v54) = v57;
LABEL_65:
        AVG.getCurrentAggregationEvent()(EnumCaseMultiPayload, v41, v42, v43, v44, v45, v46, v47, v2, v138, v1, v141, v143, v145);
        OUTLINED_FUNCTION_0_20();
        _s12BiomeStreams13StorableValueOWOhTm_0(v4, v125);
        OUTLINED_FUNCTION_4_6();
        _s12BiomeStreams13StorableValueOWObTm_0();
        break;
    }
  }

  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_124();
}

uint64_t AVG.aggregationMetadata()()
{
  OUTLINED_FUNCTION_204();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_12BiomeStreams13StorableValueOtGMd, &_ss23_ContiguousArrayStorageCySS_12BiomeStreams13StorableValueOtGMR);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_12BiomeStreams13StorableValueOtMd, &_sSS_12BiomeStreams13StorableValueOtMR);
  OUTLINED_FUNCTION_46_0();
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_64_0();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_184D29A90;
  v7 = v6 + v1;
  if (one-time initialization token for numeratorKey != -1)
  {
    OUTLINED_FUNCTION_82_0();
    swift_once();
  }

  v8 = OUTLINED_FUNCTION_142(&static AVG.numeratorKey);
  v9 = type metadata accessor for AVG(v8);
  OUTLINED_FUNCTION_68_0(v9);
  OUTLINED_FUNCTION_146();
  swift_storeEnumTagMultiPayload();
  v10 = *(v3 + 48);
  v11 = one-time initialization token for denominatorKey;

  if (v11 != -1)
  {
    OUTLINED_FUNCTION_81_0();
    swift_once();
  }

  v12 = (v7 + v5);
  v13 = v7 + v5 + v10;
  v14 = *(&static AVG.denominatorKey + 1);
  *v12 = static AVG.denominatorKey;
  v12[1] = v14;
  *v13 = *(v0 + *(v2 + 32));
  *(v13 + 8) = 0;
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_169();

  return Dictionary.init(dictionaryLiteral:)();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AVG.applyMetadata(metadata:)(Swift::OpaquePointer metadata)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_44_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
  v6 = OUTLINED_FUNCTION_47(v5);
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_63_0();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_65_0();
  if (!*(v2 + 16))
  {
    v16 = type metadata accessor for AVG(0);
    v17 = 0;
    *(v1 + *(v16 + 28)) = 0;
    goto LABEL_13;
  }

  if (one-time initialization token for numeratorKey != -1)
  {
    OUTLINED_FUNCTION_82_0();
    swift_once();
    if (!*(v2 + 16))
    {
      goto LABEL_21;
    }
  }

  OUTLINED_FUNCTION_165(&static AVG.numeratorKey);
  if ((v10 & 1) == 0)
  {
    goto LABEL_21;
  }

  if (one-time initialization token for denominatorKey != -1)
  {
    OUTLINED_FUNCTION_81_0();
    swift_once();
  }

  if (!*(v2 + 16))
  {
    goto LABEL_21;
  }

  v11 = OUTLINED_FUNCTION_109();
  specialized __RawDictionaryStorage.find<A>(_:)(v11, v12);
  if ((v13 & 1) == 0)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_125();
  type metadata accessor for StorableValue(0);
  OUTLINED_FUNCTION_26_2(v4);
  if (v14)
  {
    v15 = v4;
LABEL_11:
    outlined destroy of UUID?(v15, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
    goto LABEL_21;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_0_20();
    v25 = v4;
LABEL_20:
    _s12BiomeStreams13StorableValueOWOhTm_0(v25, v24);
    goto LABEL_21;
  }

  if (*(v4 + 8))
  {
LABEL_21:
    v26 = lazy protocol witness table accessor for type SQLError and conformance SQLError();
    v27 = OUTLINED_FUNCTION_63(&type metadata for SQLError, v26);
    OUTLINED_FUNCTION_19_2(v27, v28);
    swift_willThrow();

    goto LABEL_22;
  }

  v19 = *v4;
  v16 = type metadata accessor for AVG(0);
  *(v1 + *(v16 + 28)) = v19;
  OUTLINED_FUNCTION_86_0();
  specialized Dictionary.subscript.getter(v20, v21, v22, v23);
  OUTLINED_FUNCTION_26_2(v3);
  if (v14)
  {
    v15 = v3;
    goto LABEL_11;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_0_20();
    v25 = v3;
    goto LABEL_20;
  }

  if (*(v3 + 8) == 1)
  {
    goto LABEL_21;
  }

  v17 = *v3;
LABEL_13:
  *(v1 + *(v16 + 32)) = v17;
LABEL_22:
  OUTLINED_FUNCTION_124();
}

uint64_t one-time initialization function for countKey()
{
  v1 = String.lowercased()();
  result = v1._countAndFlagsBits;
  static COUNT.countKey = v1;
  return result;
}

{
  v1 = String.lowercased()();
  result = v1._countAndFlagsBits;
  static COUNT_STAR.countKey = v1;
  return result;
}

void COUNT.getCurrentAggregationEvent()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_212();
  v17 = OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_12_3();
  v20 = type metadata accessor for StorableValue(0);
  v21 = OUTLINED_FUNCTION_47(v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_13();
  v23 = OUTLINED_FUNCTION_139();
  type metadata accessor for COUNT(v23);
  OUTLINED_FUNCTION_117();
  v25 = *(v24 + 24);
  v26 = OUTLINED_FUNCTION_99_0();
  v16(v26);
  OUTLINED_FUNCTION_122();
  if (!v15)
  {
    v27 = OUTLINED_FUNCTION_27_0();
    (v16)(v27, v14 + v25, v17);
    OUTLINED_FUNCTION_3_11();
    OUTLINED_FUNCTION_135();
    _s12BiomeStreams13StorableValueOWObTm_0();
  }

  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_211();
}

uint64_t COUNT.aggregationMetadata()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_12BiomeStreams13StorableValueOtGMd, &_ss23_ContiguousArrayStorageCySS_12BiomeStreams13StorableValueOtGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_12BiomeStreams13StorableValueOtMd, &_sSS_12BiomeStreams13StorableValueOtMR);
  OUTLINED_FUNCTION_47_0();
  v0 = OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_191(v0, xmmword_184D29AA0);
  if (one-time initialization token for countKey != -1)
  {
    OUTLINED_FUNCTION_74_0();
    swift_once();
  }

  v1 = OUTLINED_FUNCTION_30_1(&static COUNT.countKey);
  type metadata accessor for COUNT(v1);
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_164(v2);
  OUTLINED_FUNCTION_140();
  swift_storeEnumTagMultiPayload();

  return Dictionary.init(dictionaryLiteral:)();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> COUNT.applyMetadata(metadata:)(Swift::OpaquePointer metadata)
{
  OUTLINED_FUNCTION_44_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_49_0();
  if (!v7)
  {
    v15 = type metadata accessor for COUNT(0);
    v16 = 0;
    goto LABEL_8;
  }

  if (one-time initialization token for countKey != -1)
  {
    OUTLINED_FUNCTION_74_0();
    swift_once();
    if (!*(v2 + 16))
    {
      goto LABEL_12;
    }
  }

  v8 = OUTLINED_FUNCTION_110();
  specialized __RawDictionaryStorage.find<A>(_:)(v8, v9);
  if ((v10 & 1) == 0)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_85_0();
  v11 = type metadata accessor for StorableValue(0);
  v12 = OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_92(v12, v13, v11);
  if (!v14)
  {
    if (swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_0_20();
      _s12BiomeStreams13StorableValueOWOhTm_0(v3, v18);
      goto LABEL_12;
    }

    if (*(v3 + 8) == 1)
    {
      goto LABEL_12;
    }

    v16 = *v3;
    v15 = type metadata accessor for COUNT(0);
LABEL_8:
    *(v1 + *(v15 + 28)) = v16;
    return;
  }

  outlined destroy of UUID?(v3, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
LABEL_12:
  v19 = lazy protocol witness table accessor for type SQLError and conformance SQLError();
  v20 = OUTLINED_FUNCTION_63(&type metadata for SQLError, v19);
  OUTLINED_FUNCTION_19_2(v20, v21);
  swift_willThrow();
}

uint64_t one-time initialization function for sumKey()
{
  v1 = String.lowercased()();
  result = v1._countAndFlagsBits;
  static SUM_INT.sumKey = v1;
  return result;
}

{
  v1 = String.lowercased()();
  result = v1._countAndFlagsBits;
  static SUM_NON_INT.sumKey = v1;
  return result;
}

uint64_t one-time initialization function for isNonNullEventSeenKey()
{
  v1 = String.lowercased()();
  result = v1._countAndFlagsBits;
  static SUM_INT.isNonNullEventSeenKey = v1;
  return result;
}

{
  v1 = String.lowercased()();
  result = v1._countAndFlagsBits;
  static SUM_NON_INT.isNonNullEventSeenKey = v1;
  return result;
}

void SUM_INT.getCurrentAggregationEvent()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_212();
  v20 = OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v23, v24);
  v25 = OUTLINED_FUNCTION_33_1();
  v26 = type metadata accessor for StorableValue(v25);
  v27 = OUTLINED_FUNCTION_47(v26);
  MEMORY[0x1EEE9AC00](v27, v28);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_45_0();
  MEMORY[0x1EEE9AC00](v29, v30);
  OUTLINED_FUNCTION_65_0();
  if (*(v14 + *(type metadata accessor for SUM_INT(0) + 32)))
  {
    OUTLINED_FUNCTION_117();
    v31 = OUTLINED_FUNCTION_161();
    v19(v31);
    OUTLINED_FUNCTION_202();
    if (!v15)
    {
      v32 = OUTLINED_FUNCTION_27_0();
      (v19)(v32, v14 + v16, v20);
LABEL_6:
      OUTLINED_FUNCTION_3_11();
      OUTLINED_FUNCTION_135();
      _s12BiomeStreams13StorableValueOWObTm_0();
    }
  }

  else
  {
    v33 = OUTLINED_FUNCTION_118();
    v18(v33);
    OUTLINED_FUNCTION_203();
    if (!v15)
    {
      v34 = OUTLINED_FUNCTION_27_0();
      (v18)(v34, v14 + v17, v20);
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_211();
}

uint64_t SUM_INT.aggregationMetadata()()
{
  OUTLINED_FUNCTION_204();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_12BiomeStreams13StorableValueOtGMd, &_ss23_ContiguousArrayStorageCySS_12BiomeStreams13StorableValueOtGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_12BiomeStreams13StorableValueOtMd, &_sSS_12BiomeStreams13StorableValueOtMR);
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_64_0();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_190(v0, xmmword_184D29A90);
  if (one-time initialization token for sumKey != -1)
  {
    OUTLINED_FUNCTION_84_0();
    swift_once();
  }

  v1 = OUTLINED_FUNCTION_142(&static SUM_INT.sumKey);
  v2 = type metadata accessor for SUM_INT(v1);
  OUTLINED_FUNCTION_68_0(v2);
  OUTLINED_FUNCTION_146();
  swift_storeEnumTagMultiPayload();
  v3 = one-time initialization token for isNonNullEventSeenKey;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_83_0();
    swift_once();
  }

  OUTLINED_FUNCTION_106_0(&static SUM_INT.isNonNullEventSeenKey);

  OUTLINED_FUNCTION_169();

  return Dictionary.init(dictionaryLiteral:)();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SUM_INT.applyMetadata(metadata:)(Swift::OpaquePointer metadata)
{
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_44_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
  v6 = OUTLINED_FUNCTION_47(v5);
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_63_0();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_65_0();
  if (*(v2 + 16))
  {
    if (one-time initialization token for sumKey != -1)
    {
      OUTLINED_FUNCTION_84_0();
      swift_once();
      if (!*(v2 + 16))
      {
        goto LABEL_17;
      }
    }

    OUTLINED_FUNCTION_165(&static SUM_INT.sumKey);
    if ((v10 & 1) == 0)
    {
      goto LABEL_17;
    }

    if (one-time initialization token for isNonNullEventSeenKey != -1)
    {
      OUTLINED_FUNCTION_83_0();
      swift_once();
    }

    if (!*(v2 + 16))
    {
      goto LABEL_17;
    }

    v11 = OUTLINED_FUNCTION_109();
    specialized __RawDictionaryStorage.find<A>(_:)(v11, v12);
    if ((v13 & 1) == 0)
    {
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_125();
    type metadata accessor for StorableValue(0);
    OUTLINED_FUNCTION_26_2(v4);
    if (v14)
    {
      v15 = v4;
    }

    else
    {
      if (swift_getEnumCaseMultiPayload())
      {
        OUTLINED_FUNCTION_0_20();
        v19 = v4;
LABEL_15:
        _s12BiomeStreams13StorableValueOWOhTm_0(v19, v18);
        goto LABEL_17;
      }

      if (*(v4 + 8) == 1)
      {
        goto LABEL_17;
      }

      v23 = *v4;
      *(v1 + *(type metadata accessor for SUM_INT(0) + 28)) = v23;
      OUTLINED_FUNCTION_86_0();
      specialized Dictionary.subscript.getter(v24, v25, v26, v27);
      OUTLINED_FUNCTION_26_2(v3);
      if (!v14)
      {
        if (!swift_getEnumCaseMultiPayload())
        {
          if ((*(v3 + 8) & 1) == 0 && *v3 < 2uLL)
          {
            OUTLINED_FUNCTION_193(*v3);
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        OUTLINED_FUNCTION_0_20();
        v19 = v3;
        goto LABEL_15;
      }

      v15 = v3;
    }

    outlined destroy of UUID?(v15, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
LABEL_17:
    v20 = lazy protocol witness table accessor for type SQLError and conformance SQLError();
    v21 = OUTLINED_FUNCTION_63(&type metadata for SQLError, v20);
    OUTLINED_FUNCTION_19_2(v21, v22);
    swift_willThrow();

    goto LABEL_18;
  }

  v16 = type metadata accessor for SUM_INT(0);
  OUTLINED_FUNCTION_189(v16);
LABEL_18:
  OUTLINED_FUNCTION_65();
}

void SUM_NON_INT.getCurrentAggregationEvent()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_212();
  v20 = OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v23, v24);
  v25 = OUTLINED_FUNCTION_33_1();
  v26 = type metadata accessor for StorableValue(v25);
  v27 = OUTLINED_FUNCTION_47(v26);
  MEMORY[0x1EEE9AC00](v27, v28);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_45_0();
  MEMORY[0x1EEE9AC00](v29, v30);
  OUTLINED_FUNCTION_65_0();
  if (*(v14 + *(type metadata accessor for SUM_NON_INT(0) + 32)))
  {
    v31 = OUTLINED_FUNCTION_161();
    v19(v31);
    OUTLINED_FUNCTION_202();
    if (!v15)
    {
      v32 = OUTLINED_FUNCTION_27_0();
      (v19)(v32, v14 + v16, v20);
LABEL_6:
      OUTLINED_FUNCTION_3_11();
      OUTLINED_FUNCTION_135();
      _s12BiomeStreams13StorableValueOWObTm_0();
    }
  }

  else
  {
    v33 = OUTLINED_FUNCTION_118();
    v18(v33);
    OUTLINED_FUNCTION_203();
    if (!v15)
    {
      v34 = OUTLINED_FUNCTION_27_0();
      (v18)(v34, v14 + v17, v20);
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_211();
}

void SUM_NON_INT.processEvent(changeRecord:expressionEvaluator:)()
{
  OUTLINED_FUNCTION_121();
  v159 = v5;
  v160 = v1;
  v157 = v6;
  v158 = v7;
  v154 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_47(v9);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v10, v11);
  v156 = &v148 - v12;
  OUTLINED_FUNCTION_43();
  v13 = type metadata accessor for String.Encoding();
  v14 = OUTLINED_FUNCTION_47(v13);
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_9();
  v155 = v16;
  OUTLINED_FUNCTION_43();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_2_1();
  v152 = v18;
  v153 = v17;
  MEMORY[0x1EEE9AC00](v17, v19);
  OUTLINED_FUNCTION_12_3();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v21 = OUTLINED_FUNCTION_47(v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_143();
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v148 - v25;
  type metadata accessor for StorableValue(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v27, v28);
  OUTLINED_FUNCTION_14();
  v31 = v29 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v148 - v34;
  v36 = OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v36, v37);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_138();
  v38 = v160;
  SUM_NON_INT.getCurrentAggregationEvent()(v39, v40, v41, v42, v43, v44, v45, v46, v148, v149, v150, v151, v152, v153);
  if (v38)
  {
    goto LABEL_61;
  }

  v150 = v4;
  v151 = v31;
  v47 = v156;
  v149 = v2;
  v160 = v3;
  v48 = type metadata accessor for SUM_NON_INT(0);
  SQLExpressionEvaluator.execute(expression:payload:)(v35);
  v158 = 0;
  OUTLINED_FUNCTION_1_17();
  outlined init with copy of StorableValue();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v57 = v0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      if ((v151[1] & 1) == 0)
      {
        OUTLINED_FUNCTION_160();
        if ((v73 & 1) == 0)
        {
          OUTLINED_FUNCTION_159(v71);
        }

        OUTLINED_FUNCTION_102_0(*(v48 + 28), v72);
      }

      goto LABEL_59;
    case 2:
      v74 = v26;
      OUTLINED_FUNCTION_127();
      outlined init with take of UUID?(v75, v76, v77, v78);
      v79 = v150;
      OUTLINED_FUNCTION_86_0();
      outlined init with copy of Date?(v80, v81, v82, &_s10Foundation4DateVSgMR);
      v83 = OUTLINED_FUNCTION_151();
      v84 = v153;
      OUTLINED_FUNCTION_92(v83, v85, v153);
      if (v86)
      {
        v87 = OUTLINED_FUNCTION_135();
        outlined destroy of UUID?(v87, v88, &_s10Foundation4DateVSgMR);
        EnumCaseMultiPayload = outlined destroy of UUID?(v79, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

      else
      {
        v111 = v152;
        v112 = v149;
        v113 = OUTLINED_FUNCTION_108();
        v114(v113);
        OUTLINED_FUNCTION_160();
        if ((v116 & 1) == 0)
        {
          OUTLINED_FUNCTION_159(v115);
        }

        Date.timeIntervalSince1970.getter();
        v118 = v117;
        (*(v111 + 8))(v112, v84);
        EnumCaseMultiPayload = outlined destroy of UUID?(v74, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        *(v57 + *(v48 + 28)) = v118 + *(v57 + *(v48 + 28));
      }

      goto LABEL_59;
    case 3:
      v63 = v151[1];
      if (!v63)
      {
        goto LABEL_59;
      }

      OUTLINED_FUNCTION_160();
      if ((v65 & 1) == 0)
      {
        OUTLINED_FUNCTION_159(v64);
      }

      OUTLINED_FUNCTION_96_0();
      MEMORY[0x1EEE9AC00](v66, v67);
      OUTLINED_FUNCTION_8_2();
      if ((v63 & 0x1000000000000000) != 0)
      {
        goto LABEL_79;
      }

      if ((v63 & 0x2000000000000000) != 0)
      {
        OUTLINED_FUNCTION_23_1(v68, v69, v70);
        if (!(!v86 & v100))
        {
          switch(v120)
          {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
              goto LABEL_71;
            default:
              goto LABEL_53;
          }
        }

        goto LABEL_70;
      }

      if ((v70 & 0x1000000000000000) != 0)
      {
        goto LABEL_29;
      }

      goto LABEL_79;
    case 4:
      v92 = v151[1];
      if (!v92)
      {
        goto LABEL_59;
      }

      OUTLINED_FUNCTION_160();
      if ((v94 & 1) == 0)
      {
        OUTLINED_FUNCTION_159(v93);
      }

      OUTLINED_FUNCTION_96_0();
      MEMORY[0x1EEE9AC00](v95, v96);
      OUTLINED_FUNCTION_8_2();
      if ((v92 & 0x1000000000000000) != 0)
      {
        goto LABEL_79;
      }

      if ((v92 & 0x2000000000000000) != 0)
      {
        OUTLINED_FUNCTION_23_1(v97, v98, v99);
        if (!(!v86 & v100))
        {
          switch(v122)
          {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
              goto LABEL_71;
            default:
              goto LABEL_53;
          }
        }

LABEL_70:
        if (v121 == 32)
        {
          goto LABEL_53;
        }

LABEL_71:
        if (!OUTLINED_FUNCTION_163())
        {
LABEL_53:

          goto LABEL_54;
        }

        OUTLINED_FUNCTION_209();
        OUTLINED_FUNCTION_137();
      }

      else
      {
        if ((v99 & 0x1000000000000000) != 0)
        {
LABEL_29:
          OUTLINED_FUNCTION_95_0();
          if (!v86 & v100 || (OUTLINED_FUNCTION_94_0(), (v101 & 1) == 0))
          {
            if (_swift_stdlib_strtod_clocale())
            {
              OUTLINED_FUNCTION_93_0();
            }
          }

          goto LABEL_53;
        }

LABEL_79:
        v144 = v158;
        _StringGuts._slowWithCString<A>(_:)();
        v158 = v144;
      }

LABEL_54:
      v123 = OUTLINED_FUNCTION_66_0();
      if (v86)
      {
        v123 = v124;
      }

      v125 = *(v48 + 28);
      goto LABEL_58;
    case 5:
      if (v151[1] >> 60 == 15)
      {
        goto LABEL_59;
      }

      v102 = *(v48 + 32);
      if ((*(v0 + v102) & 1) == 0)
      {
        *(v0 + v102) = 1;
      }

      static String.Encoding.utf8.getter();
      OUTLINED_FUNCTION_52();
      String.init(data:encoding:)();
      if (!v103)
      {
        v130 = OUTLINED_FUNCTION_52();
        EnumCaseMultiPayload = outlined consume of Data?(v130, v131);
        goto LABEL_59;
      }

      v104 = v103;
      OUTLINED_FUNCTION_96_0();
      MEMORY[0x1EEE9AC00](v105, v106);
      OUTLINED_FUNCTION_8_2();
      if ((v104 & 0x1000000000000000) != 0)
      {
        goto LABEL_80;
      }

      if ((v104 & 0x2000000000000000) != 0)
      {
        OUTLINED_FUNCTION_28_1(v107, v104 & 0xFFFFFFFFFFFFFFLL);
        if (!(!v86 & v100))
        {
          switch(v132)
          {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
              goto LABEL_74;
            default:
              goto LABEL_66;
          }
        }

        if (v133 != 32)
        {
LABEL_74:
          v136 = OUTLINED_FUNCTION_163();
          if (v136)
          {
            v137 = *v136;
            v138 = OUTLINED_FUNCTION_52();
            OUTLINED_FUNCTION_210(v138, v139);
            v110 = v137 == 0;
            goto LABEL_67;
          }
        }

LABEL_66:
        v134 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_210(v134, v135);
        v110 = 0;
        goto LABEL_67;
      }

      if ((v107 & 0x1000000000000000) != 0)
      {
        switch(*((v104 & 0xFFFFFFFFFFFFFFFLL) + 0x20))
        {
          case 0:
          case 9:
          case 0xA:
          case 0xB:
          case 0xC:
          case 0xD:
            goto LABEL_41;
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
            goto LABEL_77;
          default:
            if (*((v104 & 0xFFFFFFFFFFFFFFFLL) + 0x20) == 32)
            {
              goto LABEL_41;
            }

LABEL_77:
            v140 = _swift_stdlib_strtod_clocale();
            if (v140)
            {
              v141 = *v140;
              v142 = OUTLINED_FUNCTION_52();
              outlined consume of Data?(v142, v143);
              v110 = v141 == 0;
            }

            else
            {
LABEL_41:
              v108 = OUTLINED_FUNCTION_52();
              outlined consume of Data?(v108, v109);
              v110 = 0;
            }

            break;
        }
      }

      else
      {
LABEL_80:
        OUTLINED_FUNCTION_162();
        v145 = v158;
        _StringGuts._slowWithCString<A>(_:)();
        v158 = v145;
        v146 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_210(v146, v147);
        v110 = v161;
      }

LABEL_67:
      v123 = v162;
      if (!v110)
      {
        v123 = 0.0;
      }

      v125 = *(v48 + 28);
LABEL_58:
      OUTLINED_FUNCTION_102_0(v125, v123);
LABEL_59:
      v126 = v158;
      SUM_NON_INT.getCurrentAggregationEvent()(EnumCaseMultiPayload, v50, v51, v52, v53, v54, v55, v56, v148, v149, v150, v151, v152, v153);
      OUTLINED_FUNCTION_0_20();
      _s12BiomeStreams13StorableValueOWOhTm_0(v35, v127);
      if (v126)
      {
LABEL_60:
        OUTLINED_FUNCTION_2_9();
        _s12BiomeStreams13StorableValueOWOhTm_0(v128, v129);
      }

      else
      {
        OUTLINED_FUNCTION_4_6();
        _s12BiomeStreams13StorableValueOWObTm_0();
      }

LABEL_61:
      OUTLINED_FUNCTION_180();
      OUTLINED_FUNCTION_124();
      return;
    case 6:
      outlined init with take of UUID?(v151, v47, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v89 = type metadata accessor for UUID();
      OUTLINED_FUNCTION_92(v47, 1, v89);
      if (!v86)
      {
        OUTLINED_FUNCTION_160();
        if ((v91 & 1) == 0)
        {
          OUTLINED_FUNCTION_159(v90);
        }
      }

      OUTLINED_FUNCTION_184(*(v48 + 28));
      EnumCaseMultiPayload = outlined destroy of UUID?(v47, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      goto LABEL_59;
    case 7:
      goto LABEL_59;
    default:
      v58 = *v151;
      v59 = *(v151 + 8);
      v60 = lazy protocol witness table accessor for type SQLError and conformance SQLError();
      OUTLINED_FUNCTION_63(&type metadata for SQLError, v60);
      if (v59)
      {
        v58 = 0;
        v62 = 0;
        *(v61 + 8) = 0;
        *(v61 + 16) = 0;
      }

      else
      {
        v62 = MEMORY[0x1E69E7360];
      }

      *v61 = v58;
      *(v61 + 24) = v62;
      *(v61 + 32) = 0u;
      *(v61 + 48) = 0u;
      *(v61 + 64) = 3;
      swift_willThrow();
      OUTLINED_FUNCTION_0_20();
      _s12BiomeStreams13StorableValueOWOhTm_0(v35, v119);
      goto LABEL_60;
  }
}

uint64_t SUM_NON_INT.aggregationMetadata()()
{
  OUTLINED_FUNCTION_204();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_12BiomeStreams13StorableValueOtGMd, &_ss23_ContiguousArrayStorageCySS_12BiomeStreams13StorableValueOtGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_12BiomeStreams13StorableValueOtMd, &_sSS_12BiomeStreams13StorableValueOtMR);
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_64_0();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_190(v0, xmmword_184D29A90);
  if (one-time initialization token for sumKey != -1)
  {
    OUTLINED_FUNCTION_80_0();
    swift_once();
  }

  v1 = OUTLINED_FUNCTION_142(&static SUM_NON_INT.sumKey);
  v2 = type metadata accessor for SUM_NON_INT(v1);
  OUTLINED_FUNCTION_68_0(v2);
  OUTLINED_FUNCTION_146();
  swift_storeEnumTagMultiPayload();
  v3 = one-time initialization token for isNonNullEventSeenKey;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_79_0();
    swift_once();
  }

  OUTLINED_FUNCTION_106_0(&static SUM_NON_INT.isNonNullEventSeenKey);

  OUTLINED_FUNCTION_169();

  return Dictionary.init(dictionaryLiteral:)();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SUM_NON_INT.applyMetadata(metadata:)(Swift::OpaquePointer metadata)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_44_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
  v6 = OUTLINED_FUNCTION_47(v5);
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_63_0();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_65_0();
  if (*(v2 + 16))
  {
    if (one-time initialization token for sumKey != -1)
    {
      OUTLINED_FUNCTION_80_0();
      swift_once();
      if (!*(v2 + 16))
      {
        goto LABEL_20;
      }
    }

    OUTLINED_FUNCTION_165(&static SUM_NON_INT.sumKey);
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

    if (one-time initialization token for isNonNullEventSeenKey != -1)
    {
      OUTLINED_FUNCTION_79_0();
      swift_once();
    }

    if (!*(v2 + 16))
    {
      goto LABEL_20;
    }

    v11 = OUTLINED_FUNCTION_109();
    specialized __RawDictionaryStorage.find<A>(_:)(v11, v12);
    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_125();
    type metadata accessor for StorableValue(0);
    OUTLINED_FUNCTION_26_2(v4);
    if (v14)
    {
      v15 = v4;
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload != 1)
      {
        OUTLINED_FUNCTION_0_20();
        v24 = v4;
LABEL_19:
        _s12BiomeStreams13StorableValueOWOhTm_0(v24, v23);
        goto LABEL_20;
      }

      if (*(v4 + 8))
      {
LABEL_20:
        v25 = lazy protocol witness table accessor for type SQLError and conformance SQLError();
        v26 = OUTLINED_FUNCTION_63(&type metadata for SQLError, v25);
        OUTLINED_FUNCTION_19_2(v26, v27);
        swift_willThrow();

        goto LABEL_21;
      }

      v18 = *v4;
      *(v1 + *(type metadata accessor for SUM_NON_INT(0) + 28)) = v18;
      OUTLINED_FUNCTION_86_0();
      specialized Dictionary.subscript.getter(v19, v20, v21, v22);
      OUTLINED_FUNCTION_26_2(v3);
      if (!v14)
      {
        if (!swift_getEnumCaseMultiPayload())
        {
          if ((*(v3 + 8) & 1) == 0 && *v3 < 2uLL)
          {
            OUTLINED_FUNCTION_193(*v3);
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        OUTLINED_FUNCTION_0_20();
        v24 = v3;
        goto LABEL_19;
      }

      v15 = v3;
    }

    outlined destroy of UUID?(v15, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
    goto LABEL_20;
  }

  v16 = type metadata accessor for SUM_NON_INT(0);
  OUTLINED_FUNCTION_189(v16);
LABEL_21:
  OUTLINED_FUNCTION_124();
}

uint64_t one-time initialization function for totalKey()
{
  v1 = String.lowercased()();
  result = v1._countAndFlagsBits;
  static TOTAL.totalKey = v1;
  return result;
}

void TOTAL.getCurrentAggregationEvent()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_212();
  v17 = OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_12_3();
  v20 = type metadata accessor for StorableValue(0);
  v21 = OUTLINED_FUNCTION_47(v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_13();
  v23 = OUTLINED_FUNCTION_139();
  v24 = *(type metadata accessor for TOTAL(v23) + 24);
  v25 = OUTLINED_FUNCTION_99_0();
  v16(v25);
  OUTLINED_FUNCTION_122();
  if (!v15)
  {
    v26 = OUTLINED_FUNCTION_27_0();
    (v16)(v26, v14 + v24, v17);
    OUTLINED_FUNCTION_3_11();
    OUTLINED_FUNCTION_135();
    _s12BiomeStreams13StorableValueOWObTm_0();
  }

  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_211();
}

void TOTAL.processEvent(changeRecord:expressionEvaluator:)()
{
  OUTLINED_FUNCTION_121();
  v11 = OUTLINED_FUNCTION_200(v6, v7, v8, v9, v10);
  v12 = OUTLINED_FUNCTION_47(v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_9();
  v130 = v14;
  OUTLINED_FUNCTION_43();
  v129 = type metadata accessor for Date();
  OUTLINED_FUNCTION_2_1();
  v128 = v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_12_3();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v19 = OUTLINED_FUNCTION_47(v18);
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_45_0();
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v23, v24);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v123 - v27;
  v29 = OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v29, v30);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_138();
  v31 = v134;
  TOTAL.getCurrentAggregationEvent()(v32, v33, v34, v35, v36, v37, v38, v39, v123, v124, v125, v126, v127, v128);
  if (!v31)
  {
    v126 = v5;
    v127 = v1;
    v40 = v129;
    v125 = v2;
    v134 = v4;
    v41 = v131;
    v42 = type metadata accessor for TOTAL(0);
    SQLExpressionEvaluator.execute(expression:payload:)(v28);
    v124 = v42;
    OUTLINED_FUNCTION_1_17();
    v132 = v28;
    outlined init with copy of StorableValue();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v133 = 0;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_179();
        if ((v60 & 1) == 0)
        {
          OUTLINED_FUNCTION_154();
          v54 = v61 + *(v0 + v52);
          goto LABEL_12;
        }

        goto LABEL_50;
      case 2:
        v62 = v126;
        OUTLINED_FUNCTION_89();
        outlined init with take of UUID?(v63, v64, v65, v66);
        OUTLINED_FUNCTION_56_0();
        OUTLINED_FUNCTION_89();
        outlined init with copy of Date?(v67, v68, v69, v70);
        v71 = OUTLINED_FUNCTION_151();
        OUTLINED_FUNCTION_92(v71, v72, v40);
        if (v73)
        {
          outlined destroy of UUID?(v62, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          EnumCaseMultiPayload = outlined destroy of UUID?(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        }

        else
        {
          v90 = OUTLINED_FUNCTION_108();
          v91(v90);
          Date.timeIntervalSince1970.getter();
          v93 = v92;
          v94 = OUTLINED_FUNCTION_50();
          v95(v94);
          outlined destroy of UUID?(v62, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          OUTLINED_FUNCTION_154();
          *(v0 + v96) = v93 + *(v0 + v96);
        }

        goto LABEL_50;
      case 3:
        OUTLINED_FUNCTION_177();
        if (v41)
        {
          OUTLINED_FUNCTION_96_0();
          MEMORY[0x1EEE9AC00](v55, v56);
          OUTLINED_FUNCTION_8_2();
          if ((v41 & 0x1000000000000000) != 0)
          {
            goto LABEL_63;
          }

          if ((v41 & 0x2000000000000000) != 0)
          {
            OUTLINED_FUNCTION_23_1(v57, v58, v59);
            if (!(!v73 & v81))
            {
              switch(v97)
              {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                  goto LABEL_55;
                default:
                  goto LABEL_38;
              }
            }

            goto LABEL_54;
          }

          if ((v59 & 0x1000000000000000) != 0)
          {
            goto LABEL_21;
          }

          goto LABEL_63;
        }

        goto LABEL_50;
      case 4:
        OUTLINED_FUNCTION_177();
        if (!v41)
        {
          goto LABEL_50;
        }

        OUTLINED_FUNCTION_96_0();
        MEMORY[0x1EEE9AC00](v76, v77);
        OUTLINED_FUNCTION_8_2();
        if ((v41 & 0x1000000000000000) != 0)
        {
          goto LABEL_63;
        }

        if ((v41 & 0x2000000000000000) != 0)
        {
          OUTLINED_FUNCTION_23_1(v78, v79, v80);
          if (!(!v73 & v81))
          {
            switch(v99)
            {
              case 1:
              case 2:
              case 3:
              case 4:
              case 5:
              case 6:
              case 7:
              case 8:
                goto LABEL_55;
              default:
                goto LABEL_38;
            }
          }

LABEL_54:
          if (v98 != 32)
          {
LABEL_55:
            if (OUTLINED_FUNCTION_163())
            {
              OUTLINED_FUNCTION_209();
              OUTLINED_FUNCTION_137();
              goto LABEL_39;
            }
          }
        }

        else
        {
          if ((v80 & 0x1000000000000000) == 0)
          {
LABEL_63:
            v119 = v133;
            _StringGuts._slowWithCString<A>(_:)();
            v133 = v119;

            goto LABEL_39;
          }

LABEL_21:
          OUTLINED_FUNCTION_95_0();
          if (!v73 & v81 || (OUTLINED_FUNCTION_94_0(), (v82 & 1) == 0))
          {
            if (_swift_stdlib_strtod_clocale())
            {
              OUTLINED_FUNCTION_93_0();
            }
          }
        }

LABEL_38:

LABEL_39:
        OUTLINED_FUNCTION_66_0();
        OUTLINED_FUNCTION_154();
        OUTLINED_FUNCTION_102_0(v100, v101);
        goto LABEL_50;
      case 5:
        if (*(v127 + 8) >> 60 == 15)
        {
          goto LABEL_50;
        }

        static String.Encoding.utf8.getter();
        OUTLINED_FUNCTION_116();
        String.init(data:encoding:)();
        if (!v83)
        {
          v102 = OUTLINED_FUNCTION_116();
          EnumCaseMultiPayload = outlined consume of Data?(v102, v103);
LABEL_50:
          v111 = v133;
          TOTAL.getCurrentAggregationEvent()(EnumCaseMultiPayload, v44, v45, v46, v47, v48, v49, v50, v123, v124, v125, v126, v127, v128);
          OUTLINED_FUNCTION_0_20();
          _s12BiomeStreams13StorableValueOWOhTm_0(v132, v112);
          if (v111)
          {
            OUTLINED_FUNCTION_2_9();
            _s12BiomeStreams13StorableValueOWOhTm_0(v113, v114);
          }

          else
          {
            OUTLINED_FUNCTION_4_6();
            _s12BiomeStreams13StorableValueOWObTm_0();
          }

          break;
        }

        v84 = v83;
        OUTLINED_FUNCTION_96_0();
        MEMORY[0x1EEE9AC00](v85, v86);
        OUTLINED_FUNCTION_8_2();
        if ((v84 & 0x1000000000000000) != 0)
        {
          goto LABEL_64;
        }

        if ((v84 & 0x2000000000000000) != 0)
        {
          OUTLINED_FUNCTION_28_1(v87, v84 & 0xFFFFFFFFFFFFFFLL);
          if (!(!v73 & v81))
          {
            switch(v104)
            {
              case 1:
              case 2:
              case 3:
              case 4:
              case 5:
              case 6:
              case 7:
              case 8:
                goto LABEL_58;
              default:
                goto LABEL_45;
            }
          }

          if (v105 != 32)
          {
LABEL_58:
            if (OUTLINED_FUNCTION_163())
            {
              v115 = OUTLINED_FUNCTION_116();
              OUTLINED_FUNCTION_210(v115, v116);
              OUTLINED_FUNCTION_137();
              goto LABEL_46;
            }
          }

LABEL_45:
          v106 = OUTLINED_FUNCTION_116();
          OUTLINED_FUNCTION_210(v106, v107);
        }

        else if ((v87 & 0x1000000000000000) != 0)
        {
          switch(*((v84 & 0xFFFFFFFFFFFFFFFLL) + 0x20))
          {
            case 0:
            case 9:
            case 0xA:
            case 0xB:
            case 0xC:
            case 0xD:
              goto LABEL_31;
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
              goto LABEL_61;
            default:
              if (*((v84 & 0xFFFFFFFFFFFFFFFLL) + 0x20) == 32)
              {
                goto LABEL_31;
              }

LABEL_61:
              if (_swift_stdlib_strtod_clocale())
              {
                v117 = OUTLINED_FUNCTION_116();
                outlined consume of Data?(v117, v118);
                OUTLINED_FUNCTION_137();
              }

              else
              {
LABEL_31:
                v88 = OUTLINED_FUNCTION_116();
                outlined consume of Data?(v88, v89);
              }

              break;
          }
        }

        else
        {
LABEL_64:
          OUTLINED_FUNCTION_162();
          v120 = v133;
          _StringGuts._slowWithCString<A>(_:)();
          v133 = v120;
          v121 = OUTLINED_FUNCTION_116();
          OUTLINED_FUNCTION_210(v121, v122);
        }

LABEL_46:
        v109 = OUTLINED_FUNCTION_66_0();
        if (v73)
        {
          v109 = v110;
        }

        OUTLINED_FUNCTION_102_0(*(v108 + 28), v109);
        goto LABEL_50;
      case 6:
        OUTLINED_FUNCTION_154();
        OUTLINED_FUNCTION_184(v74);
        OUTLINED_FUNCTION_0_20();
        EnumCaseMultiPayload = _s12BiomeStreams13StorableValueOWOhTm_0(v127, v75);
        goto LABEL_50;
      case 7:
        goto LABEL_50;
      default:
        OUTLINED_FUNCTION_179();
        if ((v51 & 1) == 0)
        {
          OUTLINED_FUNCTION_154();
          v54 = *(v0 + v52) + v53;
LABEL_12:
          *(v0 + v52) = v54;
        }

        goto LABEL_50;
    }
  }

  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_124();
}

uint64_t TOTAL.aggregationMetadata()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_12BiomeStreams13StorableValueOtGMd, &_ss23_ContiguousArrayStorageCySS_12BiomeStreams13StorableValueOtGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_12BiomeStreams13StorableValueOtMd, &_sSS_12BiomeStreams13StorableValueOtMR);
  OUTLINED_FUNCTION_47_0();
  v0 = OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_191(v0, xmmword_184D29AA0);
  if (one-time initialization token for totalKey != -1)
  {
    OUTLINED_FUNCTION_75_0();
    swift_once();
  }

  v1 = OUTLINED_FUNCTION_30_1(&static TOTAL.totalKey);
  type metadata accessor for TOTAL(v1);
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_164(v2);
  OUTLINED_FUNCTION_140();
  swift_storeEnumTagMultiPayload();

  return Dictionary.init(dictionaryLiteral:)();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TOTAL.applyMetadata(metadata:)(Swift::OpaquePointer metadata)
{
  OUTLINED_FUNCTION_44_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_49_0();
  if (!v7)
  {
    v15 = type metadata accessor for TOTAL(0);
    v16 = 0;
LABEL_8:
    *(v1 + *(v15 + 28)) = v16;
    return;
  }

  if (one-time initialization token for totalKey == -1 || (OUTLINED_FUNCTION_75_0(), swift_once(), *(v2 + 16)))
  {
    v8 = OUTLINED_FUNCTION_110();
    specialized __RawDictionaryStorage.find<A>(_:)(v8, v9);
    if (v10)
    {
      OUTLINED_FUNCTION_85_0();
      v11 = type metadata accessor for StorableValue(0);
      v12 = OUTLINED_FUNCTION_115();
      OUTLINED_FUNCTION_92(v12, v13, v11);
      if (v14)
      {
        outlined destroy of UUID?(v3, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
      }

      else
      {
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 1)
        {
          if ((*(v3 + 8) & 1) == 0)
          {
            v16 = *v3;
            v15 = type metadata accessor for TOTAL(0);
            goto LABEL_8;
          }
        }

        else
        {
          OUTLINED_FUNCTION_0_20();
          _s12BiomeStreams13StorableValueOWOhTm_0(v3, v18);
        }
      }
    }
  }

  v19 = lazy protocol witness table accessor for type SQLError and conformance SQLError();
  v20 = OUTLINED_FUNCTION_63(&type metadata for SQLError, v19);
  OUTLINED_FUNCTION_19_2(v20, v21);
  swift_willThrow();
}

uint64_t one-time initialization function for toBeConcatendatedKey()
{
  v1 = String.lowercased()();
  result = v1._countAndFlagsBits;
  static GROUP_CONCAT.toBeConcatendatedKey = v1;
  return result;
}

void GROUP_CONCAT.processEvent(changeRecord:expressionEvaluator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v23;
  a20 = v24;
  v294 = v25;
  v295 = v21;
  v26 = v20;
  v28 = v27;
  v276 = v29;
  v277 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  OUTLINED_FUNCTION_47(v31);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v32, v33);
  v285 = &v262 - v34;
  OUTLINED_FUNCTION_43();
  v286 = type metadata accessor for SQLExpression();
  OUTLINED_FUNCTION_2_1();
  v283 = v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  OUTLINED_FUNCTION_9();
  v282 = v38;
  OUTLINED_FUNCTION_43();
  v272 = type metadata accessor for UUID();
  v269 = *(v272 - 8);
  MEMORY[0x1EEE9AC00](v272 - 8, v39);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v40, v41);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_59(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v44 = OUTLINED_FUNCTION_47(v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v46, v47);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v48, v49);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v50, v51);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_7(v52);
  v53 = type metadata accessor for String.Encoding();
  v54 = OUTLINED_FUNCTION_47(v53);
  MEMORY[0x1EEE9AC00](v54, v55);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v56);
  v271 = type metadata accessor for Date();
  OUTLINED_FUNCTION_2_1();
  v268 = v57;
  MEMORY[0x1EEE9AC00](v58, v59);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v60, v61);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_59(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v64 = OUTLINED_FUNCTION_47(v63);
  MEMORY[0x1EEE9AC00](v64, v65);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v66, v67);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v68, v69);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v70, v71);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_7(v72);
  v300 = type metadata accessor for SQLDataType();
  OUTLINED_FUNCTION_2_1();
  v74 = v73;
  MEMORY[0x1EEE9AC00](v75, v76);
  OUTLINED_FUNCTION_9_0();
  v280 = v77;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v78, v79);
  v81 = &v262 - v80;
  v284 = type metadata accessor for StorableValue(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v82, v83);
  OUTLINED_FUNCTION_9_0();
  v281 = v84;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v85, v86);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v87, v88);
  OUTLINED_FUNCTION_30();
  v279 = v89;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v90, v91);
  OUTLINED_FUNCTION_30();
  v288 = v92;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v93, v94);
  OUTLINED_FUNCTION_30();
  v293 = v95;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v96, v97);
  OUTLINED_FUNCTION_51();
  v99 = v98;
  v100 = OUTLINED_FUNCTION_43();
  v101 = type metadata accessor for GROUP_CONCAT(v100);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v102, v103);
  OUTLINED_FUNCTION_14();
  v106 = v104 - v105;
  MEMORY[0x1EEE9AC00](v107, v108);
  v109 = OUTLINED_FUNCTION_33_1();
  v291 = type metadata accessor for AggregationEvent(v109);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v110, v111);
  OUTLINED_FUNCTION_9();
  v289 = v112;
  OUTLINED_FUNCTION_69_0();
  outlined init with copy of StorableValue();
  v113 = (v22 + *(v101 + 32));
  v114 = v113[1];
  v287 = v106;
  v290 = v26;
  v292 = v28;
  if (v114)
  {
    v115 = *v113;
    v116 = MEMORY[0x1E69E6158];
  }

  else
  {
    v115 = 0;
    v116 = 0;
    v298 = 0;
  }

  v296 = v115;
  v297 = v114;
  v299 = v116;
  v117 = *(v101 + 28);
  v118 = *(v74 + 16);
  v119 = v74 + 16;
  v118(v81, v22 + v117, v300);

  v120 = v295;
  StorableValue.init(_:dataType:)(&v296, v81, v99);
  if (v120)
  {
    _s12BiomeStreams13StorableValueOWOhTm_0(v22, type metadata accessor for GROUP_CONCAT);
    goto LABEL_7;
  }

  v118((v289 + *(v291 + 20)), v22 + v117, v300);
  OUTLINED_FUNCTION_21_1();
  _s12BiomeStreams13StorableValueOWOhTm_0(v22, v121);
  OUTLINED_FUNCTION_3_11();
  _s12BiomeStreams13StorableValueOWObTm_0();
  v122 = v290;
  SQLExpressionEvaluator.execute(expression:payload:)(v293);
  v123 = v118;
  v262 = v119;
  v295 = v101;
  OUTLINED_FUNCTION_1_17();
  outlined init with copy of StorableValue();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v125 = 0;
  v263 = 0;
  v126 = v286;
  v127 = v287;
  v128 = v294;
  v129 = v285;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      if (v288[1])
      {
        goto LABEL_21;
      }

      v130 = Double.description.getter();
      goto LABEL_28;
    case 2:
      OUTLINED_FUNCTION_127();
      outlined init with take of UUID?(v151, v152, v153, v154);
      OUTLINED_FUNCTION_86_0();
      outlined init with copy of Date?(v155, v156, v157, &_s10Foundation4DateVSgMR);
      v158 = OUTLINED_FUNCTION_151();
      v159 = v271;
      OUTLINED_FUNCTION_92(v158, v160, v271);
      if (v144)
      {
        OUTLINED_FUNCTION_100_0();
        outlined destroy of UUID?(v161, v162, v163);
        OUTLINED_FUNCTION_100_0();
        outlined destroy of UUID?(v164, v165, v166);
        OUTLINED_FUNCTION_101_0();
      }

      else
      {
        v174 = v268;
        v175 = v266;
        v176 = OUTLINED_FUNCTION_108();
        v177(v176);
        Date.timeIntervalSince1970.getter();
        v178 = Double.description.getter();
        v263 = v179;
        (*(v174 + 8))(v175, v159);
        outlined destroy of UUID?(v273, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v125 = v178;
      }

      v126 = v286;
      v127 = v287;
      v129 = v285;
      break;
    case 3:
    case 4:
      v125 = *v288;
      v263 = v288[1];
      if (!v263)
      {
        v125 = 0;
      }

      break;
    case 5:
      v167 = v288[1];
      OUTLINED_FUNCTION_194();
      if (!v144 & v169)
      {
        OUTLINED_FUNCTION_101_0();
        v126 = v286;
      }

      else
      {
        v180 = *v168;
        static String.Encoding.utf8.getter();
        v181 = String.init(data:encoding:)();
        v183 = v182;
        outlined consume of Data?(v180, v167);
        v263 = v183;
        if (v183)
        {
          v125 = v181;
        }

        else
        {
          v125 = 0;
        }

        v126 = v286;
        v127 = v287;
        v129 = v285;
      }

      break;
    case 6:
      v273 = v123;
      v132 = v270;
      OUTLINED_FUNCTION_127();
      outlined init with take of UUID?(v133, v134, v135, v136);
      OUTLINED_FUNCTION_136();
      OUTLINED_FUNCTION_127();
      outlined init with copy of Date?(v137, v138, v139, v140);
      v141 = OUTLINED_FUNCTION_104_0();
      v142 = v272;
      OUTLINED_FUNCTION_92(v141, v143, v272);
      if (v144)
      {
        OUTLINED_FUNCTION_100_0();
        outlined destroy of UUID?(v145, v146, v147);
        OUTLINED_FUNCTION_100_0();
        outlined destroy of UUID?(v148, v149, v150);
        OUTLINED_FUNCTION_101_0();
      }

      else
      {
        OUTLINED_FUNCTION_145();
        v170 = v267;
        v171(v267, v123, v142);
        v172 = UUID.uuidString.getter();
        v263 = v173;
        (*(v128 + 8))(v170, v142);
        outlined destroy of UUID?(v132, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v125 = v172;
      }

      v126 = v286;
      v127 = v287;
      v129 = v285;
      v123 = v273;
      break;
    case 7:
      break;
    default:
      if (v288[1])
      {
LABEL_21:
        OUTLINED_FUNCTION_101_0();
      }

      else
      {
        v296 = *v288;
        v130 = dispatch thunk of CustomStringConvertible.description.getter();
        v126 = v286;
LABEL_28:
        v125 = v130;
        v263 = v131;
      }

      break;
  }

  v288 = v125;
  outlined init with copy of Date?(v122 + v295[6], v129, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  OUTLINED_FUNCTION_92(v129, 1, v126);
  if (v144)
  {
    outlined destroy of UUID?(v129, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
    v184 = v263;
    if (v263)
    {
      v185 = 0xE100000000000000;
      v186 = 44;
      v187 = v295;
      goto LABEL_37;
    }
  }

  else
  {
    v273 = v123;
    (*(v283 + 32))(v282, v129, v126);
    OUTLINED_FUNCTION_109();
    SQLExpressionEvaluator.execute(expression:payload:)(v190);
    OUTLINED_FUNCTION_1_17();
    outlined init with copy of StorableValue();
    v191 = swift_getEnumCaseMultiPayload();
    v186 = v282;
    v192 = v283;
    v193 = v286;
    v123 = v273;
    v194 = v274;
    switch(v191)
    {
      case 1:
        OUTLINED_FUNCTION_187();
        if (*(v200 + 8))
        {
          v186 = 0;
          v185 = 0;
        }

        else
        {
          v186 = Double.description.getter();
          v185 = v226;
        }

        v184 = v263;
        OUTLINED_FUNCTION_0_20();
        _s12BiomeStreams13StorableValueOWOhTm_0(v227, v228);
        (*(v283 + 8))(v282, v193);
        goto LABEL_71;
      case 2:
        v185 = &_s10Foundation4DateVSgMR;
        outlined init with take of UUID?(v278, v275, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        OUTLINED_FUNCTION_86_0();
        outlined init with copy of Date?(v204, v205, v206, &_s10Foundation4DateVSgMR);
        v207 = OUTLINED_FUNCTION_151();
        OUTLINED_FUNCTION_92(v207, v208, v271);
        if (v144)
        {
          goto LABEL_56;
        }

        OUTLINED_FUNCTION_145();
        v236(v264);
        Date.timeIntervalSince1970.getter();
        Double.description.getter();
        v237 = OUTLINED_FUNCTION_155();
        v238(v237);
        v233 = &_s10Foundation4DateVSgMd;
        v234 = &_s10Foundation4DateVSgMR;
        v235 = &a15;
        goto LABEL_65;
      case 3:
      case 4:
        OUTLINED_FUNCTION_0_20();
        _s12BiomeStreams13StorableValueOWOhTm_0(v279, v195);
        v196 = OUTLINED_FUNCTION_130();
        v197(v196);
        OUTLINED_FUNCTION_187();
        v185 = v198[1];
        if (v185)
        {
          v186 = *v198;
        }

        else
        {
          v186 = 0;
        }

        break;
      case 5:
        OUTLINED_FUNCTION_187();
        v224 = v223[1];
        if (v224 >> 60 == 15)
        {
          OUTLINED_FUNCTION_0_20();
          _s12BiomeStreams13StorableValueOWOhTm_0(v279, v225);
          v222 = *(v192 + 8);
          v220 = v186;
          v221 = v286;
          goto LABEL_61;
        }

        v246 = v186;
        v247 = *v223;
        static String.Encoding.utf8.getter();
        v248 = String.init(data:encoding:)();
        v249 = v192;
        v185 = v250;
        outlined consume of Data?(v247, v224);
        OUTLINED_FUNCTION_0_20();
        _s12BiomeStreams13StorableValueOWOhTm_0(v279, v251);
        v123 = v273;
        (*(v249 + 8))(v246, v286);
        if (v185)
        {
          v186 = v248;
        }

        else
        {
          v186 = 0;
        }

        break;
      case 6:
        OUTLINED_FUNCTION_86_0();
        outlined init with take of UUID?(v201, v202, v203, &_s10Foundation4UUIDVSgMR);
        v185 = v265;
        outlined init with copy of Date?(v194, v265, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        OUTLINED_FUNCTION_92(v185, 1, v272);
        if (v144)
        {
LABEL_56:
          OUTLINED_FUNCTION_100_0();
          outlined destroy of UUID?(v209, v210, v211);
          OUTLINED_FUNCTION_0_20();
          _s12BiomeStreams13StorableValueOWOhTm_0(v279, v212);
          v213 = OUTLINED_FUNCTION_183();
          v214(v213);
          OUTLINED_FUNCTION_100_0();
          outlined destroy of UUID?(v215, v216, v217);
          goto LABEL_62;
        }

        OUTLINED_FUNCTION_145();
        v229 = OUTLINED_FUNCTION_50();
        v230(v229);
        UUID.uuidString.getter();
        v231 = OUTLINED_FUNCTION_155();
        v232(v231);
        v233 = &_s10Foundation4UUIDVSgMd;
        v234 = &_s10Foundation4UUIDVSgMR;
        v235 = &a14;
LABEL_65:
        outlined destroy of UUID?(*(v235 - 32), v233, v234);
        OUTLINED_FUNCTION_0_20();
        _s12BiomeStreams13StorableValueOWOhTm_0(v279, v239);
        (*(v283 + 8))(v282, v286);
        break;
      case 7:
        goto LABEL_58;
      default:
        OUTLINED_FUNCTION_187();
        if (*(v218 + 8) == 1)
        {
LABEL_58:
          OUTLINED_FUNCTION_0_20();
          _s12BiomeStreams13StorableValueOWOhTm_0(v279, v219);
          v220 = OUTLINED_FUNCTION_130();
LABEL_61:
          v222(v220, v221);
LABEL_62:
          v186 = 0;
          v185 = 0;
        }

        else
        {
          v296 = *v218;
          v240 = v193;
          v241 = v186;
          v186 = dispatch thunk of CustomStringConvertible.description.getter();
          v242 = v192;
          v185 = v243;
          OUTLINED_FUNCTION_0_20();
          _s12BiomeStreams13StorableValueOWOhTm_0(v279, v244);
          v245 = v241;
          v123 = v273;
          (*(v242 + 8))(v245, v240);
        }

        break;
    }

    v184 = v263;
LABEL_71:
    v187 = v295;
    if (v184)
    {
      if (!v185)
      {
LABEL_40:
        v188 = (v122 + v187[8]);
        v189 = v123;
        if (v188[1])
        {
          MEMORY[0x1865F6280](v288, v184);
        }

        else
        {
          *v188 = v288;
          v188[1] = v184;
        }

        v199 = v300;
        v127 = v287;
        goto LABEL_76;
      }

LABEL_37:
      if (*(v122 + v187[8] + 8))
      {
        MEMORY[0x1865F6280](v186, v185);
      }

      v187 = v295;
      goto LABEL_40;
    }

    v127 = v287;
  }

  v189 = v123;

  v199 = v300;
LABEL_76:
  OUTLINED_FUNCTION_69_0();
  outlined init with copy of StorableValue();
  v252 = (v127 + v295[8]);
  v253 = v252[1];
  if (v253)
  {
    v254 = *v252;
    v255 = MEMORY[0x1E69E6158];
  }

  else
  {
    v254 = 0;
    v255 = 0;
    v298 = 0;
  }

  v296 = v254;
  v297 = v253;
  v299 = v255;
  v256 = v295[7];
  v257 = v127 + v256;
  v258 = v127;
  v259 = v280;
  v189(v280, v257, v199);

  StorableValue.init(_:dataType:)(&v296, v259, v281);
  OUTLINED_FUNCTION_0_20();
  _s12BiomeStreams13StorableValueOWOhTm_0(v293, v260);
  v189(v276 + *(v291 + 20), v258 + v256, v199);
  OUTLINED_FUNCTION_21_1();
  _s12BiomeStreams13StorableValueOWOhTm_0(v258, v261);
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_130();
  _s12BiomeStreams13StorableValueOWObTm_0();
  OUTLINED_FUNCTION_4_6();
  _s12BiomeStreams13StorableValueOWObTm_0();
LABEL_7:
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_65();
}

uint64_t GROUP_CONCAT.aggregationMetadata()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_12BiomeStreams13StorableValueOtGMd, &_ss23_ContiguousArrayStorageCySS_12BiomeStreams13StorableValueOtGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_12BiomeStreams13StorableValueOtMd, &_sSS_12BiomeStreams13StorableValueOtMR);
  OUTLINED_FUNCTION_47_0();
  v2 = OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_191(v2, xmmword_184D29AA0);
  if (one-time initialization token for toBeConcatendatedKey != -1)
  {
    OUTLINED_FUNCTION_78_0();
    swift_once();
  }

  v3 = OUTLINED_FUNCTION_30_1(&static GROUP_CONCAT.toBeConcatendatedKey);
  v4 = (v0 + *(type metadata accessor for GROUP_CONCAT(v3) + 32));
  v5 = v4[1];
  *v1 = *v4;
  v1[1] = v5;
  type metadata accessor for StorableValue(0);
  swift_storeEnumTagMultiPayload();

  return Dictionary.init(dictionaryLiteral:)();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> GROUP_CONCAT.applyMetadata(metadata:)(Swift::OpaquePointer metadata)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
  OUTLINED_FUNCTION_47(v5);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_49_0();
  if (!v8)
  {
LABEL_10:
    v21 = (v3 + *(type metadata accessor for GROUP_CONCAT(0) + 32));

    *v21 = 0;
    v21[1] = 0;
    return;
  }

  if (one-time initialization token for toBeConcatendatedKey == -1 || (OUTLINED_FUNCTION_78_0(), swift_once(), *(metadata._rawValue + 2)))
  {
    v9 = OUTLINED_FUNCTION_110();
    specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
    if (v11)
    {
      OUTLINED_FUNCTION_85_0();
      v12 = type metadata accessor for StorableValue(0);
      v13 = OUTLINED_FUNCTION_115();
      OUTLINED_FUNCTION_92(v13, v14, v12);
      if (v15)
      {
        outlined destroy of UUID?(v2, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
      }

      else
      {
        OUTLINED_FUNCTION_130();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 3)
        {
          v17 = *v2;
          v18 = v2[1];
          v19 = (v3 + *(type metadata accessor for GROUP_CONCAT(0) + 32));

          *v19 = v17;
          v19[1] = v18;
          return;
        }

        OUTLINED_FUNCTION_0_20();
        _s12BiomeStreams13StorableValueOWOhTm_0(v2, v20);
      }

      goto LABEL_10;
    }
  }

  v22 = lazy protocol witness table accessor for type SQLError and conformance SQLError();
  OUTLINED_FUNCTION_63(&type metadata for SQLError, v22);
  v23 = *v3;
  v24 = v3[1];
  *v25 = metadata;
  *(v25 + 8) = v23;
  *(v25 + 16) = v24;
  *(v25 + 64) = 8;
  swift_willThrow();
}

void MAX.getCurrentAggregationEvent()()
{
  MAX.getCurrentAggregationEvent()();
}

{
  OUTLINED_FUNCTION_64();
  v27 = v4;
  v6 = v5;
  v31 = type metadata accessor for SQLDataType();
  OUTLINED_FUNCTION_2_1();
  v28 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_12_3();
  v10 = *(v6 + 16);
  v11 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_2_1();
  v13 = v12;
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v14, v15);
  v16 = OUTLINED_FUNCTION_206();
  v17 = OUTLINED_FUNCTION_47(v16);
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_13();
  v21 = (v20 - v19);
  (*(v13 + 16))(v3, v0 + *(v6 + 48), v11);
  OUTLINED_FUNCTION_26_2(v3);
  if (v22)
  {
    (*(v13 + 8))(v3, v11);
    v29 = 0u;
    v30 = 0u;
  }

  else
  {
    *(&v30 + 1) = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v29);
    (*(*(v10 - 8) + 32))(boxed_opaque_existential_0, v3, v10);
  }

  v24 = *(v6 + 40);
  v25 = *(v28 + 16);
  v25(v2, v0 + v24, v31);
  StorableValue.init(_:dataType:)(&v29, v2, v21);
  if (!v1)
  {
    v26 = type metadata accessor for AggregationEvent(0);
    v25(v27 + *(v26 + 20), v0 + v24, v31);
    OUTLINED_FUNCTION_3_11();
    _s12BiomeStreams13StorableValueOWObTm_0();
  }

  OUTLINED_FUNCTION_65();
}

void MAX.processEvent(changeRecord:expressionEvaluator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v25;
  a20 = v26;
  v31 = OUTLINED_FUNCTION_77_0(v27, v28, v26, v29, v30);
  v313 = v32;
  MEMORY[0x1EEE9AC00](v31, v33);
  OUTLINED_FUNCTION_9();
  v312 = v34;
  OUTLINED_FUNCTION_43();
  v305 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_1();
  v318 = v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_59(v38);
  v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v39, v40);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v41, v42);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v43, v44);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_7(v45);
  v304 = type metadata accessor for Date();
  OUTLINED_FUNCTION_2_1();
  v302[8] = v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_59(v49);
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v50, v51);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v52, v53);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v54, v55);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_7(v56);
  v326 = v20;
  v319 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_2_1();
  v321 = v57;
  MEMORY[0x1EEE9AC00](v58, v59);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v60, v61);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v62, v63);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v64, v65);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v66, v67);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v68, v69);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v70, v71);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v72, v73);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v74, v75);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v76, v77);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v78, v79);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v80, v81);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v82, v83);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v84, v85);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v86, v87);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v88, v89);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v90, v91);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v92, v93);
  OUTLINED_FUNCTION_51();
  v320 = v94;
  OUTLINED_FUNCTION_43();
  type metadata accessor for SQLDataType();
  OUTLINED_FUNCTION_2_1();
  v324 = v96;
  v325 = v95;
  MEMORY[0x1EEE9AC00](v95, v97);
  OUTLINED_FUNCTION_9_0();
  v323 = v98;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v99, v100);
  OUTLINED_FUNCTION_51();
  v322 = v101;
  v102 = OUTLINED_FUNCTION_43();
  v327 = type metadata accessor for StorableValue(v102);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v103, v104);
  OUTLINED_FUNCTION_9_0();
  v317[1] = v105;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v106, v107);
  OUTLINED_FUNCTION_30();
  v317[0] = v108;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v109, v110);
  OUTLINED_FUNCTION_30();
  v316 = v111;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v112, v113);
  OUTLINED_FUNCTION_30();
  v315 = v114;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v115, v116);
  OUTLINED_FUNCTION_143();
  MEMORY[0x1EEE9AC00](v117, v118);
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v119, v120);
  OUTLINED_FUNCTION_63_0();
  MEMORY[0x1EEE9AC00](v121, v122);
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v123, v124);
  v126 = v302 - v125;
  v127 = OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v127, v128);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_128();
  if (v21)
  {
    goto LABEL_60;
  }

  OUTLINED_FUNCTION_70_0();
  v329 = 0;
  v129 = v322;
  SQLExpression.returnType.getter(v322);
  v130 = OUTLINED_FUNCTION_67_0();
  v131(v130);
  OUTLINED_FUNCTION_72_0();
  lazy protocol witness table accessor for type Data.Iterator and conformance Data.Iterator(v132, v133, &protocol conformance descriptor for SQLDataType);
  OUTLINED_FUNCTION_89_0();
  v134 = v22;
  v135 = dispatch thunk of static Equatable.== infix(_:_:)();
  v136 = OUTLINED_FUNCTION_173(v135);
  (v22)(v136);
  (v22)(v129, v22);
  if ((v328 & 1) == 0)
  {
    v153 = lazy protocol witness table accessor for type SQLError and conformance SQLError();
    OUTLINED_FUNCTION_63(&type metadata for SQLError, v153);
    OUTLINED_FUNCTION_197();
    v154 = OUTLINED_FUNCTION_168();
    OUTLINED_FUNCTION_167(v154, v155);
    OUTLINED_FUNCTION_0_20();
    _s12BiomeStreams13StorableValueOWOhTm_0(v24, v156);
    OUTLINED_FUNCTION_2_9();
    _s12BiomeStreams13StorableValueOWOhTm_0(a10, v157);
LABEL_60:
    OUTLINED_FUNCTION_65();
    return;
  }

  v328 = v23;
  v137 = v320;
  v138 = v321;
  OUTLINED_FUNCTION_17_1();
  __swift_storeEnumTagSinglePayload(v139, v140, v141, v142);
  OUTLINED_FUNCTION_1_17();
  OUTLINED_FUNCTION_52_0();
  outlined init with copy of StorableValue();
  OUTLINED_FUNCTION_50();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v144 = v318;
  v302[0] = v126;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      OUTLINED_FUNCTION_1_17();
      v146 = v201;
      outlined init with copy of StorableValue();
      OUTLINED_FUNCTION_29_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
      OUTLINED_FUNCTION_60_0();
      v202 = OUTLINED_FUNCTION_59_0(&v324);
      if ((OUTLINED_FUNCTION_54_0(v202, v203, v204) & 1) == 0)
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_25_2();
      v205 = OUTLINED_FUNCTION_126();
      (v138)(v205);
      v206 = OUTLINED_FUNCTION_24_1();
      (v138)(v206);
      if (v22)
      {
        v152 = v317;
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_196();
      v262 = v317;
      goto LABEL_41;
    case 2:
      OUTLINED_FUNCTION_1_17();
      v170 = v169;
      outlined init with copy of StorableValue();
      v134 = &_s10Foundation4DateVSgMd;
      v146 = &_s10Foundation4DateVSgMR;
      OUTLINED_FUNCTION_149();
      v171 = v307;
      OUTLINED_FUNCTION_86_0();
      outlined init with copy of Date?(v172, v173, v174, &_s10Foundation4DateVSgMR);
      v175 = OUTLINED_FUNCTION_59_0(&v325);
      if (!OUTLINED_FUNCTION_54_0(v175, v171, v308))
      {
        v238 = &_s10Foundation4DateVSgMd;
        v239 = &_s10Foundation4DateVSgMR;
        v240 = v170;
        goto LABEL_35;
      }

      v176 = OUTLINED_FUNCTION_50_0();
      (_s10Foundation4DateVSgMd)(v176, v171);
      v177 = OUTLINED_FUNCTION_56_0();
      v327 = &_s10Foundation4DateVSgMd;
      (_s10Foundation4DateVSgMd)(v177);
      OUTLINED_FUNCTION_136();
      outlined init with take of UUID?(v178, v179, v180, v181);
      v182 = OUTLINED_FUNCTION_104_0();
      LODWORD(v146) = v304;
      OUTLINED_FUNCTION_92(v182, v183, v304);
      v164 = v171;
      if (v184)
      {
        outlined destroy of UUID?(v138, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        OUTLINED_FUNCTION_5_4();
        v129 = v303;
      }

      else
      {
        OUTLINED_FUNCTION_185();
        v134 = v302[7];
        v253 = OUTLINED_FUNCTION_98_0();
        v254(v253);
        v129 = v303;
        OUTLINED_FUNCTION_87_0(v303);
        OUTLINED_FUNCTION_5_4();
      }

      OUTLINED_FUNCTION_57_0();
      __swift_storeEnumTagSinglePayload(v255, v256, v257, v258);
      v259 = OUTLINED_FUNCTION_18_1();
      v261 = v129;
      goto LABEL_50;
    case 3:
      OUTLINED_FUNCTION_1_17();
      v146 = v185;
      outlined init with copy of StorableValue();
      OUTLINED_FUNCTION_91_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      OUTLINED_FUNCTION_60_0();
      v186 = OUTLINED_FUNCTION_103_0(&v326);
      if (!OUTLINED_FUNCTION_54_0(v186, v187, v188))
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_25_2();
      v189 = OUTLINED_FUNCTION_108();
      (v138)(v189);
      v190 = OUTLINED_FUNCTION_24_1();
      (v138)(v190);
      v164 = v144;
      if (v146)
      {
        OUTLINED_FUNCTION_195();
        OUTLINED_FUNCTION_35_1();
        v191 = OUTLINED_FUNCTION_22_1();
      }

      else
      {
        OUTLINED_FUNCTION_17_1();
      }

      __swift_storeEnumTagSinglePayload(v191, v192, v193, v194);
      OUTLINED_FUNCTION_5_4();
      v259 = OUTLINED_FUNCTION_16_2();
      v269 = &v330;
      goto LABEL_49;
    case 4:
      OUTLINED_FUNCTION_1_17();
      v146 = v158;
      outlined init with copy of StorableValue();
      OUTLINED_FUNCTION_91_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      OUTLINED_FUNCTION_60_0();
      v159 = OUTLINED_FUNCTION_103_0(&v327);
      if (!OUTLINED_FUNCTION_54_0(v159, v160, v161))
      {
LABEL_18:

        goto LABEL_36;
      }

      OUTLINED_FUNCTION_25_2();
      v162 = OUTLINED_FUNCTION_108();
      (v138)(v162);
      v163 = OUTLINED_FUNCTION_24_1();
      (v138)(v163);
      v164 = v144;
      if (v146)
      {
        OUTLINED_FUNCTION_195();
        OUTLINED_FUNCTION_35_1();
        v165 = OUTLINED_FUNCTION_22_1();
      }

      else
      {
        OUTLINED_FUNCTION_17_1();
      }

      __swift_storeEnumTagSinglePayload(v165, v166, v167, v168);
      OUTLINED_FUNCTION_5_4();
      v259 = OUTLINED_FUNCTION_16_2();
      v269 = &v331;
      goto LABEL_49;
    case 5:
      OUTLINED_FUNCTION_1_17();
      v212 = v211;
      outlined init with copy of StorableValue();
      v146 = *v212;
      v134 = v212[1];
      v330 = v146;
      v331 = v134;
      v213 = OUTLINED_FUNCTION_81();
      outlined copy of Data?(v213, v214);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      OUTLINED_FUNCTION_60_0();
      if (!OUTLINED_FUNCTION_54_0(v306, v215, v216))
      {
        v241 = OUTLINED_FUNCTION_81();
        outlined consume of Data?(v241, v242);
        v243 = a10;
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_25_2();
      v217 = OUTLINED_FUNCTION_56_0();
      (v138)(v217);
      v137 = v320;
      v218 = OUTLINED_FUNCTION_24_1();
      (v138)(v218);
      OUTLINED_FUNCTION_194();
      v164 = v144;
      if (!v184 & v219)
      {
        OUTLINED_FUNCTION_17_1();
      }

      else
      {
        v330 = v146;
        v331 = v134;
        OUTLINED_FUNCTION_35_1();
        v265 = OUTLINED_FUNCTION_22_1();
      }

      __swift_storeEnumTagSinglePayload(v265, v266, v267, v268);
      OUTLINED_FUNCTION_5_4();
      v259 = OUTLINED_FUNCTION_16_2();
      v269 = &a9;
LABEL_49:
      v261 = *(v269 - 32);
LABEL_50:
      v260(v259, v261, v164);
      goto LABEL_51;
    case 6:
      OUTLINED_FUNCTION_1_17();
      outlined init with copy of StorableValue();
      v146 = &_s10Foundation4UUIDVSgMd;
      v134 = &_s10Foundation4UUIDVSgMR;
      v129 = v311;
      OUTLINED_FUNCTION_89();
      outlined init with take of UUID?(v220, v221, v222, v223);
      v224 = v309;
      OUTLINED_FUNCTION_89();
      outlined init with copy of Date?(v225, v226, v227, v228);
      v229 = OUTLINED_FUNCTION_59_0(&v329);
      if (!OUTLINED_FUNCTION_148(v229))
      {
        v238 = &_s10Foundation4UUIDVSgMd;
        v239 = &_s10Foundation4UUIDVSgMR;
        v240 = v129;
LABEL_35:
        outlined destroy of UUID?(v240, v238, v239);
LABEL_36:
        v243 = a10;
LABEL_37:
        v244 = lazy protocol witness table accessor for type SQLError and conformance SQLError();
        v245 = OUTLINED_FUNCTION_63(&type metadata for SQLError, v244);
        OUTLINED_FUNCTION_199(v245, v246);
        OUTLINED_FUNCTION_1_17();
        v247 = v302[0];
        v248 = outlined init with copy of StorableValue();
        OUTLINED_FUNCTION_166(v248);
        v249 = OUTLINED_FUNCTION_56_0();
        v250(v249);
        OUTLINED_FUNCTION_20_3();
        _s12BiomeStreams13StorableValueOWOhTm_0(v247, v251);
        OUTLINED_FUNCTION_2_9();
        _s12BiomeStreams13StorableValueOWOhTm_0(v243, v252);
        _s12BiomeStreams13StorableValueOWOhTm_0(v302[6], v146);
        goto LABEL_60;
      }

      v230 = OUTLINED_FUNCTION_50_0();
      (_s10Foundation4UUIDVSgMR)(v230, v224);
      v231 = OUTLINED_FUNCTION_113();
      v327 = &_s10Foundation4UUIDVSgMR;
      (_s10Foundation4UUIDVSgMR)(v231);
      OUTLINED_FUNCTION_136();
      outlined init with take of UUID?(v232, v233, v234, v235);
      v236 = OUTLINED_FUNCTION_104_0();
      LODWORD(v146) = v305;
      OUTLINED_FUNCTION_92(v236, v237, v305);
      if (v184)
      {
        outlined destroy of UUID?(v138, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        OUTLINED_FUNCTION_5_4();
        OUTLINED_FUNCTION_192();
      }

      else
      {
        v134 = v302[9];
        v270 = OUTLINED_FUNCTION_98_0();
        v271(v270);
        OUTLINED_FUNCTION_192();
        OUTLINED_FUNCTION_87_0(v224);
        OUTLINED_FUNCTION_5_4();
      }

      OUTLINED_FUNCTION_57_0();
      __swift_storeEnumTagSinglePayload(v272, v273, v274, v275);
      v276 = OUTLINED_FUNCTION_18_1();
      v277(v276, v224, v224);
LABEL_51:
      OUTLINED_FUNCTION_0_20();
      _s12BiomeStreams13StorableValueOWOhTm_0(v134, v278);
      v279 = OUTLINED_FUNCTION_188();
      (v134)(v279);
      v280 = OUTLINED_FUNCTION_104_0();
      OUTLINED_FUNCTION_92(v280, v281, v326);
      if (v184)
      {
        OUTLINED_FUNCTION_170();
        (v138)();
LABEL_59:
        OUTLINED_FUNCTION_198();
        v299 = OUTLINED_FUNCTION_171();
        (v138)(v299);
        OUTLINED_FUNCTION_0_20();
        OUTLINED_FUNCTION_208(v300, v301);
        OUTLINED_FUNCTION_4_6();
        _s12BiomeStreams13StorableValueOWObTm_0();
        goto LABEL_60;
      }

      v282 = OUTLINED_FUNCTION_132();
      v283(v282);
      v284 = OUTLINED_FUNCTION_92_0();
      (v134)(v284);
      v285 = OUTLINED_FUNCTION_104_0();
      __swift_getEnumTagSinglePayload(v285, v286, v129);
      v287 = OUTLINED_FUNCTION_157();
      v288(v287);
      v184 = v146 == 1;
      v289 = v312;
      if (v184)
      {
LABEL_57:
        OUTLINED_FUNCTION_170();
        (v138)();
        v294 = OUTLINED_FUNCTION_182();
        v295(v294);
        OUTLINED_FUNCTION_90_0();
        __swift_storeEnumTagSinglePayload(v296, v297, v298, v129);
        OUTLINED_FUNCTION_32_0();
        goto LABEL_59;
      }

      v290 = OUTLINED_FUNCTION_158();
      (v134)(v290);
      OUTLINED_FUNCTION_26_2(v137);
      if (!v184)
      {
        OUTLINED_FUNCTION_176();
        v291 = OUTLINED_FUNCTION_152();
        v292(v291);
        v293 = OUTLINED_FUNCTION_156();
        (v134)(v293);
        if ((v23 & 1) == 0)
        {
          (v134)(v289, v129);
          OUTLINED_FUNCTION_32_0();
          v138 = v327;
          goto LABEL_59;
        }

        goto LABEL_57;
      }

      __break(1u);
      break;
    case 7:
      v195 = OUTLINED_FUNCTION_133();
      v196(v195);
      OUTLINED_FUNCTION_17_1();
      __swift_storeEnumTagSinglePayload(v197, v198, v199, v200);
      LODWORD(v146) = v314;
      LOBYTE(v23) = v138;
      OUTLINED_FUNCTION_53();
      goto LABEL_51;
    default:
      OUTLINED_FUNCTION_1_17();
      v146 = v145;
      outlined init with copy of StorableValue();
      OUTLINED_FUNCTION_29_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
      OUTLINED_FUNCTION_60_0();
      v147 = OUTLINED_FUNCTION_59_0(&v323);
      if ((OUTLINED_FUNCTION_54_0(v147, v148, v149) & 1) == 0)
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_25_2();
      v150 = OUTLINED_FUNCTION_126();
      (v138)(v150);
      v151 = OUTLINED_FUNCTION_24_1();
      (v138)(v151);
      if (v22)
      {
        v152 = &v316;
LABEL_23:
        OUTLINED_FUNCTION_103_0(v152);
        OUTLINED_FUNCTION_17_1();
      }

      else
      {
        OUTLINED_FUNCTION_196();
        v262 = &v316;
LABEL_41:
        OUTLINED_FUNCTION_103_0(v262);
        v263 = v326;
        swift_dynamicCast();
        OUTLINED_FUNCTION_90_0();
        v210 = v263;
      }

      __swift_storeEnumTagSinglePayload(v207, v208, v209, v210);
      LODWORD(v146) = v314;
      OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_100_0();
      v264();
      OUTLINED_FUNCTION_52_0();
      goto LABEL_51;
  }
}

void MIN.processEvent(changeRecord:expressionEvaluator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v25;
  a20 = v26;
  v31 = OUTLINED_FUNCTION_77_0(v27, v28, v26, v29, v30);
  v313 = v32;
  MEMORY[0x1EEE9AC00](v31, v33);
  OUTLINED_FUNCTION_9();
  v312 = v34;
  OUTLINED_FUNCTION_43();
  v305 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_1();
  v318 = v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_59(v38);
  v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v39, v40);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v41, v42);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v43, v44);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_7(v45);
  v304 = type metadata accessor for Date();
  OUTLINED_FUNCTION_2_1();
  v302[8] = v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_59(v49);
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v50, v51);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v52, v53);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v54, v55);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_7(v56);
  v326 = v20;
  v319 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_2_1();
  v321 = v57;
  MEMORY[0x1EEE9AC00](v58, v59);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v60, v61);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v62, v63);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v64, v65);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v66, v67);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v68, v69);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v70, v71);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v72, v73);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v74, v75);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v76, v77);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v78, v79);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v80, v81);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v82, v83);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v84, v85);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v86, v87);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v88, v89);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v90, v91);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v92, v93);
  OUTLINED_FUNCTION_51();
  v320 = v94;
  OUTLINED_FUNCTION_43();
  type metadata accessor for SQLDataType();
  OUTLINED_FUNCTION_2_1();
  v324 = v96;
  v325 = v95;
  MEMORY[0x1EEE9AC00](v95, v97);
  OUTLINED_FUNCTION_9_0();
  v323 = v98;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v99, v100);
  OUTLINED_FUNCTION_51();
  v322 = v101;
  v102 = OUTLINED_FUNCTION_43();
  v327 = type metadata accessor for StorableValue(v102);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v103, v104);
  OUTLINED_FUNCTION_9_0();
  v317[1] = v105;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v106, v107);
  OUTLINED_FUNCTION_30();
  v317[0] = v108;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v109, v110);
  OUTLINED_FUNCTION_30();
  v316 = v111;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v112, v113);
  OUTLINED_FUNCTION_30();
  v315 = v114;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v115, v116);
  OUTLINED_FUNCTION_143();
  MEMORY[0x1EEE9AC00](v117, v118);
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v119, v120);
  OUTLINED_FUNCTION_63_0();
  MEMORY[0x1EEE9AC00](v121, v122);
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v123, v124);
  v126 = v302 - v125;
  v127 = OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v127, v128);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_128();
  if (v21)
  {
    goto LABEL_60;
  }

  OUTLINED_FUNCTION_70_0();
  v329 = 0;
  v129 = v322;
  SQLExpression.returnType.getter(v322);
  v130 = OUTLINED_FUNCTION_67_0();
  v131(v130);
  OUTLINED_FUNCTION_72_0();
  lazy protocol witness table accessor for type Data.Iterator and conformance Data.Iterator(v132, v133, &protocol conformance descriptor for SQLDataType);
  OUTLINED_FUNCTION_89_0();
  v134 = v22;
  v135 = dispatch thunk of static Equatable.== infix(_:_:)();
  v136 = OUTLINED_FUNCTION_173(v135);
  (v22)(v136);
  (v22)(v129, v22);
  if ((v328 & 1) == 0)
  {
    v153 = lazy protocol witness table accessor for type SQLError and conformance SQLError();
    OUTLINED_FUNCTION_63(&type metadata for SQLError, v153);
    OUTLINED_FUNCTION_197();
    v154 = OUTLINED_FUNCTION_168();
    OUTLINED_FUNCTION_167(v154, v155);
    OUTLINED_FUNCTION_0_20();
    _s12BiomeStreams13StorableValueOWOhTm_0(v24, v156);
    OUTLINED_FUNCTION_2_9();
    _s12BiomeStreams13StorableValueOWOhTm_0(a10, v157);
LABEL_60:
    OUTLINED_FUNCTION_65();
    return;
  }

  v328 = v23;
  v137 = v320;
  v138 = v321;
  OUTLINED_FUNCTION_17_1();
  __swift_storeEnumTagSinglePayload(v139, v140, v141, v142);
  OUTLINED_FUNCTION_1_17();
  OUTLINED_FUNCTION_52_0();
  outlined init with copy of StorableValue();
  OUTLINED_FUNCTION_50();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v144 = v318;
  v302[0] = v126;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      OUTLINED_FUNCTION_1_17();
      v146 = v201;
      outlined init with copy of StorableValue();
      OUTLINED_FUNCTION_29_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
      OUTLINED_FUNCTION_60_0();
      v202 = OUTLINED_FUNCTION_59_0(&v324);
      if ((OUTLINED_FUNCTION_54_0(v202, v203, v204) & 1) == 0)
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_25_2();
      v205 = OUTLINED_FUNCTION_126();
      (v138)(v205);
      v206 = OUTLINED_FUNCTION_24_1();
      (v138)(v206);
      if (v22)
      {
        v152 = v317;
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_196();
      v262 = v317;
      goto LABEL_41;
    case 2:
      OUTLINED_FUNCTION_1_17();
      v170 = v169;
      outlined init with copy of StorableValue();
      v134 = &_s10Foundation4DateVSgMd;
      v146 = &_s10Foundation4DateVSgMR;
      OUTLINED_FUNCTION_149();
      v171 = v307;
      OUTLINED_FUNCTION_86_0();
      outlined init with copy of Date?(v172, v173, v174, &_s10Foundation4DateVSgMR);
      v175 = OUTLINED_FUNCTION_59_0(&v325);
      if (!OUTLINED_FUNCTION_54_0(v175, v171, v308))
      {
        v238 = &_s10Foundation4DateVSgMd;
        v239 = &_s10Foundation4DateVSgMR;
        v240 = v170;
        goto LABEL_35;
      }

      v176 = OUTLINED_FUNCTION_50_0();
      (_s10Foundation4DateVSgMd)(v176, v171);
      v177 = OUTLINED_FUNCTION_56_0();
      v327 = &_s10Foundation4DateVSgMd;
      (_s10Foundation4DateVSgMd)(v177);
      OUTLINED_FUNCTION_136();
      outlined init with take of UUID?(v178, v179, v180, v181);
      v182 = OUTLINED_FUNCTION_104_0();
      LODWORD(v146) = v304;
      OUTLINED_FUNCTION_92(v182, v183, v304);
      v164 = v171;
      if (v184)
      {
        outlined destroy of UUID?(v138, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        OUTLINED_FUNCTION_5_4();
        v129 = v303;
      }

      else
      {
        OUTLINED_FUNCTION_185();
        v134 = v302[7];
        v253 = OUTLINED_FUNCTION_98_0();
        v254(v253);
        v129 = v303;
        OUTLINED_FUNCTION_87_0(v303);
        OUTLINED_FUNCTION_5_4();
      }

      OUTLINED_FUNCTION_57_0();
      __swift_storeEnumTagSinglePayload(v255, v256, v257, v258);
      v259 = OUTLINED_FUNCTION_18_1();
      v261 = v129;
      goto LABEL_50;
    case 3:
      OUTLINED_FUNCTION_1_17();
      v146 = v185;
      outlined init with copy of StorableValue();
      OUTLINED_FUNCTION_91_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      OUTLINED_FUNCTION_60_0();
      v186 = OUTLINED_FUNCTION_103_0(&v326);
      if (!OUTLINED_FUNCTION_54_0(v186, v187, v188))
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_25_2();
      v189 = OUTLINED_FUNCTION_108();
      (v138)(v189);
      v190 = OUTLINED_FUNCTION_24_1();
      (v138)(v190);
      v164 = v144;
      if (v146)
      {
        OUTLINED_FUNCTION_195();
        OUTLINED_FUNCTION_35_1();
        v191 = OUTLINED_FUNCTION_22_1();
      }

      else
      {
        OUTLINED_FUNCTION_17_1();
      }

      __swift_storeEnumTagSinglePayload(v191, v192, v193, v194);
      OUTLINED_FUNCTION_5_4();
      v259 = OUTLINED_FUNCTION_16_2();
      v269 = &v330;
      goto LABEL_49;
    case 4:
      OUTLINED_FUNCTION_1_17();
      v146 = v158;
      outlined init with copy of StorableValue();
      OUTLINED_FUNCTION_91_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      OUTLINED_FUNCTION_60_0();
      v159 = OUTLINED_FUNCTION_103_0(&v327);
      if (!OUTLINED_FUNCTION_54_0(v159, v160, v161))
      {
LABEL_18:

        goto LABEL_36;
      }

      OUTLINED_FUNCTION_25_2();
      v162 = OUTLINED_FUNCTION_108();
      (v138)(v162);
      v163 = OUTLINED_FUNCTION_24_1();
      (v138)(v163);
      v164 = v144;
      if (v146)
      {
        OUTLINED_FUNCTION_195();
        OUTLINED_FUNCTION_35_1();
        v165 = OUTLINED_FUNCTION_22_1();
      }

      else
      {
        OUTLINED_FUNCTION_17_1();
      }

      __swift_storeEnumTagSinglePayload(v165, v166, v167, v168);
      OUTLINED_FUNCTION_5_4();
      v259 = OUTLINED_FUNCTION_16_2();
      v269 = &v331;
      goto LABEL_49;
    case 5:
      OUTLINED_FUNCTION_1_17();
      v212 = v211;
      outlined init with copy of StorableValue();
      v146 = *v212;
      v134 = v212[1];
      v330 = v146;
      v331 = v134;
      v213 = OUTLINED_FUNCTION_81();
      outlined copy of Data?(v213, v214);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      OUTLINED_FUNCTION_60_0();
      if (!OUTLINED_FUNCTION_54_0(v306, v215, v216))
      {
        v241 = OUTLINED_FUNCTION_81();
        outlined consume of Data?(v241, v242);
        v243 = a10;
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_25_2();
      v217 = OUTLINED_FUNCTION_56_0();
      (v138)(v217);
      v137 = v320;
      v218 = OUTLINED_FUNCTION_24_1();
      (v138)(v218);
      OUTLINED_FUNCTION_194();
      v164 = v144;
      if (!v184 & v219)
      {
        OUTLINED_FUNCTION_17_1();
      }

      else
      {
        v330 = v146;
        v331 = v134;
        OUTLINED_FUNCTION_35_1();
        v265 = OUTLINED_FUNCTION_22_1();
      }

      __swift_storeEnumTagSinglePayload(v265, v266, v267, v268);
      OUTLINED_FUNCTION_5_4();
      v259 = OUTLINED_FUNCTION_16_2();
      v269 = &a9;
LABEL_49:
      v261 = *(v269 - 32);
LABEL_50:
      v260(v259, v261, v164);
      goto LABEL_51;
    case 6:
      OUTLINED_FUNCTION_1_17();
      outlined init with copy of StorableValue();
      v146 = &_s10Foundation4UUIDVSgMd;
      v134 = &_s10Foundation4UUIDVSgMR;
      v129 = v311;
      OUTLINED_FUNCTION_89();
      outlined init with take of UUID?(v220, v221, v222, v223);
      v224 = v309;
      OUTLINED_FUNCTION_89();
      outlined init with copy of Date?(v225, v226, v227, v228);
      v229 = OUTLINED_FUNCTION_59_0(&v329);
      if (!OUTLINED_FUNCTION_148(v229))
      {
        v238 = &_s10Foundation4UUIDVSgMd;
        v239 = &_s10Foundation4UUIDVSgMR;
        v240 = v129;
LABEL_35:
        outlined destroy of UUID?(v240, v238, v239);
LABEL_36:
        v243 = a10;
LABEL_37:
        v244 = lazy protocol witness table accessor for type SQLError and conformance SQLError();
        v245 = OUTLINED_FUNCTION_63(&type metadata for SQLError, v244);
        OUTLINED_FUNCTION_199(v245, v246);
        OUTLINED_FUNCTION_1_17();
        v247 = v302[0];
        v248 = outlined init with copy of StorableValue();
        OUTLINED_FUNCTION_166(v248);
        v249 = OUTLINED_FUNCTION_56_0();
        v250(v249);
        OUTLINED_FUNCTION_20_3();
        _s12BiomeStreams13StorableValueOWOhTm_0(v247, v251);
        OUTLINED_FUNCTION_2_9();
        _s12BiomeStreams13StorableValueOWOhTm_0(v243, v252);
        _s12BiomeStreams13StorableValueOWOhTm_0(v302[6], v146);
        goto LABEL_60;
      }

      v230 = OUTLINED_FUNCTION_50_0();
      (_s10Foundation4UUIDVSgMR)(v230, v224);
      v231 = OUTLINED_FUNCTION_113();
      v327 = &_s10Foundation4UUIDVSgMR;
      (_s10Foundation4UUIDVSgMR)(v231);
      OUTLINED_FUNCTION_136();
      outlined init with take of UUID?(v232, v233, v234, v235);
      v236 = OUTLINED_FUNCTION_104_0();
      LODWORD(v146) = v305;
      OUTLINED_FUNCTION_92(v236, v237, v305);
      if (v184)
      {
        outlined destroy of UUID?(v138, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        OUTLINED_FUNCTION_5_4();
        OUTLINED_FUNCTION_192();
      }

      else
      {
        v134 = v302[9];
        v270 = OUTLINED_FUNCTION_98_0();
        v271(v270);
        OUTLINED_FUNCTION_192();
        OUTLINED_FUNCTION_87_0(v224);
        OUTLINED_FUNCTION_5_4();
      }

      OUTLINED_FUNCTION_57_0();
      __swift_storeEnumTagSinglePayload(v272, v273, v274, v275);
      v276 = OUTLINED_FUNCTION_18_1();
      v277(v276, v224, v224);
LABEL_51:
      OUTLINED_FUNCTION_0_20();
      _s12BiomeStreams13StorableValueOWOhTm_0(v134, v278);
      v279 = OUTLINED_FUNCTION_188();
      (v134)(v279);
      v280 = OUTLINED_FUNCTION_104_0();
      OUTLINED_FUNCTION_92(v280, v281, v326);
      if (v184)
      {
        OUTLINED_FUNCTION_170();
        (v138)();
LABEL_59:
        OUTLINED_FUNCTION_198();
        v299 = OUTLINED_FUNCTION_171();
        (v138)(v299);
        OUTLINED_FUNCTION_0_20();
        OUTLINED_FUNCTION_208(v300, v301);
        OUTLINED_FUNCTION_4_6();
        _s12BiomeStreams13StorableValueOWObTm_0();
        goto LABEL_60;
      }

      v282 = OUTLINED_FUNCTION_132();
      v283(v282);
      v284 = OUTLINED_FUNCTION_92_0();
      (v134)(v284);
      v285 = OUTLINED_FUNCTION_104_0();
      __swift_getEnumTagSinglePayload(v285, v286, v129);
      v287 = OUTLINED_FUNCTION_157();
      v288(v287);
      v184 = v146 == 1;
      v289 = v312;
      if (v184)
      {
LABEL_57:
        OUTLINED_FUNCTION_170();
        (v138)();
        v294 = OUTLINED_FUNCTION_182();
        v295(v294);
        OUTLINED_FUNCTION_90_0();
        __swift_storeEnumTagSinglePayload(v296, v297, v298, v129);
        OUTLINED_FUNCTION_32_0();
        goto LABEL_59;
      }

      v290 = OUTLINED_FUNCTION_158();
      (v134)(v290);
      OUTLINED_FUNCTION_26_2(v137);
      if (!v184)
      {
        OUTLINED_FUNCTION_176();
        v291 = OUTLINED_FUNCTION_152();
        v292(v291);
        v293 = OUTLINED_FUNCTION_156();
        (v134)(v293);
        if ((v23 & 1) == 0)
        {
          (v134)(v289, v129);
          OUTLINED_FUNCTION_32_0();
          v138 = v327;
          goto LABEL_59;
        }

        goto LABEL_57;
      }

      __break(1u);
      break;
    case 7:
      v195 = OUTLINED_FUNCTION_133();
      v196(v195);
      OUTLINED_FUNCTION_17_1();
      __swift_storeEnumTagSinglePayload(v197, v198, v199, v200);
      LODWORD(v146) = v314;
      LOBYTE(v23) = v138;
      OUTLINED_FUNCTION_53();
      goto LABEL_51;
    default:
      OUTLINED_FUNCTION_1_17();
      v146 = v145;
      outlined init with copy of StorableValue();
      OUTLINED_FUNCTION_29_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
      OUTLINED_FUNCTION_60_0();
      v147 = OUTLINED_FUNCTION_59_0(&v323);
      if ((OUTLINED_FUNCTION_54_0(v147, v148, v149) & 1) == 0)
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_25_2();
      v150 = OUTLINED_FUNCTION_126();
      (v138)(v150);
      v151 = OUTLINED_FUNCTION_24_1();
      (v138)(v151);
      if (v22)
      {
        v152 = &v316;
LABEL_23:
        OUTLINED_FUNCTION_103_0(v152);
        OUTLINED_FUNCTION_17_1();
      }

      else
      {
        OUTLINED_FUNCTION_196();
        v262 = &v316;
LABEL_41:
        OUTLINED_FUNCTION_103_0(v262);
        v263 = v326;
        swift_dynamicCast();
        OUTLINED_FUNCTION_90_0();
        v210 = v263;
      }

      __swift_storeEnumTagSinglePayload(v207, v208, v209, v210);
      LODWORD(v146) = v314;
      OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_100_0();
      v264();
      OUTLINED_FUNCTION_52_0();
      goto LABEL_51;
  }
}

void MAX.applyMetadata(metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v25;
  a20 = v26;
  v271 = v22;
  v272 = v21;
  OUTLINED_FUNCTION_147();
  v255 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_1();
  v251 = v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_59(v30);
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v31, v32);
  OUTLINED_FUNCTION_9_0();
  v254 = v33;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v34, v35);
  OUTLINED_FUNCTION_30();
  v266 = v36;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v37, v38);
  OUTLINED_FUNCTION_51();
  v268 = v39;
  OUTLINED_FUNCTION_43();
  v253 = type metadata accessor for Date();
  OUTLINED_FUNCTION_2_1();
  v250 = v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_59(v43);
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v44, v45);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v46, v47);
  OUTLINED_FUNCTION_30();
  v263 = v48;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v49, v50);
  OUTLINED_FUNCTION_51();
  v265 = v51;
  a10 = v20;
  v52 = *(v20 + 16);
  v53 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_2_1();
  v55 = v54;
  MEMORY[0x1EEE9AC00](v56, v57);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v58, v59);
  OUTLINED_FUNCTION_30();
  v262 = v60;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v61, v62);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v63, v64);
  OUTLINED_FUNCTION_30();
  v261 = v65;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v66, v67);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v68, v69);
  OUTLINED_FUNCTION_30();
  v260 = v70;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v71, v72);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v73, v74);
  OUTLINED_FUNCTION_30();
  v259 = v75;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v76, v77);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v78, v79);
  OUTLINED_FUNCTION_30();
  v258 = v80;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v81, v82);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v83, v84);
  OUTLINED_FUNCTION_30();
  v257 = v85;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v86, v87);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v88, v89);
  OUTLINED_FUNCTION_51();
  v256 = v90;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
  OUTLINED_FUNCTION_47(v91);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v92, v93);
  v95 = &v243 - v94;
  v270 = type metadata accessor for StorableValue(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v96, v97);
  OUTLINED_FUNCTION_14();
  v100 = MEMORY[0x1EEE9AC00](v98, v99);
  v102 = MEMORY[0x1EEE9AC00](v100, v101);
  v104 = (&v243 - v103);
  MEMORY[0x1EEE9AC00](v102, v105);
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v106, v107);
  OUTLINED_FUNCTION_45_0();
  v110 = MEMORY[0x1EEE9AC00](v108, v109);
  v112 = &v243 - v111;
  v114 = MEMORY[0x1EEE9AC00](v110, v113);
  v116 = &v243 - v115;
  v118 = MEMORY[0x1EEE9AC00](v114, v117);
  MEMORY[0x1EEE9AC00](v118, v119);
  if (!*(v21 + 16))
  {
    (*(v55 + 8))(&v272[*(a10 + 48)], v53);
    OUTLINED_FUNCTION_45();
    goto LABEL_7;
  }

  v243 = v104;
  v244 = v123;
  v245 = v122;
  v247 = &v243 - v120;
  v269 = v121;
  v248 = v53;
  v246 = v55;
  v249 = v52;
  v124 = v272;
  v125 = OUTLINED_FUNCTION_113();
  specialized __RawDictionaryStorage.find<A>(_:)(v125, v126);
  if ((v127 & 1) == 0)
  {
    v137 = lazy protocol witness table accessor for type SQLError and conformance SQLError();
    OUTLINED_FUNCTION_63(&type metadata for SQLError, v137);
    v138 = *v124;
    v139 = *(v124 + 1);
    *v140 = v21;
    *(v140 + 8) = v138;
    *(v140 + 16) = v139;
    *(v140 + 64) = 8;
    swift_willThrow();

    goto LABEL_53;
  }

  v128 = OUTLINED_FUNCTION_113();
  specialized Dictionary.subscript.getter(v128, v129, v21, v130);
  OUTLINED_FUNCTION_92(v95, 1, v270);
  if (v131)
  {
    outlined destroy of UUID?(v95, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
    v132 = *(a10 + 48);
    (*(v246 + 8))(&v124[v132], v248);
    v133 = &v124[v132];
    v134 = 1;
    v135 = 1;
    v136 = v249;
LABEL_7:
    __swift_storeEnumTagSinglePayload(v133, v134, v135, v136);
    goto LABEL_53;
  }

  _s12BiomeStreams13StorableValueOWObTm_0();
  OUTLINED_FUNCTION_1_17();
  outlined init with copy of StorableValue();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v142 = v124;
  v143 = a10;
  v144 = v249;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      outlined init with copy of StorableValue();
      v146 = *v112;
      v145 = v112[8];
      v273 = *v112;
      LOBYTE(v274) = v145;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
      OUTLINED_FUNCTION_60_0();
      v192 = OUTLINED_FUNCTION_40_0(v189, v190, v191);
      if ((v192 & 1) == 0)
      {
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_150(v192, type metadata accessor for StorableValue);
      v193 = OUTLINED_FUNCTION_15_0();
      v194(v193);
      if (v145)
      {
        v153 = &a11;
        goto LABEL_49;
      }

      v273 = v146;
      v161 = &a11;
      goto LABEL_44;
    case 2:
      outlined init with copy of StorableValue();
      v162 = &_s10Foundation4DateVSgMd;
      v145 = &_s10Foundation4DateVSgMR;
      v163 = v265;
      OUTLINED_FUNCTION_89();
      outlined init with take of UUID?(v164, v165, v166, v167);
      OUTLINED_FUNCTION_89();
      outlined init with copy of Date?(v168, v169, v170, v171);
      v172 = OUTLINED_FUNCTION_89_0();
      v174 = OUTLINED_FUNCTION_201(v172, v173, v264);
      if (!v174)
      {
        v220 = &_s10Foundation4DateVSgMd;
        v221 = &_s10Foundation4DateVSgMR;
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_150(v174, type metadata accessor for StorableValue);
      v175 = OUTLINED_FUNCTION_131();
      v176(v175);
      v177 = v252;
      outlined init with take of UUID?(v163, v252, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      OUTLINED_FUNCTION_92(v177, 1, v253);
      if (!v131)
      {
        OUTLINED_FUNCTION_185();
        v230 = OUTLINED_FUNCTION_172();
        v231(v230);
        v232 = &a13;
        goto LABEL_45;
      }

      outlined destroy of UUID?(v177, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v178 = &a13;
      goto LABEL_36;
    case 3:
      outlined init with copy of StorableValue();
      v145 = *v23;
      v146 = *(v23 + 8);
      v273 = *v23;
      v274 = v146;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      OUTLINED_FUNCTION_60_0();
      v182 = OUTLINED_FUNCTION_40_0(v179, v180, v181);
      if (!v182)
      {
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_150(v182, type metadata accessor for StorableValue);
      v183 = OUTLINED_FUNCTION_15_0();
      v184(v183);
      if (v146)
      {
        v273 = v145;
        v274 = v146;
        v161 = &a12;
        goto LABEL_44;
      }

      v153 = &a12;
      goto LABEL_49;
    case 4:
      v154 = v243;
      outlined init with copy of StorableValue();
      v145 = *v154;
      v146 = v154[1];
      v273 = v145;
      v274 = v146;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      OUTLINED_FUNCTION_60_0();
      v158 = OUTLINED_FUNCTION_40_0(v155, v156, v157);
      if (!v158)
      {
LABEL_23:

        goto LABEL_41;
      }

      OUTLINED_FUNCTION_150(v158, type metadata accessor for StorableValue);
      v159 = OUTLINED_FUNCTION_15_0();
      v160(v159);
      if (v146)
      {
        v273 = v145;
        v274 = v146;
        v161 = &a14;
        goto LABEL_44;
      }

      v153 = &a14;
      goto LABEL_49;
    case 5:
      v195 = v244;
      outlined init with copy of StorableValue();
      v146 = *v195;
      v145 = v195[1];
      v273 = v146;
      v274 = v145;
      v196 = OUTLINED_FUNCTION_81();
      outlined copy of Data?(v196, v197);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      OUTLINED_FUNCTION_60_0();
      v201 = OUTLINED_FUNCTION_40_0(v198, v199, v200);
      if (!v201)
      {
        v222 = OUTLINED_FUNCTION_81();
        outlined consume of Data?(v222, v223);
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_150(v201, type metadata accessor for StorableValue);
      v202 = OUTLINED_FUNCTION_15_0();
      v203(v202);
      OUTLINED_FUNCTION_194();
      if (!(!v131 & v204))
      {
        v273 = v146;
        v274 = v145;
        v161 = &a15;
        goto LABEL_44;
      }

      v153 = &a15;
      goto LABEL_49;
    case 6:
      OUTLINED_FUNCTION_136();
      outlined init with copy of StorableValue();
      v162 = &_s10Foundation4UUIDVSgMd;
      v145 = &_s10Foundation4UUIDVSgMR;
      v163 = v268;
      OUTLINED_FUNCTION_89();
      outlined init with take of UUID?(v205, v206, v207, v208);
      OUTLINED_FUNCTION_89();
      outlined init with copy of Date?(v209, v210, v211, v212);
      v213 = OUTLINED_FUNCTION_89_0();
      v215 = OUTLINED_FUNCTION_201(v213, v214, v267);
      if (v215)
      {
        OUTLINED_FUNCTION_150(v215, type metadata accessor for StorableValue);
        v216 = OUTLINED_FUNCTION_131();
        v217(v216);
        v218 = v254;
        outlined init with take of UUID?(v163, v254, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        OUTLINED_FUNCTION_92(v218, 1, v255);
        if (v131)
        {
          outlined destroy of UUID?(v218, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v178 = &a16;
LABEL_36:
          v219 = *(v178 - 32);
        }

        else
        {
          OUTLINED_FUNCTION_185();
          v233 = OUTLINED_FUNCTION_172();
          v234(v233);
          v232 = &a16;
LABEL_45:
          v219 = *(v232 - 32);
          OUTLINED_FUNCTION_89_0();
          swift_dynamicCast();
        }

        OUTLINED_FUNCTION_45();
        __swift_storeEnumTagSinglePayload(v235, v236, v237, v238);
        (v162[5])(&v142[*(v143 + 48)], v219, v145);
LABEL_51:
        v229 = type metadata accessor for StorableValue;
        v228 = v269;
      }

      else
      {
        v220 = &_s10Foundation4UUIDVSgMd;
        v221 = &_s10Foundation4UUIDVSgMR;
LABEL_40:
        outlined destroy of UUID?(v163, v220, v221);
LABEL_41:
        v224 = lazy protocol witness table accessor for type SQLError and conformance SQLError();
        OUTLINED_FUNCTION_63(&type metadata for SQLError, v224);
        v226 = v225;
        v225[3] = v270;
        __swift_allocate_boxed_opaque_existential_0(v225);
        OUTLINED_FUNCTION_1_17();
        OUTLINED_FUNCTION_103_0(&v270);
        outlined init with copy of StorableValue();
        v226[7] = swift_getMetatypeMetadata();
        v226[4] = v144;
        *(v226 + 64) = 3;
        swift_willThrow();
        OUTLINED_FUNCTION_20_3();
        _s12BiomeStreams13StorableValueOWOhTm_0(v145, v227);
        v228 = v269;
        v229 = v226;
      }

      _s12BiomeStreams13StorableValueOWOhTm_0(v228, v229);
      break;
    case 7:
      OUTLINED_FUNCTION_150(EnumCaseMultiPayload, type metadata accessor for StorableValue);
      (*(v246 + 8))(&v142[*(v143 + 48)], v248);
      OUTLINED_FUNCTION_45();
      __swift_storeEnumTagSinglePayload(v185, v186, v187, v188);
      goto LABEL_51;
    default:
      outlined init with copy of StorableValue();
      v145 = *v116;
      v146 = v116[8];
      v273 = v145;
      LOBYTE(v274) = v146;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
      OUTLINED_FUNCTION_60_0();
      v150 = OUTLINED_FUNCTION_40_0(v147, v148, v149);
      if ((v150 & 1) == 0)
      {
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_150(v150, type metadata accessor for StorableValue);
      v151 = OUTLINED_FUNCTION_15_0();
      v152(v151);
      if (v146)
      {
        v153 = &a10;
LABEL_49:
        OUTLINED_FUNCTION_59_0(v153);
      }

      else
      {
        v273 = v145;
        v161 = &a10;
LABEL_44:
        OUTLINED_FUNCTION_59_0(v161);
        swift_dynamicCast();
      }

      OUTLINED_FUNCTION_45();
      __swift_storeEnumTagSinglePayload(v239, v240, v241, v242);
      (*(v23 + 40))(&v142[*(v143 + 48)], v146, v24);
      goto LABEL_51;
  }

LABEL_53:
  OUTLINED_FUNCTION_65();
}

uint64_t protocol witness for static AggregationComparable.< infix(_:_:) in conformance String(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t _sSLsE1goiySbx_xtFZ10Foundation4UUIDV_Tt1g5(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type Data.Iterator and conformance Data.Iterator(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C0]);
  return dispatch thunk of static Comparable.< infix(_:_:)() & 1;
}

uint64_t _sSLsE1goiySbx_xtFZSS_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == a1 && a4 == a2)
  {
    return 0;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t specialized Sequence<>.lexicographicallyPrecedes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for Data.Iterator();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v23[-v15];
  outlined copy of Data._Representation(a3, a4);
  Data.Iterator.init(_:at:)();
  outlined copy of Data._Representation(a1, a2);
  Data.Iterator.init(_:at:)();
  lazy protocol witness table accessor for type Data.Iterator and conformance Data.Iterator(&lazy protocol witness table cache variable for type Data.Iterator and conformance Data.Iterator, MEMORY[0x1E6969050], MEMORY[0x1E6969058]);
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (v28)
    {
      v20 = *(v9 + 8);
      v20(v16, v8);
      dispatch thunk of IteratorProtocol.next()();
      v20(v13, v8);
      v19 = v26 ^ 1;
      return v19 & 1;
    }

    v17 = v27;
    dispatch thunk of IteratorProtocol.next()();
    if (v25)
    {
      goto LABEL_6;
    }

    if (v17 < v24)
    {
      break;
    }

    if (v24 < v17)
    {
LABEL_6:
      v18 = *(v9 + 8);
      v18(v13, v8);
      v18(v16, v8);
      v19 = 0;
      return v19 & 1;
    }
  }

  v21 = *(v9 + 8);
  v21(v13, v8);
  v21(v16, v8);
  v19 = 1;
  return v19 & 1;
}

uint64_t static Data.> infix(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (specialized Sequence<>.lexicographicallyPrecedes<A>(_:)(a3, a4, a1, a2))
  {
    v8 = 0;
  }

  else
  {
    v8 = MEMORY[0x1865F5B00](a1, a2, a3, a4) ^ 1;
  }

  return v8 & 1;
}

ValueMetadata *type metadata completion function for COUNT_STAR(uint64_t a1)
{
  result = type metadata accessor for SQLDataType();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

ValueMetadata *type metadata completion function for AVG(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = type metadata accessor for SQLExpression();
  if (v6 <= 0x3F)
  {
    result = type metadata accessor for SQLDataType();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm()
{
  OUTLINED_FUNCTION_141();
  if (v3)
  {
    return OUTLINED_FUNCTION_98(*(v1 + 8));
  }

  OUTLINED_FUNCTION_144();
  type metadata accessor for SQLExpression();
  OUTLINED_FUNCTION_83();
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_175();
  }

  else
  {
    type metadata accessor for SQLDataType();
    v6 = *(v2 + 24);
  }

  v7 = OUTLINED_FUNCTION_129(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void __swift_store_extra_inhabitant_indexTm()
{
  OUTLINED_FUNCTION_105_0();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    type metadata accessor for SQLExpression();
    OUTLINED_FUNCTION_83();
    if (*(v7 + 84) == v6)
    {
      OUTLINED_FUNCTION_174();
    }

    else
    {
      type metadata accessor for SQLDataType();
      v8 = *(v5 + 24);
    }

    v9 = OUTLINED_FUNCTION_129(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

ValueMetadata *type metadata completion function for COUNT(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for SQLExpression();
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for SQLDataType();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for GROUP_CONCAT(uint64_t a1)
{
  type metadata accessor for SQLExpression();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SQLExpression?(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SQLDataType();
      if (v3 <= 0x3F)
      {
        type metadata accessor for String?();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for SQLExpression?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SQLExpression?)
  {
    type metadata accessor for SQLExpression();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for SQLExpression?);
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

ValueMetadata *type metadata completion function for MIN(uint64_t a1)
{
  result = type metadata accessor for SQLExpression();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SQLDataType();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Optional();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MIN(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = type metadata accessor for SQLExpression();
  Description = v6[-1].Description;
  v8 = *(Description + 21);
  type metadata accessor for SQLDataType();
  OUTLINED_FUNCTION_181();
  v12 = *(v11 + 84);
  v13 = *(*(a3 + 16) - 8);
  if (v8 <= v12)
  {
    v14 = *(v11 + 84);
  }

  else
  {
    v14 = v8;
  }

  v15 = *(v13 + 84);
  v16 = v15 - 1;
  if (!v15)
  {
    v16 = 0;
  }

  if (v14 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v14;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(Description + 80);
  v20 = Description[8];
  v21 = *(v11 + 80);
  v22 = *(v10 + 64);
  v23 = *(v13 + 80);
  v24 = *(v13 + 64);
  if (v15)
  {
    v25 = v24;
  }

  else
  {
    v25 = v24 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v26 = v22 + 7;
  v27 = v23 + 16;
  if (a2 <= v18)
  {
    goto LABEL_36;
  }

  v28 = v25 + ((v27 + ((v26 + ((v20 + v21 + ((v19 + 16) & ~v19)) & ~v21)) & 0xFFFFFFFFFFFFFFF8)) & ~v23);
  v29 = 8 * v28;
  if (v28 > 3)
  {
    goto LABEL_18;
  }

  v32 = ((a2 - v18 + ~(-1 << v29)) >> v29) + 1;
  if (HIWORD(v32))
  {
    v30 = *(a1 + v28);
    if (v30)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v32 <= 0xFF)
    {
      if (v32 < 2)
      {
        goto LABEL_36;
      }

LABEL_18:
      v30 = *(a1 + v28);
      if (!*(a1 + v28))
      {
        goto LABEL_36;
      }

LABEL_26:
      v33 = (v30 - 1) << v29;
      if (v28 > 3)
      {
        v33 = 0;
      }

      if (v28)
      {
        if (v28 <= 3)
        {
          v34 = v28;
        }

        else
        {
          v34 = 4;
        }

        switch(v34)
        {
          case 2:
            v35 = *a1;
            break;
          case 3:
            v35 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v35 = *a1;
            break;
          default:
            v35 = *a1;
            break;
        }
      }

      else
      {
        v35 = 0;
      }

      return v18 + (v35 | v33) + 1;
    }

    v30 = *(a1 + v28);
    if (*(a1 + v28))
    {
      goto LABEL_26;
    }
  }

LABEL_36:
  if ((v17 & 0x80000000) == 0)
  {
    return OUTLINED_FUNCTION_98(*(a1 + 1));
  }

  v36 = (a1 + v19 + 16) & ~v19;
  if (v8 == v18)
  {
    v12 = v8;
    v37 = v6;
  }

  else
  {
    v36 = (v36 + v20 + v21) & ~v21;
    if (v12 != v18)
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v27 + ((v26 + v36) & 0xFFFFFFFFFFFFFFF8)) & ~v23, v15, *(a3 + 16));
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }

    v37 = v9;
  }

  return __swift_getEnumTagSinglePayload(v36, v12, v37);
}

void storeEnumTagSinglePayload for MIN()
{
  OUTLINED_FUNCTION_204();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  Description = type metadata accessor for SQLExpression()[-1].Description;
  v9 = Description[21];
  type metadata accessor for SQLDataType();
  v10 = 0;
  OUTLINED_FUNCTION_181();
  if (v9 <= *(v12 + 84))
  {
    v13 = *(v12 + 84);
  }

  else
  {
    v13 = v9;
  }

  v14 = *(*(v1 + 16) - 8);
  v15 = *(v14 + 84);
  v16 = v15 - 1;
  if (!v15)
  {
    v16 = 0;
  }

  if (v13 > v16)
  {
    v16 = v13;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  v18 = (*(v14 + 80) + 16 + ((*(v11 + 64) + 7 + ((*(Description + 8) + *(v12 + 80) + ((*(Description + 80) + 16) & ~*(Description + 80))) & ~*(v12 + 80))) & 0xFFFFFFFFFFFFFFF8)) & ~*(v14 + 80);
  v19 = *(v14 + 64);
  if (!v15)
  {
    ++v19;
  }

  v20 = v18 + v19;
  v21 = 8 * (v18 + v19);
  if (v3 > v17)
  {
    if (v20 <= 3)
    {
      v22 = ((v3 - v17 + ~(-1 << v21)) >> v21) + 1;
      if (HIWORD(v22))
      {
        v10 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v10 = v23;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  if (v17 < v5)
  {
    v24 = ~v17 + v5;
    if (v20 < 4)
    {
      v25 = (v24 >> v21) + 1;
      if (v20)
      {
        v26 = v24 & ~(-1 << v21);
        bzero(v7, v20);
        if (v20 == 3)
        {
          *v7 = v26;
          *(v7 + 2) = BYTE2(v26);
        }

        else if (v20 == 2)
        {
          *v7 = v26;
        }

        else
        {
          *v7 = v24;
        }
      }
    }

    else
    {
      bzero(v7, v20);
      *v7 = v24;
      v25 = 1;
    }

    switch(v10)
    {
      case 1:
        *(v7 + v20) = v25;
        goto LABEL_49;
      case 2:
        *(v7 + v20) = v25;
        goto LABEL_49;
      case 3:
        goto LABEL_53;
      case 4:
        *(v7 + v20) = v25;
        goto LABEL_49;
      default:
        goto LABEL_49;
    }
  }

  switch(v10)
  {
    case 1:
      *(v7 + v20) = 0;
      if (v5)
      {
        goto LABEL_36;
      }

      goto LABEL_49;
    case 2:
      *(v7 + v20) = 0;
      if (!v5)
      {
        goto LABEL_49;
      }

      goto LABEL_36;
    case 3:
LABEL_53:
      __break(1u);
      return;
    case 4:
      *(v7 + v20) = 0;
      goto LABEL_35;
    default:
LABEL_35:
      if (!v5)
      {
        goto LABEL_49;
      }

LABEL_36:
      if ((v16 & 0x80000000) != 0)
      {
        OUTLINED_FUNCTION_169();

        __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
      }

      else
      {
        if ((v5 & 0x80000000) != 0)
        {
          *v7 = v5 & 0x7FFFFFFF;
          *(v7 + 1) = 0;
        }

        else
        {
          *(v7 + 1) = v5 - 1;
        }

LABEL_49:
        OUTLINED_FUNCTION_169();
      }

      return;
  }
}

uint64_t type metadata completion function for AggregationEvent(uint64_t a1)
{
  result = type metadata accessor for StorableValue(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SQLDataType();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Data.Iterator and conformance Data.Iterator(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *closure #1 in closure #1 in Double.init<A>(_:)@<X0>(_BYTE *result@<X0>, BOOL *a3@<X8>)
{
  v4 = *result;
  v5 = v4 > 0x20;
  v6 = (1 << v4) & 0x100003E01;
  v7 = v5 || v6 == 0;
  v8 = v7 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a3 = v8;
  return result;
}

uint64_t OUTLINED_FUNCTION_54_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_125()
{

  return specialized Dictionary.subscript.getter(v2, v3, v0, v1);
}

void OUTLINED_FUNCTION_128()
{

  MAX.getCurrentAggregationEvent()();
}

uint64_t OUTLINED_FUNCTION_142@<X0>(void *a1@<X8>)
{
  v2 = a1[1];
  *v1 = *a1;
  v1[1] = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_148(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_149()
{
  v5 = *(v3 - 320);

  return outlined init with take of UUID?(v2, v5, v1, v0);
}

uint64_t OUTLINED_FUNCTION_150(uint64_t a1, void (*a2)(void))
{
  v4 = *(v2 - 384);

  return _s12BiomeStreams13StorableValueOWOhTm_0(v4, a2);
}

uint64_t OUTLINED_FUNCTION_163()
{

  return _swift_stdlib_strtod_clocale();
}

uint64_t OUTLINED_FUNCTION_164@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 0;

  return type metadata accessor for StorableValue(0);
}

unint64_t OUTLINED_FUNCTION_165@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];

  return specialized __RawDictionaryStorage.find<A>(_:)(v2, v3);
}

uint64_t OUTLINED_FUNCTION_166(uint64_t a1)
{
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_167(uint64_t a1, uint64_t a2)
{
  *v2 = v3;
  *(v2 + 8) = v4;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 64) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_168()
{

  return SQLDataType.rawValue.getter();
}

double OUTLINED_FUNCTION_184@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + a1) + 0.0;
  *(v1 + a1) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_189(uint64_t result)
{
  *(v1 + *(result + 28)) = 0;
  *(v1 + *(result + 32)) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_197()
{

  return SQLExpression.sql.getter();
}

void OUTLINED_FUNCTION_198()
{

  MAX.getCurrentAggregationEvent()();
}

uint64_t *OUTLINED_FUNCTION_199(uint64_t a1, uint64_t *a2)
{
  a2[3] = v2;

  return __swift_allocate_boxed_opaque_existential_0(a2);
}

uint64_t OUTLINED_FUNCTION_201(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_202()
{

  return StorableValue.init(_:dataType:)(v2 - 96, v0, v1);
}

uint64_t OUTLINED_FUNCTION_203()
{

  return StorableValue.init(_:dataType:)(v2 - 96, v1, v0);
}

uint64_t OUTLINED_FUNCTION_205()
{

  return type metadata accessor for StorableValue(0);
}

uint64_t OUTLINED_FUNCTION_206()
{

  return type metadata accessor for StorableValue(0);
}

uint64_t OUTLINED_FUNCTION_208(uint64_t a1, void (*a2)(void))
{
  v4 = *(v2 - 560);

  return _s12BiomeStreams13StorableValueOWOhTm_0(v4, a2);
}

uint64_t OUTLINED_FUNCTION_209()
{
}

uint64_t OUTLINED_FUNCTION_210(uint64_t a1, unint64_t a2)
{
  outlined consume of Data?(a1, a2);
}

uint64_t specialized Sequence.first(where:)(uint64_t (*a1)(__int128 *, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  if (!v5)
  {
    return 0;
  }

  while (1)
  {
    v8 = *v6;
    v9 = *v6;
    result = a1(&v9, a2);
    if (v3)
    {
      break;
    }

    if (result)
    {
      return v8;
    }

    ++v6;
    if (!--v5)
    {
      return 0;
    }
  }

  return result;
}

uint64_t static LibraryBase.lookupDatabaseResource(identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_4_7(a1, a2, a3);
  result = v6(v5);
  v8 = result;
  v9 = result + 40;
  v10 = -*(result + 16);
  v11 = -1;
  while (1)
  {
    if (v10 + v11 == -1)
    {

      return 0;
    }

    if (++v11 >= *(v8 + 16))
    {
      break;
    }

    v12 = *(v9 - 8);
    v13 = (*(*(*v9 + 8) + 8))(v12);
    if (v13 == v4 && v14 == v3)
    {

LABEL_12:

      return v12;
    }

    v9 += 16;
    v16 = OUTLINED_FUNCTION_13_2(v13, v14);

    if (v16)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t static LibraryBase.view(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v30 - v10;
  v30[2] = a1;
  v30[3] = a2;
  v30[0] = 46;
  v30[1] = 0xE100000000000000;
  v12 = type metadata accessor for Locale();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.range<A>(of:options:range:locale:)();
  v14 = v13;
  outlined destroy of Locale?(v11);
  if (v14)
  {
    v15 = OUTLINED_FUNCTION_20();
    result = v16(v15);
    v18 = result;
    v19 = result + 40;
    v20 = -*(result + 16);
    v21 = -1;
    while (1)
    {
      if (v20 + v21 == -1)
      {

        return 0;
      }

      if (++v21 >= *(v18 + 16))
      {
        break;
      }

      v22 = v19 + 16;
      result = (*(*v19 + 56))(a1, a2);
      v19 = v22;
      if (result)
      {
        v23 = result;

        return v23;
      }
    }

    __break(1u);
  }

  else
  {
    v24 = String.subscript.getter();
    v25 = MEMORY[0x1865F6210](v24);
    v27 = v26;

    v23 = (*(a4 + 16))(v25, v27, a3, a4);
    v29 = v28;

    if (v23)
    {
      return (*(v29 + 56))(a1, a2, v23, v29);
    }

    return v23;
  }

  return result;
}

uint64_t outlined destroy of Locale?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static LibraryBase.streamBases.getter@<X0>(void *a1@<X8>)
{
  return static LibraryBase.streamBases.getter(a1);
}

{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12BMStreamBaseCGMd, &_sSaySo12BMStreamBaseCGMR);
  result = lazy protocol witness table accessor for type [BMStreamBase] and conformance [A](&lazy protocol witness table cache variable for type [BMStreamBase] and conformance [A], &_sSaySo12BMStreamBaseCGMd, &_sSaySo12BMStreamBaseCGMR);
  a1[4] = result;
  *a1 = MEMORY[0x1E69E7CC0];
  return result;
}

id static LibraryBase.streamBase(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_15_1(a1, a2, a3);
  v6(v5);
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_12_4();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_12_4();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = OUTLINED_FUNCTION_10_2(v11, v23);
  v13(v12);
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_29_2();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (!v24)
    {
      break;
    }

    v14 = [v24 identifier];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (v15 == a1 && v17 == a2)
    {

      break;
    }

    v19 = OUTLINED_FUNCTION_13_2(v15, v17);

    if (v19)
    {
      break;
    }
  }

  v20 = OUTLINED_FUNCTION_20();
  v21(v20);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  return v24;
}

uint64_t static LibraryBase.orderedDataflows.getter()
{
  return MEMORY[0x1E69E7CC0];
}

{
  return MEMORY[0x1E69E7CC0];
}

void *static LibraryBase.lookupDataflow(name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = OUTLINED_FUNCTION_15_1(a1, a2, a3);
  v9 = v8(v7);
  v10 = *(v9 + 16);
  v11 = 32;
  if (v10)
  {
    while (1)
    {
      memcpy(__dst, (v9 + v11), sizeof(__dst));
      v12 = *&__dst[0] == a1 && *(&__dst[0] + 1) == a2;
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 += 128;
      if (!--v10)
      {
        goto LABEL_8;
      }
    }

    outlined init with copy of Dataflow(__dst, v15);

    memcpy(v15, __dst, sizeof(v15));
    destructiveProjectEnumData for StorableValue();
    v13 = v15;
  }

  else
  {
LABEL_8:

    _s12BiomeStreams8DataflowVSgWOi0_(__dst);
    v13 = __dst;
  }

  return memcpy(a4, v13, 0x80uLL);
}

double _s12BiomeStreams8DataflowVSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t static LibraryBase.databaseResourceIdentifier(legacyViewName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_4_7(a1, a2, a3);
  result = v6(v5);
  v8 = result;
  if (!*(result + 16))
  {
LABEL_14:

    return 0;
  }

  v9 = 0;
  v20 = *(result + 16);
  while (2)
  {
    if (v9 < *(v8 + 16))
    {
      ++v9;
      OUTLINED_FUNCTION_18_2();
      v21 = v10;
      result = v11();
      v12 = result;
      v13 = result + 40;
      v14 = -*(result + 16);
      v15 = -1;
      while (v14 + v15 != -1)
      {
        if (++v15 >= *(v12 + 16))
        {
          __break(1u);
          goto LABEL_18;
        }

        v16 = (*(*v13 + 24))();
        if (v16 == v4 && v17 == v3)
        {

          goto LABEL_16;
        }

        v13 += 16;
        v19 = OUTLINED_FUNCTION_13_2(v16, v17);

        if (v19)
        {

LABEL_16:

          return (*(*(v21 + 8) + 8))();
        }
      }

      if (v9 != v20)
      {
        continue;
      }

      goto LABEL_14;
    }

    break;
  }

LABEL_18:
  __break(1u);
  return result;
}

void static LibraryBase.dataArtifacts.getter(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = (*(a1 + 8))();
  v4 = v3;
  v28 = *(v3 + 16);
  if (v28)
  {
    v26 = a2;
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v27 = v3;
    while (v5 < *(v4 + 16))
    {
      OUTLINED_FUNCTION_18_2();
      v8 = v7();
      v9 = *(v8 + 16);
      if (v9)
      {
        v29 = v6;
        v30 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
        v10 = 0;
        v11 = v30;
        v12 = (v8 + 40);
        while (v10 < *(v8 + 16))
        {
          v14 = *(v12 - 1);
          v13 = *v12;
          v16 = *(v30 + 16);
          v15 = *(v30 + 24);
          if (v16 >= v15 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
          }

          ++v10;
          v17 = *(v13 + 8);
          *(v30 + 16) = v16 + 1;
          v18 = v30 + 16 * v16;
          *(v18 + 32) = v14;
          *(v18 + 40) = v17;
          v12 += 2;
          if (v9 == v10)
          {

            v6 = v29;
            v4 = v27;
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v11 = MEMORY[0x1E69E7CC0];
LABEL_12:
      v19 = *(v11 + 16);
      v20 = *(v6 + 16);
      if (__OFADD__(v20, v19))
      {
        goto LABEL_28;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v20 + v19 > *(v6 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v6 = v21;
      }

      if (*(v11 + 16))
      {
        v22 = *(v6 + 16);
        if ((*(v6 + 24) >> 1) - v22 < v19)
        {
          goto LABEL_30;
        }

        memcpy((v6 + 16 * v22 + 32), (v11 + 32), 16 * v19);

        if (v19)
        {
          v23 = *(v6 + 16);
          v24 = __OFADD__(v23, v19);
          v25 = v23 + v19;
          if (v24)
          {
            goto LABEL_31;
          }

          *(v6 + 16) = v25;
        }
      }

      else
      {

        if (v19)
        {
          goto LABEL_29;
        }
      }

      if (++v5 == v28)
      {

        a2 = v26;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
LABEL_25:
    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12BiomeStreams15LibraryArtifactO04DataD0_pXpGMd, &_sSay12BiomeStreams15LibraryArtifactO04DataD0_pXpGMR);
    a2[4] = lazy protocol witness table accessor for type [BMStreamBase] and conformance [A](&lazy protocol witness table cache variable for type [LibraryArtifact.DataArtifact.Type] and conformance [A], &_sSay12BiomeStreams15LibraryArtifactO04DataD0_pXpGMd, &_sSay12BiomeStreams15LibraryArtifactO04DataD0_pXpGMR);
    *a2 = v6;
  }
}

uint64_t static LibraryBase.dataArtifact(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_15_1(a1, a2, a3);
  v6(v5);
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_12_4();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_12_4();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = OUTLINED_FUNCTION_10_2(v11, v23);
  v13(v12);
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_29_2();
  do
  {
    dispatch thunk of IteratorProtocol.next()();
    if (!v24)
    {
      break;
    }

    v14 = OUTLINED_FUNCTION_104();
    v16 = v15(v14);
    if (v16 == a1 && v17 == a2)
    {

      break;
    }

    v19 = OUTLINED_FUNCTION_13_2(v16, v17);
  }

  while ((v19 & 1) == 0);
  v20 = OUTLINED_FUNCTION_20();
  v21(v20);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  return OUTLINED_FUNCTION_104();
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_21(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_21(a3, result);
  }

  return result;
}

uint64_t specialized UnsafeMutablePointer.moveInitialize(from:count:)()
{
  OUTLINED_FUNCTION_25_3();
  if (v3 && (v4 = OUTLINED_FUNCTION_20(), result = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5), v1 + *(*(result - 8) + 72) * v0 > v2))
  {
    if (v2 != v1)
    {
      OUTLINED_FUNCTION_5_5();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    v7 = OUTLINED_FUNCTION_20();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_5_5();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [BMStreamBase] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_22_2()
{

  return swift_allocObject();
}

double static IntelligencePlatformView.updatedObjectDiffConfig.getter@<D0>(uint64_t a1@<X8>)
{
  return static IntelligencePlatformView.updatedObjectDiffConfig.getter(a1);
}

{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t UpdatedObjectDiffConfig.tableName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UpdatedObjectDiffConfig.identifierColumn.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t UpdatedObjectDiffConfig.updatedTimestampColumn.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void __swiftcall UpdatedObjectDiffConfig.init(tableName:identifierColumn:updatedTimestampColumn:diffTableMaxAge:)(BiomeStreams::UpdatedObjectDiffConfig *__return_ptr retstr, Swift::String tableName, Swift::String identifierColumn, Swift::String updatedTimestampColumn, Swift::Double diffTableMaxAge)
{
  retstr->tableName = tableName;
  retstr->identifierColumn = identifierColumn;
  retstr->updatedTimestampColumn = updatedTimestampColumn;
  retstr->diffTableMaxAge = diffTableMaxAge;
}

uint64_t static IntelligencePlatformView.identifier.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 40))();
  v7 = (*(*(v4 + 8) + 8))();
  MEMORY[0x1865F6280](46, 0xE100000000000000);
  v5 = (*(a2 + 16))(a1, a2);
  MEMORY[0x1865F6280](v5);

  return v7;
}

uint64_t static IntelligencePlatformView.metadata.getter@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = (*(a1 + 16))();
  *a2 = result;
  a2[1] = v4;
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = MEMORY[0x1E69E7CC0];
  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for UpdatedObjectDiffConfig(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id BMEventBase.init(jsonDictionary:error:)(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10[0] = 0;
  v5 = [v3 initWithJSONDictionary:isa error:v10];

  v6 = v10[0];
  if (!v5)
  {
    v7 = v6;
    v8 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (a2)
    {
      *a2 = _convertErrorToNSError(_:)();
    }

    return 0;
  }

  return v5;
}

_BYTE *storeEnumTagSinglePayload for Streams(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

id one-time initialization function for general(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v4, a2);
  __swift_project_value_buffer(v4, a2);
  result = __biome_log_for_category();
  if (result)
  {
    return Logger.init(_:)();
  }

  __break(1u);
  return result;
}

uint64_t static Logging.general.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

_BYTE *storeEnumTagSinglePayload for Logging(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
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

id BMResourceSpecifier.__allocating_init(type:name:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = MEMORY[0x1865F6160](a2, a3);

  v8 = [v6 initWithType:a1 name:v7];

  return v8;
}

uint64_t DatabaseResourceToken.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id static DatabaseResource.sqlDatabase(useCase:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return static DatabaseResource.sqlDatabase(useCase:)(a1, a2, a3, a4);
}

{
  v15[1] = *MEMORY[0x1E69E9840];
  v8 = [objc_allocWithZone(BMSQLDatabase) init];
  v9 = (*(*(a4 + 8) + 8))(a3);
  v10 = MEMORY[0x1865F6160](v9);

  v11 = MEMORY[0x1865F6160](a1, a2);
  v15[0] = 0;
  LOBYTE(a3) = [v8 attachDatabaseWithResourceIdentifier:v10 useCase:v11 error:v15];

  if (a3)
  {
    v12 = v15[0];
  }

  else
  {
    v13 = v15[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v8;
}

uint64_t static DatabaseResource.database(useCase:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return static DatabaseResource.database(useCase:)(a1, a2, a3, a4, a5);
}

{
  v9 = (*(*(a4 + 8) + 8))(a3);
  v11 = v10;
  v12 = MEMORY[0x1865F6160](a1, a2);
  type metadata accessor for SQLDatabaseHandle(0);
  swift_allocObject();
  result = SQLDatabaseHandle.init(identifier:useCase:readOnly:)(v9, v11, v12, 1);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

void static DatabaseResource.databaseResourceToken(useCase:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  static DatabaseResource.databaseResourceToken(useCase:)(a1, a2, a3, a4, a5);
}

{
  v65 = a5;
  v69[2] = *MEMORY[0x1E69E9840];
  type metadata accessor for URL.DirectoryHint();
  OUTLINED_FUNCTION_2_1();
  v63 = v10;
  v64 = v9;
  MEMORY[0x1EEE9AC00](v9, v11);
  OUTLINED_FUNCTION_3_12(v12, v55[0]);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = v55 - v15;
  OUTLINED_FUNCTION_43();
  v66 = type metadata accessor for URL();
  OUTLINED_FUNCTION_2_1();
  v62 = v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_9_0();
  v59 = v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v60 = v55 - v23;
  OUTLINED_FUNCTION_43();
  type metadata accessor for BMResourceSpecifier();
  v24 = *(a4 + 8);
  v25 = *(v24 + 8);
  v26 = v25(a3, v24);
  v28 = BMResourceSpecifier.__allocating_init(type:name:)(3, v26, v27);
  v29 = MEMORY[0x1865F6160](a1, a2);
  v30 = [objc_allocWithZone(MEMORY[0x1E698E968]) initWithUseCase_];

  v69[0] = 0;
  v31 = [v30 requestAccessToResource:v28 mode:1 error:v69];
  if (v31)
  {
    v32 = v31;
    v33 = v69[0];
    v34 = [v32 path];
    if (v34)
    {
      v35 = v34;
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v30;
      v55[2] = v37;
      v55[3] = v36;

      v38 = v25(a3, v24);
      OUTLINED_FUNCTION_1_19(v38, v39);
      v58 = v28;
      v40 = String.init<A>(_:)();
      OUTLINED_FUNCTION_7_4(v40, v41);
      String.append<A>(contentsOf:)();
      v42 = v68;
      v55[0] = v67;
      v55[1] = v68;
      v56 = v32;
      __swift_storeEnumTagSinglePayload(v16, 1, 1, v66);
      v44 = v63;
      v43 = v64;
      v45 = *(v63 + 104);
      v46 = v61;
      OUTLINED_FUNCTION_8_4();
      v45();
      v47 = v59;
      URL.init(filePath:directoryHint:relativeTo:)();
      v69[0] = v55[0];
      v69[1] = v42;
      OUTLINED_FUNCTION_8_4();
      v45();
      lazy protocol witness table accessor for type String and conformance String();
      v48 = v60;
      URL.appending<A>(component:directoryHint:)();
      (*(v44 + 8))(v46, v43);
      v49 = *(v62 + 8);
      v50 = v66;
      v49(v47, v66);

      v51 = v65;
      URL.standardizedFileURL.getter();

      v49(v48, v50);
      *(v51 + *(type metadata accessor for DatabaseResourceToken(0) + 20)) = v56;
    }

    else
    {
      OUTLINED_FUNCTION_10_3();
      OUTLINED_FUNCTION_9_4();
      v67 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17BMAccessAssertion_pMd, &_sSo17BMAccessAssertion_pMR);
      _print_unlocked<A, B>(_:_:)();
      OUTLINED_FUNCTION_2_10();
      lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
      v53 = swift_allocError();
      OUTLINED_FUNCTION_5_3(v53, v54);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v52 = v69[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t static DatabaseResource.view(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v36 - v11;
  v13 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_1();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init(uuidString:)();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    outlined destroy of UUID?(v12);
    result = (*(a4 + 48))(a3, a4);
  }

  else
  {
    (*(v15 + 32))(v19, v12, v13);
    v21 = *(a4 + 48);
    v39 = v4;
    v40 = v21;
    v22 = v21(a3, a4);
    v38 = a3;
    v23 = v22;
    MEMORY[0x1EEE9AC00](v22, v24);
    *(&v36 - 2) = v19;
    v25 = specialized Sequence.first(where:)(partial apply for closure #1 in static DatabaseResource.view(for:), (&v36 - 4), v23);
    v37 = a4;

    if (v25)
    {
      (*(v15 + 8))(v19, v13);
      return v25;
    }

    (*(v15 + 8))(v19, v13);
    result = v40(v38, v37);
  }

  v26 = result;
  v27 = (result + 40);
  v28 = -*(result + 16);
  v29 = -1;
  while (1)
  {
    if (v28 + v29 == -1)
    {

      return 0;
    }

    if (++v29 >= *(v26 + 16))
    {
      break;
    }

    v25 = *(v27 - 1);
    v30 = *v27;
    (*(*v27 + 40))(v25, *v27);
    v41 = (*(*(v31 + 8) + 8))();
    v42 = v32;
    MEMORY[0x1865F6280](46, 0xE100000000000000);
    v33 = (*(v30 + 16))(v25, v30);
    MEMORY[0x1865F6280](v33);

    if (v41 == a1 && v42 == a2)
    {

LABEL_17:

      return v25;
    }

    v27 += 2;
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v35)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

void static DatabaseResource.databaseResourceToken(useCase:writable:)(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v65 = a6;
  LODWORD(v67) = a3;
  v70[2] = *MEMORY[0x1E69E9840];
  type metadata accessor for URL.DirectoryHint();
  OUTLINED_FUNCTION_2_1();
  v63 = v11;
  v64 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  OUTLINED_FUNCTION_3_12(v13, v55[0]);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v58 = v55 - v16;
  OUTLINED_FUNCTION_43();
  v66 = type metadata accessor for URL();
  OUTLINED_FUNCTION_2_1();
  v61 = v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_9_0();
  v59 = v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v60 = v55 - v23;
  OUTLINED_FUNCTION_43();
  type metadata accessor for BMResourceSpecifier();
  v24 = *(a5 + 8);
  v25 = *(v24 + 8);
  v26 = v25(a4, v24);
  v28 = BMResourceSpecifier.__allocating_init(type:name:)(3, v26, v27);
  v29 = MEMORY[0x1865F6160](a1, a2);
  v30 = [objc_allocWithZone(MEMORY[0x1E698E968]) initWithUseCase_];

  if (v67)
  {
    v31 = 3;
  }

  else
  {
    v31 = 1;
  }

  v70[0] = 0;
  v67 = v28;
  v32 = [v30 requestAccessToResource:v28 mode:v31 error:v70];
  if (v32)
  {
    v33 = v32;
    v34 = v70[0];
    v35 = [v33 path];
    if (v35)
    {
      v36 = v35;
      v55[2] = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v30;
      v55[1] = v37;

      v38 = v25(a4, v24);
      OUTLINED_FUNCTION_1_19(v38, v39);
      v40 = String.init<A>(_:)();
      OUTLINED_FUNCTION_7_4(v40, v41);
      String.append<A>(contentsOf:)();
      v42 = v69;
      v55[0] = v68;
      __swift_storeEnumTagSinglePayload(v58, 1, 1, v66);
      v44 = v63;
      v43 = v64;
      v45 = *(v63 + 104);
      v57 = v33;
      v46 = v62;
      OUTLINED_FUNCTION_8_4();
      v45();
      v47 = v59;
      URL.init(filePath:directoryHint:relativeTo:)();
      v70[0] = v55[0];
      v70[1] = v42;
      OUTLINED_FUNCTION_8_4();
      v45();
      lazy protocol witness table accessor for type String and conformance String();
      v48 = v60;
      URL.appending<A>(component:directoryHint:)();
      (*(v44 + 8))(v46, v43);
      v49 = *(v61 + 8);
      v50 = v66;
      v49(v47, v66);

      v51 = v65;
      URL.standardizedFileURL.getter();

      v49(v48, v50);
      *(v51 + *(type metadata accessor for DatabaseResourceToken(0) + 20)) = v57;
    }

    else
    {
      OUTLINED_FUNCTION_10_3();
      OUTLINED_FUNCTION_9_4();
      v68 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17BMAccessAssertion_pMd, &_sSo17BMAccessAssertion_pMR);
      _print_unlocked<A, B>(_:_:)();
      OUTLINED_FUNCTION_2_10();
      lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
      v53 = swift_allocError();
      OUTLINED_FUNCTION_5_3(v53, v54);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v52 = v70[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t type metadata accessor for DatabaseResourceToken(uint64_t a1)
{
  result = type metadata singleton initialization cache for DatabaseResourceToken;
  if (!type metadata singleton initialization cache for DatabaseResourceToken)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in static DatabaseResource.view(for:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(a1 + 8) + 56))();
  LOBYTE(a1) = static UUID.== infix(_:_:)();
  (*(v4 + 8))(v7, v3);
  return a1 & 1;
}

uint64_t type metadata completion function for DatabaseResourceToken(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for BMAccessAssertion();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for BMAccessAssertion()
{
  result = lazy cache variable for type metadata for BMAccessAssertion;
  if (!lazy cache variable for type metadata for BMAccessAssertion)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for BMAccessAssertion);
  }

  return result;
}

uint64_t static UnifiedLibrary.Library.databaseResourceIdentifier(legacyViewName:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for lockedLibraries != -1)
  {
LABEL_10:
    swift_once();
  }

  v4 = static UnifiedLibrary.Library.lockedLibraries;

  os_unfair_lock_lock(v4 + 6);
  v5 = *&v4[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v4 + 6);

  v6 = v5 + 40;
  v7 = -*(v5 + 16);
  v8 = -1;
  while (v7 + v8 != -1)
  {
    if (++v8 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_10;
    }

    v9 = v6 + 16;
    v10 = (*(*v6 + 72))(a1, a2);
    v6 = v9;
    if (v11)
    {
      v12 = v10;

      return v12;
    }
  }

  return 0;
}

id thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@owned String?)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = v2(v3, v5);
  v8 = v7;

  if (v8)
  {
    v9 = MEMORY[0x1865F6160](v6, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t static UnifiedLibrary.Library.streamIdentifier(legacyStreamName:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for lockedLibraries != -1)
  {
LABEL_10:
    swift_once();
  }

  v4 = static UnifiedLibrary.Library.lockedLibraries;

  os_unfair_lock_lock(v4 + 6);
  v5 = *&v4[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v4 + 6);

  v6 = v5 + 40;
  v7 = -*(v5 + 16);
  v8 = -1;
  while (v7 + v8 != -1)
  {
    if (++v8 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_10;
    }

    v9 = v6 + 16;
    v10 = (*(*v6 + 88))(a1, a2);
    v6 = v9;
    if (v11)
    {
      v12 = v10;

      return v12;
    }
  }

  return 0;
}

uint64_t static UnifiedLibrary.Library.streamIdentifier(uuidString:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for lockedLibraries != -1)
  {
LABEL_10:
    swift_once();
  }

  v4 = static UnifiedLibrary.Library.lockedLibraries;

  os_unfair_lock_lock(v4 + 6);
  v5 = *&v4[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v4 + 6);

  v6 = v5 + 40;
  v7 = -*(v5 + 16);
  v8 = -1;
  while (v7 + v8 != -1)
  {
    if (++v8 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_10;
    }

    v9 = v6 + 16;
    v10 = (*(*v6 + 96))(a1, a2);
    v6 = v9;
    if (v11)
    {
      v12 = v10;

      return v12;
    }
  }

  return 0;
}

uint64_t static UnifiedLibrary.set(libraries:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for initializedLibrary != -1)
  {
    OUTLINED_FUNCTION_13_0(&one-time initialization token for initializedLibrary);
  }

  return static UnifiedLibrary.Library.set(libraries:)(a1, a2);
}

uint64_t static UnifiedLibrary.Library.set(libraries:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for lockedLibraries != -1)
  {
    a1 = swift_once();
  }

  v2 = static UnifiedLibrary.Library.lockedLibraries;
  MEMORY[0x1EEE9AC00](a1, a2);

  os_unfair_lock_lock(v2 + 6);
  partial apply for closure #1 in static UnifiedLibrary.Library.set(libraries:)(&v2[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v2 + 6);
}

uint64_t static UnifiedLibrary.set(streamsBaseOverride:)(uint64_t a1)
{
  if (one-time initialization token for initializedLibrary != -1)
  {
    OUTLINED_FUNCTION_13_0(&one-time initialization token for initializedLibrary);
  }

  outlined init with copy of Aggregation(a1, v5);
  v2 = swift_allocObject();
  outlined init with take of Aggregation(v5, v2 + 16);
  static UnifiedLibrary.Library.bmLibraryStreamBasesFunc.setter(partial apply for closure #1 in static UnifiedLibrary.set(streamsBaseOverride:), v2);
  outlined init with copy of Aggregation(a1, v5);
  v3 = swift_allocObject();
  outlined init with take of Aggregation(v5, v3 + 16);
  return static UnifiedLibrary.Library.bmLibraryStreamBaseFunc.setter(partial apply for closure #2 in static UnifiedLibrary.set(streamsBaseOverride:), v3);
}

id closure #2 in static UnifiedLibrary.set(streamsBaseOverride:)(uint64_t a1, void *a2)
{
  v2 = a2[3];
  v3 = __swift_project_boxed_opaque_existential_1(a2, v2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v5);
  v8 = &v24 - v7;
  MEMORY[0x1EEE9AC00](v6, v9);
  (*(v11 + 16))(&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v2);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    v12 = v26;
    if (!v26)
    {
      (*(v25 + 8))(v8, AssociatedTypeWitness);
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v21;
      lazy protocol witness table accessor for type UnifiedLibrary.Error and conformance UnifiedLibrary.Error();
      swift_allocError();
      *v22 = v20;
      v22[1] = v12;
      swift_willThrow();
      return v12;
    }

    v13 = [v26 identifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
    if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
    {
      break;
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      goto LABEL_11;
    }
  }

LABEL_11:
  (*(v25 + 8))(v8, AssociatedTypeWitness);
  return v12;
}

uint64_t one-time initialization function for lockedBMLibraryStreamBasesFunc()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyST_pSo12BMStreamBaseC7ElementSTRts_XPycSgSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyST_pSo12BMStreamBaseC7ElementSTRts_XPycSgSo16os_unfair_lock_sVGMR);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  static UnifiedLibrary.Library.lockedBMLibraryStreamBasesFunc = result;
  return result;
}

uint64_t one-time initialization function for lockedBMLibraryStreamBaseFunc()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySo12BMStreamBaseCSo0C10IdentifieraKcSgSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySo12BMStreamBaseCSo0C10IdentifieraKcSgSo16os_unfair_lock_sVGMR);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  static UnifiedLibrary.Library.lockedBMLibraryStreamBaseFunc = result;
  return result;
}

uint64_t static UnifiedLibrary.Library.bmLibraryStreamBasesFunc.setter(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (one-time initialization token for lockedBMLibraryStreamBasesFunc != -1)
  {
    a1 = swift_once();
  }

  v4 = static UnifiedLibrary.Library.lockedBMLibraryStreamBasesFunc;
  MEMORY[0x1EEE9AC00](a1, a2);

  os_unfair_lock_lock(v4 + 8);
  partial apply for closure #1 in static UnifiedLibrary.Library.bmLibraryStreamBasesFunc.setter(v4 + 2);
  os_unfair_lock_unlock(v4 + 8);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed AnyValue) -> (@out AnyValue?))?(v3, a2);
}

uint64_t closure #1 in static UnifiedLibrary.Library.bmLibraryStreamBasesFunc.setter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (v6)
  {
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed AnyValue) -> (@out AnyValue?))?(v6, a1[1]);
  }

  if (a2)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  *a1 = a2;
  a1[1] = v7;
  return _sxRi_zRi0_zlyST_pSo12BMStreamBaseC7ElementSTRts_XPIsegr_SgWOy_0(a2, a3);
}

void *thunk for @escaping @callee_guaranteed (@in_guaranteed BMStreamIdentifier) -> (@out BMStreamBase, @error @owned Error)(uint64_t a1, void *(*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v5 = a1;
  result = a2(&v4, &v5);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t static UnifiedLibrary.Library.bmLibraryStreamBaseFunc.setter(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (one-time initialization token for lockedBMLibraryStreamBaseFunc != -1)
  {
    a1 = swift_once();
  }

  v4 = static UnifiedLibrary.Library.lockedBMLibraryStreamBaseFunc;
  MEMORY[0x1EEE9AC00](a1, a2);

  os_unfair_lock_lock(v4 + 8);
  partial apply for closure #1 in static UnifiedLibrary.Library.bmLibraryStreamBaseFunc.setter(v4 + 2);
  os_unfair_lock_unlock(v4 + 8);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed AnyValue) -> (@out AnyValue?))?(v3, a2);
}

_BYTE *storeEnumTagSinglePayload for UnifiedLibrary(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t closure #1 in static UnifiedLibrary.Library.bmLibraryStreamBaseFunc.setter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (v6)
  {
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed AnyValue) -> (@out AnyValue?))?(v6, a1[1]);
  }

  if (a2)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a3;
    v8 = thunk for @escaping @callee_guaranteed (@guaranteed BMStreamIdentifier) -> (@owned BMStreamBase, @error @owned Error)partial apply;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a1 = v8;
  a1[1] = v7;
  return _sxRi_zRi0_zlyST_pSo12BMStreamBaseC7ElementSTRts_XPIsegr_SgWOy_0(a2, a3);
}

uint64_t closure #1 in static UnifiedLibrary.Library.set(libraries:)(void *a1, uint64_t a2)
{

  *a1 = a2;
}

uint64_t static UnifiedLibrary.Library.sqlViewToBiomeStreamMapping.getter()
{
  if (one-time initialization token for lockedLibraries != -1)
  {
LABEL_8:
    OUTLINED_FUNCTION_42_0(&one-time initialization token for lockedLibraries);
  }

  v0 = static UnifiedLibrary.Library.lockedLibraries;

  os_unfair_lock_lock(v0 + 6);
  v1 = *&v0[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v0 + 6);

  v2 = 0;
  v3 = *(v1 + 16);
  v4 = v1 + 40;
  v5 = MEMORY[0x1E69E7CC8];
  while (v3 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_8;
    }

    ++v2;
    v6 = (*(*v4 + 24))();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v5;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v6, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v9);
    v5 = v9;
    v4 += 16;
  }

  return v5;
}

uint64_t static UnifiedLibrary.Library.orderedDataflows.getter()
{
  if (one-time initialization token for lockedLibraries != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v0 = static UnifiedLibrary.Library.lockedLibraries;

    os_unfair_lock_lock(v0 + 6);
    v1 = *&v0[4]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(v0 + 6);

    v2 = *(v1 + 16);
    if (!v2)
    {
      break;
    }

    v3 = v1 + 40;
    v4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v5 = (*(*v3 + 56))();
      v6 = *(v5 + 16);
      v7 = *(v4 + 16);
      if (__OFADD__(v7, v6))
      {
        break;
      }

      v8 = v5;
      if (!swift_isUniquelyReferenced_nonNull_native() || v7 + v6 > *(v4 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v4 = v9;
      }

      if (*(v8 + 16))
      {
        if ((*(v4 + 24) >> 1) - *(v4 + 16) < v6)
        {
          goto LABEL_20;
        }

        swift_arrayInitWithCopy();

        if (v6)
        {
          v10 = *(v4 + 16);
          v11 = __OFADD__(v10, v6);
          v12 = v10 + v6;
          if (v11)
          {
            goto LABEL_21;
          }

          *(v4 + 16) = v12;
        }
      }

      else
      {

        if (v6)
        {
          goto LABEL_19;
        }
      }

      v3 += 16;
      if (!--v2)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    OUTLINED_FUNCTION_42_0(&one-time initialization token for lockedLibraries);
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_17:

  return v4;
}

void *static UnifiedLibrary.Library.lookupDataflow(name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (one-time initialization token for lockedLibraries != -1)
  {
LABEL_11:
    swift_once();
  }

  v6 = static UnifiedLibrary.Library.lockedLibraries;

  os_unfair_lock_lock(v6 + 6);
  v7 = *&v6[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v6 + 6);

  v8 = 0;
  v9 = *(v7 + 16);
  for (i = v7 + 40; ; i += 16)
  {
    if (v9 == v8)
    {

      _s12BiomeStreams8DataflowVSgWOi0_(__dst);
      v11 = __dst;
      return memcpy(a3, v11, 0x80uLL);
    }

    if (v8 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_11;
    }

    (*(*i + 64))(v13, a1, a2);
    memcpy(__dst, v13, sizeof(__dst));
    if (_s12BiomeStreams8DataflowVSgWOg(__dst) != 1)
    {
      break;
    }

    ++v8;
  }

  v11 = v13;
  return memcpy(a3, v11, 0x80uLL);
}

uint64_t static UnifiedLibrary.Library.streamBase(for:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for lockedLibraries != -1)
  {
LABEL_17:
    swift_once();
  }

  v4 = static UnifiedLibrary.Library.lockedLibraries;

  os_unfair_lock_lock(v4 + 6);
  v5 = *&v4[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v4 + 6);

  v6 = v5 + 40;
  v7 = -*(v5 + 16);
  v8 = -1;
  while (v7 + v8 != -1)
  {
    if (++v8 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_17;
    }

    v9 = v6 + 16;
    v10 = (*(*v6 + 48))(a1, a2);
    v6 = v9;
    if (v10)
    {
      v11 = v10;

      return v11;
    }
  }

  if (one-time initialization token for lockedBMLibraryStreamBaseFunc != -1)
  {
    swift_once();
  }

  v12 = static UnifiedLibrary.Library.lockedBMLibraryStreamBaseFunc;

  os_unfair_lock_lock(v12 + 8);
  v14 = *(v12 + 2);
  v13 = *(v12 + 3);
  if (v14)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = v13;
    v16 = swift_allocObject();
    *(v16 + 16) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed BMStreamIdentifier) -> (@out BMStreamBase, @error @owned Error);
    *(v16 + 24) = v15;
    v13 = swift_allocObject();
    *(v13 + 16) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed BMStreamIdentifier) -> (@out BMStreamBase, @error @owned Error);
    *(v13 + 24) = v15;

    v17 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed BMStreamIdentifier) -> (@owned BMStreamBase, @error @owned Error);
    v18 = thunk for @escaping @callee_guaranteed (@guaranteed BMStreamIdentifier) -> (@owned BMStreamBase, @error @owned Error)partial apply;
  }

  else
  {
    v18 = 0;
    v17 = 0;
    v16 = *(v12 + 3);
  }

  *(v12 + 2) = v18;
  *(v12 + 3) = v13;
  os_unfair_lock_unlock(v12 + 8);

  if (!v14)
  {
    return 0;
  }

  v19 = MEMORY[0x1865F6160](a1, a2);
  v22 = v19;
  v17(&v21, &v22);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed AnyValue) -> (@out AnyValue?))?(v17, v16);

  return v21;
}

uint64_t static UnifiedLibrary.Library.streamBases.getter@<X0>(void *a1@<X8>)
{
  v25 = a1;
  v33 = MEMORY[0x1E69E7CD0];
  v32 = MEMORY[0x1E69E7CC0];
  if (one-time initialization token for lockedBMLibraryStreamBasesFunc != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v1 = static UnifiedLibrary.Library.lockedBMLibraryStreamBasesFunc;

    os_unfair_lock_lock(v1 + 8);
    v2 = *(v1 + 2);
    v3 = *(v1 + 3);
    _sxRi_zRi0_zlyST_pSo12BMStreamBaseC7ElementSTRts_XPIsegr_SgWOy_0(v2, v3);
    os_unfair_lock_unlock(v1 + 8);

    if (v2)
    {
      v2(v27, v4);
      v5 = __swift_project_boxed_opaque_existential_1(v27, v28);
      MEMORY[0x1EEE9AC00](v5, v5);
      (*(v7 + 16))(&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_0(v29);
      dispatch thunk of Sequence.makeIterator()();
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      v8 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        __swift_mutable_project_boxed_opaque_existential_1(v29, AssociatedTypeWitness);
        dispatch thunk of IteratorProtocol.next()();
        v9 = v27[0];
        if (!v27[0])
        {
          break;
        }

        v10 = specialized Set._Variant.insert(_:)(v27, [v27[0] identifier]);

        if (v10)
        {
          v11 = v9;
          MEMORY[0x1865F6350]();
          if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v8 = v32;
        }

        else
        {
        }
      }

      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed AnyValue) -> (@out AnyValue?))?(v2, v3);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v26 = v8;
    if (one-time initialization token for lockedLibraries != -1)
    {
      swift_once();
    }

    v12 = static UnifiedLibrary.Library.lockedLibraries;

    os_unfair_lock_lock(v12 + 6);
    v13 = *&v12[4]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(v12 + 6);

    v14 = *(v13 + 16);
    if (!v14)
    {
      break;
    }

    v15 = 0;
    while (v15 < *(v13 + 16))
    {
      (*(*(v13 + 32 + 16 * v15 + 8) + 40))(v27);
      v16 = __swift_project_boxed_opaque_existential_1(v27, v28);
      MEMORY[0x1EEE9AC00](v16, v16);
      (*(v18 + 16))(&v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_0(v29);
      dispatch thunk of Sequence.makeIterator()();
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      while (1)
      {
        __swift_mutable_project_boxed_opaque_existential_1(v29, AssociatedTypeWitness);
        dispatch thunk of IteratorProtocol.next()();
        v19 = v27[0];
        if (!v27[0])
        {
          break;
        }

        v20 = specialized Set._Variant.insert(_:)(v27, [v27[0] identifier]);

        if (v20)
        {
          v21 = v19;
          MEMORY[0x1865F6350]();
          if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v26 = v32;
        }

        else
        {
        }
      }

      ++v15;
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      if (v15 == v14)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
  }

LABEL_25:

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12BMStreamBaseCGMd, &_sSaySo12BMStreamBaseCGMR);
  v23 = v25;
  v25[3] = v22;
  result = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [BMStreamBase] and conformance [A], &_sSaySo12BMStreamBaseCGMd, &_sSaySo12BMStreamBaseCGMR, MEMORY[0x1E69E6328]);
  v23[4] = result;
  *v23 = v26;
  return result;
}

uint64_t static UnifiedLibrary.Library.view(legacyViewName:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for lockedLibraries != -1)
  {
LABEL_10:
    swift_once();
  }

  v4 = static UnifiedLibrary.Library.lockedLibraries;

  os_unfair_lock_lock(v4 + 6);
  v5 = *&v4[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v4 + 6);

  v6 = v5 + 40;
  v7 = -*(v5 + 16);
  v8 = -1;
  while (v7 + v8 != -1)
  {
    if (++v8 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_10;
    }

    v9 = v6 + 16;
    v10 = (*(*v6 + 80))(a1, a2);
    v6 = v9;
    if (v10)
    {
      v11 = v10;

      return v11;
    }
  }

  return 0;
}

uint64_t static UnifiedLibrary.Library.view(for:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for lockedLibraries != -1)
  {
LABEL_10:
    swift_once();
  }

  v4 = static UnifiedLibrary.Library.lockedLibraries;

  os_unfair_lock_lock(v4 + 6);
  v5 = *&v4[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v4 + 6);

  v6 = v5 + 40;
  v7 = -*(v5 + 16);
  v8 = -1;
  while (v7 + v8 != -1)
  {
    if (++v8 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_10;
    }

    v9 = v6 + 16;
    v10 = (*(*v6 + 32))(a1, a2);
    v6 = v9;
    if (v10)
    {
      v11 = v10;

      return v11;
    }
  }

  return 0;
}

uint64_t static UnifiedLibrary.Library.dataArtifacts.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for lockedLibraries != -1)
  {
    swift_once();
  }

  v2 = static UnifiedLibrary.Library.lockedLibraries;

  os_unfair_lock_lock(v2 + 6);
  v3 = *&v2[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v2 + 6);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12LazySequenceVys07FlattenB0Vys0a3MapB0VySay12BiomeStreams11LibraryBase_pXpGSayAG0G8ArtifactO04DataI0_pXpGGGGMd, &_ss12LazySequenceVys07FlattenB0Vys0a3MapB0VySay12BiomeStreams11LibraryBase_pXpGSayAG0G8ArtifactO04DataI0_pXpGGGGMR);
  result = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type LazySequence<FlattenSequence<LazyMapSequence<[LibraryBase.Type], [LibraryArtifact.DataArtifact.Type]>>> and conformance LazySequence<A>, &_ss12LazySequenceVys07FlattenB0Vys0a3MapB0VySay12BiomeStreams11LibraryBase_pXpGSayAG0G8ArtifactO04DataI0_pXpGGGGMd, &_ss12LazySequenceVys07FlattenB0Vys0a3MapB0VySay12BiomeStreams11LibraryBase_pXpGSayAG0G8ArtifactO04DataI0_pXpGGGGMR, MEMORY[0x1E69E6A58]);
  a1[4] = result;
  *a1 = v3;
  a1[1] = closure #1 in static UnifiedLibrary.Library.dataArtifacts.getter;
  a1[2] = 0;
  return result;
}

void *closure #1 in static UnifiedLibrary.Library.dataArtifacts.getter@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  (*(a1[1] + 104))(v33, *a1);
  v3 = v34;
  v4 = __swift_project_boxed_opaque_existential_1(v33, v34);
  v5 = dispatch thunk of Sequence.underestimatedCount.getter();
  v32 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  v6 = v32;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = &v26;
  v28 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v8);
  v11 = &v26 - v10;
  MEMORY[0x1EEE9AC00](v9, v12);
  (*(v14 + 16))(&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v4, v3);
  result = dispatch thunk of Sequence.makeIterator()();
  if (v5 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  if (v5)
  {
    v27 = a2;
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      result = dispatch thunk of IteratorProtocol.next()();
      v16 = v30;
      if (!v30)
      {
        goto LABEL_16;
      }

      v17 = v31;
      v32 = v6;
      v19 = *(v6 + 16);
      v18 = *(v6 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v6 = v32;
      }

      *(v6 + 16) = v19 + 1;
      v20 = v6 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      if (!--v5)
      {
        a2 = v27;
        goto LABEL_10;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_10:
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    v21 = v30;
    if (!v30)
    {
      break;
    }

    v22 = v31;
    v32 = v6;
    v24 = *(v6 + 16);
    v23 = *(v6 + 24);
    if (v24 >= v23 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
      v6 = v32;
    }

    *(v6 + 16) = v24 + 1;
    v25 = v6 + 16 * v24;
    *(v25 + 32) = v21;
    *(v25 + 40) = v22;
  }

  (*(v28 + 8))(v11, AssociatedTypeWitness);
  *a2 = v6;
  return __swift_destroy_boxed_opaque_existential_1Tm(v33);
}

uint64_t static UnifiedLibrary.Library.dataArtifact(for:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for lockedLibraries != -1)
  {
LABEL_10:
    swift_once();
  }

  v4 = static UnifiedLibrary.Library.lockedLibraries;

  os_unfair_lock_lock(v4 + 6);
  v5 = *&v4[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v4 + 6);

  v6 = v5 + 40;
  v7 = -*(v5 + 16);
  v8 = -1;
  while (v7 + v8 != -1)
  {
    if (++v8 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_10;
    }

    v9 = v6 + 16;
    v10 = (*(*v6 + 112))(a1, a2);
    v6 = v9;
    if (v10)
    {
      v11 = v10;

      return v11;
    }
  }

  return 0;
}

unint64_t UnifiedLibrary.Error.description.getter(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(38);

  MEMORY[0x1865F6280](a1, a2);
  return 0xD000000000000024;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v43 = a5;
  specialized LazyMapSequence.makeIterator()(a1, a2, a3, v42);
  v6 = v42[1];
  v7 = v42[3];
  v8 = v42[4];
  v35 = v42[5];
  v36 = v42[0];
  v9 = (v42[2] + 64) >> 6;

  v34 = v6;
  if (v8)
  {
    while (1)
    {
      v37 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v36 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v36 + 56) + 8 * v12);
      v41[0] = *v13;
      v41[1] = v14;
      v41[2] = v15;

      v35(&v38, v41);

      v16 = v38;
      v17 = v39;
      v18 = v40;
      v19 = *v43;
      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v38, v39);
      v22 = v19[2];
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        break;
      }

      v25 = v20;
      if (v19[3] >= v24)
      {
        if ((v37 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSaySSGGMd, &_ss17_NativeDictionaryVySSSaySSGGMR);
          _NativeDictionary.copy()();
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, v37 & 1);
        v26 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_24;
        }

        v21 = v26;
      }

      v8 &= v8 - 1;
      v28 = *v43;
      if (v25)
      {

        *(v28[7] + 8 * v21) = v18;
      }

      else
      {
        v28[(v21 >> 6) + 8] |= 1 << v21;
        v29 = (v28[6] + 16 * v21);
        *v29 = v16;
        v29[1] = v17;
        *(v28[7] + 8 * v21) = v18;
        v30 = v28[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_23;
        }

        v28[2] = v32;
      }

      a4 = 1;
      v7 = v10;
      v6 = v34;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        outlined consume of [String : [String]].Iterator._Variant(v36);
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v37 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v46 = type metadata accessor for SQLDataType();
  OUTLINED_FUNCTION_2_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_9();
  v45 = v9;
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMR);
  v43 = v4;
  v11 = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = v11;
  if (!*(v10 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v12;
    return;
  }

  v13 = 0;
  v14 = (v10 + 64);
  v15 = 1 << *(v10 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v10 + 64);
  v18 = (v15 + 63) >> 6;
  v40 = (v6 + 16);
  v41 = v10;
  v42 = v6;
  v44 = (v6 + 32);
  v19 = v11 + 64;
  if (!v17)
  {
LABEL_7:
    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v22 = v14[v13];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_12;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      v38 = OUTLINED_FUNCTION_48_0();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v38, v39, v14);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_12:
    v23 = v20 | (v13 << 6);
    v24 = *(v10 + 56);
    v25 = (*(v10 + 48) + 16 * v23);
    v27 = *v25;
    v26 = v25[1];
    v28 = *(v42 + 72);
    v29 = v24 + v28 * v23;
    if (v43)
    {
      (*v44)(v45, v29, v46);
    }

    else
    {
      (*v40)(v45, v29, v46);
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    v30 = Hasher._finalize()() & ~(-1 << *(v12 + 32));
    if (((-1 << v30) & ~*(v19 + 8 * (v30 >> 6))) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_22_3();
LABEL_25:
    *(v19 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    v36 = (*(v12 + 48) + 16 * v31);
    *v36 = v27;
    v36[1] = v26;
    (*v44)(*(v12 + 56) + v28 * v31, v45, v46);
    ++*(v12 + 16);
    v10 = v41;
    if (!v17)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_21_2();
  while (1)
  {
    OUTLINED_FUNCTION_89_1();
    if (v35)
    {
      if (v33)
      {
        break;
      }
    }

    if (v32 == v34)
    {
      v32 = 0;
    }

    if (*(v19 + 8 * v32) != -1)
    {
      OUTLINED_FUNCTION_20_4();
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
}
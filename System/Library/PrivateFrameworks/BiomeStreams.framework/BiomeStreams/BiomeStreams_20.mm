void *_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay14BiomeSQLParser15PgQuery_RawStmtVGSaySSGG_AH11LogicalPlanVsAE_pTg504_s14f11SQLParser15hi1_jk7VSSAA11lm3Vs5C33_pIgngrzo_AC_SStAEsAF_pIegnrzr_TRAJSSAOsAE_pIgngrzo_Tf1cn_n(uint64_t a1, unint64_t a2, void (*a3)(void *__return_ptr, char *, uint64_t, uint64_t), uint64_t a4)
{
  v64 = a3;
  v65 = a4;
  RawStmt = type metadata accessor for PgQuery_RawStmt(0);
  v66 = *(RawStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](RawStmt - 8, v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v60 = &v57 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser15PgQuery_RawStmtV_SStMd, &_s14BiomeSQLParser15PgQuery_RawStmtV_SStMR);
  v14 = MEMORY[0x1EEE9AC00](v63, v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v57 = &v57 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v59 = &v57 - v21;
  v67 = a1;
  v22 = *(a1 + 16);
  v23 = *(a2 + 16);
  if (v23 >= v22)
  {
    v24 = *(a1 + 16);
  }

  else
  {
    v24 = *(a2 + 16);
  }

  v71 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
  v26 = v24;
  v69 = v71;
  v61 = v23;
  v62 = v22;
  v58 = a2;
  if (v24)
  {
    v27 = 0;
    v28 = (a2 + 40);
    while (v22 != v27)
    {
      result = outlined init with copy of PgQuery_ScanResult(v67 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v27, v10, type metadata accessor for PgQuery_RawStmt);
      if (v23 == v27)
      {
        goto LABEL_30;
      }

      v29 = v10;
      v30 = v26;
      v31 = *(v28 - 1);
      v32 = *v28;
      v33 = &v16[*(v63 + 48)];
      v34 = v29;
      outlined init with take of PgQuery_ParseResult(v29, v16, type metadata accessor for PgQuery_RawStmt);
      *v33 = v31;
      *(v33 + 1) = v32;

      v35 = v68;
      v64(v70, v16, v31, v32);
      v68 = v35;
      if (v35)
      {

        return _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser15PgQuery_RawStmtV_SStMd, &_s14BiomeSQLParser15PgQuery_RawStmtV_SStMR);
      }

      _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser15PgQuery_RawStmtV_SStMd, &_s14BiomeSQLParser15PgQuery_RawStmtV_SStMR);
      v36 = v69;
      v71 = v69;
      v38 = *(v69 + 16);
      v37 = *(v69 + 24);
      if (v38 >= v37 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
        v36 = v71;
      }

      ++v27;
      *(v36 + 16) = v38 + 1;
      v69 = v36;
      result = memcpy((v36 + 368 * v38 + 32), v70, 0x170uLL);
      v28 += 2;
      v26 = v30;
      v39 = v30 == v27;
      v23 = v61;
      v22 = v62;
      v10 = v34;
      if (v39)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_13:
    if (v22 <= v23)
    {
      return v69;
    }

    v40 = (v58 + 16 * v26 + 40);
    v41 = &_s14BiomeSQLParser15PgQuery_RawStmtV_SStMd;
    v42 = v68;
    while (v26 < v22)
    {
      result = outlined init with copy of PgQuery_ScanResult(v67 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v26, v60, type metadata accessor for PgQuery_RawStmt);
      if (__OFADD__(v26, 1))
      {
        goto LABEL_32;
      }

      if (v23 == v26)
      {
        outlined destroy of PgQuery_ParseResult(v60, type metadata accessor for PgQuery_RawStmt);
        return v69;
      }

      if (v26 >= v23)
      {
        goto LABEL_33;
      }

      v58 = v26 + 1;
      v68 = v26;
      v44 = *(v40 - 1);
      v43 = *v40;
      v45 = v63;
      v46 = v41;
      v47 = v57;
      v48 = (v57 + *(v63 + 48));
      outlined init with take of PgQuery_ParseResult(v60, v57, type metadata accessor for PgQuery_RawStmt);
      *v48 = v44;
      v48[1] = v43;
      v49 = v47;
      v41 = v46;
      v50 = v59;
      _s10Foundation4UUIDVSgWObTm_0(v49, v59, v46, &_s14BiomeSQLParser15PgQuery_RawStmtV_SStMR);
      v51 = (v50 + *(v45 + 48));
      v52 = *v51;
      v53 = v51[1];

      v64(v70, v50, v52, v53);
      if (v42)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v59, &_s14BiomeSQLParser15PgQuery_RawStmtV_SStMd, &_s14BiomeSQLParser15PgQuery_RawStmtV_SStMR);
      }

      _s10Foundation4UUIDVSgWOhTm_0(v59, v46, &_s14BiomeSQLParser15PgQuery_RawStmtV_SStMR);
      v54 = v69;
      v71 = v69;
      v56 = *(v69 + 16);
      v55 = *(v69 + 24);
      if (v56 >= v55 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1);
        v54 = v71;
      }

      v26 = v68 + 1;
      v40 += 2;
      *(v54 + 16) = v56 + 1;
      v69 = v54;
      result = memcpy((v54 + 368 * v56 + 32), v70, 0x170uLL);
      v22 = v62;
      v42 = 0;
      v23 = v61;
      if (v58 == v62)
      {
        return v69;
      }
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

void parse(sql:catalog:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v129 = type metadata accessor for CharacterSet();
  v127 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129, v6);
  v128 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ScanResult = type metadata accessor for PgQuery_ScanResult(0);
  MEMORY[0x1EEE9AC00](ScanResult, v8);
  v126 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BinaryDecodingOptions();
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v124 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v131 = &v110 - v15;
  ParseResult = type metadata accessor for PgQuery_ParseResult(0);
  MEMORY[0x1EEE9AC00](ParseResult, v16);
  v18 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SQLParseResult(0);
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v23 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v27 = &v110 - v26;
  v123 = *a3;
  v28 = &v23[*(v25 + 28)];
  *v28 = a1;
  *(v28 + 1) = a2;
  v133 = a1;
  v29 = String.utf8CString.getter();
  v137 = a2;

  pg_query_parse_protobuf(v29 + 32, &v134);
  v30 = v134;
  v31 = *(&v134 + 1);
  v32 = v135;

  if (*(&v32 + 1))
  {
    if (**(&v32 + 1))
    {
      v33 = String.init(cString:)();
      v35 = v34;
      lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
      swift_allocError();
      v36 = v137;
      *v37 = v133;
      *(v37 + 8) = v36;
      *(v37 + 16) = v33;
      *(v37 + 24) = v35;
      *(v37 + 32) = 0;
      swift_willThrow();
      return;
    }

    goto LABEL_44;
  }

  v121 = v23;
  v122 = v30;
  v118 = v32;
  v119 = v27;
  v120 = v19;
  if (!v31)
  {
    goto LABEL_45;
  }

  v38 = v18;
  v39 = v122;
  v40 = specialized Data.init(bytes:count:)(v31, v122);
  v42 = v41;
  v136 = 0;
  v134 = 0u;
  v135 = 0u;
  outlined copy of Data._Representation(v40, v41);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type PgQuery_ParseResult and conformance PgQuery_ParseResult(&lazy protocol witness table cache variable for type PgQuery_ParseResult and conformance PgQuery_ParseResult, type metadata accessor for PgQuery_ParseResult, &protocol conformance descriptor for PgQuery_ParseResult);
  v43 = v130;
  Message.init(serializedData:extensions:partial:options:)();
  v44 = v137;
  if (v43)
  {
    outlined consume of Data._Representation(v40, v42);
LABEL_31:

    return;
  }

  v45 = v121;
  outlined init with take of PgQuery_ParseResult(v38, v121, type metadata accessor for PgQuery_ParseResult);
  deparse_protobuf = pg_query_deparse_protobuf(v39, v31);
  if (v47)
  {
    if (!*v47)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v48 = String.init(cString:)();
    v50 = v49;
    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v51 = v133;
    *(v51 + 8) = v44;
    *(v51 + 16) = v48;
    *(v51 + 24) = v50;
    *(v51 + 32) = 0;
    swift_willThrow();
    goto LABEL_30;
  }

  v116 = 0;
  if (!deparse_protobuf)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v52 = deparse_protobuf;
  v117 = v42;
  v115 = v31;
  v53 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v114 = v52;
  v54 = [v53 initWithCString:v52 encoding:4];
  if (!v54)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v55 = v54;
  v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v57;

  ParseResult = v58;
  v59 = String.utf8CString.getter();
  pg_query_split_with_parser((v59 + 32), &v134);
  v60 = v134;
  v61 = DWORD2(v134);
  v62 = v135;

  if (*(&v62 + 1))
  {
    v42 = v117;
    if (!**(&v62 + 1))
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v63 = String.init(cString:)();
    v65 = v64;
    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    v66 = v137;
    *v67 = v133;
    *(v67 + 8) = v66;
    *(v67 + 16) = v63;
    *(v67 + 24) = v65;
    *(v67 + 32) = 0;
    swift_willThrow();
    v45 = v121;
    goto LABEL_30;
  }

  v130 = v56;
  v131 = v60;
  v45 = v121;
  if (*(*(v121 + 1) + 16) != v61)
  {

    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    v90 = v137;
    *v91 = v133;
    *(v91 + 8) = v90;
    *(v91 + 16) = 0xD000000000000042;
    *(v91 + 24) = 0x8000000184DEA390;
    *(v91 + 32) = 0;
    swift_willThrow();
    v42 = v117;
LABEL_30:

    outlined consume of Data._Representation(v40, v42);
    outlined destroy of PgQuery_ParseResult(v45, type metadata accessor for PgQuery_ParseResult);
    goto LABEL_31;
  }

  v112 = 0;
  if ((v61 & 0x80000000) != 0)
  {
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
    goto LABEL_48;
  }

  v113 = v40;
  v68 = v131;
  v110 = v62;
  v111 = v61;
  if (v61)
  {
    ++v127;
    v69 = MEMORY[0x1E69E7CC0];
    v70 = v61;
    v71 = v131;
    while (v68)
    {
      v72 = *v71;
      if (!*v71)
      {
        goto LABEL_46;
      }

      v73 = v72[1];
      v74 = *v72;
      v75 = String.index(_:offsetBy:)();
      if (__OFADD__(v74, v73))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      if (String.index(_:offsetBy:)() >> 14 < v75 >> 14)
      {
        goto LABEL_42;
      }

      v76 = String.subscript.getter();
      v77 = MEMORY[0x1865F6210](v76);
      v79 = v78;

      *&v134 = v77;
      *(&v134 + 1) = v79;
      v80 = v128;
      static CharacterSet.whitespacesAndNewlines.getter();
      lazy protocol witness table accessor for type String and conformance String();
      v81 = StringProtocol.trimmingCharacters(in:)();
      v82 = v80;
      v83 = v81;
      v85 = v84;
      (*v127)(v82, v129);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v69 = v88;
      }

      v86 = *(v69 + 16);
      if (v86 >= *(v69 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v69 = v89;
      }

      *(v69 + 16) = v86 + 1;
      v87 = v69 + 16 * v86;
      *(v87 + 32) = v83;
      *(v87 + 40) = v85;
      ++v71;
      --v70;
      v68 = v131;
      if (!v70)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_47;
  }

  v69 = MEMORY[0x1E69E7CC0];
LABEL_33:
  v92 = v121;
  *&v121[*(v120 + 24)] = v69;
  v93 = v133;
  v94 = String.utf8CString.getter();

  pg_query_scan(v94 + 32, v95);
  v96 = v134;
  v97 = *(&v134 + 1);
  v98 = v135;

  if (*(&v98 + 1))
  {
    if (!**(&v98 + 1))
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v99 = String.init(cString:)();
    v101 = v100;
    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    v102 = v137;
    *v103 = v93;
    *(v103 + 8) = v102;
    *(v103 + 16) = v99;
    *(v103 + 24) = v101;
    *(v103 + 32) = 0;
    swift_willThrow();

    outlined consume of Data._Representation(v113, v117);
    goto LABEL_39;
  }

  if (v97)
  {

    v104 = specialized Data.init(bytes:count:)(v97, v96);
    v106 = v105;
    v136 = 0;
    v134 = 0u;
    v135 = 0u;
    outlined copy of Data._Representation(v104, v105);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type PgQuery_ParseResult and conformance PgQuery_ParseResult(&lazy protocol witness table cache variable for type PgQuery_ScanResult and conformance PgQuery_ScanResult, type metadata accessor for PgQuery_ScanResult, &protocol conformance descriptor for PgQuery_ScanResult);
    v107 = v126;
    v108 = v112;
    Message.init(serializedData:extensions:partial:options:)();
    if (!v108)
    {
      outlined init with take of PgQuery_ParseResult(v107, v92 + *(v120 + 20), type metadata accessor for PgQuery_ScanResult);
      LODWORD(v134) = v96;
      *(&v134 + 1) = v97;
      v135 = v98;
      pg_query_free_scan_result(&v134);
      *&v134 = v131;
      DWORD2(v134) = v111;
      v135 = v110;
      pg_query_free_split_result(&v134);
      pg_query_free_deparse_result(v114, v116);
      LODWORD(v134) = v122;
      *(&v134 + 1) = v115;
      v135 = v118;
      pg_query_free_protobuf_parse_result(&v134);
      outlined consume of Data._Representation(v113, v117);
      outlined consume of Data._Representation(*(&v98 + 1), v106);
      v109 = v119;
      outlined init with take of PgQuery_ParseResult(v92, v119, type metadata accessor for SQLParseResult);
      *&v134 = v123;
      SQLParseResult.plans(with:)(&v134);
      outlined destroy of PgQuery_ParseResult(v109, type metadata accessor for SQLParseResult);
      return;
    }

    outlined consume of Data._Representation(v113, v117);
    outlined consume of Data._Representation(v104, v106);
LABEL_39:
    outlined destroy of PgQuery_ParseResult(v92, type metadata accessor for PgQuery_ParseResult);

    goto LABEL_31;
  }

LABEL_53:
  __break(1u);
}

void *specialized ContiguousArray.reserveCapacity(_:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(result, v5, 0);
  }

  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys;
  if (!lazy protocol witness table cache variable for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys;
  if (!lazy protocol witness table cache variable for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys;
  if (!lazy protocol witness table cache variable for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys;
  if (!lazy protocol witness table cache variable for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Schema and conformance Schema()
{
  result = lazy protocol witness table cache variable for type Schema and conformance Schema;
  if (!lazy protocol witness table cache variable for type Schema and conformance Schema)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Schema and conformance Schema);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Schema and conformance Schema;
  if (!lazy protocol witness table cache variable for type Schema and conformance Schema)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Schema and conformance Schema);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Schema.CodingKeys and conformance Schema.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Schema.CodingKeys and conformance Schema.CodingKeys;
  if (!lazy protocol witness table cache variable for type Schema.CodingKeys and conformance Schema.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Schema.CodingKeys and conformance Schema.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Schema.CodingKeys and conformance Schema.CodingKeys;
  if (!lazy protocol witness table cache variable for type Schema.CodingKeys and conformance Schema.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Schema.CodingKeys and conformance Schema.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Schema.CodingKeys and conformance Schema.CodingKeys;
  if (!lazy protocol witness table cache variable for type Schema.CodingKeys and conformance Schema.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Schema.CodingKeys and conformance Schema.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Schema.CodingKeys and conformance Schema.CodingKeys;
  if (!lazy protocol witness table cache variable for type Schema.CodingKeys and conformance Schema.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Schema.CodingKeys and conformance Schema.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FromClause.CodingKeys and conformance FromClause.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FromClause.CodingKeys and conformance FromClause.CodingKeys;
  if (!lazy protocol witness table cache variable for type FromClause.CodingKeys and conformance FromClause.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FromClause.CodingKeys and conformance FromClause.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FromClause.CodingKeys and conformance FromClause.CodingKeys;
  if (!lazy protocol witness table cache variable for type FromClause.CodingKeys and conformance FromClause.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FromClause.CodingKeys and conformance FromClause.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FromClause.CodingKeys and conformance FromClause.CodingKeys;
  if (!lazy protocol witness table cache variable for type FromClause.CodingKeys and conformance FromClause.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FromClause.CodingKeys and conformance FromClause.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FromClause.CodingKeys and conformance FromClause.CodingKeys;
  if (!lazy protocol witness table cache variable for type FromClause.CodingKeys and conformance FromClause.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FromClause.CodingKeys and conformance FromClause.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResultColumn.CodingKeys and conformance ResultColumn.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ResultColumn.CodingKeys and conformance ResultColumn.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResultColumn.CodingKeys and conformance ResultColumn.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResultColumn.CodingKeys and conformance ResultColumn.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResultColumn.CodingKeys and conformance ResultColumn.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResultColumn.CodingKeys and conformance ResultColumn.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResultColumn.CodingKeys and conformance ResultColumn.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResultColumn.CodingKeys and conformance ResultColumn.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResultColumn.CodingKeys and conformance ResultColumn.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResultColumn.CodingKeys and conformance ResultColumn.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResultColumn.CodingKeys and conformance ResultColumn.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResultColumn.CodingKeys and conformance ResultColumn.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResultColumn.CodingKeys and conformance ResultColumn.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SelectCore.CodingKeys and conformance SelectCore.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SelectCore.CodingKeys and conformance SelectCore.CodingKeys;
  if (!lazy protocol witness table cache variable for type SelectCore.CodingKeys and conformance SelectCore.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelectCore.CodingKeys and conformance SelectCore.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SelectCore.CodingKeys and conformance SelectCore.CodingKeys;
  if (!lazy protocol witness table cache variable for type SelectCore.CodingKeys and conformance SelectCore.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelectCore.CodingKeys and conformance SelectCore.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SelectCore.CodingKeys and conformance SelectCore.CodingKeys;
  if (!lazy protocol witness table cache variable for type SelectCore.CodingKeys and conformance SelectCore.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelectCore.CodingKeys and conformance SelectCore.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SelectCore.CodingKeys and conformance SelectCore.CodingKeys;
  if (!lazy protocol witness table cache variable for type SelectCore.CodingKeys and conformance SelectCore.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelectCore.CodingKeys and conformance SelectCore.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FromClause and conformance FromClause()
{
  result = lazy protocol witness table cache variable for type FromClause and conformance FromClause;
  if (!lazy protocol witness table cache variable for type FromClause and conformance FromClause)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FromClause and conformance FromClause);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Schema] and conformance <A> [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResultColumn and conformance ResultColumn()
{
  result = lazy protocol witness table cache variable for type ResultColumn and conformance ResultColumn;
  if (!lazy protocol witness table cache variable for type ResultColumn and conformance ResultColumn)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResultColumn and conformance ResultColumn);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MaterializedView.CodingKeys and conformance MaterializedView.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MaterializedView.CodingKeys and conformance MaterializedView.CodingKeys;
  if (!lazy protocol witness table cache variable for type MaterializedView.CodingKeys and conformance MaterializedView.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterializedView.CodingKeys and conformance MaterializedView.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MaterializedView.CodingKeys and conformance MaterializedView.CodingKeys;
  if (!lazy protocol witness table cache variable for type MaterializedView.CodingKeys and conformance MaterializedView.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterializedView.CodingKeys and conformance MaterializedView.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MaterializedView.CodingKeys and conformance MaterializedView.CodingKeys;
  if (!lazy protocol witness table cache variable for type MaterializedView.CodingKeys and conformance MaterializedView.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterializedView.CodingKeys and conformance MaterializedView.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MaterializedView.CodingKeys and conformance MaterializedView.CodingKeys;
  if (!lazy protocol witness table cache variable for type MaterializedView.CodingKeys and conformance MaterializedView.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterializedView.CodingKeys and conformance MaterializedView.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SelectCore and conformance SelectCore()
{
  result = lazy protocol witness table cache variable for type SelectCore and conformance SelectCore;
  if (!lazy protocol witness table cache variable for type SelectCore and conformance SelectCore)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelectCore and conformance SelectCore);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LogicalPlan.CodingKeys and conformance LogicalPlan.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LogicalPlan.CodingKeys and conformance LogicalPlan.CodingKeys;
  if (!lazy protocol witness table cache variable for type LogicalPlan.CodingKeys and conformance LogicalPlan.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogicalPlan.CodingKeys and conformance LogicalPlan.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LogicalPlan.CodingKeys and conformance LogicalPlan.CodingKeys;
  if (!lazy protocol witness table cache variable for type LogicalPlan.CodingKeys and conformance LogicalPlan.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogicalPlan.CodingKeys and conformance LogicalPlan.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LogicalPlan.CodingKeys and conformance LogicalPlan.CodingKeys;
  if (!lazy protocol witness table cache variable for type LogicalPlan.CodingKeys and conformance LogicalPlan.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogicalPlan.CodingKeys and conformance LogicalPlan.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LogicalPlan.CodingKeys and conformance LogicalPlan.CodingKeys;
  if (!lazy protocol witness table cache variable for type LogicalPlan.CodingKeys and conformance LogicalPlan.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogicalPlan.CodingKeys and conformance LogicalPlan.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MaterializedView and conformance MaterializedView()
{
  result = lazy protocol witness table cache variable for type MaterializedView and conformance MaterializedView;
  if (!lazy protocol witness table cache variable for type MaterializedView and conformance MaterializedView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterializedView and conformance MaterializedView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LogicalPlanType.CodingKeys and conformance LogicalPlanType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LogicalPlanType.CodingKeys and conformance LogicalPlanType.CodingKeys;
  if (!lazy protocol witness table cache variable for type LogicalPlanType.CodingKeys and conformance LogicalPlanType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogicalPlanType.CodingKeys and conformance LogicalPlanType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LogicalPlanType.CodingKeys and conformance LogicalPlanType.CodingKeys;
  if (!lazy protocol witness table cache variable for type LogicalPlanType.CodingKeys and conformance LogicalPlanType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogicalPlanType.CodingKeys and conformance LogicalPlanType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LogicalPlanType.CodingKeys and conformance LogicalPlanType.CodingKeys;
  if (!lazy protocol witness table cache variable for type LogicalPlanType.CodingKeys and conformance LogicalPlanType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogicalPlanType.CodingKeys and conformance LogicalPlanType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LogicalPlanType.CodingKeys and conformance LogicalPlanType.CodingKeys;
  if (!lazy protocol witness table cache variable for type LogicalPlanType.CodingKeys and conformance LogicalPlanType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogicalPlanType.CodingKeys and conformance LogicalPlanType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LogicalPlanType.MaterializedViewCodingKeys and conformance LogicalPlanType.MaterializedViewCodingKeys()
{
  result = lazy protocol witness table cache variable for type LogicalPlanType.MaterializedViewCodingKeys and conformance LogicalPlanType.MaterializedViewCodingKeys;
  if (!lazy protocol witness table cache variable for type LogicalPlanType.MaterializedViewCodingKeys and conformance LogicalPlanType.MaterializedViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogicalPlanType.MaterializedViewCodingKeys and conformance LogicalPlanType.MaterializedViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LogicalPlanType.MaterializedViewCodingKeys and conformance LogicalPlanType.MaterializedViewCodingKeys;
  if (!lazy protocol witness table cache variable for type LogicalPlanType.MaterializedViewCodingKeys and conformance LogicalPlanType.MaterializedViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogicalPlanType.MaterializedViewCodingKeys and conformance LogicalPlanType.MaterializedViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LogicalPlanType.MaterializedViewCodingKeys and conformance LogicalPlanType.MaterializedViewCodingKeys;
  if (!lazy protocol witness table cache variable for type LogicalPlanType.MaterializedViewCodingKeys and conformance LogicalPlanType.MaterializedViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogicalPlanType.MaterializedViewCodingKeys and conformance LogicalPlanType.MaterializedViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LogicalPlanType.MaterializedViewCodingKeys and conformance LogicalPlanType.MaterializedViewCodingKeys;
  if (!lazy protocol witness table cache variable for type LogicalPlanType.MaterializedViewCodingKeys and conformance LogicalPlanType.MaterializedViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogicalPlanType.MaterializedViewCodingKeys and conformance LogicalPlanType.MaterializedViewCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LogicalPlanType.SelectCoreCodingKeys and conformance LogicalPlanType.SelectCoreCodingKeys()
{
  result = lazy protocol witness table cache variable for type LogicalPlanType.SelectCoreCodingKeys and conformance LogicalPlanType.SelectCoreCodingKeys;
  if (!lazy protocol witness table cache variable for type LogicalPlanType.SelectCoreCodingKeys and conformance LogicalPlanType.SelectCoreCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogicalPlanType.SelectCoreCodingKeys and conformance LogicalPlanType.SelectCoreCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LogicalPlanType.SelectCoreCodingKeys and conformance LogicalPlanType.SelectCoreCodingKeys;
  if (!lazy protocol witness table cache variable for type LogicalPlanType.SelectCoreCodingKeys and conformance LogicalPlanType.SelectCoreCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogicalPlanType.SelectCoreCodingKeys and conformance LogicalPlanType.SelectCoreCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LogicalPlanType.SelectCoreCodingKeys and conformance LogicalPlanType.SelectCoreCodingKeys;
  if (!lazy protocol witness table cache variable for type LogicalPlanType.SelectCoreCodingKeys and conformance LogicalPlanType.SelectCoreCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogicalPlanType.SelectCoreCodingKeys and conformance LogicalPlanType.SelectCoreCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LogicalPlanType.SelectCoreCodingKeys and conformance LogicalPlanType.SelectCoreCodingKeys;
  if (!lazy protocol witness table cache variable for type LogicalPlanType.SelectCoreCodingKeys and conformance LogicalPlanType.SelectCoreCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogicalPlanType.SelectCoreCodingKeys and conformance LogicalPlanType.SelectCoreCodingKeys);
  }

  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14BiomeSQLParser11SQLDataTypeOGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser11SQLDataTypeOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14BiomeSQLParser12ResultColumnVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser12ResultColumnVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14BiomeSQLParser11LogicalPlanVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser11LogicalPlanVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 368);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[368 * v8])
    {
      memmove(v12, v13, 368 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pMd, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_14BiomeSQLParser6SchemaVtGMd, &_ss23_ContiguousArrayStorageCySS_14BiomeSQLParser6SchemaVtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_14BiomeSQLParser6SchemaVtMd, &_sSS_14BiomeSQLParser6SchemaVtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay14BiomeSQLParser19AggregationFunctionVGGMd, &_ss23_ContiguousArrayStorageCySay14BiomeSQLParser19AggregationFunctionVGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14BiomeSQLParser19AggregationFunctionVGMd, &_sSay14BiomeSQLParser19AggregationFunctionVGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = *v4;
  v10 = v9 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_21;
  }

  result = v10 + 16 * a3;
  v15 = (v9 + 32 + 16 * a2);
  if (result != v15 || result >= v15 + 16 * v14)
  {
    result = memmove(result, v15, 16 * v14);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_22;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

uint64_t specialized ResultColumn.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6973736572707865 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7361696C61 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xED00006E6F697461)
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

uint64_t specialized SelectCore.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1836020326 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572656877 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x794270756F7267 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E69766168 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7463656C6573 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t specialized LogicalPlan.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7106931 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xED00006E6F697461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000184DDC910 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F437463656C6573 && a2 == 0xEA00000000006572)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

unint64_t specialized Data.init(bytes:count:)(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return specialized Data.InlineData.init(_:)(a1, &a1[a2]);
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t lazy protocol witness table accessor for type PgQuery_ParseResult and conformance PgQuery_ParseResult(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with take of PgQuery_ParseResult(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of PgQuery_ParseResult(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type SQLRawDataType and conformance SQLRawDataType()
{
  result = lazy protocol witness table cache variable for type SQLRawDataType and conformance SQLRawDataType;
  if (!lazy protocol witness table cache variable for type SQLRawDataType and conformance SQLRawDataType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SQLRawDataType and conformance SQLRawDataType);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14BiomeSQLParser0B5ErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 0xFu) <= 8)
  {
    return *(a1 + 32) & 0xF;
  }

  else
  {
    return (*a1 + 9);
  }
}

uint64_t getEnumTagSinglePayload for SQLParserError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 33))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 32);
  if (v3 <= 9)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SQLParserError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 247;
    *(result + 8) = 0;
    if (a3 >= 0xF7)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for SQLParserError(uint64_t result, unsigned int a2)
{
  if (a2 >= 9)
  {
    *result = a2 - 9;
    *(result + 8) = 0;
    LOBYTE(a2) = 9;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for DatabaseCatalog(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FromClause(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for FromClause(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ResultColumn(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ResultColumn(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SelectCore(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 312))
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

uint64_t storeEnumTagSinglePayload for SelectCore(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 312) = 1;
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

    *(result + 312) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for MaterializedView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 312) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 328) = 1;
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

    *(result + 328) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LogicalPlan(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 368))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 344);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LogicalPlan(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 360) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 368) = 1;
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
      *(result + 344) = (a2 - 1);
      return result;
    }

    *(result + 368) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LogicalPlanType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 329))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 328);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LogicalPlanType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 288) = 0u;
    *(result + 304) = 0u;
    *(result + 256) = 0u;
    *(result + 272) = 0u;
    *(result + 224) = 0u;
    *(result + 240) = 0u;
    *(result + 192) = 0u;
    *(result + 208) = 0u;
    *(result + 160) = 0u;
    *(result + 176) = 0u;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *(result + 313) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 329) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 329) = 0;
    }

    if (a2)
    {
      *(result + 328) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for LogicalPlanType(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 320) = 0;
    *(result + 288) = 0u;
    *(result + 304) = 0u;
    *(result + 256) = 0u;
    *(result + 272) = 0u;
    *(result + 224) = 0u;
    *(result + 240) = 0u;
    *(result + 192) = 0u;
    *(result + 208) = 0u;
    *(result + 160) = 0u;
    *(result + 176) = 0u;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
  }

  *(result + 328) = a2;
  return result;
}

void type metadata completion function for SQLParseResult(uint64_t a1)
{
  type metadata accessor for PgQuery_ParseResult(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_ScanResult(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [String]();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [String]()
{
  if (!lazy cache variable for type metadata for [String])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String]);
    }
  }
}

uint64_t getEnumTagSinglePayload for LogicalPlan.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LogicalPlan.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ResultColumn.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ResultColumn.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t outlined init with copy of PgQuery_ScanResult(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL partial apply for closure #1 in ResultColumn.init(node:schemas:tokenInformation:)(int *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return v3 == *(*(v2 + *(type metadata accessor for PgQuery_ResTarget(0) + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ResTargetP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
}

uint64_t type metadata completion function for SQLTokenInformation(uint64_t a1)
{
  result = type metadata accessor for PgQuery_ScanResult(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for PlanResources(uint64_t a1)
{
  result = type metadata accessor for SQLTokenInformation(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_DWORD *pg_query_init()
{
  result = pg_query_initialized();
  if (!*result)
  {
    *result = 1;
    MemoryContextInit();
    SetDatabaseEncoding(6u);
    pthread_key_create(&pg_query_thread_exit_key, pg_query_thread_exit);
    v1 = *TopMemoryContext();

    return pthread_setspecific(v2, v1);
  }

  return result;
}

void *pg_query_thread_exit(void *a1)
{
  MemoryContextDeleteChildren(a1);
  AllocSetDeleteFreeList(a1);
  (*(a1[2] + 32))(a1);
  free(a1);
  *TopMemoryContext() = 0;
  *CurrentMemoryContext(v2) = 0;
  result = ErrorContext();
  *result = 0;
  return result;
}

void *pg_query_free_top_memory_context(void *a1)
{
  MemoryContextDeleteChildren(a1);
  AllocSetDeleteFreeList(a1);
  (*(a1[2] + 32))(a1);
  free(a1);
  *TopMemoryContext() = 0;
  *CurrentMemoryContext(v2) = 0;
  result = ErrorContext();
  *result = 0;
  return result;
}

void *pg_query_exit()
{
  v0 = TopMemoryContext();
  v1 = *v0;
  MemoryContextDeleteChildren(*v0);
  AllocSetDeleteFreeList(v1);
  (*(v1[2] + 32))(v1);
  free(v1);
  *v0 = 0;
  *CurrentMemoryContext(v2) = 0;
  result = ErrorContext();
  *result = 0;
  return result;
}

uint64_t pg_query_enter_memory_context()
{
  initialized = pg_query_initialized();
  if (*initialized)
  {
    v1 = TopMemoryContext();
  }

  else
  {
    *initialized = 1;
    MemoryContextInit();
    SetDatabaseEncoding(6u);
    pthread_key_create(&pg_query_thread_exit_key, pg_query_thread_exit);
    v1 = TopMemoryContext();
    pthread_setspecific(v2, *v1);
  }

  AllocSetContextCreateInternal(*v1, "pg_query", 0, 0x2000uLL, 0x800000);
  v4 = CurrentMemoryContext(v3);
  *v4 = v5;
  return v5;
}

uint64_t pg_query_exit_memory_context()
{
  v0 = TopMemoryContext();
  v1 = CurrentMemoryContext(v0);
  *v1 = v3;

  return MemoryContextDelete(v2);
}

void pg_query_free_error(uint64_t a1)
{
  free(*a1);
  free(*(a1 + 8));
  free(*(a1 + 16));
  v2 = *(a1 + 32);
  if (v2)
  {
    free(v2);
  }

  free(a1);
}

char *pg_query_deparse_protobuf(uint64_t a1, unsigned __int8 *a2)
{
  v3 = a1;
  v1249 = *MEMORY[0x1E69E9840];
  __s1 = 0;
  v1246 = 0;
  v1247 = 0;
  enter_memory_context = pg_query_enter_memory_context();
  v5 = PG_exception_stack();
  v6 = *v5;
  v7 = v5;
  v8 = error_context_stack();
  v9 = *v8;
  v10 = v8;
  memset(v1248, 0, 196);
  if (!sigsetjmp(v1248, 0))
  {
    *v7 = v1248;
    protobuf_to_nodes = pg_query_protobuf_to_nodes(v3, a2);
    initStringInfo(&__s1, v16);
    if (!protobuf_to_nodes || *(protobuf_to_nodes + 4) < 1)
    {
LABEL_2464:
      v14 = strdup(__s1);
      goto LABEL_2465;
    }

    v17 = 0;
    v1243 = v7;
    v1244 = v6;
    v1241 = v10;
    v1242 = v9;
    v1240 = protobuf_to_nodes;
LABEL_7:
    v18 = *(protobuf_to_nodes + 16) + 8 * v17;
    v19 = *(*v18 + 8);
    if (!v19)
    {
      pg_query_deparse_protobuf_cold_2();
    }

    v20 = *(*v18 + 8);
    v1239 = v17;
    v1238 = v18;
    switch(*v19)
    {
      case 0xE9:
        goto LABEL_9;
      case 0xEA:
        goto LABEL_1294;
      case 0xEB:
        goto LABEL_1288;
      case 0xEC:
        goto LABEL_1287;
      case 0xED:
        appendStringInfoString(&__s1, "ALTER ");
        v330 = *(v19 + 24);
        if (v330 <= 34)
        {
          if (v330 == 18)
          {
            v332 = 0;
            v331 = "FOREIGN TABLE ";
          }

          else if (v330 == 20)
          {
            v332 = 0;
            v331 = "INDEX ";
          }

          else
          {
            v557 = 0;
            v333 = 0;
            if (v330 != 23)
            {
              goto LABEL_1631;
            }

            v332 = 0;
            v331 = "MATERIALIZED VIEW ";
          }
        }

        else if (v330 > 46)
        {
          if (v330 == 47)
          {
            v333 = 9;
            v332 = 1;
            v331 = "TYPE ";
LABEL_1630:
            v806 = v332;
            appendStringInfoString(&__s1, v331);
            v557 = v806;
LABEL_1631:
            v1237 = v557;
            if (*(v20 + 28) != 1)
            {
              goto LABEL_1633;
            }

            goto LABEL_1632;
          }

          v557 = 0;
          v333 = 0;
          if (v330 != 49)
          {
            goto LABEL_1631;
          }

          v332 = 0;
          v331 = "VIEW ";
        }

        else
        {
          if (v330 != 35)
          {
            if (v330 != 39)
            {
              v333 = 0;
              v1237 = 0;
              if (*(v19 + 28) != 1)
              {
LABEL_1633:
                deparseRangeVar(&__s1, *(v20 + 8), v333);
                appendStringInfoChar(&__s1, 32);
                v807 = *(v20 + 16);
                if (v807)
                {
                  v808 = *(v20 + 16);
                  if (*(v807 + 4) >= 1)
                  {
                    v809 = 0;
                    v1236 = *(v20 + 16);
                    while (1)
                    {
                      v810 = 0;
                      v811 = v809;
                      v812 = *(v808 + 16) + 8 * v809;
                      v813 = *v812;
                      v814 = *v812;
                      v815 = 1;
                      v1235 = v811;
                      v816 = "DROP EXPRESSION";
                      switch(*(*v812 + 4))
                      {
                        case 0:
                          if (v1237)
                          {
                            v817 = "ADD ATTRIBUTE ";
                          }

                          else
                          {
                            v817 = "ADD COLUMN ";
                          }

                          goto LABEL_1705;
                        case 3:
                          appendStringInfoString(&__s1, "ALTER COLUMN ");
                          v815 = 0;
                          if (*(v814 + 32))
                          {
                            v810 = "SET DEFAULT";
                          }

                          else
                          {
                            v810 = "DROP DEFAULT";
                          }

                          goto LABEL_1706;
                        case 5:
                          appendStringInfoString(&__s1, "ALTER COLUMN ");
                          v815 = 0;
                          v810 = "DROP NOT NULL";
                          goto LABEL_1706;
                        case 6:
                          appendStringInfoString(&__s1, "ALTER COLUMN ");
                          v815 = 0;
                          v810 = "SET NOT NULL";
                          goto LABEL_1706;
                        case 7:
                          goto LABEL_1695;
                        case 9:
                          appendStringInfoString(&__s1, "ALTER COLUMN ");
                          v815 = 0;
                          v810 = "SET STATISTICS";
                          goto LABEL_1706;
                        case 0xA:
                          appendStringInfoString(&__s1, "ALTER COLUMN ");
                          v815 = 0;
                          v810 = "SET";
                          goto LABEL_1706;
                        case 0xB:
                          appendStringInfoString(&__s1, "ALTER COLUMN ");
                          v815 = 0;
                          v810 = "RESET";
                          goto LABEL_1706;
                        case 0xC:
                          appendStringInfoString(&__s1, "ALTER COLUMN ");
                          v815 = 0;
                          v810 = "SET STORAGE";
                          goto LABEL_1706;
                        case 0xD:
                          if (v1237)
                          {
                            v817 = "DROP ATTRIBUTE ";
                          }

                          else
                          {
                            v817 = "DROP ";
                          }

                          goto LABEL_1705;
                        case 0xF:
                          v817 = "ADD INDEX ";
                          goto LABEL_1705;
                        case 0x11:
                          v817 = "ADD ";
                          goto LABEL_1705;
                        case 0x15:
                        case 0x41:
                          v817 = "ALTER ";
                          goto LABEL_1705;
                        case 0x16:
                          v817 = "VALIDATE CONSTRAINT ";
                          goto LABEL_1705;
                        case 0x19:
                          v817 = "DROP CONSTRAINT ";
                          goto LABEL_1705;
                        case 0x1C:
                          if (v1237)
                          {
                            v820 = "ALTER ATTRIBUTE ";
                          }

                          else
                          {
                            v820 = "ALTER COLUMN ";
                          }

                          appendStringInfoString(&__s1, v820);
                          v815 = 0;
                          v810 = "TYPE";
                          goto LABEL_1706;
                        case 0x1D:
                          v817 = "ALTER COLUMN ";
                          goto LABEL_1705;
                        case 0x1E:
                          appendStringInfoString(&__s1, "OWNER TO ");
                          v810 = 0;
                          v818 = *(v814 + 24);
                          v819 = *(v818 + 4);
                          v815 = 1;
                          if (v819 > 1)
                          {
                            if (v819 == 2)
                            {
                              v817 = "SESSION_USER";
                            }

                            else
                            {
                              if (v819 != 3)
                              {
                                goto LABEL_1706;
                              }

                              v817 = "public";
                            }
                          }

                          else if (v819)
                          {
                            if (v819 != 1)
                            {
                              goto LABEL_1706;
                            }

                            v817 = "CURRENT_USER";
                          }

                          else
                          {
                            v817 = quote_identifier(*(v818 + 8));
                          }

LABEL_1705:
                          appendStringInfoString(&__s1, v817);
                          v810 = 0;
                          v815 = 1;
LABEL_1706:
                          v821 = v810;
                          v825 = v815;
                          if (*(v814 + 44) == 1)
                          {
                            if (*(v814 + 4))
                            {
                              v826 = "IF EXISTS ";
                            }

                            else
                            {
                              v826 = "IF NOT EXISTS ";
                            }

                            appendStringInfoString(&__s1, v826);
                          }

                          v822 = (v814 + 44);
                          v823 = 0;
                          v824 = v825;
LABEL_1712:
                          v827 = *(v814 + 8);
                          if (v827)
                          {
                            v828 = quote_identifier(v827);
                            appendStringInfoString(&__s1, v828);
                            appendStringInfoChar(&__s1, 32);
                          }

                          if (*(v814 + 16) >= 1)
                          {
                            appendStringInfo(&__s1, "%d ", *(v814 + 16));
                          }

                          if (v824)
                          {
                            if ((v823 & *v822) != 1)
                            {
                              goto LABEL_1721;
                            }
                          }

                          else
                          {
                            appendStringInfoString(&__s1, v821);
                            appendStringInfoChar(&__s1, 32);
                            if ((v823 & *v822) != 1)
                            {
LABEL_1721:
                              v829 = *(v814 + 4);
LABEL_1722:
                              switch(v829)
                              {
                                case 0u:
                                case 0x1Cu:
                                  deparseColumnDef(&__s1, *(v814 + 32));
                                  goto LABEL_1762;
                                case 3u:
                                  v845 = *(v814 + 32);
                                  if (!v845)
                                  {
                                    goto LABEL_1763;
                                  }

                                  deparseExpr(&__s1, v845);
                                  goto LABEL_1762;
                                case 9u:
                                  appendStringInfo(&__s1, "%d", *(*(v814 + 32) + 8));
                                  goto LABEL_1762;
                                case 0xAu:
                                case 0xBu:
                                case 0x25u:
                                case 0x26u:
                                  deparseRelOptions(&__s1, *(v814 + 32));
                                  goto LABEL_1762;
                                case 0xCu:
                                  v832 = quote_identifier(*(*(v814 + 32) + 8));
                                  goto LABEL_1735;
                                case 0x11u:
                                case 0x15u:
                                case 0x40u:
                                  deparseConstraint(&__s1, *(v814 + 32));
                                  goto LABEL_1762;
                                case 0x1Du:
                                case 0x3Du:
                                  deparseAlterGenericOptions(&__s1, *(v814 + 32));
                                  goto LABEL_1762;
                                case 0x34u:
                                case 0x35u:
                                  deparseRangeVar(&__s1, *(v814 + 32), 0);
                                  goto LABEL_1762;
                                case 0x36u:
                                  deparseTypeName(&__s1, *(v814 + 32));
                                  goto LABEL_1762;
                                case 0x38u:
                                  v831 = *(*(v814 + 32) + 4);
                                  if (v831 <= 0x68)
                                  {
                                    if (v831 == 100)
                                    {
                                      v832 = "DEFAULT ";
                                    }

                                    else
                                    {
                                      if (v831 != 102)
                                      {
                                        goto LABEL_1762;
                                      }

                                      v832 = "FULL ";
                                    }

                                    goto LABEL_1735;
                                  }

                                  if (v831 == 105)
                                  {
                                    v847 = *(v814 + 32);
                                    appendStringInfoString(&__s1, "USING INDEX ");
                                    v832 = quote_identifier(*(v847 + 8));
                                    goto LABEL_1735;
                                  }

                                  if (v831 == 110)
                                  {
                                    v832 = "NOTHING ";
LABEL_1735:
                                    appendStringInfoString(&__s1, v832);
                                  }

LABEL_1762:
                                  appendStringInfoChar(&__s1, 32);
                                  goto LABEL_1763;
                                case 0x3Eu:
                                case 0x3Fu:
                                  v830 = *(v814 + 32);
                                  deparseRangeVar(&__s1, *(v830 + 8), 0);
                                  if (*(v830 + 16))
                                  {
                                    appendStringInfoChar(&__s1, 32);
                                    deparsePartitionBoundSpec(&__s1, *(v830 + 16));
                                  }

                                  goto LABEL_1762;
                                case 0x41u:
                                  v833 = *(v814 + 32);
                                  if (!v833 || *(v833 + 4) < 1)
                                  {
                                    goto LABEL_1762;
                                  }

                                  v834 = 0;
                                  v835 = 8;
                                  break;
                                default:
                                  goto LABEL_1763;
                              }

                              while (2)
                              {
                                v836 = enter_memory_context;
                                v837 = *(v833 + 16);
                                v838 = *(v837 + 8 * v834);
                                v839 = *(v838 + 16);
                                if (!strcmp(v839, "restart"))
                                {
                                  if (*(v838 + 24))
                                  {
                                    appendStringInfoString(&__s1, "RESTART ");
                                    v840 = *(v838 + 24);
                                    if (*v840 != 222)
                                    {
                                      if (*v840 == 221)
                                      {
                                        appendStringInfo(&__s1, "%d", v840[2]);
                                      }

                                      goto LABEL_1756;
                                    }

                                    v842 = *(v840 + 1);
                                  }

                                  else
                                  {
                                    v842 = "RESTART";
                                  }
                                }

                                else
                                {
                                  if (strcmp(v839, "generated"))
                                  {
                                    appendStringInfoString(&__s1, "SET ");
                                    deparseSeqOptElem(&__s1, v838);
                                    goto LABEL_1756;
                                  }

                                  appendStringInfoString(&__s1, "SET GENERATED ");
                                  v841 = *(*(v838 + 24) + 8);
                                  if (v841 != 100)
                                  {
                                    if (v841 == 97)
                                    {
                                      v842 = "ALWAYS";
                                      break;
                                    }

LABEL_1756:
                                    v843 = *(v833 + 4);
                                    v844 = v837 + v835;
                                    if (v837 + v835)
                                    {
                                      enter_memory_context = v836;
                                      if (v844 < *(v833 + 16) + 8 * *(v833 + 4))
                                      {
                                        appendStringInfoChar(&__s1, 32);
                                        v843 = *(v833 + 4);
                                      }
                                    }

                                    else
                                    {
                                      enter_memory_context = v836;
                                    }

                                    ++v834;
                                    v835 += 8;
                                    v10 = v1241;
                                    if (v834 >= v843)
                                    {
                                      goto LABEL_1762;
                                    }

                                    continue;
                                  }

                                  v842 = "BY DEFAULT";
                                }

                                break;
                              }

                              appendStringInfoString(&__s1, v842);
                              goto LABEL_1756;
                            }
                          }

                          appendStringInfoString(&__s1, "IF EXISTS ");
                          v829 = *(v814 + 4);
                          if (v829 <= 0x41)
                          {
                            goto LABEL_1722;
                          }

LABEL_1763:
                          if (*(v814 + 40) == 1)
                          {
                            appendStringInfoString(&__s1, "CASCADE ");
                          }

                          v846 = v1246 - 1;
                          v7 = v1243;
                          v6 = v1244;
                          v9 = v1242;
                          v808 = v1236;
                          if (v1246 >= 1 && __s1[v846] == 32)
                          {
                            LODWORD(v1246) = v1246 - 1;
                            __s1[v846] = 0;
                          }

                          if (v812 != -8 && v812 + 8 < (*(*(v20 + 16) + 16) + 8 * *(*(v20 + 16) + 4)))
                          {
                            appendStringInfoString(&__s1, ", ");
                          }

                          v809 = v1235 + 1;
                          if (v1235 + 1 >= *(v1236 + 4))
                          {
                            goto LABEL_2447;
                          }

                          break;
                        case 0x1F:
                          v817 = "CLUSTER ON ";
                          goto LABEL_1705;
                        case 0x20:
                          v817 = "SET WITHOUT CLUSTER ";
                          goto LABEL_1705;
                        case 0x21:
                          v817 = "SET LOGGED ";
                          goto LABEL_1705;
                        case 0x22:
                          v817 = "SET UNLOGGED ";
                          goto LABEL_1705;
                        case 0x23:
                          v817 = "SET WITHOUT OIDS ";
                          goto LABEL_1705;
                        case 0x24:
                          v817 = "SET TABLESPACE ";
                          goto LABEL_1705;
                        case 0x25:
                          v817 = "SET ";
                          goto LABEL_1705;
                        case 0x26:
                          v817 = "RESET ";
                          goto LABEL_1705;
                        case 0x28:
                        case 0x2C:
                          v817 = "ENABLE TRIGGER ";
                          goto LABEL_1705;
                        case 0x29:
                          v817 = "ENABLE ALWAYS TRIGGER ";
                          goto LABEL_1705;
                        case 0x2A:
                          v817 = "ENABLE REPLICA TRIGGER ";
                          goto LABEL_1705;
                        case 0x2B:
                          v817 = "DISABLE TRIGGER ";
                          goto LABEL_1705;
                        case 0x2D:
                          v817 = "DISABLE TRIGGER ALL ";
                          goto LABEL_1705;
                        case 0x2E:
                          v817 = "ENABLE TRIGGER USER ";
                          goto LABEL_1705;
                        case 0x2F:
                          v817 = "DISABLE TRIGGER USER ";
                          goto LABEL_1705;
                        case 0x30:
                          v817 = "ENABLE RULE ";
                          goto LABEL_1705;
                        case 0x31:
                          v817 = "ENABLE ALWAYS RULE ";
                          goto LABEL_1705;
                        case 0x32:
                          v817 = "ENABLE REPLICA RULE ";
                          goto LABEL_1705;
                        case 0x33:
                          v817 = "DISABLE RULE ";
                          goto LABEL_1705;
                        case 0x34:
                          v817 = "INHERIT ";
                          goto LABEL_1705;
                        case 0x35:
                          v817 = "NO INHERIT ";
                          goto LABEL_1705;
                        case 0x36:
                          v817 = "OF ";
                          goto LABEL_1705;
                        case 0x37:
                          v817 = "NOT OF ";
                          goto LABEL_1705;
                        case 0x38:
                          v817 = "REPLICA IDENTITY ";
                          goto LABEL_1705;
                        case 0x39:
                          v817 = "ENABLE ROW LEVEL SECURITY ";
                          goto LABEL_1705;
                        case 0x3A:
                          v817 = "DISABLE ROW LEVEL SECURITY ";
                          goto LABEL_1705;
                        case 0x3B:
                          v817 = "FORCE ROW LEVEL SECURITY ";
                          goto LABEL_1705;
                        case 0x3C:
                          v817 = "NO FORCE ROW LEVEL SECURITY ";
                          goto LABEL_1705;
                        case 0x3E:
                          v817 = "ATTACH PARTITION ";
                          goto LABEL_1705;
                        case 0x3F:
                          v817 = "DETACH PARTITION ";
                          goto LABEL_1705;
                        case 0x40:
                          appendStringInfoString(&__s1, "ALTER ");
                          v815 = 0;
                          v810 = "ADD";
                          goto LABEL_1706;
                        case 0x42:
                          v816 = "DROP IDENTITY";
LABEL_1695:
                          v821 = v816;
                          appendStringInfoString(&__s1, "ALTER COLUMN ");
                          v822 = (v813 + 44);
                          v823 = 1;
                          v824 = 0;
                          goto LABEL_1712;
                        default:
                          goto LABEL_1706;
                      }
                    }
                  }
                }

                goto LABEL_2447;
              }

LABEL_1632:
              appendStringInfoString(&__s1, "IF EXISTS ");
              goto LABEL_1633;
            }

            v331 = "TABLE ";
            v332 = 0;
            v333 = 0;
            goto LABEL_1630;
          }

          v332 = 0;
          v331 = "SEQUENCE ";
        }

        v333 = 0;
        goto LABEL_1630;
      case 0xEF:
        appendStringInfoString(&__s1, "ALTER DOMAIN ");
        v296 = *(v19 + 8);
        if (v296 && *(v296 + 4) >= 1)
        {
          v297 = 8;
          v298 = 0;
          do
          {
            v299 = *(v296 + 16);
            v300 = quote_identifier(*(*(v299 + 8 * v298) + 8));
            appendStringInfoString(&__s1, v300);
            v301 = *(v296 + 4);
            if (v299 + v297)
            {
              v302 = v299 + v297 >= (*(v296 + 16) + 8 * v301);
            }

            else
            {
              v302 = 1;
            }

            if (!v302)
            {
              appendStringInfoChar(&__s1, 46);
              v301 = *(v296 + 4);
            }

            ++v298;
            v297 += 8;
          }

          while (v298 < v301);
        }

        appendStringInfoChar(&__s1, 32);
        v303 = *(v20 + 4);
        if (v303 <= 0x53)
        {
          v9 = v1242;
          switch(v303)
          {
            case 'C':
              appendStringInfoString(&__s1, "ADD ");
              deparseConstraint(&__s1, *(v20 + 24));
              goto LABEL_2447;
            case 'N':
              v28 = "DROP NOT NULL";
              break;
            case 'O':
              v28 = "SET NOT NULL";
              break;
            default:
              goto LABEL_2447;
          }

          goto LABEL_2263;
        }

        if (v303 == 88)
        {
          appendStringInfoString(&__s1, "DROP CONSTRAINT ");
          v9 = v1242;
          if (*(v20 + 36) == 1)
          {
            appendStringInfoString(&__s1, "IF EXISTS ");
          }

          v757 = quote_identifier(*(v20 + 16));
          appendStringInfoString(&__s1, v757);
          if (*(v20 + 32) == 1)
          {
            v28 = " CASCADE";
            goto LABEL_2263;
          }

          goto LABEL_2447;
        }

        v9 = v1242;
        if (v303 == 86)
        {
          appendStringInfoString(&__s1, "VALIDATE CONSTRAINT ");
          v179 = *(v20 + 16);
          goto LABEL_2262;
        }

        if (v303 != 84)
        {
          goto LABEL_2447;
        }

        if (*(v20 + 24))
        {
          appendStringInfoString(&__s1, "SET DEFAULT ");
          deparseExpr(&__s1, *(v20 + 24));
          goto LABEL_2447;
        }

        v28 = "DROP DEFAULT";
        goto LABEL_2263;
      case 0xF1:
        deparseGrantStmt(&__s1, v19);
        goto LABEL_2447;
      case 0xF2:
        if (*(v19 + 24))
        {
          v218 = "GRANT ";
        }

        else
        {
          v218 = "REVOKE ";
        }

        appendStringInfoString(&__s1, v218);
        v219 = *(v19 + 8);
        if (v219 && *(v219 + 4) >= 1)
        {
          v220 = 8;
          v221 = 0;
          do
          {
            v222 = *(v219 + 16);
            deparseAccessPriv(&__s1, *(v222 + 8 * v221));
            if (v222 + v220)
            {
              v223 = v222 + v220 >= (*(*(v20 + 8) + 16) + 8 * *(*(v20 + 8) + 4));
            }

            else
            {
              v223 = 1;
            }

            if (!v223)
            {
              appendStringInfoChar(&__s1, 44);
            }

            appendStringInfoChar(&__s1, 32);
            ++v221;
            v220 += 8;
          }

          while (v221 < *(v219 + 4));
        }

        if (*(v20 + 24))
        {
          v224 = "TO ";
        }

        else
        {
          v224 = "FROM ";
        }

        appendStringInfoString(&__s1, v224);
        v225 = *(v20 + 16);
        if (!v225 || *(v225 + 4) < 1)
        {
          goto LABEL_398;
        }

        v226 = 8;
        v227 = 0;
        while (1)
        {
          v228 = *(v225 + 16);
          v229 = *(v228 + 8 * v227);
          v230 = *(v229 + 4);
          if (v230 > 1)
          {
            if (v230 == 2)
            {
              v231 = "SESSION_USER";
              goto LABEL_392;
            }

            if (v230 == 3)
            {
              v231 = "public";
              goto LABEL_392;
            }
          }

          else
          {
            if (!v230)
            {
              v231 = quote_identifier(*(v229 + 8));
              goto LABEL_392;
            }

            if (v230 == 1)
            {
              v231 = "CURRENT_USER";
LABEL_392:
              appendStringInfoString(&__s1, v231);
            }
          }

          v232 = *(v225 + 4);
          if (v228 + v226)
          {
            v233 = v228 + v226 >= (*(v225 + 16) + 8 * v232);
          }

          else
          {
            v233 = 1;
          }

          if (!v233)
          {
            appendStringInfoString(&__s1, ", ");
            v232 = *(v225 + 4);
          }

          ++v227;
          v226 += 8;
          if (v227 >= v232)
          {
LABEL_398:
            appendStringInfoChar(&__s1, 32);
            v9 = v1242;
            if (*(v20 + 25) == 1)
            {
              appendStringInfoString(&__s1, "WITH ADMIN OPTION ");
            }

            goto LABEL_2444;
          }
        }

      case 0xF3:
        appendStringInfoString(&__s1, "ALTER DEFAULT PRIVILEGES ");
        v306 = *(v19 + 8);
        if (!v306 || *(v306 + 4) < 1)
        {
          goto LABEL_555;
        }

        v307 = *(v306 + 4);
        v308 = 0;
        while (1)
        {
          v309 = *(*(v306 + 16) + 8 * v308);
          v310 = *(v309 + 16);
          if (!strcmp(v310, "schemas"))
          {
            appendStringInfoString(&__s1, "IN SCHEMA ");
            v320 = *(v309 + 24);
            if (v320 && *(v320 + 4) >= 1)
            {
              v321 = 8;
              v322 = 0;
              do
              {
                v323 = *(v320 + 16);
                v324 = quote_identifier(*(*(v323 + 8 * v322) + 8));
                appendStringInfoString(&__s1, v324);
                v325 = *(v320 + 4);
                if (v323 + v321)
                {
                  v326 = v323 + v321 >= (*(v320 + 16) + 8 * v325);
                }

                else
                {
                  v326 = 1;
                }

                if (!v326)
                {
                  appendStringInfoString(&__s1, ", ");
                  v325 = *(v320 + 4);
                }

                ++v322;
                v321 += 8;
              }

              while (v322 < v325);
            }
          }

          else
          {
            if (strcmp(v310, "roles"))
            {
              goto LABEL_524;
            }

            appendStringInfoString(&__s1, "FOR ROLE ");
            v311 = *(v309 + 24);
            if (v311 && *(v311 + 4) >= 1)
            {
              v312 = 8;
              for (i = 0; i < v318; ++i)
              {
                v314 = *(v311 + 16);
                v315 = *(v314 + 8 * i);
                v316 = *(v315 + 4);
                if (v316 > 1)
                {
                  if (v316 == 2)
                  {
                    v317 = "SESSION_USER";
                    goto LABEL_540;
                  }

                  if (v316 == 3)
                  {
                    v317 = "public";
                    goto LABEL_540;
                  }
                }

                else
                {
                  if (!v316)
                  {
                    v317 = quote_identifier(*(v315 + 8));
                    goto LABEL_540;
                  }

                  if (v316 == 1)
                  {
                    v317 = "CURRENT_USER";
LABEL_540:
                    appendStringInfoString(&__s1, v317);
                  }
                }

                v318 = *(v311 + 4);
                if (v314 + v312)
                {
                  v319 = v314 + v312 >= (*(v311 + 16) + 8 * v318);
                }

                else
                {
                  v319 = 1;
                }

                if (!v319)
                {
                  appendStringInfoString(&__s1, ", ");
                  v318 = *(v311 + 4);
                }

                v312 += 8;
              }
            }
          }

          appendStringInfoChar(&__s1, 32);
          v307 = *(v306 + 4);
          v7 = v1243;
LABEL_524:
          if (++v308 >= v307)
          {
LABEL_555:
            deparseGrantStmt(&__s1, *(v20 + 16));
            v6 = v1244;
            v9 = v1242;
            goto LABEL_2447;
          }
        }

      case 0xF4:
        appendStringInfoString(&__s1, "CLOSE ");
        v179 = *(v19 + 8);
        if (!v179)
        {
          goto LABEL_448;
        }

        goto LABEL_2262;
      case 0xF5:
        appendStringInfoString(&__s1, "CLUSTER ");
        if ((*(v19 + 24) & 2) != 0)
        {
          appendStringInfoString(&__s1, "VERBOSE ");
        }

        v304 = *(v19 + 8);
        if (v304)
        {
          deparseRangeVar(&__s1, v304, 0);
          appendStringInfoChar(&__s1, 32);
        }

        if (!*(v19 + 16))
        {
          goto LABEL_2444;
        }

        appendStringInfoString(&__s1, "USING ");
        v305 = quote_identifier(*(v19 + 16));
        appendStringInfoString(&__s1, v305);
        goto LABEL_1617;
      case 0xF6:
        appendStringInfoString(&__s1, "COPY ");
        v254 = *(v19 + 8);
        if (v254)
        {
          deparseRangeVar(&__s1, v254, 0);
          v255 = *(v19 + 24);
          if (v255 && *(v255 + 4) >= 1)
          {
            appendStringInfoChar(&__s1, 40);
            v256 = *(v19 + 24);
            if (v256 && *(v256 + 4) >= 1)
            {
              v257 = 8;
              v258 = 0;
              do
              {
                v259 = *(v256 + 16);
                v260 = quote_identifier(*(*(v259 + 8 * v258) + 8));
                appendStringInfoString(&__s1, v260);
                v261 = *(v256 + 4);
                if (v259 + v257)
                {
                  v262 = v259 + v257 >= (*(v256 + 16) + 8 * v261);
                }

                else
                {
                  v262 = 1;
                }

                if (!v262)
                {
                  appendStringInfoString(&__s1, ", ");
                  v261 = *(v256 + 4);
                }

                ++v258;
                v257 += 8;
              }

              while (v258 < v261);
            }

            appendStringInfoChar(&__s1, 41);
            v9 = v1242;
          }

          appendStringInfoChar(&__s1, 32);
        }

        if (*(v20 + 16))
        {
          appendStringInfoChar(&__s1, 40);
          v661 = *(v20 + 16);
          v662 = *v661;
          if (*v661 > 234)
          {
            if (v662 == 235)
            {
              deparseUpdateStmt(&__s1, v661);
            }

            else if (v662 == 236)
            {
              deparseSelectStmt(&__s1, v661);
            }
          }

          else if (v662 == 233)
          {
            deparseInsertStmt(&__s1, v661);
          }

          else if (v662 == 234)
          {
            deparseDeleteStmt(&__s1, v661);
          }

          appendStringInfoString(&__s1, ") ");
        }

        if (*(v20 + 32))
        {
          v759 = "FROM ";
        }

        else
        {
          v759 = "TO ";
        }

        appendStringInfoString(&__s1, v759);
        if (*(v20 + 33) == 1)
        {
          appendStringInfoString(&__s1, "PROGRAM ");
        }

        v760 = *(v20 + 40);
        if (v760)
        {
          deparseStringLiteral(&__s1, v760);
          appendStringInfoChar(&__s1, 32);
        }

        else
        {
          if (*(v20 + 32) == 1)
          {
            v761 = "STDIN ";
          }

          else
          {
            v761 = "STDOUT ";
          }

          appendStringInfoString(&__s1, v761);
        }

        v762 = *(v20 + 48);
        if (!v762 || *(v762 + 4) < 1)
        {
          goto LABEL_1615;
        }

        appendStringInfoString(&__s1, "WITH (");
        v763 = *(v20 + 48);
        if (!v763 || *(v763 + 4) < 1)
        {
          goto LABEL_1614;
        }

        v764 = 0;
        while (1)
        {
          v765 = *(v763 + 16) + 8 * v764;
          v766 = *v765;
          v767 = *(*v765 + 16);
          if (!strcmp(v767, "format"))
          {
            appendStringInfoString(&__s1, "FORMAT ");
            v771 = *(*(v766 + 24) + 8);
            if (!strcmp(v771, "binary"))
            {
              v772 = "BINARY";
            }

            else
            {
              if (strcmp(v771, "csv"))
              {
                goto LABEL_1566;
              }

              v772 = "CSV";
            }

            goto LABEL_1562;
          }

          if (!strcmp(v767, "freeze") && ((v773 = *(v766 + 24)) == 0 || *(v773 + 8) == 1))
          {
            appendStringInfoString(&__s1, "FREEZE");
            v774 = *(v766 + 24);
            if (v774)
            {
              goto LABEL_1560;
            }
          }

          else
          {
            if (!strcmp(v767, "delimiter"))
            {
              v775 = "DELIMITER ";
LABEL_1565:
              appendStringInfoString(&__s1, v775);
              deparseStringLiteral(&__s1, *(*(v766 + 24) + 8));
              goto LABEL_1566;
            }

            if (!strcmp(v767, "null"))
            {
              v775 = "NULL ";
              goto LABEL_1565;
            }

            if (!strcmp(v767, "header"))
            {
              v776 = *(v766 + 24);
              if (!v776 || *(v776 + 8) == 1)
              {
                appendStringInfoString(&__s1, "HEADER");
                v774 = *(v766 + 24);
                if (!v774)
                {
                  goto LABEL_1566;
                }

LABEL_1560:
                if (*(v774 + 8) != 1)
                {
                  goto LABEL_1566;
                }

                v772 = " 1";
LABEL_1562:
                appendStringInfoString(&__s1, v772);
                goto LABEL_1566;
              }
            }

            if (!strcmp(v767, "quote"))
            {
              v775 = "QUOTE ";
              goto LABEL_1565;
            }

            if (!strcmp(v767, "escape"))
            {
              v775 = "ESCAPE ";
              goto LABEL_1565;
            }

            if (!strcmp(v767, "force_quote"))
            {
              appendStringInfoString(&__s1, "FORCE_QUOTE ");
              v777 = **(v766 + 24);
              if (v777 != 226)
              {
                if (v777 != 351)
                {
                  goto LABEL_1566;
                }

LABEL_1571:
                appendStringInfoChar(&__s1, 42);
                goto LABEL_1566;
              }

              appendStringInfoChar(&__s1, 40);
              v792 = *(v766 + 24);
              if (v792 && *(v792 + 4) >= 1)
              {
                v793 = 8;
                v794 = 0;
                do
                {
                  v795 = *(v792 + 16);
                  v796 = quote_identifier(*(*(v795 + 8 * v794) + 8));
                  appendStringInfoString(&__s1, v796);
                  v797 = *(v792 + 4);
                  if (v795 + v793)
                  {
                    v798 = v795 + v793 >= (*(v792 + 16) + 8 * v797);
                  }

                  else
                  {
                    v798 = 1;
                  }

                  if (!v798)
                  {
                    appendStringInfoString(&__s1, ", ");
                    v797 = *(v792 + 4);
                  }

                  ++v794;
                  v793 += 8;
                }

                while (v794 < v797);
              }

              goto LABEL_1611;
            }

            if (!strcmp(v767, "force_not_null"))
            {
              appendStringInfoString(&__s1, "FORCE_NOT_NULL (");
              v778 = *(v766 + 24);
              if (v778 && *(v778 + 4) >= 1)
              {
                v779 = 8;
                v780 = 0;
                do
                {
                  v781 = *(v778 + 16);
                  v782 = quote_identifier(*(*(v781 + 8 * v780) + 8));
                  appendStringInfoString(&__s1, v782);
                  v783 = *(v778 + 4);
                  if (v781 + v779)
                  {
                    v784 = v781 + v779 >= (*(v778 + 16) + 8 * v783);
                  }

                  else
                  {
                    v784 = 1;
                  }

                  if (!v784)
                  {
                    appendStringInfoString(&__s1, ", ");
                    v783 = *(v778 + 4);
                  }

                  ++v780;
                  v779 += 8;
                }

                while (v780 < v783);
              }

LABEL_1611:
              appendStringInfoChar(&__s1, 41);
              goto LABEL_1612;
            }

            if (!strcmp(v767, "force_null"))
            {
              appendStringInfoString(&__s1, "FORCE_NULL (");
              v785 = *(v766 + 24);
              if (v785 && *(v785 + 4) >= 1)
              {
                v786 = 8;
                v787 = 0;
                do
                {
                  v788 = *(v785 + 16);
                  v789 = quote_identifier(*(*(v788 + 8 * v787) + 8));
                  appendStringInfoString(&__s1, v789);
                  v790 = *(v785 + 4);
                  if (v788 + v786)
                  {
                    v791 = v788 + v786 >= (*(v785 + 16) + 8 * v790);
                  }

                  else
                  {
                    v791 = 1;
                  }

                  if (!v791)
                  {
                    appendStringInfoString(&__s1, ", ");
                    v790 = *(v785 + 4);
                  }

                  ++v787;
                  v786 += 8;
                }

                while (v787 < v790);
              }

              goto LABEL_1611;
            }

            if (!strcmp(v767, "encoding"))
            {
              appendStringInfoString(&__s1, "ENCODING ");
              deparseStringLiteral(&__s1, *(*(v766 + 24) + 8));
LABEL_1612:
              v10 = v1241;
              v9 = v1242;
              goto LABEL_1566;
            }

            v768 = quote_identifier(v767);
            appendStringInfoString(&__s1, v768);
            v10 = v1241;
            v9 = v1242;
            if (!*(v766 + 24))
            {
              goto LABEL_1566;
            }

            appendStringInfoChar(&__s1, 32);
            v769 = *(v766 + 24);
            if (!v769)
            {
              goto LABEL_1566;
            }

            v770 = *v769;
            if (*v769 > 222)
            {
              if (v770 == 351)
              {
                goto LABEL_1571;
              }

              if (v770 != 226)
              {
                if (v770 == 223)
                {
                  deparseOptBooleanOrString(&__s1, *(v769 + 8));
                }

                goto LABEL_1566;
              }

              appendStringInfoChar(&__s1, 40);
              if (*(v769 + 4) >= 1)
              {
                v799 = 8;
                v800 = 0;
                do
                {
                  v801 = *(v769 + 16);
                  deparseOptBooleanOrString(&__s1, *(*(v801 + 8 * v800) + 8));
                  v802 = *(v769 + 4);
                  if (v801 + v799)
                  {
                    v803 = v801 + v799 >= (*(v769 + 16) + 8 * v802);
                  }

                  else
                  {
                    v803 = 1;
                  }

                  if (!v803)
                  {
                    appendStringInfoString(&__s1, ", ");
                    v802 = *(v769 + 4);
                  }

                  ++v800;
                  v799 += 8;
                }

                while (v800 < v802);
              }

              goto LABEL_1611;
            }

            if (v770 == 221)
            {
              appendStringInfo(&__s1, "%d", *(v769 + 8));
            }

            else if (v770 == 222)
            {
              v772 = *(v769 + 8);
              goto LABEL_1562;
            }
          }

LABEL_1566:
          if (v765 != -8 && v765 + 8 < (*(*(v20 + 48) + 16) + 8 * *(*(v20 + 48) + 4)))
          {
            appendStringInfoString(&__s1, ", ");
          }

          if (++v764 >= *(v763 + 4))
          {
LABEL_1614:
            appendStringInfoString(&__s1, ") ");
            v7 = v1243;
            v6 = v1244;
LABEL_1615:
            v804 = *(v20 + 56);
            if (v804)
            {
              appendStringInfoString(&__s1, "WHERE ");
              deparseExpr(&__s1, v804);
LABEL_1617:
              appendStringInfoChar(&__s1, 32);
            }

LABEL_2444:
            v374 = v1246 - 1;
            if (v1246 >= 1)
            {
LABEL_2445:
              if (__s1[v374] == 32)
              {
                LODWORD(v1246) = v374;
                __s1[v374] = 0;
              }
            }

LABEL_2447:
            protobuf_to_nodes = v1240;
            if (v1238 != -8 && v1238 + 8 < (*(v1240 + 16) + 8 * *(v1240 + 4)))
            {
              appendStringInfoString(&__s1, "; ");
            }

            v17 = v1239 + 1;
            if (v1239 + 1 >= *(v1240 + 4))
            {
              goto LABEL_2464;
            }

            goto LABEL_7;
          }
        }

      case 0xF7:
        deparseCreateStmt(&__s1, v19, 0);
        goto LABEL_2447;
      case 0xF8:
        appendStringInfoString(&__s1, "CREATE ");
        if (*(v19 + 41) == 1)
        {
          appendStringInfoString(&__s1, "OR REPLACE ");
        }

        v334 = *(v19 + 4);
        if (v334 > 43)
        {
          if (v334 > 45)
          {
            if (v334 == 46)
            {
              v335 = "TEXT SEARCH TEMPLATE ";
            }

            else
            {
              if (v334 != 47)
              {
                goto LABEL_1813;
              }

              v335 = "TYPE ";
            }
          }

          else if (v334 == 44)
          {
            v335 = "TEXT SEARCH DICTIONARY ";
          }

          else
          {
            v335 = "TEXT SEARCH PARSER ";
          }
        }

        else if (v334 > 24)
        {
          if (v334 == 25)
          {
            v335 = "OPERATOR ";
          }

          else
          {
            if (v334 != 43)
            {
              goto LABEL_1813;
            }

            v335 = "TEXT SEARCH CONFIGURATION ";
          }
        }

        else if (v334 == 1)
        {
          v335 = "AGGREGATE ";
        }

        else
        {
          if (v334 != 7)
          {
            goto LABEL_1813;
          }

          v335 = "COLLATION ";
        }

        appendStringInfoString(&__s1, v335);
LABEL_1813:
        if (*(v19 + 40) == 1)
        {
          appendStringInfoString(&__s1, "IF NOT EXISTS ");
        }

        v858 = *(v19 + 4);
        if (v858 > 42)
        {
          if ((v858 - 43) >= 5)
          {
            goto LABEL_2357;
          }

          goto LABEL_1817;
        }

        switch(v858)
        {
          case 1:
            v870 = *(v19 + 16);
            if (v870 && *(v870 + 4) >= 1)
            {
              v871 = 8;
              v872 = 0;
              do
              {
                v873 = *(v870 + 16);
                v874 = quote_identifier(*(*(v873 + 8 * v872) + 8));
                appendStringInfoString(&__s1, v874);
                v875 = *(v870 + 4);
                if (v873 + v871)
                {
                  v876 = v873 + v871 >= (*(v870 + 16) + 8 * v875);
                }

                else
                {
                  v876 = 1;
                }

                if (!v876)
                {
                  appendStringInfoChar(&__s1, 46);
                  v875 = *(v870 + 4);
                }

                ++v872;
                v871 += 8;
              }

              while (v872 < v875);
            }

            break;
          case 7:
LABEL_1817:
            v859 = *(v19 + 16);
            if (v859 && *(v859 + 4) >= 1)
            {
              v860 = 8;
              v861 = 0;
              do
              {
                v862 = *(v859 + 16);
                v863 = quote_identifier(*(*(v862 + 8 * v861) + 8));
                appendStringInfoString(&__s1, v863);
                v864 = *(v859 + 4);
                if (v862 + v860)
                {
                  v865 = v862 + v860 >= (*(v859 + 16) + 8 * v864);
                }

                else
                {
                  v865 = 1;
                }

                if (!v865)
                {
                  appendStringInfoChar(&__s1, 46);
                  v864 = *(v859 + 4);
                }

                ++v861;
                v860 += 8;
              }

              while (v861 < v864);
            }

            break;
          case 25:
            v866 = *(v19 + 16);
            if (v866)
            {
              v867 = *(v866 + 4);
              if (v867 == 1)
              {
                v869 = *(v866 + 16);
              }

              else
              {
                if (v867 != 2)
                {
                  break;
                }

                v868 = quote_identifier(*(**(v866 + 16) + 8));
                appendStringInfoString(&__s1, v868);
                appendStringInfoChar(&__s1, 46);
                v869 = *(v866 + 16) + 8 * (*(v866 + 4) - 1);
              }

              appendStringInfoString(&__s1, *(*v869 + 8));
            }

            break;
        }

LABEL_2357:
        appendStringInfoChar(&__s1, 32);
        v9 = v1242;
        if (*(v20 + 8))
        {
          goto LABEL_2374;
        }

        v1177 = *(v20 + 4);
        if (v1177 == 1)
        {
          v1178 = *(*(v20 + 24) + 16);
          v1179 = *v1178;
          v1180 = *(v1178[1] + 8);
          appendStringInfoChar(&__s1, 40);
          if (v1179)
          {
            v1181 = v1180;
            LODWORD(v1182) = *(v1179 + 4);
            if (v1182 >= 1)
            {
              v1183 = *(v1179 + 16);
              if (!v1181)
              {
                appendStringInfoString(&__s1, "ORDER BY ");
              }

              deparseFunctionParameter(&__s1, *v1183);
              LODWORD(v1182) = *(v1179 + 4);
              if (v1182 >= 2)
              {
                v1184 = 1;
                do
                {
                  v1186 = *(v1179 + 16);
                  if (v1181 == v1184)
                  {
                    appendStringInfoChar(&__s1, 32);
                    v1185 = "ORDER BY ";
                  }

                  else
                  {
                    v1185 = ", ";
                  }

                  appendStringInfoString(&__s1, v1185);
                  deparseFunctionParameter(&__s1, *(v1186 + 8 * v1184++));
                  v1182 = *(v1179 + 4);
                  v6 = v1244;
                }

                while (v1184 < v1182);
                v9 = v1242;
              }
            }

            if (v1181 == v1182)
            {
              appendStringInfoString(&__s1, " ORDER BY ");
              deparseFunctionParameter(&__s1, *(*(v1179 + 16) + 8 * (*(v1179 + 4) - 1)));
            }
          }

          else
          {
            appendStringInfoChar(&__s1, 42);
          }

          appendStringInfoChar(&__s1, 41);
          appendStringInfoChar(&__s1, 32);
LABEL_2374:
          v1177 = *(v20 + 4);
        }

        v1187 = *(v20 + 32);
        if (v1177 == 7)
        {
          if (!v1187)
          {
            goto LABEL_2444;
          }

          v1188 = *(v1187 + 4);
          if (v1188 == 1)
          {
            if (!strcmp(*(**(v1187 + 16) + 16), "from"))
            {
              appendStringInfoString(&__s1, "FROM ");
              v1189 = *(**(*(v20 + 32) + 16) + 24);
              if (v1189 && *(v1189 + 4) >= 1)
              {
                v1190 = 8;
                v1191 = 0;
                do
                {
                  v1192 = *(v1189 + 16);
                  v1193 = quote_identifier(*(*(v1192 + 8 * v1191) + 8));
                  appendStringInfoString(&__s1, v1193);
                  v1194 = *(v1189 + 4);
                  if (v1192 + v1190)
                  {
                    v1195 = v1192 + v1190 >= (*(v1189 + 16) + 8 * v1194);
                  }

                  else
                  {
                    v1195 = 1;
                  }

                  if (!v1195)
                  {
                    appendStringInfoChar(&__s1, 46);
                    v1194 = *(v1189 + 4);
                  }

                  ++v1191;
                  v1190 += 8;
                }

                while (v1191 < v1194);
              }

              goto LABEL_2444;
            }

            goto LABEL_2391;
          }
        }

        else
        {
          if (!v1187)
          {
            goto LABEL_2444;
          }

          v1188 = *(v1187 + 4);
        }

        if (v1188 < 1)
        {
          goto LABEL_2444;
        }

LABEL_2391:
        v599 = v1187;
LABEL_2392:
        deparseDefinition(&__s1, v599);
        goto LABEL_2444;
      case 0xF9:
        appendStringInfoString(&__s1, "DROP ");
        v357 = *(v19 + 16);
        if (v357 <= 0x31 && ((0x2FEAF3FBFD1A3uLL >> v357) & 1) != 0)
        {
          appendStringInfoString(&__s1, (&off_1E6E54C50)[v357]);
        }

        if (*(v19 + 25) == 1)
        {
          appendStringInfoString(&__s1, "CONCURRENTLY ");
          if (*(v19 + 24) != 1)
          {
LABEL_617:
            v358 = *(v19 + 16);
            if (v358 > 0x31)
            {
              goto LABEL_624;
            }

LABEL_621:
            switch(v358)
            {
              case 0u:
              case 0xEu:
              case 0xFu:
              case 0x10u:
              case 0x11u:
              case 0x1Du:
              case 0x22u:
                v697 = *(v19 + 8);
                if (v697 && *(v697 + 4) >= 1)
                {
                  v698 = 8;
                  v699 = 0;
                  do
                  {
                    v700 = *(v697 + 16);
                    v701 = quote_identifier(*(*(v700 + 8 * v699) + 8));
                    appendStringInfoString(&__s1, v701);
                    v702 = *(v697 + 4);
                    if (v700 + v698)
                    {
                      v703 = v700 + v698 >= (*(v697 + 16) + 8 * v702);
                    }

                    else
                    {
                      v703 = 1;
                    }

                    if (!v703)
                    {
                      appendStringInfoString(&__s1, ", ");
                      v702 = *(v697 + 4);
                    }

                    ++v699;
                    v698 += 8;
                    v9 = v1242;
                  }

                  while (v699 < v702);
                }

                goto LABEL_623;
              case 1u:
                v1152 = *(v19 + 8);
                if (v1152 && *(v1152 + 4) >= 1)
                {
                  v1153 = 8;
                  v1154 = 0;
                  do
                  {
                    v1155 = *(v1152 + 16);
                    deparseAggregateWithArgtypes(&__s1, *(v1155 + 8 * v1154));
                    if (v1155 + v1153)
                    {
                      v1156 = v1155 + v1153 >= (*(*(v20 + 8) + 16) + 8 * *(*(v20 + 8) + 4));
                    }

                    else
                    {
                      v1156 = 1;
                    }

                    if (!v1156)
                    {
                      appendStringInfoString(&__s1, ", ");
                    }

                    ++v1154;
                    v1153 += 8;
                    v9 = v1242;
                  }

                  while (v1154 < *(v1152 + 4));
                }

                goto LABEL_623;
              case 5u:
                v1157 = **(*(v19 + 8) + 16);
                appendStringInfoChar(&__s1, 40);
                deparseTypeName(&__s1, **(v1157 + 16));
                appendStringInfoString(&__s1, " AS ");
                deparseTypeName(&__s1, *(*(v1157 + 16) + 8));
                appendStringInfoChar(&__s1, 41);
                goto LABEL_623;
              case 7u:
              case 8u:
              case 0x12u:
              case 0x14u:
              case 0x17u:
              case 0x23u:
              case 0x25u:
              case 0x27u:
              case 0x2Bu:
              case 0x2Cu:
              case 0x2Du:
              case 0x2Eu:
              case 0x31u:
                deparseAnyNameList(&__s1, *(v19 + 8));
                goto LABEL_623;
              case 0xCu:
              case 0x2Fu:
                v922 = *(v19 + 8);
                if (v922 && *(v922 + 4) >= 1)
                {
                  v923 = 8;
                  v924 = 0;
                  do
                  {
                    v925 = *(v922 + 16);
                    deparseTypeName(&__s1, *(v925 + 8 * v924));
                    if (v925 + v923)
                    {
                      v926 = v925 + v923 >= (*(*(v20 + 8) + 16) + 8 * *(*(v20 + 8) + 4));
                    }

                    else
                    {
                      v926 = 1;
                    }

                    if (!v926)
                    {
                      appendStringInfoString(&__s1, ", ");
                    }

                    ++v924;
                    v923 += 8;
                    v9 = v1242;
                  }

                  while (v924 < *(v922 + 4));
                }

                goto LABEL_623;
              case 0x13u:
              case 0x1Cu:
              case 0x20u:
                v898 = *(v19 + 8);
                if (v898 && *(v898 + 4) >= 1)
                {
                  v899 = 8;
                  v900 = 0;
                  do
                  {
                    v901 = *(v898 + 16);
                    deparseFunctionWithArgtypes(&__s1, *(v901 + 8 * v900));
                    if (v901 + v899)
                    {
                      v902 = v901 + v899 >= (*(*(v20 + 8) + 16) + 8 * *(*(v20 + 8) + 4));
                    }

                    else
                    {
                      v902 = 1;
                    }

                    if (!v902)
                    {
                      appendStringInfoString(&__s1, ", ");
                    }

                    ++v900;
                    v899 += 8;
                    v9 = v1242;
                  }

                  while (v900 < *(v898 + 4));
                }

                goto LABEL_623;
              case 0x15u:
                deparseStringLiteral(&__s1, *(**(*(v19 + 8) + 16) + 8));
                goto LABEL_623;
              case 0x18u:
              case 0x1Au:
                v927 = **(*(v19 + 8) + 16);
                if (!v927)
                {
                  goto LABEL_2468;
                }

                if (*(v927 + 4) >= 2)
                {
                  v928 = 1;
                  v929 = 0x100000000;
                  do
                  {
                    v930 = (*(v927 + 16) + (v929 >> 29));
                    v932 = *v930;
                    v931 = (v930 + 1);
                    v933 = quote_identifier(*(v932 + 8));
                    appendStringInfoString(&__s1, v933);
                    v934 = *(v927 + 4);
                    if (v931)
                    {
                      v935 = v931 >= *(v927 + 16) + 8 * v934;
                    }

                    else
                    {
                      v935 = 1;
                    }

                    if (!v935)
                    {
                      appendStringInfoChar(&__s1, 46);
                      LODWORD(v934) = *(v927 + 4);
                    }

                    ++v928;
                    v929 += 0x100000000;
                  }

                  while (v934 > v928);
                }

                appendStringInfoString(&__s1, " USING ");
                v936 = quote_identifier(*(**(v927 + 16) + 8));
                appendStringInfoString(&__s1, v936);
                v9 = v1242;
LABEL_623:
                appendStringInfoChar(&__s1, 32);
                break;
              case 0x19u:
                v1158 = *(v19 + 8);
                if (v1158 && *(v1158 + 4) >= 1)
                {
                  v1159 = 8;
                  v1160 = 0;
                  do
                  {
                    v1161 = *(v1158 + 16);
                    deparseOperatorWithArgtypes(&__s1, *(v1161 + 8 * v1160));
                    if (v1161 + v1159)
                    {
                      v1162 = v1161 + v1159 >= (*(*(v20 + 8) + 16) + 8 * *(*(v20 + 8) + 4));
                    }

                    else
                    {
                      v1162 = 1;
                    }

                    if (!v1162)
                    {
                      appendStringInfoString(&__s1, ", ");
                    }

                    ++v1160;
                    v1159 += 8;
                    v9 = v1242;
                  }

                  while (v1160 < *(v1158 + 4));
                }

                goto LABEL_623;
              case 0x1Bu:
              case 0x21u:
              case 0x2Au:
                v903 = **(*(v19 + 8) + 16);
                v904 = quote_identifier(*(*(*(v903 + 16) + 8 * (*(v903 + 4) - 1)) + 8));
                appendStringInfoString(&__s1, v904);
                appendStringInfoString(&__s1, " ON ");
                v905 = *(v903 + 4);
                if (v905 >= 1)
                {
                  v906 = 8;
                  v907 = 0;
                  do
                  {
                    v908 = v905;
                    v909 = *(v903 + 16);
                    if (v909 + v906)
                    {
                      v910 = v909 + v906 >= (v909 + 8 * v908);
                    }

                    else
                    {
                      v910 = 1;
                    }

                    if (!v910)
                    {
                      v911 = quote_identifier(*(*(v909 + 8 * v907) + 8));
                      appendStringInfoString(&__s1, v911);
                      v908 = *(v903 + 4);
                      if (v907 < *(v903 + 4) - 2)
                      {
                        appendStringInfoChar(&__s1, 46);
                        v908 = *(v903 + 4);
                      }
                    }

                    v905 = v908;
                    v891 = v907 + 1 < v908;
                    v906 += 8;
                    ++v907;
                  }

                  while (v891);
                }

                goto LABEL_623;
              case 0x29u:
                v1163 = **(*(v19 + 8) + 16);
                appendStringInfoString(&__s1, "FOR ");
                deparseTypeName(&__s1, **(v1163 + 16));
                appendStringInfoString(&__s1, " LANGUAGE ");
                v1164 = quote_identifier(*(*(*(v1163 + 16) + 8) + 8));
                appendStringInfoString(&__s1, v1164);
                goto LABEL_623;
              default:
                break;
            }

LABEL_624:
            if (*(v20 + 20) == 1)
            {
LABEL_2443:
              appendStringInfoString(&__s1, "CASCADE ");
            }

            goto LABEL_2444;
          }
        }

        else if (*(v19 + 24) != 1)
        {
          goto LABEL_617;
        }

        appendStringInfoString(&__s1, "IF EXISTS ");
        v358 = *(v19 + 16);
        goto LABEL_621;
      case 0xFA:
        appendStringInfoString(&__s1, "TRUNCATE ");
        v368 = *(v19 + 8);
        if (v368 && *(v368 + 4) >= 1)
        {
          v369 = 8;
          v370 = 0;
          do
          {
            v371 = *(v368 + 16);
            deparseRangeVar(&__s1, *(v371 + 8 * v370), 0);
            v372 = *(v368 + 4);
            if (v371 + v369)
            {
              v373 = v371 + v369 >= (*(v368 + 16) + 8 * v372);
            }

            else
            {
              v373 = 1;
            }

            if (!v373)
            {
              appendStringInfoString(&__s1, ", ");
              v372 = *(v368 + 4);
            }

            ++v370;
            v369 += 8;
          }

          while (v370 < v372);
        }

        appendStringInfoChar(&__s1, 32);
        if (*(v20 + 16) == 1)
        {
          appendStringInfoString(&__s1, "RESTART IDENTITY ");
          v9 = v1242;
          if (*(v20 + 20) != 1)
          {
            goto LABEL_2444;
          }
        }

        else
        {
          v9 = v1242;
          if (*(v20 + 20) != 1)
          {
            goto LABEL_2444;
          }
        }

        appendStringInfoString(&__s1, "CASCADE ");
        v374 = v1246 - 1;
        if (v1246 < 1)
        {
          goto LABEL_2447;
        }

        goto LABEL_2445;
      case 0xFB:
        appendStringInfoString(&__s1, "COMMENT ON ");
        v359 = *(v19 + 4);
        v360 = v359;
        if (v359 <= 0x31 && ((0x2FFFFBFFFF3E3uLL >> v359) & 1) != 0)
        {
          appendStringInfoString(&__s1, (&off_1E6E54A88)[v359]);
          v360 = *(v19 + 4);
        }

        switch(v360)
        {
          case 0:
          case 9:
          case 14:
          case 15:
          case 16:
          case 17:
          case 21:
          case 29:
          case 31:
          case 34:
          case 36:
          case 40:
            v655 = quote_identifier(*(*(v19 + 8) + 8));
            appendStringInfoString(&__s1, v655);
            goto LABEL_2399;
          case 1:
            deparseAggregateWithArgtypes(&__s1, *(v19 + 8));
            goto LABEL_2399;
          case 5:
            v1196 = *(v19 + 8);
            appendStringInfoChar(&__s1, 40);
            deparseTypeName(&__s1, **(v1196 + 16));
            appendStringInfoString(&__s1, " AS ");
            deparseTypeName(&__s1, *(*(v1196 + 16) + 8));
            appendStringInfoChar(&__s1, 41);
            goto LABEL_2399;
          case 6:
          case 7:
          case 8:
          case 18:
          case 20:
          case 23:
          case 35:
          case 37:
          case 39:
          case 43:
          case 44:
          case 45:
          case 46:
          case 49:
            v361 = *(v19 + 8);
            if (v361 && *(v361 + 4) >= 1)
            {
              v362 = 8;
              v363 = 0;
              do
              {
                v364 = *(v361 + 16);
                v365 = quote_identifier(*(*(v364 + 8 * v363) + 8));
                appendStringInfoString(&__s1, v365);
                v366 = *(v361 + 4);
                if (v364 + v362)
                {
                  v367 = v364 + v362 >= (*(v361 + 16) + 8 * v366);
                }

                else
                {
                  v367 = 1;
                }

                if (!v367)
                {
                  appendStringInfoChar(&__s1, 46);
                  v366 = *(v361 + 4);
                }

                ++v363;
                v362 += 8;
                v9 = v1242;
              }

              while (v363 < v366);
            }

            goto LABEL_2399;
          case 12:
          case 47:
            deparseTypeName(&__s1, *(v19 + 8));
            goto LABEL_2399;
          case 13:
            v1199 = *(v19 + 8);
            v1200 = quote_identifier(*(*(*(v1199 + 16) + 8 * (*(v1199 + 4) - 1)) + 8));
            appendStringInfoString(&__s1, v1200);
            appendStringInfoString(&__s1, " ON DOMAIN ");
            deparseTypeName(&__s1, **(v1199 + 16));
            goto LABEL_2399;
          case 19:
          case 28:
          case 32:
            deparseFunctionWithArgtypes(&__s1, *(v19 + 8));
            goto LABEL_2399;
          case 22:
            deparseValue(&__s1, *(v19 + 8), 0);
            goto LABEL_2399;
          case 24:
          case 26:
            v937 = *(v19 + 8);
            if (!v937)
            {
              goto LABEL_2468;
            }

            if (*(v937 + 4) >= 2)
            {
              v938 = 1;
              v939 = 0x100000000;
              do
              {
                v940 = (*(v937 + 16) + (v939 >> 29));
                v942 = *v940;
                v941 = (v940 + 1);
                v943 = quote_identifier(*(v942 + 8));
                appendStringInfoString(&__s1, v943);
                v944 = *(v937 + 4);
                if (v941)
                {
                  v945 = v941 >= *(v937 + 16) + 8 * v944;
                }

                else
                {
                  v945 = 1;
                }

                if (!v945)
                {
                  appendStringInfoChar(&__s1, 46);
                  LODWORD(v944) = *(v937 + 4);
                }

                ++v938;
                v939 += 0x100000000;
              }

              while (v944 > v938);
            }

            appendStringInfoString(&__s1, " USING ");
            v946 = quote_identifier(*(**(v937 + 16) + 8));
            appendStringInfoString(&__s1, v946);
            v9 = v1242;
LABEL_2399:
            appendStringInfoString(&__s1, " IS ");
            v392 = *(v20 + 16);
            if (v392)
            {
              goto LABEL_2400;
            }

            v28 = "NULL";
            break;
          case 25:
            deparseOperatorWithArgtypes(&__s1, *(v19 + 8));
            goto LABEL_2399;
          case 27:
          case 33:
          case 38:
          case 42:
            v886 = *(v19 + 8);
            v887 = quote_identifier(*(*(*(v886 + 16) + 8 * (*(v886 + 4) - 1)) + 8));
            appendStringInfoString(&__s1, v887);
            appendStringInfoString(&__s1, " ON ");
            v888 = *(v886 + 4);
            if (v888 >= 1)
            {
              v889 = 8;
              v890 = 0;
              do
              {
                v892 = v888;
                v893 = *(v886 + 16);
                if (v893 + v889)
                {
                  v894 = v893 + v889 >= (v893 + 8 * v892);
                }

                else
                {
                  v894 = 1;
                }

                if (!v894)
                {
                  v895 = quote_identifier(*(*(v893 + 8 * v890) + 8));
                  appendStringInfoString(&__s1, v895);
                  v892 = *(v886 + 4);
                  if (v890 < *(v886 + 4) - 2)
                  {
                    appendStringInfoChar(&__s1, 46);
                    v892 = *(v886 + 4);
                  }
                }

                v888 = v892;
                v891 = v890 + 1 < v892;
                v889 += 8;
                ++v890;
              }

              while (v891);
            }

            goto LABEL_2399;
          case 41:
            v1197 = *(v19 + 8);
            appendStringInfoString(&__s1, "FOR ");
            deparseTypeName(&__s1, **(v1197 + 16));
            appendStringInfoString(&__s1, " LANGUAGE ");
            v1198 = quote_identifier(*(*(*(v1197 + 16) + 8) + 8));
            appendStringInfoString(&__s1, v1198);
            goto LABEL_2399;
          default:
            goto LABEL_2399;
        }

        goto LABEL_2263;
      case 0xFC:
        if (*(v19 + 24))
        {
          v340 = "MOVE ";
        }

        else
        {
          v340 = "FETCH ";
        }

        appendStringInfoString(&__s1, v340);
        v341 = *(v19 + 4);
        if (v341 > 1)
        {
          if (v341 == 2)
          {
            v675 = *(v19 + 8);
            if (v675 == -1)
            {
              v343 = "LAST ";
              goto LABEL_1923;
            }

            if (v675 == 1)
            {
              v343 = "FIRST ";
              goto LABEL_1923;
            }

            appendStringInfo(&__s1, "ABSOLUTE %ld ");
          }

          else if (v341 == 3)
          {
            appendStringInfo(&__s1, "RELATIVE %ld ");
          }
        }

        else if (v341)
        {
          if (v341 == 1)
          {
            v342 = *(v19 + 8);
            if (v342 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v343 = "BACKWARD ALL ";
              goto LABEL_1923;
            }

            if (v342 == 1)
            {
              v343 = "PRIOR ";
LABEL_1923:
              appendStringInfoString(&__s1, v343);
              v28 = *(v19 + 16);
              goto LABEL_2263;
            }

            appendStringInfo(&__s1, "BACKWARD %ld ");
          }
        }

        else
        {
          v674 = *(v19 + 8);
          if (v674 != 1)
          {
            if (v674 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v343 = "ALL ";
              goto LABEL_1923;
            }

            appendStringInfo(&__s1, "FORWARD %ld ");
          }
        }

        v28 = *(v19 + 16);
        goto LABEL_2263;
      case 0xFD:
        deparseIndexStmt(&__s1, v19);
        goto LABEL_2447;
      case 0xFE:
        appendStringInfoString(&__s1, "CREATE ");
        if (*(v19 + 5) == 1)
        {
          appendStringInfoString(&__s1, "OR REPLACE ");
        }

        if (*(v19 + 4))
        {
          v280 = "PROCEDURE ";
        }

        else
        {
          v280 = "FUNCTION ";
        }

        appendStringInfoString(&__s1, v280);
        v281 = *(v19 + 8);
        if (v281 && *(v281 + 4) >= 1)
        {
          v282 = 8;
          v283 = 0;
          do
          {
            v284 = *(v281 + 16);
            v285 = quote_identifier(*(*(v284 + 8 * v283) + 8));
            appendStringInfoString(&__s1, v285);
            v286 = *(v281 + 4);
            if (v284 + v282)
            {
              v287 = v284 + v282 >= (*(v281 + 16) + 8 * v286);
            }

            else
            {
              v287 = 1;
            }

            if (!v287)
            {
              appendStringInfoChar(&__s1, 46);
              v286 = *(v281 + 4);
            }

            ++v283;
            v282 += 8;
          }

          while (v283 < v286);
        }

        appendStringInfoChar(&__s1, 40);
        v288 = *(v20 + 16);
        if (v288 && *(v288 + 4) >= 1)
        {
          v289 = 0;
          v290 = 8;
          v291 = 0;
          do
          {
            v293 = *(v288 + 16);
            v294 = *(v293 + 8 * v291);
            if (*(v294 + 24) == 116)
            {
              v292 = 1;
            }

            else
            {
              v292 = v289;
              deparseFunctionParameter(&__s1, v294);
              if (v293 + v290)
              {
                v295 = v293 + v290 >= (*(*(v20 + 16) + 16) + 8 * *(*(v20 + 16) + 4));
              }

              else
              {
                v295 = 1;
              }

              if (!v295 && *(*(v293 + 8 * v291 + 8) + 24) != 116)
              {
                appendStringInfoString(&__s1, ", ");
              }
            }

            ++v291;
            v290 += 8;
            v289 = v292;
          }

          while (v291 < *(v288 + 4));
          appendStringInfoString(&__s1, ") ");
          if (v292)
          {
            appendStringInfoString(&__s1, "RETURNS TABLE (");
            v592 = *(v20 + 16);
            if (v592 && *(v592 + 4) >= 1)
            {
              v593 = 8;
              v594 = 0;
              do
              {
                v595 = *(v592 + 16);
                v596 = *(v595 + 8 * v594);
                if (*(v596 + 24) == 116)
                {
                  deparseFunctionParameter(&__s1, v596);
                  if (v595 + v593 && v595 + v593 < (*(*(v20 + 16) + 16) + 8 * *(*(v20 + 16) + 4)))
                  {
                    appendStringInfoString(&__s1, ", ");
                  }
                }

                ++v594;
                v593 += 8;
              }

              while (v594 < *(v592 + 4));
            }

            appendStringInfoString(&__s1, ") ");
            goto LABEL_1347;
          }
        }

        else
        {
          appendStringInfoString(&__s1, ") ");
        }

        if (*(v20 + 24))
        {
          appendStringInfoString(&__s1, "RETURNS ");
          deparseTypeName(&__s1, *(v20 + 24));
          appendStringInfoChar(&__s1, 32);
        }

LABEL_1347:
        v677 = *(v20 + 32);
        v9 = v1242;
        if (!v677 || *(v677 + 4) < 1)
        {
          goto LABEL_1386;
        }

        v678 = 0;
        while (1)
        {
          v680 = *(*(v677 + 16) + 8 * v678);
          v681 = *(v680 + 16);
          if (*v681 == 97 && *(v681 + 1) == 115 && !*(v681 + 2))
          {
            appendStringInfoString(&__s1, "AS ");
            v690 = *(v680 + 24);
            if (v690 && *(v690 + 4) >= 1)
            {
              v691 = 8;
              v692 = 0;
              do
              {
                v693 = *(v690 + 16);
                v694 = *(*(v693 + 8 * v692) + 8);
                if (strstr(v694, "$$"))
                {
                  deparseStringLiteral(&__s1, v694);
                }

                else
                {
                  appendStringInfoString(&__s1, "$$");
                  appendStringInfoString(&__s1, v694);
                  appendStringInfoString(&__s1, "$$");
                }

                v695 = *(v690 + 4);
                if (v693 + v691)
                {
                  v696 = v693 + v691 >= (*(v690 + 16) + 8 * v695);
                }

                else
                {
                  v696 = 1;
                }

                if (!v696)
                {
                  appendStringInfoString(&__s1, ", ");
                  v695 = *(v690 + 4);
                }

                ++v692;
                v691 += 8;
              }

              while (v692 < v695);
            }

            goto LABEL_1352;
          }

          if (!strcmp(*(v680 + 16), "language"))
          {
            appendStringInfoString(&__s1, "LANGUAGE ");
            v682 = *(*(v680 + 24) + 8);
            v683 = strlen(v682);
            if (v683)
            {
              if (v683 >= 0x40)
              {
                deparseStringLiteral(&__s1, v682);
                goto LABEL_1352;
              }

              v679 = quote_identifier(v682);
            }

            else
            {
              v679 = "''";
            }
          }

          else
          {
            if (!strcmp(v681, "transform"))
            {
              v684 = *(v680 + 24);
              appendStringInfoString(&__s1, "TRANSFORM ");
              if (v684 && *(v684 + 4) >= 1)
              {
                v685 = 8;
                v686 = 0;
                do
                {
                  v687 = *(v684 + 16);
                  appendStringInfoString(&__s1, "FOR TYPE ");
                  deparseTypeName(&__s1, *(v687 + 8 * v686));
                  v688 = *(v684 + 4);
                  if (v687 + v685)
                  {
                    v689 = v687 + v685 >= (*(v684 + 16) + 8 * v688);
                  }

                  else
                  {
                    v689 = 1;
                  }

                  if (!v689)
                  {
                    appendStringInfoString(&__s1, ", ");
                    v688 = *(v684 + 4);
                  }

                  ++v686;
                  v685 += 8;
                }

                while (v686 < v688);
              }

              goto LABEL_1352;
            }

            if (strcmp(v681, "window"))
            {
              deparseCommonFuncOptItem(&__s1, v680);
              goto LABEL_1352;
            }

            v679 = "WINDOW";
          }

          appendStringInfoString(&__s1, v679);
LABEL_1352:
          appendStringInfoChar(&__s1, 32);
          ++v678;
          v9 = v1242;
          v7 = v1243;
          v10 = v1241;
          if (v678 >= *(v677 + 4))
          {
LABEL_1386:
            v374 = v1246 - 1;
            v6 = v1244;
            if (v1246 >= 1)
            {
              goto LABEL_2445;
            }

            goto LABEL_2447;
          }
        }

      case 0xFF:
        appendStringInfoString(&__s1, "ALTER ");
        v263 = *(v19 + 4);
        switch(v263)
        {
          case 19:
            v264 = "FUNCTION ";
            break;
          case 32:
            v264 = "ROUTINE ";
            break;
          case 28:
            v264 = "PROCEDURE ";
            break;
          default:
            goto LABEL_1256;
        }

        appendStringInfoString(&__s1, v264);
LABEL_1256:
        deparseFunctionWithArgtypes(&__s1, *(v19 + 8));
        appendStringInfoChar(&__s1, 32);
        v656 = *(v19 + 16);
        if (v656 && *(v656 + 4) >= 1)
        {
          v657 = 8;
          v658 = 0;
          do
          {
            v659 = *(v656 + 16);
            deparseCommonFuncOptItem(&__s1, *(v659 + 8 * v658));
            if (v659 + v657)
            {
              v660 = v659 + v657 >= (*(*(v20 + 16) + 16) + 8 * *(*(v20 + 16) + 4));
            }

            else
            {
              v660 = 1;
            }

            if (!v660)
            {
              appendStringInfoChar(&__s1, 32);
            }

            ++v658;
            v657 += 8;
            v9 = v1242;
          }

          while (v658 < *(v656 + 4));
        }

        goto LABEL_2447;
      case 0x100:
        appendStringInfoString(&__s1, "DO ");
        v344 = *(v19 + 8);
        if (!v344 || *(v344 + 4) < 1)
        {
          goto LABEL_1802;
        }

        v345 = *(v344 + 4);
        v346 = 0;
        while (1)
        {
          v348 = *(*(v344 + 16) + 8 * v346);
          v349 = *(v348 + 16);
          if (!strcmp(v349, "language"))
          {
            appendStringInfoString(&__s1, "LANGUAGE ");
            v347 = quote_identifier(*(*(v348 + 24) + 8));
          }

          else
          {
            if (*v349 != 97 || *(v349 + 1) != 115 || *(v349 + 2))
            {
              goto LABEL_595;
            }

            v350 = *(*(v348 + 24) + 8);
            v351 = "$$";
            if (strstr(v350, "$$"))
            {
              v351 = "$outer$";
            }

            appendStringInfoString(&__s1, v351);
            appendStringInfoString(&__s1, v350);
            v347 = v351;
          }

          appendStringInfoString(&__s1, v347);
          appendStringInfoChar(&__s1, 32);
          v345 = *(v344 + 4);
LABEL_595:
          if (++v346 >= v345)
          {
            goto LABEL_1802;
          }
        }

      case 0x101:
        appendStringInfoString(&__s1, "ALTER ");
        v421 = "AGGREGATE ";
        switch(*(v19 + 4))
        {
          case 1:
            goto LABEL_2407;
          case 4:
          case 0x2F:
            v421 = "TYPE ";
            goto LABEL_2407;
          case 6:
            v1165 = *(v19 + 8);
            if (v1165 > 38)
            {
              if (v1165 == 39)
              {
LABEL_2406:
                v421 = "TABLE ";
              }

              else
              {
                if (v1165 != 49)
                {
                  goto LABEL_2408;
                }

LABEL_2405:
                v421 = "VIEW ";
              }
            }

            else if (v1165 == 18)
            {
LABEL_2317:
              v421 = "FOREIGN TABLE ";
            }

            else
            {
              if (v1165 != 23)
              {
                goto LABEL_2408;
              }

LABEL_2316:
              v421 = "MATERIALIZED VIEW ";
            }

LABEL_2407:
            appendStringInfoString(&__s1, v421);
LABEL_2408:
            if (*(v19 + 52) == 1)
            {
              appendStringInfoString(&__s1, "IF EXISTS ");
            }

            switch(*(v19 + 4))
            {
              case 1:
                deparseAggregateWithArgtypes(&__s1, *(v19 + 24));
                goto LABEL_2441;
              case 4:
                deparseRangeVar(&__s1, *(v19 + 16), 9);
                v1222 = " RENAME ATTRIBUTE ";
                goto LABEL_2453;
              case 6:
                deparseRangeVar(&__s1, *(v19 + 16), 0);
                v1222 = " RENAME COLUMN ";
                goto LABEL_2453;
              case 7:
              case 8:
              case 0xC:
              case 0x25:
              case 0x2B:
              case 0x2C:
              case 0x2D:
              case 0x2E:
              case 0x2F:
                v1201 = *(v19 + 24);
                if (v1201 && *(v1201 + 4) >= 1)
                {
                  v1202 = 8;
                  v1203 = 0;
                  do
                  {
                    v1204 = *(v1201 + 16);
                    v1205 = quote_identifier(*(*(v1204 + 8 * v1203) + 8));
                    appendStringInfoString(&__s1, v1205);
                    v1206 = *(v1201 + 4);
                    if (v1204 + v1202)
                    {
                      v1207 = v1204 + v1202 >= (*(v1201 + 16) + 8 * v1206);
                    }

                    else
                    {
                      v1207 = 1;
                    }

                    if (!v1207)
                    {
                      appendStringInfoChar(&__s1, 46);
                      v1206 = *(v1201 + 4);
                    }

                    ++v1203;
                    v1202 += 8;
                  }

                  while (v1203 < v1206);
                }

                goto LABEL_2420;
              case 9:
              case 0x1F:
              case 0x22:
              case 0x28:
                v1209 = *(v19 + 32);
                goto LABEL_2424;
              case 0xD:
                v1226 = *(v19 + 24);
                if (v1226 && *(v1226 + 4) >= 1)
                {
                  v1227 = 8;
                  v1228 = 0;
                  do
                  {
                    v1229 = *(v1226 + 16);
                    v1230 = quote_identifier(*(*(v1229 + 8 * v1228) + 8));
                    appendStringInfoString(&__s1, v1230);
                    v1231 = *(v1226 + 4);
                    if (v1229 + v1227)
                    {
                      v1232 = v1229 + v1227 >= (*(v1226 + 16) + 8 * v1231);
                    }

                    else
                    {
                      v1232 = 1;
                    }

                    if (!v1232)
                    {
                      appendStringInfoChar(&__s1, 46);
                      v1231 = *(v1226 + 4);
                    }

                    ++v1228;
                    v1227 += 8;
                  }

                  while (v1228 < v1231);
                }

                appendStringInfoString(&__s1, " RENAME CONSTRAINT ");
                v1233 = quote_identifier(*(v20 + 32));
                appendStringInfoString(&__s1, v1233);
                appendStringInfoChar(&__s1, 32);
                v9 = v1242;
                break;
              case 0xE:
              case 0x10:
              case 0x11:
              case 0x15:
              case 0x1D:
              case 0x24:
                v1209 = *(*(v19 + 24) + 8);
LABEL_2424:
                v1210 = quote_identifier(v1209);
                appendStringInfoString(&__s1, v1210);
                goto LABEL_2441;
              case 0x12:
              case 0x14:
              case 0x17:
              case 0x23:
              case 0x27:
              case 0x31:
                v1208 = *(v19 + 16);
                goto LABEL_2426;
              case 0x13:
              case 0x1C:
              case 0x20:
                deparseFunctionWithArgtypes(&__s1, *(v19 + 24));
                goto LABEL_2441;
              case 0x18:
              case 0x1A:
                v1212 = *(v19 + 24);
                if (!v1212)
                {
                  goto LABEL_2468;
                }

                if (*(v1212 + 4) >= 2)
                {
                  v1213 = 1;
                  v1214 = 0x100000000;
                  do
                  {
                    v1215 = (*(v1212 + 16) + (v1214 >> 29));
                    v1217 = *v1215;
                    v1216 = (v1215 + 1);
                    v1218 = quote_identifier(*(v1217 + 8));
                    appendStringInfoString(&__s1, v1218);
                    v1219 = *(v1212 + 4);
                    if (v1216)
                    {
                      v1220 = v1216 >= *(v1212 + 16) + 8 * v1219;
                    }

                    else
                    {
                      v1220 = 1;
                    }

                    if (!v1220)
                    {
                      appendStringInfoChar(&__s1, 46);
                      LODWORD(v1219) = *(v1212 + 4);
                    }

                    ++v1213;
                    v1214 += 0x100000000;
                  }

                  while (v1219 > v1213);
                }

                appendStringInfoString(&__s1, " USING ");
                v1221 = quote_identifier(*(**(v1212 + 16) + 8));
                appendStringInfoString(&__s1, v1221);
LABEL_2420:
                appendStringInfoString(&__s1, " RENAME ");
                v9 = v1242;
                break;
              case 0x1B:
              case 0x21:
              case 0x2A:
                v1211 = quote_identifier(*(v19 + 32));
                appendStringInfoString(&__s1, v1211);
                appendStringInfoString(&__s1, " ON ");
                v1208 = *(v19 + 16);
LABEL_2426:
                deparseRangeVar(&__s1, v1208, 0);
LABEL_2441:
                appendStringInfoString(&__s1, " RENAME ");
                break;
              case 0x26:
                deparseRangeVar(&__s1, *(v19 + 16), 0);
                v1222 = " RENAME CONSTRAINT ";
LABEL_2453:
                appendStringInfoString(&__s1, v1222);
                v1225 = quote_identifier(*(v19 + 32));
                appendStringInfoString(&__s1, v1225);
                appendStringInfoChar(&__s1, 32);
                break;
              default:
                break;
            }

            appendStringInfoString(&__s1, "TO ");
            v1223 = quote_identifier(*(v20 + 40));
            appendStringInfoString(&__s1, v1223);
            appendStringInfoChar(&__s1, 32);
            if (*(v20 + 48) == 1)
            {
              goto LABEL_2443;
            }

            goto LABEL_2444;
          case 7:
            v421 = "COLLATION ";
            goto LABEL_2407;
          case 8:
            v421 = "CONVERSION ";
            goto LABEL_2407;
          case 9:
            v421 = "DATABASE ";
            goto LABEL_2407;
          case 0xC:
          case 0xD:
            v421 = "DOMAIN ";
            goto LABEL_2407;
          case 0xE:
            v421 = "EVENT TRIGGER ";
            goto LABEL_2407;
          case 0x10:
            v421 = "FOREIGN DATA WRAPPER ";
            goto LABEL_2407;
          case 0x11:
            v421 = "SERVER ";
            goto LABEL_2407;
          case 0x12:
            goto LABEL_2317;
          case 0x13:
            v421 = "FUNCTION ";
            goto LABEL_2407;
          case 0x14:
            v421 = "INDEX ";
            goto LABEL_2407;
          case 0x15:
            v421 = "LANGUAGE ";
            goto LABEL_2407;
          case 0x17:
            goto LABEL_2316;
          case 0x18:
            v421 = "OPERATOR CLASS ";
            goto LABEL_2407;
          case 0x1A:
            v421 = "OPERATOR FAMILY ";
            goto LABEL_2407;
          case 0x1B:
            v421 = "POLICY ";
            goto LABEL_2407;
          case 0x1C:
            v421 = "PROCEDURE ";
            goto LABEL_2407;
          case 0x1D:
            v421 = "PUBLICATION ";
            goto LABEL_2407;
          case 0x1F:
            v421 = "ROLE ";
            goto LABEL_2407;
          case 0x20:
            v421 = "ROUTINE ";
            goto LABEL_2407;
          case 0x21:
            v421 = "RULE ";
            goto LABEL_2407;
          case 0x22:
            v421 = "SCHEMA ";
            goto LABEL_2407;
          case 0x23:
            v421 = "SEQUENCE ";
            goto LABEL_2407;
          case 0x24:
            v421 = "SUBSCRIPTION ";
            goto LABEL_2407;
          case 0x25:
            v421 = "STATISTICS ";
            goto LABEL_2407;
          case 0x26:
          case 0x27:
            goto LABEL_2406;
          case 0x28:
            v421 = "TABLESPACE ";
            goto LABEL_2407;
          case 0x2A:
            v421 = "TRIGGER ";
            goto LABEL_2407;
          case 0x2B:
            v421 = "TEXT SEARCH CONFIGURATION ";
            goto LABEL_2407;
          case 0x2C:
            v421 = "TEXT SEARCH DICTIONARY ";
            goto LABEL_2407;
          case 0x2D:
            v421 = "TEXT SEARCH PARSER ";
            goto LABEL_2407;
          case 0x2E:
            v421 = "TEXT SEARCH TEMPLATE ";
            goto LABEL_2407;
          case 0x31:
            goto LABEL_2405;
          default:
            goto LABEL_2408;
        }

      case 0x102:
        appendStringInfoString(&__s1, "CREATE ");
        if (*(v19 + 48) == 1)
        {
          appendStringInfoString(&__s1, "OR REPLACE ");
        }

        appendStringInfoString(&__s1, "RULE ");
        v187 = quote_identifier(*(v19 + 16));
        appendStringInfoString(&__s1, v187);
        appendStringInfoString(&__s1, " AS ON ");
        v188 = *(v19 + 32) - 1;
        if (v188 <= 3)
        {
          appendStringInfoString(&__s1, (&off_1E6E54E48)[v188]);
        }

        appendStringInfoString(&__s1, "TO ");
        deparseRangeVar(&__s1, *(v19 + 8), 0);
        appendStringInfoChar(&__s1, 32);
        v189 = *(v19 + 24);
        if (v189)
        {
          appendStringInfoString(&__s1, "WHERE ");
          deparseExpr(&__s1, v189);
          appendStringInfoChar(&__s1, 32);
        }

        appendStringInfoString(&__s1, "DO ");
        if (*(v19 + 36) == 1)
        {
          appendStringInfoString(&__s1, "INSTEAD ");
        }

        v190 = *(v19 + 40);
        if (!v190)
        {
          goto LABEL_314;
        }

        v191 = *(v190 + 4);
        if (v191 != 1)
        {
          if (!v191)
          {
LABEL_314:
            v28 = "NOTHING";
            goto LABEL_2263;
          }

          appendStringInfoChar(&__s1, 40);
          v664 = *(v19 + 40);
          if (v664 && *(v664 + 4) >= 1)
          {
            v665 = 0;
            v666 = 0;
            do
            {
              v667 = *(v664 + 16);
              v668 = *(v667 + v666);
              v669 = *v668;
              if (*v668 <= 234)
              {
                if (v669 == 233)
                {
                  deparseInsertStmt(&__s1, *(v667 + v666));
                }

                else if (v669 == 234)
                {
                  deparseDeleteStmt(&__s1, *(v667 + v666));
                }
              }

              else
              {
                switch(v669)
                {
                  case 235:
                    deparseUpdateStmt(&__s1, *(v667 + v666));
                    break;
                  case 259:
                    appendStringInfoString(&__s1, "NOTIFY ");
                    v670 = quote_identifier(*(v668 + 8));
                    appendStringInfoString(&__s1, v670);
                    if (*(v668 + 16))
                    {
                      appendStringInfoString(&__s1, ", ");
                      deparseStringLiteral(&__s1, *(v668 + 16));
                    }

                    break;
                  case 236:
                    deparseSelectStmt(&__s1, *(v667 + v666));
                    break;
                }
              }

              if (v667 + v666 != -8 && v667 + v666 + 8 < (*(*(v20 + 40) + 16) + 8 * *(*(v20 + 40) + 4)))
              {
                appendStringInfoString(&__s1, "; ");
              }

              ++v665;
              v666 += 8;
            }

            while (v665 < *(v664 + 4));
          }

          appendStringInfoChar(&__s1, 41);
          v7 = v1243;
          v6 = v1244;
          v9 = v1242;
          goto LABEL_2447;
        }

        v20 = **(v190 + 16);
        v579 = *v20;
        if (*v20 <= 234)
        {
          goto LABEL_1292;
        }

        if (v579 == 235)
        {
          goto LABEL_1288;
        }

        if (v579 != 259)
        {
          goto LABEL_1286;
        }

LABEL_1289:
        appendStringInfoString(&__s1, "NOTIFY ");
        v663 = quote_identifier(*(v20 + 8));
        appendStringInfoString(&__s1, v663);
        if (*(v20 + 16))
        {
          appendStringInfoString(&__s1, ", ");
          v392 = *(v20 + 16);
LABEL_2400:
          deparseStringLiteral(&__s1, v392);
        }

        goto LABEL_2447;
      case 0x103:
        goto LABEL_1289;
      case 0x104:
        appendStringInfoString(&__s1, "LISTEN ");
        v179 = *(v19 + 8);
        goto LABEL_2262;
      case 0x105:
        appendStringInfoString(&__s1, "UNLISTEN ");
        v179 = *(v19 + 8);
        if (v179)
        {
          goto LABEL_2262;
        }

        v28 = "*";
        goto LABEL_2263;
      case 0x106:
        v422 = *(v19 + 4);
        if (v422 <= 4)
        {
          if (v422 <= 1)
          {
            if (v422)
            {
              if (v422 != 1)
              {
                goto LABEL_2444;
              }

              v672 = "START TRANSACTION ";
            }

            else
            {
              v672 = "BEGIN ";
            }

            appendStringInfoString(&__s1, v672);
            deparseTransactionModeList(&__s1, *(v19 + 8));
            goto LABEL_2444;
          }

          if (v422 == 2)
          {
            v897 = "COMMIT ";
          }

          else
          {
            if (v422 != 3)
            {
              v423 = "SAVEPOINT ";
              goto LABEL_1882;
            }

            v897 = "ROLLBACK ";
          }

          appendStringInfoString(&__s1, v897);
          if (*(v19 + 32) == 1)
          {
            appendStringInfoString(&__s1, "AND CHAIN ");
          }

          goto LABEL_2444;
        }

        if (v422 > 6)
        {
          switch(v422)
          {
            case 7:
              v555 = "PREPARE TRANSACTION ";
              break;
            case 8:
              v555 = "COMMIT PREPARED ";
              break;
            case 9:
              v555 = "ROLLBACK PREPARED ";
              break;
            default:
              goto LABEL_2444;
          }

          appendStringInfoString(&__s1, v555);
          deparseStringLiteral(&__s1, *(v19 + 24));
          goto LABEL_2444;
        }

        if (v422 == 5)
        {
          v423 = "RELEASE ";
        }

        else
        {
          appendStringInfoString(&__s1, "ROLLBACK ");
          v423 = "TO SAVEPOINT ";
        }

LABEL_1882:
        appendStringInfoString(&__s1, v423);
        v896 = quote_identifier(*(v19 + 16));
        appendStringInfoString(&__s1, v896);
        goto LABEL_2444;
      case 0x107:
        deparseViewStmt(&__s1, v19);
        goto LABEL_2447;
      case 0x108:
        appendStringInfoString(&__s1, "LOAD ");
        v392 = *(v19 + 8);
        goto LABEL_2400;
      case 0x109:
        appendStringInfoString(&__s1, "CREATE DOMAIN ");
        v375 = *(v19 + 8);
        if (v375 && *(v375 + 4) >= 1)
        {
          v376 = 8;
          v377 = 0;
          do
          {
            v378 = *(v375 + 16);
            v379 = quote_identifier(*(*(v378 + 8 * v377) + 8));
            appendStringInfoString(&__s1, v379);
            v380 = *(v375 + 4);
            if (v378 + v376)
            {
              v381 = v378 + v376 >= (*(v375 + 16) + 8 * v380);
            }

            else
            {
              v381 = 1;
            }

            if (!v381)
            {
              appendStringInfoChar(&__s1, 46);
              v380 = *(v375 + 4);
            }

            ++v377;
            v376 += 8;
          }

          while (v377 < v380);
        }

        appendStringInfoString(&__s1, " AS ");
        deparseTypeName(&__s1, *(v20 + 16));
        appendStringInfoChar(&__s1, 32);
        v382 = *(v20 + 24);
        if (v382)
        {
          deparseCollateClause(&__s1, v382);
          appendStringInfoChar(&__s1, 32);
        }

        v383 = *(v20 + 32);
        v9 = v1242;
        if (v383 && *(v383 + 4) >= 1)
        {
          v384 = 0;
          do
          {
            v385 = v384;
            deparseConstraint(&__s1, *(*(v383 + 16) + 8 * v384));
            appendStringInfoChar(&__s1, 32);
            v384 = v385 + 1;
          }

          while (v385 + 1 < *(v383 + 4));
        }

        goto LABEL_2444;
      case 0x10A:
        appendStringInfoString(&__s1, "CREATE DATABASE ");
        v386 = quote_identifier(*(v19 + 8));
        appendStringInfoString(&__s1, v386);
        appendStringInfoChar(&__s1, 32);
        deparseCreatedbOptList(&__s1, *(v19 + 16));
        v374 = v1246 - 1;
        if (v1246 < 1)
        {
          goto LABEL_2447;
        }

        goto LABEL_2445;
      case 0x10B:
        appendStringInfoString(&__s1, "DROP DATABASE ");
        if (*(v19 + 16) == 1)
        {
          appendStringInfoString(&__s1, "IF EXISTS ");
        }

        v393 = quote_identifier(*(v19 + 8));
        appendStringInfoString(&__s1, v393);
        appendStringInfoChar(&__s1, 32);
        v394 = *(v19 + 24);
        if (v394 && *(v394 + 4) >= 1)
        {
          appendStringInfoChar(&__s1, 40);
          v395 = *(v19 + 24);
          if (v395 && *(v395 + 4) >= 1)
          {
            v396 = 8;
            v397 = 0;
            do
            {
              v398 = *(v395 + 16);
              if (!strcmp(*(*(v398 + 8 * v397) + 16), "force"))
              {
                appendStringInfoString(&__s1, "FORCE");
              }

              if (v398 + v396)
              {
                v399 = v398 + v396 >= (*(*(v20 + 24) + 16) + 8 * *(*(v20 + 24) + 4));
              }

              else
              {
                v399 = 1;
              }

              if (!v399)
              {
                appendStringInfoString(&__s1, ", ");
              }

              ++v397;
              v396 += 8;
            }

            while (v397 < *(v395 + 4));
          }

          appendStringInfoChar(&__s1, 41);
          v9 = v1242;
        }

        goto LABEL_2444;
      case 0x10C:
        if (*(v19 + 24))
        {
          v265 = "VACUUM ";
        }

        else
        {
          v265 = "ANALYZE ";
        }

        appendStringInfoString(&__s1, v265);
        v266 = *(v19 + 8);
        if (v266 && *(v266 + 4) >= 1)
        {
          appendStringInfoChar(&__s1, 40);
          v268 = *(v19 + 8);
          if (v268 && *(v268 + 4) >= 1)
          {
            v269 = 0;
            do
            {
              v270 = *(v268 + 16) + 8 * v269;
              v271 = *v270;
              v272 = pstrdup(*(*v270 + 16), v267);
              v273 = v272;
              if (*v272)
              {
                v274 = *v272;
                v275 = (v272 + 1);
                do
                {
                  v276 = v275;
                  *(v275 - 1) = pg_toupper(v274);
                  v274 = *v276;
                  v275 = v276 + 1;
                }

                while (*v276);
              }

              appendStringInfoString(&__s1, v273);
              pfree(v273);
              if (*(v271 + 24))
              {
                appendStringInfoChar(&__s1, 32);
                v277 = *(v271 + 24);
                v278 = *v277;
                if (*v277 == 223)
                {
                  deparseOptBooleanOrString(&__s1, v277[1]);
                }

                else if (v278 == 222)
                {
                  appendStringInfoString(&__s1, v277[1]);
                }

                else if (v278 == 221)
                {
                  appendStringInfo(&__s1, "%d", *(v277 + 2));
                }
              }

              v279 = v270 == -8 || v270 + 8 >= (*(*(v20 + 8) + 16) + 8 * *(*(v20 + 8) + 4));
              v7 = v1243;
              if (!v279)
              {
                appendStringInfoString(&__s1, ", ");
              }

              ++v269;
            }

            while (v269 < *(v268 + 4));
          }

          appendStringInfoString(&__s1, ") ");
          v6 = v1244;
        }

        v580 = *(v20 + 16);
        if (v580 && *(v580 + 4) >= 1)
        {
          v581 = 0;
          do
          {
            v582 = *(v580 + 16) + 8 * v581;
            v583 = *v582;
            deparseRangeVar(&__s1, *(*v582 + 8), 0);
            v584 = *(v583 + 24);
            if (v584 && *(v584 + 4) >= 1)
            {
              appendStringInfoChar(&__s1, 40);
              v585 = *(v583 + 24);
              if (v585 && *(v585 + 4) >= 1)
              {
                v586 = 8;
                v587 = 0;
                do
                {
                  v588 = *(v585 + 16);
                  v589 = quote_identifier(*(*(v588 + 8 * v587) + 8));
                  appendStringInfoString(&__s1, v589);
                  if (v588 + v586)
                  {
                    v590 = v588 + v586 >= (*(*(v583 + 24) + 16) + 8 * *(*(v583 + 24) + 4));
                  }

                  else
                  {
                    v590 = 1;
                  }

                  if (!v590)
                  {
                    appendStringInfoString(&__s1, ", ");
                  }

                  ++v587;
                  v586 += 8;
                }

                while (v587 < *(v585 + 4));
              }

              appendStringInfoChar(&__s1, 41);
              v7 = v1243;
              v6 = v1244;
              v10 = v1241;
            }

            if (v582 != -8 && v582 + 8 < (*(*(v20 + 16) + 16) + 8 * *(*(v20 + 16) + 4)))
            {
              appendStringInfoString(&__s1, ", ");
            }

            ++v581;
          }

          while (v581 < *(v580 + 4));
        }

        goto LABEL_1802;
      case 0x10D:
        appendStringInfoString(&__s1, "EXPLAIN ");
        v237 = *(v19 + 16);
        if (v237 && *(v237 + 4) >= 1)
        {
          appendStringInfoChar(&__s1, 40);
          v239 = *(v19 + 16);
          if (v239 && *(v239 + 4) >= 1)
          {
            v240 = 0;
            do
            {
              v241 = *(v239 + 16) + 8 * v240;
              v242 = *v241;
              v243 = pstrdup(*(*v241 + 16), v238);
              v244 = v243;
              if (*v243)
              {
                v245 = *v243;
                v246 = (v243 + 1);
                do
                {
                  v247 = v246;
                  *(v246 - 1) = pg_toupper(v245);
                  v245 = *v247;
                  v246 = v247 + 1;
                }

                while (*v247);
              }

              appendStringInfoString(&__s1, v244);
              pfree(v244);
              v248 = *(v242 + 24);
              if (v248)
              {
                v249 = *v248;
                if (v249 == 223)
                {
                  appendStringInfoChar(&__s1, 32);
                  deparseOptBooleanOrString(&__s1, *(*(v242 + 24) + 8));
                }

                else if ((v249 - 221) <= 1)
                {
                  appendStringInfoChar(&__s1, 32);
                  v250 = *(v242 + 24);
                  if (*v250 == 222)
                  {
                    appendStringInfoString(&__s1, *(v250 + 8));
                  }

                  else if (*v250 == 221)
                  {
                    appendStringInfo(&__s1, "%d", *(v250 + 8));
                  }
                }
              }

              v251 = v241 == -8 || v241 + 8 >= (*(*(v20 + 16) + 16) + 8 * *(*(v20 + 16) + 4));
              v7 = v1243;
              if (!v251)
              {
                appendStringInfoString(&__s1, ", ");
              }

              ++v240;
            }

            while (v240 < *(v239 + 4));
          }

          appendStringInfoString(&__s1, ") ");
          v6 = v1244;
          v9 = v1242;
        }

        v20 = *(v20 + 8);
        v579 = *v20;
        if (*v20 <= 269)
        {
          if (v579 <= 234)
          {
LABEL_1292:
            if (v579 == 233)
            {
LABEL_9:
              deparseInsertStmt(&__s1, v20);
            }

            else if (v579 == 234)
            {
LABEL_1294:
              deparseDeleteStmt(&__s1, v20);
            }
          }

          else if (v579 == 235)
          {
LABEL_1288:
            deparseUpdateStmt(&__s1, v20);
          }

          else
          {
LABEL_1286:
            if (v579 == 236)
            {
LABEL_1287:
              deparseSelectStmt(&__s1, v20);
            }
          }

          goto LABEL_2447;
        }

        if (v579 <= 296)
        {
          if (v579 == 270)
          {
LABEL_1090:
            deparseCreateTableAsStmt(&__s1, v20);
          }

          else if (v579 == 295)
          {
LABEL_1089:
            deparseExecuteStmt(&__s1, v20);
          }

          goto LABEL_2447;
        }

        if (v579 == 297)
        {
LABEL_1253:
          deparseDeclareCursorStmt(&__s1, v20);
          goto LABEL_2447;
        }

        if (v579 != 330)
        {
          goto LABEL_2447;
        }

LABEL_1249:
        appendStringInfoString(&__s1, "REFRESH MATERIALIZED VIEW ");
        if (*(v20 + 4) == 1)
        {
          appendStringInfoString(&__s1, "CONCURRENTLY ");
        }

        deparseRangeVar(&__s1, *(v20 + 8), 0);
        appendStringInfoChar(&__s1, 32);
        if (*(v20 + 5) == 1)
        {
          appendStringInfoString(&__s1, "WITH NO DATA ");
        }

        goto LABEL_2444;
      case 0x10E:
        goto LABEL_1090;
      case 0x10F:
        deparseCreateSeqStmt(&__s1, v19);
        goto LABEL_2447;
      case 0x110:
        appendStringInfoString(&__s1, "ALTER SEQUENCE ");
        if (*(v19 + 25) == 1)
        {
          appendStringInfoString(&__s1, "IF EXISTS ");
        }

        deparseRangeVar(&__s1, *(v19 + 8), 0);
        appendStringInfoChar(&__s1, 32);
        v123 = *(v19 + 16);
        if (v123 && *(v123 + 4) >= 1)
        {
          v124 = 0;
          do
          {
            v125 = v124;
            deparseSeqOptElem(&__s1, *(*(v123 + 16) + 8 * v124));
            appendStringInfoChar(&__s1, 32);
            v124 = v125 + 1;
          }

          while (v125 + 1 < *(v123 + 4));
        }

        goto LABEL_2444;
      case 0x111:
        deparseVariableSetStmt(&__s1, v19);
        goto LABEL_2447;
      case 0x112:
        appendStringInfoString(&__s1, "SHOW ");
        v453 = *(v19 + 8);
        if (!strcmp(v453, "timezone"))
        {
          v28 = "TIME ZONE";
        }

        else if (!strcmp(v453, "transaction_isolation"))
        {
          v28 = "TRANSACTION ISOLATION LEVEL";
        }

        else if (!strcmp(v453, "session_authorization"))
        {
          v28 = "SESSION AUTHORIZATION";
        }

        else if (!strcmp(v453, "all"))
        {
          v28 = "SESSION ALL";
        }

        else
        {
          v28 = v453;
        }

        goto LABEL_2263;
      case 0x113:
        appendStringInfoString(&__s1, "DISCARD ");
        v168 = *(v19 + 4);
        if (v168 > 3)
        {
          goto LABEL_2447;
        }

        v28 = (&off_1E6E54C30)[v168];
        goto LABEL_2263;
      case 0x114:
        deparseCreateTrigStmt(&__s1, v19);
        goto LABEL_2447;
      case 0x115:
        appendStringInfoString(&__s1, "CREATE ");
        if (*(v19 + 4) == 1)
        {
          appendStringInfoString(&__s1, "OR REPLACE ");
        }

        if (*(v19 + 40) == 1)
        {
          appendStringInfoString(&__s1, "TRUSTED ");
        }

        appendStringInfoString(&__s1, "LANGUAGE ");
        v450 = *(v19 + 8);
        v451 = strlen(v450);
        if (v451)
        {
          if (v451 >= 0x40)
          {
            deparseStringLiteral(&__s1, v450);
            goto LABEL_1211;
          }

          v609 = quote_identifier(v450);
        }

        else
        {
          v609 = "''";
        }

        appendStringInfoString(&__s1, v609);
LABEL_1211:
        appendStringInfoChar(&__s1, 32);
        appendStringInfoString(&__s1, "HANDLER ");
        v634 = *(v19 + 16);
        if (v634 && *(v634 + 4) >= 1)
        {
          v635 = 8;
          v636 = 0;
          do
          {
            v637 = *(v634 + 16);
            v638 = quote_identifier(*(*(v637 + 8 * v636) + 8));
            appendStringInfoString(&__s1, v638);
            v639 = *(v634 + 4);
            if (v637 + v635)
            {
              v640 = v637 + v635 >= (*(v634 + 16) + 8 * v639);
            }

            else
            {
              v640 = 1;
            }

            if (!v640)
            {
              appendStringInfoChar(&__s1, 46);
              v639 = *(v634 + 4);
            }

            ++v636;
            v635 += 8;
          }

          while (v636 < v639);
        }

        appendStringInfoChar(&__s1, 32);
        if (*(v20 + 24))
        {
          appendStringInfoString(&__s1, "INLINE ");
          v641 = *(v20 + 24);
          if (v641 && *(v641 + 4) >= 1)
          {
            v642 = 8;
            v643 = 0;
            do
            {
              v644 = *(v641 + 16);
              v645 = quote_identifier(*(*(v644 + 8 * v643) + 8));
              appendStringInfoString(&__s1, v645);
              v646 = *(v641 + 4);
              if (v644 + v642)
              {
                v647 = v644 + v642 >= (*(v641 + 16) + 8 * v646);
              }

              else
              {
                v647 = 1;
              }

              if (!v647)
              {
                appendStringInfoChar(&__s1, 46);
                v646 = *(v641 + 4);
              }

              ++v643;
              v642 += 8;
            }

            while (v643 < v646);
          }

          appendStringInfoChar(&__s1, 32);
        }

        v9 = v1242;
        if (!*(v20 + 32))
        {
          goto LABEL_2444;
        }

        appendStringInfoString(&__s1, "VALIDATOR ");
        v648 = *(v20 + 32);
        if (v648 && *(v648 + 4) >= 1)
        {
          v649 = 8;
          v650 = 0;
          do
          {
            v651 = *(v648 + 16);
            v652 = quote_identifier(*(*(v651 + 8 * v650) + 8));
            appendStringInfoString(&__s1, v652);
            v653 = *(v648 + 4);
            if (v651 + v649)
            {
              v654 = v651 + v649 >= (*(v648 + 16) + 8 * v653);
            }

            else
            {
              v654 = 1;
            }

            if (!v654)
            {
              appendStringInfoChar(&__s1, 46);
              v653 = *(v648 + 4);
            }

            ++v650;
            v649 += 8;
          }

          while (v650 < v653);
        }

        goto LABEL_1617;
      case 0x116:
        appendStringInfoString(&__s1, "CREATE ");
        v135 = *(v19 + 4);
        if (v135 <= 2)
        {
          appendStringInfoString(&__s1, (&off_1E6E54C18)[v135]);
        }

        v136 = quote_identifier(*(v19 + 8));
        appendStringInfoString(&__s1, v136);
        appendStringInfoChar(&__s1, 32);
        if (!*(v19 + 16))
        {
          goto LABEL_2444;
        }

        appendStringInfoString(&__s1, "WITH ");
        v137 = *(v19 + 16);
        if (!v137 || *(v137 + 4) < 1)
        {
          goto LABEL_2444;
        }

        v138 = 0;
        while (1)
        {
          v139 = *(*(v137 + 16) + 8 * v138);
          v140 = *(v139 + 16);
          if (!strcmp(v140, "sysid"))
          {
            appendStringInfo(&__s1, "SYSID %d", *(*(v139 + 24) + 8));
          }

          else
          {
            if (!strcmp(v140, "adminmembers"))
            {
              appendStringInfoString(&__s1, "ADMIN ");
              v141 = *(v139 + 24);
              if (!v141 || *(v141 + 4) < 1)
              {
                goto LABEL_209;
              }

              v142 = 8;
              v143 = 0;
              while (2)
              {
                v144 = *(v141 + 16);
                v145 = *(v144 + 8 * v143);
                v146 = *(v145 + 4);
                if (v146 > 1)
                {
                  if (v146 == 2)
                  {
                    v147 = "SESSION_USER";
                  }

                  else
                  {
                    if (v146 != 3)
                    {
                      goto LABEL_229;
                    }

                    v147 = "public";
                  }
                }

                else
                {
                  if (v146)
                  {
                    if (v146 == 1)
                    {
                      v147 = "CURRENT_USER";
                      break;
                    }

LABEL_229:
                    v148 = *(v141 + 4);
                    if (v144 + v142)
                    {
                      v149 = v144 + v142 >= (*(v141 + 16) + 8 * v148);
                    }

                    else
                    {
                      v149 = 1;
                    }

                    if (!v149)
                    {
                      appendStringInfoString(&__s1, ", ");
                      v148 = *(v141 + 4);
                    }

                    ++v143;
                    v142 += 8;
                    if (v143 >= v148)
                    {
                      goto LABEL_209;
                    }

                    continue;
                  }

                  v147 = quote_identifier(*(v145 + 8));
                }

                break;
              }

              appendStringInfoString(&__s1, v147);
              goto LABEL_229;
            }

            if (!strcmp(v140, "rolemembers"))
            {
              appendStringInfoString(&__s1, "ROLE ");
              v150 = *(v139 + 24);
              if (!v150 || *(v150 + 4) < 1)
              {
                goto LABEL_209;
              }

              v151 = 8;
              v152 = 0;
              while (2)
              {
                v153 = *(v150 + 16);
                v154 = *(v153 + 8 * v152);
                v155 = *(v154 + 4);
                if (v155 > 1)
                {
                  if (v155 == 2)
                  {
                    v156 = "SESSION_USER";
                  }

                  else
                  {
                    if (v155 != 3)
                    {
                      goto LABEL_248;
                    }

                    v156 = "public";
                  }
                }

                else
                {
                  if (v155)
                  {
                    if (v155 == 1)
                    {
                      v156 = "CURRENT_USER";
                      break;
                    }

LABEL_248:
                    v157 = *(v150 + 4);
                    if (v153 + v151)
                    {
                      v158 = v153 + v151 >= (*(v150 + 16) + 8 * v157);
                    }

                    else
                    {
                      v158 = 1;
                    }

                    if (!v158)
                    {
                      appendStringInfoString(&__s1, ", ");
                      v157 = *(v150 + 4);
                    }

                    ++v152;
                    v151 += 8;
                    if (v152 >= v157)
                    {
                      goto LABEL_209;
                    }

                    continue;
                  }

                  v156 = quote_identifier(*(v154 + 8));
                }

                break;
              }

              appendStringInfoString(&__s1, v156);
              goto LABEL_248;
            }

            if (!strcmp(v140, "addroleto"))
            {
              appendStringInfoString(&__s1, "IN ROLE ");
              v159 = *(v139 + 24);
              if (!v159 || *(v159 + 4) < 1)
              {
                goto LABEL_209;
              }

              v160 = 8;
              v161 = 0;
              while (2)
              {
                v162 = *(v159 + 16);
                v163 = *(v162 + 8 * v161);
                v164 = *(v163 + 4);
                if (v164 > 1)
                {
                  if (v164 == 2)
                  {
                    v165 = "SESSION_USER";
                  }

                  else
                  {
                    if (v164 != 3)
                    {
                      goto LABEL_267;
                    }

                    v165 = "public";
                  }
                }

                else
                {
                  if (v164)
                  {
                    if (v164 == 1)
                    {
                      v165 = "CURRENT_USER";
                      break;
                    }

LABEL_267:
                    v166 = *(v159 + 4);
                    if (v162 + v160)
                    {
                      v167 = v162 + v160 >= (*(v159 + 16) + 8 * v166);
                    }

                    else
                    {
                      v167 = 1;
                    }

                    if (!v167)
                    {
                      appendStringInfoString(&__s1, ", ");
                      v166 = *(v159 + 4);
                    }

                    ++v161;
                    v160 += 8;
                    if (v161 >= v166)
                    {
                      goto LABEL_209;
                    }

                    continue;
                  }

                  v165 = quote_identifier(*(v163 + 8));
                }

                break;
              }

              appendStringInfoString(&__s1, v165);
              goto LABEL_267;
            }

            deparseAlterRoleElem(&__s1, v139);
          }

LABEL_209:
          appendStringInfoChar(&__s1, 32);
          ++v138;
          v6 = v1244;
          v9 = v1242;
          if (v138 >= *(v137 + 4))
          {
            goto LABEL_2444;
          }
        }

      case 0x117:
        appendStringInfoString(&__s1, "ALTER ");
        v336 = *(v19 + 16);
        if (!v336 || *(v336 + 4) != 1 || strcmp(*(**(v336 + 16) + 16), "rolemembers"))
        {
          appendStringInfoString(&__s1, "ROLE ");
          v337 = *(v19 + 8);
          v338 = *(v337 + 4);
          if (v338 > 1)
          {
            if (v338 == 2)
            {
              v339 = "SESSION_USER";
              goto LABEL_1407;
            }

            if (v338 == 3)
            {
              v339 = "public";
              goto LABEL_1407;
            }
          }

          else
          {
            if (!v338)
            {
              v339 = quote_identifier(*(v337 + 8));
              goto LABEL_1407;
            }

            if (v338 == 1)
            {
              v339 = "CURRENT_USER";
LABEL_1407:
              appendStringInfoString(&__s1, v339);
            }
          }

          appendStringInfoChar(&__s1, 32);
          appendStringInfoString(&__s1, "WITH ");
          v704 = *(v19 + 16);
          if (v704 && *(v704 + 4) >= 1)
          {
            v705 = 0;
            do
            {
              v706 = v705;
              deparseAlterRoleElem(&__s1, *(*(v704 + 16) + 8 * v705));
              appendStringInfoChar(&__s1, 32);
              v705 = v706 + 1;
            }

            while (v706 + 1 < *(v704 + 4));
          }

          goto LABEL_2444;
        }

        appendStringInfoString(&__s1, "GROUP ");
        v855 = *(v19 + 8);
        v856 = *(v855 + 4);
        if (v856 > 1)
        {
          if (v856 == 2)
          {
            v857 = "SESSION_USER";
          }

          else
          {
            if (v856 != 3)
            {
              goto LABEL_2331;
            }

            v857 = "public";
          }
        }

        else if (v856)
        {
          if (v856 != 1)
          {
            goto LABEL_2331;
          }

          v857 = "CURRENT_USER";
        }

        else
        {
          v857 = quote_identifier(*(v855 + 8));
        }

        appendStringInfoString(&__s1, v857);
LABEL_2331:
        appendStringInfoChar(&__s1, 32);
        v1166 = *(v19 + 24);
        if (v1166 == 1)
        {
          v1167 = "ADD USER ";
        }

        else
        {
          if (v1166 != -1)
          {
            goto LABEL_2336;
          }

          v1167 = "DROP USER ";
        }

        appendStringInfoString(&__s1, v1167);
LABEL_2336:
        v1168 = *(**(*(v19 + 16) + 16) + 24);
        if (!v1168 || *(v1168 + 4) < 1)
        {
          goto LABEL_2444;
        }

        v1169 = 8;
        v1170 = 0;
        while (1)
        {
          v1171 = *(v1168 + 16);
          v1172 = *(v1171 + 8 * v1170);
          v1173 = *(v1172 + 4);
          if (v1173 > 1)
          {
            if (v1173 == 2)
            {
              v1174 = "SESSION_USER";
              goto LABEL_2349;
            }

            if (v1173 == 3)
            {
              v1174 = "public";
              goto LABEL_2349;
            }
          }

          else
          {
            if (!v1173)
            {
              v1174 = quote_identifier(*(v1172 + 8));
              goto LABEL_2349;
            }

            if (v1173 == 1)
            {
              v1174 = "CURRENT_USER";
LABEL_2349:
              appendStringInfoString(&__s1, v1174);
            }
          }

          v1175 = *(v1168 + 4);
          if (v1171 + v1169)
          {
            v1176 = v1171 + v1169 >= (*(v1168 + 16) + 8 * v1175);
          }

          else
          {
            v1176 = 1;
          }

          if (!v1176)
          {
            appendStringInfoString(&__s1, ", ");
            v1175 = *(v1168 + 4);
          }

          ++v1170;
          v1169 += 8;
          if (v1170 >= v1175)
          {
            goto LABEL_2444;
          }
        }

      case 0x118:
        appendStringInfoString(&__s1, "DROP ROLE ");
        if (*(v19 + 16) == 1)
        {
          appendStringInfoString(&__s1, "IF EXISTS ");
        }

        v426 = *(v19 + 8);
        if (!v426 || *(v426 + 4) < 1)
        {
          goto LABEL_2447;
        }

        v427 = 8;
        v428 = 0;
        while (1)
        {
          v429 = *(v426 + 16);
          v430 = *(v429 + 8 * v428);
          v431 = *(v430 + 4);
          if (v431 > 1)
          {
            if (v431 == 2)
            {
              v432 = "SESSION_USER";
              goto LABEL_763;
            }

            if (v431 == 3)
            {
              v432 = "public";
              goto LABEL_763;
            }
          }

          else
          {
            if (!v431)
            {
              v432 = quote_identifier(*(v430 + 8));
              goto LABEL_763;
            }

            if (v431 == 1)
            {
              v432 = "CURRENT_USER";
LABEL_763:
              appendStringInfoString(&__s1, v432);
            }
          }

          v433 = *(v426 + 4);
          if (v429 + v427)
          {
            v434 = v429 + v427 >= (*(v426 + 16) + 8 * v433);
          }

          else
          {
            v434 = 1;
          }

          if (!v434)
          {
            appendStringInfoString(&__s1, ", ");
            v433 = *(v426 + 4);
          }

          ++v428;
          v427 += 8;
          if (v428 >= v433)
          {
            goto LABEL_2447;
          }
        }

      case 0x119:
        appendStringInfoString(&__s1, "LOCK TABLE ");
        v462 = *(v19 + 8);
        if (v462 && *(v462 + 4) >= 1)
        {
          v463 = 8;
          v464 = 0;
          do
          {
            v465 = *(v462 + 16);
            deparseRangeVar(&__s1, *(v465 + 8 * v464), 0);
            v466 = *(v462 + 4);
            if (v465 + v463)
            {
              v467 = v465 + v463 >= (*(v462 + 16) + 8 * v466);
            }

            else
            {
              v467 = 1;
            }

            if (!v467)
            {
              appendStringInfoString(&__s1, ", ");
              v466 = *(v462 + 4);
            }

            ++v464;
            v463 += 8;
          }

          while (v464 < v466);
        }

        appendStringInfoChar(&__s1, 32);
        if (*(v20 + 16) == 8)
        {
          v9 = v1242;
          if (*(v20 + 20) != 1)
          {
            goto LABEL_2444;
          }
        }

        else
        {
          appendStringInfoString(&__s1, "IN ");
          v556 = *(v20 + 16) - 1;
          if (v556 <= 7)
          {
            appendStringInfoString(&__s1, (&off_1E6E54DE0)[v556]);
          }

          appendStringInfoString(&__s1, "MODE ");
          v9 = v1242;
          if (*(v20 + 20) != 1)
          {
            goto LABEL_2444;
          }
        }

        appendStringInfoString(&__s1, "NOWAIT ");
        v374 = v1246 - 1;
        if (v1246 >= 1)
        {
          goto LABEL_2445;
        }

        goto LABEL_2447;
      case 0x11A:
        appendStringInfoString(&__s1, "SET CONSTRAINTS ");
        v93 = *(v19 + 8);
        if (v93 && *(v93 + 4) >= 1)
        {
          v94 = 8;
          v95 = 0;
          do
          {
            v96 = *(v93 + 16);
            deparseRangeVar(&__s1, *(v96 + 8 * v95), 0);
            v97 = *(v93 + 4);
            if (v96 + v94)
            {
              v98 = v96 + v94 >= (*(v93 + 16) + 8 * v97);
            }

            else
            {
              v98 = 1;
            }

            if (!v98)
            {
              appendStringInfoString(&__s1, ", ");
              v97 = *(v93 + 4);
            }

            ++v95;
            v94 += 8;
          }

          while (v95 < v97);
          appendStringInfoChar(&__s1, 32);
          v9 = v1242;
        }

        else
        {
          appendStringInfoString(&__s1, "ALL ");
        }

        if (*(v20 + 16))
        {
          v28 = "DEFERRED";
        }

        else
        {
          v28 = "IMMEDIATE";
        }

        goto LABEL_2263;
      case 0x11B:
        appendStringInfoString(&__s1, "REINDEX ");
        if (*(v19 + 24))
        {
          appendStringInfoString(&__s1, "(VERBOSE) ");
          v412 = *(v19 + 4);
          if (v412 <= 4)
          {
LABEL_723:
            appendStringInfoString(&__s1, (&off_1E6E54E20)[v412]);
            if (*(v19 + 28) != 1)
            {
              goto LABEL_724;
            }

            goto LABEL_1010;
          }
        }

        else
        {
          v412 = *(v19 + 4);
          if (v412 <= 4)
          {
            goto LABEL_723;
          }
        }

        if (*(v19 + 28) != 1)
        {
LABEL_724:
          v413 = *(v19 + 8);
          if (v413)
          {
LABEL_725:
            deparseRangeVar(&__s1, v413, 0);
            goto LABEL_2447;
          }

LABEL_1011:
          v179 = *(v19 + 16);
          if (!v179)
          {
            goto LABEL_2447;
          }

          goto LABEL_2262;
        }

LABEL_1010:
        appendStringInfoString(&__s1, "CONCURRENTLY ");
        v413 = *(v19 + 8);
        if (v413)
        {
          goto LABEL_725;
        }

        goto LABEL_1011;
      case 0x11C:
        v28 = "CHECKPOINT";
        goto LABEL_2263;
      case 0x11D:
        appendStringInfoString(&__s1, "CREATE SCHEMA ");
        if (*(v19 + 32) == 1)
        {
          appendStringInfoString(&__s1, "IF NOT EXISTS ");
        }

        v387 = *(v19 + 8);
        if (v387)
        {
          v388 = quote_identifier(v387);
          appendStringInfoString(&__s1, v388);
          appendStringInfoChar(&__s1, 32);
        }

        if (!*(v19 + 16))
        {
          goto LABEL_1780;
        }

        appendStringInfoString(&__s1, "AUTHORIZATION ");
        v389 = *(v19 + 16);
        v390 = *(v389 + 4);
        if (v390 > 1)
        {
          if (v390 == 2)
          {
            v391 = "SESSION_USER";
          }

          else
          {
            if (v390 != 3)
            {
              goto LABEL_1779;
            }

            v391 = "public";
          }
        }

        else if (v390)
        {
          if (v390 != 1)
          {
            goto LABEL_1779;
          }

          v391 = "CURRENT_USER";
        }

        else
        {
          v391 = quote_identifier(*(v389 + 8));
        }

        appendStringInfoString(&__s1, v391);
LABEL_1779:
        appendStringInfoChar(&__s1, 32);
LABEL_1780:
        v848 = *(v19 + 24);
        if (v848 && *(v848 + 4) >= 1)
        {
          v849 = 8;
          v850 = 0;
          do
          {
            v851 = *(v848 + 16);
            v852 = *(v851 + 8 * v850);
            v853 = *v852;
            if (*v852 > 262)
            {
              switch(v853)
              {
                case 263:
                  deparseViewStmt(&__s1, v852);
                  break;
                case 271:
                  deparseCreateSeqStmt(&__s1, v852);
                  break;
                case 276:
                  deparseCreateTrigStmt(&__s1, v852);
                  break;
              }
            }

            else
            {
              switch(v853)
              {
                case 241:
                  deparseGrantStmt(&__s1, v852);
                  break;
                case 247:
                  deparseCreateStmt(&__s1, v852, 0);
                  break;
                case 253:
                  deparseIndexStmt(&__s1, v852);
                  break;
              }
            }

            if (v851 + v849)
            {
              v854 = v851 + v849 >= (*(*(v20 + 24) + 16) + 8 * *(*(v20 + 24) + 4));
            }

            else
            {
              v854 = 1;
            }

            if (!v854)
            {
              appendStringInfoChar(&__s1, 32);
            }

            ++v850;
            v849 += 8;
          }

          while (v850 < *(v848 + 4));
        }

        goto LABEL_1802;
      case 0x11E:
        appendStringInfoString(&__s1, "ALTER DATABASE ");
        v452 = quote_identifier(*(v19 + 8));
        appendStringInfoString(&__s1, v452);
        appendStringInfoChar(&__s1, 32);
        deparseCreatedbOptList(&__s1, *(v19 + 16));
        goto LABEL_2444;
      case 0x11F:
        appendStringInfoString(&__s1, "ALTER DATABASE ");
        v252 = quote_identifier(*(v19 + 8));
        appendStringInfoString(&__s1, v252);
        appendStringInfoChar(&__s1, 32);
        v253 = *(v19 + 16);
        goto LABEL_1627;
      case 0x120:
        appendStringInfoString(&__s1, "ALTER ROLE ");
        v327 = *(v19 + 8);
        if (v327)
        {
          v328 = *(v327 + 4);
          if (v328 > 1)
          {
            if (v328 == 2)
            {
              v329 = "SESSION_USER";
            }

            else
            {
              if (v328 != 3)
              {
                goto LABEL_1624;
              }

              v329 = "public";
            }
          }

          else if (v328)
          {
            if (v328 != 1)
            {
              goto LABEL_1624;
            }

            v329 = "CURRENT_USER";
          }

          else
          {
            v329 = quote_identifier(*(v327 + 8));
          }
        }

        else
        {
          v329 = "ALL";
        }

        appendStringInfoString(&__s1, v329);
LABEL_1624:
        appendStringInfoChar(&__s1, 32);
        if (*(v19 + 16))
        {
          appendStringInfoString(&__s1, "IN DATABASE ");
          v805 = quote_identifier(*(v19 + 16));
          appendStringInfoString(&__s1, v805);
          appendStringInfoChar(&__s1, 32);
        }

        v253 = *(v19 + 24);
LABEL_1627:
        deparseVariableSetStmt(&__s1, v253);
        goto LABEL_2447;
      case 0x121:
        appendStringInfoString(&__s1, "CREATE ");
        if (*(v19 + 40) == 1)
        {
          appendStringInfoString(&__s1, "DEFAULT ");
        }

        appendStringInfoString(&__s1, "CONVERSION ");
        v477 = *(v19 + 8);
        if (v477 && *(v477 + 4) >= 1)
        {
          v478 = 8;
          v479 = 0;
          do
          {
            v480 = *(v477 + 16);
            v481 = quote_identifier(*(*(v480 + 8 * v479) + 8));
            appendStringInfoString(&__s1, v481);
            v482 = *(v477 + 4);
            if (v480 + v478)
            {
              v483 = v480 + v478 >= (*(v477 + 16) + 8 * v482);
            }

            else
            {
              v483 = 1;
            }

            if (!v483)
            {
              appendStringInfoChar(&__s1, 46);
              v482 = *(v477 + 4);
            }

            ++v479;
            v478 += 8;
          }

          while (v479 < v482);
        }

        appendStringInfoChar(&__s1, 32);
        appendStringInfoString(&__s1, "FOR ");
        deparseStringLiteral(&__s1, *(v20 + 16));
        appendStringInfoString(&__s1, " TO ");
        deparseStringLiteral(&__s1, *(v20 + 24));
        appendStringInfoString(&__s1, "FROM ");
        v484 = *(v20 + 32);
        v9 = v1242;
        if (v484 && *(v484 + 4) >= 1)
        {
          v485 = 8;
          v486 = 0;
          do
          {
            v487 = *(v484 + 16);
            v488 = quote_identifier(*(*(v487 + 8 * v486) + 8));
            appendStringInfoString(&__s1, v488);
            v489 = *(v484 + 4);
            if (v487 + v485)
            {
              v490 = v487 + v485 >= (*(v484 + 16) + 8 * v489);
            }

            else
            {
              v490 = 1;
            }

            if (!v490)
            {
              appendStringInfoChar(&__s1, 46);
              v489 = *(v484 + 4);
            }

            ++v486;
            v485 += 8;
          }

          while (v486 < v489);
        }

        goto LABEL_2447;
      case 0x122:
        appendStringInfoString(&__s1, "CREATE CAST (");
        deparseTypeName(&__s1, *(v19 + 8));
        appendStringInfoString(&__s1, " AS ");
        deparseTypeName(&__s1, *(v19 + 16));
        appendStringInfoString(&__s1, ") ");
        if (*(v19 + 24))
        {
          appendStringInfoString(&__s1, "WITH FUNCTION ");
          deparseFunctionWithArgtypes(&__s1, *(v19 + 24));
          appendStringInfoChar(&__s1, 32);
          v209 = *(v19 + 32);
          if (v209)
          {
LABEL_352:
            if (v209 != 1)
            {
              goto LABEL_2447;
            }

            v28 = "AS ASSIGNMENT";
            goto LABEL_2263;
          }
        }

        else
        {
          if (*(v19 + 36) == 1)
          {
            v608 = "WITH INOUT ";
          }

          else
          {
            v608 = "WITHOUT FUNCTION ";
          }

          appendStringInfoString(&__s1, v608);
          v209 = *(v19 + 32);
          if (v209)
          {
            goto LABEL_352;
          }
        }

        v28 = "AS IMPLICIT";
        goto LABEL_2263;
      case 0x123:
        appendStringInfoString(&__s1, "CREATE OPERATOR CLASS ");
        v99 = *(v19 + 8);
        if (v99 && *(v99 + 4) >= 1)
        {
          v100 = 8;
          v101 = 0;
          do
          {
            v102 = *(v99 + 16);
            v103 = quote_identifier(*(*(v102 + 8 * v101) + 8));
            appendStringInfoString(&__s1, v103);
            v104 = *(v99 + 4);
            if (v102 + v100)
            {
              v105 = v102 + v100 >= (*(v99 + 16) + 8 * v104);
            }

            else
            {
              v105 = 1;
            }

            if (!v105)
            {
              appendStringInfoChar(&__s1, 46);
              v104 = *(v99 + 4);
            }

            ++v101;
            v100 += 8;
          }

          while (v101 < v104);
        }

        appendStringInfoChar(&__s1, 32);
        if (*(v20 + 48) == 1)
        {
          appendStringInfoString(&__s1, "DEFAULT ");
        }

        appendStringInfoString(&__s1, "FOR TYPE ");
        deparseTypeName(&__s1, *(v20 + 32));
        appendStringInfoChar(&__s1, 32);
        appendStringInfoString(&__s1, "USING ");
        v106 = quote_identifier(*(v20 + 24));
        appendStringInfoString(&__s1, v106);
        appendStringInfoChar(&__s1, 32);
        if (*(v20 + 16))
        {
          appendStringInfoString(&__s1, "FAMILY ");
          v107 = *(v20 + 16);
          if (v107 && *(v107 + 4) >= 1)
          {
            v108 = 8;
            v109 = 0;
            do
            {
              v110 = *(v107 + 16);
              v111 = quote_identifier(*(*(v110 + 8 * v109) + 8));
              appendStringInfoString(&__s1, v111);
              v112 = *(v107 + 4);
              if (v110 + v108)
              {
                v113 = v110 + v108 >= (*(v107 + 16) + 8 * v112);
              }

              else
              {
                v113 = 1;
              }

              if (!v113)
              {
                appendStringInfoChar(&__s1, 46);
                v112 = *(v107 + 4);
              }

              ++v109;
              v108 += 8;
            }

            while (v109 < v112);
          }

          appendStringInfoChar(&__s1, 32);
        }

        appendStringInfoString(&__s1, "AS ");
        deparseOpclassItemList(&__s1, *(v20 + 40));
        v9 = v1242;
        goto LABEL_2447;
      case 0x124:
        appendStringInfoString(&__s1, "CREATE OPERATOR FAMILY ");
        v210 = *(v19 + 8);
        if (v210 && *(v210 + 4) >= 1)
        {
          v211 = 8;
          v212 = 0;
          do
          {
            v213 = *(v210 + 16);
            v214 = quote_identifier(*(*(v213 + 8 * v212) + 8));
            appendStringInfoString(&__s1, v214);
            v215 = *(v210 + 4);
            if (v213 + v211)
            {
              v216 = v213 + v211 >= (*(v210 + 16) + 8 * v215);
            }

            else
            {
              v216 = 1;
            }

            if (!v216)
            {
              appendStringInfoChar(&__s1, 46);
              v215 = *(v210 + 4);
            }

            ++v212;
            v211 += 8;
          }

          while (v212 < v215);
        }

        appendStringInfoChar(&__s1, 32);
        appendStringInfoString(&__s1, "USING ");
        v217 = *(v20 + 16);
        goto LABEL_2129;
      case 0x125:
        appendStringInfoString(&__s1, "ALTER OPERATOR FAMILY ");
        v114 = *(v19 + 8);
        if (v114 && *(v114 + 4) >= 1)
        {
          v115 = 8;
          v116 = 0;
          do
          {
            v117 = *(v114 + 16);
            v118 = quote_identifier(*(*(v117 + 8 * v116) + 8));
            appendStringInfoString(&__s1, v118);
            v119 = *(v114 + 4);
            if (v117 + v115)
            {
              v120 = v117 + v115 >= (*(v114 + 16) + 8 * v119);
            }

            else
            {
              v120 = 1;
            }

            if (!v120)
            {
              appendStringInfoChar(&__s1, 46);
              v119 = *(v114 + 4);
            }

            ++v116;
            v115 += 8;
          }

          while (v116 < v119);
        }

        appendStringInfoChar(&__s1, 32);
        appendStringInfoString(&__s1, "USING ");
        v121 = quote_identifier(*(v20 + 16));
        appendStringInfoString(&__s1, v121);
        appendStringInfoChar(&__s1, 32);
        if (*(v20 + 24))
        {
          v122 = "DROP ";
        }

        else
        {
          v122 = "ADD ";
        }

        appendStringInfoString(&__s1, v122);
        deparseOpclassItemList(&__s1, *(v20 + 32));
        v9 = v1242;
        goto LABEL_2447;
      case 0x126:
        appendStringInfoString(&__s1, "PREPARE ");
        v169 = quote_identifier(*(v19 + 8));
        appendStringInfoString(&__s1, v169);
        v170 = *(v19 + 16);
        if (v170 && *(v170 + 4) >= 1)
        {
          appendStringInfoChar(&__s1, 40);
          v171 = *(v19 + 16);
          if (v171 && *(v171 + 4) >= 1)
          {
            v172 = 8;
            v173 = 0;
            do
            {
              v174 = *(v171 + 16);
              deparseTypeName(&__s1, *(v174 + 8 * v173));
              v175 = *(v171 + 4);
              if (v174 + v172)
              {
                v176 = v174 + v172 >= (*(v171 + 16) + 8 * v175);
              }

              else
              {
                v176 = 1;
              }

              if (!v176)
              {
                appendStringInfoString(&__s1, ", ");
                v175 = *(v171 + 4);
              }

              ++v173;
              v172 += 8;
            }

            while (v173 < v175);
          }

          appendStringInfoChar(&__s1, 41);
          v9 = v1242;
        }

        appendStringInfoString(&__s1, " AS ");
        v577 = *(v20 + 24);
        v578 = *v577;
        if (*v577 > 234)
        {
          if (v578 == 235)
          {
            deparseUpdateStmt(&__s1, v577);
          }

          else if (v578 == 236)
          {
            deparseSelectStmt(&__s1, v577);
          }
        }

        else if (v578 == 233)
        {
          deparseInsertStmt(&__s1, v577);
        }

        else if (v578 == 234)
        {
          deparseDeleteStmt(&__s1, v577);
        }

        goto LABEL_2447;
      case 0x127:
        goto LABEL_1089;
      case 0x128:
        appendStringInfoString(&__s1, "DEALLOCATE ");
        v179 = *(v19 + 8);
        if (v179)
        {
          goto LABEL_2262;
        }

LABEL_448:
        v28 = "ALL";
        goto LABEL_2263;
      case 0x129:
        goto LABEL_1253;
      case 0x12A:
        appendStringInfoString(&__s1, "CREATE TABLESPACE ");
        v129 = quote_identifier(*(v19 + 8));
        appendStringInfoString(&__s1, v129);
        appendStringInfoChar(&__s1, 32);
        if (!*(v19 + 16))
        {
          goto LABEL_1506;
        }

        appendStringInfoString(&__s1, "OWNER ");
        v130 = *(v19 + 16);
        v131 = *(v130 + 4);
        if (v131 > 1)
        {
          if (v131 == 2)
          {
            v132 = "SESSION_USER";
          }

          else
          {
            if (v131 != 3)
            {
              goto LABEL_1505;
            }

            v132 = "public";
          }
        }

        else if (v131)
        {
          if (v131 != 1)
          {
            goto LABEL_1505;
          }

          v132 = "CURRENT_USER";
        }

        else
        {
          v132 = quote_identifier(*(v130 + 8));
        }

        appendStringInfoString(&__s1, v132);
LABEL_1505:
        appendStringInfoChar(&__s1, 32);
LABEL_1506:
        appendStringInfoString(&__s1, "LOCATION ");
        deparseStringLiteral(&__s1, *(v19 + 24));
        appendStringInfoChar(&__s1, 32);
        v758 = *(v19 + 32);
        if (!v758 || *(v758 + 4) < 1)
        {
          goto LABEL_2444;
        }

        appendStringInfoString(&__s1, "WITH ");
        deparseRelOptions(&__s1, v758);
        goto LABEL_1617;
      case 0x12B:
        appendStringInfoString(&__s1, "DROP TABLESPACE ");
        if (*(v19 + 16) == 1)
        {
          goto LABEL_179;
        }

        goto LABEL_180;
      case 0x12C:
        appendStringInfoString(&__s1, "ALTER ");
        v177 = *(v19 + 4);
        if (v177 > 27)
        {
          switch(v177)
          {
            case 28:
              v756 = "PROCEDURE ";
              break;
            case 32:
              v756 = "ROUTINE ";
              break;
            case 42:
              appendStringInfoString(&__s1, "TRIGGER ");
              v554 = quote_identifier(*(**(*(v19 + 16) + 16) + 8));
              appendStringInfoString(&__s1, v554);
              v178 = " ON ";
              goto LABEL_1488;
            default:
              goto LABEL_1491;
          }
        }

        else
        {
          if (v177 != 19)
          {
            if (v177 == 20)
            {
              v178 = "INDEX ";
            }

            else
            {
              if (v177 != 23)
              {
                goto LABEL_1491;
              }

              v178 = "MATERIALIZED VIEW ";
            }

LABEL_1488:
            appendStringInfoString(&__s1, v178);
            deparseRangeVar(&__s1, *(v19 + 8), 0);
            goto LABEL_1491;
          }

          v756 = "FUNCTION ";
        }

        appendStringInfoString(&__s1, v756);
        deparseFunctionWithArgtypes(&__s1, *(v19 + 16));
LABEL_1491:
        appendStringInfoChar(&__s1, 32);
        if (*(v19 + 32) == 1)
        {
          appendStringInfoString(&__s1, "NO ");
        }

        appendStringInfoString(&__s1, "DEPENDS ON EXTENSION ");
        v179 = *(*(v19 + 24) + 8);
        goto LABEL_2262;
      case 0x12D:
        appendStringInfoString(&__s1, "ALTER ");
        switch(*(v19 + 4))
        {
          case 1:
            appendStringInfoString(&__s1, "AGGREGATE ");
            deparseAggregateWithArgtypes(&__s1, *(v19 + 16));
            break;
          case 7:
            appendStringInfoString(&__s1, "COLLATION ");
            v1026 = *(v19 + 16);
            if (v1026 && *(v1026 + 4) >= 1)
            {
              v1027 = 8;
              v1028 = 0;
              do
              {
                v1029 = *(v1026 + 16);
                v1030 = quote_identifier(*(*(v1029 + 8 * v1028) + 8));
                appendStringInfoString(&__s1, v1030);
                v1031 = *(v1026 + 4);
                if (v1029 + v1027)
                {
                  v1032 = v1029 + v1027 >= (*(v1026 + 16) + 8 * v1031);
                }

                else
                {
                  v1032 = 1;
                }

                if (!v1032)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1031 = *(v1026 + 4);
                }

                ++v1028;
                v1027 += 8;
              }

              while (v1028 < v1031);
            }

            break;
          case 8:
            appendStringInfoString(&__s1, "CONVERSION ");
            v1019 = *(v19 + 16);
            if (v1019 && *(v1019 + 4) >= 1)
            {
              v1020 = 8;
              v1021 = 0;
              do
              {
                v1022 = *(v1019 + 16);
                v1023 = quote_identifier(*(*(v1022 + 8 * v1021) + 8));
                appendStringInfoString(&__s1, v1023);
                v1024 = *(v1019 + 4);
                if (v1022 + v1020)
                {
                  v1025 = v1022 + v1020 >= (*(v1019 + 16) + 8 * v1024);
                }

                else
                {
                  v1025 = 1;
                }

                if (!v1025)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1024 = *(v1019 + 4);
                }

                ++v1021;
                v1020 += 8;
              }

              while (v1021 < v1024);
            }

            break;
          case 0xC:
            appendStringInfoString(&__s1, "DOMAIN ");
            v1040 = *(v19 + 16);
            if (v1040 && *(v1040 + 4) >= 1)
            {
              v1041 = 8;
              v1042 = 0;
              do
              {
                v1043 = *(v1040 + 16);
                v1044 = quote_identifier(*(*(v1043 + 8 * v1042) + 8));
                appendStringInfoString(&__s1, v1044);
                v1045 = *(v1040 + 4);
                if (v1043 + v1041)
                {
                  v1046 = v1043 + v1041 >= (*(v1040 + 16) + 8 * v1045);
                }

                else
                {
                  v1046 = 1;
                }

                if (!v1046)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1045 = *(v1040 + 4);
                }

                ++v1042;
                v1041 += 8;
              }

              while (v1042 < v1045);
            }

            break;
          case 0xF:
            appendStringInfoString(&__s1, "EXTENSION ");
            v1047 = *(v19 + 16);
            goto LABEL_2127;
          case 0x12:
            v1001 = "FOREIGN TABLE ";
            goto LABEL_2103;
          case 0x13:
            v1011 = "FUNCTION ";
            goto LABEL_2091;
          case 0x17:
            v1001 = "MATERIALIZED VIEW ";
            goto LABEL_2103;
          case 0x18:
            v1002 = *(v19 + 16);
            appendStringInfoString(&__s1, "OPERATOR CLASS ");
            if (!v1002)
            {
              goto LABEL_2468;
            }

            if (*(v1002 + 4) >= 2)
            {
              v1048 = 1;
              v1049 = 0x100000000;
              do
              {
                v1050 = (*(v1002 + 16) + (v1049 >> 29));
                v1052 = *v1050;
                v1051 = (v1050 + 1);
                v1053 = quote_identifier(*(v1052 + 8));
                appendStringInfoString(&__s1, v1053);
                v1054 = *(v1002 + 4);
                if (v1051)
                {
                  v1055 = v1051 >= *(v1002 + 16) + 8 * v1054;
                }

                else
                {
                  v1055 = 1;
                }

                if (!v1055)
                {
                  appendStringInfoChar(&__s1, 46);
                  LODWORD(v1054) = *(v1002 + 4);
                }

                ++v1048;
                v1049 += 0x100000000;
              }

              while (v1054 > v1048);
            }

            goto LABEL_2126;
          case 0x19:
            appendStringInfoString(&__s1, "OPERATOR ");
            deparseOperatorWithArgtypes(&__s1, *(v19 + 16));
            break;
          case 0x1A:
            v1002 = *(v19 + 16);
            appendStringInfoString(&__s1, "OPERATOR FAMILY ");
            if (!v1002)
            {
              goto LABEL_2468;
            }

            if (*(v1002 + 4) >= 2)
            {
              v1003 = 1;
              v1004 = 0x100000000;
              do
              {
                v1005 = (*(v1002 + 16) + (v1004 >> 29));
                v1007 = *v1005;
                v1006 = (v1005 + 1);
                v1008 = quote_identifier(*(v1007 + 8));
                appendStringInfoString(&__s1, v1008);
                v1009 = *(v1002 + 4);
                if (v1006)
                {
                  v1010 = v1006 >= *(v1002 + 16) + 8 * v1009;
                }

                else
                {
                  v1010 = 1;
                }

                if (!v1010)
                {
                  appendStringInfoChar(&__s1, 46);
                  LODWORD(v1009) = *(v1002 + 4);
                }

                ++v1003;
                v1004 += 0x100000000;
              }

              while (v1009 > v1003);
            }

LABEL_2126:
            appendStringInfoString(&__s1, " USING ");
            v1047 = **(v1002 + 16);
LABEL_2127:
            v1056 = quote_identifier(*(v1047 + 8));
            appendStringInfoString(&__s1, v1056);
            break;
          case 0x1C:
            v1011 = "PROCEDURE ";
            goto LABEL_2091;
          case 0x20:
            v1011 = "ROUTINE ";
LABEL_2091:
            appendStringInfoString(&__s1, v1011);
            deparseFunctionWithArgtypes(&__s1, *(v19 + 16));
            break;
          case 0x23:
            v1001 = "SEQUENCE ";
            goto LABEL_2103;
          case 0x25:
            appendStringInfoString(&__s1, "STATISTICS ");
            v1033 = *(v19 + 16);
            if (v1033 && *(v1033 + 4) >= 1)
            {
              v1034 = 8;
              v1035 = 0;
              do
              {
                v1036 = *(v1033 + 16);
                v1037 = quote_identifier(*(*(v1036 + 8 * v1035) + 8));
                appendStringInfoString(&__s1, v1037);
                v1038 = *(v1033 + 4);
                if (v1036 + v1034)
                {
                  v1039 = v1036 + v1034 >= (*(v1033 + 16) + 8 * v1038);
                }

                else
                {
                  v1039 = 1;
                }

                if (!v1039)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1038 = *(v1033 + 4);
                }

                ++v1035;
                v1034 += 8;
              }

              while (v1035 < v1038);
            }

            break;
          case 0x27:
            v1001 = "TABLE ";
            goto LABEL_2103;
          case 0x2B:
            appendStringInfoString(&__s1, "TEXT SEARCH CONFIGURATION ");
            v1065 = *(v19 + 16);
            if (v1065 && *(v1065 + 4) >= 1)
            {
              v1066 = 8;
              v1067 = 0;
              do
              {
                v1068 = *(v1065 + 16);
                v1069 = quote_identifier(*(*(v1068 + 8 * v1067) + 8));
                appendStringInfoString(&__s1, v1069);
                v1070 = *(v1065 + 4);
                if (v1068 + v1066)
                {
                  v1071 = v1068 + v1066 >= (*(v1065 + 16) + 8 * v1070);
                }

                else
                {
                  v1071 = 1;
                }

                if (!v1071)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1070 = *(v1065 + 4);
                }

                ++v1067;
                v1066 += 8;
              }

              while (v1067 < v1070);
            }

            break;
          case 0x2C:
            appendStringInfoString(&__s1, "TEXT SEARCH DICTIONARY ");
            v1058 = *(v19 + 16);
            if (v1058 && *(v1058 + 4) >= 1)
            {
              v1059 = 8;
              v1060 = 0;
              do
              {
                v1061 = *(v1058 + 16);
                v1062 = quote_identifier(*(*(v1061 + 8 * v1060) + 8));
                appendStringInfoString(&__s1, v1062);
                v1063 = *(v1058 + 4);
                if (v1061 + v1059)
                {
                  v1064 = v1061 + v1059 >= (*(v1058 + 16) + 8 * v1063);
                }

                else
                {
                  v1064 = 1;
                }

                if (!v1064)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1063 = *(v1058 + 4);
                }

                ++v1060;
                v1059 += 8;
              }

              while (v1060 < v1063);
            }

            break;
          case 0x2D:
            appendStringInfoString(&__s1, "TEXT SEARCH PARSER ");
            v994 = *(v19 + 16);
            if (v994 && *(v994 + 4) >= 1)
            {
              v995 = 8;
              v996 = 0;
              do
              {
                v997 = *(v994 + 16);
                v998 = quote_identifier(*(*(v997 + 8 * v996) + 8));
                appendStringInfoString(&__s1, v998);
                v999 = *(v994 + 4);
                if (v997 + v995)
                {
                  v1000 = v997 + v995 >= (*(v994 + 16) + 8 * v999);
                }

                else
                {
                  v1000 = 1;
                }

                if (!v1000)
                {
                  appendStringInfoChar(&__s1, 46);
                  v999 = *(v994 + 4);
                }

                ++v996;
                v995 += 8;
              }

              while (v996 < v999);
            }

            break;
          case 0x2E:
            appendStringInfoString(&__s1, "TEXT SEARCH TEMPLATE ");
            v1012 = *(v19 + 16);
            if (v1012 && *(v1012 + 4) >= 1)
            {
              v1013 = 8;
              v1014 = 0;
              do
              {
                v1015 = *(v1012 + 16);
                v1016 = quote_identifier(*(*(v1015 + 8 * v1014) + 8));
                appendStringInfoString(&__s1, v1016);
                v1017 = *(v1012 + 4);
                if (v1015 + v1013)
                {
                  v1018 = v1015 + v1013 >= (*(v1012 + 16) + 8 * v1017);
                }

                else
                {
                  v1018 = 1;
                }

                if (!v1018)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1017 = *(v1012 + 4);
                }

                ++v1014;
                v1013 += 8;
              }

              while (v1014 < v1017);
            }

            break;
          case 0x2F:
            appendStringInfoString(&__s1, "TYPE ");
            v1072 = *(v19 + 16);
            if (v1072 && *(v1072 + 4) >= 1)
            {
              v1073 = 8;
              v1074 = 0;
              do
              {
                v1075 = *(v1072 + 16);
                v1076 = quote_identifier(*(*(v1075 + 8 * v1074) + 8));
                appendStringInfoString(&__s1, v1076);
                v1077 = *(v1072 + 4);
                if (v1075 + v1073)
                {
                  v1078 = v1075 + v1073 >= (*(v1072 + 16) + 8 * v1077);
                }

                else
                {
                  v1078 = 1;
                }

                if (!v1078)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1077 = *(v1072 + 4);
                }

                ++v1074;
                v1073 += 8;
              }

              while (v1074 < v1077);
            }

            break;
          case 0x31:
            v1001 = "VIEW ";
LABEL_2103:
            appendStringInfoString(&__s1, v1001);
            if (*(v19 + 32) == 1)
            {
              appendStringInfoString(&__s1, "IF EXISTS ");
            }

            deparseRangeVar(&__s1, *(v19 + 8), 0);
            break;
          default:
            break;
        }

        appendStringInfoString(&__s1, " SET SCHEMA ");
        v217 = *(v20 + 24);
LABEL_2129:
        v1057 = quote_identifier(v217);
        appendStringInfoString(&__s1, v1057);
        v9 = v1242;
        goto LABEL_2447;
      case 0x12E:
        appendStringInfoString(&__s1, "ALTER ");
        switch(*(v19 + 4))
        {
          case 1:
            appendStringInfoString(&__s1, "AGGREGATE ");
            deparseAggregateWithArgtypes(&__s1, *(v19 + 16));
            goto LABEL_2259;
          case 7:
            appendStringInfoString(&__s1, "COLLATION ");
            v1134 = *(v19 + 16);
            if (v1134 && *(v1134 + 4) >= 1)
            {
              v1135 = 8;
              v1136 = 0;
              do
              {
                v1137 = *(v1134 + 16);
                v1138 = quote_identifier(*(*(v1137 + 8 * v1136) + 8));
                appendStringInfoString(&__s1, v1138);
                v1139 = *(v1134 + 4);
                if (v1137 + v1135)
                {
                  v1140 = v1137 + v1135 >= (*(v1134 + 16) + 8 * v1139);
                }

                else
                {
                  v1140 = 1;
                }

                if (!v1140)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1139 = *(v1134 + 4);
                }

                ++v1136;
                v1135 += 8;
              }

              while (v1136 < v1139);
            }

            goto LABEL_2259;
          case 8:
            appendStringInfoString(&__s1, "CONVERSION ");
            v1118 = *(v19 + 16);
            if (v1118 && *(v1118 + 4) >= 1)
            {
              v1119 = 8;
              v1120 = 0;
              do
              {
                v1121 = *(v1118 + 16);
                v1122 = quote_identifier(*(*(v1121 + 8 * v1120) + 8));
                appendStringInfoString(&__s1, v1122);
                v1123 = *(v1118 + 4);
                if (v1121 + v1119)
                {
                  v1124 = v1121 + v1119 >= (*(v1118 + 16) + 8 * v1123);
                }

                else
                {
                  v1124 = 1;
                }

                if (!v1124)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1123 = *(v1118 + 4);
                }

                ++v1120;
                v1119 += 8;
              }

              while (v1120 < v1123);
            }

            goto LABEL_2259;
          case 9:
            v1079 = "DATABASE ";
            goto LABEL_2256;
          case 0xC:
            appendStringInfoString(&__s1, "DOMAIN ");
            v1142 = *(v19 + 16);
            if (v1142 && *(v1142 + 4) >= 1)
            {
              v1143 = 8;
              v1144 = 0;
              do
              {
                v1145 = *(v1142 + 16);
                v1146 = quote_identifier(*(*(v1145 + 8 * v1144) + 8));
                appendStringInfoString(&__s1, v1146);
                v1147 = *(v1142 + 4);
                if (v1145 + v1143)
                {
                  v1148 = v1145 + v1143 >= (*(v1142 + 16) + 8 * v1147);
                }

                else
                {
                  v1148 = 1;
                }

                if (!v1148)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1147 = *(v1142 + 4);
                }

                ++v1144;
                v1143 += 8;
              }

              while (v1144 < v1147);
            }

            goto LABEL_2259;
          case 0xE:
            v1079 = "EVENT TRIGGER ";
            goto LABEL_2256;
          case 0x10:
            v1079 = "FOREIGN DATA WRAPPER ";
            goto LABEL_2256;
          case 0x11:
            v1079 = "SERVER ";
            goto LABEL_2256;
          case 0x13:
            v1141 = "FUNCTION ";
            goto LABEL_2254;
          case 0x15:
            v1079 = "LANGUAGE ";
            goto LABEL_2256;
          case 0x16:
            appendStringInfoString(&__s1, "LARGE OBJECT ");
            v1103 = *(v19 + 16);
            if (*v1103 == 222)
            {
              v1149 = *(v1103 + 8);
LABEL_2258:
              appendStringInfoString(&__s1, v1149);
            }

            else if (*v1103 == 221)
            {
              appendStringInfo(&__s1, "%d", *(v1103 + 8));
            }

LABEL_2259:
            appendStringInfoString(&__s1, " OWNER TO ");
            v65 = *(v20 + 24);
            v66 = *(v65 + 4);
            if (v66 > 1)
            {
              goto LABEL_2264;
            }

            v9 = v1242;
            if (!v66)
            {
              goto LABEL_2261;
            }

            goto LABEL_88;
          case 0x18:
            v1087 = *(v19 + 16);
            appendStringInfoString(&__s1, "OPERATOR CLASS ");
            if (!v1087)
            {
              goto LABEL_2468;
            }

            if (*(v1087 + 4) >= 2)
            {
              v1125 = 1;
              v1126 = 0x100000000;
              do
              {
                v1127 = (*(v1087 + 16) + (v1126 >> 29));
                v1129 = *v1127;
                v1128 = (v1127 + 1);
                v1130 = quote_identifier(*(v1129 + 8));
                appendStringInfoString(&__s1, v1130);
                v1131 = *(v1087 + 4);
                if (v1128)
                {
                  v1132 = v1128 >= *(v1087 + 16) + 8 * v1131;
                }

                else
                {
                  v1132 = 1;
                }

                if (!v1132)
                {
                  appendStringInfoChar(&__s1, 46);
                  LODWORD(v1131) = *(v1087 + 4);
                }

                ++v1125;
                v1126 += 0x100000000;
              }

              while (v1131 > v1125);
            }

            goto LABEL_2226;
          case 0x19:
            appendStringInfoString(&__s1, "OPERATOR ");
            deparseOperatorWithArgtypes(&__s1, *(v19 + 16));
            goto LABEL_2259;
          case 0x1A:
            v1087 = *(v19 + 16);
            appendStringInfoString(&__s1, "OPERATOR FAMILY ");
            if (!v1087)
            {
              goto LABEL_2468;
            }

            if (*(v1087 + 4) >= 2)
            {
              v1088 = 1;
              v1089 = 0x100000000;
              do
              {
                v1090 = (*(v1087 + 16) + (v1089 >> 29));
                v1092 = *v1090;
                v1091 = (v1090 + 1);
                v1093 = quote_identifier(*(v1092 + 8));
                appendStringInfoString(&__s1, v1093);
                v1094 = *(v1087 + 4);
                if (v1091)
                {
                  v1095 = v1091 >= *(v1087 + 16) + 8 * v1094;
                }

                else
                {
                  v1095 = 1;
                }

                if (!v1095)
                {
                  appendStringInfoChar(&__s1, 46);
                  LODWORD(v1094) = *(v1087 + 4);
                }

                ++v1088;
                v1089 += 0x100000000;
              }

              while (v1094 > v1088);
            }

LABEL_2226:
            appendStringInfoString(&__s1, " USING ");
            v1133 = **(v1087 + 16);
            goto LABEL_2257;
          case 0x1C:
            v1141 = "PROCEDURE ";
            goto LABEL_2254;
          case 0x1D:
            v1079 = "PUBLICATION ";
            goto LABEL_2256;
          case 0x20:
            v1141 = "ROUTINE ";
LABEL_2254:
            appendStringInfoString(&__s1, v1141);
            deparseFunctionWithArgtypes(&__s1, *(v19 + 16));
            goto LABEL_2259;
          case 0x22:
            v1079 = "SCHEMA ";
            goto LABEL_2256;
          case 0x24:
            v1079 = "SUBSCRIPTION ";
            goto LABEL_2256;
          case 0x25:
            appendStringInfoString(&__s1, "STATISTICS ");
            v1111 = *(v19 + 16);
            if (v1111 && *(v1111 + 4) >= 1)
            {
              v1112 = 8;
              v1113 = 0;
              do
              {
                v1114 = *(v1111 + 16);
                v1115 = quote_identifier(*(*(v1114 + 8 * v1113) + 8));
                appendStringInfoString(&__s1, v1115);
                v1116 = *(v1111 + 4);
                if (v1114 + v1112)
                {
                  v1117 = v1114 + v1112 >= (*(v1111 + 16) + 8 * v1116);
                }

                else
                {
                  v1117 = 1;
                }

                if (!v1117)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1116 = *(v1111 + 4);
                }

                ++v1113;
                v1112 += 8;
              }

              while (v1113 < v1116);
            }

            goto LABEL_2259;
          case 0x28:
            v1079 = "TABLESPACE ";
LABEL_2256:
            appendStringInfoString(&__s1, v1079);
            v1133 = *(v19 + 16);
LABEL_2257:
            v1149 = quote_identifier(*(v1133 + 8));
            goto LABEL_2258;
          case 0x2B:
            appendStringInfoString(&__s1, "TEXT SEARCH CONFIGURATION ");
            v1080 = *(v19 + 16);
            if (v1080 && *(v1080 + 4) >= 1)
            {
              v1081 = 8;
              v1082 = 0;
              do
              {
                v1083 = *(v1080 + 16);
                v1084 = quote_identifier(*(*(v1083 + 8 * v1082) + 8));
                appendStringInfoString(&__s1, v1084);
                v1085 = *(v1080 + 4);
                if (v1083 + v1081)
                {
                  v1086 = v1083 + v1081 >= (*(v1080 + 16) + 8 * v1085);
                }

                else
                {
                  v1086 = 1;
                }

                if (!v1086)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1085 = *(v1080 + 4);
                }

                ++v1082;
                v1081 += 8;
              }

              while (v1082 < v1085);
            }

            goto LABEL_2259;
          case 0x2C:
            appendStringInfoString(&__s1, "TEXT SEARCH DICTIONARY ");
            v1104 = *(v19 + 16);
            if (v1104 && *(v1104 + 4) >= 1)
            {
              v1105 = 8;
              v1106 = 0;
              do
              {
                v1107 = *(v1104 + 16);
                v1108 = quote_identifier(*(*(v1107 + 8 * v1106) + 8));
                appendStringInfoString(&__s1, v1108);
                v1109 = *(v1104 + 4);
                if (v1107 + v1105)
                {
                  v1110 = v1107 + v1105 >= (*(v1104 + 16) + 8 * v1109);
                }

                else
                {
                  v1110 = 1;
                }

                if (!v1110)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1109 = *(v1104 + 4);
                }

                ++v1106;
                v1105 += 8;
              }

              while (v1106 < v1109);
            }

            goto LABEL_2259;
          case 0x2F:
            appendStringInfoString(&__s1, "TYPE ");
            v1096 = *(v19 + 16);
            if (v1096 && *(v1096 + 4) >= 1)
            {
              v1097 = 8;
              v1098 = 0;
              do
              {
                v1099 = *(v1096 + 16);
                v1100 = quote_identifier(*(*(v1099 + 8 * v1098) + 8));
                appendStringInfoString(&__s1, v1100);
                v1101 = *(v1096 + 4);
                if (v1099 + v1097)
                {
                  v1102 = v1099 + v1097 >= (*(v1096 + 16) + 8 * v1101);
                }

                else
                {
                  v1102 = 1;
                }

                if (!v1102)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1101 = *(v1096 + 4);
                }

                ++v1098;
                v1097 += 8;
              }

              while (v1098 < v1101);
            }

            goto LABEL_2259;
          default:
            goto LABEL_2259;
        }

      case 0x12F:
        appendStringInfoString(&__s1, "ALTER OPERATOR ");
        deparseOperatorWithArgtypes(&__s1, *(v19 + 8));
        appendStringInfoString(&__s1, " SET (");
        deparseOperatorDefList(&__s1, *(v19 + 16));
        goto LABEL_349;
      case 0x130:
        appendStringInfoString(&__s1, "ALTER TYPE ");
        v79 = *(v19 + 8);
        if (v79 && *(v79 + 4) >= 1)
        {
          v80 = 8;
          v81 = 0;
          do
          {
            v82 = *(v79 + 16);
            v83 = quote_identifier(*(*(v82 + 8 * v81) + 8));
            appendStringInfoString(&__s1, v83);
            v84 = *(v79 + 4);
            if (v82 + v80)
            {
              v85 = v82 + v80 >= (*(v79 + 16) + 8 * v84);
            }

            else
            {
              v85 = 1;
            }

            if (!v85)
            {
              appendStringInfoChar(&__s1, 46);
              v84 = *(v79 + 4);
            }

            ++v81;
            v80 += 8;
          }

          while (v81 < v84);
        }

        appendStringInfoString(&__s1, " SET (");
        deparseOperatorDefList(&__s1, *(v20 + 16));
        appendStringInfoChar(&__s1, 41);
        v9 = v1242;
        goto LABEL_2447;
      case 0x131:
        appendStringInfoString(&__s1, "DROP OWNED BY ");
        v468 = *(v19 + 8);
        if (!v468 || *(v468 + 4) < 1)
        {
          goto LABEL_853;
        }

        v469 = 8;
        v470 = 0;
        while (1)
        {
          v471 = *(v468 + 16);
          v472 = *(v471 + 8 * v470);
          v473 = *(v472 + 4);
          if (v473 > 1)
          {
            if (v473 == 2)
            {
              v474 = "SESSION_USER";
              goto LABEL_847;
            }

            if (v473 == 3)
            {
              v474 = "public";
              goto LABEL_847;
            }
          }

          else
          {
            if (!v473)
            {
              v474 = quote_identifier(*(v472 + 8));
              goto LABEL_847;
            }

            if (v473 == 1)
            {
              v474 = "CURRENT_USER";
LABEL_847:
              appendStringInfoString(&__s1, v474);
            }
          }

          v475 = *(v468 + 4);
          if (v471 + v469)
          {
            v476 = v471 + v469 >= (*(v468 + 16) + 8 * v475);
          }

          else
          {
            v476 = 1;
          }

          if (!v476)
          {
            appendStringInfoString(&__s1, ", ");
            v475 = *(v468 + 4);
          }

          ++v470;
          v469 += 8;
          if (v470 >= v475)
          {
LABEL_853:
            appendStringInfoChar(&__s1, 32);
            if (*(v20 + 16) == 1)
            {
              appendStringInfoString(&__s1, "CASCADE ");
            }

LABEL_1802:
            v374 = v1246 - 1;
            v9 = v1242;
            if (v1246 >= 1)
            {
              goto LABEL_2445;
            }

            goto LABEL_2447;
          }
        }

      case 0x132:
        appendStringInfoString(&__s1, "REASSIGN OWNED BY ");
        v56 = *(v19 + 8);
        if (!v56 || *(v56 + 4) < 1)
        {
          goto LABEL_86;
        }

        v57 = 8;
        v58 = 0;
        while (1)
        {
          v59 = *(v56 + 16);
          v60 = *(v59 + 8 * v58);
          v61 = *(v60 + 4);
          if (v61 > 1)
          {
            if (v61 == 2)
            {
              v62 = "SESSION_USER";
              goto LABEL_80;
            }

            if (v61 == 3)
            {
              v62 = "public";
              goto LABEL_80;
            }
          }

          else
          {
            if (!v61)
            {
              v62 = quote_identifier(*(v60 + 8));
              goto LABEL_80;
            }

            if (v61 == 1)
            {
              v62 = "CURRENT_USER";
LABEL_80:
              appendStringInfoString(&__s1, v62);
            }
          }

          v63 = *(v56 + 4);
          if (v59 + v57)
          {
            v64 = v59 + v57 >= (*(v56 + 16) + 8 * v63);
          }

          else
          {
            v64 = 1;
          }

          if (!v64)
          {
            appendStringInfoString(&__s1, ", ");
            v63 = *(v56 + 4);
          }

          ++v58;
          v57 += 8;
          if (v58 >= v63)
          {
LABEL_86:
            appendStringInfoChar(&__s1, 32);
            appendStringInfoString(&__s1, "TO ");
            v65 = *(v20 + 16);
            v66 = *(v65 + 4);
            if (v66 > 1)
            {
LABEL_2264:
              v9 = v1242;
              if (v66 == 2)
              {
                v28 = "SESSION_USER";
              }

              else
              {
                if (v66 != 3)
                {
                  goto LABEL_2447;
                }

                v28 = "public";
              }
            }

            else
            {
              v9 = v1242;
              if (v66)
              {
LABEL_88:
                if (v66 != 1)
                {
                  goto LABEL_2447;
                }

                v28 = "CURRENT_USER";
                goto LABEL_2263;
              }

LABEL_2261:
              v179 = *(v65 + 8);
LABEL_2262:
              v28 = quote_identifier(v179);
            }

LABEL_2263:
            appendStringInfoString(&__s1, v28);
            goto LABEL_2447;
          }
        }

      case 0x133:
        appendStringInfoString(&__s1, "CREATE TYPE ");
        deparseRangeVar(&__s1, *(v19 + 8), 8);
        appendStringInfoString(&__s1, " AS (");
        v352 = *(v19 + 16);
        if (v352 && *(v352 + 4) >= 1)
        {
          v353 = 8;
          v354 = 0;
          do
          {
            v355 = *(v352 + 16);
            deparseColumnDef(&__s1, *(v355 + 8 * v354));
            if (v355 + v353)
            {
              v356 = v355 + v353 >= (*(*(v20 + 16) + 16) + 8 * *(*(v20 + 16) + 4));
            }

            else
            {
              v356 = 1;
            }

            if (!v356)
            {
              appendStringInfoString(&__s1, ", ");
            }

            ++v354;
            v353 += 8;
          }

          while (v354 < *(v352 + 4));
        }

        goto LABEL_720;
      case 0x134:
        appendStringInfoString(&__s1, "CREATE TYPE ");
        v400 = *(v19 + 8);
        if (v400 && *(v400 + 4) >= 1)
        {
          v401 = 8;
          v402 = 0;
          do
          {
            v403 = *(v400 + 16);
            v404 = quote_identifier(*(*(v403 + 8 * v402) + 8));
            appendStringInfoString(&__s1, v404);
            v405 = *(v400 + 4);
            if (v403 + v401)
            {
              v406 = v403 + v401 >= (*(v400 + 16) + 8 * v405);
            }

            else
            {
              v406 = 1;
            }

            if (!v406)
            {
              appendStringInfoChar(&__s1, 46);
              v405 = *(v400 + 4);
            }

            ++v402;
            v401 += 8;
          }

          while (v402 < v405);
        }

        appendStringInfoString(&__s1, " AS ENUM (");
        v407 = *(v20 + 16);
        if (v407 && *(v407 + 4) >= 1)
        {
          v408 = 8;
          v409 = 0;
          do
          {
            v410 = *(v407 + 16);
            deparseStringLiteral(&__s1, *(*(v410 + 8 * v409) + 8));
            if (v410 + v408)
            {
              v411 = v410 + v408 >= (*(*(v20 + 16) + 16) + 8 * *(*(v20 + 16) + 4));
            }

            else
            {
              v411 = 1;
            }

            if (!v411)
            {
              appendStringInfoString(&__s1, ", ");
            }

            ++v409;
            v408 += 8;
          }

          while (v409 < *(v407 + 4));
        }

LABEL_720:
        appendStringInfoChar(&__s1, 41);
        v9 = v1242;
        goto LABEL_2447;
      case 0x135:
        appendStringInfoString(&__s1, "CREATE TYPE ");
        v414 = *(v19 + 8);
        if (v414 && *(v414 + 4) >= 1)
        {
          v415 = 8;
          v416 = 0;
          do
          {
            v417 = *(v414 + 16);
            v418 = quote_identifier(*(*(v417 + 8 * v416) + 8));
            appendStringInfoString(&__s1, v418);
            v419 = *(v414 + 4);
            if (v417 + v415)
            {
              v420 = v417 + v415 >= (*(v414 + 16) + 8 * v419);
            }

            else
            {
              v420 = 1;
            }

            if (!v420)
            {
              appendStringInfoChar(&__s1, 46);
              v419 = *(v414 + 4);
            }

            ++v416;
            v415 += 8;
          }

          while (v416 < v419);
        }

        appendStringInfoString(&__s1, " AS RANGE ");
        deparseDefinition(&__s1, *(v20 + 16));
        v9 = v1242;
        goto LABEL_2447;
      case 0x136:
        appendStringInfoString(&__s1, "ALTER TYPE ");
        v67 = *(v19 + 8);
        if (v67 && *(v67 + 4) >= 1)
        {
          v68 = 8;
          v69 = 0;
          do
          {
            v70 = *(v67 + 16);
            v71 = quote_identifier(*(*(v70 + 8 * v69) + 8));
            appendStringInfoString(&__s1, v71);
            v72 = *(v67 + 4);
            if (v70 + v68)
            {
              v73 = v70 + v68 >= (*(v67 + 16) + 8 * v72);
            }

            else
            {
              v73 = 1;
            }

            if (!v73)
            {
              appendStringInfoChar(&__s1, 46);
              v72 = *(v67 + 4);
            }

            ++v69;
            v68 += 8;
          }

          while (v69 < v72);
        }

        appendStringInfoChar(&__s1, 32);
        if (*(v19 + 16))
        {
          appendStringInfoString(&__s1, "RENAME VALUE ");
          deparseStringLiteral(&__s1, *(v19 + 16));
          appendStringInfoString(&__s1, " TO ");
          v74 = (v19 + 24);
          v6 = v1244;
          v9 = v1242;
        }

        else
        {
          appendStringInfoString(&__s1, "ADD VALUE ");
          if (*(v19 + 41) == 1)
          {
            appendStringInfoString(&__s1, "IF NOT EXISTS ");
          }

          deparseStringLiteral(&__s1, *(v19 + 24));
          appendStringInfoChar(&__s1, 32);
          v6 = v1244;
          v9 = v1242;
          if (!*(v19 + 32))
          {
            goto LABEL_2444;
          }

          if (*(v19 + 40))
          {
            v600 = "AFTER ";
          }

          else
          {
            v600 = "BEFORE ";
          }

          appendStringInfoString(&__s1, v600);
          v74 = (v19 + 32);
        }

        deparseStringLiteral(&__s1, *v74);
        goto LABEL_2444;
      case 0x137:
        appendStringInfoString(&__s1, "ALTER TEXT SEARCH DICTIONARY ");
        v180 = *(v19 + 8);
        if (v180 && *(v180 + 4) >= 1)
        {
          v181 = 8;
          v182 = 0;
          do
          {
            v183 = *(v180 + 16);
            v184 = quote_identifier(*(*(v183 + 8 * v182) + 8));
            appendStringInfoString(&__s1, v184);
            v185 = *(v180 + 4);
            if (v183 + v181)
            {
              v186 = v183 + v181 >= (*(v180 + 16) + 8 * v185);
            }

            else
            {
              v186 = 1;
            }

            if (!v186)
            {
              appendStringInfoChar(&__s1, 46);
              v185 = *(v180 + 4);
            }

            ++v182;
            v181 += 8;
          }

          while (v182 < v185);
        }

        appendStringInfoChar(&__s1, 32);
        deparseDefinition(&__s1, *(v20 + 16));
        v9 = v1242;
        goto LABEL_2447;
      case 0x138:
        appendStringInfoString(&__s1, "ALTER TEXT SEARCH CONFIGURATION ");
        v525 = *(v19 + 8);
        if (v525 && *(v525 + 4) >= 1)
        {
          v526 = 8;
          v527 = 0;
          do
          {
            v528 = *(v525 + 16);
            v529 = quote_identifier(*(*(v528 + 8 * v527) + 8));
            appendStringInfoString(&__s1, v529);
            v530 = *(v525 + 4);
            if (v528 + v526)
            {
              v531 = v528 + v526 >= (*(v525 + 16) + 8 * v530);
            }

            else
            {
              v531 = 1;
            }

            if (!v531)
            {
              appendStringInfoChar(&__s1, 46);
              v530 = *(v525 + 4);
            }

            ++v527;
            v526 += 8;
          }

          while (v527 < v530);
        }

        appendStringInfoChar(&__s1, 32);
        v532 = *(v20 + 4);
        if (v532 <= 1)
        {
          if (v532)
          {
            v9 = v1242;
            if (v532 != 1)
            {
              goto LABEL_2447;
            }

            appendStringInfoString(&__s1, "ALTER MAPPING FOR ");
            v558 = *(v20 + 16);
            if (v558 && *(v558 + 4) >= 1)
            {
              v559 = 8;
              v560 = 0;
              do
              {
                v561 = *(v558 + 16);
                v562 = quote_identifier(*(*(v561 + 8 * v560) + 8));
                appendStringInfoString(&__s1, v562);
                v563 = *(v558 + 4);
                if (v561 + v559)
                {
                  v564 = v561 + v559 >= (*(v558 + 16) + 8 * v563);
                }

                else
                {
                  v564 = 1;
                }

                if (!v564)
                {
                  appendStringInfoString(&__s1, ", ");
                  v563 = *(v558 + 4);
                }

                ++v560;
                v559 += 8;
              }

              while (v560 < v563);
            }
          }

          else
          {
            appendStringInfoString(&__s1, "ADD MAPPING FOR ");
            v749 = *(v20 + 16);
            if (v749 && *(v749 + 4) >= 1)
            {
              v750 = 8;
              v751 = 0;
              do
              {
                v752 = *(v749 + 16);
                v753 = quote_identifier(*(*(v752 + 8 * v751) + 8));
                appendStringInfoString(&__s1, v753);
                v754 = *(v749 + 4);
                if (v752 + v750)
                {
                  v755 = v752 + v750 >= (*(v749 + 16) + 8 * v754);
                }

                else
                {
                  v755 = 1;
                }

                if (!v755)
                {
                  appendStringInfoString(&__s1, ", ");
                  v754 = *(v749 + 4);
                }

                ++v751;
                v750 += 8;
              }

              while (v751 < v754);
            }
          }

          appendStringInfoString(&__s1, " WITH ");
          deparseAnyNameList(&__s1, *(v20 + 24));
          v9 = v1242;
        }

        else if (v532 == 2)
        {
          appendStringInfoString(&__s1, "ALTER MAPPING REPLACE ");
          v714 = **(*(v20 + 24) + 16);
          if (v714 && *(v714 + 4) >= 1)
          {
            v715 = 8;
            v716 = 0;
            do
            {
              v717 = *(v714 + 16);
              v718 = quote_identifier(*(*(v717 + 8 * v716) + 8));
              appendStringInfoString(&__s1, v718);
              v719 = *(v714 + 4);
              if (v717 + v715)
              {
                v720 = v717 + v715 >= (*(v714 + 16) + 8 * v719);
              }

              else
              {
                v720 = 1;
              }

              if (!v720)
              {
                appendStringInfoChar(&__s1, 46);
                v719 = *(v714 + 4);
              }

              ++v716;
              v715 += 8;
            }

            while (v716 < v719);
          }

          appendStringInfoString(&__s1, " WITH ");
          v721 = *(*(*(v20 + 24) + 16) + 8);
          v9 = v1242;
          if (v721 && *(v721 + 4) >= 1)
          {
            v722 = 8;
            v723 = 0;
            do
            {
              v724 = *(v721 + 16);
              v725 = quote_identifier(*(*(v724 + 8 * v723) + 8));
              appendStringInfoString(&__s1, v725);
              v726 = *(v721 + 4);
              if (v724 + v722)
              {
                v727 = v724 + v722 >= (*(v721 + 16) + 8 * v726);
              }

              else
              {
                v727 = 1;
              }

              if (!v727)
              {
                appendStringInfoChar(&__s1, 46);
                v726 = *(v721 + 4);
              }

              ++v723;
              v722 += 8;
            }

            while (v723 < v726);
          }
        }

        else if (v532 == 3)
        {
          appendStringInfoString(&__s1, "ALTER MAPPING FOR ");
          v728 = *(v20 + 16);
          if (v728 && *(v728 + 4) >= 1)
          {
            v729 = 8;
            v730 = 0;
            do
            {
              v731 = *(v728 + 16);
              v732 = quote_identifier(*(*(v731 + 8 * v730) + 8));
              appendStringInfoString(&__s1, v732);
              v733 = *(v728 + 4);
              if (v731 + v729)
              {
                v734 = v731 + v729 >= (*(v728 + 16) + 8 * v733);
              }

              else
              {
                v734 = 1;
              }

              if (!v734)
              {
                appendStringInfoString(&__s1, ", ");
                v733 = *(v728 + 4);
              }

              ++v730;
              v729 += 8;
            }

            while (v730 < v733);
          }

          appendStringInfoString(&__s1, " REPLACE ");
          v735 = **(*(v20 + 24) + 16);
          if (v735 && *(v735 + 4) >= 1)
          {
            v736 = 8;
            v737 = 0;
            do
            {
              v738 = *(v735 + 16);
              v739 = quote_identifier(*(*(v738 + 8 * v737) + 8));
              appendStringInfoString(&__s1, v739);
              v740 = *(v735 + 4);
              if (v738 + v736)
              {
                v741 = v738 + v736 >= (*(v735 + 16) + 8 * v740);
              }

              else
              {
                v741 = 1;
              }

              if (!v741)
              {
                appendStringInfoChar(&__s1, 46);
                v740 = *(v735 + 4);
              }

              ++v737;
              v736 += 8;
            }

            while (v737 < v740);
          }

          appendStringInfoString(&__s1, " WITH ");
          v742 = *(*(*(v20 + 24) + 16) + 8);
          v9 = v1242;
          if (v742 && *(v742 + 4) >= 1)
          {
            v743 = 8;
            v744 = 0;
            do
            {
              v745 = *(v742 + 16);
              v746 = quote_identifier(*(*(v745 + 8 * v744) + 8));
              appendStringInfoString(&__s1, v746);
              v747 = *(v742 + 4);
              if (v745 + v743)
              {
                v748 = v745 + v743 >= (*(v742 + 16) + 8 * v747);
              }

              else
              {
                v748 = 1;
              }

              if (!v748)
              {
                appendStringInfoChar(&__s1, 46);
                v747 = *(v742 + 4);
              }

              ++v744;
              v743 += 8;
            }

            while (v744 < v747);
          }
        }

        else
        {
          v9 = v1242;
          if (v532 == 4)
          {
            appendStringInfoString(&__s1, "DROP MAPPING ");
            if (*(v20 + 34) == 1)
            {
              appendStringInfoString(&__s1, "IF EXISTS ");
            }

            appendStringInfoString(&__s1, "FOR ");
            v533 = *(v20 + 16);
            if (v533 && *(v533 + 4) >= 1)
            {
              v534 = 8;
              v535 = 0;
              do
              {
                v536 = *(v533 + 16);
                v537 = quote_identifier(*(*(v536 + 8 * v535) + 8));
                appendStringInfoString(&__s1, v537);
                v538 = *(v533 + 4);
                if (v536 + v534)
                {
                  v539 = v536 + v534 >= (*(v533 + 16) + 8 * v538);
                }

                else
                {
                  v539 = 1;
                }

                if (!v539)
                {
                  appendStringInfoString(&__s1, ", ");
                  v538 = *(v533 + 4);
                }

                ++v535;
                v534 += 8;
              }

              while (v535 < v538);
            }
          }
        }

        goto LABEL_2447;
      case 0x139:
        appendStringInfoString(&__s1, "CREATE FOREIGN DATA WRAPPER ");
        v424 = quote_identifier(*(v19 + 8));
        appendStringInfoString(&__s1, v424);
        appendStringInfoChar(&__s1, 32);
        v425 = *(v19 + 16);
        if (v425 && *(v425 + 4) >= 1)
        {
          deparseFdwOptions(&__s1, v425);
          appendStringInfoChar(&__s1, 32);
        }

        deparseCreateGenericOptions(&__s1, *(v19 + 24));
        goto LABEL_2444;
      case 0x13A:
        appendStringInfoString(&__s1, "ALTER FOREIGN DATA WRAPPER ");
        v523 = quote_identifier(*(v19 + 8));
        appendStringInfoString(&__s1, v523);
        appendStringInfoChar(&__s1, 32);
        v524 = *(v19 + 16);
        if (!v524 || *(v524 + 4) < 1)
        {
          goto LABEL_1399;
        }

        deparseFdwOptions(&__s1, v524);
        goto LABEL_1398;
      case 0x13B:
        appendStringInfoString(&__s1, "CREATE SERVER ");
        if (*(v19 + 40) == 1)
        {
          appendStringInfoString(&__s1, "IF NOT EXISTS ");
        }

        v77 = quote_identifier(*(v19 + 8));
        appendStringInfoString(&__s1, v77);
        appendStringInfoChar(&__s1, 32);
        if (*(v19 + 16))
        {
          appendStringInfoString(&__s1, "TYPE ");
          deparseStringLiteral(&__s1, *(v19 + 16));
          appendStringInfoChar(&__s1, 32);
        }

        if (*(v19 + 24))
        {
          appendStringInfoString(&__s1, "VERSION ");
          deparseStringLiteral(&__s1, *(v19 + 24));
          appendStringInfoChar(&__s1, 32);
        }

        appendStringInfoString(&__s1, "FOREIGN DATA WRAPPER ");
        v78 = quote_identifier(*(v19 + 32));
        appendStringInfoString(&__s1, v78);
        appendStringInfoChar(&__s1, 32);
        deparseCreateGenericOptions(&__s1, *(v19 + 48));
        goto LABEL_2444;
      case 0x13C:
        appendStringInfoString(&__s1, "ALTER SERVER ");
        v133 = quote_identifier(*(v19 + 8));
        appendStringInfoString(&__s1, v133);
        appendStringInfoChar(&__s1, 32);
        if (*(v19 + 32) != 1)
        {
          goto LABEL_1399;
        }

        appendStringInfoString(&__s1, "VERSION ");
        v134 = *(v19 + 16);
        if (v134)
        {
          deparseStringLiteral(&__s1, v134);
        }

        else
        {
          appendStringInfoString(&__s1, "NULL");
        }

LABEL_1398:
        appendStringInfoChar(&__s1, 32);
LABEL_1399:
        v436 = *(v19 + 24);
        if (v436)
        {
LABEL_1400:
          if (*(v436 + 4) >= 1)
          {
            deparseAlterGenericOptions(&__s1, v436);
          }
        }

        goto LABEL_2444;
      case 0x13D:
        appendStringInfoString(&__s1, "CREATE USER MAPPING ");
        if (*(v19 + 24) == 1)
        {
          appendStringInfoString(&__s1, "IF NOT EXISTS ");
        }

        appendStringInfoString(&__s1, "FOR ");
        v126 = *(v19 + 8);
        v127 = *(v126 + 4);
        if (v127 > 1)
        {
          if (v127 == 2)
          {
            v128 = "SESSION_USER";
          }

          else
          {
            if (v127 != 3)
            {
              goto LABEL_1328;
            }

            v128 = "public";
          }
        }

        else if (v127)
        {
          if (v127 != 1)
          {
            goto LABEL_1328;
          }

          v128 = "CURRENT_USER";
        }

        else
        {
          v128 = quote_identifier(*(v126 + 8));
        }

        appendStringInfoString(&__s1, v128);
LABEL_1328:
        appendStringInfoChar(&__s1, 32);
        appendStringInfoString(&__s1, "SERVER ");
        v673 = quote_identifier(*(v19 + 16));
        appendStringInfoString(&__s1, v673);
        appendStringInfoChar(&__s1, 32);
        deparseCreateGenericOptions(&__s1, *(v19 + 32));
        v374 = v1246 - 1;
        if (v1246 < 1)
        {
          goto LABEL_2447;
        }

        goto LABEL_2445;
      case 0x13E:
        appendStringInfoString(&__s1, "ALTER USER MAPPING FOR ");
        v509 = *(v19 + 8);
        v510 = *(v509 + 4);
        if (v510 > 1)
        {
          if (v510 == 2)
          {
            v511 = "SESSION_USER";
          }

          else
          {
            if (v510 != 3)
            {
              goto LABEL_1345;
            }

            v511 = "public";
          }
        }

        else if (v510)
        {
          if (v510 != 1)
          {
            goto LABEL_1345;
          }

          v511 = "CURRENT_USER";
        }

        else
        {
          v511 = quote_identifier(*(v509 + 8));
        }

        appendStringInfoString(&__s1, v511);
LABEL_1345:
        appendStringInfoChar(&__s1, 32);
        appendStringInfoString(&__s1, "SERVER ");
        v676 = quote_identifier(*(v19 + 16));
        appendStringInfoString(&__s1, v676);
        appendStringInfoChar(&__s1, 32);
        deparseAlterGenericOptions(&__s1, *(v19 + 24));
        goto LABEL_2444;
      case 0x13F:
        appendStringInfoString(&__s1, "DROP USER MAPPING ");
        if (*(v19 + 24) == 1)
        {
          appendStringInfoString(&__s1, "IF EXISTS ");
        }

        appendStringInfoString(&__s1, "FOR ");
        v506 = *(v19 + 8);
        v507 = *(v506 + 4);
        if (v507 > 1)
        {
          if (v507 == 2)
          {
            v508 = "SESSION_USER";
          }

          else
          {
            if (v507 != 3)
            {
              goto LABEL_1341;
            }

            v508 = "public";
          }
        }

        else if (v507)
        {
          if (v507 != 1)
          {
            goto LABEL_1341;
          }

          v508 = "CURRENT_USER";
        }

        else
        {
          v508 = quote_identifier(*(v506 + 8));
        }

        appendStringInfoString(&__s1, v508);
LABEL_1341:
        appendStringInfoChar(&__s1, 32);
        appendStringInfoString(&__s1, "SERVER ");
        v179 = *(v19 + 16);
        goto LABEL_2262;
      case 0x140:
        appendStringInfoString(&__s1, "ALTER TABLESPACE ");
        v234 = quote_identifier(*(v19 + 8));
        appendStringInfoString(&__s1, v234);
        appendStringInfoChar(&__s1, 32);
        if (*(v19 + 24))
        {
          v235 = "RESET ";
        }

        else
        {
          v235 = "SET ";
        }

        appendStringInfoString(&__s1, v235);
        deparseRelOptions(&__s1, *(v19 + 16));
        goto LABEL_2447;
      case 0x142:
        appendStringInfoString(&__s1, "SECURITY LABEL ");
        if (*(v19 + 16))
        {
          appendStringInfoString(&__s1, "FOR ");
          v236 = quote_identifier(*(v19 + 16));
          appendStringInfoString(&__s1, v236);
          appendStringInfoChar(&__s1, 32);
        }

        appendStringInfoString(&__s1, "ON ");
        switch(*(v19 + 4))
        {
          case 1:
            appendStringInfoString(&__s1, "AGGREGATE ");
            deparseAggregateWithArgtypes(&__s1, *(v19 + 8));
            break;
          case 6:
            appendStringInfoString(&__s1, "COLUMN ");
            v957 = *(v19 + 8);
            if (v957 && *(v957 + 4) >= 1)
            {
              v958 = 8;
              v959 = 0;
              do
              {
                v960 = *(v957 + 16);
                v961 = quote_identifier(*(*(v960 + 8 * v959) + 8));
                appendStringInfoString(&__s1, v961);
                v962 = *(v957 + 4);
                if (v960 + v958)
                {
                  v963 = v960 + v958 >= (*(v957 + 16) + 8 * v962);
                }

                else
                {
                  v963 = 1;
                }

                if (!v963)
                {
                  appendStringInfoChar(&__s1, 46);
                  v962 = *(v957 + 4);
                }

                ++v959;
                v958 += 8;
              }

              while (v959 < v962);
            }

            break;
          case 9:
            v947 = "DATABASE ";
            goto LABEL_2026;
          case 0xC:
            v949 = "DOMAIN ";
            goto LABEL_2004;
          case 0xE:
            v947 = "EVENT TRIGGER ";
            goto LABEL_2026;
          case 0x12:
            appendStringInfoString(&__s1, "FOREIGN TABLE ");
            v950 = *(v19 + 8);
            if (v950 && *(v950 + 4) >= 1)
            {
              v951 = 8;
              v952 = 0;
              do
              {
                v953 = *(v950 + 16);
                v954 = quote_identifier(*(*(v953 + 8 * v952) + 8));
                appendStringInfoString(&__s1, v954);
                v955 = *(v950 + 4);
                if (v953 + v951)
                {
                  v956 = v953 + v951 >= (*(v950 + 16) + 8 * v955);
                }

                else
                {
                  v956 = 1;
                }

                if (!v956)
                {
                  appendStringInfoChar(&__s1, 46);
                  v955 = *(v950 + 4);
                }

                ++v952;
                v951 += 8;
              }

              while (v952 < v955);
            }

            break;
          case 0x13:
            v948 = "FUNCTION ";
            goto LABEL_1990;
          case 0x15:
            v947 = "LANGUAGE ";
            goto LABEL_2026;
          case 0x16:
            appendStringInfoString(&__s1, "LARGE OBJECT ");
            deparseValue(&__s1, *(v19 + 8), 11);
            break;
          case 0x17:
            appendStringInfoString(&__s1, "MATERIALIZED VIEW ");
            v971 = *(v19 + 8);
            if (v971 && *(v971 + 4) >= 1)
            {
              v972 = 8;
              v973 = 0;
              do
              {
                v974 = *(v971 + 16);
                v975 = quote_identifier(*(*(v974 + 8 * v973) + 8));
                appendStringInfoString(&__s1, v975);
                v976 = *(v971 + 4);
                if (v974 + v972)
                {
                  v977 = v974 + v972 >= (*(v971 + 16) + 8 * v976);
                }

                else
                {
                  v977 = 1;
                }

                if (!v977)
                {
                  appendStringInfoChar(&__s1, 46);
                  v976 = *(v971 + 4);
                }

                ++v973;
                v972 += 8;
              }

              while (v973 < v976);
            }

            break;
          case 0x1C:
            v948 = "PROCEDURE ";
            goto LABEL_1990;
          case 0x1D:
            v947 = "PUBLICATION ";
            goto LABEL_2026;
          case 0x1F:
            v947 = "ROLE ";
            goto LABEL_2026;
          case 0x20:
            v948 = "ROUTINE ";
LABEL_1990:
            appendStringInfoString(&__s1, v948);
            deparseFunctionWithArgtypes(&__s1, *(v19 + 8));
            break;
          case 0x22:
            v947 = "SCHEMA ";
            goto LABEL_2026;
          case 0x23:
            appendStringInfoString(&__s1, "SEQUENCE ");
            v964 = *(v19 + 8);
            if (v964 && *(v964 + 4) >= 1)
            {
              v965 = 8;
              v966 = 0;
              do
              {
                v967 = *(v964 + 16);
                v968 = quote_identifier(*(*(v967 + 8 * v966) + 8));
                appendStringInfoString(&__s1, v968);
                v969 = *(v964 + 4);
                if (v967 + v965)
                {
                  v970 = v967 + v965 >= (*(v964 + 16) + 8 * v969);
                }

                else
                {
                  v970 = 1;
                }

                if (!v970)
                {
                  appendStringInfoChar(&__s1, 46);
                  v969 = *(v964 + 4);
                }

                ++v966;
                v965 += 8;
              }

              while (v966 < v969);
            }

            break;
          case 0x24:
            v947 = "SUBSCRIPTION ";
            goto LABEL_2026;
          case 0x27:
            appendStringInfoString(&__s1, "TABLE ");
            v978 = *(v19 + 8);
            if (v978 && *(v978 + 4) >= 1)
            {
              v979 = 8;
              v980 = 0;
              do
              {
                v981 = *(v978 + 16);
                v982 = quote_identifier(*(*(v981 + 8 * v980) + 8));
                appendStringInfoString(&__s1, v982);
                v983 = *(v978 + 4);
                if (v981 + v979)
                {
                  v984 = v981 + v979 >= (*(v978 + 16) + 8 * v983);
                }

                else
                {
                  v984 = 1;
                }

                if (!v984)
                {
                  appendStringInfoChar(&__s1, 46);
                  v983 = *(v978 + 4);
                }

                ++v980;
                v979 += 8;
              }

              while (v980 < v983);
            }

            break;
          case 0x28:
            v947 = "TABLESPACE ";
LABEL_2026:
            appendStringInfoString(&__s1, v947);
            v985 = quote_identifier(*(*(v19 + 8) + 8));
            appendStringInfoString(&__s1, v985);
            break;
          case 0x2F:
            v949 = "TYPE ";
LABEL_2004:
            appendStringInfoString(&__s1, v949);
            deparseTypeName(&__s1, *(v19 + 8));
            break;
          case 0x31:
            appendStringInfoString(&__s1, "VIEW ");
            v987 = *(v19 + 8);
            if (v987 && *(v987 + 4) >= 1)
            {
              v988 = 8;
              v989 = 0;
              do
              {
                v990 = *(v987 + 16);
                v991 = quote_identifier(*(*(v990 + 8 * v989) + 8));
                appendStringInfoString(&__s1, v991);
                v992 = *(v987 + 4);
                if (v990 + v988)
                {
                  v993 = v990 + v988 >= (*(v987 + 16) + 8 * v992);
                }

                else
                {
                  v993 = 1;
                }

                if (!v993)
                {
                  appendStringInfoChar(&__s1, 46);
                  v992 = *(v987 + 4);
                }

                ++v989;
                v988 += 8;
              }

              while (v989 < v992);
            }

            break;
          default:
            break;
        }

        appendStringInfoString(&__s1, " IS ");
        v986 = *(v20 + 24);
        if (v986)
        {
          deparseStringLiteral(&__s1, v986);
        }

        else
        {
          appendStringInfoString(&__s1, "NULL");
        }

        v9 = v1242;
        goto LABEL_2447;
      case 0x143:
        deparseCreateStmt(&__s1, v19, 1);
        appendStringInfoString(&__s1, " SERVER ");
        v435 = quote_identifier(*(v19 + 104));
        appendStringInfoString(&__s1, v435);
        appendStringInfoChar(&__s1, 32);
        v436 = *(v19 + 112);
        if (!v436)
        {
          goto LABEL_2444;
        }

        goto LABEL_1400;
      case 0x144:
        appendStringInfoString(&__s1, "IMPORT FOREIGN SCHEMA ");
        appendStringInfoString(&__s1, *(v19 + 16));
        appendStringInfoChar(&__s1, 32);
        v49 = *(v19 + 32);
        if (v49 == 2)
        {
          appendStringInfoString(&__s1, "EXCEPT (");
          v610 = *(v19 + 40);
          if (v610 && *(v610 + 4) >= 1)
          {
            v611 = 8;
            v612 = 0;
            do
            {
              v613 = *(v610 + 16);
              deparseRangeVar(&__s1, *(v613 + 8 * v612), 0);
              v614 = *(v610 + 4);
              if (v613 + v611)
              {
                v615 = v613 + v611 >= (*(v610 + 16) + 8 * v614);
              }

              else
              {
                v615 = 1;
              }

              if (!v615)
              {
                appendStringInfoString(&__s1, ", ");
                v614 = *(v610 + 4);
              }

              ++v612;
              v611 += 8;
            }

            while (v612 < v614);
          }
        }

        else
        {
          if (v49 != 1)
          {
            goto LABEL_1172;
          }

          appendStringInfoString(&__s1, "LIMIT TO (");
          v50 = *(v19 + 40);
          if (v50 && *(v50 + 4) >= 1)
          {
            v51 = 8;
            v52 = 0;
            do
            {
              v53 = *(v50 + 16);
              deparseRangeVar(&__s1, *(v53 + 8 * v52), 0);
              v54 = *(v50 + 4);
              if (v53 + v51)
              {
                v55 = v53 + v51 >= (*(v50 + 16) + 8 * v54);
              }

              else
              {
                v55 = 1;
              }

              if (!v55)
              {
                appendStringInfoString(&__s1, ", ");
                v54 = *(v50 + 4);
              }

              ++v52;
              v51 += 8;
            }

            while (v52 < v54);
          }
        }

        appendStringInfoString(&__s1, ") ");
        v9 = v1242;
LABEL_1172:
        appendStringInfoString(&__s1, "FROM SERVER ");
        v616 = quote_identifier(*(v20 + 8));
        appendStringInfoString(&__s1, v616);
        appendStringInfoChar(&__s1, 32);
        appendStringInfoString(&__s1, "INTO ");
        v617 = quote_identifier(*(v20 + 24));
        appendStringInfoString(&__s1, v617);
        appendStringInfoChar(&__s1, 32);
        deparseCreateGenericOptions(&__s1, *(v20 + 48));
        v374 = v1246 - 1;
        if (v1246 < 1)
        {
          goto LABEL_2447;
        }

        goto LABEL_2445;
      case 0x145:
        appendStringInfoString(&__s1, "CREATE EXTENSION ");
        if (*(v19 + 16) == 1)
        {
          appendStringInfoString(&__s1, "IF NOT EXISTS ");
        }

        v498 = quote_identifier(*(v19 + 8));
        appendStringInfoString(&__s1, v498);
        appendStringInfoChar(&__s1, 32);
        v499 = *(v19 + 24);
        if (!v499 || *(v499 + 4) < 1)
        {
          goto LABEL_2444;
        }

        v500 = 0;
        while (1)
        {
          v502 = *(*(v499 + 16) + 8 * v500);
          v503 = *(v502 + 16);
          if (!strcmp(v503, "schema"))
          {
            appendStringInfoString(&__s1, "SCHEMA ");
            v501 = quote_identifier(*(*(v502 + 24) + 8));
          }

          else if (!strcmp(v503, "new_version"))
          {
            appendStringInfoString(&__s1, "VERSION ");
            v504 = *(*(v502 + 24) + 8);
            v505 = strlen(v504);
            if (v505)
            {
              if (v505 >= 0x40)
              {
                deparseStringLiteral(&__s1, v504);
                goto LABEL_893;
              }

              v501 = quote_identifier(v504);
            }

            else
            {
              v501 = "''";
            }
          }

          else
          {
            if (strcmp(v503, "cascade"))
            {
              goto LABEL_893;
            }

            v501 = "CASCADE";
          }

          appendStringInfoString(&__s1, v501);
LABEL_893:
          appendStringInfoChar(&__s1, 32);
          if (++v500 >= *(v499 + 4))
          {
            goto LABEL_2444;
          }
        }

      case 0x146:
        appendStringInfoString(&__s1, "ALTER EXTENSION ");
        v491 = quote_identifier(*(v19 + 8));
        appendStringInfoString(&__s1, v491);
        appendStringInfoString(&__s1, " UPDATE ");
        v492 = *(v19 + 16);
        if (!v492 || *(v492 + 4) < 1)
        {
          goto LABEL_2444;
        }

        v493 = 0;
        while (1)
        {
          v495 = *(*(v492 + 16) + 8 * v493);
          if (!strcmp(*(v495 + 16), "new_version"))
          {
            appendStringInfoString(&__s1, "TO ");
            v496 = *(*(v495 + 24) + 8);
            v497 = strlen(v496);
            if (v497)
            {
              if (v497 >= 0x40)
              {
                deparseStringLiteral(&__s1, v496);
                goto LABEL_880;
              }

              v494 = quote_identifier(v496);
            }

            else
            {
              v494 = "''";
            }

            appendStringInfoString(&__s1, v494);
          }

LABEL_880:
          appendStringInfoChar(&__s1, 32);
          if (++v493 >= *(v492 + 4))
          {
            goto LABEL_2444;
          }
        }

      case 0x147:
        appendStringInfoString(&__s1, "ALTER EXTENSION ");
        v543 = quote_identifier(*(v19 + 8));
        appendStringInfoString(&__s1, v543);
        appendStringInfoChar(&__s1, 32);
        v544 = *(v19 + 16);
        if (v544 == 1)
        {
          v545 = "ADD ";
        }

        else
        {
          if (v544 != -1)
          {
            goto LABEL_1187;
          }

          v545 = "DROP ";
        }

        appendStringInfoString(&__s1, v545);
LABEL_1187:
        v625 = *(v19 + 20);
        v626 = v625;
        if (v625 <= 0x31 && ((0x2FA8D17AF51A3uLL >> v625) & 1) != 0)
        {
          appendStringInfoString(&__s1, (&off_1E6E548E0)[v625]);
          v626 = *(v19 + 20);
        }

        switch(v626)
        {
          case 0:
          case 14:
          case 16:
          case 17:
          case 21:
          case 34:
            v179 = *(*(v19 + 24) + 8);
            goto LABEL_2262;
          case 1:
            deparseAggregateWithArgtypes(&__s1, *(v19 + 24));
            goto LABEL_2447;
          case 5:
            v1150 = *(v19 + 24);
            appendStringInfoChar(&__s1, 40);
            deparseTypeName(&__s1, **(v1150 + 16));
            appendStringInfoString(&__s1, " AS ");
            deparseTypeName(&__s1, *(*(v1150 + 16) + 8));
            goto LABEL_349;
          case 7:
          case 8:
          case 18:
          case 23:
          case 35:
          case 39:
          case 43:
          case 44:
          case 45:
          case 46:
          case 49:
            v627 = *(v19 + 24);
            if (v627 && *(v627 + 4) >= 1)
            {
              v628 = 8;
              v629 = 0;
              do
              {
                v630 = *(v627 + 16);
                v631 = quote_identifier(*(*(v630 + 8 * v629) + 8));
                appendStringInfoString(&__s1, v631);
                v632 = *(v627 + 4);
                if (v630 + v628)
                {
                  v633 = v630 + v628 >= (*(v627 + 16) + 8 * v632);
                }

                else
                {
                  v633 = 1;
                }

                if (!v633)
                {
                  appendStringInfoChar(&__s1, 46);
                  v632 = *(v627 + 4);
                }

                ++v629;
                v628 += 8;
              }

              while (v629 < v632);
            }

            goto LABEL_2447;
          case 12:
          case 47:
            deparseTypeName(&__s1, *(v19 + 24));
            goto LABEL_2447;
          case 19:
          case 28:
          case 32:
            deparseFunctionWithArgtypes(&__s1, *(v19 + 24));
            goto LABEL_2447;
          case 24:
          case 26:
            v912 = *(v19 + 24);
            if (v912)
            {
              if (*(v912 + 4) >= 2)
              {
                v913 = 1;
                v914 = 0x100000000;
                do
                {
                  v915 = (*(v912 + 16) + (v914 >> 29));
                  v917 = *v915;
                  v916 = (v915 + 1);
                  v918 = quote_identifier(*(v917 + 8));
                  appendStringInfoString(&__s1, v918);
                  v919 = *(v912 + 4);
                  if (v916)
                  {
                    v920 = v916 >= *(v912 + 16) + 8 * v919;
                  }

                  else
                  {
                    v920 = 1;
                  }

                  if (!v920)
                  {
                    appendStringInfoChar(&__s1, 46);
                    LODWORD(v919) = *(v912 + 4);
                  }

                  ++v913;
                  v914 += 0x100000000;
                }

                while (v919 > v913);
              }

              appendStringInfoString(&__s1, " USING ");
              v921 = **(v912 + 16);
LABEL_2270:
              v28 = quote_identifier(*(v921 + 8));
              goto LABEL_2263;
            }

LABEL_2468:
            result = appendStringInfoString(&__s1, " USING ");
            __break(1u);
            break;
          case 25:
            deparseOperatorWithArgtypes(&__s1, *(v19 + 24));
            goto LABEL_2447;
          case 41:
            v1151 = *(v19 + 24);
            appendStringInfoString(&__s1, "FOR ");
            deparseTypeName(&__s1, **(v1151 + 16));
            appendStringInfoString(&__s1, " LANGUAGE ");
            v921 = *(*(v1151 + 16) + 8);
            goto LABEL_2270;
          default:
            goto LABEL_2447;
        }

        return result;
      case 0x148:
        appendStringInfoString(&__s1, "CREATE EVENT TRIGGER ");
        v192 = quote_identifier(*(v19 + 8));
        appendStringInfoString(&__s1, v192);
        appendStringInfoChar(&__s1, 32);
        appendStringInfoString(&__s1, "ON ");
        v193 = quote_identifier(*(v19 + 16));
        appendStringInfoString(&__s1, v193);
        appendStringInfoChar(&__s1, 32);
        if (!*(v19 + 24))
        {
          goto LABEL_970;
        }

        appendStringInfoString(&__s1, "WHEN ");
        v194 = *(v19 + 24);
        if (!v194 || *(v194 + 4) < 1)
        {
          goto LABEL_969;
        }

        v195 = 0;
        while (1)
        {
          v196 = *(v194 + 16) + 8 * v195;
          v197 = *(*v196 + 24);
          v198 = quote_identifier(*(*v196 + 16));
          appendStringInfoString(&__s1, v198);
          appendStringInfoString(&__s1, " IN (");
          if (v197)
          {
            if (*(v197 + 4) >= 1)
            {
              break;
            }
          }

LABEL_336:
          appendStringInfoChar(&__s1, 41);
          if (v196 != -8 && v196 + 8 < (*(*(v20 + 24) + 16) + 8 * *(*(v20 + 24) + 4)))
          {
            appendStringInfoString(&__s1, " AND ");
          }

          if (++v195 >= *(v194 + 4))
          {
LABEL_969:
            appendStringInfoChar(&__s1, 32);
            v7 = v1243;
            v6 = v1244;
            v9 = v1242;
LABEL_970:
            appendStringInfoString(&__s1, "EXECUTE FUNCTION ");
            v546 = *(v20 + 32);
            if (v546 && *(v546 + 4) >= 1)
            {
              v547 = 8;
              v548 = 0;
              do
              {
                v549 = *(v546 + 16);
                v550 = quote_identifier(*(*(v549 + 8 * v548) + 8));
                appendStringInfoString(&__s1, v550);
                v551 = *(v546 + 4);
                if (v549 + v547)
                {
                  v552 = v549 + v547 >= (*(v546 + 16) + 8 * v551);
                }

                else
                {
                  v552 = 1;
                }

                if (!v552)
                {
                  appendStringInfoChar(&__s1, 46);
                  v551 = *(v546 + 4);
                }

                ++v548;
                v547 += 8;
              }

              while (v548 < v551);
            }

            v28 = "()";
            goto LABEL_2263;
          }
        }

        v199 = 0;
LABEL_325:
        v200 = *(v197 + 16) + 8 * v199;
        v201 = *(*v200 + 8);
        if (strchr(v201, 92))
        {
          appendStringInfoChar(&__s1, 69);
        }

        appendStringInfoChar(&__s1, 39);
        for (j = v201; ; ++j)
        {
          v203 = *j;
          v204 = *j;
          if (v203 == 39 || v203 == 92)
          {
            appendStringInfoChar(&__s1, v203);
          }

          else if (!*j)
          {
            appendStringInfoChar(&__s1, 39);
            v205 = *(v197 + 4);
            v206 = v200 + 8;
            if (v200 == -8)
            {
              v10 = v1241;
            }

            else
            {
              v10 = v1241;
              if (v206 < *(v197 + 16) + 8 * *(v197 + 4))
              {
                appendStringInfoString(&__s1, ", ");
                v205 = *(v197 + 4);
              }
            }

            if (++v199 >= v205)
            {
              goto LABEL_336;
            }

            goto LABEL_325;
          }

          appendStringInfoChar(&__s1, v204);
        }

      case 0x149:
        appendStringInfoString(&__s1, "ALTER EVENT TRIGGER ");
        v47 = quote_identifier(*(v19 + 8));
        appendStringInfoString(&__s1, v47);
        appendStringInfoChar(&__s1, 32);
        v48 = *(v19 + 16);
        if (v48 > 0x4E)
        {
          if (v48 == 79)
          {
            v28 = "ENABLE";
          }

          else
          {
            if (v48 != 82)
            {
              goto LABEL_2447;
            }

            v28 = "ENABLE REPLICA";
          }
        }

        else if (v48 == 65)
        {
          v28 = "ENABLE ALWAYS";
        }

        else
        {
          if (v48 != 68)
          {
            goto LABEL_2447;
          }

          v28 = "DISABLE";
        }

        goto LABEL_2263;
      case 0x14A:
        goto LABEL_1249;
      case 0x14C:
        appendStringInfoString(&__s1, "ALTER SYSTEM ");
        v253 = *(v19 + 8);
        goto LABEL_1627;
      case 0x14D:
        appendStringInfoString(&__s1, "CREATE POLICY ");
        v29 = quote_identifier(*(v19 + 8));
        appendStringInfoString(&__s1, v29);
        appendStringInfoString(&__s1, " ON ");
        deparseRangeVar(&__s1, *(v19 + 16), 0);
        appendStringInfoChar(&__s1, 32);
        if ((*(v19 + 32) & 1) == 0)
        {
          appendStringInfoString(&__s1, "AS RESTRICTIVE ");
        }

        v30 = *(v19 + 24);
        if (!strcmp(v30, "all"))
        {
          goto LABEL_1845;
        }

        if (!strcmp(v30, "select"))
        {
          v31 = "FOR SELECT ";
        }

        else if (!strcmp(v30, "insert"))
        {
          v31 = "FOR INSERT ";
        }

        else if (!strcmp(v30, "update"))
        {
          v31 = "FOR UPDATE ";
        }

        else
        {
          if (strcmp(v30, "delete"))
          {
            goto LABEL_1845;
          }

          v31 = "FOR DELETE ";
        }

        appendStringInfoString(&__s1, v31);
LABEL_1845:
        appendStringInfoString(&__s1, "TO ");
        v877 = *(v19 + 40);
        if (!v877 || *(v877 + 4) < 1)
        {
          goto LABEL_1864;
        }

        v878 = 8;
        v879 = 0;
        while (1)
        {
          v880 = *(v877 + 16);
          v881 = *(v880 + 8 * v879);
          v882 = *(v881 + 4);
          if (v882 > 1)
          {
            if (v882 == 2)
            {
              v883 = "SESSION_USER";
              goto LABEL_1858;
            }

            if (v882 == 3)
            {
              v883 = "public";
              goto LABEL_1858;
            }
          }

          else
          {
            if (!v882)
            {
              v883 = quote_identifier(*(v881 + 8));
              goto LABEL_1858;
            }

            if (v882 == 1)
            {
              v883 = "CURRENT_USER";
LABEL_1858:
              appendStringInfoString(&__s1, v883);
            }
          }

          v884 = *(v877 + 4);
          if (v880 + v878)
          {
            v885 = v880 + v878 >= (*(v877 + 16) + 8 * v884);
          }

          else
          {
            v885 = 1;
          }

          if (!v885)
          {
            appendStringInfoString(&__s1, ", ");
            v884 = *(v877 + 4);
          }

          ++v879;
          v878 += 8;
          if (v879 >= v884)
          {
LABEL_1864:
            appendStringInfoChar(&__s1, 32);
            if (*(v20 + 48))
            {
              appendStringInfoString(&__s1, "USING (");
              deparseExpr(&__s1, *(v20 + 48));
              appendStringInfoString(&__s1, ") ");
            }

            v9 = v1242;
            if (!*(v20 + 56))
            {
              goto LABEL_2447;
            }

            appendStringInfoString(&__s1, "WITH CHECK (");
            deparseExpr(&__s1, *(v20 + 56));
            v28 = ") ";
            goto LABEL_2263;
          }
        }

      case 0x14E:
        appendStringInfoString(&__s1, "ALTER POLICY ");
        v512 = quote_identifier(*(v19 + 8));
        appendStringInfoString(&__s1, v512);
        appendStringInfoString(&__s1, " ON ");
        deparseRangeVar(&__s1, *(v19 + 16), 0);
        appendStringInfoChar(&__s1, 32);
        v513 = *(v19 + 24);
        if (!v513 || *(v513 + 4) < 1)
        {
          goto LABEL_1132;
        }

        appendStringInfoString(&__s1, "TO ");
        v514 = *(v19 + 24);
        if (!v514 || *(v514 + 4) < 1)
        {
          goto LABEL_1131;
        }

        v515 = 8;
        v516 = 0;
        break;
      case 0x14F:
        appendStringInfoString(&__s1, "CREATE ");
        if (*(v19 + 4) == 1)
        {
          appendStringInfoString(&__s1, "OR REPLACE ");
        }

        appendStringInfoString(&__s1, "TRANSFORM FOR ");
        deparseTypeName(&__s1, *(v19 + 8));
        appendStringInfoChar(&__s1, 32);
        appendStringInfoString(&__s1, "LANGUAGE ");
        v208 = quote_identifier(*(v19 + 16));
        appendStringInfoString(&__s1, v208);
        appendStringInfoChar(&__s1, 32);
        appendStringInfoChar(&__s1, 40);
        if (*(v19 + 24))
        {
          appendStringInfoString(&__s1, "FROM SQL WITH FUNCTION ");
          deparseFunctionWithArgtypes(&__s1, *(v19 + 24));
          if (*(v19 + 24))
          {
            if (*(v19 + 32))
            {
              appendStringInfoString(&__s1, ", ");
            }
          }
        }

        if (*(v19 + 32))
        {
          appendStringInfoString(&__s1, "TO SQL WITH FUNCTION ");
          deparseFunctionWithArgtypes(&__s1, *(v19 + 32));
        }

LABEL_349:
        appendStringInfoChar(&__s1, 41);
        goto LABEL_2447;
      case 0x150:
        appendStringInfoString(&__s1, "CREATE ACCESS METHOD ");
        v540 = quote_identifier(*(v19 + 8));
        appendStringInfoString(&__s1, v540);
        appendStringInfoChar(&__s1, 32);
        appendStringInfoString(&__s1, "TYPE ");
        v541 = *(v19 + 24);
        if (v541 == 105)
        {
          v542 = "INDEX ";
        }

        else
        {
          if (v541 != 116)
          {
            goto LABEL_1176;
          }

          v542 = "TABLE ";
        }

        appendStringInfoString(&__s1, v542);
LABEL_1176:
        appendStringInfoString(&__s1, "HANDLER ");
        v618 = *(v19 + 16);
        if (v618 && *(v618 + 4) >= 1)
        {
          v619 = 8;
          v620 = 0;
          do
          {
            v621 = *(v618 + 16);
            v622 = quote_identifier(*(*(v621 + 8 * v620) + 8));
            appendStringInfoString(&__s1, v622);
            v623 = *(v618 + 4);
            if (v621 + v619)
            {
              v624 = v621 + v619 >= (*(v618 + 16) + 8 * v623);
            }

            else
            {
              v624 = 1;
            }

            if (!v624)
            {
              appendStringInfoChar(&__s1, 46);
              v623 = *(v618 + 4);
            }

            ++v620;
            v619 += 8;
          }

          while (v620 < v623);
        }

        goto LABEL_2447;
      case 0x151:
        appendStringInfoString(&__s1, "CREATE PUBLICATION ");
        v454 = quote_identifier(*(v19 + 8));
        appendStringInfoString(&__s1, v454);
        appendStringInfoChar(&__s1, 32);
        v455 = *(v19 + 24);
        if (v455 && *(v455 + 4) >= 1)
        {
          appendStringInfoString(&__s1, "FOR TABLE ");
          v456 = *(v19 + 24);
          if (v456 && *(v456 + 4) >= 1)
          {
            v457 = 8;
            v458 = 0;
            do
            {
              v459 = *(v456 + 16);
              deparseRangeVar(&__s1, *(v459 + 8 * v458), 0);
              v460 = *(v456 + 4);
              if (v459 + v457)
              {
                v461 = v459 + v457 >= (*(v456 + 16) + 8 * v460);
              }

              else
              {
                v461 = 1;
              }

              if (!v461)
              {
                appendStringInfoString(&__s1, ", ");
                v460 = *(v456 + 4);
              }

              ++v458;
              v457 += 8;
            }

            while (v458 < v460);
          }

          appendStringInfoChar(&__s1, 32);
          v9 = v1242;
        }

        else if (*(v19 + 32) == 1)
        {
          appendStringInfoString(&__s1, "FOR ALL TABLES ");
        }

        v598 = *(v20 + 16);
        if (!v598 || *(v598 + 4) < 1)
        {
          goto LABEL_2444;
        }

        appendStringInfoString(&__s1, "WITH ");
        v599 = v598;
        goto LABEL_2392;
      case 0x152:
        appendStringInfoString(&__s1, "ALTER PUBLICATION ");
        v441 = quote_identifier(*(v19 + 8));
        appendStringInfoString(&__s1, v441);
        appendStringInfoChar(&__s1, 32);
        v442 = *(v19 + 24);
        if (v442 && *(v442 + 4) >= 1)
        {
          v443 = *(v19 + 36) - 1;
          if (v443 > 2 || (appendStringInfoString(&__s1, (&off_1E6E54A70)[v443]), (v442 = *(v19 + 24)) != 0))
          {
            v444 = v442;
            if (*(v442 + 4) >= 1)
            {
              v445 = 8;
              v446 = 0;
              do
              {
                v447 = *(v444 + 16);
                deparseRangeVar(&__s1, *(v447 + 8 * v446), 0);
                v448 = *(v444 + 4);
                if (v447 + v445)
                {
                  v449 = v447 + v445 >= (*(v444 + 16) + 8 * v448);
                }

                else
                {
                  v449 = 1;
                }

                if (!v449)
                {
                  appendStringInfoString(&__s1, ", ");
                  v448 = *(v444 + 4);
                }

                ++v446;
                v445 += 8;
              }

              while (v446 < v448);
            }
          }
        }

        else
        {
          v553 = *(v19 + 16);
          if (v553 && *(v553 + 4) >= 1)
          {
            appendStringInfoString(&__s1, "SET ");
            deparseDefinition(&__s1, *(v19 + 16));
          }
        }

        goto LABEL_2447;
      case 0x153:
        appendStringInfoString(&__s1, "CREATE SUBSCRIPTION ");
        v75 = quote_identifier(*(v19 + 8));
        appendStringInfoString(&__s1, v75);
        appendStringInfoString(&__s1, " CONNECTION ");
        v76 = *(v19 + 16);
        if (v76)
        {
          deparseStringLiteral(&__s1, v76);
        }

        else
        {
          appendStringInfoString(&__s1, "''");
        }

        appendStringInfoString(&__s1, " PUBLICATION ");
        v601 = *(v19 + 24);
        if (v601 && *(v601 + 4) >= 1)
        {
          v602 = 8;
          v603 = 0;
          do
          {
            v604 = *(v601 + 16);
            v605 = quote_identifier(*(*(v604 + 8 * v603) + 8));
            appendStringInfoString(&__s1, v605);
            if (v604 + v602)
            {
              v606 = v604 + v602 >= (*(*(v20 + 24) + 16) + 8 * *(*(v20 + 24) + 4));
            }

            else
            {
              v606 = 1;
            }

            if (!v606)
            {
              appendStringInfoString(&__s1, ", ");
            }

            ++v603;
            v602 += 8;
          }

          while (v603 < *(v601 + 4));
        }

        appendStringInfoChar(&__s1, 32);
        v607 = *(v20 + 32);
        if (v607 && *(v607 + 4) >= 1)
        {
          appendStringInfoString(&__s1, "WITH ");
          deparseDefinition(&__s1, v607);
        }

        goto LABEL_1802;
      case 0x154:
        appendStringInfoString(&__s1, "ALTER SUBSCRIPTION ");
        v437 = quote_identifier(*(v19 + 8));
        appendStringInfoString(&__s1, v437);
        appendStringInfoChar(&__s1, 32);
        v438 = *(v19 + 4);
        if (v438 <= 1)
        {
          if (!v438)
          {
            appendStringInfoString(&__s1, "SET ");
            deparseDefinition(&__s1, *(v19 + 32));
            goto LABEL_2444;
          }

          if (v438 != 1)
          {
            goto LABEL_2444;
          }

          appendStringInfoString(&__s1, "CONNECTION ");
          deparseStringLiteral(&__s1, *(v19 + 16));
          goto LABEL_1617;
        }

        switch(v438)
        {
          case 2:
            appendStringInfoString(&__s1, "SET PUBLICATION ");
            v707 = *(v19 + 24);
            if (v707 && *(v707 + 4) >= 1)
            {
              v708 = 8;
              v709 = 0;
              do
              {
                v710 = *(v707 + 16);
                v711 = quote_identifier(*(*(v710 + 8 * v709) + 8));
                appendStringInfoString(&__s1, v711);
                if (v710 + v708)
                {
                  v712 = v710 + v708 >= (*(*(v20 + 24) + 16) + 8 * *(*(v20 + 24) + 4));
                }

                else
                {
                  v712 = 1;
                }

                if (!v712)
                {
                  appendStringInfoString(&__s1, ", ");
                }

                ++v709;
                v708 += 8;
              }

              while (v709 < *(v707 + 4));
            }

            appendStringInfoChar(&__s1, 32);
            v713 = *(v20 + 32);
            v9 = v1242;
            if (!v713)
            {
              goto LABEL_2444;
            }

            break;
          case 3:
            appendStringInfoString(&__s1, "REFRESH PUBLICATION ");
            v713 = *(v19 + 32);
            if (!v713)
            {
              goto LABEL_2444;
            }

            break;
          case 4:
            v439 = *(*(**(*(v19 + 32) + 16) + 24) + 8);
            if (v439)
            {
              if (v439 != 1)
              {
                goto LABEL_2444;
              }

              v440 = " ENABLE ";
            }

            else
            {
              v440 = " DISABLE ";
            }

            appendStringInfoString(&__s1, v440);
            goto LABEL_2444;
          default:
            goto LABEL_2444;
        }

        if (*(v713 + 4) >= 1)
        {
          appendStringInfoString(&__s1, "WITH ");
          deparseDefinition(&__s1, v713);
        }

        goto LABEL_2444;
      case 0x155:
        appendStringInfoString(&__s1, "DROP SUBSCRIPTION ");
        if (*(v19 + 16) == 1)
        {
LABEL_179:
          appendStringInfoString(&__s1, "IF EXISTS ");
        }

LABEL_180:
        v28 = *(v19 + 8);
        goto LABEL_2263;
      case 0x156:
        appendStringInfoString(&__s1, "CREATE STATISTICS ");
        if (*(v19 + 48) == 1)
        {
          appendStringInfoString(&__s1, "IF NOT EXISTS ");
        }

        v32 = *(v19 + 8);
        if (v32 && *(v32 + 4) >= 1)
        {
          v33 = 8;
          v34 = 0;
          do
          {
            v35 = *(v32 + 16);
            v36 = quote_identifier(*(*(v35 + 8 * v34) + 8));
            appendStringInfoString(&__s1, v36);
            v37 = *(v32 + 4);
            if (v35 + v33)
            {
              v38 = v35 + v33 >= (*(v32 + 16) + 8 * v37);
            }

            else
            {
              v38 = 1;
            }

            if (!v38)
            {
              appendStringInfoChar(&__s1, 46);
              v37 = *(v32 + 4);
            }

            ++v34;
            v33 += 8;
          }

          while (v34 < v37);
        }

        appendStringInfoChar(&__s1, 32);
        v39 = *(v20 + 16);
        if (v39 && *(v39 + 4) >= 1)
        {
          appendStringInfoChar(&__s1, 40);
          v40 = *(v20 + 16);
          if (v40 && *(v40 + 4) >= 1)
          {
            v41 = 8;
            v42 = 0;
            do
            {
              v43 = *(v40 + 16);
              v44 = quote_identifier(*(*(v43 + 8 * v42) + 8));
              appendStringInfoString(&__s1, v44);
              v45 = *(v40 + 4);
              if (v43 + v41)
              {
                v46 = v43 + v41 >= (*(v40 + 16) + 8 * v45);
              }

              else
              {
                v46 = 1;
              }

              if (!v46)
              {
                appendStringInfoString(&__s1, ", ");
                v45 = *(v40 + 4);
              }

              ++v42;
              v41 += 8;
            }

            while (v42 < v45);
          }

          appendStringInfoString(&__s1, ") ");
        }

        appendStringInfoString(&__s1, "ON ");
        v565 = *(v20 + 24);
        if (v565 && *(v565 + 4) >= 1)
        {
          v566 = 8;
          v567 = 0;
          do
          {
            v568 = *(v565 + 16);
            deparseExpr(&__s1, *(v568 + 8 * v567));
            v569 = *(v565 + 4);
            if (v568 + v566)
            {
              v570 = v568 + v566 >= (*(v565 + 16) + 8 * v569);
            }

            else
            {
              v570 = 1;
            }

            if (!v570)
            {
              appendStringInfoString(&__s1, ", ");
              v569 = *(v565 + 4);
            }

            ++v567;
            v566 += 8;
          }

          while (v567 < v569);
        }

        appendStringInfoString(&__s1, " FROM ");
        v571 = *(v20 + 32);
        v9 = v1242;
        if (v571 && *(v571 + 4) >= 1)
        {
          v572 = 8;
          v573 = 0;
          do
          {
            v574 = *(v571 + 16);
            deparseTableRef(&__s1, *(v574 + 8 * v573));
            v575 = *(v571 + 4);
            if (v574 + v572)
            {
              v576 = v574 + v572 >= (*(v571 + 16) + 8 * v575);
            }

            else
            {
              v576 = 1;
            }

            if (!v576)
            {
              appendStringInfoString(&__s1, ", ");
              v575 = *(v571 + 4);
            }

            ++v573;
            v572 += 8;
          }

          while (v573 < v575);
        }

        goto LABEL_2447;
      case 0x157:
        appendStringInfoString(&__s1, "ALTER COLLATION ");
        v21 = *(v19 + 8);
        if (v21 && *(v21 + 4) >= 1)
        {
          v22 = 8;
          v23 = 0;
          do
          {
            v24 = *(v21 + 16);
            v25 = quote_identifier(*(*(v24 + 8 * v23) + 8));
            appendStringInfoString(&__s1, v25);
            v26 = *(v21 + 4);
            if (v24 + v22)
            {
              v27 = v24 + v22 >= (*(v21 + 16) + 8 * v26);
            }

            else
            {
              v27 = 1;
            }

            if (!v27)
            {
              appendStringInfoChar(&__s1, 46);
              v26 = *(v21 + 4);
            }

            ++v23;
            v22 += 8;
          }

          while (v23 < v26);
        }

        v28 = " REFRESH VERSION";
        goto LABEL_2263;
      case 0x158:
        appendStringInfoString(&__s1, "CALL ");
        deparseFuncCall(&__s1, *(v19 + 8));
        goto LABEL_2447;
      case 0x159:
        appendStringInfoString(&__s1, "ALTER STATISTICS ");
        if (*(v19 + 20) == 1)
        {
          appendStringInfoString(&__s1, "IF EXISTS ");
        }

        v86 = *(v19 + 8);
        if (v86 && *(v86 + 4) >= 1)
        {
          v87 = 8;
          v88 = 0;
          do
          {
            v89 = *(v86 + 16);
            v90 = quote_identifier(*(*(v89 + 8 * v88) + 8));
            appendStringInfoString(&__s1, v90);
            v91 = *(v86 + 4);
            if (v89 + v87)
            {
              v92 = v89 + v87 >= (*(v86 + 16) + 8 * v91);
            }

            else
            {
              v92 = 1;
            }

            if (!v92)
            {
              appendStringInfoChar(&__s1, 46);
              v91 = *(v86 + 4);
            }

            ++v88;
            v87 += 8;
          }

          while (v88 < v91);
        }

        appendStringInfoChar(&__s1, 32);
        appendStringInfo(&__s1, "SET STATISTICS %d", *(v20 + 16));
        v9 = v1242;
        goto LABEL_2447;
      default:
        pg_query_deparse_protobuf_cold_1();
    }

    while (1)
    {
      v517 = *(v514 + 16);
      v518 = *(v517 + 8 * v516);
      v519 = *(v518 + 4);
      if (v519 > 1)
      {
        if (v519 == 2)
        {
          v520 = "SESSION_USER";
          goto LABEL_928;
        }

        if (v519 == 3)
        {
          v520 = "public";
          goto LABEL_928;
        }
      }

      else
      {
        if (!v519)
        {
          v520 = quote_identifier(*(v518 + 8));
          goto LABEL_928;
        }

        if (v519 == 1)
        {
          v520 = "CURRENT_USER";
LABEL_928:
          appendStringInfoString(&__s1, v520);
        }
      }

      v521 = *(v514 + 4);
      if (v517 + v515)
      {
        v522 = v517 + v515 >= (*(v514 + 16) + 8 * v521);
      }

      else
      {
        v522 = 1;
      }

      if (!v522)
      {
        appendStringInfoString(&__s1, ", ");
        v521 = *(v514 + 4);
      }

      ++v516;
      v515 += 8;
      if (v516 >= v521)
      {
LABEL_1131:
        appendStringInfoChar(&__s1, 32);
        v9 = v1242;
LABEL_1132:
        if (*(v20 + 32))
        {
          appendStringInfoString(&__s1, "USING (");
          deparseExpr(&__s1, *(v20 + 32));
          appendStringInfoString(&__s1, ") ");
        }

        if (!*(v20 + 40))
        {
          goto LABEL_2447;
        }

        appendStringInfoString(&__s1, "WITH CHECK (");
        deparseExpr(&__s1, *(v20 + 40));
        v28 = ") ";
        goto LABEL_2263;
      }
    }
  }

  *v7 = v6;
  *v10 = v9;
  *CurrentMemoryContext(v11) = enter_memory_context;
  v12 = CopyErrorData();
  v13 = malloc_type_malloc(0x28uLL, 0x1010040E871EB1AuLL);
  *v13 = strdup(*(v12 + 64));
  v13[2] = strdup(*(v12 + 16));
  v13[1] = strdup(*(v12 + 32));
  v13[4] = 0;
  *(v13 + 6) = *(v12 + 24);
  *(v13 + 7) = *(v12 + 160);
  FlushErrorState();
  v14 = 0;
LABEL_2465:
  *v7 = v6;
  *v10 = v9;
  pg_query_exit_memory_context();
  return v14;
}